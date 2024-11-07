<%@ Page Title="View Books" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewBooks.aspx.cs" Inherits="eLibrary.ViewBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <script type="text/javascript">
         $(document).ready(function () {
             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         });
     </script>
 
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

         .btn-custom {
             width: 100%;
             padding: 10px;
             color: white;
             font-size: 16px;
             border-radius: 5px;
             border: none;
             box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
             transition: background-color 0.3s, transform 0.2s;
         }

         .btn-primary-custom {
             background-color: #007bff;
             border-color: #007bff;
         }

         .btn-success-custom {
             background-color: #28a745;
             border-color: #28a745;
         }

         .btn-warning-custom {
             background-color: #ffc107;
             border-color: #ffc107;
         }

         .btn-danger-custom {
             background-color: #dc3545;
             border-color: #dc3545;
         }

         .btn-primary-custom:hover,
         .btn-success-custom:hover,
         .btn-warning-custom:hover,
         .btn-danger-custom:hover {
             background-color: #0056b3;
             transform: translateY(-2px);

         }

         .btn-primary-custom {
        background-color: #007bff;
        color: white;
        padding: 10px 15px;
        text-decoration: none;
        border-radius: 5px;
        display: inline-block;
        text-align: center;
        }
        .btn-primary-custom:hover {
            background-color: #0056b3;
        }


     </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid">
    <div class="row">
        <div class="col-md-12 mb-4">
            <!-- Any additional content can go here -->
        </div>
        <div class="col-md-8 offset-md-2"> <!-- Updated this line -->
            <div class="card">
                <div class="card-header">
                    BOOK INVENTORY
                </div>
                <div class="card-body">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                        ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString4 %>"
                        ProviderName="<%$ ConnectionStrings:elibraryDBConnectionString4.ProviderName %>"
                        SelectCommand="SELECT *, book_img_link, book_pdf_link FROM [book_master_tbl]">
                    </asp:SqlDataSource>

                    <asp:GridView CssClass="table table-striped table-bordered" ID="GridView1" runat="server"
                        AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1"
                        OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id">
                                <ItemStyle Font-Bold="True" />
                            </asp:BoundField>


                            <asp:TemplateField HeaderText="DETAILS">
                                    <ItemTemplate>
                                        <div class="container-fluid p-3">
                                            <div class="row bg-light shadow-sm rounded mb-3 p-2">
                                                <div class="col-lg-2 text-center">
                                                     <asp:Image ID="BookImage" runat="server" CssClass="img-fluid rounded mb-2"
                                                                ImageUrl='<%# Eval("book_img_link") %>' AlternateText="Book Cover" Width="100px" Height="150px" />
                                                            <asp:HyperLink ID="LinkPdf" runat="server" Text="View PDF" Target="_blank"
                                                                NavigateUrl='<%# Eval("book_pdf_link") %>' CssClass="btn btn-primary-custom mt-2" />
                                                </div>
                                                <div class="col-lg-10">
                                                    <!-- Book Title -->
                                                    <div class="row mb-2">
                                                        <div class="col-12">
                                                            <h2 class="font-weight-bold text-primary">
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Book_name") %>' />
                                                            </h2>
                                                        </div>
                                                    </div>
                                                    <!-- Author and Genre -->
                                                    <div class="row mb-2">
                                                        <div class="col-12">
                                                            <p class="mb-1">
                                                                <strong>Author Name:</strong>
                                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("author_name") %>' />
                                                                &nbsp;| <strong>Genre:</strong>
                                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("genre") %>' />
                                                                &nbsp;| <strong>Language:</strong>
                                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("language") %>' />
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <!-- Publisher Details -->
                                                    <div class="row mb-2">
                                                        <div class="col-12">
                                                            <p class="mb-1">
                                                                <strong>Publisher:</strong>
                                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("publisher_name") %>' />
                                                                &nbsp;| <strong>Publish Date:</strong>
                                                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("publish_date") %>' />
                                                                &nbsp;| <strong>Pages:</strong>
                                                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("no_of_pages") %>' />
                                                                &nbsp;| <strong>Edition:</strong>
                                                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("edition") %>' />
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <!-- Cost and Stock -->
                                                    <div class="row mb-2">
                                                        <div class="col-12">
                                                            <p class="mb-1">
                                                                <strong>Cost:</strong>
                                                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("book_cost") %>' />
                                                                &nbsp;| <strong>Actual Stock:</strong>
                                                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("current_stock") %>' />
                                                                &nbsp;| <strong>Available:</strong>
                                                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("actual_stock") %>' />
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <!-- Description -->
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <p class="font-italic">
                                                                <strong>Description:</strong>
                                                                <asp:Label ID="Label14" runat="server" Text='<%# Eval("book_description") %>' />
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                    <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                                    <ItemStyle Font-Bold="False" />
                                </asp:TemplateField>

                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <a class="back-link" href="homepage.aspx"><< Back to Home</a>
        </div>
    </div>
</div>
</asp:Content>

