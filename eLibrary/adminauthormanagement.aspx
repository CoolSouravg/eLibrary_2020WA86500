<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="eLibrary.adminauthormanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type ="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        })
    </script>

    <style>
        /* Custom CSS for adminauthormanagement page */
        
        .card-header {
            background-color: black;
            color: white;
            text-align: center;
            padding: 10px 0;
        }
        
        .card{
            margin-bottom: 200px;
            margin-top: 30px;
        }

        .card-body {
            padding: 20px;
            font-weight: bold;
            border-radius: 5px;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .input-group {
            display: flex;
        }

        .input-group-append .btn {
            border-radius: 0;
            margin-left: 5px;
        }

        .btn {
            
            padding: 10px 20px;
        }

        .btn-block {
            width: 100%;
            margin-bottom: 10px;
        }

        .btn-success {
            background-color: #28a745;
            border-color: #28a745;
        }

        .btn-warning {
            background-color: #ffc107;
            border-color: #ffc107;
        }

        .btn-danger {
            background-color: #dc3545;
            border-color: #dc3545;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn-primary:hover,
        .btn-success:hover,
        .btn-warning:hover,
        .btn-danger:hover {
            opacity: 0.8;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        .container {
            margin-top: 30px;
        }

        .table {
            margin-top: 20px;
            background-color: white;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-header">
                        Author Details
                    </div>
                    <div class="card-body">

                        <div class="text-center">
                            <img width="100px" src="imgs/writer.png" alt="Author Image" />
                        </div>

                        <hr>
                        <br />
                        <div class="form-group row">
                            <label for="TextBox1" class="col-md-4 col-form-label">Author ID</label>
                            <div class="col-md-8">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                    <div class="input-group-append">
                                        <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="TextBox2" class="col-md-4 col-form-label">Author Name</label>
                            <div class="col-md-8">
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Author Name"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col">
                                <asp:Button ID="Button2" CssClass="btn btn-success btn-block" runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>
                            <div class="col">
                                <asp:Button ID="Button3" CssClass="btn btn-primary btn-block" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                            <div class="col">
                                <asp:Button ID="Button4" CssClass="btn btn-danger btn-block" runat="server" Text="Delete" OnClick="Button4_Click" />
                            </div>
                        </div>

                        <div class="text-center">
                            <a href="homepage.aspx">&lt;&lt; Back to Home</a>
                        </div>

                    </div>
                </div>

            </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-header">
                        Author List
                    </div>
                    <div class="card-body">

                        <hr>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" ProviderName="<%$ ConnectionStrings:elibraryDBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                        <asp:GridView CssClass="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                            </Columns>
                        </asp:GridView>

                    </div>
                </div>

            </div>

        </div>
    </div>

</asp:Content>
