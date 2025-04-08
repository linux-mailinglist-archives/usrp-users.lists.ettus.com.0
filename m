Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A17A7F6F2
	for <lists+usrp-users@lfdr.de>; Tue,  8 Apr 2025 09:46:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EBF95385CE6
	for <lists+usrp-users@lfdr.de>; Tue,  8 Apr 2025 03:46:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744098397; bh=S5WrsvHwgfQiRbQyj/P25ZB7QdGNuM7ew/GrIYZLUzQ=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ivd8KyLFivhfFWwrYnvUmkQYTr0SnV0N+JZkOvDpaO2BavkZbL1owNW+QdZ9D/mUe
	 J43DLOERVJWVCm1iZ/BWXIcWOJQc4guwFnfZc9MV0/HBeXmMeYGQ/F0JPtTFhywREt
	 0so7A9/VLIUUUDsXWcmRrBt6gyJ793yM4AgGD9xsQ8ecFLvTShX2S3hIMjlKFzzdfz
	 0RYp0GTnw5UIPD2W2z+IumStJhK4mPGGQdbpBQiA3lX5b+opZDTYozXKAlHbrInSRS
	 NSDUH1oFgKcUQHb7robpKCgu1GLv1lilgfvXaP6Dus8AKrffT6KowFkpMv9dvUXzzL
	 H6uLCrGGZYPqw==
Received: from za-smtp-delivery-132.mimecast.co.za (za-smtp-delivery-132.mimecast.co.za [41.74.201.132])
	by mm2.emwd.com (Postfix) with ESMTPS id C89D4385BD1
	for <usrp-users@lists.ettus.com>; Tue,  8 Apr 2025 03:45:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vastech.co.za header.i=@vastech.co.za header.b="D9vSGE7E";
	dkim-atps=neutral
Received: from mail.vastech.co.za (197.255.158.68 [197.255.158.68]) by
 relay.mimecast.com with ESMTP id za-mta-81-FJozGq6NP4OnzxEoRYkfZg-1; Tue,
 08 Apr 2025 09:45:35 +0200
X-MC-Unique: FJozGq6NP4OnzxEoRYkfZg-1
X-Mimecast-MFC-AGG-ID: FJozGq6NP4OnzxEoRYkfZg_1744098334
dkim-signature: v=1; a=rsa-sha256; d=vastech.co.za; s=dkim;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:In-Reply-To:References;
	bh=yJq91fOEoJNdpFZnpj1dQ7QQjaH9el/xBq0nF6W9LWg=;
	b=D9vSGE7EgR8QAxaINPfLsnqKKOrDi7/7SNpaCmenwuFQQ1bx1hNvIofBkmiA3LGXXXrmuMmg4Fpg1G/U9N9BiEwjOMkGRcF6vIIYVCva5Jy9Esnc1pEZH3d+bC/BinSzjyb04oUnWA/Kr6xaBqbtvotMS6GiAy4duPBFYhALj3k=
Received: from EXCHANGE2.vastech.co.za (Unknown [172.30.81.30])
	by mail.vastech.co.za with ESMTPSA
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256)
	; Tue, 8 Apr 2025 09:45:29 +0200
Received: from exchange3.vastech.co.za (172.30.81.31) by
 EXCHANGE2.vastech.co.za (172.30.81.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Tue, 8 Apr 2025 09:45:29 +0200
Received: from exchange3.vastech.co.za ([172.30.81.31]) by
 exchange3.vastech.co.za ([172.30.81.31]) with mapi id 15.02.1118.040; Tue, 8
 Apr 2025 09:45:29 +0200
From: Kevin Williams <kevin.williams@vastech.co.za>
To: "martin.braun@ettus.com" <martin.braun@ettus.com>
Thread-Topic: [EXTERNAL][USRP-users] Re: rfnoc sample alignment from two radio
 channels
Thread-Index: Adumxz/l4P4bYtQqR8uovXljt47l7AA75hCAACiaB0A=
Date: Tue, 8 Apr 2025 07:45:29 +0000
Message-ID: <288a9a05cff347a6a84c9cdcc1b6008e@vastech.co.za>
References: <5d6dddb5735e4cd89d06e6e18c1854c3@vastech.co.za>
 <CAFOi1A7z6sUAxHJESKsaqznQmWjD=mDzY3q_qhWBiO_icMCRhw@mail.gmail.com>
In-Reply-To: <CAFOi1A7z6sUAxHJESKsaqznQmWjD=mDzY3q_qhWBiO_icMCRhw@mail.gmail.com>
Accept-Language: en-US, en-ZA
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.168.3]
MIME-Version: 1.0
Message-ID-Hash: 5JV2KOE2BX44FRVOHAMWYFGKBB7KZYXS
X-Message-ID-Hash: 5JV2KOE2BX44FRVOHAMWYFGKBB7KZYXS
X-MailFrom: kevin.williams@vastech.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: rfnoc sample alignment from two radio channels
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5JV2KOE2BX44FRVOHAMWYFGKBB7KZYXS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7338350837766916915=="

