using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLibrary
{
    public partial class demo : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

                if (!IsPostBack)
                {
                    // Any initialization logic can go here.
                }
            }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;

            // Example: Retrieve the book ID from the selected row
            string bookId = row.Cells[0].Text; // Assuming the first cell contains the book ID
            Response.Redirect($"BookDetails.aspx?bookId={bookId}");
        }


       


    }
}