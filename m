Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 06570B1E263
	for <lists+usrp-users@lfdr.de>; Fri,  8 Aug 2025 08:35:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B544A386562
	for <lists+usrp-users@lfdr.de>; Fri,  8 Aug 2025 02:35:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754634921; bh=3djvkwYvaVqIWKXCs/koYSaC0bupURNDomYw94jN94E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=vf/mebBgeL2N5PdWYkhJgyajO+d4hQAM5jGvdgE2g6j/HpijOLsLCeOW1NH7RAbQq
	 OkJTuCCFP/0Uk4T5mjMa2SXUmlxzA2q56eVxDn7o6R8B8ePxXnbaEr+/vi01p6s9KL
	 AbxnV9gGWYr7CeIo6thmOxIauaq6f8lvSbVxA0bR0oTbieDpNitAPOxHDcIRLLYxVF
	 TgyvsmXHoNyzNkIGZwuF/IRSP2zncLC8NyxXqVQD+Nic7OeSTz8/VZzHOCUBm2tNke
	 AyimwE3ifn1JHfTSMAKQPAEID7KKyo2vMPUtpKwf3xVjghurSGPsYKyU8ta0YO/ghL
	 My2I0H21Lkt2w==
Received: from za-smtp-delivery-132.mimecast.co.za (za-smtp-delivery-132.mimecast.co.za [41.74.205.132])
	by mm2.emwd.com (Postfix) with ESMTPS id A4CFE38443D
	for <usrp-users@lists.ettus.com>; Fri,  8 Aug 2025 02:35:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vastech.co.za header.i=@vastech.co.za header.b="jtUtX2nd";
	dkim-atps=neutral
Received: from mail.vastech.co.za (41.193.248.106 [41.193.248.106]) by
 relay.mimecast.com with ESMTP id za-mta-122-tqKNmr-tOl6q6vGZFRihhA-1; Fri,
 08 Aug 2025 08:33:56 +0200
X-MC-Unique: tqKNmr-tOl6q6vGZFRihhA-1
X-Mimecast-MFC-AGG-ID: tqKNmr-tOl6q6vGZFRihhA_1754634836
dkim-signature: v=1; a=rsa-sha256; d=vastech.co.za; s=dkim;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:MIME-Version:Content-Type:In-Reply-To:References;
	bh=Ft6kDqP/9yaaCQzkTJj7FSPv50yyqGP80a7ilbcZv9E=;
	b=jtUtX2ndC+y1tue868p9EWXW+94HfCXjKH6xOxrZKyzki3NcvKB5zc4EF5vAXcHStjZu0Dba9sVFZTtcwAQUOJDrLwmVzcieYmY9q+MIc+9kgYt17o6NnQOawKIM2wLAbM+72BQzt8yrR2GLmt+5hd93Rkrrn1kNZ5SC6Bx1nLc=
Received: from EXCHANGE2.vastech.co.za (Unknown [172.30.81.30])
	by mail.vastech.co.za with ESMTPSA
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256)
	; Fri, 8 Aug 2025 08:33:54 +0200
Received: from exchange3.vastech.co.za (172.30.81.31) by
 EXCHANGE2.vastech.co.za (172.30.81.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Fri, 8 Aug 2025 08:33:53 +0200
Received: from exchange3.vastech.co.za ([172.30.81.31]) by
 exchange3.vastech.co.za ([172.30.81.31]) with mapi id 15.02.1118.040; Fri, 8
 Aug 2025 08:33:44 +0200
From: Kevin Williams <kevin.williams@vastech.co.za>
To: "niels.steffen.garibaldi@emerson.com"
	<niels.steffen.garibaldi@emerson.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [EXTERNAL][USRP-users] Re: "radio_tx_stb" input on radio_tx_core
Thread-Index: AQHcB6zxJOMvQabIeEiJAEu5S7fXBbRYTOrQ
Date: Fri, 8 Aug 2025 06:33:44 +0000
Message-ID: <b465aeff768048768582890066948111@vastech.co.za>
References: 34b0dd7790ed4764941ef68db06635e8@vastech.co.za
 <0ptyuAlb4mxAHduLC1KShfwseszgzHsLZO90raQ7HM@lists.ettus.com>
In-Reply-To: <0ptyuAlb4mxAHduLC1KShfwseszgzHsLZO90raQ7HM@lists.ettus.com>
Accept-Language: en-US, en-ZA
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.168.4]
MIME-Version: 1.0
Message-ID-Hash: ZO7ZIGI7Q5FMILJ2MR45P565PGVFYNS4
X-Message-ID-Hash: ZO7ZIGI7Q5FMILJ2MR45P565PGVFYNS4
X-MailFrom: kevin.williams@vastech.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: "radio_tx_stb" input on radio_tx_core
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZO7ZIGI7Q5FMILJ2MR45P565PGVFYNS4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1353352544765543901=="

--===============1353352544765543901==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.3;
	boundary="----=_NextPart_000_0152_01DC083F.2667A200"

------=_NextPart_000_0152_01DC083F.2667A200
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0153_01DC083F.2667A200"


------=_NextPart_001_0153_01DC083F.2667A200
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thanks Niels.

 

OK, so it seems that isn't my problem on the X310.

 

My deeper issue is that I can't get the USRP to start transmitting in
internal loopback mode specifically when I need to combine both rx radios in
a custom block.

 

Kind regards, Kevin

 

From: niels.steffen.garibaldi--- via USRP-users <usrp-users@lists.ettus.com>