--===============7338350837766916915==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.3;
	boundary="----=_NextPart_000_003F_01DBA86A.F5B2FF30"

------=_NextPart_000_003F_01DBA86A.F5B2FF30
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0040_01DBA86A.F5B2FF30"


------=_NextPart_001_0040_01DBA86A.F5B2FF30
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin,

=20

This is interesting feedback.

=20

On the streaming, I am using a python create_rx_streamer() directly on =
the graph to the connected to the 1 or 2 outputs of my new rfnoc block, =
like this:

=20

g_graph  =3D uhd.rfnoc.RfnocGraph("type=3Dn3xx,addr=3D10.20.101.1")

stream_args   =3D uhd.usrp.StreamArgs("fc32", "sc16")

g_rx_streamer =3D g_graph.create_rx_streamer(2, stream_args)

=20

I was not aware of the need for forking streaming commands, and I am not =
sure how to do this. I will try and find info in the docs, but if there =
is anything special to know it would be very valuable. (I can compile =
UHD by hand, and have been doing for certain debugging.)

=20

On the =E2=80=9Cconsuming of samples=E2=80=9D I am under the impression =
that by me asserting TREADY an upstream block will consider that sample =
=E2=80=9Cconsumed=E2=80=9D, and of course, I do this on both streams =
from the (single) radio on the N300?

=20

So between the forking streaming commands and the sample consumption =
I=E2=80=99m sure my issue is there somewhere.

=20

Thanks, Kevin

=20

From: Martin Braun <martin.braun@ettus.com>=20
Sent: Monday, 07 April 2025 16:16
Cc: usrp-users@lists.ettus.com
Subject: [EXTERNAL][USRP-users] Re: rfnoc sample alignment from two =
radio channels

=20

We don't have any examples of blocks doing MIMO DSP -- that use case is =
a bit special because in general, you also want to compare timestamps. =
But let's stick with the addsub block, you could consider that a form of =
MIMO processing (coherent combining of signals assuming they're already =
phase-aligned...?).

=20

The addsub block will properly align samples from upstream radio blocks =
if everything is on the same FPGA, because you usually don't lose =
samples on the FPGA, and we assume that the radios will get started at =
the same time. If you don't consume samples from a radio block, it will =
stall pretty quickly.

=20

If tvalid is never going high, then maybe the second radio block is =
never actually starting to stream? How are you submitting stream =
commands? Straight to the radios, or to the streamer (and if it's the =
latter, is your block controller forking the stream command)? If you're =
running at TRACE level, then the radio will report all stream commands =
but for that you'd need to compile UHD by hand.

=20

--M

=20

=20

On Sun, Apr 6, 2025 at 9:49=E2=80=AFAM Kevin Williams =
<kevin.williams@vastech.co.za <mailto:kevin.williams@vastech.co.za> > =
wrote:

Hi,

I am curious as to how sample alignment for MIMO DSP is guaranteed in =
the
RFNoC framework?

I see sample stream alignment mechanisms in blocks like the AddSub =
block,
and have written similar logic for my own new blocks. Is there a certain
tolerance of sample delays that will never be exceeded?

My real question is that I am trying to trace an issue where I have two
input streams to my block (coming from a 0/Radio#0:0 and 0/Radio#0:1) =
but
the second stream is always stalled. I never see TVALID's from it, even
though both master TREADY's are simply hardcoded for now. (I can see =
this by
means of packing the handshaking bits into the output data samples.)

I've just compiled an ILA into the design but I suspect this will just =
show
the same.

Thanks, Kevin

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com>=20
To unsubscribe send an email to usrp-users-leave@lists.ettus.com =
<mailto:usrp-users-leave@lists.ettus.com>=20


