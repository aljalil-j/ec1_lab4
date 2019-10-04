<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="cc1lab.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!DOCTYPE html>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- Add icon library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>SIGN UP </title>
</head>
<body>
    <header>
        <html>
        <style>
            * {
                box-sizing: border-box;
            }

            body {
                margin: 0;
                font-family: Arial, Helvetica, sans-serif;
            }

            .header {
                overflow: hidden;
                background-color: #f1f1f1;
                padding: 0px 10px;
            }

                .header a {
                    float: left;
                    color: black;
                    text-align: center;
                    padding: 12px;
                    text-decoration: none;
                    font-size: 12px;
                    line-height: 12px;
                    border-radius: 4px;
                }

                    .header a.logo {
                        font-size: 20px;
                        font-weight: bold;
                    }

                    .header a:hover {
                        background-color: #ddd;
                        color: black;
                    }

                    .header a.active {
                        background-color: dodgerblue;
                        color: white;
                    }

            .header-right {
                float: right;
            }

            @media screen and (max-width: 500px) {
                .header a {
                    float: none;
                    display: block;
                    text-align: left;
                }

                .header-right {
                    float: none;
                }
            }
        </style>
        <style>
              body {
                  font-family: Arial, Helvetica, sans-serif;
              }

              * {
                  box-sizing: border-box;
              }
              /* Full-width input fields */
              input[type=text], input[type=password] {
                  width: 30%;
                  padding: 15px;
                  margin: 5px 0 22px 0;
                  display: inline-block;
                  border: none;
                  background: #f1f1f1;
              }
                  /* Add a background color when the inputs get focus */
                  input[type=text]:focus, input[type=password]:focus {
                      background-color: #ddd;
                      outline: none;
                  }
              /* Set a style for all buttons */
              button {
                  background-color: blue;
                  color: black;
                  padding: 7px 10px;
                  margin: 8px 0;
                  border: none;
                  cursor: pointer;
                  width: 7%;
                  opacity: 0.9;
              }

                  button:hover {
                      opacity: 6;
                  }
              /* Extra styles for the cancel button */
              .cancelbtn {
                  padding: 7px 10px;
                  background-color: #f44336;
              }
              /* Float cancel and signup buttons and add an equal width */
              .cancelbtn, .signupbtn {
                  float: left;
                  width: 10%;
              }
              /* Add padding to container elements */
              .container {
                  padding: 16px;
              }
              /* The Modal (background) */
              .modal {
                  display: none; /* Hidden by default */
                  position: fixed; /* Stay in place */
                  z-index: 1; /* Sit on top */
                  left: 0;
                  top: 0;
                  width: 50%; /* Full width */
                  height: 50%; /* Full height */
                  overflow: auto; /* Enable scroll if needed */
                  background-color: #474e5d;
                  padding-top: 50px;
              }
              /* Modal Content/Box */
              .modal-content {
                  background-color: #fefefe;
                  margin: 5% auto 10% auto; /* 5% from the top, 3% from the bottom and centered */
                  border: 1px solid #888;
                  width: 80%; /* Could be more or less, depending on screen size */
              }
              /* Style the horizontal ruler */
              hr {
                  border: 1px solid #f1f1f1;
                  margin-bottom: 25px;
              }

              /* The Close Button (x) */
              .close {
                  position: absolute;
                  right: 35px;
                  top: 15px;
                  font-size: 40px;
                  font-weight: bold;
                  color: #f1f1f1;
              }

                  .close:hover,
                  .close:focus {
                      color: #f44336;
                      cursor: pointer;
                  }
              /* Clear floats */
              .clearfix::after {
                  content: "";
                  clear: both;
                  display: table;
              }
              /* Change styles for cancel button and signup button on extra small screens */
              @media screen and (max-width: 300px) {
                  .cancelbtn, .signupbtn {
                      width: 100%;
                  }
              }
          </style>
                 <style>
                     .bg-img {
                         /* The image used */
                         background-image: url("nature.jpg");
                         min-height: 580px;
                         /* Center and scale the image nicely */
                         background-position:;
                         background-repeat: no-repeat;
                         background-size: cover;
                         position: relative;
                     }

                     .auto-style1 {
                         /* The image used */
                         background-image: url('nature.jpg');
                         min-height: 580px; /* Center and scale the image nicely */
                         ;
                         background-position:;
                         background-repeat: no-repeat;
                         background-size: cover;
                         position: relative;
                         left: 0px;
                         top: 0px;
                         height: 781px;
                         width: 408px;
                     }

                     .auto-style2 {
                         width: 382px;
                     }

                     .auto-style3 {
                         width: 382px;
                         height: 662px;
                     }

                     .auto-style5 {
                         height: 970px;
                     }
                     .auto-style6 {
                         margin-left: 3;
                     }
                 </style>


        <nav>
            <div class="header">
                </br>
                           <asp:image runat="server" ImageUrl="~/IMG/e10.png" Height="92px" Width="74px"></asp:image>
                JUNGLE 
            </div>

            <div class="header">
            </div>
            <div class="header">


                <div class="header-right">
                    <a class="active" href="Home.aspx">HOME</a>
                        <a <i class="glyphicon glyphicon-home" style="left: 5px; top: -73px; height: 25px"></i>HOME</a>
                       
						 
								   </div>
					    </nav>
				      
			  </br>
		  
                    <main>
                        <div id="page-wrapper">

                            <section id="section-default" class="col-12">

                                <div align="center">
                                    <div style="width: 410px; border: solid 1px #333333;" align="left">
                                        <div style="background-color: #333333; color: #FFFFFF; padding: 0px;">
                                            <asp:Label ID="lblRegisteredUsers" runat="server" Text="Number Registerd"></asp:Label>
                                        </div>

                                        <div style="margin: 0px" class="auto-style5">
                                            <div class="auto-style1">
                                                <form id="form1" runat="server">
                                                    <div class="container">
                                                        <h1><font color="red">Sign&nbsp;Up</font>
                                                            <asp:image runat="server" ImageUrl="~/IMG/avatar2.png" Height="109px"></asp:image>
                                                        </h1>

                                                        <div class="imgcontainer">
                                                            <div class="auto-style3">
                                                                First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="firstnametxt" ErrorMessage="Required FirstName"></asp:RequiredFieldValidator>
                                                                <!--name the buttons-->
                                                                <asp:TextBox ID="firstnametxt" runat="server" Width="351px"></asp:TextBox>
                                                                <div class="auto-style2">



                                                                    <div class="auto-style2">
                                                                        Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Lastnametxt" ErrorMessage="This Field Is Missing"></asp:RequiredFieldValidator>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;<br />
                                                                        <asp:TextBox ID="Lastnametxt" runat="server" Height="27px" Width="349px"></asp:TextBox>
                                                                        <br />
                                                                        Phone Number&nbsp;&nbsp;&nbsp;
                                                                        <asp:Label ID="Label3" runat="server" Text=" ###-###-####"></asp:Label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Incorrect Fromat" ClientIDMode="AutoID" ControlToValidate="PhoneNumbertxt"></asp:CustomValidator>
                                                                        &nbsp;&nbsp;&nbsp;<br />
                                                                        <asp:TextBox ID="PhoneNumbertxt" runat="server" Width="348px"></asp:TextBox>
                                                                        <br />
                                                                        Email Address&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="eg. j@hotmail.com"></asp:Label>
                                                                        &nbsp;&nbsp;<asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Incorrect Format" ControlToValidate="Emailtxt"></asp:CustomValidator>
                                                                        &nbsp;&nbsp;&nbsp; 
                                                                        <asp:TextBox ID="Emailtxt" runat="server" Width="351px"></asp:TextBox>
                                                                        <div class="auto-style2">

                                                                           <asp:CustomValidator ID="CustomValidator3" runat="server" ClientValidationFunction="ValidateDOB"
                                                                            ControlToValidate="txtDate" ErrorMessage="" ForeColor = "Red" />

                                                                            &nbsp;DATE OF BIRTH&nbsp;&nbsp; dd/mm/yyyy<asp:TextBox ID="txtDate" runat="server" Text="" CssClass="auto-style6" Width="344px" />
                                                                            &nbsp;&nbsp;Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                                                                            <td class="auto-style1">
                                                                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="col-xs-offset-0" Width="350px"></asp:TextBox>
                                                                                Confirm Password:</td>
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                         <td></td>
                                                                            </tr>

                                                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords do not match" BackColor="#CC0000" BorderColor="Red"></asp:CompareValidator>

                                                                            <div class="auto-style2">
                                                                                <tr>
                                                                                    <td class="auto-style1">
                                                                                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Width="353px" Height="16px"></asp:TextBox><br />
                                                                                                                                <td>
                                                                                         <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                                                                                            </td>
                                                                                        <asp:Button ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click" Text="Submit" />
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                    
                                                </form>
   </body>
