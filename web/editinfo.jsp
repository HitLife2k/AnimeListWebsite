<%-- 
    Document   : userinfo
    Created on : Jul 18, 2020, 9:37:26 AM
    Author     : PC
--%>

<%@page import="animelist.model.AccountDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>InforWibu.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <link href="http://netdna.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
        <style type="text/css">
            body {
                margin-top: 20px;
            }
            /* User Cards */
            .user-box {
                width: 110px;
                margin: auto;
                margin-bottom: 20px;
            }
            .user-box img {
                width: 100%;
                border-radius: 50%;
                padding: 3px;
                background: #fff;
                -webkit-box-shadow: 0px 5px 25px 0px rgba(0, 0, 0, 0.2);
                -moz-box-shadow: 0px 5px 25px 0px rgba(0, 0, 0, 0.2);
                -ms-box-shadow: 0px 5px 25px 0px rgba(0, 0, 0, 0.2);
                box-shadow: 0px 5px 25px 0px rgba(0, 0, 0, 0.2);
            }
            .profile-card-2 .card {
                position: relative;
            }
            .profile-card-2 .card .card-body {
                z-index: 1;
            }
            .profile-card-2 .card::before {
                content: "";
                position: absolute;
                top: 0px;
                right: 0px;
                left: 0px;
                border-top-left-radius: .25rem;
                border-top-right-radius: .25rem;
                height: 112px;
                background-color: #e6e6e6;
            }
            .profile-card-2 .card.profile-primary::before {
                background-color: #008cff;
            }
            .profile-card-2 .card.profile-success::before {
                background-color: #15ca20;
            }
            .profile-card-2 .card.profile-danger::before {
                background-color: #fd3550;
            }
            .profile-card-2 .card.profile-warning::before {
                background-color: #ff9700;
            }
            .profile-card-2 .user-box {
                margin-top: 30px;
            }
            .profile-card-3 .user-fullimage {
                position: relative;
            }
            .profile-card-3 .user-fullimage .details {
                position: absolute;
                bottom: 0;
                left: 0px;
                width: 100%;
            }
            .profile-card-4 .user-box {
                width: 110px;
                margin: auto;
                margin-bottom: 10px;
                margin-top: 15px;
            }
            .profile-card-4 .list-icon {
                display: table-cell;
                font-size: 30px;
                padding-right: 20px;
                vertical-align: middle;
                color: #223035;
            }
            .profile-card-4 .list-details {
                display: table-cell;
                vertical-align: middle;
                font-weight: 600;
                color: #223035;
                font-size: 15px;
                line-height: 15px;
            }
            .profile-card-4 .list-details small {
                display: table-cell;
                vertical-align: middle;
                font-size: 12px;
                font-weight: 400;
                color: #808080;
            }
            /*Nav Tabs & Pills */
            .nav-tabs .nav-link {
                color: #223035;
                font-size: 12px;
                text-align: center;
                letter-spacing: 1px;
                font-weight: 600;
                margin: 2px;
                margin-bottom: 0;
                padding: 12px 20px;
                text-transform: uppercase;
                border: 1px solid transparent;
                border-top-left-radius: .25rem;
                border-top-right-radius: .25rem;
            }
            .nav-tabs .nav-link:hover {
                border: 1px solid transparent;
            }
            .nav-tabs .nav-link i {
                margin-right: 2px;
                font-weight: 600;
            }
            .top-icon.nav-tabs .nav-link i {
                margin: 0px;
                font-weight: 500;
                display: block;
                font-size: 20px;
                padding: 5px 0;
            }
            .nav-tabs-primary.nav-tabs {
                border-bottom: 1px solid #008cff;
            }
            .nav-tabs-primary .nav-link.active, .nav-tabs-primary .nav-item.show>.nav-link {
                color: #008cff;
                background-color: #fff;
                border-color: #008cff #008cff #fff;
                border-top: 3px solid #008cff;
            }
            .nav-tabs-success.nav-tabs {
                border-bottom: 1px solid #15ca20;
            }
            .nav-tabs-success .nav-link.active, .nav-tabs-success .nav-item.show>.nav-link {
                color: #15ca20;
                background-color: #fff;
                border-color: #15ca20 #15ca20 #fff;
                border-top: 3px solid #15ca20;
            }
            .nav-tabs-info.nav-tabs {
                border-bottom: 1px solid #0dceec;
            }
            .nav-tabs-info .nav-link.active, .nav-tabs-info .nav-item.show>.nav-link {
                color: #0dceec;
                background-color: #fff;
                border-color: #0dceec #0dceec #fff;
                border-top: 3px solid #0dceec;
            }
            .nav-tabs-danger.nav-tabs {
                border-bottom: 1px solid #fd3550;
            }
            .nav-tabs-danger .nav-link.active, .nav-tabs-danger .nav-item.show>.nav-link {
                color: #fd3550;
                background-color: #fff;
                border-color: #fd3550 #fd3550 #fff;
                border-top: 3px solid #fd3550;
            }
            .nav-tabs-warning.nav-tabs {
                border-bottom: 1px solid #ff9700;
            }
            .nav-tabs-warning .nav-link.active, .nav-tabs-warning .nav-item.show>.nav-link {
                color: #ff9700;
                background-color: #fff;
                border-color: #ff9700 #ff9700 #fff;
                border-top: 3px solid #ff9700;
            }
            .nav-tabs-dark.nav-tabs {
                border-bottom: 1px solid #223035;
            }
            .nav-tabs-dark .nav-link.active, .nav-tabs-dark .nav-item.show>.nav-link {
                color: #223035;
                background-color: #fff;
                border-color: #223035 #223035 #fff;
                border-top: 3px solid #223035;
            }
            .nav-tabs-secondary.nav-tabs {
                border-bottom: 1px solid #75808a;
            }
            .nav-tabs-secondary .nav-link.active, .nav-tabs-secondary .nav-item.show>.nav-link {
                color: #75808a;
                background-color: #fff;
                border-color: #75808a #75808a #fff;
                border-top: 3px solid #75808a;
            }
            .tabs-vertical .nav-tabs .nav-link {
                color: #223035;
                font-size: 12px;
                text-align: center;
                letter-spacing: 1px;
                font-weight: 600;
                margin: 2px;
                margin-right: -1px;
                padding: 12px 1px;
                text-transform: uppercase;
                border: 1px solid transparent;
                border-radius: 0;
                border-top-left-radius: .25rem;
                border-bottom-left-radius: .25rem;
            }
            .tabs-vertical .nav-tabs {
                border: 0;
                border-right: 1px solid #dee2e6;
            }
            .tabs-vertical .nav-tabs .nav-item.show .nav-link, .tabs-vertical .nav-tabs .nav-link.active {
                color: #495057;
                background-color: #fff;
                border-color: #dee2e6 #dee2e6 #fff;
                border-bottom: 1px solid #dee2e6;
                border-right: 0;
                border-left: 1px solid #dee2e6;
            }
            .tabs-vertical-primary.tabs-vertical .nav-tabs {
                border: 0;
                border-right: 1px solid #008cff;
            }
            .tabs-vertical-primary.tabs-vertical .nav-tabs .nav-item.show .nav-link, .tabs-vertical-primary.tabs-vertical .nav-tabs .nav-link.active {
                color: #008cff;
                background-color: #fff;
                border-color: #008cff #008cff #fff;
                border-bottom: 1px solid #008cff;
                border-right: 0;
                border-left: 3px solid #008cff;
            }
            .tabs-vertical-success.tabs-vertical .nav-tabs {
                border: 0;
                border-right: 1px solid #15ca20;
            }
            .tabs-vertical-success.tabs-vertical .nav-tabs .nav-item.show .nav-link, .tabs-vertical-success.tabs-vertical .nav-tabs .nav-link.active {
                color: #15ca20;
                background-color: #fff;
                border-color: #15ca20 #15ca20 #fff;
                border-bottom: 1px solid #15ca20;
                border-right: 0;
                border-left: 3px solid #15ca20;
            }
            .tabs-vertical-info.tabs-vertical .nav-tabs {
                border: 0;
                border-right: 1px solid #0dceec;
            }
            .tabs-vertical-info.tabs-vertical .nav-tabs .nav-item.show .nav-link, .tabs-vertical-info.tabs-vertical .nav-tabs .nav-link.active {
                color: #0dceec;
                background-color: #fff;
                border-color: #0dceec #0dceec #fff;
                border-bottom: 1px solid #0dceec;
                border-right: 0;
                border-left: 3px solid #0dceec;
            }
            .tabs-vertical-danger.tabs-vertical .nav-tabs {
                border: 0;
                border-right: 1px solid #fd3550;
            }
            .tabs-vertical-danger.tabs-vertical .nav-tabs .nav-item.show .nav-link, .tabs-vertical-danger.tabs-vertical .nav-tabs .nav-link.active {
                color: #fd3550;
                background-color: #fff;
                border-color: #fd3550 #fd3550 #fff;
                border-bottom: 1px solid #fd3550;
                border-right: 0;
                border-left: 3px solid #fd3550;
            }
            .tabs-vertical-warning.tabs-vertical .nav-tabs {
                border: 0;
                border-right: 1px solid #ff9700;
            }
            .tabs-vertical-warning.tabs-vertical .nav-tabs .nav-item.show .nav-link, .tabs-vertical-warning.tabs-vertical .nav-tabs .nav-link.active {
                color: #ff9700;
                background-color: #fff;
                border-color: #ff9700 #ff9700 #fff;
                border-bottom: 1px solid #ff9700;
                border-right: 0;
                border-left: 3px solid #ff9700;
            }
            .tabs-vertical-dark.tabs-vertical .nav-tabs {
                border: 0;
                border-right: 1px solid #223035;
            }
            .tabs-vertical-dark.tabs-vertical .nav-tabs .nav-item.show .nav-link, .tabs-vertical-dark.tabs-vertical .nav-tabs .nav-link.active {
                color: #223035;
                background-color: #fff;
                border-color: #223035 #223035 #fff;
                border-bottom: 1px solid #223035;
                border-right: 0;
                border-left: 3px solid #223035;
            }
            .tabs-vertical-secondary.tabs-vertical .nav-tabs {
                border: 0;
                border-right: 1px solid #75808a;
            }
            .tabs-vertical-secondary.tabs-vertical .nav-tabs .nav-item.show .nav-link, .tabs-vertical-secondary.tabs-vertical .nav-tabs .nav-link.active {
                color: #75808a;
                background-color: #fff;
                border-color: #75808a #75808a #fff;
                border-bottom: 1px solid #75808a;
                border-right: 0;
                border-left: 3px solid #75808a;
            }
            .nav-pills .nav-link {
                border-radius: .25rem;
                color: #223035;
                font-size: 12px;
                text-align: center;
                letter-spacing: 1px;
                font-weight: 600;
                text-transform: uppercase;
                margin: 3px;
                padding: 12px 20px;
                -webkit-transition: all 0.3s ease;
                -moz-transition: all 0.3s ease;
                -o-transition: all 0.3s ease;
                transition: all 0.3s ease;
            }
            .nav-pills .nav-link:hover {
                background-color: #f4f5fa;
            }
            .nav-pills .nav-link i {
                margin-right: 2px;
                font-weight: 600;
            }
            .top-icon.nav-pills .nav-link i {
                margin: 0px;
                font-weight: 500;
                display: block;
                font-size: 20px;
                padding: 5px 0;
            }
            .nav-pills .nav-link.active, .nav-pills .show>.nav-link {
                color: #fff;
                background-color: #008cff;
                box-shadow: 0 4px 20px 0 rgba(0,0,0,.14), 0 7px 10px -5px rgba(0, 140, 255, 0.5);
            }
            .nav-pills-success .nav-link.active, .nav-pills-success .show>.nav-link {
                color: #fff;
                background-color: #15ca20;
                box-shadow: 0 4px 20px 0 rgba(0,0,0,.14), 0 7px 10px -5px rgba(21, 202, 32, .5);
            }
            .nav-pills-info .nav-link.active, .nav-pills-info .show>.nav-link {
                color: #fff;
                background-color: #0dceec;
                box-shadow: 0 4px 20px 0 rgba(0,0,0,.14), 0 7px 10px -5px rgba(13, 206, 236, 0.5);
            }
            .nav-pills-danger .nav-link.active, .nav-pills-danger .show>.nav-link {
                color: #fff;
                background-color: #fd3550;
                box-shadow: 0 4px 20px 0 rgba(0,0,0,.14), 0 7px 10px -5px rgba(253, 53, 80, .5);
            }
            .nav-pills-warning .nav-link.active, .nav-pills-warning .show>.nav-link {
                color: #fff;
                background-color: #ff9700;
                box-shadow: 0 4px 20px 0 rgba(0,0,0,.14), 0 7px 10px -5px rgba(255, 151, 0, .5);
            }
            .nav-pills-dark .nav-link.active, .nav-pills-dark .show>.nav-link {
                color: #fff;
                background-color: #223035;
                box-shadow: 0 4px 20px 0 rgba(0,0,0,.14), 0 7px 10px -5px rgba(34, 48, 53, .5);
            }
            .nav-pills-secondary .nav-link.active, .nav-pills-secondary .show>.nav-link {
                color: #fff;
                background-color: #75808a;
                box-shadow: 0 4px 20px 0 rgba(0,0,0,.14), 0 7px 10px -5px rgba(117, 128, 138, .5);
            }
            .card .tab-content {
                padding: 1rem 0 0 0;
            }
            .z-depth-3 {
                -webkit-box-shadow: 0 11px 7px 0 rgba(0,0,0,0.19), 0 13px 25px 0 rgba(0,0,0,0.3);
                box-shadow: 0 11px 7px 0 rgba(0,0,0,0.19), 0 13px 25px 0 rgba(0,0,0,0.3);
            }
        </style>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://use.fontawesome.com/7a37b2739f.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->
        <script src="/vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>
        <!--===============================================================================================-->
    </head>
    <body>
        <jsp:include page='header.jsp'/>
        <div class="container-userinfo" style="background-image: url('images/bg-11.jpg');">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="profile-card-4 z-depth-3">
                            <div class="card">
                                <div class="card-body text-center bg-primary rounded-top">
                                    <div class="user-box"> <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="user avatar"> </div>
                                    <h5 class="mb-1 text-white"><%= session.getAttribute("username")%></h5>
                                    <h6 class="text-light">True Wibu</h6>
                                </div>
                                <div class="card-body">
                                    <ul class="list-group shadow-none">
                                        <li class="list-group-item">
                                            <div class="list-icon"> <i class="fa fa-user-circle"></i> </div>
                                            <div class="list-details"> <span><%= session.getAttribute("username")%></span> <small>Username</small> </div>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="list-icon"> <i class="fa fa-envelope"></i> </div>
                                            <div class="list-details"> <span><%= session.getAttribute("email")%></span> <small>Email Address</small> </div>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="list-icon"> <i class="fa fa-genderless"></i> </div>
                                            <div class="list-details"> <span><%= session.getAttribute("gender")%></span> <small>Gender</small> </div>
                                        </li>
                                    </ul>
                                    <div class="row text-center mt-4">
                                        <div class="col p-2">
                                            <h4 class="mb-1 line-height-5">154</h4>
                                            <small class="mb-0 font-weight-bold">Anime</small> </div>
                                        <div class="col p-2">
                                            <h4 class="mb-1 line-height-5">2222</h4>
                                            <small class="mb-0 font-weight-bold">Hours for Watching</small> </div>
                                        <div class="col p-2">
                                            <h4 class="mb-1 line-height-5">0</h4>
                                            <small class="mb-0 font-weight-bold">Friend</small> </div>
                                    </div>
                                </div>
                                <div class="card-footer text-center"> <a href="javascript:void()" class="btn-social btn-facebook waves-effect waves-light m-1"><i class="fa fa-facebook"></i></a> <a href="javascript:void()" class="btn-social btn-google-plus waves-effect waves-light m-1"><i class="fa fa-google-plus"></i></a> <a href="javascript:void()" class="list-inline-item btn-social btn-behance waves-effect waves-light"><i class="fa fa-behance"></i></a> <a href="javascript:void()" class="list-inline-item btn-social btn-dribbble waves-effect waves-light"><i class="fa fa-dribbble"></i></a> </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="card z-depth-3">
                            <div class="card-body">
                                <ul class="nav nav-pills nav-pills-primary nav-justified">
                                    <li class="nav-item"> <a href="javascript:void()" data-target="#edit" data-toggle="pill" class="nav-link"><i class="icon-note"></i> <span class="hidden-xs">Edit</span></a> </li>
                                </ul>
                                <div class="tab-content p-3">
                                    <div class="tab-pane" id="edit">
                                        <s:form action="editinfo">
                                            <div class="form-group row">
                                                <label class="col-lg-3 col-form-label form-control-label">Full name</label>
                                                <div class="col-lg-9">
                                                    <input class="form-control" type="text" name="name" value=<%= session.getAttribute("fullname")%> >
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-lg-9"> </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-lg-3 col-form-label form-control-label">Email</label>
                                                <div class="col-lg-9">
                                                    <input class="form-control" type="email" name="email" value=<%= session.getAttribute("email")%> >
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-lg-3 col-form-label form-control-label">Change profile</label>
                                                <div class="col-lg-9">
                                                    <input class="form-control" type="file" name="upload" value="Upload Image">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-lg-9"> </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-lg-6"> </div>
                                                <div class="col-lg-3"> </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-lg-3 col-form-label form-control-label">Gender</label>
                                                <div class="col-lg-9">
                                                    &ensp;
                                                    <input type="checkbox" id="gender0" name="gender" value="0" >
                                                    <label for="gender0">Male</label>                    &ensp;
                                                    <input type="checkbox" id="gender1" name="gender" value="1">
                                                    <label for="gender1">Female</label>                  &ensp;
                                                    <input type="checkbox" id="gender2" name="gender" value="2">
                                                    <label for="gender2">Other</label>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-lg-3 col-form-label form-control-label"></label>
                                                <div class="col-lg-9">
                                                    <input type="reset" class="btn btn-secondary" value="Cancel">
                                                    <input type="submit" class="btn btn-primary" value="Save Changes">
                                                </div>
                                            </div>
                                        </s:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script src="http://netdna.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script> 
            <script type="text/javascript">
                                                $('input[type="checkbox"]').on('change', function () {
                                                    $('input[type="checkbox"]').not(this).prop('checked', false);
                                                });
            </script>
    </body>
</html>
