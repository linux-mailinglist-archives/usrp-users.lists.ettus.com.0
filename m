Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 140977DD1F
	for <lists+usrp-users@lfdr.de>; Thu,  1 Aug 2019 16:00:31 +0200 (CEST)
Received: from [::1] (port=47422 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1htBd6-0003eU-Nh; Thu, 01 Aug 2019 10:00:28 -0400
Received: from mxout1.aau.at ([143.205.176.170]:49982)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <davide.righini@aau.at>)
 id 1htBd1-0003XX-TW
 for usrp-users@lists.ettus.com; Thu, 01 Aug 2019 10:00:24 -0400
Received: from exmbx1.ad.aau.at (exmbx1.ad.aau.at [143.205.64.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mxout1.aau.at (AAU_APP_Mailserver) with ESMTPS id 45zsNt1bd9zhh
 for <usrp-users@lists.ettus.com>; Thu,  1 Aug 2019 15:59:42 +0200 (CEST)
Received: from ex16-03.ad.aau.at (143.205.65.151) by exmbx1.ad.aau.at
 (143.205.64.225) with Microsoft SMTP Server (TLS) id 15.0.1395.4; Thu, 1 Aug
 2019 15:59:41 +0200
Received: from eslaprighini (143.205.176.8) by ex16-03.ad.aau.at
 (143.205.65.151) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Thu, 1 Aug 2019
 15:59:41 +0200
To: <usrp-users@lists.ettus.com>
Date: Thu, 1 Aug 2019 15:59:36 +0200
Message-ID: <011f01d54871$5dd45b00$197d1100$@aau.at>
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdVIa55THz14saqwQIC00NmwMjqYHQ==
Content-Language: de-at
MIME-Version: 1.0
X-Originating-IP: [143.205.176.8]
X-ClientProxiedBy: EXCAS2.ad.aau.at (143.205.64.230) To ex16-03.ad.aau.at
 (143.205.65.151)
Subject: [USRP-users] USRP B210 GPS
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
From: Davide Righini via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Davide Righini <davide.righini@aau.at>
Content-Type: multipart/mixed; boundary="===============8212423189851201067=="
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

--===============8212423189851201067==
Content-Language: de-at
Content-Type: multipart/signed; micalg=SHA1;
	boundary="----=_NextPart_000_0117_01D54882.1E22C080";
	protocol="application/x-pkcs7-signature"

------=_NextPart_000_0117_01D54882.1E22C080
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0118_01D54882.1E22C080"


------=_NextPart_001_0118_01D54882.1E22C080
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Dear all,

I'm trying to generate synchronized pulses with specific timing, based on
the GPS synchronization.

The idea is to send these pulses at approximately the "same time" from
multiple USRPs.

 

I have two B210 with an internal GPS module. 

I use this environment: GNU C++ version 5.4.0 20160609; Boost_105800;
UHD_3.11.0.HEAD-0-ga1b5c4ae

The usrp are connected to a laptop with Linux virtual machine.

With this configuration I can run my code and the uhd examples without any
problem.

 

Since I need a to generate a pulse at a specific time (for example a pulse
every second), I use the following code:

 

                // wait for GPS look procedure and synchronization of USRP
time to GPS time (as uhd example: sync_to_gps.cpp )

uhd::time_spec_t time_last_pps = tx_usrp->get_time_now(mboard); 

-->         while (!( (time_last_pps.get_tick_count(10000) < 3))) {

time_last_pps = tx_usrp->get_time_now(mboard);

}

// send pulse

 

When the usrp is running the while cycle the CPU of the connected laptop is
heavily charged and on the USB port a lot of data is flowing.

I supposed that the function get_time_now() does not need to communicate
with the laptop. 

Someone can explain why I get this flow of data between laptop and USRP
during this 'while' cycle?

 

Do you have suggestions to improve the pulse generation algorithm?

 

 

Best regards,

Davide

 


------=_NextPart_001_0118_01D54882.1E22C080
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DDE-AT =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span lang=3DEN-US>Dear all,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>I&#8217;m trying to generate =
synchronized pulses with specific timing, based on the GPS =
synchronization.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>The idea is to send these pulses at approximately the =
&#8220;same time&#8221; from multiple USRPs.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>I have two B210 with an internal =
GPS module. <o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>I use this environment: GNU C++ version 5.4.0 20160609; =
Boost_105800; UHD_3.11.0.HEAD-0-ga1b5c4ae<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>The usrp are connected to a laptop =
with Linux virtual machine.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>With this configuration I can run =
my code and the uhd examples without any =
problem.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Since I need a to generate a pulse at a specific time (for =
example a pulse every second), I use the following =
code:<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i>// wait for GPS look procedure and =
synchronization of USRP time to GPS time (as uhd example: =
sync_to_gps.cpp )<o:p></o:p></i></span></p><p class=3DMsoNormal =
style=3D'margin-left:35.4pt'><i><span lang=3DEN-US>uhd::time_spec_t =
time_last_pps =3D tx_usrp-&gt;get_time_now(mboard); =
<o:p></o:p></span></i></p><p class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-family:Wingdings'>&agrave;</span></i><i><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while (!( =
(time_last_pps.get_tick_count(10000) &lt; 3))) =
{<o:p></o:p></span></i></p><p class=3DMsoNormal =
style=3D'margin-left:35.4pt;text-indent:35.4pt'><i><span =
lang=3DEN-US>time_last_pps =3D =
tx_usrp-&gt;get_time_now(mboard);<o:p></o:p></span></i></p><p =
class=3DMsoNormal style=3D'margin-left:35.4pt'><i><span =
lang=3DEN-US>}<o:p></o:p></span></i></p><p class=3DMsoNormal =
style=3D'margin-left:35.4pt'><i><span lang=3DEN-US>// send =
pulse<o:p></o:p></span></i></p><p class=3DMsoNormal><i><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></i></p><p class=3DMsoNormal><span =
lang=3DEN-US>When the usrp is running the while cycle the CPU of the =
connected laptop is heavily charged and on the USB port a lot of data is =
flowing.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I =
supposed that the function get_time_now() does not need to communicate =
with the laptop. <o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Someone can explain why I get this flow of data between =
laptop and USRP during this &#8216;while&#8217; =
cycle?<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Do you have suggestions to improve the pulse generation =
algorithm?<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Best regards,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Davide<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>
------=_NextPart_001_0118_01D54882.1E22C080--

