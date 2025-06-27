Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F80AEB7BF
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jun 2025 14:33:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BB1EE38618C
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jun 2025 08:33:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751027613; bh=WR1TgzBJl7MtOUjH1i8hYdsmozl1KcxGgYnXU0AuVxw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=WYKQcMxJbr6L0utPFsmX2kaVwLVuI0bW9KcSiODCnR76ZcwKaojd+3k174wgt1KC6
	 b2Wj/Hb3DNha21M02EANd+Ts9myEucY/8RujDSr4U4injmRMCon82Ppwcynp26PiDV
	 drEe/WxfL6vpo8xntd1KNLJsPcxS0Jbksj1EaH+fm/SuhaRjNm8QpfGxdRw/63d3d2
	 U9Nl1j677LKth115H1L9NYaHB6q7iIsZS+ExEbKjtquKjCsX3G0pFDKnM4/st2SfnD
	 ahCY6cwfo9gwjz2AQ75/snoILZ4ggjxe1fW5O+rQZmCkfGbqvhvv5PDCzGiBERJBHT
	 Tst1AmU2gFcMg==
Received: from za-smtp-delivery-57.mimecast.co.za (za-smtp-delivery-57.mimecast.co.za [41.74.205.57])
	by mm2.emwd.com (Postfix) with ESMTPS id 7A68B386171
	for <usrp-users@lists.ettus.com>; Fri, 27 Jun 2025 08:32:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vastech.co.za header.i=@vastech.co.za header.b="eiHv1N6M";
	dkim-atps=neutral
Received: from mail.vastech.co.za (41.193.248.106 [41.193.248.106]) by
 relay.mimecast.com with ESMTP id za-mta-74-IbDw9ZZkMxqeSLQxVTToDg-1; Fri,
 27 Jun 2025 14:32:23 +0200
X-MC-Unique: IbDw9ZZkMxqeSLQxVTToDg-1
X-Mimecast-MFC-AGG-ID: IbDw9ZZkMxqeSLQxVTToDg_1751027543
dkim-signature: v=1; a=rsa-sha256; d=vastech.co.za; s=dkim;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:MIME-Version:Content-Type:In-Reply-To:References;
	bh=8sFvyG5nZDU10i9KCS+X/aO0KHZf4fQc5bUn+hszLa4=;
	b=eiHv1N6MNp1sJLuekOsNzuKX0aeq2C3ddkVc5jdsb3kjkhiafgqCR0GbcNFcT7/r5gsos7NNMe9ejNR6ixTgEJSCSODqxov+9Mg/peH4qASyI1vvDCCfkT54nfGIXAEDT+00c7BG9vEoeSrhH+pcM6jzDGw8VlgUBn6P7kFhzS8=
Received: from exchange3.vastech.co.za (Unknown [172.30.81.31])
	by mail.vastech.co.za with ESMTPSA
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256)
	; Fri, 27 Jun 2025 14:32:17 +0200
Received: from exchange3.vastech.co.za (172.30.81.31) by
 exchange3.vastech.co.za (172.30.81.31) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Fri, 27 Jun 2025 14:32:17 +0200
Received: from exchange3.vastech.co.za ([172.30.81.31]) by
 exchange3.vastech.co.za ([172.30.81.31]) with mapi id 15.02.1118.040; Fri, 27
 Jun 2025 14:32:17 +0200
From: Kevin Williams <kevin.williams@vastech.co.za>
To: "niels.steffen.garibaldi@emerson.com"
	<niels.steffen.garibaldi@emerson.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [EXTERNAL][USRP-users] Re: adding a user ip repo
Thread-Index: AQHb510yf6tQJAqCakqMTIttHZ24C7QW7dlw
Date: Fri, 27 Jun 2025 12:32:17 +0000
Message-ID: <2fdb5791477e49619bec18ae88480feb@vastech.co.za>
References: 8fcb7a89f603499b8139865148bf59ed@vastech.co.za
 <cmpCXdWrS4wGpn1GNCaJNyFTQ3w0GqALRWlibNQo23g@lists.ettus.com>
In-Reply-To: <cmpCXdWrS4wGpn1GNCaJNyFTQ3w0GqALRWlibNQo23g@lists.ettus.com>
Accept-Language: en-US, en-ZA
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.168.3]
MIME-Version: 1.0
Message-ID-Hash: S2BWHKUMUU3FOLEDDPVRDTJFTGWTMTE6
X-Message-ID-Hash: S2BWHKUMUU3FOLEDDPVRDTJFTGWTMTE6
X-MailFrom: kevin.williams@vastech.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: adding a user ip repo
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S2BWHKUMUU3FOLEDDPVRDTJFTGWTMTE6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6156552245586666912=="

--===============6156552245586666912==
Content-Language: en-US
Content-Type: multipart/signed; micalg=2.16.840.1.101.3.4.2.3;
	protocol="application/x-pkcs7-signature";
	boundary="----=_NextPart_000_01CD_01DBE770.4756B5E0"

------=_NextPart_000_01CD_01DBE770.4756B5E0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_01CE_01DBE770.4756B5E0"


------=_NextPart_001_01CE_01DBE770.4756B5E0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Niels,

=20

Thanks for your reply.

=20

As you mention, the issue I have is my module needs to generate an =
instance of an IP core I create using other tools first.

