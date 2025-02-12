Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A883A327CF
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 14:58:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 05F7338618C
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 08:58:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739368712; bh=fT3IC+9rFNMfa9i8njOa8GaX+ZubESDPLhhS+WBJKbI=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=QbJQ5EGG/nsQO045Zhyv1QFSpzIBlfiycTu6kzJCh2TiEEUNizsgu/EB1VAivVql/
	 Kz5KiZehWEZZzj1C+4/ppC3dWd0IBxNdYJGieCnw9pkBIhUp+btDgIkBKTZSpkL2Qo
	 Ixt5kGJBwPoQqle0xL8bLrc9hzKLVBDPf4M1D//99+ZFrwcFWt9sMpNBEO2pPycvGk
	 SwiUap3P2lAjruW0twieX5LmcQ3AfhbQ2YEklNFInPzxxgl/wvhaWdKYf7GfLbSn4/
	 ZrHDsQMZsGKchZX+Q9YNFpaWNEgInn2k/jL8TT9PsflGZ6T+VQ427ee/Z35phyZYCK
	 JGJm04uXJcIWg==
Received: from za-smtp-delivery-132.mimecast.co.za (za-smtp-delivery-132.mimecast.co.za [41.74.205.132])
	by mm2.emwd.com (Postfix) with ESMTPS id 0F3DE3859F3
	for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2025 08:57:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vastech.co.za header.i=@vastech.co.za header.b="d6n1u/pz";
	dkim-atps=neutral
Received: from mail.vastech.co.za (mail.vastech.co.za [41.193.221.138]) by
 relay.mimecast.com with ESMTP id za-mta-114-LHm4r0JpN0KigsHiDoMhMA-1; Wed,
 12 Feb 2025 15:57:21 +0200
X-MC-Unique: LHm4r0JpN0KigsHiDoMhMA-1
X-Mimecast-MFC-AGG-ID: LHm4r0JpN0KigsHiDoMhMA_1739368641
dkim-signature: v=1; a=rsa-sha256; d=vastech.co.za; s=dkim;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:In-Reply-To:References;
	bh=9ZBaqoWbGwJBIcxFitsOhWRcfz5qb+ADoZVDtRB3I48=;
	b=d6n1u/pzOvbng9YAfUK9FMT7pD5WxZvvUzKkv/gn42NZTlGGzt7a6uKkqzTc368EK8pnx0Ma14tuKrXeuC4tY45QI/o5sMJObmta0QGfbWQhlj9Rbk4UVNx8FTmionErSIlC88Zl/wOVhYfoeRW+40HCUtj60BOVULMCiYfUhFI=
Received: from exchange3.vastech.co.za (Unknown [172.30.81.31])
	by mail.vastech.co.za with ESMTPSA
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256)
	; Wed, 12 Feb 2025 15:57:16 +0200
Received: from exchange3.vastech.co.za (172.30.81.31) by
 exchange3.vastech.co.za (172.30.81.31) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Wed, 12 Feb 2025 15:57:15 +0200
Received: from exchange3.vastech.co.za ([172.30.81.31]) by
 exchange3.vastech.co.za ([172.30.81.31]) with mapi id 15.02.1118.040; Wed, 12
 Feb 2025 15:57:08 +0200
From: Kevin Williams <kevin.williams@vastech.co.za>
To: "martin.braun@ettus.com" <martin.braun@ettus.com>
Thread-Topic: [EXTERNAL][USRP-users] Re: N300 HG image being built instead of
 XG
Thread-Index: Adt9JuyIFEa/twULSxiMfyYUl8y2CwAG6FkAAATZ2vA=
Date: Wed, 12 Feb 2025 13:57:08 +0000
Message-ID: <d80403d038414e8996cb9d8a003d75fb@vastech.co.za>
References: <4e95c77a811c4299832c8b67977488d3@vastech.co.za>
 <CAFOi1A793Noync8fHr0L3EpNZCwPSuVpS84Khv-QWYC9rcjuAA@mail.gmail.com>
In-Reply-To: <CAFOi1A793Noync8fHr0L3EpNZCwPSuVpS84Khv-QWYC9rcjuAA@mail.gmail.com>
Accept-Language: en-US, en-ZA
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.168.4]
MIME-Version: 1.0
Message-ID-Hash: RSZK3AMRVWZRMSWZ5A22JNVBOFGSM5H5
X-Message-ID-Hash: RSZK3AMRVWZRMSWZ5A22JNVBOFGSM5H5
X-MailFrom: kevin.williams@vastech.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: N300 HG image being built instead of XG
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RSZK3AMRVWZRMSWZ5A22JNVBOFGSM5H5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6271819051986605646=="

--===============6271819051986605646==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_01A5_01DB7D66.C4A81E90"

------=_NextPart_000_01A5_01DB7D66.C4A81E90
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_01A6_01DB7D66.C4A81E90"


------=_NextPart_001_01A6_01DB7D66.C4A81E90
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks Martin!

=20

From: Martin Braun <martin.braun@ettus.com>=20
Sent: Wednesday, 12 February 2025 15:38
Cc: usrp-users@lists.ettus.com
Subject: [EXTERNAL][USRP-users] Re: N300 HG image being built instead of =
XG

=20

Hi Kevin,

=20

confirm this is a bug. You can force the correct target by specifying=20

=20

rfnoc_image_builder -t N310_XG [...your other arguments...]

