<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="eLibrary.adminbookinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type ="text/javascript">

           type="text/javascript">
            $(document).ready(function () {
                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
     })
    

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }

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
        font-size: 16px; /* Ensure font size matches */
        border-radius: 5px; /* Ensure border-radius matches */
        border: none; /* Remove any borders */
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* Consistent shadow */
        transition: background-color 0.3s, transform 0.2s;
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

    .btn-primary-custom:hover, .btn-success-custom:hover, .btn-warning-custom:hover, .btn-danger-custom:hover {
        background-color: #0056b3; /* Darker shade on hover */
        border-color: #004085;
        transform: translateY(-2px); /* Lift effect on hover */
        color:aqua;
    }


</style>

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 mb-4">
                <div class="card">
                    <div class="card-header">
                        Book Details
                    </div>
                    <div class="card-body">
                        <div class="text-center mb-4">
                            <img id ="imgview" width="100px" src="images/book.gif" alt="Books Image" />
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-12">
                                <asp:FileUpload onchange="readURL(this);" CssClass="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-3">
                                <label class="form-label">Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Book ID"></asp:TextBox>
                                        <asp:LinkButton CssClass="btn btn-primary-custom" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <label class="form-label">Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Book Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <label class="form-label">Language</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="English" Value="English" />
                                        <asp:ListItem Text="Hindi" Value="Hindi" />
                                        <asp:ListItem Text="Marathi" Value="Marathi" />
                                        <asp:ListItem Text="French" Value="French" />
                                        <asp:ListItem Text="German" Value="German" />
                                        <asp:ListItem Text="Urdu" Value="Urdu" />
                                    </asp:DropDownList>
                                </div>
                                <label class="form-label">Publisher Name</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="Publisher 1" Value="Publisher 1" />
                                        <asp:ListItem Text="Publisher 2" Value="Publisher 2" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Author Name</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="Author 1" Value="Author 1" />
                                        <asp:ListItem Text="Author 2" Value="Author 2" />
                                    </asp:DropDownList>
                                </div>
                                <label class="form-label">Publish Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Genre</label>
                                <div class="form-group">
                                    <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                                        <asp:ListItem Text="Action" Value="Action" />
                                        <asp:ListItem Text="Adventure" Value="Adventure" />
                                        <asp:ListItem Text="Comic Book" Value="Comic Book" />
                                        <asp:ListItem Text="Self Help" Value="Self Help" />
                                        <asp:ListItem Text="Motivation" Value="Motivation" />
                                        <asp:ListItem Text="Healthy Living" Value="Healthy Living" />
                                        <asp:ListItem Text="Wellness" Value="Wellness" />
                                        <asp:ListItem Text="Crime" Value="Crime" />
                                        <asp:ListItem Text="Drama" Value="Drama" />
                                        <asp:ListItem Text="Fantasy" Value="Fantasy" />
                                        <asp:ListItem Text="Horror" Value="Horror" />
                                        <asp:ListItem Text="Poetry" Value="Poetry" />
                                        <asp:ListItem Text="Personal Development" Value="Personal Development" />
                                        <asp:ListItem Text="Romance" Value="Romance" />
                                        <asp:ListItem Text="Science Fiction" Value="Science Fiction" />
                                        <asp:ListItem Text="Suspense" Value="Suspense" />
                                        <asp:ListItem Text="Thriller" Value="Thriller" />
                                        <asp:ListItem Text="Art" Value="Art" />
                                        <asp:ListItem Text="Autobiography" Value="Autobiography" />
                                        <asp:ListItem Text="Encyclopedia" Value="Encyclopedia" />
                                        <asp:ListItem Text="Health" Value="Health" />
                                        <asp:ListItem Text="History" Value="History" />
                                        <asp:ListItem Text="Math" Value="Math" />
                                        <asp:ListItem Text="Textbook" Value="Textbook" />
                                        <asp:ListItem Text="Science" Value="Science" />
                                        <asp:ListItem Text="Travel" Value="Travel" />
                                    </asp:ListBox>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <label class="form-label">Edition</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Edition"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Book Cost (per unit)</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Book Cost (per unit)" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Pages</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Pages" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <label class="form-label">Actual Stock</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Actual Stock" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Current Stock</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Current Stock" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Issued Books</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Issued Books" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-12">
                                <label class="form-label">Book Description</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Book Description" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                          <div class="col-4">
                                <asp:Button ID="Button1" CssClass="btn btn-success-custom btn-custom" runat="server" Text="Add" OnClick="Button1_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" CssClass="btn btn-warning-custom btn-custom" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button2" CssClass="btn btn-danger-custom btn-custom" runat="server" Text="Delete" OnClick="Button2_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <a class="back-link" href="homepage.aspx"><< Back to Home</a>
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-header text-center">
                        Book Inventory List
                    </div>
                    <div class="card-body">
                        <div class="row mb-3">
                            <div class="col">

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString4 %>" ProviderName="<%$ ConnectionStrings:elibraryDBConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                                <asp:GridView CssClass="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                    <Columns>

                                        <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id" >




                                            <ItemStyle Font-Bold="True" />
                                        </asp:BoundField>




                                            <asp:TemplateField HeaderText="DETAILS">
                                                <ItemTemplate>
                                                    <div class="container-fluid p-3">
                                                        <div class="row bg-light shadow-sm rounded mb-3 p-2">

                                                            <div class="col-lg-2 text-center">
                                                                <asp:Image ID="Image1" runat="server" CssClass="img-fluid rounded" ImageUrl='<%# Eval("book_img_link") %>' AlternateText="Book Cover" />
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
                    </div>
                </div>
            </div>
        </div>

</asp:Content>
