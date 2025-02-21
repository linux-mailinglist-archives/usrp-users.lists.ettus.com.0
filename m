Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0B4A3F788
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2025 15:42:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E251B385AE6
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2025 09:42:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740148973; bh=JBnhy+xx69k2sdyvcRSqb4dPZrVClfq9A5VNRwtzpUM=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=T0alFymn+ew8cWjM+ofuySlXWU2SAFeKdHL0DGjGRacadn4f1OHpTAw7EWybIEfCp
	 qxvokz2K5cvYwSiiyMLpaedPWhpYvc4snoaoD78EjkqBmOcCWo3BAP5qPAirn8Xyxd
	 6BHV4qQgRU8XolIEB9czU9X11I8Gx8h1yxzuUvruZnMvZzNUNvWtejgOf4TfLO/gjU
	 E1Gc6L/GTPYtrsA8h78xCdyW7gafFhEk5iIINbQqcvJFjlJyGZysEbWLC0k7yRaSl5
	 tmg4cmYJonwmWpShv8mMExaSinlp6smp12sQtNtJZUnGR7qiVte8pHINf3VIlt9D6m
	 nNGJSmvSjSrHA==
Received: from za-smtp-delivery-132.mimecast.co.za (za-smtp-delivery-132.mimecast.co.za [41.74.201.132])
	by mm2.emwd.com (Postfix) with ESMTPS id EC9D93857F4
	for <usrp-users@lists.ettus.com>; Fri, 21 Feb 2025 09:42:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vastech.co.za header.i=@vastech.co.za header.b="YoYFdBuG";
	dkim-atps=neutral
Received: from mail.vastech.co.za (mail.vastech.co.za [41.193.221.138]) by
 relay.mimecast.com with ESMTP id za-mta-29-3HMINyrtOZWAEPS7IPhUDA-1; Fri,
 21 Feb 2025 16:42:42 +0200
X-MC-Unique: 3HMINyrtOZWAEPS7IPhUDA-1
X-Mimecast-MFC-AGG-ID: 3HMINyrtOZWAEPS7IPhUDA_1740148962
dkim-signature: v=1; a=rsa-sha256; d=vastech.co.za; s=dkim;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:In-Reply-To:References;
	bh=hAj7wM39CURy4Qqu56eJJaq4EvWZ7cXmsBNzr8xIhOM=;
	b=YoYFdBuGiyW6zSmau6jh2VrsQZcVh3DUxoZ2dBumBS/owtYZihxlQUPs1z2d+nTOyTj+BI/8l658cyAgxjxwVpYY94UmKB0GWMMY+dAxF08AK3TEoCo+1gsLqrQnSGTV1O2lgfuOPqWzXYgRJ4nQDXpXjobVsufrnhH5kix1p5Q=
Received: from exchange3.vastech.co.za (Unknown [172.30.81.31])
	by mail.vastech.co.za with ESMTPSA
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256)
	; Fri, 21 Feb 2025 16:42:37 +0200
Received: from exchange3.vastech.co.za (172.30.81.31) by
 exchange3.vastech.co.za (172.30.81.31) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Fri, 21 Feb 2025 16:42:37 +0200
Received: from exchange3.vastech.co.za ([172.30.81.31]) by
 exchange3.vastech.co.za ([172.30.81.31]) with mapi id 15.02.1118.040; Fri, 21
 Feb 2025 16:42:31 +0200
From: Kevin Williams <kevin.williams@vastech.co.za>
To: "martin.braun@ettus.com" <martin.braun@ettus.com>
Thread-Topic: [EXTERNAL]Re: [USRP-users] register custom rfnoc block names
Thread-Index: AduEEnrjBmU6W07DTyePTm4DUqv42gASKF2AAARcUpA=
Date: Fri, 21 Feb 2025 14:42:30 +0000
Message-ID: <73e1614fe17841cca2e52d02fd11739c@vastech.co.za>
References: <8637a4f585a741779e8e57b01ac12f75@vastech.co.za>
 <CAFOi1A4YNrE3jzepMjZhDtT0rhn+=jzML4xmy5SOg66gi2iapA@mail.gmail.com>
