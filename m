Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F8138D0D
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jun 2019 16:32:38 +0200 (CEST)
Received: from [::1] (port=35200 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hZFv0-0000fv-6W; Fri, 07 Jun 2019 10:32:34 -0400
Received: from llmx3.ll.mit.edu ([129.55.12.49]:42920)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <prvs=10617d19a8=blapointe@ll.mit.edu>)
 id 1hZFuw-0000Y7-Kh
 for usrp-users@lists.ettus.com; Fri, 07 Jun 2019 10:32:30 -0400
Received: from LLE2K16-MBX03.mitll.ad.local (LLE2K16-MBX03.mitll.ad.local) by
 llmx3.ll.mit.edu (unknown) with ESMTPS id x57EVkK2019002 for
 <usrp-users@lists.ettus.com>; Fri, 7 Jun 2019 10:31:49 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Issues streaming only one channel from LFRX in X310 using
 rx_samples_to_file
Thread-Index: AdUdPH3ia5wBl6BDQ3OLkFXhGgcsNA==
Date: Fri, 7 Jun 2019 14:30:54 +0000
Message-ID: <6d6a2cd54454423ab2581b4b35c0bdef@ll.mit.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.217.153]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-07_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906070102
Subject: [USRP-users] Issues streaming only one channel from LFRX in X310
 using rx_samples_to_file
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Lapointe,
 Benjamin - 0333 - MITLL via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Lapointe, Benjamin - 0333 - MITLL" <blapointe@ll.mit.edu>
Content-Type: multipart/mixed; boundary="===============7308116769361863193=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============7308116769361863193==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0FF8_01D51D1C.153E1E60"

------=_NextPart_000_0FF8_01D51D1C.153E1E60
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0FF9_01D51D1C.153E1E60"


------=_NextPart_001_0FF9_01D51D1C.153E1E60
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

I am trying to stream one, and only one, channel from a LFRX inside a X310
using the rx_samples_to_file example, but haven't been fully successful.
It seems to always stream data for the second channel as well.

 

The command I am running is:

rx_samples_to_file -file=/path_to_file/file.dat -type=short -ant="A"
-nsamps=5000 -rate=1e6 -freq=0e3

 

This gives me my data for antenna RXA, but it also streams zeros in the
place of antenna RXB.

If I change antenna to "AB", then I get data for both antennas RXA and RXB,
as I would expect.

 

I've also tried using the "channel" option, but that doesn't seem to make a
difference.

 

I've also tried using the "wirefmt" option, but that throws an error for
anything other than "sc16".  

 

Thanks,

-Ben

 

 


------=_NextPart_001_0FF9_01D51D1C.153E1E60
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:210465690;
	mso-list-type:hybrid;
	mso-list-template-ids:195060460 75892414 67698691 67698693 67698689 =
67698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0D8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Hi,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I am trying =
to stream one, and only one, channel from a LFRX inside a X310 using the =
rx_samples_to_file example, but haven&#8217;t been fully =
successful.&nbsp;&nbsp; It seems to always stream data for the second =
channel as well.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>The command =
I am running is:<o:p></o:p></p><p class=3DMsoNormal>rx_samples_to_file =
&#8211;file=3D/path_to_file/file.dat &#8211;type=3Dshort =
&#8211;ant=3D&#8221;A&#8221; &#8211;nsamps=3D5000 &#8211;rate=3D1e6 =
&#8211;freq=3D0e3<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>This gives =
me my data for antenna RXA, but it also streams zeros in the place of =
antenna RXB.<o:p></o:p></p><p class=3DMsoNormal>If I change antenna to =
&#8220;AB&#8221;, then I get data for both antennas RXA and RXB, as I =
would expect.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>I&#8217;ve also tried using the &#8220;channel&#8221; =
option, but that doesn&#8217;t seem to make a =
difference.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>I&#8217;ve also tried using the &#8220;wirefmt&#8221; =
option, but that throws an error for anything other than =
&#8220;sc16&#8221;.&nbsp; <o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p><p =
class=3DMsoNormal>-Ben<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_001_0FF9_01D51D1C.153E1E60--

