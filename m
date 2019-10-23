Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A62BFE2744
	for <lists+usrp-users@lfdr.de>; Thu, 24 Oct 2019 01:59:45 +0200 (CEST)
Received: from [::1] (port=59956 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iNQXY-0007Ji-OM; Wed, 23 Oct 2019 19:59:44 -0400
Received: from llmx2.ll.mit.edu ([129.55.12.48]:37666)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <prvs=5199f25102=richard.muri@ll.mit.edu>)
 id 1iNQXU-0006um-AJ
 for usrp-users@lists.ettus.com; Wed, 23 Oct 2019 19:59:40 -0400
Received: from LLE2K16-MBX01.mitll.ad.local (LLE2K16-MBX01.mitll.ad.local) by
 llmx2.ll.mit.edu (unknown) with ESMTPS id x9NNwxU7026656 for
 <usrp-users@lists.ettus.com>; Wed, 23 Oct 2019 19:58:59 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Controlling an X310 from embedded devices
Thread-Index: AdWJ/HL4vnBolMrXQciHvM+r4m+4bQ==
Date: Wed, 23 Oct 2019 23:58:58 +0000
Message-ID: <8ac6e3b3f5234b0fab9a6528f4f16cc6@ll.mit.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.1.84]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-23_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910230213
Subject: [USRP-users] Controlling an X310 from embedded devices
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
From: "Muri,
 Richard - 1002 - MITLL via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Muri, Richard - 1002 - MITLL" <Richard.Muri@ll.mit.edu>
Content-Type: multipart/mixed; boundary="===============4357176105322974486=="
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

--===============4357176105322974486==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0243_01D589DC.4DEB3BD0"

------=_NextPart_000_0243_01D589DC.4DEB3BD0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0244_01D589DC.4DEB3BD0"


------=_NextPart_001_0244_01D589DC.4DEB3BD0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

 

I'm looking into controlling an X310 from an embedded device. I wanted to
probe the users list before I bury myself into a rabbit hole.

 