In-Reply-To: <CAFOi1A4YNrE3jzepMjZhDtT0rhn+=jzML4xmy5SOg66gi2iapA@mail.gmail.com>
Accept-Language: en-US, en-ZA
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.168.3]
MIME-Version: 1.0
Message-ID-Hash: 3NNMQXAYYHY7NBZJCSGSKAHJ3QCAFZVS
X-Message-ID-Hash: 3NNMQXAYYHY7NBZJCSGSKAHJ3QCAFZVS
X-MailFrom: kevin.williams@vastech.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: register custom rfnoc block names
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3NNMQXAYYHY7NBZJCSGSKAHJ3QCAFZVS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6560830256994018874=="

--===============6560830256994018874==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_01FA_01DB847F.98338D70"

------=_NextPart_000_01FA_01DB847F.98338D70
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_01FB_01DB847F.98338D70"


------=_NextPart_001_01FB_01DB847F.98338D70
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin,

=20

I did use the new UHD 4.8 rfnoc_modtool for this block.

=20

I have the =E2=80=9CUHD_RFNOC_BLOCK_REGISTER_DIRECT=E2=80=9D macro as in =
here:

=20

UHD_RFNOC_BLOCK_REGISTER_DIRECT(

    multiddc_block_control, 0x666F0002, "MultiDDC", CLOCK_KEY_GRAPH, =
"bus_clk");

=20

I note that it is not the macro =
=E2=80=9CUHD_REGISTER_EXTENSION=E2=80=9D.

=20

It is curious, because a simple C++ application I built does recognize =
the new block, and resolves its name in the static connections query, =
and does correctly connect that block in my graph.

=20

In a more complex application but compiled on the same host this block =
is not found, and the static link report also only shows it as =
=E2=80=9C* 0/Block#0:0=3D=3D>0/SEP#2:0=E2=80=9D etc.

=20

I also note that the more complex application is linked to my rfnoc =
driver library.

=20

I=E2=80=99m not sure where to look next as I have a python script which =
confirms the noc_id read back from the usrp is the same as what I expect =
in the driver, and I also tried the =
=E2=80=9Cgraph->find_blocks<rfnoc::vastech::multiddc_block_control>=E2=80=
=9D instead of just uhd::rfnoc::block_id_t(0, "MultiDDC", 0) which also =
does not find blocks of the type in question.

=20

Kind regards, Kevin

=20

From: Martin Braun <martin.braun@ettus.com>=20
Sent: Friday, 21 February 2025 16:21
To: Kevin Williams <kevin.williams@vastech.co.za>
Cc: usrp-users@lists.ettus.com
Subject: [EXTERNAL]Re: [USRP-users] register custom rfnoc block names

=20

Hey Kevin,

=20

yes, you need that macro, as here: =
https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-gain=
/lib/gain_block_control.cpp#L55-L56 =
<https://url.za.m.mimecastprotect.com/s/EoS3C98BNNi2ZMRhofXTqRd1S?domain=3D=
github.com>=20

=20

Are you using rfnoc_modtool? Because rfnoc_modtool add should create all =
the relevant boilerplate.

=20

If you're using the latest rfnoc_modtool, then the OOT module will also =
have all the hooks in place to automatically register your OOT with UHD, =
no need for LD_PRELOAD.

=20

--M

=20

On Fri, Feb 21, 2025 at 4:50=E2=80=AFAM Kevin Williams =
<kevin.williams@vastech.co.za <mailto:kevin.williams@vastech.co.za> > =
wrote:

Hi Everyone,

I think this is my last hurdle.

I have a C++ application using my custom rfnoc block drivers, but the
"LD_PRELOAD" variable does not help when resolving the block names in =
the
image.

I do see my rfnoc driver shared library being linked to the app binary.

Its not clear how to do this.

In the docs I see the "UHD_REGISTER_EXTENSION" macro which has left me
wondering if this is perhaps the answer.

If this is correct is there an example I could follow? (I don't see this
macro used in the UHD repo, and it doesn't appear in my web search =
results.)

Kind regards, Kevin

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com>=20
To unsubscribe send an email to usrp-users-leave@lists.ettus.com =
<mailto:usrp-users-leave@lists.ettus.com>=20


