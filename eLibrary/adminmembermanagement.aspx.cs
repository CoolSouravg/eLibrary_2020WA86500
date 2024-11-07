using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace eLibrary
{
    public partial class adminmembermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getUserById();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            UpdateMemberStatusById("active");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            UpdateMemberStatusById("pending"); 
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            UpdateMemberStatusById("deactive");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DeleteMemberById();
        }

        void getUserById()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl WHERE member_id = @member_id", con);
                    cmd.Parameters.AddWithValue("@member_id", TextBox1.Text.Trim());

                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            TextBox2.Text = dr.GetValue(0).ToString();
                            TextBox7.Text = dr.GetValue(10).ToString();
                            TextBox8.Text = dr.GetValue(1).ToString();
                            TextBox3.Text = dr.GetValue(2).ToString();
                            TextBox4.Text = dr.GetValue(3).ToString();
                            TextBox9.Text = dr.GetValue(4).ToString();
                            TextBox10.Text = dr.GetValue(5).ToString();
                            TextBox11.Text = dr.GetValue(6).ToString();
                            TextBox6.Text = dr.GetValue(7).ToString();
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Member ID!');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void UpdateMemberStatusById(string status)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("UPDATE member_master_tbl SET account_status = @status WHERE member_id = @member_id", con);
                    cmd.Parameters.AddWithValue("@status", status);
                    cmd.Parameters.AddWithValue("@member_id", TextBox1.Text.Trim());

                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Response.Write("<script>alert('Member status updated successfully.');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Update failed. Member not found.');</script>");
                    }

                    GridView1.DataBind();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void DeleteMemberById()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();

                    // Use parameterized query to prevent SQL injection
                    SqlCommand cmd = new SqlCommand("DELETE FROM member_master_tbl WHERE member_id = @member_id", con);
                    cmd.Parameters.AddWithValue("@member_id", TextBox1.Text.Trim());

                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        Response.Write("<script>alert('Member Deleted Successfully!');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('No member found with the provided ID.');</script>");
                    }
                    clearForm();
                    GridView1.DataBind();

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }

        void clearForm()
        {
            TextBox2.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox6.Text = "";
        }
    }
}
