<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Main_Project.Login" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Majestic Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="Content/majestic-master/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="Content/majestic-master/vendors/base/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="Content/majestic-master/css/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="Content/majestic-master/images/favicon.png" />
</head>

<body>
    <div class="container-scroller">
        <div class="container-fluid page-body-wrapper full-page-wrapper">
            <div class="content-wrapper d-flex align-items-center auth px-0">
                <div class="row w-100 mx-0">
                    <div class="col-lg-4 mx-auto">
                        <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                            <div class="brand-logo">
                                <label style="color: blue; font-size: xx-large">CANCLUB</label>
                            </div>
                            <h4>Hello! let's get started</h4>
                            <h6 class="font-weight-light">Sign in to continue.</h6>
                            <form class="pt-3" runat="server">
                                <div class="form-group">
                                    <asp:TextBox placeholder="Username" ID="TextBoxUserName" CssClass="form-control form-control-lg" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="Please Enter your First Name"   
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBoxPassword" placeholder="Password" type="password" class="form-control form-control-lg" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Please Enter your Password"   
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                                </div>
                                <div class="mt-3">
                                    <asp:Button class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>
                                <div class="my-2 d-flex justify-content-between align-items-center">
                                    <center><asp:Label ID="Label4" ForeColor="Red" runat="server" Text="Wrong Password or Username."></asp:Label></center>
                                </div>
                                <div class="text-center mt-4 font-weight-light">
                                    Don't have an account? <a href="Register.aspx" class="text-primary">Register</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="Content/majestic-master/vendors/base/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- inject:js -->
    <script src="Content/majestic-master/js/off-canvas.js"></script>
    <script src="Content/majestic-master/js/hoverable-collapse.js"></script>
    <script src="Content/majestic-master/js/template.js"></script>
    <!-- endinject -->
</body>

</html>
