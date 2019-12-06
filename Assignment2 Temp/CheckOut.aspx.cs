using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment2_Temp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (IsValid)
                {
                    Label1.Text = "Thank you " + DropDownList2.SelectedItem + " for checking out " + DropDownList3.SelectedItem + " on " + TextBox1.Text + ".";
                }
            } catch
            {
                
            }
        }

    }
}