------=_NextPart_000_0117_01D54882.1E22C080
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIO9TCCA7cw
ggKfoAMCAQICEAzn4OUX2Eb+j+Vg/BvwMDkwDQYJKoZIhvcNAQEFBQAwZTELMAkGA1UEBhMCVVMx
FTATBgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEkMCIGA1UE
AxMbRGlnaUNlcnQgQXNzdXJlZCBJRCBSb290IENBMB4XDTA2MTExMDAwMDAwMFoXDTMxMTExMDAw
MDAwMFowZTELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcGA1UECxMQd3d3
LmRpZ2ljZXJ0LmNvbTEkMCIGA1UEAxMbRGlnaUNlcnQgQXNzdXJlZCBJRCBSb290IENBMIIBIjAN
BgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArQ4VzuRDgFyxh/O3YPlxEqWu3CaUiKr0zvUgOShY
YAz4gNqpFZUyYTy1sSiEiorcnwoMgxd6j5Csiud5U1wxhCr2D5gyNnbM3t08qKLvavsh8lJh358g
1x/isdn+GGTSEltf+VgYNbxHzaE2+Wt/1LA4PsEbw4wz2dgvGP4oD7Ong9bDbkTAYTWWFv5ZnIt2
bdfxoksNK/8LctqeYNCOkDXGeFWHIKHP5W0KyEl8MZgzbCLph9AyWqK6E4IR7TkXnZk6cqHm+qTZ
1Rcxda6FfSKuPwFGhvYoecix2uRXF8R+HA6wtJKmVrO9spftqqfwt8WoP5UW0P+hlusIXxh3TwID
AQABo2MwYTAOBgNVHQ8BAf8EBAMCAYYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUReuir/SS
y4IxLVGLp6chnfNtyA8wHwYDVR0jBBgwFoAUReuir/SSy4IxLVGLp6chnfNtyA8wDQYJKoZIhvcN
AQEFBQADggEBAKIOvN/i7fDjcnN6ZJS/93Jm2DLkQnVirofr8tXZ3lazn8zOFCi5DZdgXBJMWOTT
PYNJRViXNWkaqEfqVsZ5qxLYZ4GE338JPJTmuCYsIL09syiJ91//IuKXhB/pZe+H4N/BZ0mzXeuy
CSrrJu14vn0/K/O3JjVtX4kBtklbnwEFm6s9JcHMtn/C8W+GxvpkaOuBLZTrQrf6jB7dYvG+UGe3
bL3z8R9rDDYHFn83fKlbbXrxEkZgg9cnBL5Lzpe+w2cqaBHfgOcMM2a/Ew0UbvN/H2MQHvqNGyVt
bI+lt2EBsdKjJqEQcZ2t4sP5w5lRtysHCM4u5lCyp/oKRS+i8PIwggUAMIID6KADAgECAhADS+4X
H7fhBjcv1HJCQL0qMA0GCSqGSIb3DQEBCwUAMGUxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdp
Q2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xJDAiBgNVBAMTG0RpZ2lDZXJ0IEFz
c3VyZWQgSUQgUm9vdCBDQTAeFw0xNDExMTgxMjAwMDBaFw0yNDExMTgxMjAwMDBaMGkxCzAJBgNV
BAYTAk5MMRYwFAYDVQQIEw1Ob29yZC1Ib2xsYW5kMRIwEAYDVQQHEwlBbXN0ZXJkYW0xDzANBgNV
BAoTBlRFUkVOQTEdMBsGA1UEAxMUVEVSRU5BIFBlcnNvbmFsIENBIDMwggEiMA0GCSqGSIb3DQEB
AQUAA4IBDwAwggEKAoIBAQDGpbsfVYL0pTRyFHJlm1/V6qBo2JuCiU9TYpx7jM4O2tQyDq8bjMum
69vg6wM0lMGHflMgqB75GxeKfQFmEldoXi2cLishqFUvU2cJeM3SaRsLk2BsuCgTzh9NsYgmrUX6
0KHOq7eYKVZxbPFWJF2nMOBuMXNu2qBXTGSLeLXHnNvG3r7TLzGg1oA5teAxQE6Eo8ySSeIXbP7w
ZB76urwlh51PIbrJZjkDjdQVELh7OlTP1WO6T/Hf6BsEfeFcpoa1e+MW/lw0VetTPPHQ15HYKYP2
WYohHxzDiC+QUwE7UZVBlp9cXIpwHuDzSibc5RG3z0n/j2SQCx0Dk5FMAUErAgMBAAGjggGmMIIB
ojASBgNVHRMBAf8ECDAGAQH/AgEAMA4GA1UdDwEB/wQEAwIBhjB5BggrBgEFBQcBAQRtMGswJAYI
KwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmRpZ2ljZXJ0LmNvbTBDBggrBgEFBQcwAoY3aHR0cDovL2Nh
Y2VydHMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJlZElEUm9vdENBLmNydDCBgQYDVR0fBHow
eDA6oDigNoY0aHR0cDovL2NybDMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJlZElEUm9vdENB
LmNybDA6oDigNoY0aHR0cDovL2NybDQuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJlZElEUm9v
dENBLmNybDA9BgNVHSAENjA0MDIGBFUdIAAwKjAoBggrBgEFBQcCARYcaHR0cHM6Ly93d3cuZGln
aWNlcnQuY29tL0NQUzAdBgNVHQ4EFgQU8CHpSXdzn4WuGDvoUnAUBu1C7sowHwYDVR0jBBgwFoAU
Reuir/SSy4IxLVGLp6chnfNtyA8wDQYJKoZIhvcNAQELBQADggEBADrCGyv+Y967YbS5R6j8fAWx
JiAiUZvIPfn1xVgesF6jspwCQY8xGn/MG04d+Jh97I8I/Xfx29JEEFq2rQmw4PxiO9RiDZ7xoDxN
d4rrRDR7jrtOKQP8J+o+ah0vSOP62hnD/zPS7NRMtIyVS2G277KAL5fIR62ngr984fmJghDv0bsj
GAmeu3EP0xhUsDJT61IoAGoKBnxBPAeg3WXsdSm4Gn7btyvakeyFtYebr2KmOBSa28PRqGSDur56
aZhJoM2eMzc6prmvGwwtAzRsc5t2OsKRuHWV6O3anP2K27jGZR2bi1VX1NQUvIbpVNTuwjm+XcZt
sa/AAJF9KGkEseAwggYyMIIFGqADAgECAhAFfBtt5tv9qkoxTc6miyl7MA0GCSqGSIb3DQEBCwUA
MGkxCzAJBgNVBAYTAk5MMRYwFAYDVQQIEw1Ob29yZC1Ib2xsYW5kMRIwEAYDVQQHEwlBbXN0ZXJk
YW0xDzANBgNVBAoTBlRFUkVOQTEdMBsGA1UEAxMUVEVSRU5BIFBlcnNvbmFsIENBIDMwHhcNMTgw
OTI4MDAwMDAwWhcNMjEwOTI4MTIwMDAwWjBpMQswCQYDVQQGEwJBVDETMBEGA1UEBxMKS2xhZ2Vu
ZnVydDEsMCoGA1UEChMjQWxwZW4tQWRyaWEgVW5pdmVyc2l0YWV0IEtsYWdlbmZ1cnQxFzAVBgNV
BAMTDkRhdmlkZSBSaWdoaW5pMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAkqufOEYl
OGPcnOHhWBwEPLIXd84wQgJX+srUlIRWhmc1sMNEaofeOD/EPD2Rytioeg39zrg5dxlt/lg6wH67
Q8WiePgYj3HbxuUfk3RvfTgineXxtUMLrCtWQJXRKF2bUgVWqPN8SQNaGOB3anB24Rgx4fy2n0zt
FCQRHRrfHzIVREAAyfjslOjCs7tSyK+yTJ2klstwIxqshkGofMV45XNMU6MqEClbM28bD4+iOezx
b5JtciqepGiO9z7G890lxNzgkTIqpNFkcZ5N2QcGrImcyeqUosngyPxI+/GS8YShGA9AXweoRiu5
0QUqJNtAM/ubxje+fArzIkMSyFMcmiJUJN71JtcyCQJHwfvYHtat8HuoKdFRWzq0LmOYVU8ILweB
LCDzged9N0dgWxIYH49bs2iVjbQv6X/9TFf99x8lLnSQt2C82tEdbQR2yTTS5MfSoKyh83ZahbHg
vfCGQ5h0xKDzndfSyCOd0Qdaz4d++PpYOetK0i4SNXyqkMtnGj/QHIcKrVIBlix93kFpGNs6DAaP
NifxjVcE15kvupV2YgtHhvSJ9i5LAqHMoZXFu/8iuAbZnLa9nK0ITMWeWHo7L2uCFo9hBPxt7gDj
NwLrZU05yNrM3bZ3rwu+jIn4jThrQ9TkwDc4ARE/AGwqLb3NSL1Lb2M9zU9wczgE8JcCAwEAAaOC
AdQwggHQMB8GA1UdIwQYMBaAFPAh6Ul3c5+Frhg76FJwFAbtQu7KMB0GA1UdDgQWBBSJ35+Q4nfs
ltt0Q3iWeNTpgGiamzAMBgNVHRMBAf8EAjAAMCAGA1UdEQQZMBeBFWRhdmlkZS5yaWdoaW5pQGFh
dS5hdDAOBgNVHQ8BAf8EBAMCBaAwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMEMGA1Ud
IAQ8MDowOAYKYIZIAYb9bAQBAjAqMCgGCCsGAQUFBwIBFhxodHRwczovL3d3dy5kaWdpY2VydC5j
b20vQ1BTMHUGA1UdHwRuMGwwNKAyoDCGLmh0dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9URVJFTkFQ
ZXJzb25hbENBMy5jcmwwNKAyoDCGLmh0dHA6Ly9jcmw0LmRpZ2ljZXJ0LmNvbS9URVJFTkFQZXJz
b25hbENBMy5jcmwwcwYIKwYBBQUHAQEEZzBlMCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5kaWdp
Y2VydC5jb20wPQYIKwYBBQUHMAKGMWh0dHA6Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNvbS9URVJFTkFQ
ZXJzb25hbENBMy5jcnQwDQYJKoZIhvcNAQELBQADggEBAHUcTGN7Tp+pDyUwd6dqAhmXk0cL8w19
KE9C6cR7IY/VyQC3QH/ZR5x/15H4aC8Je1QVzRiZEPnwkTx3tAm4t9s5/9qdVhCWXbmRm5Wx7YIn
BresKLkrLtW04iD7YfP284klcHUHT+p9AAb3yHA48otYemxMIYchuwQfcVadF2ktVaO2/e/q9Fom
NB+jwWxsHKbJCcGRnAcZYo+rWO0KhyOhRIjTPtPc8z6f6xEq3FVZOah4BL7qumCGD6fnNSk5UQvr
FChqB/ynUts/zMdaYhyjxdvrplPln1Fho8nJpNx7NGvuiE0Puq7zAHxohv/4xyEvJ6J6+zaeDeDd
WPjmpZQxggS7MIIEtwIBATB9MGkxCzAJBgNVBAYTAk5MMRYwFAYDVQQIEw1Ob29yZC1Ib2xsYW5k
MRIwEAYDVQQHEwlBbXN0ZXJkYW0xDzANBgNVBAoTBlRFUkVOQTEdMBsGA1UEAxMUVEVSRU5BIFBl
cnNvbmFsIENBIDMCEAV8G23m2/2qSjFNzqaLKXswCQYFKw4DAhoFAKCCAhMwGAYJKoZIhvcNAQkD
MQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTkwODAxMTM1OTM2WjAjBgkqhkiG9w0BCQQx
FgQUXSy2OHHXHeKBgeaG2VN8xd+bh70wgYwGCSsGAQQBgjcQBDF/MH0waTELMAkGA1UEBhMCTkwx
FjAUBgNVBAgTDU5vb3JkLUhvbGxhbmQxEjAQBgNVBAcTCUFtc3RlcmRhbTEPMA0GA1UEChMGVEVS
RU5BMR0wGwYDVQQDExRURVJFTkEgUGVyc29uYWwgQ0EgMwIQBXwbbebb/apKMU3OpospezCBjgYL
KoZIhvcNAQkQAgsxf6B9MGkxCzAJBgNVBAYTAk5MMRYwFAYDVQQIEw1Ob29yZC1Ib2xsYW5kMRIw
EAYDVQQHEwlBbXN0ZXJkYW0xDzANBgNVBAoTBlRFUkVOQTEdMBsGA1UEAxMUVEVSRU5BIFBlcnNv
bmFsIENBIDMCEAV8G23m2/2qSjFNzqaLKXswgZMGCSqGSIb3DQEJDzGBhTCBgjALBglghkgBZQME
ASowCwYJYIZIAWUDBAEWMAoGCCqGSIb3DQMHMAsGCWCGSAFlAwQBAjAOBggqhkiG9w0DAgICAIAw
DQYIKoZIhvcNAwICAUAwBwYFKw4DAhowCwYJYIZIAWUDBAIDMAsGCWCGSAFlAwQCAjALBglghkgB
ZQMEAgEwDQYJKoZIhvcNAQEBBQAEggIAZAx2g8uSGTUmU3K8yVz0w1BeLyrQ2JPl+1RwLNb+20+h
NmArpLRYxiH6vSn8AWTCtLsLzrq25gUEtfOMJxmuS2Oiiqhvw8kqj5EVBXZcvCLD1fuzHKNkopoM
vsbHuAJKOMuB39RWNtsHFtHFS1y4KfD9A9zOgPMyQg2GdL/L20hJlaTtv/JoNzcP9u0NujfnZW1y
xBPKZjaIsaQaX3MhZM/38KerSk9WBjv1Gm9tC7jbg3+fMvo+T2dQiGYJX2Tgp1U6vPSTnxB+SU7b
bJM3vXExKaYIPbk29zRQo/1C2pathifdWh3DBHu62h5xQTgklHstQ9uHKhGcbKgoBUWfEMyPH+wg
MIEBV8KAgnGZfgqTf1nChc/Sb6HdchdY837P1EtlUFGKGMW6fEtbAUBmrAWBZynWDh5BfsbddNdC
ZJ0b9OePf8JRWaf1h57TTKMWhxDQj5i71WCNMqwQFjtp5aNXWFfCJtKyXaCw/8ioRnJg95HRNlMQ
HvO4mzvFoGnqgDx4pT06tPtGmD86XHr6P5X0fp1LyRAUhTLTljF+xJOI4qL+FOoccvHuqwt84Iyr
G4/NPixxvZW8w6q/cf0nSlonFQfWFl2mG/+CIn3kH9gV11yBvrzUqIZD2Qa6YjqY3VHPUPUgh4a6
DYvUVxzf9etSkTqWmqHH/a9QD2rHG7wAAAAAAAA=

------=_NextPart_000_0117_01D54882.1E22C080--


--===============8212423189851201067==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8212423189851201067==--

