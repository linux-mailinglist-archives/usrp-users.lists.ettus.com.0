Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E2835D0A7
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 20:54:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 65BFE384EF1
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 14:54:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gtri.gatech.edu header.i=@gtri.gatech.edu header.b="mM26l0tV";
	dkim-atps=neutral
Received: from unifiededge.gtri.gatech.edu (unifiededge.gtri.gatech.edu [130.207.205.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 731B4384384
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 14:53:57 -0400 (EDT)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=unifiededge;
	c=simple/simple; t=1618253637; h=from:subject:to:date:message-id;
	bh=uYPnkcnmT2HPk1XkX93QhN5lzxlSbdQZ8K8xqYDXAf4=;
	b=mM26l0tV7s+IqJ81e90c/CeyaHi/MPNcOdVrxtlAeamFVr4njVa47+qT4lp2myDAWVi9JljvKDx
	cvS1Vytay7Qhiu1+en1FX6eF6dnN29LbGHr4D2w8mnXLel6bxav/z1DMyjUp3kW24OUkc0oTJH94D
	AEntN8ncHatKhtH1vLSnaEcfYSt2CzKMfPO2lbb2/+t2tTlNlWdso8+EdI7X4OReaAXpdAUZIKSvs
	oIimrdD6BY2YT3xLLm9At9XEO4erUE+9rcbIG51JRjNI9cvDcjwaOuFHttrVpnZEglZuPniTcjxSn
	q2qlYHS5sYaSg4Ef+cswvt+VNAZgfhrUO6Mw==
Received: from hatteras.core.gtri.org (10.41.22.72) by exedge06.gtri.dmz
 (10.41.104.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.2.721.2; Mon, 12 Apr 2021
 14:53:56 -0400
Received: from tybee.core.gtri.org (10.41.1.49) by hatteras.core.gtri.org
 (10.41.22.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2242.4; Mon, 12
 Apr 2021 14:53:56 -0400
Received: from tybee.core.gtri.org ([fe80::bc87:62f3:89b0:fc9e]) by
 tybee.core.gtri.org ([fe80::bc87:62f3:89b0:fc9e%15]) with mapi id
 15.01.2242.004; Mon, 12 Apr 2021 14:53:56 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: AXI Stream Issue
Thread-Index: AdcvzSiJaruC5YfNQv2B3bJuz6m75g==
Date: Mon, 12 Apr 2021 18:53:56 +0000
Message-ID: <b4cb345657e64c14b5fc1bfa84d34922@gtri.gatech.edu>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Message-ID-Hash: SE63C6RZ23IOYVUO42T7OKT3WUC7X7ZI
X-Message-ID-Hash: SE63C6RZ23IOYVUO42T7OKT3WUC7X7ZI
X-MailFrom: Michael.Rich@gtri.gatech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] AXI Stream Issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SE63C6RZ23IOYVUO42T7OKT3WUC7X7ZI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Rich, Michael via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Rich, Michael" <Michael.Rich@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============8143284156343250640=="

--===============8143284156343250640==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_001C_01D72FAB.A93E3B60"

------=_NextPart_000_001C_01D72FAB.A93E3B60
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_001D_01D72FAB.A93E3B60"


------=_NextPart_001_001D_01D72FAB.A93E3B60
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I am having issues getting data out of a custom block NoC Block (on an X310
using UHD3.15) and I'm not quite sure what would be causing what I'm seeing.
When everything starts up, it seems to work just fine for a bit, but then
output stops. Checking the data bus using an ILA, it appears as though
data_tready from the AXI_Wrapper goes low at some point and just stays
there. 

 

My output is at a different rate than the input, so I've set SIMPLE_MODE=0
for AXI_WRAPPER. I'm fairly sure I'm driving the AMBA bus properly. I'm
setting s_axis_data_tuser as follows:

Bit 127-126 = 00 (data)

Bit 125 = 0 (timestamp not used)

Bit 124 = 0 or 1 (depending upon if end-of-burst or not)

Bit 123-112 = sequence number (monotonically increasing for each packet
starting at 0)

Bit 111-96 = packet length (total number of data bytes + 8 header bytes)

Bit 95-80 = src_sid (from noc_shell)

Bit 79-64 = next_dst_sid (from noc_shell)

Bit 63-0 = 0

 

What might cause data_tready to remain low? Is there anything else I should
be looking at that might explain this behavior?


Thank you,

 

Michael H. Rich

Electronic Systems Laboratory

Georgia Tech Research InstituteR

Phone: (404) 407-8358

E-mail:  <mailto:michael.rich@gtri.gatech.edu> michael.rich@gtri.gatech.edu

 


------=_NextPart_001_001D_01D72FAB.A93E3B60
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
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
class=3DMsoNormal>I am having issues getting data out of a custom block =
NoC Block (on an X310 using UHD3.15) and I&#8217;m not quite sure what =
would be causing what I&#8217;m seeing. When everything starts up, it =
seems to work just fine for a bit, but then output stops. Checking the =
data bus using an ILA, it appears as though data_tready from the =
AXI_Wrapper goes low at some point and just stays there. =
<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>My output is at a different rate than the input, so =
I&#8217;ve set SIMPLE_MODE=3D0 for AXI_WRAPPER. I&#8217;m fairly sure =
I&#8217;m driving the AMBA bus properly. I&#8217;m setting =
s_axis_data_tuser as follows:<o:p></o:p></p><p class=3DMsoNormal>Bit =
127-126 =3D 00 (data)<o:p></o:p></p><p class=3DMsoNormal>Bit 125 =3D 0 =
(timestamp not used)<o:p></o:p></p><p class=3DMsoNormal>Bit 124 =3D 0 or =
1 (depending upon if end-of-burst or not)<o:p></o:p></p><p =
class=3DMsoNormal>Bit 123-112 =3D sequence number (monotonically =
increasing for each packet starting at 0)<o:p></o:p></p><p =
class=3DMsoNormal>Bit 111-96 =3D packet length (total number of data =
bytes + 8 header bytes)<o:p></o:p></p><p class=3DMsoNormal>Bit 95-80 =3D =
src_sid (from noc_shell)<o:p></o:p></p><p class=3DMsoNormal>Bit 79-64 =
=3D next_dst_sid (from noc_shell)<o:p></o:p></p><p class=3DMsoNormal>Bit =
63-0 =3D 0<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>What might cause data_tready to remain low? Is there =
anything else I should be looking at that might explain this =
behavior?<o:p></o:p></p><p class=3DMsoNormal><br>Thank =
you,<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><b><span =
style=3D'font-size:12.0pt;color:black'>Michael H. Rich</span></b><span =
style=3D'color:#1F497D'><o:p></o:p></span></p><p =
class=3DMsoNormal><i><span =
style=3D'font-size:10.0pt;color:black'>Electronic Systems =
Laboratory</span></i><span =
style=3D'color:#1F497D'><o:p></o:p></span></p><p =
class=3DMsoNormal><b><i><span =
style=3D'font-size:10.0pt;color:black'>Georgia Tech Research =
Institute&reg;</span></i></b><span =
style=3D'color:#1F497D'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>Phone: (404) 407-8358</span><span =
style=3D'color:#1F497D'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>E-mail:</span><span =
style=3D'font-size:10.0pt;color:#1F497D'> <a =
href=3D"mailto:michael.rich@gtri.gatech.edu"><span =
style=3D'color:blue'>michael.rich@gtri.gatech.edu</span></a></span><span =
style=3D'color:#1F497D'><o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_001_001D_01D72FAB.A93E3B60--

------=_NextPart_000_001C_01D72FAB.A93E3B60
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIVtzCCBDIw
ggMaoAMCAQICAQEwDQYJKoZIhvcNAQEFBQAwezELMAkGA1UEBhMCR0IxGzAZBgNVBAgMEkdyZWF0
ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBwwHU2FsZm9yZDEaMBgGA1UECgwRQ29tb2RvIENBIExpbWl0
ZWQxITAfBgNVBAMMGEFBQSBDZXJ0aWZpY2F0ZSBTZXJ2aWNlczAeFw0wNDAxMDEwMDAwMDBaFw0y
ODEyMzEyMzU5NTlaMHsxCzAJBgNVBAYTAkdCMRswGQYDVQQIDBJHcmVhdGVyIE1hbmNoZXN0ZXIx
EDAOBgNVBAcMB1NhbGZvcmQxGjAYBgNVBAoMEUNvbW9kbyBDQSBMaW1pdGVkMSEwHwYDVQQDDBhB
QUEgQ2VydGlmaWNhdGUgU2VydmljZXMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC+
QJ30buHqdoccTUVEjr5GyIMGncEq/hgfjuQC+vOrXVCKFjELmgbQxXAizUktVGPMtm5oRgtT6stM
JMC8ck7q8RWu9FSaEgrDerIzYOLaiVXzIljz3tzP74OGooyUT59o8piQRoQnx3a/48w1LIteB2Rl
gsBIsKiR+WGfdiBQqJHHZrXreGIDVvCKGhPqMaMeoJn9OPb2JzJYbwf1a7j7FCuvt6rM1mNfc4za
BZmoOKjLF3g2UazpnvR4Oo3PD9lC4pgMqy+fDgHe75+ZSfEt36x0TRuYtUfF5SnR+ZAYx2KcvoPH
Jns+iiXHwN2d5jVoECCdj9je0sOEnA1e6C/JAgMBAAGjgcAwgb0wHQYDVR0OBBYEFKARCiM+lvEH
7OKvKe+CpX/QMKS0MA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MHsGA1UdHwR0MHIw
OKA2oDSGMmh0dHA6Ly9jcmwuY29tb2RvY2EuY29tL0FBQUNlcnRpZmljYXRlU2VydmljZXMuY3Js
MDagNKAyhjBodHRwOi8vY3JsLmNvbW9kby5uZXQvQUFBQ2VydGlmaWNhdGVTZXJ2aWNlcy5jcmww
DQYJKoZIhvcNAQEFBQADggEBAAhW/ALwm+j/pPrWe8ZEgM5PxMX2AFjMpra8FEloBHbo5u5d7AIP
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
MDMxNzAwMDAwMFoXDTIzMDMxNzIzNTk1OVowgd8xDjAMBgNVBBETBTMwMzMyMRMwEQYDVQQLEwpH
VFJJLUVMU1lTMSgwJgYDVQQKEx9HZW9yZ2lhIEluc3RpdHV0ZSBvZiBUZWNobm9sb2d5MRkwFwYD
VQQJExAyMjUgTk9SVEggQVZFIE5XMRAwDgYDVQQIEwdHZW9yZ2lhMRAwDgYDVQQHEwdBdGxhbnRh
MQswCQYDVQQGEwJVUzEVMBMGA1UEAxMMTWljaGFlbCBSaWNoMSswKQYJKoZIhvcNAQkBFhxtaWNo
YWVsLnJpY2hAZ3RyaS5nYXRlY2guZWR1MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
24fvyXxky1Bj+3LTRunyP4Qx7xk3OtkgVLXktky9UAvurKAdtF+kgdgS7BqEZK2yG+Y3nQHSods+
g8EDrgnyCmIuYVwlrH/H36Pg9Ca601ZYpBVbJ+vonDNhmRWWH+w5pbuhQ8IrtTxVKkR1Q7iZu9+T
CEtjZ/Q8a0NKt8xpDNqF+ey73OSl5cIgkhVjobDTF0hzx8y3eLZfoZ7Vg8gRNpK1WLG9dWRi4NVS
qD5wDW7IxS/vvvYdGh406ZiezNsOuZjCnpTU5lrXeHvrXPjLrs74kaNIfyQzs/b4pckcFEhJXJkx
gh1LSCAvIMHA57dg1BfyR7hB/1b4nOUpAWFHKQIDAQABo4IB+jCCAfYwHwYDVR0jBBgwFoAUfe5x
0B/rqWFtj2aErQ8rB+Ix27wwHQYDVR0OBBYEFAQKpoUYI6FNQQLbi8DZCQshCN24MA4GA1UdDwEB
/wQEAwIFoDAMBgNVHRMBAf8EAjAAMB0GA1UdJQQWMBQGCCsGAQUFBwMEBggrBgEFBQcDAjBqBgNV
HSAEYzBhMF8GDSsGAQQBriMBBAMDAAEwTjBMBggrBgEFBQcCARZAaHR0cHM6Ly93d3cuaW5jb21t
b24ub3JnL2NlcnQvcmVwb3NpdG9yeS9jcHNfc3RhbmRhcmRfY2xpZW50LnBkZjBVBgNVHR8ETjBM
MEqgSKBGhkRodHRwOi8vY3JsLmluY29tbW9uLXJzYS5vcmcvSW5Db21tb25SU0FTdGFuZGFyZEFz
c3VyYW5jZUNsaWVudENBLmNybDCBigYIKwYBBQUHAQEEfjB8MFAGCCsGAQUFBzAChkRodHRwOi8v
Y3J0LmluY29tbW9uLXJzYS5vcmcvSW5Db21tb25SU0FTdGFuZGFyZEFzc3VyYW5jZUNsaWVudENB
LmNydDAoBggrBgEFBQcwAYYcaHR0cDovL29jc3AuaW5jb21tb24tcnNhLm9yZzAnBgNVHREEIDAe
gRxtaWNoYWVsLnJpY2hAZ3RyaS5nYXRlY2guZWR1MA0GCSqGSIb3DQEBCwUAA4IBAQAOQx1GHPoX
3sz6J9o9zk1NjXH7ZclwC/PQawXElV3vDGSryCnNsNqQJNMnG7OOzjq/u9PnGdDpmVI8mFjci6jr
YR8yTgd3aTiG230emq+lbmYmGhibxQZGRN725JFt9veX62fp3esnMoIqKbAz+LxnUtWc42uJeCoF
C0+d+Jmo+VIrVSO3vJJLGimOPh+iHrLpyV2bqj0AorSi2Mfb4c3G4oiAGykF38pZtsW9cwoo+ZE+
IsCBiMn7JCXIEFtpmYUpPCeECgAVOOQvB7B3maSa+Qu0BRQZ78sRXluHAEoh6PhsMgqNuwEVNvp3
BQx7uNz8j+30hpKBMV0X26FUKefDMIIGAzCCA+ugAwIBAgIQP7008rpS/A7TClejgeG+ZDANBgkq
hkiG9w0BAQ0FADCBiDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCk5ldyBKZXJzZXkxFDASBgNVBAcT
C0plcnNleSBDaXR5MR4wHAYDVQQKExVUaGUgVVNFUlRSVVNUIE5ldHdvcmsxLjAsBgNVBAMTJVVT
RVJUcnVzdCBSU0EgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkwHhcNMTQwOTE5MDAwMDAwWhcNMjQw
OTE4MjM1OTU5WjCBiTELMAkGA1UEBhMCVVMxCzAJBgNVBAgTAk1JMRIwEAYDVQQHEwlBbm4gQXJi
b3IxEjAQBgNVBAoTCUludGVybmV0MjERMA8GA1UECxMISW5Db21tb24xMjAwBgNVBAMTKUluQ29t
bW9uIFJTQSBTdGFuZGFyZCBBc3N1cmFuY2UgQ2xpZW50IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
AQ8AMIIBCgKCAQEAgP7KW3d3xh/sgvvnWYpVrcDqnrEH6CYrNgmi8S9MOllAnKuc8kApQCWScil4
j5sGahB8t2QH/xj8UNuoGCDG5xEZxgFoRz/ZkuzdNJK4ZJ8b9dIm2XPUTKbgIwluPp38+oLV5P6k
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
WlN1A0bpMgYAAAAAAAA=

------=_NextPart_000_001C_01D72FAB.A93E3B60--

--===============8143284156343250640==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8143284156343250640==--
