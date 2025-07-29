Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 13756B149AC
	for <lists+usrp-users@lfdr.de>; Tue, 29 Jul 2025 10:01:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4FBFA38654A
	for <lists+usrp-users@lfdr.de>; Tue, 29 Jul 2025 04:01:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753776087; bh=x9AAi7m5kiuaJNl76tzC32VZDXckytAqE5h3axdY6xE=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=hXXQrBYzugU3D4KXMaFvp+iV9M7fDVI/+0m1Qml6+DQtwqPD/RLCowBXz9sTMeipr
	 Fp+ZBqFyusHBWR0NYOtU9gl2b2gwfUTKG16JU4MCU5mDKHx79LyjZUbreHBxJc+O3b
	 ZYFPE3j21+A6LD0b/AmuFXRQdZbV3h5ejSW5ieECHneazju7AVZhlQ8oyumLuxbsBv
	 K4i9dBvPET1yhAHuIEwidIHHeqU3seLyjkVSsoyg06xqfwMTWKAa0uAL+fT3AhTCVr
	 dKXT7+HXnVy/5EDJpBF3PxNJcKVJ/qG8khLmVrvdN4noo8ZfMfVoGWwfduxiNZwVYA
	 S5l5YNLO8aKAw==
Received: from za-smtp-delivery-57.mimecast.co.za (za-smtp-delivery-57.mimecast.co.za [41.74.201.57])
	by mm2.emwd.com (Postfix) with ESMTPS id B7873386521
	for <usrp-users@lists.ettus.com>; Tue, 29 Jul 2025 04:00:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vastech.co.za header.i=@vastech.co.za header.b="Md7JzWgN";
	dkim-atps=neutral
Received: from mail.vastech.co.za (41.193.248.106 [41.193.248.106]) by
 relay.mimecast.com with ESMTP id za-mta-125-i9MzSmjQOI6jslC2sVmnvg-1; Tue,
 29 Jul 2025 10:00:42 +0200
X-MC-Unique: i9MzSmjQOI6jslC2sVmnvg-1
X-Mimecast-MFC-AGG-ID: i9MzSmjQOI6jslC2sVmnvg_1753776042
dkim-signature: v=1; a=rsa-sha256; d=vastech.co.za; s=dkim;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:In-Reply-To:References;
	bh=UfiWguKrFyqWVWEO0T9PP7qoAWpBDw5KyZoFbfCGBWI=;
	b=Md7JzWgNTd9iuJDYNPF+9KnMDpqWfiDV+aC4Yl0kg5q+wGhQhrNeeHvBlS4VZYCu0rzh+ok1hiHG7p6dqxbVQiaSNpDZUQl0gnnwslNxY1I2ON9/gfdxbfDRcDU/cOfen7o7SiQBb/wxKX1G3Mry9g8wNzI0aocjoBTVeIQfB1w=
Received: from EXCHANGE2.vastech.co.za (Unknown [172.30.81.30])
	by mail.vastech.co.za with ESMTPSA
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256)
	; Tue, 29 Jul 2025 10:00:40 +0200
