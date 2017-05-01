<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication3.WebForm4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

   <html>
	<head>

     
		<title>Generic - Introspect by TEMPLATED</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body>
      <form id="form1" runat="server">
 

		<!-- Header -->
			<header id="header">
				<div class="inner">
				<a href="WebForm1.aspx" class="logo">Shinshinim</a>
					<nav id="nav">
						<a href="SignOut.aspx">Sign out</a>
					</nav>
				</div>
			</header>
			<a href="#menu" class="navPanelToggle"><span class="fa fa-bars"></span></a>

		<!-- Main -->
			<section id="main" >
				<div class="inner">
					<header class="major special">
						<h1>welcome user</h1>
						<p>In this page you can see the sorting thar you are now in </p>
					</header>
					<a href="#" class="image fit"><img src="images/pic11.jpg" alt="" /></a>
					  <%=try1 %>
				</div>
			</section>

		<!-- Footer -->
      
			
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
            </form>

	</body>
</html>
  