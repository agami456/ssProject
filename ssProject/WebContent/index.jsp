<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!Doctype html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<style type="text/css">
		.navbar-brand .img-responsive  {
		    width:150px;
		    height: 80px;
		    padding-bottom: 30px;
		    
		}
		
		.navbar-default {
		    padding-top:10px;
		    padding-bottom:10px;
		}
		#bs-example-navbar-collapse-1{
			font-size: 20px;
		}
		.image .text{

			 position:absolute;
			 
			 top:35%;
			  
			 right: 10%;
			 
			 width:700px;
	  
			 font-size:25px;
		}

		#menu_btn{
			font-size:50px;
			color: #ffffff;
			background-color: #f0ad4e;
		}

	</style>
	
	
	<style type="text/css">
		.navbar-brand {
		 	padding: 0px;
		 	padding-top: 0px;
		 	padding-left: 5px;
		}
	</style>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	</script>
		
</head>
	<body>
	<nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="navbar-brand">
                    <a href="index.jsp"><img src="./img/siccha.png" class="img-responsive" /></a>
                </div>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="selectPage.html">�޴�����</a></li>
                    <li><a href="loginPage.jsp">�α���</a></li>
                    <li><a href="signUp.jsp">ȸ������</a></li>
                    <li><a href="myPage.jsp">����������</a></li>
                </ul>
            </div>
        </div>
    </nav>
   <div class="image">
	<img alt="���� ����" src="img/���2.jpg" width="1887">
		<div class="text">
			<h1>����� ���İ��!<br>�޴��������� ���͵帳�ϴ�.</h1>
			<button id="menu_btn" onclick="location.href='selectPage.html'">�޴����� �ϱ�</button>
		</div>
   </div>	
</body>
</html>