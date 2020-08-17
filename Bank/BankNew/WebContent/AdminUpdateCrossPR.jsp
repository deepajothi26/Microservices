<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@page import="java.sql.*,java.util.*"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

     <title>Admin Local Payment Response</title>
<!-- 

Known Template 

https://templatemo.com/tm-516-known

-->
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="author" content="">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

     <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/font-awesome.min.css">
     <link rel="stylesheet" href="css/owl.carousel.css">
     <link rel="stylesheet" href="css/owl.theme.default.min.css">

     <!-- MAIN CSS -->
     <link rel="stylesheet" href="css/templatemo-style.css">

</head>
<body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

     <!-- PRE LOADER -->
     <section class="preloader">
          <div class="spinner">

               <span class="spinner-rotate"></span>
               
          </div>
     </section>


     <!-- MENU -->
     <section class="navbar custom-navbar navbar-fixed-top" role="navigation">
          <div class="container">

               <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                    </button>

                    <!-- lOGO TEXT HERE -->
                    <a href="#" class="navbar-brand">BANK</a>
               </div>

               <!-- MENU LINKS -->
               <div class="collapse navbar-collapse">
               <ul class="nav navbar-nav navbar-nav-first">
                         <li><a href="AccountRegistration.jsp" class="smoothScroll">AccountRegistration</a></li>
                         <li><a href="AccountRegList.jsp" class="smoothScroll">A.R.List</a></li>
                         <li><a href="LocalPaymentRequest.jsp" class="smoothScroll">L.PaymentRequest</a></li>
                         
						 <li><a href="LocalPaymentResponse.jsp" class="smoothScroll">L.PaymentResponse</a></li>
                         <li><a href="CrossPaymentRequest.jsp" class="smoothScroll">C.PaymentRequest</a></li>
                         <li><a href="CrossPaymentResponse.jsp" class="smoothScroll">C.PaymentResponse</a></li>
                    </ul>



               </div>

          </div>
     </section>


    


     <!-- LOGIN -->
     <section id="contact">
          <div class="container">
               <div class="row">

                    <div class="col-md-6 col-sm-12">
                         <form id="contact-form" role="form" action="ProcessLocalPR.jsp" method="post">
                              <div class="section-title">
                                   <h2>Enter Player Details <small></small></h2>
                              </div>

                              <div class="col-md-12 col-sm-12">
                              		 <div class="row"  style="font-size: 15px;padding: 10px;background-color:Gray;color:White;">
										  <div class="col-sm-1">CustomerId</div>
										  <div class="col-sm-1">SourceAccountNumber</div>
										  <div class="col-sm-1">TargetAccountNumber</div>
										  <div class="col-sm-1">AmonutCCY</div>
										  <div class="col-sm-1">AmonutTargetCCY</div>
										  <div class="col-sm-1">BaseCurrency</div>
										  <div class="col-sm-1">DTimeStamp</div>
										  <div class="col-sm-1">TransactionRefernceNumber</div>
										  <div class="col-sm-1">PaymentStatus</div>
										  <div class="col-sm-3"></div>
										</div> 
                              		
                                   

									<%
									
									
									try
									{
									ResultSet resultSet = null;
									Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
									Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root123!@#");
									Statement st=conn.createStatement();
									String sql="Select * from crosspaymentrequest ";
									resultSet = st.executeQuery(sql);
										while (resultSet.next()) {
											
										%>
										<div class="row"  style="font-size: 15px;padding: 5px;color:White;">
										<div class="col-sm-1"><%=resultSet.getString("Id")%></div>
										<div class="col-sm-1"><%=resultSet.getString("SourceAccountNumber")%></div>
										<div class="col-sm-1"><%=resultSet.getString("TargetAccountNumber")%></div>
										<div class="col-sm-1"><%=resultSet.getString("AmonutCCY")%></div>
										<div class="col-sm-1"><%=resultSet.getString("AmonutTargetCCY")%></div>
										<div class="col-sm-1"><%=resultSet.getString("BaseCurrency")%></div>
										<div class="col-sm-1"><%=resultSet.getString("DTimeStamp")%></div>
										<div class="col-sm-1"><%=resultSet.getString("TransactionRefernceNumber")%></div>
										<div class="col-sm-1"><%=resultSet.getString("PaymentStatus")%></div>
										<div class="col-sm-1"><a href="ProcessLocalPR.jsp?Id=<%=resultSet.getString("Id")%>" >Update Amount Transfered</a></div>
										</div>
										<hr>
										<%
										}
									}
									catch(Exception e)
									{
									System.out.print(e);
									e.printStackTrace();
									}
									
									%>
									                                   
                    
                                   
                                   

                                   
                              </div>

                              <div class="col-md-4 col-sm-12">
                                   
                              </div>

                         </form>
                    </div>

                    <div class="col-md-6 col-sm-12">
                         <div class="contact-image">
                              <img src="images/contact-image.jpg" class="img-responsive" alt="Smiling Two Girls">
                         </div>
                    </div>

               </div>
          </div>
     </section>       


     <!-- FOOTER -->
     <footer id="footer">
          <div class="container">
               <div class="row">

                    <div class="col-md-4 col-sm-6">
                         <div class="footer-info">
                              <div class="section-title">
                                   <h2>Headquarter</h2>
                              </div>
                              <address>
                                   <p>1800 dapibus a tortor pretium,<br> Integer nisl dui, ABC 12000</p>
                              </address>

                              <ul class="social-icon">
                                   <li><a href="#" class="fa fa-facebook-square" attr="facebook icon"></a></li>
                                   <li><a href="#" class="fa fa-twitter"></a></li>
                                   <li><a href="#" class="fa fa-instagram"></a></li>
                              </ul>

                              <div class="copyright-text"> 
                                   <p>Copyright &copy; 2019 Company Name</p>
                                   
                                   <p>Design: TemplateMo</p>
                              </div>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                         <div class="footer-info">
                              <div class="section-title">
                                   <h2>Contact Info</h2>
                              </div>
                              <address>
                                   <p>+65 2244 1100, +66 1800 1100</p>
                                   <p><a href="mailto:youremail.co">hello@youremail.co</a></p>
                              </address>

                              <div class="footer_menu">
                                   <h2>Quick Links</h2>
                                   <ul>
                                        <li><a href="#">Career</a></li>
                                        <li><a href="#">Investor</a></li>
                                        <li><a href="#">Terms & Conditions</a></li>
                                        <li><a href="#">Refund Policy</a></li>
                                   </ul>
                              </div>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-12">
                         <div class="footer-info newsletter-form">
                              <div class="section-title">
                                   <h2>Newsletter Signup</h2>
                              </div>
                              <div>
                                   <div class="form-group">
                                        <form action="#" method="get">
                                             <input type="email" class="form-control" placeholder="Enter your email" name="email" id="email" required="">
                                             <input type="submit" class="form-control" name="submit" id="form-submit" value="Send me">
                                        </form>
                                        <span><sup>*</sup> Please note - we do not spam your email.</span>
                                   </div>
                              </div>
                         </div>
                    </div>
                    
               </div>
          </div>
     </footer>


     <!-- SCRIPTS -->
     <script src="js/jquery.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/owl.carousel.min.js"></script>
     <script src="js/smoothscroll.js"></script>
     <script src="js/custom.js"></script>

</body>
</html>