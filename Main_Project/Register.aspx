<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Main_Project.Register" %>

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
                            <h4>New here?</h4>
                            <h6 class="font-weight-light">Signing up is easy. It only takes a few steps</h6>
                            <form class="pt-3" runat="server">
                                <div class="form-group">
                                    <asp:TextBox placeholder="Username" ID="TextBoxName" class="form-control form-control-lg" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxName" ErrorMessage="Please Enter your User Name"   
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBoxPassword" class="form-control form-control-lg" placeholder="Password" type="password" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Please Enter your Password"   
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBoxFirstName" class="form-control form-control-lg" placeholder="First Name" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxFirstName" ErrorMessage="Please Enter your First Name"   
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBoxLastName" runat="server" class="form-control form-control-lg" placeholder="Last Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxLastName" ErrorMessage="Please Enter your Last Name"   
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBirtDate" TextMode="Date" runat="server" class="form-control form-control-lg" placeholder="Birthdate"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBirtDate" ErrorMessage="Please Enter your Birt Date"   
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBoxEmail" class="form-control form-control-lg" placeholder="Email" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Please Enter your Email"   
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBoxDepartment" class="form-control form-control-lg" placeholder="Department" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxDepartment" ErrorMessage="Please Enter your Department"   
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                                </div>
                                <div class="form-group">
                                    <asp:FileUpload ID="fuUser" class="form-control form-control-lg" runat="server" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="fuUser" ErrorMessage="Please Enter your Picture"   
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                                </div>
                                <div class="mt-3">
                                    <asp:Button ID="ButtonRegister" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" runat="server" Text="Register" OnClick="ButtonRegister_Click" />
                                </div>
                                <div class="my-2 d-flex justify-content-between align-items-center">
                                    <center><asp:Label ID="Label11" ForeColor="Red" runat="server" Text="You have to Enter all information"></asp:Label></center>
                                </div>
                                <div class="text-center mt-4 font-weight-light">
                                    If you have an account? <a href="Login.aspx" class="text-primary">Login</a>
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
