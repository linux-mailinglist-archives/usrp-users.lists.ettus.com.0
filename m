Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5F6B0F3EE
	for <lists+usrp-users@lfdr.de>; Wed, 23 Jul 2025 15:26:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 96AD6385CD0
	for <lists+usrp-users@lfdr.de>; Wed, 23 Jul 2025 09:26:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753277195; bh=EHwGk9qOMmAkfMa8GGQmgtOYQIzUb8RXSkS9JvuDoKE=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Amzna3HV1p9Wf+smlXAwmVT8tOt7ohk03Ued2+N2uUwxP6iIiS3tdBXKFuIvZMWgp
	 qZlxMrlZirfHflS44UOeSX2StljGAPi9WeXFqlDQg1WT2ofRBgjjWnfIAOcIIvURMg
	 KMF0e6YanB4ceouKw+BYBuN+W8SlvPkEBEW/6O/Wz9RLpetM5C0v2N8tw7rtbE/aKM
	 EQT6fX2T0MPpp0rchpGVrJRRI8q8ZFLWVq7CmylC6KOosbUsPcMJQrHiE6a1dtgEp6
	 j3ECZa5CJjubar+4SDxpcgUWDvMU5TJQFcDeU+LvXGmKmJTay2lIOnYc55dnihOFHw
	 myFJFMPP3nOQg==
Received: from za-smtp-delivery-57.mimecast.co.za (za-smtp-delivery-57.mimecast.co.za [41.74.201.57])
	by mm2.emwd.com (Postfix) with ESMTPS id 6C9EC385B75
	for <usrp-users@lists.ettus.com>; Wed, 23 Jul 2025 09:25:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vastech.co.za header.i=@vastech.co.za header.b="Vk5pPTUF";
	dkim-atps=neutral
Received: from mail.vastech.co.za (41.193.248.106 [41.193.248.106]) by
 relay.mimecast.com with ESMTP id za-mta-83-s4NGJnh-NN6guHy7fHD1rA-1; Wed,
 23 Jul 2025 15:25:38 +0200
X-MC-Unique: s4NGJnh-NN6guHy7fHD1rA-1
X-Mimecast-MFC-AGG-ID: s4NGJnh-NN6guHy7fHD1rA_1753277138
dkim-signature: v=1; a=rsa-sha256; d=vastech.co.za; s=dkim;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:In-Reply-To:References;
	bh=v+A5vRqOxbm4d2J9E6xO8F2rtiSeLrByMoLcj3NB0uQ=;
	b=Vk5pPTUFa23lsHa1jW/yAqoUtkNVqhxaT9Tq6BymxFTVKceJFfZjZ/4QxHhM0gwO00GmcrqW1SxksrMQyKbjymkeUhuUkEXgNQX8Y8VyjRF3739tqGm/ONWst1LvzFZHiJS3FTE1nZiy8NSx7TEyJiEjlEJxuuotKixFbWShtlU=
Received: from EXCHANGE2.vastech.co.za (Unknown [172.30.81.30])
	by mail.vastech.co.za with ESMTPSA
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256)
	; Wed, 23 Jul 2025 15:25:35 +0200
Received: from exchange3.vastech.co.za (172.30.81.31) by
 EXCHANGE2.vastech.co.za (172.30.81.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Wed, 23 Jul 2025 15:25:35 +0200
Received: from exchange3.vastech.co.za ([172.30.81.31]) by
 exchange3.vastech.co.za ([172.30.81.31]) with mapi id 15.02.1118.040; Wed, 23
 Jul 2025 15:25:29 +0200
From: Kevin Williams <kevin.williams@vastech.co.za>
To: "nbalkanas@gmail.com" <nbalkanas@gmail.com>
Thread-Topic: [EXTERNAL]Re: [USRP-users] remote streaming starts, but stops
 after a few packets received
Thread-Index: Adv7yvkJv5zhuP5TSkWsizBU3L8RAf//8CgA///b0JA=
Date: Wed, 23 Jul 2025 13:25:29 +0000
Message-ID: <f5f1203d882b491590eb5c124106d466@vastech.co.za>
References: <111b29cda9ce4309b4966fcfcc3b7ece@vastech.co.za>
 <CAAxXO2HUxF7tDvb8_OzmZS4xat-SM=X_BMN465cvw5PzGQvQ+A@mail.gmail.com>
In-Reply-To: <CAAxXO2HUxF7tDvb8_OzmZS4xat-SM=X_BMN465cvw5PzGQvQ+A@mail.gmail.com>
Accept-Language: en-US, en-ZA
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.168.4]
MIME-Version: 1.0
Message-ID-Hash: U2MLTENYTRYF2HVNXS6T6TT7WWB3ALKR
X-Message-ID-Hash: U2MLTENYTRYF2HVNXS6T6TT7WWB3ALKR
X-MailFrom: kevin.williams@vastech.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: remote streaming starts, but stops after a few packets received
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U2MLTENYTRYF2HVNXS6T6TT7WWB3ALKR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4859224257573062524=="

--===============4859224257573062524==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.3;
	boundary="----=_NextPart_000_00F6_01DBFBE6.04EDBA20"

------=_NextPart_000_00F6_01DBFBE6.04EDBA20
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_00F7_01DBFBE6.04EDBA20"


------=_NextPart_001_00F7_01DBFBE6.04EDBA20
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nikos,

=20

