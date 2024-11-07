<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="eLibrary.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


     <script type="text/javascript">
 $(document).ready(function () {
     $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
 });
     </script>


    <style>
        .profile-header img {
            border-radius: 50%;
            border: 2px solid #007bff;
            padding: 5px;
        }

        .profile-header h4 {
            margin-top: 10px;
            color: #007bff;
        }

        .form-group label {
            
            color: #333;
        }

        .form-control {
            border-radius: 5px;
            border: 1px solid #ced4da;
        }

        .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 0 .2rem rgba(38, 143, 255, .25);
        }

        .badge-info {
            background-color: #17a2b8;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            margin-bottom: 20px;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #004085;
        }


        .card {
            border-radius: 10px;
            border: 1px solid #e3e3e3;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
            margin-top: 50px;
        }

        .card-body {
            padding: 20px;
        }

        .text-center {
            text-align: center;
        }

        .back-link {
            display: inline-block;
            margin-top: 10px;
            color: #007bff;
            text-decoration: none;
        }

        .back-link:hover {
            text-decoration: underline;
        }

        .issued-books-img {
            border-radius: 5px;
            border: 1px solid #ced4da;
        }

        .profile-header {
            margin-bottom: 20px;
        }

        .profile-picture-container {
            display: inline-block;
            position: relative;
        }

        .profile-picture {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            border: 4px solid #007bff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            object-fit: cover;
        }

        .profile-heading {
            margin-top: 15px;
            font-size: 1.5rem;
            color: #007bff;
            font-weight: 600;
        }

        .profile-status {
            font-size: 1.1rem;
            color: #333;
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

        .form-control[readonly] {
        background-color: #e9ecef; /* Light grey background */
        color: #6c757d; /* Grey text color */
        opacity: 1;
        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <!-- Profile Section -->
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                    <!-- Profile Picture and Header -->
                    <div class="card-header profile-header text-center mb-4">
                        <div class="profile-picture-container mb-3">
                            <img class="profile-picture" src="imgs/generaluser.png" alt="User Profile Picture" />
                        </div>
                        <h4 class="profile-heading">Your Profile</h4>
                        <div class="profile-status mt-2">
                            <span>Account Status - </span>
                            <asp:Label class="badge badge-pill badge-info profile-status-label" ID="Label1" runat="server" Text="Your status"></asp:Label>
                        </div>
                    </div>
                        <hr>
                        <!-- Profile Form -->
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="TextBox1">Full Name</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="TextBox2">Date of Birth</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <br />
                                    <label for="TextBox3">Contact No</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <br />
                                    <label for="TextBox4">Email ID</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <br />
                                    <label for="DropDownList1">State</label>
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
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
                                        <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <br />
                                    <label for="TextBox6">City</label>
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <br />
                                    <label for="TextBox7">Pincode</label>
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <br />
                            <label for="TextBox5">Full Address</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                        <div class="text-center mb-3">
                            <br />
                            <span class="badge badge-pill badge-info">Login Credentials</span>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="TextBox8">User ID</label>
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="TextBox9">Old Password</label>
                                    <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Old Password" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="TextBox10">New Password</label>
                                    <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="text-center mb-3">
                            <br />
                            <asp:Button class="btn btn-primary btn-lg" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                        </div>
                        <div class="card-footer">
                            <a class="back-link" href="homepage.aspx"><< Back to Home</a>
                        </div>
                    </div>
                </div>
            </div>



            <!-- Issued Books Section -->
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="text-center mb-3">
                            <img width="100px" src="images/book.gif" alt="Issued Books" class="issued-books-img" />
                            <h4 class="mt-2">Your Issued Books</h4>
                            <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Your books info"></asp:Label>
                        </div>
                        <hr>
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound"></asp:GridView>
                    </div>
                </div>
            </div>
        </div>

</asp:Content>
