<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resume</title>
    <style>
    @import url("https://fonts.googleapis.com/css?family=Fjalla+One&display=swap");
* {
  margin: 0;
  padding: 0;
}

body {
  background: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/38816/image-from-rawpixel-id-2210775-jpeg.jpg") center center no-repeat;
  background-size: cover;
  width: 100vw;
  height: 100vh;
   background-repeat: repeat-y;
  display: grid;
  align-items: center;
  font-size: 14pt;
   font-family: "Fjalla One";
  justify-items: center;
  
}

.contact-us {
  background: #f8f4e5;
  padding: 50px 100px;
  border: 2px solid black;
  box-shadow: 15px 15px 1px #ffa580, 15px 15px 1px 2px black;
}

input {
  display: block;
  font-size: 14pt;
  line-height: 28pt;
  font-family: "Fjalla One";
  margin-bottom: 28pt;
  border: none;
  border-bottom: 3px solid black;
  background: #f8f4e5;
  min-width: 250px;
  padding-left: 5px;
  outline: none;
  color: blue;
}

input:focus {
  border-bottom: 5px solid #ffa580;
}

button {
  display: block;
  margin: 0 auto;
  line-height: 28pt;
  padding: 0 20px;
  background: #ffa580;
  letter-spacing: 2px;
  transition: 0.2s all ease-in-out;
  outline: none;
  border: 1px solid black;
  box-shadow: 3px 3px 1px #95a4ff, 3px 3px 1px 1px black;
}
button:hover {
  background: black;
  color: white;
  border: 1px solid black;
}

::selection {
  background: #ffc8ff;
}

input:-webkit-autofill,
input:-webkit-autofill:hover,
input:-webkit-autofill:focus {
  border-bottom: 5px solid #95a4ff;
  -webkit-text-fill-color: #2A293E;
  -webkit-box-shadow: 0 0 0px 1000px #f8f4e5 inset;
  transition: background-color 5000s ease-in-out 0s;
}
/* The container */
.container {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 5px;
  cursor: pointer;
  font-size: 60px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default radio button */
.container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
}

/* Create a custom radio button */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 50px;
  width: 50px;
  background-color: #ffa580;
  border-radius: 50%;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
  background-color: #ffa580;
}

/* When the radio button is checked, add a blue background */
.container input:checked ~ .checkmark {
  background-color: #ffa580;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the indicator (dot/circle) when checked */
.container input:checked ~ .checkmark:after {
  display: block;
}

/* Style the indicator (dot/circle) */
.container .checkmark:after {
 	top: 9px;
	left: 9px;
	width: 20px;
	height: 20px;
	border-radius: 70%;
	background: red;
}
</style>
</head>
<body>

<div class="contact-us">
  <form action="/" method="post">
  <h2>Details</h2><br>
 UPLOAD IMAGE
  <input type="file" name="img" >
<input type="text" name="name" placeholder="Full Name">
Date of birth : <input type="date" name="dob" placeholder="">
Male <input class = "container" type="radio" name="gender" value="Male">Female <input class="container"type="radio" name="gender"value="Female">
<input type="number" name="10CGPA" placeholder="10th CGPA"> 
<input type="number" name="1112CGPA" placeholder="11th & 12th CGPA">
<input type="text" name="occupation" placeholder="Current Occupation">
<input type="text" name="company" placeholder="Current/Previous Company">
<input type="text" name="year" placeholder="Experience in Years">
Passout year : <input type="number" name="passout" min="1900" max="2099" step="1" value="2023" />
<h2>Skills you earned</h2><br>
<input type="text" placeholder="Skill - 1" name="skill1" value="">
<input type="text" placeholder="Skill - 2" name="skill2" value="">
<input type="text" placeholder="Skill - 3" name="skill3" value="">
<input type="text" placeholder="Skill - 4" name="skill4" value="">
<input type="text" placeholder="Skill - 5" name="skill5" value="">
<input type="text" placeholder="Skill - 6" name="skill6" value="">
<input type="text" placeholder="Skill - 7" name="skill7" value="">
<input type="text" placeholder="Skill - 8" name="skill8" value="">
<h2>Programming Languages</h2><br>
<h2>Known</h2>
<input type="text" placeholder="Language - 1" name="language1" value="">
<input type="text" placeholder="Language - 2" name="language2" value="">
<input type="text" placeholder="Language - 3" name="language3" value="">
<input type="text" placeholder="Language - 4" name="language4" value="">
<input type="text" placeholder="Language - 5" name="language5" value="">
<input type="text" placeholder="Language - 6" name="language6" value="">
<input type="text" placeholder="Language - 7" name="language7" value="">
<input type="text" placeholder="Language - 8" name="language8" value="">
<input type="text" placeholder="Language - 9" name="language9" value="">
<input type="text" placeholder="Language - 10" name="language10" value="">
<button type="submit"  value="submit">Submit</button>
</form> 
</div>
</body>
</html>