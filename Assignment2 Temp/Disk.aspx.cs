using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment2_Temp
{
    public partial class Disk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {

                var parameters = SqlDataSource1.InsertParameters;
                parameters["CD_ID"].DefaultValue = TextBox1.Text;
                parameters["CD_Name"].DefaultValue = TextBox2.Text;
                parameters["Artist_ID"].DefaultValue = TextBox3.Text;
                parameters["Genre"].DefaultValue = TextBox4.Text;
                parameters["Status"].DefaultValue = DropDownList1.Text;
                parameters["Release_Date"].DefaultValue = TextBox5.Text;

                try
                {

                    SqlDataSource1.Insert();
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                }
                catch (Exception ex)
                {
                    lblError.Text = DatabaseErrorMessage(ex.Message);
                }

                
            }
        }

        private string DatabaseErrorMessage(string errorMsg)
        {
            return $"<b>A database error has occurred:</b> {errorMsg}";
        }

        private string ConcurrencyErrorMessage()
        {
            return "Another user may have updated that category. Please try again";
        }
    }
}