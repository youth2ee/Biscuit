<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* @extend display-flex; */
display-flex, .form-flex, .form-row, .add-info-link {
  display: flex;
  display: -webkit-flex; }

/* @extend list-type-ulli; */
list-type-ulli, ul {
  list-style-type: none;
  margin: 0;
  padding: 0; }

/* Montserrat-300 - latin */
@font-face {
  font-family: 'Montserrat';
  font-style: normal;
  font-weight: 300;
  src: url("../fonts/montserrat/Montserrat-Light.ttf");
  /* IE9 Compat Modes */ }
@font-face {
  font-family: 'Montserrat';
  font-style: normal;
  font-weight: 400;
  src: url("../fonts/montserrat/Montserrat-Regular.ttf");
  /* IE9 Compat Modes */ }
@font-face {
  font-family: 'Montserrat';
  font-style: italic;
  font-weight: 400;
  src: url("../fonts/montserrat/Montserrat-Italic.ttf");
  /* IE9 Compat Modes */ }
@font-face {
  font-family: 'Montserrat';
  font-style: normal;
  font-weight: 500;
  src: url("../fonts/montserrat/Montserrat-Medium.ttf");
  /* IE9 Compat Modes */ }
@font-face {
  font-family: 'Montserrat';
  font-style: normal;
  font-weight: 600;
  src: url("../fonts/montserrat/Montserrat-SemiBold.ttf");
  /* IE9 Compat Modes */ }
@font-face {
  font-family: 'Montserrat';
  font-style: normal;
  font-weight: 700;
  src: url("../fonts/montserrat/Montserrat-Bold.ttf");
  /* IE9 Compat Modes */ }
@font-face {
  font-family: 'Montserrat';
  font-style: italic;
  font-weight: 700;
  src: url("../fonts/montserrat/Montserrat-BoldItalic.ttf");
  /* IE9 Compat Modes */ }
@font-face {
  font-family: 'Montserrat';
  font-style: italic;
  font-weight: 900;
  src: url("../fonts/montserrat/montserrat-v12-latin-900.ttf"), url("../fonts/montserrat/montserrat-v12-latin-900.eot") format("embedded-opentype"), url("../fonts/montserrat/montserrat-v12-latin-900.svg") format("woff2"), url("../fonts/montserrat/montserrat-v12-latin-900.woff") format("woff"), url("../fonts/montserrat/montserrat-v12-latin-900.woff2") format("truetype"); }
a:focus, a:active {
  text-decoration: none;
  outline: none;
  transition: all 300ms ease 0s;
  -moz-transition: all 300ms ease 0s;
  -webkit-transition: all 300ms ease 0s;
  -o-transition: all 300ms ease 0s;
  -ms-transition: all 300ms ease 0s; }

input, select, textarea {
  outline: none;
  appearance: unset !important;
  -moz-appearance: unset !important;
  -webkit-appearance: unset !important;
  -o-appearance: unset !important;
  -ms-appearance: unset !important; }

input::-webkit-outer-spin-button, input::-webkit-inner-spin-button {
  appearance: none !important;
  -moz-appearance: none !important;
  -webkit-appearance: none !important;
  -o-appearance: none !important;
  -ms-appearance: none !important;
  margin: 0; }

input:focus, select:focus, textarea:focus {
  outline: none;
  box-shadow: none !important;
  -moz-box-shadow: none !important;
  -webkit-box-shadow: none !important;
  -o-box-shadow: none !important;
  -ms-box-shadow: none !important; }

input[type=checkbox] {
  appearance: checkbox !important;
  -moz-appearance: checkbox !important;
  -webkit-appearance: checkbox !important;
  -o-appearance: checkbox !important;
  -ms-appearance: checkbox !important; }

input[type=radio] {
  appearance: radio !important;
  -moz-appearance: radio !important;
  -webkit-appearance: radio !important;
  -o-appearance: radio !important;
  -ms-appearance: radio !important; }

input[type=number] {
  -moz-appearance: textfield !important;
  appearance: none !important;
  -webkit-appearance: none !important; }

input:-webkit-autofill {
  box-shadow: 0 0 0 30px transparent inset;
  -moz-box-shadow: 0 0 0 30px transparent inset;
  -webkit-box-shadow: 0 0 0 30px transparent inset;
  -o-box-shadow: 0 0 0 30px transparent inset;
  -ms-box-shadow: 0 0 0 30px transparent inset; }

img {
  max-width: 100%;
  height: auto; }

figure {
  margin: 0; }

