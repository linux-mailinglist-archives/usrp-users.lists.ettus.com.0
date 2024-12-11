Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C079ECCE2
	for <lists+usrp-users@lfdr.de>; Wed, 11 Dec 2024 14:10:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CD551385BB7
	for <lists+usrp-users@lfdr.de>; Wed, 11 Dec 2024 08:10:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733922613; bh=AWFydePpNeIGhDeMfDaMoGb1Wu9TYgKXmgayThr4xjI=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=KCPvWjQbUTk9PwRqKEP6NIsaQPaJsu2n6aLLj1UWPtI6dx4AWz7ZsHjKLA2fo56Ob
	 qb9M0B3c29BlmjoRGz4Qx1KXMgV/D+4ZvPNZVge6QZuYrzpEy4woxoFH9/MEerTQ+s
	 XgCRoF2itfhgqK7y8x7u65XGZ5CDHW10RqCxvDadaGOZnNNOpxMykNRMpqNYineGQd
	 nSvCuWNGQnPtn67ND7ZoNGB/GPV7lM5hrSmXnQcfJU/7zHGPFgA3YyplkBMC4dXH4x
	 1DHJfmJH3m3asWaH3IU6Roh5stVrxl4kOywfLaG5HQrFh9NZDJRPGRzah8uHg1ki3R
	 CKCEHLL2I8RNw==
