using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLibrary
{
    public partial class ViewBooks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Any initialization logic can go here.
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Get the selected row
            GridViewRow row = GridView1.SelectedRow;

            // Example: Retrieve the book ID from the selected row
            string bookId = row.Cells[0].Text; // Assuming the first cell contains the book ID

            // You can perform further actions based on the selected book
            // For instance, redirect to a details page or display more information

            // Example of redirecting to a book details page
            Response.Redirect($"BookDetails.aspx?bookId={bookId}");
        }
    }
}