Received: from exchange3.vastech.co.za (172.30.81.31) by
 EXCHANGE2.vastech.co.za (172.30.81.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Tue, 29 Jul 2025 10:00:39 +0200
Received: from exchange3.vastech.co.za ([172.30.81.31]) by
 exchange3.vastech.co.za ([172.30.81.31]) with mapi id 15.02.1118.040; Tue, 29
 Jul 2025 10:00:39 +0200
From: Kevin Williams <kevin.williams@vastech.co.za>
To: "martin.braun@ettus.com" <martin.braun@ettus.com>
Thread-Topic: [USRP-users] Re: [EXTERNAL]Re: remote streaming starts, but
 stops after a few packets received
Thread-Index: AQHb++IkYMk+p2kicke3vxbc7X5L4bRCs8Hg///2/ACAACOsQIAEpzIAgAAlivCAAQUugIAAJJhQ
Date: Tue, 29 Jul 2025 08:00:39 +0000
Message-ID: <28617e269dec42f298b131cfd4db5ff3@vastech.co.za>
References: <111b29cda9ce4309b4966fcfcc3b7ece@vastech.co.za>
 <CAAxXO2HUxF7tDvb8_OzmZS4xat-SM=X_BMN465cvw5PzGQvQ+A@mail.gmail.com>
 <00b1e2cd914e4e87a81ed418f7fa142c@vastech.co.za>
 <CAFOi1A79w6Yn703f7V+Jwe2X0PpR7or7Vn1naNgWmhYY3kJm-g@mail.gmail.com>
 <45a2d2bfa5784898840a602a2b31db9c@vastech.co.za>
 <CAFOi1A7k0F=vs7bhSVQFjoQFvBg=nNtfyLxq_zJypMPJUp_uhg@mail.gmail.com>
 <a60e4a0ea3ec4a10b95d90103bd2a7f7@vastech.co.za>
 <CAFOi1A5oPd6pCJK8mh18Un=WDLGVYt+mGpQHp5J2UQR7xLNV+A@mail.gmail.com>
 <42dbe59d936f4847841d2f442a7ebdf8@vastech.co.za>
 <CAFOi1A4t2mGq6df=H_c5eu+WBEHw_U6=TP0-p4S102_ZyJxD3Q@mail.gmail.com>
In-Reply-To: <CAFOi1A4t2mGq6df=H_c5eu+WBEHw_U6=TP0-p4S102_ZyJxD3Q@mail.gmail.com>
Accept-Language: en-US, en-ZA
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.168.3]
MIME-Version: 1.0
Message-ID-Hash: VH5JII4POYAZCOOPQCAQ67O5E4BC5KYP
X-Message-ID-Hash: VH5JII4POYAZCOOPQCAQ67O5E4BC5KYP
X-MailFrom: kevin.williams@vastech.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: remote streaming starts, but stops after a few packets received
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VH5JII4POYAZCOOPQCAQ67O5E4BC5KYP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5502981555030608469=="

--===============5502981555030608469==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.3;
	boundary="----=_NextPart_000_01D6_01DC006F.A2897700"

------=_NextPart_000_01D6_01DC006F.A2897700
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_01D7_01DC006F.A2897700"


------=_NextPart_001_01D7_01DC006F.A2897700
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, correct.

=20

My host is 10.22.128.1 though, and the usrp (dest) is 10.22.128.3.

=20

So from wireshark I read that last control packet as host->usrp?

=20

These are the current routes:

=20

connections:

  - { srcblk: radio0,     srcport: out_0,    dstblk: ep0,       dstport: =
in0}

  - { srcblk: radio0,     srcport: out_1,    dstblk: _device_,  dstport: =
_none_}

  - { srcblk: radio1,     srcport: out_0,    dstblk: ep2,       dstport: =
in0}

  - { srcblk: radio1,     srcport: out_1,    dstblk: _device_,  dstport: =
_none_}

=20

  - { srcblk: _device_,   srcport: _none_,   dstblk: radio0,    dstport: =
in_0 }

  - { srcblk: _device_,   srcport: _none_,   dstblk: radio0,    dstport: =
in_1 }

  - { srcblk: _device_,   srcport: _none_,   dstblk: radio1,    dstport: =
in_0 }

  - { srcblk: _device_,   srcport: _none_,   dstblk: radio1,    dstport: =
in_1 }

=20

  # multiddc connections

  - { srcblk: ep6,        srcport: out0,     dstblk: multiddc0, dstport: =
in_0 }

  - { srcblk: multiddc0,  srcport: out_0,    dstblk: ep7,       dstport: =
in0 }

=20

Changing ep7 to ep6 doesn=E2=80=99t work either although I believe that =
should be valid too.

=20

From: Martin Braun <martin.braun@ettus.com>=20
Sent: Tuesday, 29 July 2025 09:46
Cc: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: [EXTERNAL]Re: remote streaming starts, but =
stops after a few packets received

=20

=20

=20

On Mon, Jul 28, 2025 at 4:14=E2=80=AFPM Kevin Williams =
<kevin.williams@vastech.co.za <mailto:kevin.williams@vastech.co.za> > =
wrote:

=20

Changing the destination EP to a new one, ep7, worked again.

=20

From the RFNoC 4 workshop slides I was under the impression blocks could =
start and end on the same SEP?

=20

They can, and even should, but how are you doing remote streaming in =
this case? Are you connecting radio -> DDC -> remote streamer?

=20

--M


