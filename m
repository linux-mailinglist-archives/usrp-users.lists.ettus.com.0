Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7467B1C44D
	for <lists+usrp-users@lfdr.de>; Wed,  6 Aug 2025 12:30:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 906C5385FF8
	for <lists+usrp-users@lfdr.de>; Wed,  6 Aug 2025 06:30:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754476212; bh=aJ+cY7lRszLujC0uwPeWaDrJxC7odK1DSWh1YLbfsNM=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=zAl/+hUCBr0z2v5GSA5f1wX+X5gd4ZgIXomHnxPFakLJCcHOr4GL7P6tN6ZLsfNcS
	 bEfRj4sTCqOb1g7b3uTT1wOPTc17VxkUzvuJquqGi/VQi3QPU4lFNckzLy9NIrEep3
	 0NkPZyocL9Ggzsjep3kCF+EmkeWoUBeo2cagNsoHM9X9sREvA9QfqcjG9ePtHxFJ50
	 YVYDBexuHHbH11Ki7iGegdwX3A6uoqYf2f6dQO2S9xePkYfLaJ6EYwPzUVd23QuQuL
	 8U5kBkn7NuQo7JLxcoyWRw2YDNUeXtXmpmuy97LA55xsHUnJ7cEYWcNQSOtELSSUFT
	 tluTKP/t9+szg==
Received: from za-smtp-delivery-132.mimecast.co.za (za-smtp-delivery-132.mimecast.co.za [41.74.205.132])
	by mm2.emwd.com (Postfix) with ESMTPS id 1D2D4385CEE
	for <usrp-users@lists.ettus.com>; Wed,  6 Aug 2025 06:29:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vastech.co.za header.i=@vastech.co.za header.b="i76GaBdz";
	dkim-atps=neutral
Received: from mail.vastech.co.za (41.193.248.106 [41.193.248.106]) by
 relay.mimecast.com with ESMTP id za-mta-130-aEUzpG9vNRSRjzDMYJ4Zkw-1; Wed,
 06 Aug 2025 12:29:36 +0200
X-MC-Unique: aEUzpG9vNRSRjzDMYJ4Zkw-1
X-Mimecast-MFC-AGG-ID: aEUzpG9vNRSRjzDMYJ4Zkw_1754476176
dkim-signature: v=1; a=rsa-sha256; d=vastech.co.za; s=dkim;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:MIME-Version:Content-Type;
	bh=FYkfh9ZkmuxTfIsGRxO16ioBztW6NkJWkj7bdVr9AsI=;
	b=i76GaBdzMjaZ/b7GrqFI0Y0dLmn/L63+umsc7LRxi3EmixrBYv8KVn5vvooLpTI6Cex6wLIueljH6lEo2rmyqFjWxbdWN1yypA/VYuoMaCP6exp9LLgszQs72seJWFuHXrOQrdxNI5tpdsPWXx6yCm1GxcLkhtgLq5dDfPH8BGg=
Received: from exchange3.vastech.co.za (Unknown [172.30.81.31])
	by mail.vastech.co.za with ESMTPSA
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256)
	; Wed, 6 Aug 2025 12:29:33 +0200
Received: from exchange3.vastech.co.za (172.30.81.31) by
 exchange3.vastech.co.za (172.30.81.31) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Wed, 6 Aug 2025 12:29:32 +0200
Received: from exchange3.vastech.co.za ([172.30.81.31]) by
 exchange3.vastech.co.za ([172.30.81.31]) with mapi id 15.02.1118.040; Wed, 6
 Aug 2025 12:29:32 +0200
From: Kevin Williams <kevin.williams@vastech.co.za>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: "radio_tx_stb" input on radio_tx_core
Thread-Index: AdwGvISHnzGtecb9QhuknEUJDlezlA==
Date: Wed, 6 Aug 2025 10:29:32 +0000
Message-ID: <34b0dd7790ed4764941ef68db06635e8@vastech.co.za>
Accept-Language: en-US, en-ZA
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.168.4]
MIME-Version: 1.0
Message-ID-Hash: WCGKV4ZRONO5FWUKBI2SUFRVTRPNMVUZ
X-Message-ID-Hash: WCGKV4ZRONO5FWUKBI2SUFRVTRPNMVUZ
X-MailFrom: kevin.williams@vastech.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] "radio_tx_stb" input on radio_tx_core
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WCGKV4ZRONO5FWUKBI2SUFRVTRPNMVUZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0075427603512205921=="

