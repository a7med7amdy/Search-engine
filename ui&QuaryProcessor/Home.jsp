<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Engine</title>

<style>
* {
  box-sizing: border-box;
}


#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 12px;
  background-repeat: no-repeat;
  width: 70%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
  border-radius: 15px;
  border: 1px #000 solid;

  
}

#Country{
  background:#E9E8E8;
  
}
#myUL {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

#myUL li a {
  border: 1px solid #ddd;
  margin-top: -1px; /* Prevent double borders */
  background-color: #f6f6f6;
  padding: 12px;
  text-decoration: none;
  font-size: 18px;
  color: black;
  display: block
}

#myUL li a:hover:not(.header) {
  background-color: #eee;
}
</style>

</head>

<body>

<form action="<%=request.getContextPath()%>/queryProcessor" method="post" id="HomePage">

<h2>Find All What You Want</h2>

<input type="text" id="myInput" name="query" onkeyup="myFunction()" placeholder="Search for .." title="Search" required>
<br>
<select id="Country" name="country" required >
    <option value="">-- sellect the Country --</option>
	<option value="['Nigeria','NG']">Nigeria</option>
	<option value="['Afghanistan','AF']">Afghanistan</option>
	<option value="['Albania','AL']">Albania</option>
	<option value="['Algeria','DZ']">Algeria</option>
	<option value="['American Samoa','AS']">American Samoa</option>
	<option value="['Andorra','AD']">Andorra</option>
	<option value="['Angola','AO']">Angola</option>
	<option value="['Anguilla','AI']">Anguilla</option>
	<option value="['Antarctica','AQ']">Antarctica</option>
	<option value="['Antigua and Barbuda','AG']">Antigua and Barbuda</option>
	<option value="['Argentina','AR']">Argentina</option>
	<option value="['Armenia','AM']">Armenia</option>
	<option value="['Aruba','AW']">Aruba</option>
	<option value="['Australia','AU']">Australia</option>
	<option value="['Austria','AT']">Austria</option>
	<option value="['Azerbaijan','AZ']">Azerbaijan</option>
	<option value="['Bahamas','BS']">Bahamas</option>
	<option value="['Bahrain','BH']">Bahrain</option>
	<option value="['Bangladesh','BD']">Bangladesh</option>
	<option value="['Barbados','BB']">Barbados</option>
	<option value="['Belarus','BY']">Belarus</option>
	<option value="['Belgium','BE']">Belgium</option>
	<option value="['Belize','BZ']">Belize</option>
	<option value="['Benin','BJ']">Benin</option>
	<option value="['Bermuda','BM']">Bermuda</option>
	<option value="['Bhutan','BT']">Bhutan</option>
	
	<option value="['Burkina Faso','BF']">Burkina Faso</option>
	<option value="['Burundi','BI']">Burundi</option>
	<option value="['Cambodia','KH']">Cambodia</option>
	<option value="['Cameroon','CM']">Cameroon</option>
	<option value="['Canada','CA']">Canada</option>
	<option value="['Cape Verde','CV']">Cape Verde</option>
	<option value="['Cayman Islands','KY']">Cayman Islands</option>
	<option value="['Central African Republic','CF']">Central African Republic</option>
	<option value="['Chad','TD']">Chad</option>
	<option value="['Chile','CL']">Chile</option>
	<option value="['China','CN']">China</option>
	<option value="['Christmas Island','CX']">Christmas Island</option>
	<option value="['Cocos (Keeling) Islands','CC']">Cocos (Keeling) Islands</option>
	<option value="['Colombia','CO']">Colombia</option>
	<option value="['Comoros','KM']">Comoros</option>
	<option value="['Congo','CG']">Congo</option>
	<option value="['Congo, the Democratic Republic of the','CD']">"Congo, the Democratic Republic of the"</option>
	<option value="['Cook Islands','CK']">Cook Islands</option>
	<option value="['Costa Rica','CR']">Costa Rica</option>
	<option value="['Croatia','HR']">Croatia</option>
	<option value="['Cuba','CU']">Cuba</option>
	<option value="['Cyprus','CY']">Cyprus</option>
	<option value="['Czech Republic','CZ']">Czech Republic</option>
	<option value="['Denmark','DK']">Denmark</option>
	<option value="['Djibouti','DJ']">Djibouti</option>
	<option value="['Dominica','DM']">Dominica</option>
	<option value="['Dominican Republic','DO']">Dominican Republic</option>
	<option value="['Ecuador','EC']">Ecuador</option>
	<option value="['Egypt','EG']">Egypt</option>
	<option value="['El Salvador','SV']">El Salvador</option>
	<option value="['Equatorial Guinea','GQ']">Equatorial Guinea</option>
	<option value="['Eritrea','ER']">Eritrea</option>
	<option value="['Estonia','EE']">Estonia</option>
	<option value="['Ethiopia','ET']">Ethiopia</option>
	<option value="['Fiji','FJ']">Fiji</option>
	<option value="['Finland','FI']">Finland</option>
	<option value="['France','FR']">France</option>
	<option value="['French Guiana','GF']">French Guiana</option>
	<option value="['French Polynesia','PF']">French Polynesia</option>
	<option value="['French Southern Territories','TF']">French Southern Territories</option>
	<option value="['Gabon','GA']">Gabon</option>
	<option value="['Gambia','GM']">Gambia</option>
	<option value="['Georgia','GE']">Georgia</option>
	<option value="['Germany','DE']">Germany</option>
	<option value="['Ghana','GH']">Ghana</option>
	<option value="['Gibraltar','GI']">Gibraltar</option>
	<option value="['Greece','GR']">Greece</option>
	<option value="['Greenland','GL']">Greenland</option>
	<option value="['Grenada','GD']">Grenada</option>
	<option value="['Guadeloupe','GP']">Guadeloupe</option>
	<option value="['Guam','GU']">Guam</option>
	<option value="['Guatemala','GT']">Guatemala</option>
	<option value="['Guernsey','GG']">Guernsey</option>
	<option value="['Guinea','GN']">Guinea</option>
	<option value="['Guinea-Bissau','GW']">Guinea-Bissau</option>
	<option value="['Guyana','GY']">Guyana</option>
	<option value="['Haiti','HT']">Haiti</option>
	<option value="['Hungary','HU']">Hungary</option>
	<option value="['Iceland','IS']">Iceland</option>
	<option value="['India','IN']">India</option>
	<option value="['Indonesia','ID']">Indonesia</option>
	<option value="['Iran, Islamic Republic of','IR']">"Iran, Islamic Republic of"</option>
	<option value="['Iraq','IQ']">Iraq</option>
	<option value="['Ireland','IE']">Ireland</option>
	<option value="['Isle of Man','IM']">Isle of Man</option>
	<option value="['Israel','IL']">Israel</option>
	<option value="['Italy','IT']">Italy</option>
	<option value="['Jamaica','JM']">Jamaica</option>
	<option value="['Japan','JP']">Japan</option>
	<option value="['Jersey','JE']">Jersey</option>
	<option value="['Jordan','JO']">Jordan</option>
	<option value="['Kazakhstan','KZ']">Kazakhstan</option>
	<option value="['Kenya','KE']">Kenya</option>
	<option value="['Kiribati','KI']">Kiribati</option>
	<option value="['Korea, Democratic People's Republic of','KP']">"Korea, Democratic People's Republic of"</option>
	<option value="['Korea, Republic of','KR']">"Korea, Republic of"</option>
	<option value="['Kuwait','KW']">Kuwait</option>
	<option value="[Kyrgyzstan','KG']">yrgyzstan</option>
	<option value="['Lao People`s Democratic Republic','LA']">Lao People's Democratic Republic</option>
	<option value="['Latvia','LV']">Latvia</option>
	<option value="['Lebanon','LB']">Lebanon</option>
	<option value="['Lesotho','LS']">Lesotho</option>
	<option value="['Liberia','LR']">Liberia</option>
	<option value="['Libya','LY']">Libya</option>
	<option value="['Liechtenstein','LI']">Liechtenstein</option>
	<option value="['Lithuania','LT']">Lithuania</option>
	<option value="['Luxembourg','LU']">Luxembourg</option>
	<option value="['Macao','MO']">Macao</option>
	<option value="['Malawi','MW']">Malawi</option>
	<option value="['Malaysia','MY']">Malaysia</option>
	<option value="['Maldives','MV']">Maldives</option>
	<option value="['Mali','ML']">Mali</option>
	<option value="['Malta','MT']">Malta</option>
	<option value="['Marshall Islands','MH']">Marshall Islands</option>
	<option value="['Martinique','MQ']">Martinique</option>
	<option value="['Mauritania','MR']">Mauritania</option>
	<option value="['Mauritius','MU']">Mauritius</option>
	<option value="['Mayotte','YT']">Mayotte</option>
	<option value="['Mexico','MX']">Mexico</option>
	<option value="['Mongolia','MN']">Mongolia</option>
	<option value="['Montenegro','ME']">Montenegro</option>
	<option value="['Montserrat','MS']">Montserrat</option>
	<option value="['Morocco','MA']">Morocco</option>
	<option value="['Mozambique','MZ']">Mozambique</option>
	<option value="['Myanmar','MM']">Myanmar</option>
	<option value="['Namibia','NA']">Namibia</option>
	<option value="['Nauru','NR']">Nauru</option>
	<option value="['Nepal','NP']">Nepal</option>
	<option value="['Netherlands','NL']">Netherlands</option>
	<option value="['New Caledonia','NC']">New Caledonia</option>
	<option value="['New Zealand','NZ']">New Zealand</option>
	<option value="['Nicaragua','NI']">Nicaragua</option>
	<option value="['Niger','NE']">Niger</option>
	<option value="['Niue','NU']">Niue</option>
	<option value="['Oman','OM']">Oman</option>
	<option value="['Pakistan','PK']">Pakistan</option>
	<option value="['Palau','PW']">Palau</option>
	<option value="['Palestine, State of','PS']">"Palestine, State of"</option>
	<option value="['Panama','PA']">Panama</option>
	<option value="['Papua New Guinea','PG']">Papua New Guinea</option>
	<option value="['Paraguay','PY']">Paraguay</option>
	<option value="['Peru','PE']">Peru</option>
	<option value="['Philippines','PH']">Philippines</option>
	<option value="['Pitcairn','PN']">Pitcairn</option>
	<option value="['Poland','PL']">Poland</option>
	<option value="['Portugal','PT']">Portugal</option>
	<option value="['Puerto Rico','PR']">Puerto Rico</option>
	<option value="['Qatar','QA']">Qatar</option>
	<option value="['Romania','RO']">Romania</option>
	<option value="['Russian Federation','RU']">Russian Federation</option>
	<option value="['Rwanda','RW']">Rwanda</option>
	<option value="['Saint Lucia','LC']">Saint Lucia</option>
	<option value="['Samoa','WS']">Samoa</option>
	<option value="['San Marino','SM']">San Marino</option>
	<option value="['Sao Tome and Principe','ST']">Sao Tome and Principe</option>
	<option value="['Saudi Arabia','SA']">Saudi Arabia</option>
	<option value="['Senegal','SN']">Senegal</option>
	<option value="['Serbia','RS']">Serbia</option>
	<option value="['Seychelles','SC']">Seychelles</option>
	<option value="['Sierra Leone','SL']">Sierra Leone</option>
	<option value="['Singapore','SG']">Singapore</option>
	<option value="['Sint Maarten (Dutch part)','SX']">Sint Maarten (Dutch part)</option>
	<option value="['Slovakia','SK']">Slovakia</option>
	<option value="['Slovenia','SI']">Slovenia</option>
	<option value="['Solomon Islands','SB']">Solomon Islands</option>
	<option value="['Somalia','SO']">Somalia</option>
	<option value="['South Africa','ZA']">South Africa</option>
	<option value="['South Sudan','SS']">South Sudan</option>
	<option value="['Spain','ES']">Spain</option>
	<option value="['Sri Lanka','LK']">Sri Lanka</option>
	<option value="['Sudan','SD']">Sudan</option>
	<option value="['Suriname','SR']">Suriname</option>
	<option value="['Swaziland','SZ']">Swaziland</option>
	<option value="['Sweden','SE']">Sweden</option>
	<option value="['Switzerland','CH']">Switzerland</option>
	<option value="['Syrian Arab Republic','SY']">Syrian Arab Republic</option>
	<option value="['Taiwan, Province of China','TW']">"Taiwan, Province of China"</option>
	<option value="['Tajikistan','TJ']">Tajikistan</option>
	<option value="['Tanzania, United Republic of','TZ']">"Tanzania, United Republic of"</option>
	<option value="['Thailand','TH']">Thailand</option>
	<option value="['Timor-Leste','TL']">Timor-Leste</option>
	<option value="['Togo','TG']">Togo</option>
	<option value="['Tokelau','TK']">Tokelau</option>
	<option value="['Tonga','TO']">Tonga</option>
	<option value="['Trinidad and Tobago','TT']">Trinidad and Tobago</option>
	<option value="['Tunisia','TN']">Tunisia</option>
	<option value="['Turkey','TR']">Turkey</option>
	<option value="['Turkmenistan','TM']">Turkmenistan</option>
	<option value="['Turks and Caicos Islands','TC']">Turks and Caicos Islands</option>
	<option value="['Tuvalu','TV']">Tuvalu</option>
	<option value="['Uganda','UG']">Uganda</option>
	<option value="['Ukraine','UA']">Ukraine</option>
	<option value="['United Arab Emirates','AE']">United Arab Emirates</option>
	<option value="['United Kingdom','GB']">United Kingdom</option>
	<option value="['United States','US']">United States</option>
	<option value="['United States Minor Outlying Islands','UM']">United States Minor Outlying Islands</option>
	<option value="['Uruguay','UY']">Uruguay</option>
	<option value="['Uzbekistan','UZ']">Uzbekistan</option>
	<option value="['Vanuatu','VU']">Vanuatu</option>
	<option value="['Venezuela, Bolivarian Republic of','VE']">"Venezuela, Bolivarian Republic of"</option>
	<option value="['Viet Nam','VN']">Viet Nam</option>
	<option value="['Virgin Islands, British','VG']">"Virgin Islands, British"</option>
	<option value="['Virgin Islands, U.S.','VI']">"Virgin Islands, U.S."</option>
	<option value="['Wallis and Futuna','WF']">Wallis and Futuna</option>
	<option value="['Western Sahara','EH']">Western Sahara</option>
	<option value="['Yemen','YE']">Yemen</option>
	<option value="['Zambia','ZM']">Zambia</option>
	<option value="['Zimbabwe','ZW']">Zimbabwe</option>
</select> 
<br>
	<input type="radio" name="searchType" value="Text"  checked="checked"/> Text
	<input type="radio" name="searchType" value="Image" /> Image
	<input type="checkbox" name="Trends" value="Trends" /> Trends

	<br>
	<input type="submit" value="search"  />
	
</body>

</html>