------=_NextPart_000_0FF8_01D51D1C.153E1E60
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIISWTCCA4ow
ggJyoAMCAQICAQEwDQYJKoZIhvcNAQELBQAwVjELMAkGA1UEBhMCVVMxHzAdBgNVBAoTFk1JVCBM
aW5jb2xuIExhYm9yYXRvcnkxDDAKBgNVBAsTA1BLSTEYMBYGA1UEAxMPTUlUTEwgUm9vdCBDQS0y
MB4XDTE2MDQyMDEyMDAwMFoXDTM1MDQxOTIzNTk1OVowVjELMAkGA1UEBhMCVVMxHzAdBgNVBAoT
Fk1JVCBMaW5jb2xuIExhYm9yYXRvcnkxDDAKBgNVBAsTA1BLSTEYMBYGA1UEAxMPTUlUTEwgUm9v
dCBDQS0yMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv3WoBEGOOJtm4ucvaf6vKIFP
s8watCd6Smwq/XeRNo7P3jPIxNPwF398RGDUmPJIXA7idzD6j0opFIW+kLqYye9e788PV0dqaJlX
8818fNDbSE+8B6hieqKTR7VfOI74UVQEUKVRFuRFw6uVYuvgew2Tj/C2dEee37eruQl5nHkbV2Os
WnZ7O+yt+etd6HRcaXLlP9q8WKgA3B7vkOVIMCKoAuaWj+BFq7K+WNkiyi/KdOH9JmOpbyRK4jcA
7xbLnF8JFUSNg5c4Y1BJrFaZtkCeG6Nm9p524GllkRFzPgpj8VicV+AK+9rY07dTx02kYotTnKuy
0YxBAwsUXxAQEwIDAQABo2MwYTAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBT/ycllTFOA8akM
PCGugirH7vgy+zAfBgNVHSMEGDAWgBT/ycllTFOA8akMPCGugirH7vgy+zAOBgNVHQ8BAf8EBAMC
AYYwDQYJKoZIhvcNAQELBQADggEBAHqYfEf/3J5aMKhlYQ0PnUAbMB8jZSr9/HvjfOF00crFUCfS
rqG8JQwo+S/iq66gcp62FEgJ0fQkDgVg6m+C2ETo1LoWiSxhYCfcSIQECljlXwR8wFSayF822S69
IqvHhdq4d58jU6gYi6ssjU4vwsvsVLRJKk/m/Cg/w8gW6YHM5ahBD6/5Ccel2fI7oSmskO991+ot
rC11YfDwCFvz7Am0r+K9iVhSWta4hmIuV0YBia07eZKSO02LPgQ8YOz3ku0Yt+mh8VWRKux2CcYj
Mpk+WDV0BMp75tqb6pqBFkcKvEBXqxg+8+G/umjii4H0c5kvJhaQyykbmOKmxO9IcJIwggTAMIID
qKADAgECAgEGMA0GCSqGSIb3DQEBCwUAMFYxCzAJBgNVBAYTAlVTMR8wHQYDVQQKExZNSVQgTGlu
Y29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLEwNQS0kxGDAWBgNVBAMTD01JVExMIFJvb3QgQ0EtMjAe
Fw0xNzAzMDIxMjAwMDBaFw0yNjAzMDIyMzU5NTlaMFExCzAJBgNVBAYTAlVTMR8wHQYDVQQKDBZN
SVQgTGluY29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLDANQS0kxEzARBgNVBAMMCk1JVExMIENBLTUw
ggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCnmoMOvTkfw7nq19mrWazGaa+Q83Uv0+AT
XT3q6kr+WExIMIZ87C74WCcRXpvO7uvx7HvMsYWAFHW93wQwhjytxHIOZgKNJ4VnGVDUl+KI7g0n
9+Zjt3hB3HhHbcvbe9+Y4jz+XzCiLl2OaYvICKbxvbBSCLtPEeZQ6x6Tb6EK0ym0gvYeHO3kuuY+
SJHJMltbrLnIVLxjZrNVS77zXKvu6Q3hSdkRIB7kJgEXfL+p/z/2p94bEEZ2TnQz0TkOjG+Jq7Ul
XlFRtvsYcDPEQD3UNkZsWcXgC1hXG8TGknUcAhlGxVhlKlFLmNd7342seGy2s9YxNDnSE+eXTtb0
I5LLAgMBAAGjggGcMIIBmDASBgNVHRMBAf8ECDAGAQH/AgEAMB0GA1UdDgQWBBQv77vGDR276Wr+
rGfzBzsIdvZLWTAfBgNVHSMEGDAWgBT/ycllTFOA8akMPCGugirH7vgy+zAOBgNVHQ8BAf8EBAMC
AYYwZwYIKwYBBQUHAQEEWzBZMC4GCCsGAQUFBzAChiJodHRwOi8vY3JsLmxsLm1pdC5lZHUvZ2V0
dG8vTExSQ0EyMCcGCCsGAQUFBzABhhtodHRwOi8vb2NzcC5sbC5taXQuZWR1L29jc3AwNAYDVR0f
BC0wKzApoCegJYYjaHR0cDovL2NybC5sbC5taXQuZWR1L2dldGNybC9MTFJDQTIwgZIGA1UdIASB
ijCBhzANBgsqhkiG9xICAQMBBjANBgsqhkiG9xICAQMBCDANBgsqhkiG9xICAQMBBzANBgsqhkiG
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
A1UEChMWTUlUIExpbmNvbG4gTGFib3JhdG9yeTEPMA0GA1UECxMGUGVvcGxlMSUwIwYDVQQDExxM
YXBvaW50ZS5CZW5qYW1pbi5ELjUwMDA5OTgwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKC
AQEAz/uhz+o/J7XURLGVYW4mqu3JflOBaUYA2MFkPwb3iHyUguPmdaQnt9lLz1BTr6FEhSVuxL31
7OId5Afmm67aMBuYw0Vb0+sLIV91Z3njAG3U3IgwKieHWh71xQt58QwpV99yS6RjJveiOE0CC+Ba
ue/IPcwPq9EKTK+6wa3h9um+5YsekXtdQKoSR8Gxb25tS6hlP2LigY8eYCiGf6lv4Z7Vyg0TADvX
wISZRfttosTbXzZHdRIR1S7ifRALZFugqYGoy9ND8UCUG61nijXZP2m8NprrHY3KFXIAJcV0vCA3
iiHcglpyjzImndcAqxxfaQGsiJs5UGT4ADiZWIXYQwIDAQABo4IBuzCCAbcwHQYDVR0OBBYEFMlJ
ooZTRBpytEPySWVj1W6cMC/NMA4GA1UdDwEB/wQEAwIFIDAfBgNVHSMEGDAWgBQv77vGDR276Wr+
rGfzBzsIdvZLWTAzBgNVHR8ELDAqMCigJqAkhiJodHRwOi8vY3JsLmxsLm1pdC5lZHUvZ2V0Y3Js
L2xsY2E1MGYGCCsGAQUFBwEBBFowWDAtBggrBgEFBQcwAoYhaHR0cDovL2NybC5sbC5taXQuZWR1
L2dldHRvL2xsY2E1MCcGCCsGAQUFBzABhhtodHRwOi8vb2NzcC5sbC5taXQuZWR1L29jc3AwPQYJ
KwYBBAGCNxUHBDAwLgYmKwYBBAGCNxUIg4PlHYfsp2aGrYcVg+rwRYW2oR8dhevQcIPr7SACAWQC
AQkwJQYDVR0lBB4wHAYEVR0lAAYIKwYBBQUHAwQGCisGAQQBgjcKAwQwHwYDVR0RBBgwFoEUYmxh
cG9pbnRlQGxsLm1pdC5lZHUwGAYDVR0gBBEwDzANBgsqhkiG9xICAQMBCDAnBgkrBgEEAYI3FAIE
Gh4YAEwATABVAHMAZQByAEUAbgBjAC0AUwBXMA0GCSqGSIb3DQEBCwUAA4IBAQBU5KsQq9wjVaMB
EU33bS+uQP6QMHb+a/dlYfzePLSQhazYzLUwqU6VdCTiheOYxT/PIxY1WBAmvfQ7Zvp4Pm5S9Pr+
sCm2Q3f2yKzgbwuRkAkCYFfgeMv0PLBUt1ijUuP+jiXfRA77VnTWNkvKMPowXHX2HXksRnoFjR8N
5hTmeedm/H1X/kCeJm7OWrMnPTr5ViHgNn/xJlAfaryMIpFy24/cJtOMbjGvHmOmYPEWCQndaGDR
54blqgIB3cxrSZMp0zOktETkD3xo2SJjMARf0+8a903aicJQtM3DChNQ3Jytzwi19ER7UszHBOO5
JPpxoWUpN7EUN+3zMXUlxcy8MYIDCjCCAwYCAQEwaDBRMQswCQYDVQQGEwJVUzEfMB0GA1UECgwW
TUlUIExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECwwDUEtJMRMwEQYDVQQDDApNSVRMTCBDQS01
AhNZAAAjrVe54aNw5rXJAAAAACOtMAkGBSsOAwIaBQCgggF3MBgGCSqGSIb3DQEJAzELBgkqhkiG
9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE5MDYwNzE0MzA1MlowIwYJKoZIhvcNAQkEMRYEFB0eEDYE
U0q4R/jTHPMz1D5wFF60MCQGCSqGSIb3DQEJDzEXMBUwCgYIKoZIhvcNAwcwBwYFKw4DAhowdwYJ
KwYBBAGCNxAEMWowaDBRMQswCQYDVQQGEwJVUzEfMB0GA1UECgwWTUlUIExpbmNvbG4gTGFib3Jh
dG9yeTEMMAoGA1UECwwDUEtJMRMwEQYDVQQDDApNSVRMTCBDQS01AhNZAAAxwm8GLh1D/7I4AAAA
ADHCMHkGCyqGSIb3DQEJEAILMWqgaDBRMQswCQYDVQQGEwJVUzEfMB0GA1UECgwWTUlUIExpbmNv
bG4gTGFib3JhdG9yeTEMMAoGA1UECwwDUEtJMRMwEQYDVQQDDApNSVRMTCBDQS01AhNZAAAxwm8G
Lh1D/7I4AAAAADHCMA0GCSqGSIb3DQEBAQUABIIBAF5F6IOhNu2BHc+qlwm3EqrTebRCQ57k3zeF
rFvf2RU7PDJm4bZQ2ZL273prH/A1zcYFDqa162nzGujXcZslDTbOcVywx2N9YbYtMbknBy3Xmejh
YTb7al2XYXiw0iU8tX16E2XRLFBRwTQ+gB4bg8vFh/pF25PPFxnFRcpvcT9NxJhD2DXhw6FGUNVc
E7zp4h5dj0YaJzjpRysEkhikbv1ppoLkD+734jT/IQhUDxAdrdwL0T4mWY2cwRW0JoorYgDkss9G
2ftjfc9NJo1Nw/4Wl5Qh4Fipu1m79j7YsNgIAcX+FvlMKjlPAqMCWTW8aGo0+6ZzeUu2IKa8ZRox
/+UAAAAAAAA=

------=_NextPart_000_0FF8_01D51D1C.153E1E60--


--===============7308116769361863193==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7308116769361863193==--

