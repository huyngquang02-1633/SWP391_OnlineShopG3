/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

$(document).ready(function () {

    $(".account").hide();

    if (localStorage.getItem('userlogin') !== null) {
        $(".login").hide();
        $(".account").show();
    }
});

function getData() {
    let userGetData = localStorage.getItem('userlogin');
    let convertValue = JSON.parse(userGetData);

    document.getElementById('nameprofile').innerHTML = convertValue.name;
    document.getElementById("imgprofile").src = convertValue.avt;
}

getData();

function logout() {
    localStorage.clear();
    window.location.href = "./homepage";
}
