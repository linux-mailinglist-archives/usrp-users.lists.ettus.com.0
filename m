Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F21A78C48
	for <lists+usrp-users@lfdr.de>; Wed,  2 Apr 2025 12:27:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A1B75385D07
	for <lists+usrp-users@lfdr.de>; Wed,  2 Apr 2025 06:27:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743589669; bh=/rYR01s88Ju7v4DZ3B6oZ0t5czaRXspC4poVJZ/VDzU=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=zEgv9WmTxaN/cLBUpqferXoTHjqa3JT6NJY5U8dcoVw6qyryIBj5JPpoaayi7xjs7
	 gHh5j7QCHvQGHIVftLZqlY83xL6RjNm0xj2ykTBHiqhF584Pr0KIVo1vY0lwJ5CtMG
	 HlqFXESnQJ5quWgBE837LsiOYW/5W4tfh+lW9Kg3xqu205iE5aCVVdkFmxGDDjd2Pr
	 1v+cruFSTmVSi30T51Kd/G//ci2KfeSQmimr/L8CCeQu+EWo/X7dqczRdvH82DSfug
	 0TayV1My2G21zm8z+RO7COSDPgtKEqNpu+Sj8ynYBCBNHBsgL07ST7g1UslCTiQAuD
	 s5ZEmPULHEW5g==
Received: from za-smtp-delivery-132.mimecast.co.za (za-smtp-delivery-132.mimecast.co.za [41.74.201.132])
	by mm2.emwd.com (Postfix) with ESMTPS id 64012385B33
	for <usrp-users@lists.ettus.com>; Wed,  2 Apr 2025 06:27:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vastech.co.za header.i=@vastech.co.za header.b="dafbSM0w";
	dkim-atps=neutral
Received: from mail.vastech.co.za (mail.vastech.co.za [41.193.221.138]) by
 relay.mimecast.com with ESMTP id za-mta-63-29psFy-pPXWRrDEyDqxTUQ-1; Wed,
 02 Apr 2025 12:27:29 +0200
X-MC-Unique: 29psFy-pPXWRrDEyDqxTUQ-1
X-Mimecast-MFC-AGG-ID: 29psFy-pPXWRrDEyDqxTUQ_1743589648
dkim-signature: v=1; a=rsa-sha256; d=vastech.co.za; s=dkim;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:In-Reply-To:References;
	bh=e5oP/HudDUgAacHZfKlAGmopwLC9f2vvQ0e2HvQ+wWM=;
	b=dafbSM0wWHWJMpLWFUCzuGTqsdntTf+qzPS2QmgJq8ItrQZfzBDyCtcRUf90jkjBuLBSgp5DM6a4mLNdwy4Jbl/virFO2NM36J6v22bUi89YnEaAYeR7YtTyrN+kKcgDNRBHPL27f7VDO1zGKoFNJCn0DK9QMBpoUQiqbejczUc=
Received: from exchange3.vastech.co.za (Unknown [172.30.81.31])
	by mail.vastech.co.za with ESMTPSA
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256)
	; Wed, 2 Apr 2025 12:27:23 +0200
Received: from exchange3.vastech.co.za (172.30.81.31) by
 exchange3.vastech.co.za (172.30.81.31) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Wed, 2 Apr 2025 12:27:23 +0200
Received: from exchange3.vastech.co.za ([172.30.81.31]) by
 exchange3.vastech.co.za ([172.30.81.31]) with mapi id 15.02.1118.040; Wed, 2
 Apr 2025 12:27:17 +0200
From: Kevin Williams <kevin.williams@vastech.co.za>
To: "martin.braun@ettus.com" <martin.braun@ettus.com>
Thread-Topic: [EXTERNAL]Re: [USRP-users] connecting the ce clock to a custom
 rfnoc block