Just to clarify: this is using remote streaming where one can turn off =
the header etc.

=20

Yes, using continuous mode also.

=20

Cheers, Kevin

=20

From: Nikos Balkanas <nbalkanas@gmail.com>=20
Sent: Wednesday, 23 July 2025 15:15
To: Kevin Williams <kevin.williams@vastech.co.za>
Cc: usrp-users@lists.ettus.com
Subject: [EXTERNAL]Re: [USRP-users] remote streaming starts, but stops =
after a few packets received

=20

Hi Kevin,

=20

What are your stream_args?

Using UHD_STREAM_MODE_NUM_SAMPS_AND_DONE?

Not using RFNOC, but full_packet is not a UHD 4.6 mode:(

=20

BR,

nikos

=20

On Wed, Jul 23, 2025 at 3:14=E2=80=AFPM Kevin Williams =
<kevin.williams@vastech.co.za <mailto:kevin.williams@vastech.co.za> > =
wrote:

Hi,

=20

I have enabled remote streaming but according to wireshark I only =
receive 6x 4k packets.

=20

Everything about them is correct =E2=80=93 the destination ip, port, =
size, etc.

=20

From the debug logs the stream is set up as:

=20

[DEBUG] [RFNOC] Creating diverted RX stream with arguments: =
dest_addr=3D172.17.0.2,dest_mac_addr=3D02:42:ac:11:00:02,dest_port=3D1234=
,stream_mode=3Dfull_packet,__chdr_width=3D64,enable_remote_stream=3D1,ena=
ble_fc=3D0

[DEBUG] [X300::SFP0::TA_CTL] On transport adapter 0: Adding route from =
EPID 6 to destination 172.17.0.2:1234 =
<https://url.za.m.mimecastprotect.com/s/Al-NC98BNNiNO7DsofKiqDHZw?domain=3D=
172.17.0.2>  (MAC Address: 02:42:ac:11:00:02), stream mode FULL_PACKET =
(0)

=20

What could cause that streaming to stop (given there is no flow =
control)?

=20

Many thanks, Kevin

=20

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com>=20
To unsubscribe send an email to usrp-users-leave@lists.ettus.com =
<mailto:usrp-users-leave@lists.ettus.com>=20


------=_NextPart_001_00F7_01DBFBE6.04EDBA20
Content-Type: text/html;
	charset="UTF-8"
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
style=3D'mso-fareast-language:EN-US'>Hi Nikos,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>Just to =
clarify: this is using remote streaming where one can turn off the =
header etc.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>Yes, using =
continuous mode also.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>Cheers, =
Kevin<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US>From:</span></b><span =
lang=3DEN-US> Nikos Balkanas &lt;nbalkanas@gmail.com&gt; =
<br><b>Sent:</b> Wednesday, 23 July 2025 15:15<br><b>To:</b> Kevin =
Williams &lt;kevin.williams@vastech.co.za&gt;<br><b>Cc:</b> =
usrp-users@lists.ettus.com<br><b>Subject:</b> [EXTERNAL]Re: [USRP-users] =
remote streaming starts, but stops after a few packets =
received<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt'>Hi =
Kevin,<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></p></div><div><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt'>What are your =
stream_args?<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt'>Using =
UHD_STREAM_MODE_NUM_SAMPS_AND_DONE?<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt'>Not using RFNOC, but =
full_packet is not a UHD 4.6 mode:(<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></p></div><div><p =
class=3DMsoNormal><span =
style=3D'font-size:12.0pt'>BR,<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span =
style=3D'font-size:12.0pt'>nikos<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Wed, Jul 23, 2025 at 3:14=E2=80=AFPM Kevin Williams &lt;<a =
href=3D"mailto:kevin.williams@vastech.co.za">kevin.williams@vastech.co.za=
</a>&gt; wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Hi,</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I have enabled remote streaming but according to wireshark =
I only receive 6x 4k packets.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Everything about them is correct =E2=80=93 the destination =
ip, port, size, etc.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>From the debug logs the stream is set up =
as:</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[DEBUG] [RFNOC] Creating diverted RX stream with arguments: =
dest_addr=3D172.17.0.2,dest_mac_addr=3D02:42:ac:11:00:02,dest_port=3D1234=
,stream_mode=3Dfull_packet,__chdr_width=3D64,enable_remote_stream=3D1,ena=
ble_fc=3D0</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[DEBUG] [X300::SFP0::TA_CTL] On transport adapter 0: Adding =
route from EPID 6 to destination <a =
href=3D"https://url.za.m.mimecastprotect.com/s/Al-NC98BNNiNO7DsofKiqDHZw?=
domain=3D172.17.0.2" target=3D"_blank">172.17.0.2:1234</a> (MAC Address: =
02:42:ac:11:00:02), stream mode FULL_PACKET (0)</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>What could cause that streaming to stop (given there is no =
flow control)?</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Many thanks, Kevin</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p></div></div><p =
class=3DMsoNormal>_______________________________________________<br>USRP=
-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send =
an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><o:p></o:p></p></di=
v></blockquote></div></div></body></html>
------=_NextPart_001_00F7_01DBFBE6.04EDBA20--

------=_NextPart_000_00F6_01DBFBE6.04EDBA20
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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

------=_NextPart_000_00F6_01DBFBE6.04EDBA20--

--===============4859224257573062524==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4859224257573062524==--
