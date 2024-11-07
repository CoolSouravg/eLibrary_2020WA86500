<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="eLibrary.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>

        .login-card {
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-top: 60px;
            margin-bottom: 130px; /* Add space below the card */
        }
        .login-header {
            margin-bottom: 20px;
        }
        .login-footer {
            margin-top: 30px; /* Space above the footer */
            text-align: center;
        }
        .btn-custom {
            border-radius: 50px;
        }
       .adminlogin-image {
            width: 100%; /* Make sure the image fills the column */
            height: auto;
            border-radius: 10px;
       }
       .adminlogin-container {
           display: flex;
           align-items: center;
           justify-content: center;
           min-height: 100vh;
           padding: 20px;
       }
       .card-modify{
           margin-top: 90px;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="container adminlogin-container">
      <div class="row">
          <div class="col-md-6">
              <div class="card-modify">
                  <img src="images/book.png" class="adminlogin-image" alt="Book Image"/>
              </div>
          </div>
            <div class="col-md-6">
                <div class="card login-card">
                    <div class="card-body">
                        <div class="text-center login-header">
                            <img width="150px" src="imgs/adminuser.png" alt="Admin Image"/>
                            <h3 class="mt-3">AdAdmin Login</h3>
                        </div>
                        <hr>
                        <asp:TextBox CssClass="form-control mb-3" ID="TextBox1" runat="server" placeholder="Admin ID" />
                        <asp:TextBox CssClass="form-control mb-3" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" />
                        <asp:Button CssClass="btn btn-danger btn-block btn-lg btn-custom mb-3" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                        <div class="form-group text-center">
                            <a href="adminforgotpassword.aspx" class="btn btn-link">Forgot Password?a>
                        </div>
                    </div>
                    <div class="card-footer login-footer">
                        <a href="homepage.aspx"><< Back to Home</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