Thread-Index: AdujqL027TyZBY22SmCFkqR5jeCEFf//6+kA///KIHA=
Date: Wed, 2 Apr 2025 10:27:17 +0000
Message-ID: <fc090571bab3440eba42f7bf7a721174@vastech.co.za>
References: <63f702f8ef9743189a819b78da43b349@vastech.co.za>
 <CAFOi1A7sD6E+ZGJsxOSm4Tzvg8ouTrS8WJ0tfqf6=GUpiLZVdA@mail.gmail.com>
In-Reply-To: <CAFOi1A7sD6E+ZGJsxOSm4Tzvg8ouTrS8WJ0tfqf6=GUpiLZVdA@mail.gmail.com>
Accept-Language: en-US, en-ZA
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.168.3]
MIME-Version: 1.0
Message-ID-Hash: ND4OHLDIDFZNOUJZCK3EK74TH4YIO2R2
X-Message-ID-Hash: ND4OHLDIDFZNOUJZCK3EK74TH4YIO2R2
X-MailFrom: kevin.williams@vastech.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: connecting the ce clock to a custom rfnoc block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ND4OHLDIDFZNOUJZCK3EK74TH4YIO2R2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1720213437648339802=="

--===============1720213437648339802==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_028A_01DBA3CA.91BA7980"

------=_NextPart_000_028A_01DBA3CA.91BA7980
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_028B_01DBA3CA.91BA7980"


------=_NextPart_001_028B_01DBA3CA.91BA7980
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Ah. It sneakily uses the block config which got installed in =
/usr/local/share/uhd and not the one I am working on.

=20

Thanks.

=20

From: Martin Braun <martin.braun@ettus.com>=20
Sent: Wednesday, 02 April 2025 11:13
To: Kevin Williams <kevin.williams@vastech.co.za>
Cc: usrp-users@lists.ettus.com
Subject: [EXTERNAL]Re: [USRP-users] connecting the ce clock to a custom =
rfnoc block

=20

What you're doing is correct. Is it possible there's an old version of =
the YAML file that is being picked up? You can increase the log level of =
the image builder, it will tell you which files it's sourcing.

=20

--M

=20

On Wed, Apr 2, 2025 at 10:31=E2=80=AFAM Kevin Williams =
<kevin.williams@vastech.co.za <mailto:kevin.williams@vastech.co.za> > =
wrote:

Hi,

I am trying to make use of the CE clock in a custom RFNoC block on an =
N300.

The way I understand it is to add it to the clock definitions in the =
block
yaml file:

clocks:
  - name: rfnoc_chdr
    freq: "[]"
  - name: rfnoc_ctrl
    freq: "[]"
  - name: ce
    freq: "[]"

and then just connect it in the image yaml file:

clk_domains:
  - { srcblk: _device_, srcport: radio,     dstblk: radio0,     dstport:
radio    }
  - { srcblk: _device_, srcport: ce,        dstblk: polconv0,   dstport: =
ce
}

Running make I get the error: "Invalid clock domain connection: =
_device_:ce
=E2=86=92 polconv0:ce (ce is not a clock input)"

I can't find another place to define that clock input for my block?

Kind regards, Kevin

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com>=20
To unsubscribe send an email to usrp-users-leave@lists.ettus.com =
<mailto:usrp-users-leave@lists.ettus.com>=20


