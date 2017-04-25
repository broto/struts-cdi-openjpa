<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewpot" content="width=device-width, initial-scale=1">

    <title>Login | </title>
	<style type="text/css"><%@include file="/resources/bootstrap/css/bootstrap.css" %></style>
	<style type="text/css"><%@include file="/resources/bootstrap/css/bootstrap.min.css" %></style>
	<style type="text/css"><%@include file="/resources/CSS/Style.css" %></style>
	<style type="text/css"><%@include file="/resources/CSS/custom.min.css" %></style>
  </head>

  <body class="login">
  <style>
  
  </style>
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <s:actionerror />
            <s:form action="login" method="post">
              <h1>Login Form</h1>
              <div>
                <input type="text" class="form-control" placeholder="Usuário" required="" id="usuario" name="usuario" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Senha" required="" id="senha" name="senha"/>
              </div>
              <div>
                <input style="margin-left: 38%;" type="submit" value="Logar" class="btn btn-default submit" />
              </div>

              <div class="clearfix"></div>

              <div class="separator">

                <div class="clearfix"></div>
                <br />

              </div>
            </s:form>
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">
            <form>
              <h1>Create Account</h1>
              <div>
                <input type="text" class="form-control" placeholder="Username" required="" />
              </div>
              <div>
                <input type="email" class="form-control" placeholder="Email" required="" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" required="" />
              </div>
              <div>
                <a class="btn btn-default submit" href="index.html">Submit</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
                  <a href="#signin" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> Gentelella Alela!</h1>
                  <p>©2016 All Rights Reserved. Gentelella Alela! is a Bootstrap 3 template. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