Sent: Thursday, 07 August 2025 17:06
To: usrp-users@lists.ettus.com
Subject: [EXTERNAL][USRP-users] Re: "radio_tx_stb" input on radio_tx_core

 

Hi Kevin,

As far as I know, the `radio_*_stb` signals are strobe signals that are
coming from outside of the image_core from the RF Analog HW on the
daughterboards, signaling when the radio data can be transmitted/received.
They can be understood as signals that are similar to tready signals of the
AXI-Stream handshaking mechanism.

If you trace the `radio_tx_stb` back to where it is assigned in x4xx.sv, it
seems to be assigned based on the `dac_data_in_tready` signals:

*	X410:
https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/x4xx.sv
#L2685
<https://url.za.m.mimecastprotect.com/s/90I9Czm5zzHwQB7I4f3s9BkLy?domain=git
hub.com> 
*	X440:
https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/x4xx.sv
#L2664
<https://url.za.m.mimecastprotect.com/s/Bi8mCAnollflLo8U8hYsGw75v?domain=git
hub.com> 

As I understand the `radio_tx_stb`, it indicates, that on the same clock
cycle as `radio_tx_stb` is asserted, the data that you pass to the radio via
the `radio_tx_data` bus is successfully transferred to the DAC and will be
transmitted OTA down the line.

If `radio_tx_stb` is not asserted, the radio_tx_data will not be
transmitted.

I have not checked all USRP types, and some might not use the strobe signals
at all, but at the meaning should be nearly the same for all variants. It
looks like e.g. X300 is not really using it and just constantly asserting it
<https://url.za.m.mimecastprotect.com/s/SWzjCBgpmmiRpmytNixs2Kn08?domain=git
hub.com> , as it seems it can always accept TX data. 

Please someone with a better understanding correct me if this assumption is
wrong.

Hope this helps at least a little. 

Regards,
Niels

 


------=_NextPart_001_0153_01DC083F.2667A200
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
/* List Definitions */
@list l0
	{mso-list-id:1189636595;
	mso-list-template-ids:-623063188;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-ZA link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>Thanks =
Niels.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>OK, so it =
seems that isn&#8217;t my problem on the X310.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>My deeper =
issue is that I can&#8217;t get the USRP to start transmitting in =
internal loopback mode specifically when I need to combine both rx =
radios in a custom block.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>Kind =
regards, Kevin<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US>From:</span></b><span =
lang=3DEN-US> niels.steffen.garibaldi--- via USRP-users =
&lt;usrp-users@lists.ettus.com&gt; <br><b>Sent:</b> Thursday, 07 August =
2025 17:06<br><b>To:</b> usrp-users@lists.ettus.com<br><b>Subject:</b> =
[EXTERNAL][USRP-users] Re: &quot;radio_tx_stb&quot; input on =
radio_tx_core<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p>Hi Kevin,<br><br>As far as I =
know, the `radio_*_stb` signals are strobe signals that are coming from =
outside of the image_core from the RF Analog HW on the daughterboards, =
signaling when the radio data can be transmitted/received.<br>They can =
be understood as signals that are similar to tready signals of the =
AXI-Stream handshaking mechanism.<br><br>If you trace the `radio_tx_stb` =
back to where it is assigned in x4xx.sv, it seems to be assigned based =
on the `dac_data_in_tready` signals:<o:p></o:p></p><ul type=3Ddisc><li =
style=3D'mso-list:l0 level1 lfo1'>X410: <a =
href=3D"https://url.za.m.mimecastprotect.com/s/90I9Czm5zzHwQB7I4f3s9BkLy?=
domain=3Dgithub.com">https://github.com/EttusResearch/uhd/blob/master/fpg=
a/usrp3/top/x400/x4xx.sv#L2685</a><o:p></o:p></li><li =
style=3D'mso-list:l0 level1 lfo1'>X440: <a =
href=3D"https://url.za.m.mimecastprotect.com/s/Bi8mCAnollflLo8U8hYsGw75v?=
domain=3Dgithub.com">https://github.com/EttusResearch/uhd/blob/master/fpg=
a/usrp3/top/x400/x4xx.sv#L2664</a><o:p></o:p></li></ul><p>As I =
understand the `radio_tx_stb`, it indicates, that on the same clock =
cycle as `radio_tx_stb` is asserted, the data that you pass to the radio =
via the `radio_tx_data` bus is successfully transferred to the DAC and =
will be transmitted OTA down the line.<o:p></o:p></p><p>If =
`radio_tx_stb` is not asserted, the radio_tx_data will not be =
transmitted.<o:p></o:p></p><p>I have not checked all USRP types, and =
some might not use the strobe signals at all, but at the meaning should =
be nearly the same for all variants. It looks like e.g. <a =
href=3D"https://url.za.m.mimecastprotect.com/s/SWzjCBgpmmiRpmytNixs2Kn08?=
domain=3Dgithub.com">X300 is not really using it and just constantly =
asserting it</a>, as it seems it can always accept TX data. =
<o:p></o:p></p><p>Please someone with a better understanding correct me =
if this assumption is wrong.<br><br>Hope this helps at least a little. =
<br><br>Regards,<br>Niels<o:p></o:p></p><p =
style=3D'margin-bottom:12.0pt'><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_001_0153_01DC083F.2667A200--

------=_NextPart_000_0152_01DC083F.2667A200
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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

------=_NextPart_000_0152_01DC083F.2667A200--

--===============1353352544765543901==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1353352544765543901==--