------=_NextPart_001_028B_01DBA3CA.91BA7980
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
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
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-reply;
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-ZA link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>Ah. It sneakily uses the block =
config which got installed in /usr/local/share/uhd and not the one I am =
working on.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>Thanks.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US>From:</span></b><span =
lang=3DEN-US> Martin Braun &lt;martin.braun@ettus.com&gt; =
<br><b>Sent:</b> Wednesday, 02 April 2025 11:13<br><b>To:</b> Kevin =
Williams &lt;kevin.williams@vastech.co.za&gt;<br><b>Cc:</b> =
usrp-users@lists.ettus.com<br><b>Subject:</b> [EXTERNAL]Re: [USRP-users] =
connecting the ce clock to a custom rfnoc block<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p =
class=3DMsoNormal>What you're doing is correct. Is it possible there's =
an old version of the YAML file that is being picked up? You can =
increase the log level of the image builder, it will tell you which =
files it's sourcing.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>--M<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Wed, Apr 2, 2025 at 10:31=E2=80=AFAM Kevin Williams &lt;<a =
href=3D"mailto:kevin.williams@vastech.co.za">kevin.williams@vastech.co.za=
</a>&gt; wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><p =
class=3DMsoNormal>Hi,<br><br>I am trying to make use of the CE clock in =
a custom RFNoC block on an N300.<br><br>The way I understand it is to =
add it to the clock definitions in the block<br>yaml =
file:<br><br>clocks:<br>&nbsp; - name: rfnoc_chdr<br>&nbsp; &nbsp; freq: =
&quot;[]&quot;<br>&nbsp; - name: rfnoc_ctrl<br>&nbsp; &nbsp; freq: =
&quot;[]&quot;<br>&nbsp; - name: ce<br>&nbsp; &nbsp; freq: =
&quot;[]&quot;<br><br>and then just connect it in the image yaml =
file:<br><br>clk_domains:<br>&nbsp; - { srcblk: _device_, srcport: =
radio,&nbsp; &nbsp; &nbsp;dstblk: radio0,&nbsp; &nbsp; =
&nbsp;dstport:<br>radio&nbsp; &nbsp; }<br>&nbsp; - { srcblk: _device_, =
srcport: ce,&nbsp; &nbsp; &nbsp; &nbsp; dstblk: polconv0,&nbsp; =
&nbsp;dstport: ce<br>}<br><br>Running make I get the error: =
&quot;Invalid clock domain connection: _device_:ce<br>=E2=86=92 =
polconv0:ce (ce is not a clock input)&quot;<br><br>I can't find another =
place to define that clock input for my block?<br><br>Kind regards, =
Kevin<br><br>_______________________________________________<br>USRP-user=
s mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send =
an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><o:p></o:p></p></bl=
ockquote></div></div></body></html>
------=_NextPart_001_028B_01DBA3CA.91BA7980--

