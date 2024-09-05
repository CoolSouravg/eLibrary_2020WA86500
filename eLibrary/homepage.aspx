<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="eLibrary.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--Homepage stylesheet--%>

    <link href="css/homepage_stylesheet.css" rel="stylesheet" />

<section class="image-overlay">
  <img src="images/Capture2.JPG" class="img-fluid"/>
  <div class="overlay"></div>
</section>

<section>
  <div class="container py-3">
    <div class="row text-center">
       <div class="col-12">
        <h2 class="mb-3">Our Features</h2>
        <p class="lead"><b>Discover Our Essential Core Features</b></p>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4 mb-4">
        <div class="feature-card text-center p-4 border rounded shadow-sm">
          <img src="images/inventory.png" alt="Digital Book Inventory" class="img-fluid mb-3" />
          <h4 class="mb-2">Digital Book Inventory</h4>
          <p class="text-muted">Manage and track your book collection effortlessly with our digital inventory system. Get real-time updates on book availability and new arrivals.</p>
        </div>
      </div>
      <div class="col-md-4 mb-4">
        <div class="feature-card text-center p-4 border rounded shadow-sm">
          <img src="images/searchbook.jpg" alt="Search Books" class="img-fluid mb-3" />
          <h4 class="mb-2">Search Books</h4>
          <p class="text-muted">Find books quickly using our advanced search options. Filter by title, author, or genre to locate your desired books with ease.</p>
        </div>
      </div>
      <div class="col-md-4 mb-4">
        <div class="feature-card text-center p-4 border rounded shadow-sm">
          <img src="images/default.jpg" alt="Defaulter List" class="img-fluid mb-3" />
          <h4 class="mb-2">Defaulter List</h4>
          <p class="text-muted">Track overdue items and manage defaulters efficiently. Stay on top of outstanding returns and keep your library operations smooth.</p>
        </div>
      </div>
    </div>
  </div>
</section>

<section>
  <img src="images/legacysystems.jpg" class="img-fluid"/>
</section>

<section>
  <div class="container py-5">
    <div class="row text-center mb-4">
      <div class="col-12">
        <h2 class="mb-3">Our Process</h2>
        <p class="lead"><b>We have a Simple 3-Step Process</b></p>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4 mb-4">
        <div class="process-card text-center p-4 border rounded shadow-sm">
          <img src="imgs/sign-up.png" alt="Sign Up" class="img-fluid mb-3" />
          <h4 class="mb-2">Sign Up</h4>
          <p class="text-muted">Create an account to access all our library services. Manage your preferences, track your reading history, and enjoy tailored book recommendations.</p>
        </div>
      </div>
      <div class="col-md-4 mb-4">
        <div class="process-card text-center p-4 border rounded shadow-sm">
          <img src="imgs/search-online.png" alt="Search Books" class="img-fluid mb-3" />
          <h4 class="mb-2">Search Books</h4>
          <p class="text-muted">Quickly find the books you’re interested in using our advanced search options. Filter by title, author, or genre to discover new reads effortlessly with few clicks.</p>
        </div>
      </div>
      <div class="col-md-4 mb-4">
        <div class="process-card text-center p-4 border rounded shadow-sm">
          <img src="imgs/library.png" alt="Visit Us" class="img-fluid mb-3" />
          <h4 class="mb-2">Visit Us</h4>
          <p class="text-muted">Explore our library in person. Get assistance from our staff anytime (24X7), receive book recommendations, and enjoy a comfortable reading space.</p>
        </div>
      </div>
    </div>
  </div>
</section>

</asp:Content>