------=_NextPart_001_01FB_01DB847F.98338D70
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
	font-size:10.0pt;
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
style=3D'mso-fareast-language:EN-US'>Hi Martin,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>I did use =
the new UHD 4.8 rfnoc_modtool for this block.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>I have the =
=E2=80=9CUHD_RFNOC_BLOCK_REGISTER_DIRECT=E2=80=9D macro as in =
here:<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>UHD_RFNOC_BLOCK_REGISTER_DIRECT(<o:p=
></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>=C2=A0=C2=A0=C2=A0 =
multiddc_block_control, 0x666F0002, &quot;MultiDDC&quot;, =
CLOCK_KEY_GRAPH, &quot;bus_clk&quot;);<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>I note that =
it is not the macro =
=E2=80=9C</span>UHD_REGISTER_EXTENSION=E2=80=9D.<span =
style=3D'mso-fareast-language:EN-US'><o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>It is =
curious, because a simple C++ application I built does recognize the new =
block, and resolves its name in the static connections query, and does =
correctly connect that block in my graph.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>In a more =
complex application but compiled on the same host this block is not =
found, and the static link report also only shows it as =E2=80=9C* =
0/Block#0:0=3D=3D&gt;0/SEP#2:0=E2=80=9D etc.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>I also note =
that the more complex application is linked to my rfnoc driver =
library.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>I=E2=80=99m =
not sure where to look next as I have a python script which confirms the =
noc_id read back from the usrp is the same as what I expect in the =
driver, and I also tried the =
=E2=80=9Cgraph-&gt;find_blocks&lt;rfnoc::vastech::multiddc_block_control&=
gt;=E2=80=9D instead of just uhd::rfnoc::block_id_t(0, =
&quot;MultiDDC&quot;, 0) which also does not find blocks of the type in =
question.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>Kind =
regards, Kevin<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US>From:</span></b><span =
lang=3DEN-US> Martin Braun &lt;martin.braun@ettus.com&gt; =
<br><b>Sent:</b> Friday, 21 February 2025 16:21<br><b>To:</b> Kevin =
Williams &lt;kevin.williams@vastech.co.za&gt;<br><b>Cc:</b> =
usrp-users@lists.ettus.com<br><b>Subject:</b> [EXTERNAL]Re: [USRP-users] =
register custom rfnoc block names<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p =
class=3DMsoNormal>Hey Kevin,<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>yes, you need that macro, as here: <a =
href=3D"https://url.za.m.mimecastprotect.com/s/EoS3C98BNNi2ZMRhofXTqRd1S?=
domain=3Dgithub.com">https://github.com/EttusResearch/uhd/blob/master/hos=
t/examples/rfnoc-gain/lib/gain_block_control.cpp#L55-L56</a><o:p></o:p></=
p></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Are you using rfnoc_modtool? Because rfnoc_modtool add =
should create all the relevant boilerplate.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>If you're using the latest rfnoc_modtool, then the OOT =
module will also have all the hooks in place to automatically register =
your OOT with UHD, no need for LD_PRELOAD.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>--M<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Fri, Feb 21, 2025 at 4:50=E2=80=AFAM Kevin Williams &lt;<a =
href=3D"mailto:kevin.williams@vastech.co.za">kevin.williams@vastech.co.za=
</a>&gt; wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0cm;margin-bottom:5=
.0pt'><p class=3DMsoNormal>Hi Everyone,<br><br>I think this is my last =
hurdle.<br><br>I have a C++ application using my custom rfnoc block =
drivers, but the<br>&quot;LD_PRELOAD&quot; variable does not help when =
resolving the block names in the<br>image.<br><br>I do see my rfnoc =
driver shared library being linked to the app binary.<br><br>Its not =
clear how to do this.<br><br>In the docs I see the =
&quot;UHD_REGISTER_EXTENSION&quot; macro which has left me<br>wondering =
if this is perhaps the answer.<br><br>If this is correct is there an =
example I could follow? (I don't see this<br>macro used in the UHD repo, =
and it doesn't appear in my web search results.)<br><br>Kind regards, =
Kevin<br><br>_______________________________________________<br>USRP-user=
s mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send =
an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><o:p></o:p></p></bl=
ockquote></div></div></body></html>
------=_NextPart_001_01FB_01DB847F.98338D70--

------=_NextPart_000_01FA_01DB847F.98338D70
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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

------=_NextPart_000_01FA_01DB847F.98338D70--

--===============6560830256994018874==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6560830256994018874==--
