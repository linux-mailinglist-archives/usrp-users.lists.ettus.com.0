Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9AF29E6A7
	for <lists+usrp-users@lfdr.de>; Thu, 29 Oct 2020 09:56:26 +0100 (CET)
Received: from [::1] (port=42616 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kY3jK-000464-6S; Thu, 29 Oct 2020 04:56:22 -0400
Received: from mx-rz-3.rrze.uni-erlangen.de ([131.188.11.22]:53021)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <heiko.bruckmeyer@fau.de>)
 id 1kY3jF-00041Y-BR
 for USRP-users@lists.ettus.com; Thu, 29 Oct 2020 04:56:17 -0400
Received: from mx-exchlnx-3.rrze.uni-erlangen.de
 (mx-exchlnx-3.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::39])
 by mx-rz-3.rrze.uni-erlangen.de (Postfix) with ESMTP id 4CMK600d6Nz1yj2
 for <USRP-users@lists.ettus.com>; Thu, 29 Oct 2020 09:55:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1603961736; bh=vn8D2LyK6ZM0dwdLpo5elXj4x5U9dWoWtPTCisCZSDk=;
 h=From:To:Subject:Date:From:To:CC:Subject;
 b=a0boLXw1V/zslBELjfHYI7Ss+3gqD/870g7EVzS69XPQuazQIBlwHYtWb8/Dz19WN
 5NpJ8HNLMeJ2O5d0CWS5DCmnmRqbLSABF+/utv5gMdMmoPKgt+LCtXZu4VnAPiIS8S
 Br+5z0C+I3qE9eeyWnvZamvIBriepUkPVWxYoJBHfgzAecMAIAT9Uz9vN2dI9Ah6WB
 zXVuZtrRD4w3wvmSpGVDkPPGCDGLpnfmepbCR/A3bjWLjVe6lfAg1GbsRILQyV/hyK
 n/aoFqqnFtnZlYGv+G1X+WFU3iqd8yHRamJhIsaFLmXVWloi+9OiD4eR2UM3gaFvfy
 IQqVvfiXD8KoA==
X-Virus-Scanned: amavisd-new at boeck2.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
Received: from mbx5.exch.uni-erlangen.de (mbx5.exch.uni-erlangen.de
 [10.15.8.47])
 by mx-exchlnx-3.rrze.uni-erlangen.de (Postfix) with ESMTP id 4CMK5x57bgz1yPp
 for <USRP-users@lists.ettus.com>; Thu, 29 Oct 2020 09:55:33 +0100 (CET)
Received: from MBX5.exch.uni-erlangen.de (10.15.8.47) by
 MBX5.exch.uni-erlangen.de (10.15.8.47) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 29 Oct 2020 09:55:33 +0100
Received: from MBX5.exch.uni-erlangen.de ([fe80::814d:5eb3:2808:c539]) by
 MBX5.exch.uni-erlangen.de ([fe80::814d:5eb3:2808:c539%4]) with mapi id
 15.01.2106.002; Thu, 29 Oct 2020 09:55:33 +0100
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: Use of IEEE1588 PTP
Thread-Index: Adat0OMj21cxx+tfS2KC7gatkMI5fg==
Date: Thu, 29 Oct 2020 08:55:33 +0000
Message-ID: <1b7351208b9b471c89c06bbf261751a6@fau.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [79.209.214.17]
MIME-Version: 1.0
Subject: [USRP-users] Use of IEEE1588 PTP
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Bruckmeyer, Heiko via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Bruckmeyer, Heiko" <heiko.bruckmeyer@fau.de>
Content-Type: multipart/mixed; boundary="===============1918187508292256902=="
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

--===============1918187508292256902==
Content-Language: de-DE
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0021_01D6ADD9.A3E26500"

------=_NextPart_000_0021_01D6ADD9.A3E26500
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0022_01D6ADD9.A3E26500"


------=_NextPart_001_0022_01D6ADD9.A3E26500
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

 

I have a question regarding the use of the simple synchronization protocol
IEEE1588 Precision-Time-Protocol. 

I want to use Ettus USRP N3xx. I know that they support the White Rabbit
protocol for synchronizing. PTP is a part of the White Rabbit. So is it
possible to use a simple PTP Master and synchronize the USRP to it or do I
need a White Rabbit Master? 

I know that the use of simple PTP will degrade the synchronization accuracy.


 

Does the USRP X3xx also support White Rabbit or IEEE1588 PTP?

 

Thanks and best regards,

