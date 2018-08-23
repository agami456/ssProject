<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!Doctype html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>	
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
	<style>
	.navbar-brand  {
		   padding: 0px;
		   	
		    
		}
		</style>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var navItems = $('.admin-menu li > a');
		var navListItems = $('.admin-menu li');
		var allWells = $('.admin-content');
		var allWellsExceptFirst = $('.admin-content:not(:first)');
		allWellsExceptFirst.hide();
		navItems.click(function(e) {
			e.preventDefault();
			navListItems.removeClass('active');
			$(this).closest('li').addClass('active');
			allWells.hide();
			var target = $(this).attr('data-target-id');
			$('#' + target).show();
		});
	});
</script>
<style>
	.container{
		margin-top: 70px;
		float: left;
	}
	.panel-body{
		font-size: 20px;
		
	}
	.label.label-danger{
		margin-right: 10px;
	}
	.nav.nav-pills.nav-stacked.admin-menu{
		font-size: 20px;
	}
	.panel-title{
		font-size: 20px;
	}
	.top-line {
		background-color: gray;
		position: relative;
		height: 60px;
	}
	.navbar-brand .img-responsive  {
			
		    width:150px;
		    height: 50px;
		    margin-bottom: 70px;
		    margin-left: 370px;
		   	
		   
		    
		    
		}
		
		.navbar-default {
		    padding-top:10px;
		    padding-bottom:10px;
		}
		#bs-example-navbar-collapse-1{
			font-size: 20px;
			margin-right: 100px;
		}
		
	
	
</style>
		
<body>		
<nav class="navbar navbar-default navbar-fixed-top">
        <div class="contain">
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
                    <li><a href="selectPage.html">메뉴선정</a></li>
                    <li><a href="loginPage.jsp">로그인</a></li>
                    <li><a href="signUp.jsp">회원가입</a></li>
                    <li><a href="myPage.jsp">마이페이지</a></li>
                </ul>
            </div>
        </div>
    </nav>
<div class="container">

	<div class="row">

		<div class="col-md-3">
			<ul class="nav nav-pills nav-stacked admin-menu">
				<li class="active"><a href="" data-target-id="profile"><i
						class="glyphicon glyphicon-user"></i>회원 정보 보기</a></li>
				<li><a href="" data-target-id="change-info"><i
						class="glyphicon glyphicon-lock"></i>회원 정보 변경</a></li>
				<li><a href="" data-target-id="settings"><i
						class="glyphicon glyphicon-cog"></i>회원 탈퇴</a></li>
				<li><a href="" data-target-id="logout"><i
						class="glyphicon glyphicon-log-out"></i>로그아웃</a></li>
			</ul>
		</div>

		<div class="col-md-9  admin-content" id="profile">
			<div class="panel panel-info" style="margin: 1em;">
				<div class="panel-heading">
					<h3 class="panel-title">아이디</h3>
				</div>
				<div class="panel-body"></div>
			</div>
			<div class="panel panel-info" style="margin: 1em;">
				<div class="panel-heading">
					<h3 class="panel-title">이메일</h3>
				</div>
				<div class="panel-body"></div>
			</div>

		</div>
		<div class="col-md-9  admin-content" id="settings">
			<div class="panel panel-info" style="margin: 1em;">
				<div class="panel-heading">
					<h3 class="panel-title">회원 탈퇴</h3>
				</div>
				<div class="panel-body">
					정말로 탈퇴 하시겠습니까? <a href="#" class="label label-danger"
						onclick="event.preventDefault();
                                                     document.getElementById('memberLeave-form').submit();">
						<span>네</span>
					</a> <a href="/account" class="label label-success"><span>아니요</span></a>
				</div>
				<form id="memberLeave-form" action="#" method="POST"
					style="display: none;"></form>

			</div>
		</div>

		<div class="col-md-9  admin-content" id="change-info">
			<form action="/info" method="post">
				<div class="panel panel-info" style="margin: 1em;">
					<div class="panel-heading">
						<h3 class="panel-title">
							<label for="new_email" class="control-label panel-title">새로운
								이메일</label>
						</h3>
					</div>
					<div class="panel-body">
						<div class="form-group">
							<div class="col-sm-10">
								<input type="email" class="form-control" name="email"
									id="new_email">
							</div>
						</div>

					</div>
				</div>

				<div class="panel panel-info" style="margin: 1em;">
					<div class="panel-heading">
						<h3 class="panel-title">
							<label for="new_password" class="control-label panel-title">새로운
								패스워드</label>
						</h3>
					</div>
					<div class="panel-body">
						<div class="form-group">
							<div class="col-sm-10">
								<input type="password" class="form-control" name="password"
									id="new_password">
							</div>
						</div>

					</div>
				</div>


				<div class="panel panel-info" style="margin: 1em;">
					<div class="panel-heading">
						<h3 class="panel-title">
							<label for="confirm_password" class="control-label panel-title">패스워드
								확인</label>
						</h3>
					</div>
					<div class="panel-body">
						<div class="form-group">
							<div class="col-sm-10">
								<input type="password" class="form-control"
									name="password_confirmation" id="confirm_password">
							</div>
						</div>
					</div>
				</div>


				<div class="panel panel-info border" style="margin: 1em;">
					<div class="panel-body">
						<div class="form-group">
							<div class="pull-left">
								<input type="submit" class="form-control btn btn-primary"
									name="submit" id="submit">
							</div>
						</div>
					</div>
				</div>

			</form>
		</div>

		<div class="col-md-9  admin-content" id="settings"></div>

		<div class="col-md-9  admin-content" id="logout">
			<div class="panel panel-info" style="margin: 1em;">
				<div class="panel-heading">
					<h3 class="panel-title">로그아웃</h3>
				</div>
				<div class="panel-body">
					정말로 로그아웃 하시겠습니까? <a href="#" class="label label-danger"
						onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
						<span>네</span>
					</a> <a href="/account" class="label label-success"><span>아니요</span></a>
				</div>
				<form id="logout-form" action="#" method="POST"
					style="display: none;"></form>



			</div>
		</div>
	</div>
</div>
	</head>
</body>
</html>