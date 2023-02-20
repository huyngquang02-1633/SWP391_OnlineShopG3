<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

    <head>
        <%
        String path = request.getContextPath();
        %>
        <title>Login</title>
        <link rel="stylesheet" href="<%=path%>/css/login.css">
        <script src="https://accounts.google.com/gsi/client" async defer></script>
        <div id="fb-root"></div>
        <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v16.0&appId=718155789958513&autoLogAppEvents=1"nonce="LpjM0yAZ"></script>
</head>

<body>
    <div class="container">
        <div class="overlay" id="overlay">
            <div class="sign-in" id="sign-in">
                <h1>Welcome!</h1>
                <p>To keep connected with us please login with your personal info</p>
                <button class="switch-button" id="slide-right-button">Sign In</button>
            </div>
            <div class="sign-up" id="sign-up">
                <h1>Hello, Friend!</h1>
                <p>Enter your personal details and start a journey with us</p>
                <p> P.s: Staff only &#128521; </p>
                <button class="switch-button" id="slide-left-button">Sign Up</button>
            </div>
        </div>
        <div class="form">
            <div class="sign-in" id="sign-in-info">
                <h1>Sign In</h1>
                <div class="social-media-buttons">
                    <div class="fb-login-button" data-width="" data-size="large" data-button-type="continue_with"
                         data-layout="default" data-auto-logout-link="false" data-use-continue-as="false"
                         scope="public_profile,email" onlogin="checkLoginState();" id="facebooklogin"></div>
                    <div id="g_id_onload"
                         data-client_id="1050564579754-430rd5eoroffdc7umpogphsqmbvhj9es.apps.googleusercontent.com"
                         data-context="signin" data-ux_mode="popup" data-callback="handleCredentialResponse"
                         data-auto_prompt="false">
                    </div>

                    <div class="g_id_signin" data-type="standard" data-shape="rectangular" data-theme="outline"
                         data-text="signin_with" data-size="large" data-logo_alignment="left" type="submit">
                    </div>
                </div>
                <p class="small">or use your email account:</p>
                <form id="sign-in-form" method="POST" action="<%=path%>/account/login">    
                    <c:if test="${msgEmail!=null}"><div style="color: red;">${msgEmail}</div></c:if>
                    <input type="email" placeholder="Email" name="txtEmail"/>
                    <c:if test="${msgPass!=null}"><div style="color: red;">${msgPass}</div></c:if>
                    <input type="password" placeholder="Password" name="txtPassword"/>
                    <p class="forgot-password"><a href="<%=path%>/account/forgotpass">Forgot your password?</a></p>
                    <button class="control-button in">Sign In</button>
                    <c:if test="${msg!=null}"><div style="color: red;">${msg}</div></c:if>
                </form>
            </div>
            <div class="sign-up" id="sign-up-info">
                <h1>Create Account</h1>
                <form id="sign-up-form">
                    <input type="text" placeholder="Name"/>
                    <input type="email" placeholder="Email"/>
                    <input type="password" placeholder="Password"/>
                    <button class="control-button up">Sign Up</button>
                </form>
            </div>
        </div>
    </div>
    <script src="<%=path%>/js/login.js"></script>
    <script src="<%=path%>/js/script.js" type="text/javascript"></script>
</body>

</html>