------=_NextPart_001_01D7_01DC006F.A2897700
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
style=3D'mso-fareast-language:EN-US'>Yes, =
correct.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>My host is =
10.22.128.1 though, and the usrp (dest) is =
10.22.128.3.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>So from =
wireshark I read that last control packet as =
host-&gt;usrp?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>These are =
the current routes:<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>connections:<o:p></o:p></span></p><p=
 class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>=C2=A0 - { =
srcblk: radio0,=C2=A0=C2=A0=C2=A0=C2=A0 srcport: =
out_0,=C2=A0=C2=A0=C2=A0 dstblk: =
ep0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dstport: =
in0}<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>=C2=A0 - { srcblk: =
radio0,=C2=A0=C2=A0=C2=A0=C2=A0 srcport: out_1,=C2=A0=C2=A0=C2=A0 =
dstblk: _device_,=C2=A0 dstport: _none_}<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>=C2=A0 - { =
srcblk: radio1,=C2=A0=C2=A0=C2=A0=C2=A0 srcport: =
out_0,=C2=A0=C2=A0=C2=A0 dstblk: =
ep2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dstport: =
in0}<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>=C2=A0 - { srcblk: =
radio1,=C2=A0=C2=A0=C2=A0=C2=A0 srcport: out_1,=C2=A0=C2=A0=C2=A0 =
dstblk: _device_,=C2=A0 dstport: _none_}<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>=C2=A0 - { =
srcblk: _device_,=C2=A0=C2=A0 srcport: _none_,=C2=A0=C2=A0 dstblk: =
radio0,=C2=A0=C2=A0=C2=A0 dstport: in_0 }<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>=C2=A0 - { =
srcblk: _device_,=C2=A0=C2=A0 srcport: _none_,=C2=A0=C2=A0 dstblk: =
radio0,=C2=A0=C2=A0=C2=A0 dstport: in_1 }<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>=C2=A0 - { =
srcblk: _device_,=C2=A0=C2=A0 srcport: _none_,=C2=A0=C2=A0 dstblk: =
radio1,=C2=A0=C2=A0=C2=A0 dstport: in_0 }<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>=C2=A0 - { =
srcblk: _device_,=C2=A0=C2=A0 srcport: _none_,=C2=A0=C2=A0 dstblk: =
radio1,=C2=A0=C2=A0=C2=A0 dstport: in_1 }<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>=C2=A0 # =
multiddc connections<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>=C2=A0 - { srcblk: =
ep6,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 srcport: =
out0,=C2=A0=C2=A0=C2=A0=C2=A0 dstblk: multiddc0, dstport: in_0 =
}<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>=C2=A0 - { srcblk: multiddc0,=C2=A0 =
srcport: out_0,=C2=A0=C2=A0=C2=A0 dstblk: =
ep7,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dstport: in0 =
}<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>Changing =
ep7 to ep6 doesn=E2=80=99t work either although I believe that should be =
valid too.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US>From:</span></b><span =
lang=3DEN-US> Martin Braun &lt;martin.braun@ettus.com&gt; =
<br><b>Sent:</b> Tuesday, 29 July 2025 09:46<br><b>Cc:</b> =
usrp-users@lists.ettus.com<br><b>Subject:</b> [USRP-users] Re: =
[EXTERNAL]Re: remote streaming starts, but stops after a few packets =
received<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Mon, Jul 28, 2025 at 4:14=E2=80=AFPM Kevin Williams &lt;<a =
href=3D"mailto:kevin.williams@vastech.co.za">kevin.williams@vastech.co.za=
</a>&gt; wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Changing =
the destination EP to a new one, ep7, worked again.<o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>From the =
RFNoC 4 workshop slides I was under the impression blocks could start =
and end on the same =
SEP?<o:p></o:p></p></div></div></div></blockquote><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>They can, and even should, but how are you doing =
remote streaming in this case? Are you connecting radio -&gt; DDC -&gt; =
remote streamer?<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>--M<o:p></o:p></p></div></div></div></div></body></html=
>
------=_NextPart_001_01D7_01DC006F.A2897700--

------=_NextPart_000_01D6_01DC006F.A2897700
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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

------=_NextPart_000_01D6_01DC006F.A2897700--

--===============5502981555030608469==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5502981555030608469==--
