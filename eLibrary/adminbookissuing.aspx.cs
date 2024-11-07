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
    public partial class adminbookissuing : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getMemberAndBookNames();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfBookExists() && checkIfMemberExists())
            {
                if (checkIfIssueEntryExists())
                {
                    Response.Write("<script>alert('You Already have a book...!');</script>");

                }
                else
                {
                    issueBook();
                }
            }
            else
            {
                Response.Write("<script>alert('Wrong Book ID or Member ID...!');</script>");

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfBookExists() && checkIfMemberExists())
            {
                if (!checkIfIssueEntryExists())
                {
                    Response.Write("<script>alert('This Entry Does'nt Exixts...!');</script>");

                }
                else
                {
                    returnBook();
                }
            }
            else
            {
                Response.Write("<script>alert('Wrong Book ID or Member ID...!');</script>");

            }
        }

        void returnBook()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    // Delete the book issue record
                    SqlCommand cmd = new SqlCommand("DELETE FROM book_issue_tbl WHERE book_id = @book_id AND member_id = @member_id", con);
                    cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@member_id", TextBox2.Text.Trim());

                    int result = cmd.ExecuteNonQuery();

                    if (result > 0)
                    {
                        // Update the stock in the book master table
                        cmd = new SqlCommand("UPDATE book_master_tbl SET actual_stock = actual_stock + 1 WHERE book_id = @book_id", con);
                        cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());
                        cmd.ExecuteNonQuery();

                        Response.Write("<script>alert('Book Returned Successfully!');</script>");
                        GridView1.DataBind();
                    }
                    else
                    {
                        Response.Write("<script>alert('Error - Invalid Details!');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        void issueBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO book_issue_tbl (member_id, member_name, book_id, book_name,issue_date, due_date) VALUES (@member_id, @member_name, @book_id, @book_name, @issue_date, @due_date)", con);


                cmd.Parameters.AddWithValue("@member_id", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@member_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@issue_date", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@due_date", TextBox6.Text.Trim());
                cmd.ExecuteNonQuery();

                cmd = new SqlCommand("UPDATE book_master_tbl SET actual_stock = actual_stock - 1 WHERE book_id = @book_id", con);
                cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());  
                cmd.ExecuteNonQuery();


                con.Close();
                Response.Write("<script>alert('Book Issued Successfully !'); </script>");

                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
            }
        }





        bool checkIfBookExists()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("SELECT * FROM book_master_tbl WHERE book_id = @book_id AND current_stock>0", con);
                    cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);


                    if (dt.Rows.Count >= 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;

                    }
                }
            }
            catch (Exception ex)
            {
                return false;

            }
        }


        bool checkIfMemberExists()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("SELECT full_name FROM member_master_tbl WHERE member_id = @member_id", con);
                    cmd.Parameters.AddWithValue("@member_id", TextBox2.Text.Trim());
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);


                    if (dt.Rows.Count >= 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;

                    }
                }
            }
            catch (Exception ex)
            {
                return false;

            }
        }



        bool checkIfIssueEntryExists()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("SELECT * FROM book_issue_tbl WHERE member_id = @member_id AND book_id = @book_id", con);
                    cmd.Parameters.AddWithValue("@member_id", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());


                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);


                    if (dt.Rows.Count >= 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;

                    }
                }
            }
            catch (Exception ex)
            {
                return false;

            }
        }


        void getMemberAndBookNames()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("SELECT book_name FROM book_master_tbl WHERE book_id = @book_id", con);
                    cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);


                    if (dt.Rows.Count >= 1)
                    {
                        TextBox4.Text = dt.Rows[0]["book_name"].ToString();

                    }
                    else
                    {
                        Response.Write("<script>alert('Wrong Book ID...!');</script>");
                    }



                    cmd = new SqlCommand("SELECT full_name FROM member_master_tbl WHERE member_id = @member_id", con);
                    cmd.Parameters.AddWithValue("@member_id", TextBox2.Text.Trim());
                    da = new SqlDataAdapter(cmd);
                    dt = new DataTable();
                    da.Fill(dt);


                    if (dt.Rows.Count >= 1)
                    {
                        TextBox3.Text = dt.Rows[0]["full_name"].ToString();

                    }
                    else
                    {
                        Response.Write("<script>alert('Wrong Member ID...!');</script>");
                    }


                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    // Make sure you're accessing the correct column index and the value is a valid date
                    DateTime dueDate;
                    if (DateTime.TryParse(e.Row.Cells[5].Text, out dueDate))  // Assuming the due date is in the 6th column
                    {
                        DateTime today = DateTime.Today;

                        // Compare dates and apply the expired-row class
                        if (dueDate < today)
                        {
                            e.Row.CssClass = "expired-row";  // Add the expired-row CSS class to change the background color
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }



    }
}