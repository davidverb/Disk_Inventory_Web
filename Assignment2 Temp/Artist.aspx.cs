﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment2_Temp
{
    public partial class Artist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            if (e.Exception != null)
            {
                lblError.Text = DatabaseErrorMessage(e.Exception.Message);
                e.ExceptionHandled = true;
            }
            else if (e.AffectedRows == 0)
            {
                lblError.Text = ConcurrencyErrorMessage();
            }
        }

        //protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        //{
        //    if (e.Exception != null)
        //    {
        //        lblError.Text = DatabaseErrorMessage(e.Exception.Message);
        //        e.ExceptionHandled = true;
        //    }
        //    else if (e.AffectedRows == 0)
        //    {
        //        lblError.Text = ConcurrencyErrorMessage();
        //    }
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                //    var parameters = SqlDataSource1.InsertParameters;
                //    parameters["artistName"].DefaultValue = TextBox1.Text;

                //    try
                //    {
                //        SqlDataSource1.Insert();
                //        TextBox1.Text = "";

                //    }
                //    catch (Exception ex)
                //    {
                //        lblError.Text = DatabaseErrorMessage(ex.Message);
                //    }
                lblError.Text = "Sorry there was an error. Please try again at a later time";
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