=20

...which we confirm works. We'll have a fix for this on the way.

=20

--M

=20

On Wed, Feb 12, 2025 at 9:26=E2=80=AFAM Kevin Williams =
<kevin.williams@vastech.co.za <mailto:kevin.williams@vastech.co.za> > =
wrote:

Hi Everyone,

The header of my N300 yaml file is shown below, but this results in an =
HG
image being built, not the XG. (I am building this with UHD-4.8.)

The HG image does contain my new RFNoC block, with the right endpoints =
etc.,
so I believe the yaml config should be (mostly) correct?

I find it strange because the bit file that is generated also has the =
name
"usrp_n300_fpga_XG.bit".

When loaded, "usrp_find_devices" returns:

--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: XXXXXXX
    claimed: False
    fpga: HG
mgmt_addr: 127.0.0.1 =
<https://url.za.m.mimecastprotect.com/s/Y5OZCj2MKKfRD64sWfBTmV7Tn?domain=3D=
127.0.0.1>=20
    name: ni-n3xx-XXXXXXX
    product: n300
    type: n3xx

Is there something I might be missing somewhere?

Many thanks, Kevin

schema: rfnoc_imagebuilder_args         # Identifier for the schema used =
to
validate this file
copyright: >-                           # Copyright information used in =
file
headers
  Copyright 2023 Ettus Research, a National Instruments Brand
license: >-                             # License information used in =
file
headers
  SPDX-License-Identifier: LGPL-3.0-or-later
version: '1.0'                          # File version
chdr_width: 64                          # Bit width of the CHDR bus for =
this
image
device: 'n300'
default_target: 'N300_XG'
image_core_name: 'usrp_n300_fpga_XG'
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com>=20
To unsubscribe send an email to usrp-users-leave@lists.ettus.com =
<mailto:usrp-users-leave@lists.ettus.com>=20


------=_NextPart_001_01A6_01DB7D66.C4A81E90
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
style=3D'mso-fareast-language:EN-US'>Thanks =
Martin!<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US>From:</span></b><span =
lang=3DEN-US> Martin Braun &lt;martin.braun@ettus.com&gt; =
<br><b>Sent:</b> Wednesday, 12 February 2025 15:38<br><b>Cc:</b> =
usrp-users@lists.ettus.com<br><b>Subject:</b> [EXTERNAL][USRP-users] Re: =
N300 HG image being built instead of XG<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>Hi =
Kevin,<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>confirm this is a bug. You can force the correct =
target by specifying&nbsp;<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>rfnoc_image_builder -t N310_XG [...your other =
arguments...]<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>...which we confirm works. We'll have a fix for this =
on the way.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>--M<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Wed, Feb 12, 2025 at 9:26=E2=80=AFAM Kevin Williams &lt;<a =
href=3D"mailto:kevin.williams@vastech.co.za">kevin.williams@vastech.co.za=
</a>&gt; wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><p class=3DMsoNormal>Hi =
Everyone,<br><br>The header of my N300 yaml file is shown below, but =
this results in an HG<br>image being built, not the XG. (I am building =
this with UHD-4.8.)<br><br>The HG image does contain my new RFNoC block, =
with the right endpoints etc.,<br>so I believe the yaml config should be =
(mostly) correct?<br><br>I find it strange because the bit file that is =
generated also has the =
name<br>&quot;usrp_n300_fpga_XG.bit&quot;.<br><br>When loaded, =
&quot;usrp_find_devices&quot; =
returns:<br><br>--------------------------------------------------<br>-- =
UHD Device =
0<br>--------------------------------------------------<br>Device =
Address:<br>&nbsp; &nbsp; serial: XXXXXXX<br>&nbsp; &nbsp; claimed: =
False<br>&nbsp; &nbsp; fpga: HG<br>mgmt_addr: <a =
href=3D"https://url.za.m.mimecastprotect.com/s/Y5OZCj2MKKfRD64sWfBTmV7Tn?=
domain=3D127.0.0.1">127.0.0.1</a><br>&nbsp; &nbsp; name: =
ni-n3xx-XXXXXXX<br>&nbsp; &nbsp; product: n300<br>&nbsp; &nbsp; type: =
n3xx<br><br>Is there something I might be missing somewhere?<br><br>Many =
thanks, Kevin<br><br>schema: rfnoc_imagebuilder_args&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;# Identifier for the schema used to<br>validate this =
file<br>copyright: &gt;-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Copyright information =
used in file<br>headers<br>&nbsp; Copyright 2023 Ettus Research, a =
National Instruments Brand<br>license: &gt;-&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;# License information used in file<br>headers<br>&nbsp; =
SPDX-License-Identifier: LGPL-3.0-or-later<br>version: '1.0'&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; # File version<br>chdr_width: 64&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # =
Bit width of the CHDR bus for this<br>image<br>device: =
'n300'<br>default_target: 'N300_XG'<br>image_core_name: =
'usrp_n300_fpga_XG'<br>_______________________________________________<br=
>USRP-users mailing list -- <a =
href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send =
an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><o:p></o:p></p></bl=
ockquote></div></div></body></html>
------=_NextPart_001_01A6_01DB7D66.C4A81E90--

------=_NextPart_000_01A5_01DB7D66.C4A81E90
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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

------=_NextPart_000_01A5_01DB7D66.C4A81E90--

--===============6271819051986605646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6271819051986605646==--
