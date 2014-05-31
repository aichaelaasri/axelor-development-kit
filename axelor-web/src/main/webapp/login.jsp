<%--

    Axelor Business Solutions

    Copyright (C) 2012-2014 Axelor (<http://axelor.com>).

    This program is free software: you can redistribute it and/or  modify
    it under the terms of the GNU Affero General Public License, version 3,
    as published by the Free Software Foundation.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

--%>
<%@ page language="java" session="true" %>
<%@ page import="com.axelor.i18n.I18n" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
String linkHome = I18n.get("Home");
String linkAbout = I18n.get("About");
String linkContact = I18n.get("Contact");

String loginTitle = I18n.get("Please sign in");
String loginRemember = I18n.get("Remember me");
String loginSubmit = I18n.get("Login");

String loginUserName = I18n.get("User name");
String loginPassword = I18n.get("Password");

String pageTitle = I18n.get("DEMO");
%>
<!DOCTYPE html>
<html>
<head>
<link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet">
<style type="text/css">

body {
	padding-top: 60px;
	padding-bottom: 40px;
	background-color: #f5f5f5;
}

.form-signin {
	max-width: 300px;
	padding: 19px 29px 29px;
	margin: 0 auto 20px;

	border: 1px solid #e5e5e5;
	background-color: #fff;
	
	-webkit-border-radius: 5px;
  	   -moz-border-radius: 5px;
	        border-radius: 5px;

	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	   -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	        box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-signin .form-signin-heading,
.form-signin .checkbox {
	margin-bottom: 10px;
}

.form-signin input[type="text"],
.form-signin input[type="password"] {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}

#footer {
	height: 60px;
}

.container .credit {
	margin: 20px 0;
	text-align: center;
}

.app-title {
	height: 60px;
	font-size: 32px;
	text-align: center;
	margin: 40px 0 20px;
}
</style>
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="brand" href="http://axelor.com/" style="padding: 3px;">
					<img src="img/axelor.png" style="height: 34px;">
				</a>
				<div class="nav-collapse collapse pull-right">
					<ul class="nav">
						<li class="active"><a href="#"><%= linkHome %></a></li>
						<li><a href="#about"><%= linkAbout %></a></li>
						<li><a href="#contact"><%= linkContact %></a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>

	<div class="container">
		<div class="app-title">
			<h2 class="muted"><%= pageTitle %></h2>
		</div>
		<form class="form-signin" action="" method="POST">
			<h2 class="form-signin-heading"><%= loginTitle %></h2>
			<input type="text" class="input-block-level" placeholder="<%= loginUserName %>"
				tabindex="1" name="username">
			<input type="password" class="input-block-level" placeholder="<%= loginPassword %>"
				tabindex="2" name="password">
			<label class="checkbox"> <input type="checkbox"
				tabindex="3" value="rememberMe" name="rememberMe"> <%= loginRemember %>
			</label>
			<button tabindex="4" class="btn btn-large btn-primary" type="submit"><%= loginSubmit %></button>
		</form>
		<div id="footer">
			<div class="container">
				<p class="muted credit">&copy; Axelor. All Rights Reserved.</p>
			</div>
		</div>
	</div>
</body>
</html>
