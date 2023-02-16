/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function getData() {
    let userGetData = localStorage.getItem('userlogin');
    let convertValue = JSON.parse(userGetData);

    document.getElementById('nameprofile').innerHTML = convertValue.name;
    document.getElementById("imgprofile").src = convertValue.avt;
}

getData();

function logout() {
    localStorage.clear();
    location.href = './index.jsp';
}