<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="eLibrary.adminmembermanagement" %>
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
        color: white;
    }

    .btn-warning-custom {
        background-color: #ffc107;
        border-color: #ffc107;
        color: white;
    }

    .btn-danger-custom {
        background-color: #dc3545;
        border-color: #dc3545;
        color: white;
    }

    .btn-primary-custom:hover,
    .btn-success-custom:hover,
    .btn-warning-custom:hover,
    .btn-danger-custom:hover {
        background-color: #0056b3;
        border-color: #004085;
        transform: translateY(-2px);
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

    /* Additional Styling for GridView */
    .table {
        width: 100%;
        margin-bottom: 20px;
        border-collapse: collapse;
    }

    .table thead th {
        background-color: #343a40;
        color: white;
        text-align: center;
        padding: 10px;
    }

    .table tbody tr:hover {
        background-color: #f8f9fa;
    }

    .table tbody td {
        padding: 10px;
        text-align: center;
    }

    /* Style for Readonly TextBoxes */
    .form-control[readonly] {
        background-color: #e9ecef; /* Gray background */
        color: #6c757d; /* Text color */
        cursor: not-allowed; /* Show "not allowed" cursor */
    }
</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 mb-4">
                <div class="card">
                    <div class="card-header text-center">
                        Member Details
                    </div>
                    <div class="card-body">
                        <div class="text-center mb-4">
                            <img width="100px" src="imgs/generaluser.png" alt="General User Image" />
                        </div>
                        <!-- Member ID and Buttons -->
                        <div class="row mb-3">
                            <div class="col-md-3">
                                <label class="form-label">Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                                        <asp:LinkButton CssClass="btn btn-primary-custom" ID="LinkButton4" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <label class="form-label">Account Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control mr-1" ID="TextBox7" runat="server" placeholder="Account Status" ReadOnly="True"></asp:TextBox>
                                        <asp:LinkButton CssClass="btn btn-success-custom mr-1" ID="LinkButton1" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        <asp:LinkButton CssClass="btn btn-warning-custom mr-1" ID="LinkButton2" runat="server"><i class="far fa-pause-circle"></i></asp:LinkButton>
                                        <asp:LinkButton CssClass="btn btn-danger-custom mr-1" ID="LinkButton3" runat="server"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Additional Fields -->
                        <div class="row mb-3">
                            <div class="col-md-3">
                                <label class="form-label">DOB</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="DOB" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Contact No</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <label class="form-label">Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <label class="form-label">State</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="State" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="City" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Pin Code" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-12">
                                <label class="form-label">Full Postal Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Full Postal Address" TextMode="MultiLine" Rows="2" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-8 mx-auto">
                                <asp:Button ID="Button2" CssClass="btn btn-lg btn-block btn-danger-custom btn-custom" runat="server" Text="Delete User Permanently" />
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx" class="back-link">&lt;&lt; Back to Home</a>
            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-header text-center">
                        Member List
                    </div>
                    <div class="card-body">
                        <asp:GridView CssClass="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
