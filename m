Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAB8215579
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jul 2020 12:25:16 +0200 (CEST)
Received: from [::1] (port=45208 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jsOJE-0001dK-CC; Mon, 06 Jul 2020 06:25:12 -0400
Received: from outbound6sev.lav.puc.rediris.es ([130.206.19.181]:44540
 helo=mx02.puc.rediris.es)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <pol.henarejos@cttc.es>)
 id 1jsOJA-0001Zc-80
 for usrp-users@lists.ettus.com; Mon, 06 Jul 2020 06:25:08 -0400
Received: from leo.cttc.es (leo.cttc.es [84.88.62.208])
 by mx02.puc.rediris.es  with ESMTP id 066AOQUS017316-066AOQUU017316
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=FAIL)
 for <usrp-users@lists.ettus.com>; Mon, 6 Jul 2020 12:24:26 +0200
Received: from [10.1.16.45] (pcphenarejos.cttc.es [10.1.16.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
 (No client certificate requested)
 by leo.cttc.es (Postfix) with ESMTPSA id EC7AB1FD14
 for <usrp-users@lists.ettus.com>; Mon,  6 Jul 2020 12:24:25 +0200 (CEST)
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Organization: CTTC
Message-ID: <2a02590f-947d-781d-4b84-bc6a83011d21@cttc.cat>
Date: Mon, 6 Jul 2020 12:24:26 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
Authentication-Results: mx02.puc.rediris.es;
 spf=pass (rediris.es: domain of pol.henarejos@cttc.es designates 84.88.62.208
 as permitted sender) smtp.mailfrom=pol.henarejos@cttc.es
X-FEAS-CONTENT-MODIFICATION: 
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; d=cttc.es; s=DKIM;
 c=relaxed/relaxed; 
 h=to:from:subject:message-id:date:mime-version:content-type;
 bh=QKq3xgaINyojrmctAkhNoTsGZyNu0sF9piznM1tj9ko=;
 b=Mgi/y09s3V81P3egAsyATW1R5Jvm9OdBnVpQj24YEA9oI6b2fZ3oSmEzwsIjt0tvHompaL/ufsqd
 QwTLD1o9lommjB+ieV6B90yj/M42PuC3CNYHT540WYHwhF8WSBtnmOdJvr0vKYLhOs3TD7D+oJvG
 kz8P5wIEEy8j6vIbtk84u4ijw3vQELTM+pohIndLRR5Z2yecKnmgP0FhWPI6zMzp8/aMXh6NrJ0S
 M3zd8eztKFd6atMr18oavlKuBN3p8qt3HVxi+Mo/6/FYAI4WUj+TA9pEkfDBE7VB/AYaySvij/IB
 7cpznc+C0QXdByZYloWFMMH/YeNIaVEJZyOsKQ==
Subject: [USRP-users] USRP x300 & LFTX/LFRX
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
From: Pol Henarejos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Pol Henarejos <pol.henarejos@cttc.es>
Content-Type: multipart/mixed; boundary="===============1633614689380441643=="
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

This is a cryptographically signed message in MIME format.

--===============1633614689380441643==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms070806090502000000010108"

This is a cryptographically signed message in MIME format.

--------------ms070806090502000000010108
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: ca
Content-Transfer-Encoding: quoted-printable

Dear all,

Is it possible to use LFTX/LFRX daughterboards with USRP x300? Since=20
each LFTX has 2 independent TX real signals, I am wondering if it is=20
possible to transmit 8 independent real BB signals with just 1 USRP x300.=


Thank you.

--=20
Dr. Pol Henarejos
Senior Researcher
Array and Multi-Sensor Processing Department, Communication Systems Divis=
ion
pol.henarejos@cttc.cat

Centre Tecnol=C3=B2gic de Telecomunicacions de Catalunya (CTTC)
Av. Carl Friedrich Gauss, 7
08860 Castelldefels, Barcelona (Spain)
Tel: +34 93 645 29 00  Ext: 2177
www.cttc.cat

Your identification data and the data contained in the emails and=20
attached files can be incorporated into our databases, in order to=20
maintain professional and / or commercial relationships, and that it=20
will be preserved throughout the relationship. You can exercise your=20
right to access, rectification, erasure, restriction of processing, to=20
portability and to object by sending an email to dpo@cttc.cat.
This message and any attached document, where appropriate, may be=20
confidential and intended for the original recipient only.


--------------ms070806090502000000010108
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: Signatura criptogràfica S/MIME

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCC
CnswggUAMIID6KADAgECAhADS+4XH7fhBjcv1HJCQL0qMA0GCSqGSIb3DQEBCwUAMGUxCzAJ
BgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2Vy
dC5jb20xJDAiBgNVBAMTG0RpZ2lDZXJ0IEFzc3VyZWQgSUQgUm9vdCBDQTAeFw0xNDExMTgx
MjAwMDBaFw0yNDExMTgxMjAwMDBaMGkxCzAJBgNVBAYTAk5MMRYwFAYDVQQIEw1Ob29yZC1I
b2xsYW5kMRIwEAYDVQQHEwlBbXN0ZXJkYW0xDzANBgNVBAoTBlRFUkVOQTEdMBsGA1UEAxMU
VEVSRU5BIFBlcnNvbmFsIENBIDMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDG
pbsfVYL0pTRyFHJlm1/V6qBo2JuCiU9TYpx7jM4O2tQyDq8bjMum69vg6wM0lMGHflMgqB75
GxeKfQFmEldoXi2cLishqFUvU2cJeM3SaRsLk2BsuCgTzh9NsYgmrUX60KHOq7eYKVZxbPFW
JF2nMOBuMXNu2qBXTGSLeLXHnNvG3r7TLzGg1oA5teAxQE6Eo8ySSeIXbP7wZB76urwlh51P
IbrJZjkDjdQVELh7OlTP1WO6T/Hf6BsEfeFcpoa1e+MW/lw0VetTPPHQ15HYKYP2WYohHxzD
iC+QUwE7UZVBlp9cXIpwHuDzSibc5RG3z0n/j2SQCx0Dk5FMAUErAgMBAAGjggGmMIIBojAS
BgNVHRMBAf8ECDAGAQH/AgEAMA4GA1UdDwEB/wQEAwIBhjB5BggrBgEFBQcBAQRtMGswJAYI
KwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmRpZ2ljZXJ0LmNvbTBDBggrBgEFBQcwAoY3aHR0cDov
L2NhY2VydHMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJlZElEUm9vdENBLmNydDCBgQYD
VR0fBHoweDA6oDigNoY0aHR0cDovL2NybDMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJl
ZElEUm9vdENBLmNybDA6oDigNoY0aHR0cDovL2NybDQuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0
QXNzdXJlZElEUm9vdENBLmNybDA9BgNVHSAENjA0MDIGBFUdIAAwKjAoBggrBgEFBQcCARYc
aHR0cHM6Ly93d3cuZGlnaWNlcnQuY29tL0NQUzAdBgNVHQ4EFgQU8CHpSXdzn4WuGDvoUnAU
Bu1C7sowHwYDVR0jBBgwFoAUReuir/SSy4IxLVGLp6chnfNtyA8wDQYJKoZIhvcNAQELBQAD
ggEBADrCGyv+Y967YbS5R6j8fAWxJiAiUZvIPfn1xVgesF6jspwCQY8xGn/MG04d+Jh97I8I
/Xfx29JEEFq2rQmw4PxiO9RiDZ7xoDxNd4rrRDR7jrtOKQP8J+o+ah0vSOP62hnD/zPS7NRM
tIyVS2G277KAL5fIR62ngr984fmJghDv0bsjGAmeu3EP0xhUsDJT61IoAGoKBnxBPAeg3WXs
dSm4Gn7btyvakeyFtYebr2KmOBSa28PRqGSDur56aZhJoM2eMzc6prmvGwwtAzRsc5t2OsKR
uHWV6O3anP2K27jGZR2bi1VX1NQUvIbpVNTuwjm+XcZtsa/AAJF9KGkEseAwggVzMIIEW6AD
AgECAhAPYPT3hjrLOK2VYlmiYRoaMA0GCSqGSIb3DQEBCwUAMGkxCzAJBgNVBAYTAk5MMRYw
FAYDVQQIEw1Ob29yZC1Ib2xsYW5kMRIwEAYDVQQHEwlBbXN0ZXJkYW0xDzANBgNVBAoTBlRF
UkVOQTEdMBsGA1UEAxMUVEVSRU5BIFBlcnNvbmFsIENBIDMwHhcNMTgwNzAzMDAwMDAwWhcN
MjEwNzA5MTIwMDAwWjCBkTELMAkGA1UEBhMCRVMxFjAUBgNVBAcTDUNhc3RlbGxkZWZlbHMx
RDBCBgNVBAoMO0NlbnRyZSBUZWNub2zDsmdpYyBkZSBUZWxlY29tdW5pY2FjaW9ucyBkZSBD
YXRhbHVueWEgLSBDVFRDMQwwCgYDVQQLEwNDU0QxFjAUBgNVBAMTDVBvbCBIZW5hcmVqb3Mw
ggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDDIOcaHsNtXWSW6GsW5rMYPI0y8mZa
YFcOi3FroKI34XHPQeQBr9PRM5TY3UbdS71gn4SfB2JdOprq29tG+QpPqHtijeKFV4CDXNIS
Qesvnq9V6TtkzrIzMkklp/w4k/599imAsiU1kUmO6nHKR+OYOhqpiz6EhTvl6DkEJIh0b23e
ZYGj2CDRT4cERfUsuiQL5VadVcy9WHmdugf5bFI2oj+OX/GXzFJM+tHMx1xokYogBxIWiazX
MYcRFZrBanuCWdggb8Q23bh+S+ulFyMHh/50sn0PZ4IvC2ijSGbZfctjpODjqG1+vLlXRnW+
D/ErgNv9EIcYodfS4bGq/2b3AgMBAAGjggHsMIIB6DAfBgNVHSMEGDAWgBTwIelJd3Ofha4Y
O+hScBQG7ULuyjAdBgNVHQ4EFgQUjoi3d3HvRcKPekXe2UcB8FkDqCkwDAYDVR0TAQH/BAIw
ADA4BgNVHREEMTAvgRVwb2wuaGVuYXJlam9zQGN0dGMuZXOBFnBvbC5oZW5hcmVqb3NAY3R0
Yy5jYXQwDgYDVR0PAQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcDBDBD
BgNVHSAEPDA6MDgGCmCGSAGG/WwEAQIwKjAoBggrBgEFBQcCARYcaHR0cHM6Ly93d3cuZGln
aWNlcnQuY29tL0NQUzB1BgNVHR8EbjBsMDSgMqAwhi5odHRwOi8vY3JsMy5kaWdpY2VydC5j
b20vVEVSRU5BUGVyc29uYWxDQTMuY3JsMDSgMqAwhi5odHRwOi8vY3JsNC5kaWdpY2VydC5j
b20vVEVSRU5BUGVyc29uYWxDQTMuY3JsMHMGCCsGAQUFBwEBBGcwZTAkBggrBgEFBQcwAYYY
aHR0cDovL29jc3AuZGlnaWNlcnQuY29tMD0GCCsGAQUFBzAChjFodHRwOi8vY2FjZXJ0cy5k
aWdpY2VydC5jb20vVEVSRU5BUGVyc29uYWxDQTMuY3J0MA0GCSqGSIb3DQEBCwUAA4IBAQBJ
OZSd5gVkQOgo3qJ7CuwB8AUJTWgREZtloyitpRSR1AFBKtXdnZyCa9c96rr16JNd7LdTCsra
4KYrDiYgkcepxs65dsNo8Up24/GTwMCQDe6y9r5gI4Nh6EGYxJ51AeU8e48gENyArm9S3uEG
11OSHZJ7ZrzDR761ySj91kpUKz+U6Wobjt+1/aWRVx8HPVzTddFdJUCwvfWyuuGDx7YThykv
lWMfmwz+aA8RWwlUG2IYnWy0S2VnSwgtU/NoPq+610IBngvF72RcY7suEl4rTDUc20BM0IXX
REuXNrcSayZNCS8n7nXVV4plhYAmnuw+PdVYlyUCOxB5mqY1R6PAMYIDozCCA58CAQEwfTBp
MQswCQYDVQQGEwJOTDEWMBQGA1UECBMNTm9vcmQtSG9sbGFuZDESMBAGA1UEBxMJQW1zdGVy
ZGFtMQ8wDQYDVQQKEwZURVJFTkExHTAbBgNVBAMTFFRFUkVOQSBQZXJzb25hbCBDQSAzAhAP
YPT3hjrLOK2VYlmiYRoaMA0GCWCGSAFlAwQCAQUAoIIB9zAYBgkqhkiG9w0BCQMxCwYJKoZI
hvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMDA3MDYxMDI0MjZaMC8GCSqGSIb3DQEJBDEiBCAW
uRc6J3K3aNr2AzQrRdByRnPkQSoWYc78PXLfWCcJCjBsBgkqhkiG9w0BCQ8xXzBdMAsGCWCG
SAFlAwQBKjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwDgYIKoZIhvcNAwICAgCAMA0GCCqG
SIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMCAgEoMIGMBgkrBgEEAYI3EAQxfzB9MGkx
CzAJBgNVBAYTAk5MMRYwFAYDVQQIEw1Ob29yZC1Ib2xsYW5kMRIwEAYDVQQHEwlBbXN0ZXJk
YW0xDzANBgNVBAoTBlRFUkVOQTEdMBsGA1UEAxMUVEVSRU5BIFBlcnNvbmFsIENBIDMCEA9g
9PeGOss4rZViWaJhGhowgY4GCyqGSIb3DQEJEAILMX+gfTBpMQswCQYDVQQGEwJOTDEWMBQG
A1UECBMNTm9vcmQtSG9sbGFuZDESMBAGA1UEBxMJQW1zdGVyZGFtMQ8wDQYDVQQKEwZURVJF
TkExHTAbBgNVBAMTFFRFUkVOQSBQZXJzb25hbCBDQSAzAhAPYPT3hjrLOK2VYlmiYRoaMA0G
CSqGSIb3DQEBAQUABIIBAJFg9fQZ6eul4T98n/qrXvcb88Af1pSB5viupYnmTbkTkQww17pr
HvVy++fyyMio7bEuJNbIFYssBOqG5lpFZ+FIBPVqbCWX3DdVIRwetQohe1ntDigOsOeFrMWh
H6bT5g84XLuUTPrwFdskKmtInMCGJ3+9HPK3h31mF+AcmBPrf+XjPxHj/UZ45NRxg0usg8lr
MLIeiMlR/usTojW3sHpDWl4pGHeCcPOXO2G+QF0Jbp3BsXHckSj8XGpTWct12+Ee4bpI6q66
M6rlAQ9UdfLOwEuX+bVqsL/xv/0Rl8Yka5UIJ+4RHdGil/aOiqTJxyR8gYyF2Nu3RZpThqX1
ZYEAAAAAAAA=
--------------ms070806090502000000010108--


--===============1633614689380441643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1633614689380441643==--