--===============0075427603512205921==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.3;
	boundary="----=_NextPart_000_012C_01DC06CD.C276CC20"

------=_NextPart_000_012C_01DC06CD.C276CC20
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_012D_01DC06CD.C276CC20"


------=_NextPart_001_012D_01DC06CD.C276CC20
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

What does the "radio_tx_stb" signal do here
uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/radio_tx_core.v at
40403b7c00154e4559c47bd6dde924f092992d45
<https://github.com/EttusResearch/uhd/blob/40403b7c00154e4559c47bd6dde924f09
2992d45/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/radio_tx_core.v#L301>
. EttusResearch/uhd?

 

I am trying to find out why I cannot get RF loopback running using dual
channel RFNoC blocks.

 

I note that this signal is required to change states to end up in
ST_TRANSMIT.

 

Thanks, Kevin

 


------=_NextPart_001_012D_01DC06CD.C276CC20
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
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-ZA =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span lang=3DEN-US>Hi,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>What does the =
&#8220;radio_tx_stb&#8221; signal do here </span><a =
href=3D"https://github.com/EttusResearch/uhd/blob/40403b7c00154e4559c47bd=
6dde924f092992d45/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/radio_tx_=
core.v#L301">uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/radio_tx_c=
ore.v at 40403b7c00154e4559c47bd6dde924f092992d45 &middot; =
EttusResearch/uhd</a>?<o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>I am trying to find out why I cannot get RF loopback =
running using dual channel RFNoC blocks.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>I note that this signal is required =
to change states to end up in ST_TRANSMIT.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Thanks, =
Kevin<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>
------=_NextPart_001_012D_01DC06CD.C276CC20--

