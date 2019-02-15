<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Nehashree.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- START: Header Title -->
        <div class="nk-header-title nk-header-title-full">
            <div class="bg-image">
                <div style="background-image: url('images/b2.jpg');"></div>
                <div class="bg-image-overlay" style="background-color: rgba(12, 12, 12, 0.6);"></div>
            </div>
            <div class="nk-header-table">
                <div class="nk-header-table-cell">
                    <div class="container">

                        <h2 class="nk-subtitle text-white">New Branding Agency</h2>
                        <h1 class="nk-title display-3 text-white">We dont take photograph
                            <br>
                            <em class="fw-400">We Make It</em>
                        </h1>
                        <div class="nk-gap"></div>
                        <div class="nk-header-text text-white">
                            <div class="nk-gap-4"></div>
                        </div>
                    </div>
                </div>
            </div>

            <div>
                <a class="nk-header-title-scroll-down text-white" href="#nk-header-title-scroll-down">
                    <span class="pe-7s-angle-down"></span>
                </a>
            </div>

        </div>

        <div id="nk-header-title-scroll-down"></div>

         <!-- END: Header Title -->

         <!-- START: About Our Agency -->
        <div class="bg-white" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 text-xs-center">
                        <div class="nk-gap-4 mt-9"></div>

                        <h2 class="display-4">About Our Agency</h2>
                        <div class="nk-gap mnt-5"></div>

                        <p>We are a design studio based in Mumbai, India. We have over 20 years of combined experience, and know a thing or two about designing websites and mobile apps. Clever use of technology and lean processes enable us to work faster and smarter.
                        </p>

                        <asp:Button runat="server" ID="pbtn" CssClass="nk-btn" Text="See Our Work" />
                       
                        <div class="nk-gap-4 mt-25"></div>
                    </div>
                </div>
            </div>
        </div>
         <!-- END: About Our Agency -->

         <!-- START: Features -->
        <div class="nk-box bg-dark-1 text-white">
            <div class="bg-image bg-image-parallax" style="background-image: url('images/bg-pattern.jpg');"></div>
            <div class="nk-gap-5 mnt-6"></div>
            <div class="container">
                <div class="row vertical-gap">
                    <div class="col-md-6 col-lg-3">
                        <div class="nk-ibox-1">
                            <div class="nk-ibox-icon">
                                <span class="pe-7s-portfolio"></span>
                            </div>
                            <div class="nk-ibox-cont">
                                <div class="nk-ibox-title">548</div>
                                <div class="nk-ibox-text">Projects Completed</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="nk-ibox-1">
                            <div class="nk-ibox-icon">
                                <span class="pe-7s-clock"></span>
                            </div>
                            <div class="nk-ibox-cont">
                                <div class="nk-ibox-title">1465</div>
                                <div class="nk-ibox-text">Working Hours</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="nk-ibox-1">
                            <div class="nk-ibox-icon">
                                <span class="pe-7s-star"></span>
                            </div>
                            <div class="nk-ibox-cont">
                                <div class="nk-ibox-title">612</div>
                                <div class="nk-ibox-text">Positive Feedbacks</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="nk-ibox-1">
                            <div class="nk-ibox-icon">
                                <span class="pe-7s-like"></span>
                            </div>
                            <div class="nk-ibox-cont">
                                <div class="nk-ibox-title">735</div>
                                <div class="nk-ibox-text">Happy Clients</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="nk-gap-5 mnt-6"></div>
        </div>
        <!-- END: Features -->

         <!-- START: Contact Info -->
        <div class="container" id="contact">
            <div class="nk-gap-5"></div>
            <div class="row vertical-gap">
                <div class="col-lg-5">
                    <!-- START: Info -->
                    <h2 class="display-4">Contact Info:</h2>
                    <div class="nk-gap mnt-3"></div>

                    <p>If you have any questions, queries or need any assistance, our details are mentioned below. We are happy and glad to serve our customer. For emails and query form, you can expect a revert back within 24 hrs. </p>

                    <ul class="nk-contact-info">
                        <li>
                            <strong>Address:</strong> C/47 Options Primo, Chakala, Andheri</li>
                        <li>
                            <strong>Phone:</strong> +91 9892990000</li>
                        <li>
                            <strong>Email:</strong> test@test.com</li>
                        <li>
                            <strong>Fax:</strong> +44 022 065 909</li>
                    </ul>
                    <!-- END: Info -->
                </div>
                <div class="col-lg-7">
                    <!-- START: Form -->

                    <div class="nk-form nk-form-ajax">
                        <div class="row vertical-gap">
                            <div class="col-md-6">
                                <asp:TextBox ID="tbname" CssClass="form-control required" runat="server" placeholder="Your Name"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                 <asp:TextBox ID="tbemail" CssClass="form-control required" runat="server" placeholder="Your Email"></asp:TextBox>
                            </div>
                        </div>

                        <div class="nk-gap-1"></div>
                         <asp:TextBox ID="tbtitle" CssClass="form-control required" runat="server" placeholder="Your Title"></asp:TextBox>

                        <div class="nk-gap-1"></div>
                        <asp:TextBox ID="tbcomment" CssClass="form-control required" runat="server" placeholder="Your Comment"></asp:TextBox>
                        <div class="nk-gap-1"></div>
                        <div class="nk-form-response-success"></div>
                        <div class="nk-form-response-error"></div>
                        <asp:Button ID="btnmsg" runat="server" CssClass="nk-btn" Text="Send Message" OnClick="btnmsg_Click" />
                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                     </div>
                    <!-- END: Form -->
                </div>
            </div>
            <div class="nk-gap-5"></div>
        </div>
        <!-- END: Contact Info -->

</asp:Content>
