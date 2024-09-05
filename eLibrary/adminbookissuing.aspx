<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="eLibrary.adminbookissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
             .card {
                border-radius: 10px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            }

            .card-header {
                background-color: black;
                color: white;
                border-radius: 10px 10px 0 0;
                padding: 15px;
                font-size: 18px;
                text-align: center;
            }

            .card-body {
                padding: 20px;
            }

            .form-label {
                font-weight: bold;
                margin-bottom: 5px;
            }

            .form-control[readonly] {
                background-color: #e9ecef;
                color: #6c757d;
            }

            .btn-custom {
                width: 100%;
                padding: 10px;
                color: white;
                transition: background-color 0.3s, transform 0.2s;
                border: none; /* Remove any borders */
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* Consistent shadow */
            }

            .btn-primary-custom {
                background-color: #007bff;
                border-color: #007bff;
                color: white;
            }

            .btn-success-custom {
                background-color: #28a745;
                border-color: #28a745;
            }

            .btn-primary-custom:hover, .btn-success-custom:hover {
                background-color: #0056b3; /* Darker shade on hover */
                border-color: #004085;
                transform: translateY(-2px); /* Lift effect on hover */
                color: aqua;
            }

            .container-fluid {
                padding: 20px;
            }

            .back-link {
                margin-top: 15px;
                display: inline-block;
                color: #007bff;
                transition: color 0.3s;
            }

            .back-link:hover {
                color: #0056b3;
                text-decoration: underline;
            }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 mb-4">
                <div class="card">
                    <div class="card-header text-center">
                        Book Issuing
                    </div>
                    <div class="card-body">
                        <div class="text-center mb-4">
                            <img width="100px" src="images/book.gif" alt="Books Image" />
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label class="form-label">Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Book ID"></asp:TextBox>
                                        <asp:Button CssClass="btn btn-primary-custom" ID="Button1" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label class="form-label">Member Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Member Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Book Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col-md-6">
                                <label class="form-label">Start Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Start Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">End Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="End Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <asp:Button ID="Button2" CssClass="btn btn-lg btn-primary-custom btn-custom" runat="server" Text="Issue" />
                            </div>
                            <div class="col-6">
                                <asp:Button ID="Button4" CssClass="btn btn-lg btn-success-custom btn-custom" runat="server" Text="Return" />
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx" class="back-link">&lt;&lt; Back to Home</a>
            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-header text-center">
                        Issued Book List
                    </div>
                    <div class="card-body">
                        <asp:GridView CssClass="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