Is it possible to control a USRP directly from an FPGA? I noticed that UHD
use VRT as the transport protocol
(http://files.ettus.com/manual/page_rtp.html). If I have an FPGA that speaks
VRT over Ethernet or Aurora can I control a USRP, and are there
examples/documentation of controlling a USRP without running an instance of
UHD? In my use case I need to send timed transmit commands and data packets,
and timed receive commands and receive data packets. 

 

In the case that running without UHD is a headache I don't want to brave,
are there examples of running UHD on ARM cores?

 

Any insight is appreciated.

 

Thanks,

Richard

 

 


------=_NextPart_001_0244_01D589DC.4DEB3BD0
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Hello,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I&#8217;m =
looking into controlling an X310 from an embedded device. I wanted to =
probe the users list before I bury myself into a rabbit =
hole.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Is it possible to control a USRP directly from an =
FPGA? I noticed that UHD use VRT as the transport protocol (<a =
href=3D"http://files.ettus.com/manual/page_rtp.html">http://files.ettus.c=
om/manual/page_rtp.html</a>). If I have an FPGA that speaks VRT over =
Ethernet or Aurora can I control a USRP, and are there =
examples/documentation of controlling a USRP without running an instance =
of UHD? In my use case I need to send timed transmit commands and data =
packets, and timed receive commands and receive data packets. =
<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>In the case that running without UHD is a headache I =
don&#8217;t want to brave, are there examples of running UHD on ARM =
cores?<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Any insight is appreciated.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p><p =
class=3DMsoNormal>Richard<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_001_0244_01D589DC.4DEB3BD0--

------=_NextPart_000_0243_01D589DC.4DEB3BD0
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIISVTCCA4ow
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
9xICAQMBCTANBgsqhkiG9xICAQMBCjANBgsqhkiG9xICAQMBCzANBgsqhkiG9xICAQMBDjANBgsq
hkiG9xICAQMBDzANBgsqhkiG9xICAQMBEDANBgkqhkiG9w0BAQsFAAOCAQEAMJYRwLPJ91K7e2mA
2Nj10W0o5JMHYkaa+ctL8/xY8QzIHFI5Ij+iydpPN9KCYn/4Sy80T3aNoYkFlS0GRQXhf0nsiY7T
WJwAKw4AiO/yJ37/oRKRgtyRicvaJ6RjlHCXBOalFLw9UtpodP4/idC51lxzsolaQZraBjVe7PL9
5PhS7D+22NffInzLdIb1DBf54NwOVfPIgABtxH1fhZrja7EhR9RoUw5E1O6iWaAuP/xWhSTQFWlh
yA0/kkIi9/HXaY0hYnhcjcbPPqjpyfIhSFjjXhjqK7t2wPrSrBFLFUbnLiNlgQHrvNYF5IqgIfnS
BWIrm3rfLhpZZJ/xJ7Yf6DCCBPwwggPkoAMCAQICE1kAA865kne1IaZr7rMAAAADzrkwDQYJKoZI
hvcNAQELBQAwUTELMAkGA1UEBhMCVVMxHzAdBgNVBAoMFk1JVCBMaW5jb2xuIExhYm9yYXRvcnkx
DDAKBgNVBAsMA1BLSTETMBEGA1UEAwwKTUlUTEwgQ0EtNTAeFw0xOTA0MDIxMzU0NThaFw0yMjA0
MDExMzU0NThaMGExCzAJBgNVBAYTAlVTMR8wHQYDVQQKExZNSVQgTGluY29sbiBMYWJvcmF0b3J5
MQ8wDQYDVQQLEwZQZW9wbGUxIDAeBgNVBAMTF011cmkuUmljaGFyZC5KLjUwMDE4ODc0MIIBIjAN
BgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA518GgF+s5vAS2HUNk6yfs8O2rpBZW7r9Y5LxYtDD
6IfqhGl5MiKBdleMKCrqTTRzvf5/euW5zv+pCyH6ueARL4S1aMyMBs8scpr1mLfYA4ASv0+zNrhh
nzfQihnt+WjD+PGbLOTqgftAurKvLVQb8OdRPTn+2g7fbqIiP04RWjDc4NIkEBMUzobhVlZQVfGC
Y6YS3/cagbpcEeMNJhDQC4D/goqxF2l4LPHwELQY8Rv0DIq5Xd9FDGzrrOF01bikeCOYFdE/kJMm
2NfBBs4pGvMLHl9/bPPTORsDKmMitGgDmCIJz97bdFQOzfabODTfkLJh0jjEziRPyggkK6opWwID
AQABo4IBuzCCAbcwHQYDVR0OBBYEFDVO4W/uwJWeJUjuiiY1sHAZ2s+6MA4GA1UdDwEB/wQEAwIG
wDAfBgNVHSMEGDAWgBQv77vGDR276Wr+rGfzBzsIdvZLWTAzBgNVHR8ELDAqMCigJqAkhiJodHRw
Oi8vY3JsLmxsLm1pdC5lZHUvZ2V0Y3JsL2xsY2E1MGYGCCsGAQUFBwEBBFowWDAtBggrBgEFBQcw
AoYhaHR0cDovL2NybC5sbC5taXQuZWR1L2dldHRvL2xsY2E1MCcGCCsGAQUFBzABhhtodHRwOi8v
b2NzcC5sbC5taXQuZWR1L29jc3AwPQYJKwYBBAGCNxUHBDAwLgYmKwYBBAGCNxUIg4PlHYfsp2aG
rYcVg+rwRYW2oR8dhcveMof/inMCAWQCAQgwIgYDVR0lAQH/BBgwFgYIKwYBBQUHAwQGCisGAQQB
gjcKAwwwIgYDVR0RBBswGYEXUmljaGFyZC5NdXJpQGxsLm1pdC5lZHUwGAYDVR0gBBEwDzANBgsq
hkiG9xICAQMBCDAnBgkrBgEEAYI3FAIEGh4YAEwATABVAHMAZQByAFMAaQBnAC0AUwBXMA0GCSqG
SIb3DQEBCwUAA4IBAQBBDWp9Y0AGx1/DWwum9KSazUsT7vYIje2oS/Wk6VCeyipB20NU2SAu6PM1
FWngDjipdxJAaeDUb6aM9O5w7gwfJprTXAQ5J1pQYAyxvFjON2pq3oz7vdylVvm/bd4JnFP8ds2z
LJBIt/bOl9YWGc3OHUL/eUQ5P0nFoLUXF0AoJdOKCd6HKHNadjMtuAmWbHFwhltTGtjX94j64Gfc
w5bHtnl0sJaVn1Uu/wZgkyp9IPuh5X3CF22Gj3l1iwrDQ2bz9rmdQpYqgyP7oYqi/RL2MgzZ4Ng7
FDNUclB8YRJzYlmDdVlhNrxq7N8YsUJ7BQg8pe4x7VWdpiGidEKPpVYDMIIE/zCCA+egAwIBAgIT
WQADjGuqy54v3eB63gAAAAOMazANBgkqhkiG9w0BAQsFADBRMQswCQYDVQQGEwJVUzEfMB0GA1UE
CgwWTUlUIExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECwwDUEtJMRMwEQYDVQQDDApNSVRMTCBD
QS01MB4XDTE5MDExNjE1NTkwOVoXDTIyMDExNTE1NTkwOVowYTELMAkGA1UEBhMCVVMxHzAdBgNV
BAoTFk1JVCBMaW5jb2xuIExhYm9yYXRvcnkxDzANBgNVBAsTBlBlb3BsZTEgMB4GA1UEAxMXTXVy
aS5SaWNoYXJkLkouNTAwMTg4NzQwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCgIFGi
SyvcKm5nUpTQ9F/k32yFipRZ/3k9R94ivEwbbLZVyln9r6DqdZ3Qas/4EC7tkGdRSNZral+QzAMj
PDF2kfYdH5mqLuIpV0d5uimzoGhAxN3Kvo5gSJVEcXXc1aqvrQVKRj68uPC5Zi68Sc/2K/oZ1Izn
o+IUSG6vl4kpuXBLGEf0jgbuOk1KwMUegiyrjatk2JqseSJMss3/thomiq9i0775EW2al6FpK6WR
4xox3ltGmCg2BfUF07cu1WBQyIDgqsUMlxshmagUN97+XKyYXtB7DApGKgAmk3kVZLlu/nlgbhsN
pPBoOmHukFTXbDZQFGZY3pMCvyB7RnQ3AgMBAAGjggG+MIIBujAdBgNVHQ4EFgQUw7qbTU+dvgpa
vu3j4hVx5oULZl8wDgYDVR0PAQH/BAQDAgUgMB8GA1UdIwQYMBaAFC/vu8YNHbvpav6sZ/MHOwh2
9ktZMDMGA1UdHwQsMCowKKAmoCSGImh0dHA6Ly9jcmwubGwubWl0LmVkdS9nZXRjcmwvbGxjYTUw
ZgYIKwYBBQUHAQEEWjBYMC0GCCsGAQUFBzAChiFodHRwOi8vY3JsLmxsLm1pdC5lZHUvZ2V0dG8v
bGxjYTUwJwYIKwYBBQUHMAGGG2h0dHA6Ly9vY3NwLmxsLm1pdC5lZHUvb2NzcDA9BgkrBgEEAYI3
FQcEMDAuBiYrBgEEAYI3FQiDg+Udh+ynZoathxWD6vBFhbahHx2F69Bwg+vtIAIBZAIBCTAlBgNV
HSUEHjAcBgRVHSUABggrBgEFBQcDBAYKKwYBBAGCNwoDBDAiBgNVHREEGzAZgRdSaWNoYXJkLk11
cmlAbGwubWl0LmVkdTAYBgNVHSAEETAPMA0GCyqGSIb3EgIBAwEIMCcGCSsGAQQBgjcUAgQaHhgA
TABMAFUAcwBlAHIARQBuAGMALQBTAFcwDQYJKoZIhvcNAQELBQADggEBAI05eksRfEq3fZ8KCP+w
Ds4foRZ2WnzcesR2y9QMHhAUC5ndr84tf0GxWl9WqUhqWrR8210lStKoajNtEjozqkXEmQ8frKux
1nc7gkqHyyW/ULW6rEz2ezBapYppTrEZciRfCflFr9obAau3uWHcQeutIFBJZ+GLcxqtr+bkbNs6
9mACJEmId3woe+gan+jHncqlLR3eMEAsuUSeXBEd/PgvJGZUbxDUoSTzzhXaJRvP+8M9PKmTAoCV
O3e+otBr+dkFF6ord1RitvL/G9QR/3gRmVPoXboPHxde8H3nAPVdjKWZ8rLLn/ZD/NUwDLNTfvgl
VnuJl2eSPbrOL41dHtQxggMKMIIDBgIBATBoMFExCzAJBgNVBAYTAlVTMR8wHQYDVQQKDBZNSVQg
TGluY29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLDANQS0kxEzARBgNVBAMMCk1JVExMIENBLTUCE1kA
A865kne1IaZr7rMAAAADzrkwCQYFKw4DAhoFAKCCAXcwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEH
ATAcBgkqhkiG9w0BCQUxDxcNMTkxMDIzMjM1ODU3WjAjBgkqhkiG9w0BCQQxFgQUGDftbgbBm18N
I7tLHSX5rK+Y00owJAYJKoZIhvcNAQkPMRcwFTAKBggqhkiG9w0DBzAHBgUrDgMCGjB3BgkrBgEE
AYI3EAQxajBoMFExCzAJBgNVBAYTAlVTMR8wHQYDVQQKDBZNSVQgTGluY29sbiBMYWJvcmF0b3J5
MQwwCgYDVQQLDANQS0kxEzARBgNVBAMMCk1JVExMIENBLTUCE1kAA4xrqsueL93get4AAAADjGsw
eQYLKoZIhvcNAQkQAgsxaqBoMFExCzAJBgNVBAYTAlVTMR8wHQYDVQQKDBZNSVQgTGluY29sbiBM
YWJvcmF0b3J5MQwwCgYDVQQLDANQS0kxEzARBgNVBAMMCk1JVExMIENBLTUCE1kAA4xrqsueL93g
et4AAAADjGswDQYJKoZIhvcNAQEBBQAEggEAnfnEPLUsiK+AnrGx/OtEMCNj84BOEH3QV6+bJO65
R8zLR1DD1SE/W992rq1P+JF2xJBpeTvu7KADaAQKsZ7pVlOJaDtYcQn+mhBJuvAg/b7AWOPjusy5
Ccu1vqqwncsFfjuirCPz/m0kKTrI/9h/5O8lvO8Z3kVMtgPKtTkfTYSYgglbK1AyeNX5y7nNMP6x
WKPA41Um0CiovGl4YZ7L1Vml6nh4oful18t0FfGq/5O3HyBCmLp0EcDiQyraHd4hrgf5xUot4q/Z
HZPlFeSySNMnOYuAzg79MtXYwofzuze7DXBvCVBBI3YD6K/SbZ7zGU8nuynv1rEkW1mCmsZzyQAA
AAAAAA==

------=_NextPart_000_0243_01D589DC.4DEB3BD0--


--===============4357176105322974486==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4357176105322974486==--

