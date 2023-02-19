

function statusChangeCallback(response) {  // Called with the results from FB.getLoginStatus().
    console.log('statusChangeCallback');
    console.log(response);                   // The current login status of the person.
    if (response.status === 'connected') {   // Logged into your webpage and Facebook.
        testAPI();
    } else {                                 // Not logged into your webpage or we are unable to tell.
        document.getElementById('status').innerHTML = 'Please log ' +
                'into this webpage.';
    }
}


function checkLoginState() {               // Called when a person is finished with the Login Button.
    FB.getLoginStatus(function (response) {   // See the onlogin handler
        statusChangeCallback(response);
    });
}


window.fbAsyncInit = function () {
    FB.init({
        appId: '718155789958513',
        cookie: true, // Enable cookies to allow the server to access the session.
        xfbml: true, // Parse social plugins on this webpage.
        version: 'v16.0'           // Use this Graph API version for this call.
    });


    FB.getLoginStatus(function (response) {   // Called after the JS SDK has been initialized.
        statusChangeCallback(response);        // Returns the login status.
    });

};

function testAPI() {                      // Testing Graph API after login.  See statusChangeCallback() for when this call is made.
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me?fields=email,name,picture', function (response) {

        let name = response.name;
        let email = response.email;
        let id = response.id;
        let imgFB = "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=" + response.id + "&height=50&width=50&ext=1679128895&hash=AeTUdjLLENIW-ySdbEQ";
        let userData = {
            name: name,
            avt: imgFB,
            email: email,
            id: id
        };

        let convertuserData = JSON.stringify(userData);

//        localStorage.setItem('userlogin', convertuserData);
        sessionStorage.setItem('userlogin', convertuserData);
        window.location.href = "./index.jsp";

//        document.getElementById('nameprofile').innerHTML = response.name;
//
//        document.getElementById("imgprofile").src = "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=" + response.id + "&height=50&width=50&ext=1679128895&hash=AeTUdjLLENIW-ySdbEQ";

    });
}

function handleCredentialResponse(response) {

    const responsePayload = decodeJwtResponse(response.credential);
//    console.log("ID" + responsePayload.sub);
//    console.log('Name: ' + responsePayload.name);
//    console.log('Given Name: ' + responsePayload.given_name);
//    console.log('Family Name: ' + responsePayload.family_name);
//    console.log("Email" + responsePayload.email);
//    console.log("Picture " + responsePayload.picture);

//    document.getElementById('nameprofile').innerHTML = responsePayload.name;
//    document.getElementById('imgprofile').src = responsePayload.picture;

    let name = responsePayload.name;
    let email = responsePayload.email;
    let id = responsePayload.id;
    let img = responsePayload.picture;
    let userData = {
        name: name,
        avt: img,
        email: email,
        id: id
    };

    let convertuserData = JSON.stringify(userData);
//    localStorage.setItem('userlogin', convertuserData);
    sessionStorage.setItem('userlogin', convertuserData);
    window.location.href = "./index.jsp";

}

function decodeJwtResponse(data) {
    var tokens = data.split('.');
    return JSON.parse(atob(tokens[1]));
}


