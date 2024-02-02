<html>
<head>

<style>
/*form styles*/
#msform {
	width: 90%;
	margin: 50px auto;
	text-align: left;
	position: relative;
}
#msform fieldset {
	background: white;
	border: 0 none;
	border-radius: 3px;
	box-shadow: 0 0 15px 1px rgba(0, 0, 0, 0.4);
	padding: 20px 30px;
	box-sizing: border-box;
	width: 80%;
	margin: 0 10%;
	
	/*stacking fieldsets above each other*/
	position: relative;
}
/*Hide all except fsirst fieldset*/
#msform fieldset:not(:first-of-type) {
	display: none;
}
/*inputs*/
#msform input, #msform textarea {
	padding: 15px;
	border: 1px solid #ccc;
	border-radius: 3px;
	margin-bottom: 10px;
	width: 100%;
	box-sizing: border-box;
	font-family: montserrat;
	color: #2C3E50;
	font-size: 13px;
}
/*buttons*/
#msform .action-button {
	width: 100px;
	background: #8B1A31;
	font-weight: bold;
	color: white;
	border: 0 none;
	border-radius: 1px;
	cursor: pointer;
	padding: 10px 5px;
	margin: 10px 5px;
}
#msform .action-button:hover, #msform .action-button:focus {
	box-shadow: 0 0 0 2px white, 0 0 0 3px #8B1A31;
}
/*headings*/
.fs-title {
	font-size: 15px;
	text-transform: uppercase;
	color: #2C3E50;
	margin-bottom: 10px;
}
.fs-subtitle {
	font-weight: normal;
	font-size: 13px;
	color: #666;
	margin-bottom: 20px;
}
/*progressbar*/
#progressbar {
	margin-bottom: 30px;
	overflow: hidden;
	/*CSS counters to number the steps*/
	counter-reset: step;
    text-align: center;
}
#progressbar li {
	list-style-type: none;
	color: #8B1A31;
	text-transform: uppercase;
	font-size: 9px;
	width: 33.33%;
	float: left;
	position: relative;
}
#progressbar li:before {
	content: counter(step);
	counter-increment: step;
	width: 20px;
	line-height: 20px;
	display: block;
	font-size: 10px;
	color: #333;
	background: lightgrey;
	border-radius: 3px;
	margin: 0 auto 5px auto;
}
/*progressbar connectors*/
#progressbar li:after {
	content: '';
	width: 100%;
	height: 2px;
	background: #8B1A31;
	position: absolute;
	left: -50%;
	top: 9px;
	z-index: -1; /*put it behind the numbers*/
}
#progressbar li:first-child:after {
	/*connector not needed before the first step*/
	content: none; 
}
/*marking active/completed steps green*/
/*The number of the step and the connector before it = green*/
#progressbar li.active:before,  #progressbar li.active:after{
	background: #8B1A31;
	color: white;
}


</style>

</head>

<body>
    

    
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    
    
<form id="msform" action="https://webto.salesforce.com/servlet/servlet.WebToLead?encoding=UTF-8" method="POST">
    

    
<!-- progressbar -->
<ul id="progressbar">
<li class="active">Company Information</li>
<li>Additional Details</li>
<li>Guarantor Details</li>
</ul>    
    
<fieldset>
<h2 class="fs-title">Enter Your Company Information</h2>
    
<input type="hidden" name="oid" value="00D30000000118q">
<input name="lead_source" type="hidden" value="Webform">
<input type="hidden" name="retURL" value="https://breweryfinance.com/thank-you-for-your-application/">
<label for="company">Legal Company Name</label><input  id="company" maxlength="40" name="company" size="20" type="text" /><br>
Doing Business As (DBA) If different than Legal Company Name:<input  id="00N5x00000EuIHp" maxlength="255" name="00N5x00000EuIHp" size="20" type="text" /><br>
Mailing Street:<input  id="00N5x00000EuAO3" maxlength="255" name="00N5x00000EuAO3" size="20" type="text" /><br>
Mailing City:<input  id="00N5x00000EuAO8" maxlength="255" name="00N5x00000EuAO8" size="20" type="text" /><br>
Mailing State:<input  id="00N5x00000EuAOD" maxlength="255" name="00N5x00000EuAOD" size="20" type="text" /><br>
Mailing Zip Code:<input  id="00N5x00000EuAOI" maxlength="255" name="00N5x00000EuAOI" size="20" type="text" /><br>
<label for="street">Physical Street</label><textarea name="street"></textarea><br>
<label for="city">Physical City</label><input  id="city" maxlength="40" name="city" size="20" type="text" /><br>
<label for="state">Physical State/Province</label><input  id="state" maxlength="20" name="state" size="20" type="text" /><br>
<label for="zip">Physical Zip</label><input  id="zip" maxlength="20" name="zip" size="20" type="text" /><br>
Date Established:<span class="dateInput dateOnlyInput"><input  id="00N5x00000EuANZ" name="00N5x00000EuANZ" size="12" type="text" /></span><br>
Federal Tax ID:<input  id="00N5x00000EuANe" maxlength="255" name="00N5x00000EuANe" size="20" type="text" /><br>
<label for="phone">Business Phone</label><input  id="phone" maxlength="40" name="phone" size="20" type="text" /><br>
Business Site:<input  id="00N5x00000EuANt" maxlength="255" name="00N5x00000EuANt" size="20" type="text" /><br>
<input type="button" name="next" class="next action-button" value="Next" />
</fieldset>
    