</html>
<script type="text/javascript">
    function ValidateDOB(sender, args) {
        //Get the date from the TextBox.
        var dateString = document.getElementById(sender.controltovalidate).value;
        var regex = /(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$/;
 
        //Check whether valid dd/MM/yyyy Date Format.
        if (regex.test(dateString)) {
            var parts = dateString.split("/");
            var dtDOB = new Date(parts[1] + "/" + parts[0] + "/" + parts[2]);
            var dtCurrent = new Date();
            sender.innerHTML = "Eligibility 18 years ONLY."
            if (dtCurrent.getFullYear() - dtDOB.getFullYear() < 18) {
                args.IsValid = false;
                return;
            }
 
            if (dtCurrent.getFullYear() - dtDOB.getFullYear() == 18) {
 
                //CD: 11/06/2018 and DB: 15/07/2000. Will turned 18 on 15/07/2018.
                if (dtCurrent.getMonth() < dtDOB.getMonth()) {
                    args.IsValid = false;
                    return;
                }
                if (dtCurrent.getMonth() == dtDOB.getMonth()) {
                    //CD: 11/06/2018 and DB: 15/06/2000. Will turned 18 on 15/06/2018.
                    if (dtCurrent.getDate() < dtDOB.getDate()) {
                        args.IsValid = false;
                        return;
                    }
                }
            }
            args.IsValid = true;
        } else {
            sender.innerHTML = "Enter date in dd/MM/yyyy format ONLY."
            args.IsValid = false;
        }
    }
</script>