H. Bruckmeyer

 

 

 

 


------=_NextPart_001_0022_01D6ADD9.A3E26500
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
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.E-MailFormatvorlage17
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
</o:shapelayout></xml><![endif]--></head><body lang=3DDE =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>Hello,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>I have a question regarding the use of the simple =
synchronization protocol IEEE1588 Precision-Time-Protocol. =
<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-GB>I want to =
use Ettus USRP N3xx. I know that they support the White Rabbit protocol =
for synchronizing. PTP is a part of the White Rabbit. So is it possible =
to use a simple PTP Master and synchronize the USRP to it or do I need a =
White Rabbit Master? <o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>I know that the use of simple PTP will degrade the =
synchronization accuracy. <o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB>Does the USRP X3xx also support =
White Rabbit or IEEE1588 PTP?<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB>Thanks and best =
regards,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-GB>H. =
Bruckmeyer<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB =
style=3D'mso-fareast-language:DE'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB =
style=3D'mso-fareast-language:DE'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-GB><o:p>&nbsp;</o:p></span></p></div></body></html>
------=_NextPart_001_0022_01D6ADD9.A3E26500--

------=_NextPart_000_0021_01D6ADD9.A3E26500
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIUsTCCA8Mw
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
DFKvaYwPBt/QolOLV5h7z/0HJPT8vcP9SpIClxvyt7bPZYoaorVyGTkwggWsMIIElKADAgECAgcb
Y7rQHiw9MA0GCSqGSIb3DQEBCwUAMIGVMQswCQYDVQQGEwJERTFFMEMGA1UEChM8VmVyZWluIHp1
ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYD
VQQLEwdERk4tUEtJMS0wKwYDVQQDEyRERk4tVmVyZWluIENlcnRpZmljYXRpb24gQXV0aG9yaXR5
IDIwHhcNMTYwNTI0MTEzODQwWhcNMzEwMjIyMjM1OTU5WjCBjTELMAkGA1UEBhMCREUxRTBDBgNV
BAoMPFZlcmVpbiB6dXIgRm9lcmRlcnVuZyBlaW5lcyBEZXV0c2NoZW4gRm9yc2NodW5nc25ldHpl
cyBlLiBWLjEQMA4GA1UECwwHREZOLVBLSTElMCMGA1UEAwwcREZOLVZlcmVpbiBHbG9iYWwgSXNz
dWluZyBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJ07eRxH3h+Gy8Zp1xCeOdfZ
ojDbchwFfylfS2jxrRnWTOFrG7ELf6Gr4HuLi9gtzm6IOhDuV+UefwRRNuu6cG1joL6WLkDh0YNM
Zj0cZGnlm6Stcq5oOVGHecwX064vXWNxSzl660Knl5BpBb+Q/6RAcL0D57+eGIgfn5mITQ5HjUhf
ZZkQ0tkqSe3BuS0dnxLLFdM/fx5ULzquk1enfnjK1UriGuXtQX1TX8izKvWKMKztFwUkP7agCwf9
TRqaA1KgNpzeJIdl5Of6x5ZzJBTN0OgbaJ4YWa52fvfRCng8h0uwN89Tyjo4EPPLR22MZD08WkVK
usqAfLjz56dMTM0CAwEAAaOCAgUwggIBMBIGA1UdEwEB/wQIMAYBAf8CAQEwDgYDVR0PAQH/BAQD
AgEGMCkGA1UdIAQiMCAwDQYLKwYBBAGBrSGCLB4wDwYNKwYBBAGBrSGCLAEBBDAdBgNVHQ4EFgQU
azqYi/nyU4na4K2yMh4JH+iqO3QwHwYDVR0jBBgwFoAUk+PYMiba1fFKpZFK4OpL4qIMz+EwgY8G
A1UdHwSBhzCBhDBAoD6gPIY6aHR0cDovL2NkcDEucGNhLmRmbi5kZS9nbG9iYWwtcm9vdC1nMi1j
YS9wdWIvY3JsL2NhY3JsLmNybDBAoD6gPIY6aHR0cDovL2NkcDIucGNhLmRmbi5kZS9nbG9iYWwt
cm9vdC1nMi1jYS9wdWIvY3JsL2NhY3JsLmNybDCB3QYIKwYBBQUHAQEEgdAwgc0wMwYIKwYBBQUH
MAGGJ2h0dHA6Ly9vY3NwLnBjYS5kZm4uZGUvT0NTUC1TZXJ2ZXIvT0NTUDBKBggrBgEFBQcwAoY+
aHR0cDovL2NkcDEucGNhLmRmbi5kZS9nbG9iYWwtcm9vdC1nMi1jYS9wdWIvY2FjZXJ0L2NhY2Vy
dC5jcnQwSgYIKwYBBQUHMAKGPmh0dHA6Ly9jZHAyLnBjYS5kZm4uZGUvZ2xvYmFsLXJvb3QtZzIt
Y2EvcHViL2NhY2VydC9jYWNlcnQuY3J0MA0GCSqGSIb3DQEBCwUAA4IBAQCBeEWkTqR/DlXwCbFq
PnjMaDWpHPOVnj/z+N9rOHeJLI21rT7H8pTNoAauusyosa0zCLYkhmI2THhuUPDVbmCNT1IxQ5dG
dfBi5G5mUcFCMWdQ5UnnOR7Ln8qGSN4IFP8VSytmm6A4nwDO/afr0X9XLchMX9wQEZc+lgQCXISo
KTlslPwQkgZ7nu7YRrQbtQMMONncsKk/cQYLsgMHM8KNSGMlJTx6e1du94oFOO+4oK4v9NsH1VuE
GMGpuEvObJAaguS5Pfp38dIfMwK/U+d2+dwmJUFvL6Yb+qQTkPp8ftkLYF3sv8pBoGH7EUkp2Kgt
dRXYShjqFu9VNCIaE40GMIIGIDCCBQigAwIBAgIMITVu+ZnB99sll+/cMA0GCSqGSIb3DQEBCwUA
MIGNMQswCQYDVQQGEwJERTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERl
dXRzY2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQD
DBxERk4tVmVyZWluIEdsb2JhbCBJc3N1aW5nIENBMB4XDTE5MDYyODEwNTIyOFoXDTIyMDYyNzEw
NTIyOFowgbkxCzAJBgNVBAYTAkRFMQ8wDQYDVQQIDAZCYXllcm4xETAPBgNVBAcMCEVybGFuZ2Vu
MTwwOgYDVQQKDDNGcmllZHJpY2gtQWxleGFuZGVyLVVuaXZlcnNpdGFldCBFcmxhbmdlbi1OdWVy
bmJlcmcxLTArBgNVBAsMJExlaHJzdHVobCBmdWVyIFRlY2huaXNjaGUgRWxla3Ryb25pazEZMBcG
A1UEAwwQSGVpa28gQnJ1Y2ttZXllcjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALL8
912DJWVXUFAnc+7/ZtJ/rwmxfskelYG9fZpqxWErDGdbyLIlO0ZPFGp1bWgLUDKMhoj3zg685cd/
DyCCbq79jAyhDJnKk+Ix+JgpNVrK9SiFhy9eyzRBvBYOoDbCEfB/aERkQaENMwvi4iZEQsvStvEE
0ZeldRCjM00P2ojU4yM/YFLMjbCiinL7MRC12x6z74hElsuhLiuP5YrGb098/x7I5UmGjVuafvfJ
G9qzkwaEKPXdlWOWRvn3cfJpXY+31PvSQNPtbO1a2gD4Bx/RieqE87M4UUJPZVXw/GYNJoh4iDUv
typ7AGeGkZJ1K3wjZ9wAfOmYLX+v15qlQI8CAwEAAaOCAlAwggJMMD4GA1UdIAQ3MDUwDwYNKwYB
BAGBrSGCLAEBBDAQBg4rBgEEAYGtIYIsAQEEBDAQBg4rBgEEAYGtIYIsAgEEBDAJBgNVHRMEAjAA
MA4GA1UdDwEB/wQEAwIF4DAdBgNVHSUEFjAUBggrBgEFBQcDAgYIKwYBBQUHAwQwHQYDVR0OBBYE
FApIxPLEuxiIHnmM9OyowI6b51h4MB8GA1UdIwQYMBaAFGs6mIv58lOJ2uCtsjIeCR/oqjt0MCIG
A1UdEQQbMBmBF2hlaWtvLmJydWNrbWV5ZXJAZmF1LmRlMIGNBgNVHR8EgYUwgYIwP6A9oDuGOWh0
dHA6Ly9jZHAxLnBjYS5kZm4uZGUvZGZuLWNhLWdsb2JhbC1nMi9wdWIvY3JsL2NhY3JsLmNybDA/
oD2gO4Y5aHR0cDovL2NkcDIucGNhLmRmbi5kZS9kZm4tY2EtZ2xvYmFsLWcyL3B1Yi9jcmwvY2Fj
cmwuY3JsMIHbBggrBgEFBQcBAQSBzjCByzAzBggrBgEFBQcwAYYnaHR0cDovL29jc3AucGNhLmRm
bi5kZS9PQ1NQLVNlcnZlci9PQ1NQMEkGCCsGAQUFBzAChj1odHRwOi8vY2RwMS5wY2EuZGZuLmRl
L2Rmbi1jYS1nbG9iYWwtZzIvcHViL2NhY2VydC9jYWNlcnQuY3J0MEkGCCsGAQUFBzAChj1odHRw
Oi8vY2RwMi5wY2EuZGZuLmRlL2Rmbi1jYS1nbG9iYWwtZzIvcHViL2NhY2VydC9jYWNlcnQuY3J0
MA0GCSqGSIb3DQEBCwUAA4IBAQAArNNIRZCXPffSyxKdUQoyiV53VtUbiGTBIfaOJ3PMTGc+fc9L
IViSte45GnLplKGx+FX+tFsa7L//5FHvsfTv2rY4MGq6EtNYXU13B6wZ8hqz5B18/ccmhkg4HpYH
/LKqae8gW05HwoAM0mirGwe7nxb3K8uFe3CpqTLBxsjXnRQVZ/t+mPglsHMsAaYyk49+Rkq7z7/d
XzR4aMOovYLpiv9euDc8ZKhfepC0L7TG9yAnSMNEz/aao62EM2uFnpkCYh3xQ1RqNR8k6U8KswAv
5513eaLTEnNGeRS1GkcMbpdKy/E2LDKVTA6f3EjKprV26U2w79fWoLaqdx7A5T7CMYIEIzCCBB8C
AQEwgZ4wgY0xCzAJBgNVBAYTAkRFMUUwQwYDVQQKDDxWZXJlaW4genVyIEZvZXJkZXJ1bmcgZWlu
ZXMgRGV1dHNjaGVuIEZvcnNjaHVuZ3NuZXR6ZXMgZS4gVi4xEDAOBgNVBAsMB0RGTi1QS0kxJTAj
BgNVBAMMHERGTi1WZXJlaW4gR2xvYmFsIElzc3VpbmcgQ0ECDCE1bvmZwffbJZfv3DAJBgUrDgMC
GgUAoIICWTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMDEwMjkw
ODU1MzJaMCMGCSqGSIb3DQEJBDEWBBRrQAj/rUT+1pjjW4C5hf8ulr2z8DCBkwYJKoZIhvcNAQkP
MYGFMIGCMAsGCWCGSAFlAwQBKjALBglghkgBZQMEARYwCgYIKoZIhvcNAwcwCwYJYIZIAWUDBAEC
MA4GCCqGSIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCGjALBglghkgBZQMEAgMwCwYJ
YIZIAWUDBAICMAsGCWCGSAFlAwQCATCBrwYJKwYBBAGCNxAEMYGhMIGeMIGNMQswCQYDVQQGEwJE
RTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1
bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQDDBxERk4tVmVyZWluIEds
b2JhbCBJc3N1aW5nIENBAgwhNW75mcH32yWX79wwgbEGCyqGSIb3DQEJEAILMYGhoIGeMIGNMQsw
CQYDVQQGEwJERTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hl
biBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQDDBxERk4t
VmVyZWluIEdsb2JhbCBJc3N1aW5nIENBAgwhNW75mcH32yWX79wwDQYJKoZIhvcNAQEBBQAEggEA
Ah0QTlnfZSRH3GBjgxwCViy1valWANREFMliIXMMs0G3DU+7W/dpWDWE5ggUyit3XfSGw+6MrufR
dnc+v4ezIzHaLHMfgUvgkuPnIKOWXbZi2ZCgO833mnNVMpuDCamdcqCGozSJMqHeTZkNM1UKMFzn
7XVFxAmf6T2b+qpyLXvwQY2WdxEVpb9XNPY/YM9KqDgugoP9dG/Z9IhaHfuXYIPMf96JK4EyXwMw
4GJxbSFECISXU7QIOV/Nj9ZtdXBpzS3/qv2j3hBQxuoH5lg2Lpdxd67pDr7OJQDuSBkCAGZCNRaB
KORCJHc+tMPGWVYwt2WcTMRVJGQ4wt+41jkldwAAAAAAAA==

------=_NextPart_000_0021_01D6ADD9.A3E26500--


--===============1918187508292256902==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1918187508292256902==--