Received: from mail.hhi.fraunhofer.de (mail.HHI.FRAUNHOFER.DE [193.174.67.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 235053861D6
	for <usrp-users@lists.ettus.com>; Wed, 11 Dec 2024 08:09:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=permerror (0-bit key) header.d=hhi.fraunhofer.de header.i=@hhi.fraunhofer.de header.b="KyHqUM1x";
	dkim=pass (1024-bit key; unprotected) header.d=hhi.fraunhofer.de header.i=@hhi.fraunhofer.de header.b="svghi/NO";
	dkim-atps=neutral
Received: from 172.16.0.104 by mail.hhi.fraunhofer.de (Tls12, Aes256, Sha384,
 DiffieHellmanEllipticKey384); Wed, 11 Dec 2024 13:09:16 GMT
DKIM-Signature: v=1; c=relaxed/relaxed; d=hhi.fraunhofer.de; s=Mail2024e;
 t=1733922556; bh=SGgEGm1apfNSKSEilUXmxYUfYaMLGC27k+Jzu7Uj1x0=; h=
 Subject:Subject:From:From:Date:Date:ReplyTo:ReplyTo:Cc:Cc:Message-Id:Message-Id;
 a=ed25519-sha256; b=
 KyHqUM1xBZXAl45TU4iwVAhKXpY3J2pxmWlZHenWdV9cQJ6seOjDeBVdWxp3cfTjmKRjUfVgdRY+qOX1KDsuAw==
DKIM-Signature: v=1; c=relaxed/relaxed; d=hhi.fraunhofer.de; s=Mail2024r;
 t=1733922556; bh=SGgEGm1apfNSKSEilUXmxYUfYaMLGC27k+Jzu7Uj1x0=; h=
 Subject:Subject:From:From:Date:Date:ReplyTo:ReplyTo:Cc:Cc:Message-Id:Message-Id;
 a=rsa-sha256; b=
 svghi/NOulwnlD73nMIENBlOPoX4Cxwcn3IXrkl0wneGb/WjRoze5Pv3mDEGxhqeNIJzIGJIeC/XoKnxJuNt7+cttXzJ0JDIagobss2QGtbmYC4hIuMAh7Fht8x83h7wf8BhZhAVeGARWIop5tOw66X2iLgVJ9bj3IL7+1J+BmY=
Received: from mxsrv4.fe.hhi.de (172.16.0.107) by mxsrv1.fe.hhi.de
 (172.16.0.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.1544.14; Wed, 11 Dec
 2024 14:09:13 +0100
Received: from mxsrv4.fe.hhi.de ([fe80::a53e:7acc:a67d:b80c]) by
 mxsrv4.fe.hhi.de ([fe80::a53e:7acc:a67d:b80c%5]) with mapi id 15.02.1544.014;
 Wed, 11 Dec 2024 14:09:13 +0100
From: =?iso-8859-1?Q?Schr=F6der=2C_Sebastian?=
	<sebastian.schroeder@hhi.fraunhofer.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X440 Replay Trigger
Thread-Index: AdtLzcqf1GSpzF6cR7CVhK0s40mIgA==
Date: Wed, 11 Dec 2024 13:09:13 +0000
Message-ID: <d77a497e7f124b9fbf6a05da02c1d2b3@hhi.fraunhofer.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.22.100]
MIME-Version: 1.0
Message-ID-Hash: RAF7U5ECVQQ3K7NB34PP2V6DR7RK7D6O
X-Message-ID-Hash: RAF7U5ECVQQ3K7NB34PP2V6DR7RK7D6O
X-MailFrom: sebastian.schroeder@hhi.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440 Replay Trigger
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RAF7U5ECVQQ3K7NB34PP2V6DR7RK7D6O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0661047249369246244=="

--===============0661047249369246244==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0008_01DB4BD6.3C9F50C0"

------=_NextPart_000_0008_01DB4BD6.3C9F50C0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0009_01DB4BD6.3C9F50C0"


------=_NextPart_001_0009_01DB4BD6.3C9F50C0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear USRP Users,

To characterize the radio, we want to start a recording on an external
device (R&S FSW) at the same time as the data from the X440 is played =
back
from the DRAM using a trigger.

Until now, the data from the DRAM has been played back continuously =
using
the replay block.=20

Our goal is to generate a trigger signal each time the replay is =
restarted
(starts from the beginning). Alternatively, we consider it equally valid =
to
restart playback each time a trigger signal is received.

As stated on the product page
<https://files.ettus.com/manual/page_usrp_x4xx.html#:~:text=3DThe%20TRIG%=
20IN/
OUT%20port%20is%20not%20supported%20in%20default%20FPGA%20images> , the =
TRIG
port is not supported with the standard FPGA images. We would be =
grateful to
hear from anyone who has modified the FPGA image and used the TRIG port. =


Alternatively, we would be interested to know if it is possible to use =
the
GPIO pins instead to achieve this result.

=20

Best regards,

Sebastian Schr=F6der

=20

Fraunhofer Heinrich Hertz Institute HHI

Einsteinufer 37, 10587 Berlin, Germany

phone + 49 30 31002 877

email  <mailto:sebastian.schroeder@hhi.fraunhofer.de>
sebastian.schroeder@hhi.fraunhofer.de

 <http://www.hhi.fraunhofer.de/> www.hhi.fraunhofer.de |
<https://twitter.com/FraunhoferHHI> Twitter

=20


------=_NextPart_001_0009_01DB4BD6.3C9F50C0
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Diso-8859-1"><meta name=3DGenerator content=3D"Microsoft Word =
15 (filtered medium)"><style><!--
/* Font Definitions */
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
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Dear USRP Users,<o:p></o:p></p><p class=3DMsoNormal>To =
characterize the radio, we want to start a recording on an external =
device (R&amp;S FSW) at the same time as the data from the X440 is =
played back from the DRAM using a trigger.<o:p></o:p></p><p =
class=3DMsoNormal>Until now, the data from the DRAM has been played back =
continuously using the replay block. <o:p></o:p></p><p =
class=3DMsoNormal>Our goal is to generate a trigger signal each time the =
replay is restarted (starts from the beginning). Alternatively, we =
consider it equally valid to restart playback each time a trigger signal =
is received.<o:p></o:p></p><p class=3DMsoNormal>As <a =
href=3D"https://files.ettus.com/manual/page_usrp_x4xx.html#:~:text=3DThe%=
20TRIG%20IN/OUT%20port%20is%20not%20supported%20in%20default%20FPGA%20ima=
ges">stated on the product page</a>, the TRIG port is not supported with =
the standard FPGA images. We would be grateful to hear from anyone who =
has modified the FPGA image and used the TRIG port. <o:p></o:p></p><p =
class=3DMsoNormal>Alternatively, we would be interested to know if it is =
possible to use the GPIO pins instead to achieve this =
result.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Best regards,<o:p></o:p></p><p =
class=3DMsoNormal>Sebastian Schr=F6der<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span lang=3DDE =
style=3D'font-family:"Arial",sans-serif'>Fraunhofer Heinrich Hertz =
Institute HHI<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span lang=3DDE =
style=3D'font-family:"Arial",sans-serif'>Einsteinufer 37, 10587 Berlin, =
Germany<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'font-family:"Arial",sans-serif'>phone + 49 30 31002 =
877<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'font-family:"Arial",sans-serif'>email <a =
href=3D"mailto:sebastian.schroeder@hhi.fraunhofer.de"><span =
style=3D'color:#0563C1'>sebastian.schroeder@hhi.fraunhofer.de</span></a><=
o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'font-family:"Arial",sans-serif'><a =
href=3D"http://www.hhi.fraunhofer.de/"><span =
style=3D'color:#0563C1'>www.hhi.fraunhofer.de</span></a> | </span><span =
lang=3DDE><a href=3D"https://twitter.com/FraunhoferHHI"><span =
lang=3DEN-US =
style=3D'font-family:"Arial",sans-serif;color:#0563C1'>Twitter</span></a>=
</span><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_001_0009_01DB4BD6.3C9F50C0--

------=_NextPart_000_0008_01DB4BD6.3C9F50C0
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIatzCCA8Mw
ggKroAMCAQICAQEwDQYJKoZIhvcNAQELBQAwgYIxCzAJBgNVBAYTAkRFMSswKQYDVQQKDCJULVN5
c3RlbXMgRW50ZXJwcmlzZSBTZXJ2aWNlcyBHbWJIMR8wHQYDVQQLDBZULVN5c3RlbXMgVHJ1c3Qg
Q2VudGVyMSUwIwYDVQQDDBxULVRlbGVTZWMgR2xvYmFsUm9vdCBDbGFzcyAyMB4XDTA4MTAwMTEw
NDAxNFoXDTMzMTAwMTIzNTk1OVowgYIxCzAJBgNVBAYTAkRFMSswKQYDVQQKDCJULVN5c3RlbXMg
RW50ZXJwcmlzZSBTZXJ2aWNlcyBHbWJIMR8wHQYDVQQLDBZULVN5c3RlbXMgVHJ1c3QgQ2VudGVy
MSUwIwYDVQQDDBxULVRlbGVTZWMgR2xvYmFsUm9vdCBDbGFzcyAyMIIBIjANBgkqhkiG9w0BAQEF
AAOCAQ8AMIIBCgKCAQEAql/aG1/oc5Hl2lz0ouZH5fNoVWAFHQKks5tZ8x6KrzSt/A3C2UgZ7mmP
ySD8IaoHGe2wXKxlx1/tAnx7fC0b1rq5gMIYghaE+mawCMZUI4HkzblJP/ZPbjdIKDgPxb7naHD9
OZdN0seYkVCqxESzI305R+lSYtYSk163MZZCBft2px6j9cL86XrFbKlxT+rLeLxgr8fe9NnLvn4z
pW6Ug/A0+iGr6o5yoD+k3jBb74ZNapVbQ0SoEBUc5QFXxZjx5gYokaogxbdTJlFDsgsRlVjhwA92
2cCNfIHzcnCeb/4ajtlfNcaybzR8vkhP4lo519ideJ6fhj4DXhmLRKLVxwIDAQABo0IwQDAPBgNV
HRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBBjAdBgNVHQ4EFgQUv1kgNgB5oKAia4zV8mHSuCzL
gkowDQYJKoZIhvcNAQELBQADggEBADEDomELH3TocjbGbflNnvoiqOGBVs/Nu5/qq5EZOK+qfBVN
87ajjaX0jvZEqafoIZWtPgBiFojwArr8YSPmM5swems2YnutBCOEWGXi2yuK5yVTN2JTX7zaAWIp
oqYnceY6In7Bbx2VcCBKBzTf6v8VgOW613rYW3V8BXopR35AqDETd81AO7RRR3ouEeNHEd6dZtCL
1VRm+oNV6nzCKYkb6W+zzuIFhMkvPniFYm7JX8F4Y3RYwEgYDJk566TMGrV5Wo0VnNgUDfZ6B1fH
IoMFLTybJSY9GLOpQ3zIyKtkjw6jv5wbnTDb2tAZLqo88fszgHbkza0ZTwUnjhOhbsIwggUSMIID
+qADAgECAgkA4wvV+K8l2YEwDQYJKoZIhvcNAQELBQAwgYIxCzAJBgNVBAYTAkRFMSswKQYDVQQK
DCJULVN5c3RlbXMgRW50ZXJwcmlzZSBTZXJ2aWNlcyBHbWJIMR8wHQYDVQQLDBZULVN5c3RlbXMg
VHJ1c3QgQ2VudGVyMSUwIwYDVQQDDBxULVRlbGVTZWMgR2xvYmFsUm9vdCBDbGFzcyAyMB4XDTE2
MDIyMjEzMzgyMloXDTMxMDIyMjIzNTk1OVowgZUxCzAJBgNVBAYTAkRFMUUwQwYDVQQKEzxWZXJl
aW4genVyIEZvZXJkZXJ1bmcgZWluZXMgRGV1dHNjaGVuIEZvcnNjaHVuZ3NuZXR6ZXMgZS4gVi4x
EDAOBgNVBAsTB0RGTi1QS0kxLTArBgNVBAMTJERGTi1WZXJlaW4gQ2VydGlmaWNhdGlvbiBBdXRo
b3JpdHkgMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMtg1/9moUHN0vqHl4pzq5lN
6mc5WqFggEcVToyVsuXPztNXS43O+FZsFVV2B+pG/cgDRWM+cNSrVICxI5y+NyipCf8FXRgPxJiZ
N7Mg9mZ4F4fCnQ7MSjLnFp2uDo0peQcAIFTcFV9Kltd4tjTTwXS1nem/wHdN6r1ZB+BaL2w8pQDc
Nb1lDY9/Mm3yWmpLYgHurDg0WUU2SQXaeMpqbVvAgWsRzNI8qIv4cRrKO+KA3Ra0Z3qLNupOkSk9
s1FcragMvp0049ENF4N1xDkesJQLEvHVaY4l9Lg9K7/AjsMeO6W/VRCrKq4Xl14zzsjz9AkH4wKG
MUZrAcUQDBHHWekCAwEAAaOCAXQwggFwMA4GA1UdDwEB/wQEAwIBBjAdBgNVHQ4EFgQUk+PYMiba
1fFKpZFK4OpL4qIMz+EwHwYDVR0jBBgwFoAUv1kgNgB5oKAia4zV8mHSuCzLgkowEgYDVR0TAQH/
BAgwBgEB/wIBAjAzBgNVHSAELDAqMA8GDSsGAQQBga0hgiwBAQQwDQYLKwYBBAGBrSGCLB4wCAYG
Z4EMAQICMEwGA1UdHwRFMEMwQaA/oD2GO2h0dHA6Ly9wa2kwMzM2LnRlbGVzZWMuZGUvcmwvVGVs
ZVNlY19HbG9iYWxSb290X0NsYXNzXzIuY3JsMIGGBggrBgEFBQcBAQR6MHgwLAYIKwYBBQUHMAGG
IGh0dHA6Ly9vY3NwMDMzNi50ZWxlc2VjLmRlL29jc3ByMEgGCCsGAQUFBzAChjxodHRwOi8vcGtp
MDMzNi50ZWxlc2VjLmRlL2NydC9UZWxlU2VjX0dsb2JhbFJvb3RfQ2xhc3NfMi5jZXIwDQYJKoZI
hvcNAQELBQADggEBAIcL/z4Cm2XIVi3WO5qYi3FP2ropqiH5Ri71sqQPrhE4eTizDnS6dl2e6BiC
lmLbTDPo3flq3zK9LExHYFV/53RrtCyD2HlrtrdNUAtmB7Xts5et6u5/MOaZ/SLick0+hFvu+c+Z
6n/XUjkurJgARH5pO7917tALOxrN5fcPImxHhPalR6D90Bo0fa3SPXez7vTXTf/D6OWST1k+kEcQ
SrCFWMBvf/iu7QhCnh7U3xQuTY+8npTD5+32GPg8SecmqKc22CzeIs2LgtjZeOJVEqM7h0S2EQvV
DFKvaYwPBt/QolOLV5h7z/0HJPT8vcP9SpIClxvyt7bPZYoaorVyGTkwggWrMIIEk6ADAgECAgcb
Y7rGi1JCMA0GCSqGSIb3DQEBCwUAMIGVMQswCQYDVQQGEwJERTFFMEMGA1UEChM8VmVyZWluIHp1
ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYD
VQQLEwdERk4tUEtJMS0wKwYDVQQDEyRERk4tVmVyZWluIENlcnRpZmljYXRpb24gQXV0aG9yaXR5
IDIwHhcNMTYwNTI0MTEzODMwWhcNMzEwMjIyMjM1OTU5WjCBjDELMAkGA1UEBhMCREUxDzANBgNV
BAgMBkJheWVybjERMA8GA1UEBwwITXVlbmNoZW4xEzARBgNVBAoMCkZyYXVuaG9mZXIxITAfBgNV
BAsMGEZyYXVuaG9mZXIgQ29ycG9yYXRlIFBLSTEhMB8GA1UEAwwYRnJhdW5ob2ZlciBVc2VyIENB
IC0gRzAyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvUXEQz2W/aGWLRm8MIM29Wfa
Yhwgnhy8pRDfSXlkBGQoS1gqWpKyuh/ZaZYV3HHUM/AW2nfxCBuxs48pIOhiJbD7JxbjTd/VkkC+
fpzk3TuhPUCPfHNgb9DGBj6qQuEomdXSmvtp8L5UgUH/CY0WG+XJekBXLTs06KSJEWUHPD+zj8cd
0dMvZUoSMKd8PqvMq1M34P7bhRheIy83OY/JZAxCEjG4Mw9PB+ioEUvuV6jffjOAebvyV5osrnYN
POke+U0c/gOdNFraKlWnKPfJBZw4HD7vmhUTvUBvIU/PDVrQn0/CKxmWNDR5Nvr+2QXzVbl/pQPs
03gh7aDES9mTKwIDAQABo4ICBTCCAgEwEgYDVR0TAQH/BAgwBgEB/wIBATAOBgNVHQ8BAf8EBAMC
AQYwKQYDVR0gBCIwIDANBgsrBgEEAYGtIYIsHjAPBg0rBgEEAYGtIYIsAQEEMB0GA1UdDgQWBBSj
JvWaT9vaO+G1qu5Yi9D8/7VtUTAfBgNVHSMEGDAWgBST49gyJtrV8UqlkUrg6kviogzP4TCBjwYD
VR0fBIGHMIGEMECgPqA8hjpodHRwOi8vY2RwMS5wY2EuZGZuLmRlL2dsb2JhbC1yb290LWcyLWNh
L3B1Yi9jcmwvY2FjcmwuY3JsMECgPqA8hjpodHRwOi8vY2RwMi5wY2EuZGZuLmRlL2dsb2JhbC1y
b290LWcyLWNhL3B1Yi9jcmwvY2FjcmwuY3JsMIHdBggrBgEFBQcBAQSB0DCBzTAzBggrBgEFBQcw
AYYnaHR0cDovL29jc3AucGNhLmRmbi5kZS9PQ1NQLVNlcnZlci9PQ1NQMEoGCCsGAQUFBzAChj5o
dHRwOi8vY2RwMS5wY2EuZGZuLmRlL2dsb2JhbC1yb290LWcyLWNhL3B1Yi9jYWNlcnQvY2FjZXJ0
LmNydDBKBggrBgEFBQcwAoY+aHR0cDovL2NkcDIucGNhLmRmbi5kZS9nbG9iYWwtcm9vdC1nMi1j
YS9wdWIvY2FjZXJ0L2NhY2VydC5jcnQwDQYJKoZIhvcNAQELBQADggEBAMSSUnm2ESpxsjKugGuG
daXTSgBRdi5hCpcOkFMLMXTxoGTjUXItlcfnjDs1R5x1NmlqrRKC56iBtK/2+JPwTNDkG3ptqk6X
mlWMRvrIGtXRjd3lVveHxYD78T4NHP+5XkyAp1Ud1rOKa5crUcd/RQdIWISSCJjfFJCvoJEftTPO
K9aP2zoHYZS4/jPN8quADFA3YhoRS29aLCXky2/nmnrCacE6EKcK2PUZ7kO7uNHyjbECH/99ni3P
lRDtddWh67mK55mneo1vRxO2IYY8nFW0WahoU2W2n7Mj/LnaEX1eCML6YkFVhhqGZpxbfAykgA5H
SWy2aUN+Iq95zITpLi8wggYFMIIE7aADAgECAgwoXy1+u7zV+/h8a9EwDQYJKoZIhvcNAQELBQAw
gYwxCzAJBgNVBAYTAkRFMQ8wDQYDVQQIDAZCYXllcm4xETAPBgNVBAcMCE11ZW5jaGVuMRMwEQYD
VQQKDApGcmF1bmhvZmVyMSEwHwYDVQQLDBhGcmF1bmhvZmVyIENvcnBvcmF0ZSBQS0kxITAfBgNV
BAMMGEZyYXVuaG9mZXIgVXNlciBDQSAtIEcwMjAeFw0yMzA0MTkwOTEwMDhaFw0yNjA3MTIwOTEw
MDhaMIGHMQswCQYDVQQGEwJERTETMBEGA1UECgwKRnJhdW5ob2ZlcjEMMAoGA1UECwwDSEhJMQ8w
DQYDVQQLDAZQZW9wbGUxEjAQBgNVBAQMCVNjaHJvZWRlcjESMBAGA1UEKgwJU2ViYXN0aWFuMRww
GgYDVQQDDBNTZWJhc3RpYW4gU2Nocm9lZGVyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKC
AQEAvmR7usRRuqudUKRuxO7wj4IJMgvk7c/4PbtR1C/PqC+rMNQF6uKAjGiQ+4HUFi7l+byCDOO5
Timo71aW7vVTVGGeYYQrumdXqGE6fGxFRAMSXqROhJzC6Vxq4N1U00Dnvg/xNnpahkPaxQNSB+7Y
Ql0V4krgIwRYhOPjS56k1cfdkt0k60b466ekqw7SSnv7I2uzlt0c93rPuJzY55/JS0HKezhG62k0
4WvgVFH88uHsx7gyy/ZNH1vcbaGW4VF/uw/plvmuTEoFf6pwsXJaQbzusBn54RXhQTPeMtOSYyB0
McJO5YuJa+GMl1xjrbc/wdmt+Oh4AnAMs9Qw916fDQIDAQABo4ICaDCCAmQwCQYDVR0TBAIwADAO
BgNVHQ8BAf8EBAMCBsAwEwYDVR0lBAwwCgYIKwYBBQUHAwQwHQYDVR0OBBYEFLP86sDRsRApE5vN
3nSFRpL1IePeMB8GA1UdIwQYMBaAFKMm9ZpP29o74bWq7liL0Pz/tW1RMDAGA1UdEQQpMCeBJXNl
YmFzdGlhbi5zY2hyb2VkZXJAaGhpLmZyYXVuaG9mZXIuZGUwgZcGA1UdHwSBjzCBjDBEoEKgQIY+
aHR0cDovL2NkcDEucGNhLmRmbi5kZS9mcmF1bmhvZmVyLXVzZXItZzItY2EvcHViL2NybC9jYWNy
bC5jcmwwRKBCoECGPmh0dHA6Ly9jZHAyLnBjYS5kZm4uZGUvZnJhdW5ob2Zlci11c2VyLWcyLWNh
L3B1Yi9jcmwvY2FjcmwuY3JsMIHlBggrBgEFBQcBAQSB2DCB1TAzBggrBgEFBQcwAYYnaHR0cDov
L29jc3AucGNhLmRmbi5kZS9PQ1NQLVNlcnZlci9PQ1NQME4GCCsGAQUFBzAChkJodHRwOi8vY2Rw
MS5wY2EuZGZuLmRlL2ZyYXVuaG9mZXItdXNlci1nMi1jYS9wdWIvY2FjZXJ0L2NhY2VydC5jcnQw
TgYIKwYBBQUHMAKGQmh0dHA6Ly9jZHAyLnBjYS5kZm4uZGUvZnJhdW5ob2Zlci11c2VyLWcyLWNh
L3B1Yi9jYWNlcnQvY2FjZXJ0LmNydDA+BgNVHSAENzA1MA8GDSsGAQQBga0hgiwBAQQwEAYOKwYB
BAGBrSGCLAEBBAswEAYOKwYBBAGBrSGCLAIBBAswDQYJKoZIhvcNAQELBQADggEBAHPXrwQZtHaE
mzmukVo1BQ1naCMwxcV3ex5stmoQPiBHiQXyIsJ9vzfpvhBVdz0Gl7FEaexruhgP559s376TVp0h
1iPknHa1P54jiO3z/WYYTz+hjepev/1YghtP/8OFZ9yV8OecxCrWkM9YTYnFoXqzkcb8uTCLY251
pBF4ut7OUvanbkY4WPNPEa7nZrEWbC08MxNY/tuuEFO0uEBseN5WYGmxp+Q4YWuzNrzUxpHsy7pv
DsIWRxE31tTTAsScTt/bEu40HRQPmbbYVQoJ338/JNEXNfyb8aTDkebpFv1YlxsNUownRcA/eNDU
pEDu8RE9rrVQvEEhbA1EkmR0/cQwggYeMIIFBqADAgECAgwoXy5Ij+UANLZA5eMwDQYJKoZIhvcN
AQELBQAwgYwxCzAJBgNVBAYTAkRFMQ8wDQYDVQQIDAZCYXllcm4xETAPBgNVBAcMCE11ZW5jaGVu
MRMwEQYDVQQKDApGcmF1bmhvZmVyMSEwHwYDVQQLDBhGcmF1bmhvZmVyIENvcnBvcmF0ZSBQS0kx
ITAfBgNVBAMMGEZyYXVuaG9mZXIgVXNlciBDQSAtIEcwMjAeFw0yMzA0MTkwOTEzMzBaFw0yNjA3
MTIwOTEzMzBaMIGHMQswCQYDVQQGEwJERTETMBEGA1UECgwKRnJhdW5ob2ZlcjEMMAoGA1UECwwD
SEhJMQ8wDQYDVQQLDAZQZW9wbGUxEjAQBgNVBAQMCVNjaHJvZWRlcjESMBAGA1UEKgwJU2ViYXN0
aWFuMRwwGgYDVQQDDBNTZWJhc3RpYW4gU2Nocm9lZGVyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A
MIIBCgKCAQEAuV1YkVkzl+hgC7SnUIsJsNTOiN2fG/U808tcHhaFBGZJyfFXfP7N9PUYibISJ29o
LpelEFhCmx4sBtffULSjCu7EWGtiY/o+JVd6dv5RSrccL+d5FSajv0tP1h1z/od+prwI21ibeKqx
GoZGdoc7zzpdqUDTWnscEiaP6CWyh7mUN5ZQ0dqtdfMN0gZilKMlUVr4MHOGqDa7xOH4mGQMyD/n
PSI5gR6tdrMxGiYNj5aqoL284QSE6pJDtq2JL7/erTQeQKlS2CeQ98FjWFcGCRtLv/7G2oCtdXs8
qIVE7mi9vSxWSAjCYbTGTuZmaLLe7ryTbFv8mmvMxAEpyX3ZswIDAQABo4ICgTCCAn0wCQYDVR0T
BAIwADAOBgNVHQ8BAf8EBAMCBSAwLAYDVR0lBCUwIwYIKwYBBQUHAwQGCisGAQQBgjcKAwQGCysG
AQQBgjcKAwQBMB0GA1UdDgQWBBSdyNxCUAdaAry1LyA+WEGJuMTH/jAfBgNVHSMEGDAWgBSjJvWa
T9vaO+G1qu5Yi9D8/7VtUTAwBgNVHREEKTAngSVzZWJhc3RpYW4uc2Nocm9lZGVyQGhoaS5mcmF1
bmhvZmVyLmRlMIGXBgNVHR8EgY8wgYwwRKBCoECGPmh0dHA6Ly9jZHAxLnBjYS5kZm4uZGUvZnJh
dW5ob2Zlci11c2VyLWcyLWNhL3B1Yi9jcmwvY2FjcmwuY3JsMESgQqBAhj5odHRwOi8vY2RwMi5w
Y2EuZGZuLmRlL2ZyYXVuaG9mZXItdXNlci1nMi1jYS9wdWIvY3JsL2NhY3JsLmNybDCB5QYIKwYB
BQUHAQEEgdgwgdUwMwYIKwYBBQUHMAGGJ2h0dHA6Ly9vY3NwLnBjYS5kZm4uZGUvT0NTUC1TZXJ2
ZXIvT0NTUDBOBggrBgEFBQcwAoZCaHR0cDovL2NkcDEucGNhLmRmbi5kZS9mcmF1bmhvZmVyLXVz
ZXItZzItY2EvcHViL2NhY2VydC9jYWNlcnQuY3J0ME4GCCsGAQUFBzAChkJodHRwOi8vY2RwMi5w
Y2EuZGZuLmRlL2ZyYXVuaG9mZXItdXNlci1nMi1jYS9wdWIvY2FjZXJ0L2NhY2VydC5jcnQwPgYD
VR0gBDcwNTAPBg0rBgEEAYGtIYIsAQEEMBAGDisGAQQBga0hgiwBAQQLMBAGDisGAQQBga0hgiwC
AQQLMA0GCSqGSIb3DQEBCwUAA4IBAQBh8drd7TAMaDiRabFZld7AmT6bre89vygS/kpAMTRsWoio
1t/AFHZDMaybEeXPuhGuB5e2jdIADML6yDWF00HAzyRTmKrmdWXi7qo3q/Ti6YQXDggBCuLz/b0i
ruxT2hGFyFvPE3G6vVMgrmteN1AtPB/7Fsou8K2L047XgSB+HCDBH/dLTE+8MRGcbAiwkAsodgVg
4DZR8BxiaPPzZi7r3TJXyDAyX0WQS8LzN1DePXL5dqF8bAB0FsqAfEVuhU8I7lZY9oVa8Re6i5YV
X36mXwOLa6LCRX8sVvJSkAH6kEgQfgLgRSl6loAzc1plSI3OJwZJFZUa+rSNaZ89AEvMMYIEIDCC
BBwCAQEwgZ0wgYwxCzAJBgNVBAYTAkRFMQ8wDQYDVQQIDAZCYXllcm4xETAPBgNVBAcMCE11ZW5j
aGVuMRMwEQYDVQQKDApGcmF1bmhvZmVyMSEwHwYDVQQLDBhGcmF1bmhvZmVyIENvcnBvcmF0ZSBQ
S0kxITAfBgNVBAMMGEZyYXVuaG9mZXIgVXNlciBDQSAtIEcwMgIMKF8tfru81fv4fGvRMAkGBSsO
AwIaBQCgggJXMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0MTIx
MTEzMDkwNFowIwYJKoZIhvcNAQkEMRYEFOQFlZ/vPK1Bmmwwn5wq5/DE/tYWMIGTBgkqhkiG9w0B
CQ8xgYUwgYIwCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQBFjAKBggqhkiG9w0DBzALBglghkgBZQME
AQIwDgYIKoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIaMAsGCWCGSAFlAwQCAzAL
BglghkgBZQMEAgIwCwYJYIZIAWUDBAIBMIGuBgkrBgEEAYI3EAQxgaAwgZ0wgYwxCzAJBgNVBAYT
AkRFMQ8wDQYDVQQIDAZCYXllcm4xETAPBgNVBAcMCE11ZW5jaGVuMRMwEQYDVQQKDApGcmF1bmhv
ZmVyMSEwHwYDVQQLDBhGcmF1bmhvZmVyIENvcnBvcmF0ZSBQS0kxITAfBgNVBAMMGEZyYXVuaG9m
ZXIgVXNlciBDQSAtIEcwMgIMKF8uSI/lADS2QOXjMIGwBgsqhkiG9w0BCRACCzGBoKCBnTCBjDEL
MAkGA1UEBhMCREUxDzANBgNVBAgMBkJheWVybjERMA8GA1UEBwwITXVlbmNoZW4xEzARBgNVBAoM
CkZyYXVuaG9mZXIxITAfBgNVBAsMGEZyYXVuaG9mZXIgQ29ycG9yYXRlIFBLSTEhMB8GA1UEAwwY
RnJhdW5ob2ZlciBVc2VyIENBIC0gRzAyAgwoXy5Ij+UANLZA5eMwDQYJKoZIhvcNAQEBBQAEggEA
oo06nDMlWln9K37i9cO5S0m3N/PGeZMRE61PqMfKG2KpVUzlhpE1t6urkgK0Ef1Px14Od84S9DU8
hUDRwXiWIFTCdZqnCdO+f8WhZ0rmw8nfHUIYRTuDNWcQFmKIZwyqAZLWzjhyMQu5n48hBa1Y8Ucu
qm2CKDpqOZWcMmlcKrktP+Ulze0E2JLjQRSRQShd/dp0ekvMG7T0N+1OcRZiibGIxK2Jh/WGQkWn
oDYWsDTRi1CZL/DlisYcmeripXX0oeoGt2RCLq3zfbEj5tPj3uD3BsdEVCchziz48DqNVaF8lmcg
z/sUHzSztBZrHT6MKX/dRbRMD4ZvfEZcYc89oQAAAAAAAA==

------=_NextPart_000_0008_01DB4BD6.3C9F50C0--

--===============0661047249369246244==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0661047249369246244==--