------=_NextPart_000_028A_01DBA3CA.91BA7980
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIMGTCCBe0w
ggPVoAMCAQICAVkwDQYJKoZIhvcNAQELBQAwaTEmMCQGCSqGSIb3DQEJARYXaXRzdXBwb3J0QHZh
c3RlY2guY28uemExGzAZBgNVBAMMElZBU1RlY2ggU0EgUFRZIExURDELMAkGA1UEBhMCWkExFTAT
BgNVBAcMDFN0ZWxsZW5ib3NjaDAeFw0yNDAzMTkxNDUxMThaFw0zNDAzMTgxNDUxMThaMIGNMQsw
CQYDVQQGEwJaQTEbMBkGA1UECgwSVkFTVGVjaCBTQSBQdHkgTHRkMTQwMgYDVQQDDCtLZXZpbl9X
aWxsaWFtcy1rZXZpbi53aWxsaWFtc0B2YXN0ZWNoLmNvLnphMSswKQYJKoZIhvcNAQkBFhxrZXZp
bi53aWxsaWFtc0B2YXN0ZWNoLmNvLnphMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA
xYam+p7Y3gG5PTZ0f5XyDSq/JdtaufYbPvAr213DnrSGu1qz8YPpZDYHsdIOtyBRKg0Dh0YG6Nof
lW/r7IfzsUsEeF9cu/k3ZlMI1/2Wd773gqAWBcUnpexNuMJBGAz/o0fv9okxgBAGBQSdd+JpJvMb
i+DRuW0q2qg8JhuHiFXLMUBEyPDjZWYqWfVcZsv1qj3DdP2EtIXeIZq5ZboBtMccx/EYCgngvc9J
qbTi8p9gSjZnT41XrnFGVnk5XXFbxMfz22WNBnZefHnHbKKxJeWzK1NhlBJjHHeXk2L92lAIdLtq
P2kpA2DF7X4gRs/v4lxQmjOruMqTK+A3IpNCNutUBPaYQpJdwuVwJWh0p2GF4x3qtjEiRoE7VDkf
6A/CBDKbKuPelCMNd4z4Vyi8b+uR2pb76GzLuSRJALRbTchlZvr+T1Gdfv2/0+67U5Hwk4sKrVXo
ebmMmbjRWsdNKVHPJQrzOwFGzDdYpWZU6oAOA0JrWcGK3nBxGp0ceQAP2DEaAEmc2u7qywoNWmMj
Zo17BKi3ENL1ZCH1BzH34Tfcjt0YSfGHLMRrcFjhwPFv11gjITqn5VbEaCarFEHfnGdtW6UcdDa2
Nme8pctakQ0sQ1q90wZ2yyOhBvnjM9DxNnBUXC9cjSZcWaP/NszaUeqzPcIScnYb6G4wkdUcn4sC
AwEAAaN7MHkwCQYDVR0TBAIwADAsBglghkgBhvhCAQ0EHxYdT3BlblNTTCBHZW5lcmF0ZWQgQ2Vy
dGlmaWNhdGUwHQYDVR0OBBYEFEhvYeOdaXfX5aIwl/TiXL4SLRRJMB8GA1UdIwQYMBaAFBGu5fp8
a+w4XPBFZihAr9V7RHAbMA0GCSqGSIb3DQEBCwUAA4ICAQAWI/OVPgNLTXCPcH7MhsMfJdxHRwJ2
C7J69V9cp2KzYx7v99A4tWdfrzohFBj6aYl8FicHPEZsKByLEVr4X+ZxRqTk/jKAgL/pZ3jQJjWN
5ywhJbDKvNcNJ+GgH1Au7ev9QEJrRDTM4aKR/2MxYRU0nZtOly9s3GspOaUYry2WE17eBBcLiTev
USwtTpUu+6zyqGVGEGgMyN89M6RXZKtKFOAu7mOT/99zr2EMSKNgHfeKIpLZ45b3lMUZSxmOOw+r
kq+w6iCXwH9606aEppv4M9nd9DkaRujatYz3iC/nn5U9aBMoZ1hhq7TwTPZAIZTZPDC/IfmOt0uL
yHN1RUGha0XPQphqpfWpJ/Gi/cQ87kiU85dME5zzm3wbEXSEJ4lUb2Nhl8AFWlc5EteWt3IH1OG1
m8qiEqTZ/o0PoEfSl3tYBAkEQN5LqxisJSq/+ryaXGbo8yBmIXAI0G2VciuG/jSZgZMbeb+ZReb0
N+6CqsLvBGqxCppC8/CfZUx2xeFClCt5ubwyOIpyxkE2FJX1OQ097tVZyijIuUwhmFkCVqca49WN
llZuDmdTNwq8mmyvTBen8GM50qGEN8IKGxl0SETKqrJ5Uj7ybkdkHLdK5+qrS1FY6wYF3+754YFL
6sZdaGrlzOEHDbOer2uSPkTJZNGPgRREu/qJQffPQ2ZY/TCCBiQwggQMoAMCAQICCQD+NV3kOa5f
gzANBgkqhkiG9w0BAQsFADBpMSYwJAYJKoZIhvcNAQkBFhdpdHN1cHBvcnRAdmFzdGVjaC5jby56
YTEbMBkGA1UEAwwSVkFTVGVjaCBTQSBQVFkgTFREMQswCQYDVQQGEwJaQTEVMBMGA1UEBwwMU3Rl
bGxlbmJvc2NoMB4XDTI0MDMxOTE0NDkwNFoXDTM0MDMxNzE0NDkwNFowaTEmMCQGCSqGSIb3DQEJ
ARYXaXRzdXBwb3J0QHZhc3RlY2guY28uemExGzAZBgNVBAMMElZBU1RlY2ggU0EgUFRZIExURDEL
MAkGA1UEBhMCWkExFTATBgNVBAcMDFN0ZWxsZW5ib3NjaDCCAiIwDQYJKoZIhvcNAQEBBQADggIP
ADCCAgoCggIBALqPe0PSY9HEBKalxWUk7SNG34XaOmqBWoNuPzuHaFmBRcNEQn/VMmb31purp4b9
RsygEc0icpwqWbdFJ3K/yp6/D2HeqjIk+kEmZKPwLD5r0sN6wzY44RoZ0VXNRrRa/9ttXQpXKULZ
sQtmLN6Mdd85JDYoWIN+Cb1Y+Jil1fSVK3Q3otEjaFyI7hQPjxLxpv2r+F4U0G/EwtE8P+vEtnmM
qSZTuhkZat0ZKFeG9lJexT4jTL5VnitRMFzpMDx13lNv1KoZwLYOW9N7HOm5Ks+PuZmFMC5AYpQK
iKG54w/dyozvrzbmEZat8RpVn+tuYmJ/0T5OZtIA0O/rYT8dXsrv+t6/8FyskTIBkEVWdmgGyUaM
Khn031oBGyHjJDWRxk2FfHjdgd9tJjnVBv7epkY5/It0lquO6yR6PCL/B1tKRPJ41hE6GnxP6h/A
5S/lGCvzicKHUS//w+y1/8/1sCxBv/JVctxeifqfNOM3EkGfJyMCTn06yyOyMFmoMNknvQsdg9Dn
ZIsqv6KbbS+MAnOSaN2tUVDuooQUgfapHxz54eciG32kQj4EPNkR6uCVNqeVudVY2uw5Co97YbSD
bLJnCOn5K2hEnIUxy7wqTSyCMyoiCvzbBxJ89dWJDFZEdPIkY7Msjsxu8C+rt/QiwgdoxL4xWW3z
enNqYTi8G6ITAgMBAAGjgc4wgcswHQYDVR0OBBYEFBGu5fp8a+w4XPBFZihAr9V7RHAbMIGbBgNV
HSMEgZMwgZCAFBGu5fp8a+w4XPBFZihAr9V7RHAboW2kazBpMSYwJAYJKoZIhvcNAQkBFhdpdHN1
cHBvcnRAdmFzdGVjaC5jby56YTEbMBkGA1UEAwwSVkFTVGVjaCBTQSBQVFkgTFREMQswCQYDVQQG
EwJaQTEVMBMGA1UEBwwMU3RlbGxlbmJvc2NoggkA/jVd5DmuX4MwDAYDVR0TBAUwAwEB/zANBgkq
hkiG9w0BAQsFAAOCAgEAnKC4a0zBzXTJ0u2SxuXPbtVGPVBe24UAGMMU7zlH3pC6F5AK6BLMqkUy
ZpQF/3Mvcx4GF11xz9phP6XTRXIxKp9GA16VlrIxnHKJhrvGvhVOkxRBvc8wDq1RolwwpBEqEwtJ
2sYe8DCfJo/deFmgW1WP57iLnKxL3e5VHOpJowKC3g33NEAijJdEiCBqdA+y4Yx0//DLnOIRT7Yv
YIxpB7PNWnROr1KIcNWPiIck+qVkna/mlFsSod7QDjeI1yrr6lxhUjpa4gKbHdS9xeMcG6Ne/4FR
4sQqaFDwIvNF58He53HCmCH0JBfs4hLTQxaEtBpEUxMKbIwKW0jxiB9sVTwHgg7sxQ6j082cviXx
q9j4G9eWxeAwAAuEwFfLzd3JYp747YQos9q2eklfj58UsQwsxqTfg+b4HveTNDAEpNcsr1mK/Ztr
/+r8sGK4EzkcN8qRwOyOkqmLV7ah8AMlsTZqM2mpg0ID/GQktCXuEUWucagM+ukzgs58VifoNWQy
lFLl2nAt9AW8IlAKGnaaavPBpZwJh5c8JW/th6RrV9lGiduDaEVOVpHpPDUMJMoRWdqN8m3WmZ9p
BlnmI8pTr5r1ngtvXrA3WC8MBnrRX4HM5sJyVLdFScKgXw/V6RWEUiwjzMT1wtMt7pWUBuov2cLQ
Blq4BprzCgFTvUmFIjcxggSMMIIEiAIBATBuMGkxJjAkBgkqhkiG9w0BCQEWF2l0c3VwcG9ydEB2
YXN0ZWNoLmNvLnphMRswGQYDVQQDDBJWQVNUZWNoIFNBIFBUWSBMVEQxCzAJBgNVBAYTAlpBMRUw
EwYDVQQHDAxTdGVsbGVuYm9zY2gCAVkwCQYFKw4DAhoFAKCCAfMwGAYJKoZIhvcNAQkDMQsGCSqG
SIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMjUwNDAyMTAyNzE2WjAjBgkqhkiG9w0BCQQxFgQUhcQ3
cJD2cY2bbMIIqVIc8VLSNIwwfQYJKwYBBAGCNxAEMXAwbjBpMSYwJAYJKoZIhvcNAQkBFhdpdHN1
cHBvcnRAdmFzdGVjaC5jby56YTEbMBkGA1UEAwwSVkFTVGVjaCBTQSBQVFkgTFREMQswCQYDVQQG
EwJaQTEVMBMGA1UEBwwMU3RlbGxlbmJvc2NoAgFZMH8GCyqGSIb3DQEJEAILMXCgbjBpMSYwJAYJ
KoZIhvcNAQkBFhdpdHN1cHBvcnRAdmFzdGVjaC5jby56YTEbMBkGA1UEAwwSVkFTVGVjaCBTQSBQ
VFkgTFREMQswCQYDVQQGEwJaQTEVMBMGA1UEBwwMU3RlbGxlbmJvc2NoAgFZMIGTBgkqhkiG9w0B
CQ8xgYUwgYIwCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQBFjAKBggqhkiG9w0DBzALBglghkgBZQME
AQIwDgYIKoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIaMAsGCWCGSAFlAwQCAzAL
BglghkgBZQMEAgIwCwYJYIZIAWUDBAIBMA0GCSqGSIb3DQEBAQUABIICAA6eA95XrfBJXTgfv2PN
LfgjpKwxzBWY7uQR0e/SuO5C3VHvm7MjDgeRmOUDItccdmbHoz/Zve0nBYMNShhsQ94fXFw/1hU6
JIROc4+hwSvzkWxAKFZjN7TTCF1npt+Q3DIGfZG82thzcPFM6zFJvUypgcJe8463Do53ABfI9BYO
v2fSMnA/W8qhphA2W1uPsCaXLVbsmcpUGqNT3GhY0kEXRzzFZJVgP3VSMi77ZuFsFihUvFOa2vRa
B+alnZcx8e6tc5Nqx8zJCB7FcMn4YqFILVvtJ75kP4v0yGzXf76Huf4Y0fxhCXcdhz19jPWcuGzD
l9MkFcw3zD3+WxVd2pcHIYyK0C+lnbSSF2QQ5xlvmIy+xVvOlUgtDei0DJQxqHyg+SHRQJEax17U
pQFcCTjvevo8fmNR8vCJK81oVnXvF+zAvziIwyfU3p30ZsmrMfFOGZot27/GtLux7raVm3PpQliy
Xwq9TjyyVM17Z3RuCF9oD7GLsxwoVodhWL4agTO4D3f6SbAlc8Vvr74MtLdRIDpfNPI6Cfl/ez+3
1WEWntJ0/DRIa6FfJKaizkTafds9ppte5HH/9FHv3EkLvz1vMzF0kqgeFJeorLDyig6E2w/n2B0c
A/MU1fMy3Sy5ia6hUl1lY577KnenSqQzMkbnfolR/ahE2cTOOWE5m9MdAAAAAAAA

------=_NextPart_000_028A_01DBA3CA.91BA7980--

--===============1720213437648339802==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1720213437648339802==--
