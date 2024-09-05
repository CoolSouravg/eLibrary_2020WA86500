<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="eLibrary.usersignup" %>
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
            margin-top: 20px;
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
        .card-modify {
            margin-top: 90px;
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }
        .card-body {
            padding: 30px;
        }
        .card-header {
            background-color: #f7f7f7;
            border-bottom: 1px solid #ddd;
            padding: 15px;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
        }
        .card-footer {
            background-color: #f7f7f7;
            border-top: 1px solid #ddd;
            padding: 15px;
            border-bottom-left-radius: 15px;
            border-bottom-right-radius: 15px;
        }
        .form-group label {
            font-weight: bold;
        }
        .form-control {
            border-radius: 10px;
        }
        .badge-info {
            background-color: #17a2b8;
        }
        .container-fluid {
            padding: 30px;
        }
        .centered-card {
            display: flex;
            justify-content: center;
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
                    <div class="card-header text-center login-header">
                        <img width="100px" src="imgs/generaluser.png" alt="User Image"/>
                        <h4 class="mt-2">Member Sign Up</h4>
                    </div>
                    <div class="card-body">
                        <div class="text-center">
                            <span>Account Status - </span>
                            <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Onboarding"></asp:Label>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <asp:TextBox CssClass="form-control mb-3" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label>Date of Birth</label>
                                <asp:TextBox CssClass="form-control mb-3" ID="TextBox2" runat="server" placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact No</label>
                                <asp:TextBox CssClass="form-control mb-3" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label>Email ID</label>
                                <asp:TextBox CssClass="form-control mb-3" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <asp:DropDownList CssClass="form-control mb-3" ID="DropDownList1" runat="server">
                                    <asp:ListItem Text="Select" Value="select" />
                                    <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                    <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                              <asp:ListItem Text="Assam" Value="Assam" />
                              <asp:ListItem Text="Bihar" Value="Bihar" />
                              <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Goa" Value="Goa" />
                              <asp:ListItem Text="Gujarat" Value="Gujarat" />
                              <asp:ListItem Text="Haryana" Value="Haryana" />
                              <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                              <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                              <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                              <asp:ListItem Text="Karnataka" Value="Karnataka" />
                              <asp:ListItem Text="Kerala" Value="Kerala" />
                              <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                              <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                              <asp:ListItem Text="Manipur" Value="Manipur" />
                              <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                              <asp:ListItem Text="Mizoram" Value="Mizoram" />
                              <asp:ListItem Text="Nagaland" Value="Nagaland" />
                              <asp:ListItem Text="Odisha" Value="Odisha" />
                              <asp:ListItem Text="Punjab" Value="Punjab" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Sikkim" Value="Sikkim" />
                              <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                              <asp:ListItem Text="Telangana" Value="Telangana" />
                              <asp:ListItem Text="Tripura" Value="Tripura" />
                              <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                              <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                              <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <label>City</label>
                                <asp:TextBox CssClass="form-control mb-3" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label>Pincode</label>
                                <asp:TextBox CssClass="form-control mb-3" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <asp:TextBox CssClass="form-control mb-3" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                            </div>
                        </div>
                        <div class="text-center mb-3">
                            <span class="badge badge-pill badge-info">Login Credentials</span>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>User ID</label>
                                <asp:TextBox CssClass="form-control mb-3" ID="TextBox8" runat="server" placeholder="User ID" ></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label>New Password</label>
                                <asp:TextBox CssClass="form-control mb-3" ID="TextBox10" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="text-center">
                            <asp:Button CssClass="btn btn-primary btn-custom btn-lg" ID="Button1" runat="server" Text="Update" />
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