=20

From browsing =E2=80=9Cviv_generate_ip=E2=80=9D and the other scripts it =
seems that there is no place where user paths get added to the IP repo =
list, although I did find one reference in =
=E2=80=9Cviv_generate_bd.tcl=E2=80=9D which calls =E2=80=9Cset ip_repos =
$::env(BD_IP_REPOS);# Any supporting IP repos=E2=80=9D.

=20

I could probably add something like that to =
=E2=80=9Cviv_generate_ip=E2=80=9D.

=20

Actually, if that works it will be better than hard-coding paths.

=20

Kind regards, Kevin

=20

From: niels.steffen.garibaldi--- via USRP-users =
<usrp-users@lists.ettus.com>=20
Sent: Friday, 27 June 2025 14:14
To: usrp-users@lists.ettus.com
Subject: [EXTERNAL][USRP-users] Re: adding a user ip repo

=20

Hi Kevin,=20
have you tried giving your IP directory via the `--include-dir` argument =
of the rfnoc_image_builder? That=E2=80=99s usually the way to include =
OOT modules.

Or does your IP need to be generated first and you want this to be part =
of the overall bitfile generation process?

The rfnoc_image_builder uses a gnu-make based build tooling, so you =
might be able to add your path to one of the makefile related files, =
depending on what they are and what should be done with them.

It looks like the `viv_generate_ip.tcl` script you gets called via the =
`build_vivado_ip` function that usually gets called from the respective =
IP=E2=80=99s makefile in the targets ip directory, e.g. x4xx ip =
<https://url.za.m.mimecastprotect.com/s/ZtWKC0gp77igE2phwfWh9GqeY?domain=3D=
github.com> .

If you had a similar makefile in your repo and added a link to it, e.g. =
in the Makefile.inc =
<https://url.za.m.mimecastprotect.com/s/nPYHCg5KEEcwglDuohKh4YoC7?domain=3D=
github.com> , so that make can find it, that might also work.

It is definitely not the recommended way, but if it works for you, it =
might be sufficient.

Regards,
Niels




------=_NextPart_001_01CE_01DBE770.4756B5E0
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
p.prosemirror-selectednode, li.prosemirror-selectednode, =
div.prosemirror-selectednode
	{mso-style-name:prosemirror-selectednode;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle19
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
style=3D'mso-fareast-language:EN-US'>Hi Niels,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>Thanks for =
your reply.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>As you =
mention, the issue I have is my module needs to generate an instance of =
an IP core I create using other tools first.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>From =
browsing =E2=80=9Cviv_generate_ip=E2=80=9D and the other scripts it =
seems that there is no place where user paths get added to the IP repo =
list, although I did find one reference in =
=E2=80=9Cviv_generate_bd.tcl=E2=80=9D which calls =E2=80=9Cset ip_repos =
$::env(BD_IP_REPOS);# Any supporting IP =
repos=E2=80=9D.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>I could =
probably add something like that to =
=E2=80=9Cviv_generate_ip=E2=80=9D.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>Actually, =
if that works it will be better than hard-coding =
paths.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>Kind =
regards, Kevin<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US>From:</span></b><span =
lang=3DEN-US> niels.steffen.garibaldi--- via USRP-users =
&lt;usrp-users@lists.ettus.com&gt; <br><b>Sent:</b> Friday, 27 June 2025 =
14:14<br><b>To:</b> usrp-users@lists.ettus.com<br><b>Subject:</b> =
[EXTERNAL][USRP-users] Re: adding a user ip repo<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3Dprosemirror-selectednode style=3D'margin-bottom:12.0pt'>Hi =
Kevin, <br>have you tried giving your IP directory via the =
`--include-dir` argument of the rfnoc_image_builder? That=E2=80=99s =
usually the way to include OOT modules.<br><br>Or does your IP need to =
be generated first and you want this to be part of the overall bitfile =
generation process?<br><br>The rfnoc_image_builder uses a gnu-make based =
build tooling, so you might be able to add your path to one of the =
makefile related files, depending on what they are and what should be =
done with them.<br><br>It looks like the `viv_generate_ip.tcl` script =
you gets called via the `build_vivado_ip` function that usually gets =
called from the respective IP=E2=80=99s makefile in the targets ip =
directory, e.g. <a =
href=3D"https://url.za.m.mimecastprotect.com/s/ZtWKC0gp77igE2phwfWh9GqeY?=
domain=3Dgithub.com">x4xx ip</a>.<br><br>If you had a similar makefile =
in your repo and added a link to it, e.g. <a =
href=3D"https://url.za.m.mimecastprotect.com/s/nPYHCg5KEEcwglDuohKh4YoC7?=
domain=3Dgithub.com">in the Makefile.inc</a>, so that make can find it, =
that might also work.<br><br>It is definitely not the recommended way, =
but if it works for you, it might be =
sufficient.<br><br>Regards,<br>Niels<br><br><o:p></o:p></p></div></body><=
/html>
------=_NextPart_001_01CE_01DBE770.4756B5E0--

------=_NextPart_000_01CD_01DBE770.4756B5E0
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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

------=_NextPart_000_01CD_01DBE770.4756B5E0--

--===============6156552245586666912==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6156552245586666912==--