p {
  margin-bottom: 0px;
  font-size: 15px;
  color: #777; }

h2 {
  line-height: 1.66;
  margin: 0;
  padding: 0;
  font-weight: 900;
  color: #222;
  font-family: 'Montserrat';
  font-size: 24px;
  text-transform: uppercase;
  text-align: center;
  margin-bottom: 40px; }

.clear {
  clear: both; }

body {
  font-size: 13px;
  line-height: 1.8;
  color: #222;
  font-weight: 600;
  font-family: 'Montserrat';
  background: #c5e9ff;
  padding: 115px 0; }

a {
  color: #1da0f2; }

.container {
  width: 680px;
  position: relative;
  margin: 0 auto;
  box-shadow: 0px 10px 9.9px 0.1px rgba(0, 0, 0, 0.1);
  -moz-box-shadow: 0px 10px 9.9px 0.1px rgba(0, 0, 0, 0.1);
  -webkit-box-shadow: 0px 10px 9.9px 0.1px rgba(0, 0, 0, 0.1);
  -o-box-shadow: 0px 10px 9.9px 0.1px rgba(0, 0, 0, 0.1);
  -ms-box-shadow: 0px 10px 9.9px 0.1px rgba(0, 0, 0, 0.1);
  background: #fff; }

.signup-content {
  padding: 10px 0; }

.signup-form {
  padding: 58px 50px 0px 50px;
  height: 652px;
  overflow-y: auto; }

.signup-form::-webkit-scrollbar-track {
  border-radius: 5px;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  -o-border-radius: 5px;
  -ms-border-radius: 5px;
  background-color: #f8f8f8;
  width: 10px; }

.signup-form::-webkit-scrollbar {
  border-radius: 5px;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  -o-border-radius: 5px;
  -ms-border-radius: 5px;
  width: 10px;
  background-color: #fff; }

.signup-form::-webkit-scrollbar-thumb {
  border-radius: 5px;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  -o-border-radius: 5px;
  -ms-border-radius: 5px;
  background-color: #ebebeb; }

label, input {
  display: block;
  width: 100%; }

label {
  text-transform: uppercase;
  font-weight: 800;
  margin-bottom: 3px; }

input {
  border: 1px solid #ebebeb;
  border-radius: 5px;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  -o-border-radius: 5px;
  -ms-border-radius: 5px;
  box-sizing: border-box;
  padding: 15px 20px;
  font-size: 14px;
  font-weight: bold;
  font-family: 'Montserrat'; }
  input:focus {
    border: 1px solid #1da0f2; }
  input::-webkit-input-placeholder {
    color: #999;
    text-transform: uppercase;
    font-weight: 600; }
  input::-moz-placeholder {
    color: #999;
    text-transform: uppercase;
    font-weight: 600; }
  input:-ms-input-placeholder {
    color: #999;
    text-transform: uppercase;
    font-weight: 600; }
  input:-moz-placeholder {
    color: #999;
    text-transform: uppercase;
    font-weight: 600; }

.form-radio {
  margin-bottom: 40px; }
  .form-radio input {
    width: 0;
    height: 0;
    position: absolute;
    left: -9999px; }
  .form-radio input + label {
    margin: 0px;
    padding: 12px 10px;
    width: 94px;
    height: 50px;
    box-sizing: border-box;
    position: relative;
    display: inline-block;
    text-align: center;
    border: 1px solid #ebebeb;
    background-color: #FFF;
    font-size: 14px;
    font-weight: 600;
    color: #888;
    text-align: center;
    text-transform: none;
    transition: border-color .15s ease-out,  color .25s ease-out,  background-color .15s ease-out, box-shadow .15s ease-out;
    border-radius: 5px;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    -o-border-radius: 5px;
    -ms-border-radius: 5px; }
  .form-radio input:checked + label {
    background-color: #1da0f2;
    color: #FFF;
    border-color: #1da0f2;
    z-index: 1; }
  .form-radio input:focus + label {
    outline: none; }
  .form-radio input:hover {
    background-color: #1da0f2;
    color: #FFF;
    border-color: #1da0f2; }

.form-flex input + label:first-of-type {
  border-radius: 5px 0 0 5px;
  -moz-border-radius: 5px 0 0 5px;
  -webkit-border-radius: 5px 0 0 5px;
  -o-border-radius: 5px 0 0 5px;
  -ms-border-radius: 5px 0 0 5px;
  border-right: none; }
.form-flex input + label:last-of-type {
  border-radius: 0 5px 5px 0;
  -moz-border-radius: 0 5px 5px 0;
  -webkit-border-radius: 0 5px 5px 0;
  -o-border-radius: 0 5px 5px 0;
  -ms-border-radius: 0 5px 5px 0;
  border-left: none; }

.form-row {
  margin: 0 -11px; }
  .form-row .form-group, .form-row .form-radio {
    width: 50%;
    padding: 0 11px; }

.form-group, .form-radio {
  margin-bottom: 23px;
  position: relative; }

.form-icon {
  position: relative; }

.ui-datepicker-trigger {
  position: absolute;
  right: 25px;
  top: 41px;
  color: #999;
  font-size: 18px;
  background: transparent;
  border: none;
  outline: none;
  cursor: pointer; }

.add-info-link {
  text-decoration: none;
  text-transform: uppercase;
  font-weight: 900;
  margin-bottom: 16px;
  align-items: center;
  -moz-align-items: center;
  -webkit-align-items: center;
  -o-align-items: center;
  -ms-align-items: center; }
  .add-info-link .zmdi {
    font-size: 18px;
    padding-right: 14px; }

.add_info {
  display: none; }

ul {
  background: 0 0;
  position: relative;
  z-index: 9; }

ul li {
  padding: 5px 0px;
  z-index: 2;
  color: #222;
  font-size: 14px;
  font-weight: 900; }

ul li:not(.init) {
  display: none;
  background: #fff;
  color: #222;
  padding: 5px 10px; }

ul li:not(.init):hover, ul li.selected:not(.init) {
  background: #1da0f2;
  color: #fff; }

li.init {
  cursor: pointer;
  position: relative;
  border: 1px solid #ebebeb;
  padding: 12px 20px;
  border-radius: 5px;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  -o-border-radius: 5px;
  -ms-border-radius: 5px; }
  li.init:after {
    position: absolute;
    right: 20px;
    top: 50%;
    transform: translateY(-50%);
    -moz-transform: translateY(-50%);
    -webkit-transform: translateY(-50%);
    -o-transform: translateY(-50%);
    -ms-transform: translateY(-50%);
    font-size: 18px;
    color: #999;
    font-family: 'Material-Design-Iconic-Font';
    content: '\f2f9';
    font-weight: 400; }

.form-submit {
  width: auto;
  background: #1da0f2;
  color: #fff;
  text-transform: uppercase;
  font-weight: 900;
  padding: 16px 50px;
  float: right;
  border: none;
  margin-top: 37px;
  cursor: pointer; }
  .form-submit:hover {
    background: #0c85d0; }

label.error {
  display: block;
  position: absolute;
  top: 0px;
  right: 0; }
  label.error:after {
    font-family: 'Material-Design-Iconic-Font';
    position: absolute;
    content: '\f135';
    right: 31px;
    top: 40px;
    font-size: 13px;
    color: #c70000; }

input.error {
  border: 1px solid #c70000; }

.select-list {
  position: relative;
  display: inline-block;
  width: 100%;
  margin-bottom: 47px; }

.list-item {
  position: absolute;
  width: 100%; }

#country {
  z-index: 99; }

#city {
  z-index: 9; }

@media screen and (max-width: 768px) {
  .container {
    width: calc( 100% - 30px);
    max-width: 100%; } }

/*# sourceMappingURL=style.css.map */


</style>
</head>
<body>

    <div class="main">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <form method="POST" id="signup-form" class="signup-form">
                        <div class="form-row">
                            <div class="form-group">
                                <label for="first_name">First nameddddddddd</label>
                                <input type="text" class="form-input" name="first_name" id="first_name" />
                            </div>
                            <div class="form-group">
                                <label for="last_name">Last name</label>
                                <input type="text" class="form-input" name="last_name" id="last_name" />
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group form-icon">
                                <label for="birth_date">Birth date</label>
                                <input type="text" class="form-input" name="birth_date" id="birth_date" placeholder="MM-DD-YYYY" />
                            </div>
                            <div class="form-radio">
                                <label for="gender">Gender</label>
                                <div class="form-flex">
                                    <input type="radio" name="gender" value="male" id="male" checked="checked" />
                                    <label for="male">Male</label>
    
                                    <input type="radio" name="gender" value="female" id="female" />
                                    <label for="female">Female</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="phone_number">Phone number</label>
                            <input type="number" class="form-input" name="phone_number" id="phone_number" />
                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-input" name="password" id="password"/>
                            </div>
                            <div class="form-group">
                                <label for="re_password">Repeat your password</label>
                                <input type="password" class="form-input" name="re_password" id="re_password"/>
                            </div>
                        </div>
                        <div class="form-text">
                            <a href="#" class="add-info-link"><i class="zmdi zmdi-chevron-right"></i>Additional info</a>
                            <div class="add_info">
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="email" class="form-input" name="email" id="email"/>
                                </div>
                                <div class="form-group">
                                    <label for="country">Country</label>
                                    <div class="select-list">
                                        <select name="country" id="country" required>
                                            <option value="US">United State</option>
                                            <option value="UK">English</option>
                                            <option value="VN">Viet Nam</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="city">City</label>
                                    <div class="select-list">
                                        <select name="city" id="city" required>
                                            <option value="NY">NewYork</option>
                                            <option value="IC">IceLand</option>
                                            <option value="canada">Canada</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" id="submit" class="form-submit" value="Submit"/>
                        </div>
                    </form>
                </div>
            </div>
        </section>

    </div>

</body>
</html>