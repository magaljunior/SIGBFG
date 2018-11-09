<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Pages_Client_Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
  <style type="text/css"> 
      .tm-welcome-boxes-container {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	flex-direction: column;
	align-items: center;	
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
        -ms-flex-pack: justify;
            justify-content: space-between;    
    position: static;
    margin-left: auto;
    margin-right: auto;
    max-width: 820px;
}
.tm-welcome-box { 
	max-width: 200px;
	margin-top: 30px;
	width: 100%;
}

.tm-welcome-text {
	background-color: rgba(221, 221, 221, 0.35);
	padding: 40px;	
}

.tm-welcome-link {
	background-color: #993366;
    display: block;
    text-align: center;
    color: white;
    padding-top: 15px;
    padding-bottom: 15px;
    font-size: 1.4rem;
}

.tm-purple-bg { 
	background-color: #993366; 
	color: white;
}

.tm-purple-bg .tm-section-title { color: white; }
.tm-gray-bg { background-color: #F4F4F4; }
.tm-blue-text { color: #3C89D6; }
.tm-red-text { color: #D66363; }
.tm-box-pad { padding: 45px 40px; }
.tm-bordered-box { border: 1px solid #993366; }
.tm-no-border-top { border-top: none; }
.tm-flex { display: -webkit-box; display: -webkit-flex; display: -ms-flexbox; display: flex; }

.tm-contact-left-half, .tm-contact-right-half { 
	-webkit-box-flex: 1; 
	-webkit-flex: 1; 
	    -ms-flex: 1; 
	        flex: 1;
	padding: 15px;
}

.tm-address-box { padding: 35px 30px 10px; }
.tm-contact-inner-pad { padding: 25px; }
.tm-nav-fa { margin-right: 30px; }

#tm-sidebar {
	float: none;
	width: 100%;
	max-width: 100%;
	margin-bottom: 20px;
}

.tm-body { 
	margin-top: 20px;
	position: relative;
	overflow-x: hidden;
	overflow-y: auto;
}

.tm-main-nav {
	background-color: #993366;
	font-size: 1.4rem;
}

.tm-main-nav-ul {
	-webkit-box-flex: 1;
	-webkit-flex: 1;
	    -ms-flex: 1;
	        flex: 1;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	    -ms-flex-direction: column;
	        flex-direction: column;
	-webkit-box-align: center;
	-webkit-align-items: center;
	    -ms-flex-align: center;
	        align-items: center;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	    -ms-flex-pack: center;
	        justify-content: center;
}

.tm-nav-item {
	list-style: none;
	width: 100%;
}

.tm-nav-item-link {	
	padding: 30px;
	width: 100%;	
}

.tm-nav-item-link:focus { text-decoration: none; }

.tm-button,
.tm-button:focus {
	background-color: #936;
	border: none;
	border-radius: 0;
	color: #fff;
	display: block;
	-webkit-transition: all 0.3s ease;
	transition: all 0.3s ease;
}

.tm-button:hover,
.tm-button.active {
	background-color: #7B2852;
	color: #EAD53D;
	text-decoration: none;
}

.tm-button-normal {
	display: inline-block;
	font-size: 1.2rem;
	padding: 15px 50px;    
}
      </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp; Bem Vindo ao Sistema Usuário</div>
         <div class="tm-body">

         <div class="col-md-4" id="tm-sidebar">
                    <nav class="tm-main-nav">
                        <ul class="tm-main-nav-ul">
                            <li class="tm-nav-item"><a href="#welcome" class="tm-nav-item-link tm-button">
                                <i class="fa fa-smile-o tm-nav-fa"></i>Welcome</a>
                            </li>
                            <li class="tm-nav-item"><a href="#gallery" class="tm-nav-item-link tm-button">
                                <i class="fa fa-image tm-nav-fa"></i>Image Gallery</a>
                            </li>
                            <li class="tm-nav-item"><a href="#services" class="tm-nav-item-link tm-button">
                                <i class="fa fa-tasks tm-nav-fa"></i>Our Services</a>
                            </li>
                            <li class="tm-nav-item"><a href="#about" class="tm-nav-item-link tm-button">
                                <i class="fa fa-sitemap tm-nav-fa"></i>About Company</a>
                            </li>
                            <li class="tm-nav-item"><a href="#contact" class="tm-nav-item-link tm-button">
                                <i class="fa fa-envelope-o tm-nav-fa"></i>Contact Us</a>
                            </li>
                        </ul>
                    </nav>
                </div>
             </div>

    </form>
</body>
</html>
