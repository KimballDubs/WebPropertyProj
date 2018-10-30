using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebPropertyProj
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            SqlCommand comSelect;
            SqlConnection con;
            SqlDataReader drSelect;
            SqlCommand com;
            SqlDataReader dr;
            int FinalPropHmy = 0;

            if (string.IsNullOrWhiteSpace(PropTextBox.Text))
            {
                CodeFailLabel.Text = "Enter Property Code!!!!";
                PropTextBox.Focus();
            }
            else
            {
                con = new SqlConnection("Data Source=WIN10-KIMBALL;User ID=sa;Password=Battery1;Initial Catalog=YardiDBLocal;");

                comSelect = new SqlCommand("Select max(hmy) from TestProperty", con);
                con.Open();
                try
                {
                    drSelect = comSelect.ExecuteReader();
                    try
                    {
                        while (drSelect.Read())
                        {
                            string hmyString = (string)drSelect[0];
                            FinalPropHmy = Int32.Parse(hmyString);
                            // FinalPropHmy = (int)drSelect[0];                           
                            FinalPropHmy++;
                            Console.WriteLine(FinalPropHmy);
                        }
                    }
                    catch (System.InvalidCastException)
                    {
                        FinalPropHmy = 1;
                    }
                    catch (Exception e2)
                    {
                        Console.WriteLine(e2.Message);
                    }
                    drSelect.Close();

                    com = new SqlCommand("Insert into TestProperty(HMY,SCODE,Name,Street,City,State,ZipCode) " +
                                          "values (@FinalPropHmy,@PropCode,@PropName,@PropStreet,@PropCity,@PropState,@PropZipCode)", con);

                    com.Parameters.AddWithValue("@FinalPropHmy", FinalPropHmy);
                    com.Parameters.AddWithValue("@PropCode", PropTextBox.Text);
                    com.Parameters.AddWithValue("@PropName", NameTextBox.Text);
                    com.Parameters.AddWithValue("@PropStreet", StreetTextBox.Text);
                    com.Parameters.AddWithValue("@PropCity", CityTextBox.Text);
                    com.Parameters.AddWithValue("@PropState", StateTextBox.Text);
                    com.Parameters.AddWithValue("@PropZipCode", ZipCodeTextBox.Text);

                    dr = com.ExecuteReader();
                    dr.Read();

                    dr.Close();
                    con.Close();
                    CodeFailLabel.Text = "";
                    FailLabel.Text = "Saved Successfully!!!!";
                }
                catch (Exception ex)
                {
                    FailLabel.Text = "Saved Fail!!!! " + ex.Message;
                }
            }
        }
    }
}