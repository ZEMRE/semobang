<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- JSTL의 core 라이브러리 사용하기 위한 설정 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html>
	<head>
		<meta charset="utf-8" />
		<link rel="icon" type="image/png" href="images/favicon.ico">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	
		<title>FUNFUN THAI MAGAZINE &mdash; All about Thailand</title>
	
		<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
	    <meta name="viewport" content="width=device-width" />
	
	    <!-- Bootstrap core CSS     -->
	    <link href="../../../resources/dashboard/css/bootstrap.min.css" rel="stylesheet" />
	
	    <!-- Animation library for notifications   -->
	    <link href="../../../resources/dashboard/css/animate.min.css" rel="stylesheet"/>
	
	    <!--  Light Bootstrap Table core CSS    -->
	    <link href="../../../resources/dashboard/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>
	
	    <!--  CSS for Demo Purpose, don't include it in your project     -->
	    <link href="../../../resources/dashboard/css/demo.css" rel="stylesheet" />	
	
	    <!--     Fonts and icons     -->
	    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
	    <link href="../../../resources/dashboard/css/pe-icon-7-stroke.css" rel="stylesheet" />		    
	</head>
	
	<style>
		
		.card-user .image { height: 200px; }
		.card-user .count { margin-top: 20px; margin-bottom: 20px; }
		
		.about 
		{ 
			line-height: 1.6; 
			word-spacing: 0.1em; 
			letter-spacing: 0.1em;
		}
		.photo 
		{ 
			width: 100%;	
			height: 200px;	
			border: 1px solid #DDDDDD; 
			border-radius: 5%;
			
			text-align: center;
			line-height: 200px;
			border: 2px dashed #0087F7;
			
		}
	
	</style>		
	
	<body>
		<div class="wrapper">
		    <div class="sidebar" data-color="orange" data-image=""> <!-- blue | azure | green | orange | red | purple -->
		    	<div class="sidebar-wrapper">
		            <div class="logo">
		                <a href="index.jsp" class="simple-text">
		                    <img src="../../../resources/images/logo-light.png" alt="FUNFUN THAI logo">
		                </a>
		            </div>
		
		            <ul class="nav">		                
		                <li class="active">
		                    <a href="profile.jsp">
		                        <i class="pe-7s-user"></i>
		                        <p>Profile</p>
		                    </a>
		                </li>
		                
		                <!-- admin 또는 editor 계정에서만 Manage 페이지에 접근이 가능하다. -->
		                <c:if test="${sessionScope.user_level == 'admin' || sessionScope.user_level == 'editor'}">	
			                <li>
			                    <a href="manage.jsp">
			                        <i class="pe-7s-graph"></i>
			                        <p>Manage</p>
			                    </a>
			                </li>
		                </c:if> 
		                
		                <li>
		                    <a href="list.jsp">
		                        <i class="pe-7s-note2"></i>
		                        <p>List</p>
		                    </a>
		                </li>
		                <li>
		                    <a href="post.jsp">
		                        <i class="pe-7s-pen"></i>
		                        <p>Post</p>
		                    </a>
		                </li>	               
		                <li>
		                    <a href="logout.jsp">
		                        <i class="pe-7s-right-arrow"></i>
		                        <p>Log out</p>
		                    </a>
		                </li>						
		            </ul>
		    	</div>
		    </div>
		
		    <div class="main-panel">
				<nav class="navbar navbar-default navbar-fixed">
		            <div class="container-fluid">
		                <div class="navbar-header">
		                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
		                        <span class="sr-only">Toggle navigation</span>
		                        <span class="icon-bar"></span>
		                        <span class="icon-bar"></span>
		                        <span class="icon-bar"></span>
		                    </button>
		                    <a class="navbar-brand" href="#">Profile</a>
		                </div>
		                <div class="collapse navbar-collapse"></div>
		            </div>
		        </nav>
				
		        <div class="content">
		            <div class="container-fluid">
		                <div class="row">
		                    <div class="col-md-8">
		                        <div class="card">
		                            <div class="header">
		                                <h4 class="title">Edit Profile</h4>
		                            </div>
		                                              	    
    								<!-- user 정보를 얻기위해 DTO, DAO 객체 생성 -->
								    <jsp:useBean id="udto" class="com.semobang.user.domain.UserVO"></jsp:useBean>
								    <jsp:useBean id="udao" class="com.semobang.user.persistence.UserDAOImpl"></jsp:useBean>  
	                        
	                        	<%
	                        		request.setCharacterEncoding("UTF-8");
	                        		response.setContentType("text/html; charset=UTF-8");
	                        	
	                        		// 세션영역에 저장되어 있는 user_email를 사용하여 user 정보 가져오기	                        		
	                        		int user_email = 0;
	                        		if (session.getAttribute("user_email") != null)
	                        			user_email = (int) session.getAttribute("user_email");
	                        		
	                        		udto = udao.getUser("user_email", (int) session.getAttribute("user_email"));
	                        		pageContext.setAttribute("udto", udto);
	                       		%>
		                       				                            
		                            <div class="content">
		                                <form action="updateProfile.jsp" method="post" enctype="multipart/form-data">
		                                    <div class="row">
		                                    	<div class="col-md-4">
		                                            <div class="form-group">
		                                                <label>Name</label>
		                                                <input type="text" class="form-control" id="name" name="user_name" placeholder="닉네임" value="<%=udto.getUser_name()%>">
		                                            </div>
		                                            
		                                            <button class="btn btn-primary pull-left" id="change-nickname">Change Name</button>
		                                            
		                                            <div class="clearfix"></div>
		                                            <br>
		                                        </div>
		                                        <div class="col-md-4">
		                                            <div class="form-group">
		                                                <label>Email Address</label>
		                                                <input type="email" class="form-control" id="email" name="user_email" readonly placeholder="이메일" value="${sessionScope.user_email}">
		                                            </div>
		                                        </div>		                                        
		                                        <div class="col-md-4">
		                                            <div class="form-group">
		                                                <label>Level</label>
		                                                <input type="text" class="form-control" name="user_level" readonly placeholder="등급" value="${sessionScope.user_level}">
		                                            </div>
		                                        </div>
		                                    </div>
											
											<br>
											
		                                    <div class="row">
		                                    	<div class="col-md-4">	
		                                    		<div class="form-group">
		                                    			<label>Photo</label>
		                                    			<!-- <div class="photo">		                                                	
		                                                	<img src="" alt="photo">  
		                                            	</div> -->
		                                          		
		                                          		<!-- <div class="photo">
		                                                	<div id=dZUpload class="dropzone">
		                                                		<div class="dz-default dz-message">Drop file here or click to upload</div>
		                                                	</div>
		                                                </div> -->
		                                               		                                               	
		                                                <input type="file" name="user_photo">	                                     
		                                            </div>
		                                            <br>
		                                       		<!-- <button class="btn btn-primary pull-letf" id="upload-photo">Upload Photo</button> -->
		                                        </div>
			                                    
		                                        <div class="col-md-4">		                                  
		                                            <div class="form-group">
		                                                <label>Facebook</label>
		                                                <input type="text" class="form-control" name="user_fb" placeholder="페이스북" value="<%=udto.getUser_fb()%>">
		                                            </div>
		                                            <div class="form-group">
		                                                <label>Instagram</label>
		                                                <input type="text" class="form-control" name="user_ig" placeholder="인스타그램" value="<%=udto.getUser_ig()%>">
		                                            </div>	
		                                            <div class="form-group">
		                                                <label>Twitter</label>
		                                                <input type="text" class="form-control" name="user_tw" placeholder="트위터" value="<%=udto.getUser_tw()%>">
		                                            </div>
												</div>
			                                    
			                                    <div class="col-md-4">			                                       
		                                            <div class="form-group">
		                                                <label>Current Password</label>
		                                                <input type="password" class="form-control" id="current-pass" placeholder="현재 패스워드">
		                                            </div>
		                                            <div class="form-group">
		                                                <label>New Password</label>
		                                                <input type="password" class="form-control" id="new-pass" placeholder="새 패스워드">
		                                            </div>
		                                            <div class="form-group">
		                                                <label>Password Confirmation</label>
		                                                <input type="password" class="form-control" id ="pass-confirm" placeholder="패스워드 확인">
		                                            </div>
		                                       		<button class="btn btn-primary pull-right" id="change-password">Change Password</button>
		                                        </div>		                                        
		                                    </div>
		                                    
		                                    <br>
		
		                                    <div class="row">
		                                        <div class="col-md-12">
		                                            <div class="form-group">
		                                                <label>About Me</label>
		                                                <textarea rows="4" class="form-control" name="user_about" maxlength="200" placeholder="Here can be your description"><%=udto.getUser_about()%></textarea>
		                                            </div>
		                                        </div>
		                                    </div>
											
		                                    <button type="submit" class="btn btn-info btn-lg btn-fill pull-right">Update Profile</button>
		                                    
		                                    <div class="clearfix"></div>
		                                </form>
		                            </div>
		                        </div>
		                    </div>
		                    
		                    <div class="col-md-4">                 	
		                        <div class="card card-user">
		                            <div class="image">
			                            <c:choose>
								 			<c:when test="${sessionScope.user_level == 'admin'}"><img src="images/user/card_default.jpg" alt="card background"/></c:when>
								 			<c:when test="${sessionScope.user_level == 'editor'}"><img src="images/user/card_default.jpg" alt="card background"/></c:when>
								 			<c:when test="${sessionScope.user_level == 'writer'}"><img src="images/user/card_default.jpg" alt="card background"/></c:when>								 			
								 			<c:otherwise><img src="../../../resources/images/user/card_default.jpg" alt="card background"/></c:otherwise>
								 		</c:choose>			                            
		                            </div>
		                            
		                            <div class="content">
		                                <div class="author">
		                                    <a href="#">
	                                    	
	                                    	<c:if test="${pageScope.udto.user_photo == ''}">
	                                    		<img class="avatar border-gray" src="images/user/user_default.jpg" alt="card photo">
											</c:if>
											<c:if test="${pageScope.udto.user_photo != ''}">	
												<img class="avatar border-gray" src="<%=udto.getUser_photo()%>" alt="card photo">
		                                    </c:if>  	
		                                      	<h4 class="title"><%=udto.getUser_name()%><br>
		                                        	<small>${sessionScope.user_level}</small>
		                                      	</h4>
		                                    </a>
		                                </div>
		                                
		                                <br>
		                                
		                                <blockquote>
			                                <p class="about"><%=udto.getUser_about() %></p>
		                                </blockquote>
		                            </div>
		                            
		                            <hr>
									
									<div class="count">
										<div class="col-md-6 text-center">
				                        	<h5><i>Post</i></h5>										
				                        	<h5><%=udao.getUserWriteCount(user_email, "post")%></h5>
										</div>
	
										<div class="col-md-6 text-center">
				                            <h5><i>Comment</i></h5>										
				                        	<h5><%=udao.getUserWriteCount(user_email, "comment")%></h5>
										</div>
									</div>
									
		                            <div class="clearfix"></div>
		                            
		                            <hr>
		                            
		                            <div class="text-center">
		                            	<a href="https://www.facebook.com/<%=udto.getUser_fb()%>" target="_blank">
		                            		<button class="btn btn-simple"><i class="fa fa-facebook-square fa-2x"></i></button>
		                            	</a>
		                                <a href="https://www.instagram.com/<%=udto.getUser_ig()%>" target="_blank">
		                                	<button class="btn btn-simple"><i class="fa fa-instagram fa-2x"></i></button>
		                                </a>
		                                <a href="https://www.twitter.com/<%=udto.getUser_tw()%>" target="_blank">
		                                	<button class="btn btn-simple"><i class="fa fa-twitter fa-2x"></i></button>
		                                </a>
		                            </div>
		                        </div>
		                    </div>
		
		                </div>
		            </div>
		        </div>
				
		        <footer class="footer">
		            <div class="container-fluid">		                
		                <p class="copyright pull-right">
		                	COPYRIGHT &copy; FUNFUN THAI MAGAZINE 2018. ALL RIGHT RESERVED.
		                </p>
		            </div>
		        </footer>		
		    </div>
		</div>


		<!--   Core JS Files   -->
	    <script src="../../../resources/dashboard/js/jquery.3.2.1.min.js"></script>
		<script src="../../../resources/dashboard/js/bootstrap.min.js"></script>
	
		<!--  Charts Plugin -->
		<script src="../../../resources/dashboard/js/chartist.min.js"></script>
	
	    <!--  Notifications Plugin    -->
	    <script src="../../../resources/dashboard/js/bootstrap-notify.js"></script>
	
	    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
		<script src="../../../resources/dashboard/js/light-bootstrap-dashboard.js?v=1.4.0"></script>
	
		<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
		<script src="../../../resources/dashboard/js/demo.js"></script>
		
		<script>
		
			// 패스워드 변경 버튼 클릭
			$("button#change-password").on("click", function() {
				
				// 현재 패스워드 입력 시
				if ($("#current-pass").val() != null)
				{
					// 입력한 현재 패스워드가 일치하는지 ajax 방식으로 처리
					$.ajax({ type: "post", 
						  	url: "validateUser.jsp", 
						  	data: {user_email : $("#email").val(), user_pass : $("#current-pass").val(), checkType : "password"},
						  	dataType: "json",
						  	success: function(responseData, status, jqxhr) {
							
								if (responseData.result == 1)	// 현재 패스워드가 일치
								{
									if ($("#new-pass").val() == $("#pass-confirm").val())	// 새 패스워드와 패스워드 확인값이 일치
									{
										// ajax 방식으로 패스워드 변경 실시										
										$.ajax({ type: "post", 
											  	url: "changeInformation.jsp", 
											  	data: {user_email : $("#email").val(), changeKey : "user_pass", changeValue : $("#new-pass").val()}, 
											  	dataType: "json",
											  	success: function(responseData, status, jqxhr) {
											  		
													if (responseData == 1)	// 패스워드 변경 성공
													{								
														// 성공 메세지 띄움
														notify('top','right', 'info', "패스워드를 변경하였습니다.");
														
												 	}
													else	// 패스워드 변경 실패
													{
														// 실패 메세지 띄움
														notify('top','right', 'danger', "패스워드 변경에 실패하였습니다.");
													}																		
										
												},
												err: function(jqxhr, status, error) {
													  
													colsole.log(error);							
												}			
										});												
									
									}
									else	// 새 패스워드와 패스워드 확인값이 다름
									{
										// 경고 메세지 띄움
										notify('top','right', 'warning', "새 패스워드와 패스워드 확인값이 일치하지 않습니다.");
									}
							 	}
								else	// 현재 패스워드가 DB값과 불일치
								{
									// 에러 메세지 띄움
									notify('top','right', 'danger', "현재 패스워드가 일치하지 않습니다."); 
								}
							},
							err: function(jqxhr, status, error) {
								  
								colsole.log(error);							
							}					

					})
				}
				
				return false;
			});
			
			
			// 닉네임 변경 버튼 클릭
			$("button#change-nickname").on("click", function() {
				
				if ($("#nickname").val() != "")
				{	
					$.ajax({ type: "post", 
						  	url: "duplicateCheck.jsp", 
						  	data: {checkKey : 'user_name', checkValue : $("#nickname").val()}, 
						  	dataType: "json",
						  	success: function(responseData, status, jqxhr) {
							
								if (responseData == 1)	// 중복
								{
									// 경고 메세지 띄움
									notify('top','right', 'warning', "이미 사용 중인 닉네임 입니다.");
							 	}
								else
								{
									// ajax 방식으로 닉네임 변경 실시										
									$.ajax({ type: "post", 
										  	url: "changeInformation.jsp", 
										  	data: {user_email : $("#email").val(), changeKey : "user_name", changeValue : $("#nickname").val()}, 
										  	dataType: "json",
										  	success: function(responseData, status, jqxhr) {
										  		
												if (responseData == 1)	// 닉네임 변경 성공
												{								
													// 성공 메세지 띄움
													notify('top','right', 'info', "닉네임을 변경하였습니다.");
													
											 	}
												else	// 닉네임 변경 실패
												{
													// 실패 메세지 띄움
													notify('top','right', 'danger', "닉네임 변경에 실패하였습니다.");
												}																		
									
											},
											err: function(jqxhr, status, error) {
												  
												colsole.log(error);							
											}			
									});	
								}
							},
							err: function(jqxhr, status, error) {
								  
								colsole.log(error);							
							}					

					});
					
					return false;
				}				
				
				
				// 현재 패스워드 입력 시
				if ($("#current-pass").val() != null)
				{
					// 입력한 현재 패스워드가 일치하는지 ajax 방식으로 처리
					$.ajax({ type: "post", 
						  	url: "duplicateCheck.jsp", 
						  	data: {user_email : $("#email").val(), user_pass : $("#current-pass").val(), checkType : "password"},
						  	dataType: "json",
						  	success: function(responseData, status, jqxhr) {
							
								if (responseData.result == 1)	// 현재 패스워드가 일치
								{
									if ($("#new-pass").val() == $("#pass-confirm").val())	// 새 패스워드와 패스워드 확인값이 일치
									{
										// ajax 방식으로 패스워드 변경 실시										
										$.ajax({ type: "post", 
											  	url: "changeInformation.jsp", 
											  	data: {user_email : $("#email").val(), newPass : $("#new-pass").val(), changeType : "password"}, 
											  	dataType: "json",
											  	success: function(responseData, status, jqxhr) {
											  		
													if (responseData == 1)	// 패스워드 변경 성공
													{								
														// 성공 메세지 띄움
														notify('top','right', 'info', "패스워드를 변경하였습니다.");
														
												 	}
													else	// 패스워드 변경 실패
													{
														// 실패 메세지 띄움
														notify('top','right', 'danger', "패스워드 변경에 실패하였습니다.");
													}																		
										
												},
												err: function(jqxhr, status, error) {
													  
													colsole.log(error);							
												}			
										});												
									
									}
									else	// 새 패스워드와 패스워드 확인값이 다름
									{
										// 경고 메세지 띄움
										notify('top','right', 'warning', "새 패스워드와 패스워드 확인값이 일치하지 않습니다.");
									}
							 	}
								else	// 현재 패스워드가 DB값과 불일치
								{
									// 에러 메세지 띄움
									notify('top','right', 'danger', "현재 패스워드가 일치하지 않습니다."); 
								}
							},
							err: function(jqxhr, status, error) {
								  
								colsole.log(error);							
							}					

					})
				}
				
				return false;
			});
			
			
			// notification 메세지 함수
			function notify(from, align, color, msg) {

		    	$.notify({
		        	icon: "pe-7s-bell",
		        	message: msg,

		        },{
		            type: color,	// 'info','success','warning','danger'
		            timer: 4000,
		            placement: {
		                from: from,
		                align: align
		            }
		        });
			}
			
		</script>
	</body>
</html>
