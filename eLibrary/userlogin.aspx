<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="eLibrary.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>

        .login-card {
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-top: 20px;
            margin-bottom: 20px; /* Add space below the card */
            background: #fff;
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
        .login-image {
            width: 100%; /* Make sure the image fills the column */
            height: auto;
            border-radius: 10px;
        }
        .login-container {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            padding: 20px;
        }
        .card-modify{
            margin-top: 60px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container login-container">
        <div class="row">
            <div class="col-md-6">
                <div class="card-modify">
                    <img src="images/book.png" class="login-image" alt="Book Image"/>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card login-card">
                    <div class="card-body">
                        <div class="text-center login-header">
                            <img width="150px" src="imgs/generaluser.png" alt="User Image"/>
                            <h3 class="mt-3">Member Login</h3>
                        </div>
                        <hr>
                        <asp:TextBox CssClass="form-control mb-3" ID="TextBox1" runat="server" placeholder="Member ID" />
                        <asp:TextBox CssClass="form-control mb-3" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" />
                        <asp:Button CssClass="btn btn-success btn-block btn-lg btn-custom mb-3" ID="Button1" runat="server" Text="Login" />
                        <asp:Button CssClass="btn btn-info btn-block btn-lg btn-custom" ID="Button2" runat="server" Text="Sign Up" PostBackUrl="~/usersignup.aspx" />
                    </div>
                    <div class="card-footer login-footer">
                        <a href="homepage.aspx"><< Back to Home</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