<fieldset>
<label for="first_name">Contact First Name</label><input  id="first_name" maxlength="40" name="first_name" size="20" type="text" /><br>
<label for="last_name">Contact Last Name</label><input  id="last_name" maxlength="80" name="last_name" size="20" type="text" /><br>
Contact Phone:<input  id="00N5x00000EuANy" maxlength="40" name="00N5x00000EuANy" onkeydown="formatPhoneOnEnter(this, event);" size="20" type="text" /><br>
<label for="email">Contact Email</label><input  id="email" maxlength="80" name="email" size="20" type="text" /><br>
Equipment Cost:<input  id="00N5x00000EuANj" name="00N5x00000EuANj" size="20" type="text" /><br>
Equipment Description:<input  id="00N60000001fsiH" maxlength="255" name="00N60000001fsiH" size="20" type="text" /><br>
Vendor Name(s):<input  id="00N5x00000EuANo" maxlength="255" name="00N5x00000EuANo" size="20" type="text" /><br>
<input type="button" name="previous" class="previous action-button" value="Previous" />
<input type="button" name="next" class="next action-button" value="Next" />
</fieldset>

<fieldset>
<p>Please list all owners with 20% or more ownership.</p>
Guarantor #1 First Name:<input  id="00N5x00000EuAON" maxlength="255" name="00N5x00000EuAON" size="20" type="text" /><br>
Guarantor #1 Last Name:<input  id="00N5x00000EuAOh" maxlength="255" name="00N5x00000EuAOh" size="20" type="text" /><br>
Guarantor #1 Ownership %:<input  id="00N5x00000EuDiA" name="00N5x00000EuDiA" size="20" type="text" /><br>
Guarantor #1 Title:<input  id="00N5x00000EuIHV" maxlength="255" name="00N5x00000EuIHV" size="20" type="text" /><br>
Guarantor #1 Street:<input  id="00N5x00000EuAP1" maxlength="255" name="00N5x00000EuAP1" size="20" type="text" /><br>
Guarantor #1 City:<input  id="00N5x00000EuAPL" maxlength="255" name="00N5x00000EuAPL" size="20" type="text" /><br>
Guarantor #1 State:<input  id="00N5x00000EuAPf" maxlength="255" name="00N5x00000EuAPf" size="20" type="text" /><br>
Guarantor #1 Zip Code:<input  id="00N5x00000EuAPz" maxlength="255" name="00N5x00000EuAPz" size="20" type="text" /><br>
Guarantor #1 Email:<input  id="00N5x00000EuAQO" maxlength="80" name="00N5x00000EuAQO" size="20" type="text" /><br>
Guarantor #1 Social Security #:<input  id="00N5x00000EuAQi" maxlength="255" name="00N5x00000EuAQi" size="20" type="text" /><br>
<p>The following is not applicable if no additional owners exist.</p>
Guarantor #2 First Name:<input  id="00N5x00000EuAOS" maxlength="255" name="00N5x00000EuAOS" size="20" type="text" /><br>
Guarantor #2 Last Name:<input  id="00N5x00000EuAOm" maxlength="255" name="00N5x00000EuAOm" size="20" type="text" />
<br>
Guarantor #2 Ownership %:<input  id="00N5x00000EuDiF" name="00N5x00000EuDiF" size="20" type="text" /><br>
Guarantor #2 Title:<input  id="00N5x00000EuIHa" maxlength="255" name="00N5x00000EuIHa" size="20" type="text" /><br>
Guarantor #2 Street:<input  id="00N5x00000EuAP6" maxlength="255" name="00N5x00000EuAP6" size="20" type="text" /><br>
Guarantor #2 City:<input  id="00N5x00000EuAPQ" maxlength="255" name="00N5x00000EuAPQ" size="20" type="text" /><br>
Guarantor #2 State:<input  id="00N5x00000EuAPk" maxlength="255" name="00N5x00000EuAPk" size="20" type="text" /><br>
Guarantor #2 Zip Code:<input  id="00N5x00000EuAQE" maxlength="255" name="00N5x00000EuAQE" size="20" type="text" /><br>
Guarantor #2 Email:<input  id="00N5x00000EuAQT" maxlength="80" name="00N5x00000EuAQT" size="20" type="text" /><br>
Guarantor #2 Social Security #:<input  id="00N5x00000EuAQn" maxlength="255" name="00N5x00000EuAQn" size="20" type="text" /><br>
Guarantor #3 First Name:<input  id="00N5x00000EuAOX" maxlength="255" name="00N5x00000EuAOX" size="20" type="text" /><br>
Guarantor #3 Last Name:<input  id="00N5x00000EuAOr" maxlength="255" name="00N5x00000EuAOr" size="20" type="text" /><br>
Guarantor #3 Ownership %:<input  id="00N5x00000EuDiK" name="00N5x00000EuDiK" size="20" type="text" /><br>
Guarantor #3 Title:<input  id="00N5x00000EuIHf" maxlength="255" name="00N5x00000EuIHf" size="20" type="text" /><br>
Guarantor #3 Street:<input  id="00N5x00000EuAPB" maxlength="255" name="00N5x00000EuAPB" size="20" type="text" /><br>
Guarantor #3 City:<input  id="00N5x00000EuAPV" maxlength="255" name="00N5x00000EuAPV" size="20" type="text" /><br>
Guarantor #3 State:<input  id="00N5x00000EuAPp" maxlength="255" name="00N5x00000EuAPp" size="20" type="text" /><br>
Guarantor #3 Zip Code:<input  id="00N5x00000EuAQ4" maxlength="255" name="00N5x00000EuAQ4" size="20" type="text" /><br>
Guarantor #3 Email:<input  id="00N5x00000EuAQY" maxlength="80" name="00N5x00000EuAQY" size="20" type="text" /><br>
Guarantor #3 Social Security #:<input  id="00N5x00000EuAQs" maxlength="255" name="00N5x00000EuAQs" size="20" type="text" /><br>
Guarantor #4 First Name:<input  id="00N5x00000EuAOc" maxlength="255" name="00N5x00000EuAOc" size="20" type="text" /><br>
Guarantor #4 Last Name:<input  id="00N5x00000EuAOw" maxlength="255" name="00N5x00000EuAOw" size="20" type="text" /><br>
Guarantor #4 Ownership %:<input  id="00N5x00000EuDiP" name="00N5x00000EuDiP" size="20" type="text" /><br>
Guarantor #4 Title:<input  id="00N5x00000EuIHk" maxlength="255" name="00N5x00000EuIHk" size="20" type="text" /><br>
Guarantor #4 Street:<input  id="00N5x00000EuAPG" maxlength="255" name="00N5x00000EuAPG" size="20" type="text" /><br>
Guarantor #4 City:<input  id="00N5x00000EuAPa" maxlength="255" name="00N5x00000EuAPa" size="20" type="text" /><br>
Guarantor #4 State:<input  id="00N5x00000EuAPu" maxlength="255" name="00N5x00000EuAPu" size="20" type="text" /><br>
Guarantor #4 Zip Code:<input  id="00N5x00000EuAQJ" maxlength="255" name="00N5x00000EuAQJ" size="20" type="text" /><br>
Guarantor #4 Email:<input  id="00N5x00000EuAQd" maxlength="80" name="00N5x00000EuAQd" size="20" type="text" /><br>
Guarantor #4 Social Security #:<input  id="00N5x00000EuAQx" maxlength="255" name="00N5x00000EuAQx" size="20" type="text" /><br>
 <input type="button" name="previous" class="previous action-button" value="Previous" />
  <input type="submit" name="submit">

</fieldset>
    
</form>

<script>
    
//jQuery time
var current_fs, next_fs, previous_fs; //fieldsets
var left, opacity, scale; //fieldset properties which we will animate
var animating; //flag to prevent quick multi-click glitches

$(".next").click(function(){
	if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	next_fs = $(this).parent().next();
	
	//activate next step on progressbar using the index of next_fs
	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
	
	//show the next fieldset
	next_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale current_fs down to 80%
			scale = 1 - (1 - now) * 0.2;
			//2. bring next_fs from the right(50%)
			left = (now * 50)+"%";
			//3. increase opacity of next_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({
        'transform': 'scale('+scale+')',
        'position': 'absolute'
      });
			next_fs.css({'left': left, 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
});

$(".previous").click(function(){
	if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	previous_fs = $(this).parent().prev();
	
	//de-activate current step on progressbar
	$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");
	
	//show the previous fieldset
	previous_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale previous_fs from 80% to 100%
			scale = 0.8 + (1 - now) * 0.2;
			//2. take current_fs to the right(50%) - from 0%
			left = ((1-now) * 50)+"%";
			//3. increase opacity of previous_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({'left': left});
			previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
});


      
</script>

</body>
</html>