------=_NextPart_000_012C_01DC06CD.C276CC20
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgMFADCABgkqhkiG9w0BBwEAAKCCDBkw
ggXtMIID1aADAgECAgFZMA0GCSqGSIb3DQEBCwUAMGkxJjAkBgkqhkiG9w0BCQEWF2l0c3VwcG9y
dEB2YXN0ZWNoLmNvLnphMRswGQYDVQQDDBJWQVNUZWNoIFNBIFBUWSBMVEQxCzAJBgNVBAYTAlpB
MRUwEwYDVQQHDAxTdGVsbGVuYm9zY2gwHhcNMjQwMzE5MTQ1MTE4WhcNMzQwMzE4MTQ1MTE4WjCB
jTELMAkGA1UEBhMCWkExGzAZBgNVBAoMElZBU1RlY2ggU0EgUHR5IEx0ZDE0MDIGA1UEAwwrS2V2
aW5fV2lsbGlhbXMta2V2aW4ud2lsbGlhbXNAdmFzdGVjaC5jby56YTErMCkGCSqGSIb3DQEJARYc
a2V2aW4ud2lsbGlhbXNAdmFzdGVjaC5jby56YTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoC
ggIBAMWGpvqe2N4BuT02dH+V8g0qvyXbWrn2Gz7wK9tdw560hrtas/GD6WQ2B7HSDrcgUSoNA4dG
BujaH5Vv6+yH87FLBHhfXLv5N2ZTCNf9lne+94KgFgXFJ6XsTbjCQRgM/6NH7/aJMYAQBgUEnXfi
aSbzG4vg0bltKtqoPCYbh4hVyzFARMjw42VmKln1XGbL9ao9w3T9hLSF3iGauWW6AbTHHMfxGAoJ
4L3PSam04vKfYEo2Z0+NV65xRlZ5OV1xW8TH89tljQZ2Xnx5x2yisSXlsytTYZQSYxx3l5Ni/dpQ
CHS7aj9pKQNgxe1+IEbP7+JcUJozq7jKkyvgNyKTQjbrVAT2mEKSXcLlcCVodKdhheMd6rYxIkaB
O1Q5H+gPwgQymyrj3pQjDXeM+FcovG/rkdqW++hsy7kkSQC0W03IZWb6/k9RnX79v9Puu1OR8JOL
Cq1V6Hm5jJm40VrHTSlRzyUK8zsBRsw3WKVmVOqADgNCa1nBit5wcRqdHHkAD9gxGgBJnNru6ssK
DVpjI2aNewSotxDS9WQh9Qcx9+E33I7dGEnxhyzEa3BY4cDxb9dYIyE6p+VWxGgmqxRB35xnbVul
HHQ2tjZnvKXLWpENLENavdMGdssjoQb54zPQ8TZwVFwvXI0mXFmj/zbM2lHqsz3CEnJ2G+huMJHV
HJ+LAgMBAAGjezB5MAkGA1UdEwQCMAAwLAYJYIZIAYb4QgENBB8WHU9wZW5TU0wgR2VuZXJhdGVk
IENlcnRpZmljYXRlMB0GA1UdDgQWBBRIb2HjnWl31+WiMJf04ly+Ei0USTAfBgNVHSMEGDAWgBQR
ruX6fGvsOFzwRWYoQK/Ve0RwGzANBgkqhkiG9w0BAQsFAAOCAgEAFiPzlT4DS01wj3B+zIbDHyXc
R0cCdguyevVfXKdis2Me7/fQOLVnX686IRQY+mmJfBYnBzxGbCgcixFa+F/mcUak5P4ygIC/6Wd4
0CY1jecsISWwyrzXDSfhoB9QLu3r/UBCa0Q0zOGikf9jMWEVNJ2bTpcvbNxrKTmlGK8tlhNe3gQX
C4k3r1EsLU6VLvus8qhlRhBoDMjfPTOkV2SrShTgLu5jk//fc69hDEijYB33iiKS2eOW95TFGUsZ
jjsPq5KvsOogl8B/etOmhKab+DPZ3fQ5Gkbo2rWM94gv55+VPWgTKGdYYau08Ez2QCGU2TwwvyH5
jrdLi8hzdUVBoWtFz0KYaqX1qSfxov3EPO5IlPOXTBOc85t8GxF0hCeJVG9jYZfABVpXORLXlrdy
B9ThtZvKohKk2f6ND6BH0pd7WAQJBEDeS6sYrCUqv/q8mlxm6PMgZiFwCNBtlXIrhv40mYGTG3m/
mUXm9DfugqrC7wRqsQqaQvPwn2VMdsXhQpQrebm8MjiKcsZBNhSV9TkNPe7VWcooyLlMIZhZAlan
GuPVjZZWbg5nUzcKvJpsr0wXp/BjOdKhhDfCChsZdEhEyqqyeVI+8m5HZBy3Sufqq0tRWOsGBd/u
+eGBS+rGXWhq5czhBw2znq9rkj5EyWTRj4EURLv6iUH3z0NmWP0wggYkMIIEDKADAgECAgkA/jVd
5DmuX4MwDQYJKoZIhvcNAQELBQAwaTEmMCQGCSqGSIb3DQEJARYXaXRzdXBwb3J0QHZhc3RlY2gu
Y28uemExGzAZBgNVBAMMElZBU1RlY2ggU0EgUFRZIExURDELMAkGA1UEBhMCWkExFTATBgNVBAcM
DFN0ZWxsZW5ib3NjaDAeFw0yNDAzMTkxNDQ5MDRaFw0zNDAzMTcxNDQ5MDRaMGkxJjAkBgkqhkiG
9w0BCQEWF2l0c3VwcG9ydEB2YXN0ZWNoLmNvLnphMRswGQYDVQQDDBJWQVNUZWNoIFNBIFBUWSBM
VEQxCzAJBgNVBAYTAlpBMRUwEwYDVQQHDAxTdGVsbGVuYm9zY2gwggIiMA0GCSqGSIb3DQEBAQUA
A4ICDwAwggIKAoICAQC6j3tD0mPRxASmpcVlJO0jRt+F2jpqgVqDbj87h2hZgUXDREJ/1TJm99ab
q6eG/UbMoBHNInKcKlm3RSdyv8qevw9h3qoyJPpBJmSj8Cw+a9LDesM2OOEaGdFVzUa0Wv/bbV0K
VylC2bELZizejHXfOSQ2KFiDfgm9WPiYpdX0lSt0N6LRI2hciO4UD48S8ab9q/heFNBvxMLRPD/r
xLZ5jKkmU7oZGWrdGShXhvZSXsU+I0y+VZ4rUTBc6TA8dd5Tb9SqGcC2DlvTexzpuSrPj7mZhTAu
QGKUCoihueMP3cqM76825hGWrfEaVZ/rbmJif9E+TmbSANDv62E/HV7K7/rev/BcrJEyAZBFVnZo
BslGjCoZ9N9aARsh4yQ1kcZNhXx43YHfbSY51Qb+3qZGOfyLdJarjuskejwi/wdbSkTyeNYROhp8
T+ofwOUv5Rgr84nCh1Ev/8Pstf/P9bAsQb/yVXLcXon6nzTjNxJBnycjAk59OssjsjBZqDDZJ70L
HYPQ52SLKr+im20vjAJzkmjdrVFQ7qKEFIH2qR8c+eHnIht9pEI+BDzZEerglTanlbnVWNrsOQqP
e2G0g2yyZwjp+StoRJyFMcu8Kk0sgjMqIgr82wcSfPXViQxWRHTyJGOzLI7MbvAvq7f0IsIHaMS+
MVlt83pzamE4vBuiEwIDAQABo4HOMIHLMB0GA1UdDgQWBBQRruX6fGvsOFzwRWYoQK/Ve0RwGzCB
mwYDVR0jBIGTMIGQgBQRruX6fGvsOFzwRWYoQK/Ve0RwG6FtpGswaTEmMCQGCSqGSIb3DQEJARYX
aXRzdXBwb3J0QHZhc3RlY2guY28uemExGzAZBgNVBAMMElZBU1RlY2ggU0EgUFRZIExURDELMAkG
A1UEBhMCWkExFTATBgNVBAcMDFN0ZWxsZW5ib3NjaIIJAP41XeQ5rl+DMAwGA1UdEwQFMAMBAf8w
DQYJKoZIhvcNAQELBQADggIBAJyguGtMwc10ydLtksblz27VRj1QXtuFABjDFO85R96QuheQCugS
zKpFMmaUBf9zL3MeBhddcc/aYT+l00VyMSqfRgNelZayMZxyiYa7xr4VTpMUQb3PMA6tUaJcMKQR
KhMLSdrGHvAwnyaP3XhZoFtVj+e4i5ysS93uVRzqSaMCgt4N9zRAIoyXRIgganQPsuGMdP/wy5zi
EU+2L2CMaQezzVp0Tq9SiHDVj4iHJPqlZJ2v5pRbEqHe0A43iNcq6+pcYVI6WuICmx3UvcXjHBuj
Xv+BUeLEKmhQ8CLzRefB3udxwpgh9CQX7OIS00MWhLQaRFMTCmyMCltI8YgfbFU8B4IO7MUOo9PN
nL4l8avY+BvXlsXgMAALhMBXy83dyWKe+O2EKLPatnpJX4+fFLEMLMak34Pm+B73kzQwBKTXLK9Z
iv2ba//q/LBiuBM5HDfKkcDsjpKpi1e2ofADJbE2ajNpqYNCA/xkJLQl7hFFrnGoDPrpM4LOfFYn
6DVkMpRS5dpwLfQFvCJQChp2mmrzwaWcCYeXPCVv7Yeka1fZRonbg2hFTlaR6Tw1DCTKEVnajfJt
1pmfaQZZ5iPKU6+a9Z4Lb16wN1gvDAZ60V+BzObCclS3RUnCoF8P1ekVhFIsI8zE9cLTLe6VlAbq
L9nC0AZauAaa8woBU71JhSI3MYIEvDCCBLgCAQEwbjBpMSYwJAYJKoZIhvcNAQkBFhdpdHN1cHBv
cnRAdmFzdGVjaC5jby56YTEbMBkGA1UEAwwSVkFTVGVjaCBTQSBQVFkgTFREMQswCQYDVQQGEwJa
QTEVMBMGA1UEBwwMU3RlbGxlbmJvc2NoAgFZMA0GCWCGSAFlAwQCAwUAoIICHzAYBgkqhkiG9w0B
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yNTA4MDYxMDI5MzFaME8GCSqGSIb3DQEJ
BDFCBECxr9gWJt/5Zszh7+RvIKGq3BQAnTNDrAEYK+NJ4AsqebKfd32jV5MxwrXnqNlUPzJayH96
kEkufphxNh8OVdCJMH0GCSsGAQQBgjcQBDFwMG4waTEmMCQGCSqGSIb3DQEJARYXaXRzdXBwb3J0
QHZhc3RlY2guY28uemExGzAZBgNVBAMMElZBU1RlY2ggU0EgUFRZIExURDELMAkGA1UEBhMCWkEx
FTATBgNVBAcMDFN0ZWxsZW5ib3NjaAIBWTB/BgsqhkiG9w0BCRACCzFwoG4waTEmMCQGCSqGSIb3
DQEJARYXaXRzdXBwb3J0QHZhc3RlY2guY28uemExGzAZBgNVBAMMElZBU1RlY2ggU0EgUFRZIExU
RDELMAkGA1UEBhMCWkExFTATBgNVBAcMDFN0ZWxsZW5ib3NjaAIBWTCBkwYJKoZIhvcNAQkPMYGF
MIGCMAsGCWCGSAFlAwQBKjALBglghkgBZQMEARYwCgYIKoZIhvcNAwcwCwYJYIZIAWUDBAECMA4G
CCqGSIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDALBglghkgBZQMEAgMwCwYJYIZIAWUDBAICMAsG
CWCGSAFlAwQCATAHBgUrDgMCGjANBgkqhkiG9w0BAQEFAASCAgAKjTDHXzOoF8udZxeYJckaI4Cv
K1vRBFbADF3+qgz6gU3Z2rivRmqxBVQ3PvUyttu42hJ6CCYpTWeocjBQ3+yk0QXYc8Dz5jXbdW+w
3XEY0tbPi7jK2ySZZE7109BLVaWUFx9H8MfhgjgVuOwSEVtzgaiUFHd+k7r52L8EJmjdq7uXCZf+
UVmtuFkeIjmfsqry5jyXGOmKM3rXI68W7K4iv5IYhKQi8R1le0uz6D2l+wtawOemeotpUyxqSwVq
/GlsZ0AYN0Bj0lKs7ZPhZrAJkYURblFDryhmfHBVPk93EO+Me2v2MTByBXPgXPEQkh6QkPuaq2Ie
VE52pwMWEXP7OaYS7MWiOM/E2ognhOUTuCQJUeObowyvG6kPGvFeYJnMmg7TLlrBQrr9MkDOaeJf
hi+UfXKSySOHdYqhMnG48x6WGkkbe4T6q7xmLlhIG2wMXTp8MfcTOChNDFuu0ae7LWeuj+uuDXW1
GEXygHGz95nvkO1j4H5/BFbbPmN1j8c0ijfMPivWw/LYLPJ+a9c0YAAWjll7iyUwQl+Y86dC2eU4
HFZuCDQq9I8if2zArmI3CiteoO63yrhSvzS7SX2L0BefQJE58Ns8DweNUJPYdA8kXbITfmhBZ0oN
3LQ0Phtp/Lgwu7FjywlIBVfUgm+QY2Rz/v7d6rSCM+lPHJAeuAAAAAAAAA==

------=_NextPart_000_012C_01DC06CD.C276CC20--

--===============0075427603512205921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0075427603512205921==--
