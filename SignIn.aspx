<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="WebApplication3.SignIn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


   <html>
	<head>
    

     
		<title>Sign In</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body>
      <form id="form2" runat="server"  >
 

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
			<section id="three">
				<div class="inner">
					<article>
                   <div align="center"><h1> sign in</h1>  </div>
                   
						<div class="content">
							<div class="field half first">
							<label for="username">email</label>
							<input type="text" name="email" id="email" />
						</div>
                         </br> </br> </br>   </br>
                        	<div class="field half first">
							<label for="password3">Password</label>
							<input type="password" name="password" id="password" />
						</div>
                        <ul class="actions">
                         </br> </br> </br></br>
							<li><input type="submit" name="signin" value="sign in" class="alt" /></li>
                         
						</ul>
						</div>
					</article>
				
                    
					
					<article>
                    <div class="image fit">
					<img src="images/download.png" alt="" /> 
					</article>

				</div>
			</section>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
            </form>

	</body>
</html>
  
