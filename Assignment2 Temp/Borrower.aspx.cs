// ***************************************************************************//
// Date Name       Description                                                //
//----------------------------------------------------------------------------//
// 11-7-09    David Verbeck   initial C# for Borrower.aspx functionality      //
//                            Enables use of submit button                    //
//*************************************************************************** //

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment2_Temp
{
    public partial class Borrower : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Label1.Text = "Borrower " + name.Text + " added.";
                name.Text = "";
                email.Text = "";
                phone.Text = "";
            } else
            {
                Label1.Text = "An error has occured. Somehow this message is being displayed when there is no implemented measure to cause a validation error" +
                    "or database error";
            }
          
        }
    }
}