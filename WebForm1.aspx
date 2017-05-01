<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
   <script>
        function checkform() {
            var email = document.getElementById("email").value;
            var a = false;
            for (var i = 0; i < email.length; i++)
            {
                if (email[i] == '@')
                {
                    a = true;
                }
            }
            if (a == false)
            {
                alert("The email is not right");
                return false; 
            }
           

            var password = document.getElementById("Password").value;
            var password2 = document.getElementById("Password2").value;

          

            if (password != password2) 
            {
                alert("the password doesnt match");
                return false;
            }
            return true;


            
        }

             
        </script>
	<head>
		<title>Introspect by TEMPLATED</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body>
      
			<header id="header">
				<div class="inner">
					<a href="WebForm1.aspx" class="logo">Shinshinim</a>
					<nav id="nav">
						<a href="WebForm1.aspx">Home</a>
				
                        <a href="SignIn.aspx">sign in</a>

					</nav>
				</div>
			</header>
			<a href="#menu" class="navPanelToggle"><span class="fa fa-bars"></span></a>

	
			<section id="banner">
				<div class="inner">
					<h1>welcome to the shinshinm website</h1>
				</div>
			</section>

	
			<section id="one">
				<div class="inner">
					<header>
						<h2>The meaning of "shant shirot" or gap year: </h2>
					</header>
					<p>So, what do we start with? There are more than 100 places in Israel where one can do a year of service. Educational institutions, therapeutic boarding schools, field schools of the Society for the Protection of Nature in Israel, amazing associations such as Etgarim, Ayalim, various nuclei living in neighborhoods and in the periphery, and many other frameworks, most of which deal with the education of children and youth. On some of them you can read the menu up, but ...... not everyone can get to where he wants.

What does that mean ? In the past, urban residents did not do a year of service but mainly kibbutzniks and moshavnikim. If you were a year of service, but lived in the city, you usually found yourself in the Nachal group, which is why the kibbutz movement began to sort out the mess, sort, filter and integrate its youth into the various organizations. Her movement was the most youth, so naturally a connection was made between her and the youth villages and the various places. Many years passed, one social protest and suddenly there was a trickle of urban residents who also wanted to join the issue of social involvement./p>
					
				</div>
			</section>

	
		<!-- Three -->
         
			

		<!-- Footer -->
        
         <form id="form1" runat="server" onsubmit="return checkform();">
			<section id="footer">
				<div class="inner">
					<header>
						<h2>Sign Up</h2>
            <%=massege %>
                         
					</header>
                   
						<div class="field half first">
							<label for="FirstName">First Name</label>
							<input type="text" name="FirstName" id="FirstName" />
						</div>
                        	<div class="field half first">
							<label for="LastName">Last Name</label>
							<input type="text" name="LastName" id="LastName" />
						</div>
						<div class="field half first">
							<label for="email">Email</label>
							<input type="text" name="email" id="email" />
						</div>
                        <div class="field half first">
							<label for="Password">Password</label>
							<input type="Password" name="Password" id="Password" />
						</div>
                        	<div class="field half first">
							<label for="Password2">Password2</label>
							<input type="password" name="Password2" id="Password2" />
						</div>
                        <div class="field half first">
							<label for="IsManger">IsManger</label>
							<input type="password" name="IsManger" id="Password1" />
						</div>
                       
						<ul class="actions">
							<li><input type="submit" name="signup" value="sign up" class="alt" /></li>
						</ul>
					<div class="copyright">
						&copy; Untitled Design: <a href="https://templated.co/">TEMPLATED</a>. Images <a href="https://unsplash.com/">Unsplash</a>
					</div>
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