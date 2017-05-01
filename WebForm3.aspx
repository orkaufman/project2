<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication3.WebForm3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


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
			<div class="content">
            <%=massege%>
            <h1> Add Sorting</h1>
							<div class="field half first">
							<label for="useremail">user email</label>
							<input type="text" name="email" id="email" />
						</div>
                         </br> </br> </br>   </br>
                        	<div class="field half first">
							<label for="manger email">sorting name or type</label>
							<input type="text" name="sortingname" id="sortingname" />
						</div>
                        <ul class="actions">
                         </br> </br> </br></br>
							<li><input type="submit" name="send" value="send" class="alt" /></li>
                         
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
  