------=_NextPart_001_0040_01DBA86A.F5B2FF30
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
style=3D'mso-fareast-language:EN-US'>Hi Martin,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>This is =
interesting feedback.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>On the =
streaming, I am using a python create_rx_streamer() directly on the =
graph to the connected to the 1 or 2 outputs of my new rfnoc block, like =
this:<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>g_graph=C2=A0 =3D =
uhd.rfnoc.RfnocGraph(&quot;type=3Dn3xx,addr=3D10.20.101.1&quot;)<o:p></o:=
p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>stream_args=C2=A0=C2=A0 =3D =
uhd.usrp.StreamArgs(&quot;fc32&quot;, =
&quot;sc16&quot;)<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>g_rx_streamer =3D =
g_graph.create_rx_streamer(2, stream_args)<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>I was not =
aware of the need for forking streaming commands, and I am not sure how =
to do this. I will try and find info in the docs, but if there is =
anything special to know it would be very valuable. (I can compile UHD =
by hand, and have been doing for certain =
debugging.)<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>On the =
=E2=80=9Cconsuming of samples=E2=80=9D I am under the impression that by =
me asserting TREADY an upstream block will consider that sample =
=E2=80=9Cconsumed=E2=80=9D, and of course, I do this on both streams =
from the (single) radio on the N300?<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>So between =
the forking streaming commands and the sample consumption I=E2=80=99m =
sure my issue is there somewhere.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>Thanks, =
Kevin<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US>From:</span></b><span =
lang=3DEN-US> Martin Braun &lt;martin.braun@ettus.com&gt; =
<br><b>Sent:</b> Monday, 07 April 2025 16:16<br><b>Cc:</b> =
usrp-users@lists.ettus.com<br><b>Subject:</b> [EXTERNAL][USRP-users] Re: =
rfnoc sample alignment from two radio channels<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>We =
don't have any examples of blocks doing MIMO DSP -- that use case is a =
bit special because in general, you also want to compare timestamps. But =
let's stick with the addsub block, you could consider that a form of =
MIMO processing (coherent combining of signals assuming they're already =
phase-aligned...?).<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>The addsub block will properly align samples from =
upstream radio blocks if everything is on the same FPGA, because you =
usually don't lose samples on the FPGA, and we assume that the radios =
will get started at the same time. If you don't consume samples from a =
radio block, it will stall pretty quickly.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>If tvalid is never going high, then maybe the second =
radio block is never actually starting to stream? How are you submitting =
stream commands? Straight to the radios, or to the streamer (and if it's =
the latter, is your block controller forking the stream command)? If =
you're running at TRACE level, then the radio will report all stream =
commands but for that you'd need to compile UHD by =
hand.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>--M<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Sun, Apr 6, 2025 at 9:49=E2=80=AFAM Kevin Williams &lt;<a =
href=3D"mailto:kevin.williams@vastech.co.za">kevin.williams@vastech.co.za=
</a>&gt; wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><p =
class=3DMsoNormal>Hi,<br><br>I am curious as to how sample alignment for =
MIMO DSP is guaranteed in the<br>RFNoC framework?<br><br>I see sample =
stream alignment mechanisms in blocks like the AddSub block,<br>and have =
written similar logic for my own new blocks. Is there a =
certain<br>tolerance of sample delays that will never be =
exceeded?<br><br>My real question is that I am trying to trace an issue =
where I have two<br>input streams to my block (coming from a 0/Radio#0:0 =
and 0/Radio#0:1) but<br>the second stream is always stalled. I never see =
TVALID's from it, even<br>though both master TREADY's are simply =
hardcoded for now. (I can see this by<br>means of packing the =
handshaking bits into the output data samples.)<br><br>I've just =
compiled an ILA into the design but I suspect this will just show<br>the =
same.<br><br>Thanks, =
Kevin<br><br>_______________________________________________<br>USRP-user=
s mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send =
an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><o:p></o:p></p></bl=
ockquote></div></div></div></body></html>
------=_NextPart_001_0040_01DBA86A.F5B2FF30--

------=_NextPart_000_003F_01DBA86A.F5B2FF30
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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

------=_NextPart_000_003F_01DBA86A.F5B2FF30--

--===============7338350837766916915==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7338350837766916915==--
