<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resume Generator</title>
<style type="text/css">
* {
    box-sizing: border-box;
  }
  input {
    visibility: hidden;
  }
  body,
  html {
    min-height: 100vh;
    padding: 0;
    margin: 0;
  }
  @media (min-width: 768px) {
    body,
    html {
      font-size: 14px;
    }
  }
  @media (min-width: 992px) {
    body,
    html {
      font-size: 16px;
    }
  }
  .card {
    background: #000;
    border-radius: 1.25rem;
    color: #fff;
    filter: drop-shadow(5px 5px 5px #000);
    flex-shrink: 0;
    font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif;
    font-size: 1.5rem;
    font-weight: bolder;
    height: 70vmin;
    max-height: 420px;
    padding: 2.5rem;
    position: absolute;
    transition: transform 0.25s ease-out;
    width: 50vmin;
    max-width: 300px;
    min-width: 220px;
    min-height: 308px;
  }
  .card:nth-of-type(1) {
    transform: translate(-60%, 0) rotate(-15deg);
  }
  .card__footer {
    align-items: center;
    bottom: 30px;
    display: flex;
    font-size: 0.75rem;
    left: 2.5rem;
    position: absolute;
    right: 2.5rem;
  }
  .card__footer img {
    height: 2rem;
    margin-right: 6px;
    width: 2rem;
  }
  .card--answer {
    color: #000;
    background: #fff;
  }
  #javascript:checked ~ .scene {
    background: #f8dc3f;
  }
  #javascript:checked ~ .scene .card--javascript {
    transform: translate(40%, 0) rotate(15deg) translate(0, 10%);
    z-index: 2;
  }
  #javascript:checked ~ .scene .card--typescript {
    transform: translate(40%, 0) rotate(15deg) translate(0, -10%);
    z-index: 1;
  }
  #javascript:checked ~ .scene label[for='typescript'] {
    z-index: 3;
  }
  #typescript:checked ~ .scene {
    background: #007bc7;
  }
  #typescript:checked ~ .scene .card--typescript {
    transform: translate(40%, 0) rotate(15deg) translate(0, 10%);
    z-index: 2;
  }
  #typescript:checked ~ .scene .card--javascript {
    transform: translate(40%, 0) rotate(15deg) translate(0, -10%);
    z-index: 1;
  }
  #typescript:checked ~ .scene label[for='Details'] {
    z-index: 3;
  }
  #Details:checked ~ .scene {
    background: #09f363;
  }
  #Details:checked ~ .scene .card--Details{
    transform: translate(40%, 0) rotate(15deg) translate(0, 10%);
    z-index: 2;
  }
  #Details:checked ~ .scene .card--Details {
    transform: translate(40%, 0) rotate(15deg) translate(0, -10%);
    z-index: 1;
  }
  #Details:checked ~ .scene label[for='javascript'] {
    z-index: 3;
  }
  label {
    cursor: pointer;
    height: 84vmin;
    position: absolute;
    transform: translate(40%, 0) rotate(15deg);
    width: 50vmin;
  }
  .scene {
    align-items: center;
    background: #db0a5b;
    display: flex;
    font-size: 10px;
    justify-content: center;
    margin: 0;
    min-height: 100vh;
    padding: 0;
    height: 100vh;
    width: 100vw;
    position: relative;
    transition: background 0.15s;
  }
  [type='radio'] {
    position: absolute;
    opacity: 0;
  }
  sub {
    margin-left: 6px;
  }
</style>
</head>
<body>
    <center><h1>Resume Generator</h1></center>
<input id="javascript" type="radio" name="choice" checked="checked"/>
<input id="typescript" type="radio" name="choice"/>
<input id="Details" type="radio" name="choice"/>
<div class="scene">
  <label for="typescript"></label>
  <label for="Details"></label>
  <label for="javascript"></label>
  <div class="card  ">
    <div class="card__content">Resume</div>
    <img src="/images/1627450723617.jpeg" style="vertical-align: middle;width: 150px;height:150px;border-radius: 50%;">
  </div>
  <div class="card card--answer card--javascript">
    <div class="card__content">Details</div>
    <div style="font-size: 18px;">
        Name : <br><%= request.getParameter("name") %><br>
        Date of Birth :<br><%= request.getParameter("dob")%><br>
        Gender : <%= request.getParameter("gender")%><br>
        10th CGPA : <%= request.getParameter("10CGPA")%><br>
        11th & 12th CGPA : <%= request.getParameter("1112CGPA")%><br>
        Current Role : <%= request.getParameter("occupation")%><br>
        At : <%= request.getParameter("company")%><br>
        Experience : <%= request.getParameter("year")%> years<br>
        Passout : <%= request.getParameter("passout")%>
    </div>
  </div>
  <div class="card card--answer card--Details">
    <div class="card__content">Languages</div>
    <div style="font-size: 20px; overflow-wrap: break-word;">
        <%= request.getParameter("language1")%><br>
        <%= request.getParameter("language2")%><br>
        <%= request.getParameter("language3")%><br>
        <%= request.getParameter("language4")%><br>
        <%= request.getParameter("language5")%><br>
        <%= request.getParameter("language6")%><br>
        <%= request.getParameter("language7")%><br>
        <%= request.getParameter("language8")%><br>
    </div>
  </div>
  <div class="card card--answer card--typescript">
    <div class="card__content">Skills</div>
    <div style="font-size: 20px;">
         <%= request.getParameter("skill1")%><br>
         <%= request.getParameter("skill2")%><br>
         <%= request.getParameter("skill3")%><br>
         <%= request.getParameter("skill4")%><br>
         <%= request.getParameter("skill5")%><br>
         <%= request.getParameter("skill6")%><br>
         <%= request.getParameter("skill7")%><br>
         <%= request.getParameter("skill8")%><br>
    </div>
  </div>
</div>
 <%-- <center>
      <h1>Using POST Method to Read Form Data</h1>
      
      <ul>
         <li><p><b>First Name:</b>
            <%= request.getParameter("first_name")%>
         </p></li>
         <li><p><b>Last  Name:</b>
            <%= request.getParameter("last_name")%>
         </p></li>
      </ul>
    --%>
</body>
</html>
