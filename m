Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E391CAEC308
	for <lists+usrp-users@lfdr.de>; Sat, 28 Jun 2025 01:38:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F76A380DBD
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jun 2025 19:38:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751067501; bh=OOn8sa9UwDgDd9V4U9FHoKHc2bSANgsDuNrl16K5OBY=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=sgN2Wb+e3xdZlpq+AJ3soo9mutVXxv/IOX32UHr6C81W9fxRlavdN1ckwynssooiS
	 o7Aowsxf2ObbM0Vh13PykYddk3dhprpQpKtl4j1fGntPOWqMufyhAmC42cxFsrLofg
	 A+CAKF0PECyz3YLa3HP5sBDHa9e+PZio8K3KJCrvCINF1z60axaLXwcpfyh2CnlaTe
	 aCKh7A35VT8r0R8kVpFSGiim0u1c83Hsg0etbjc65QKnOVp4kH6qQrDdrQdLcoZQRF
	 g9bsDD7HVNs/PyxAlmHz31J/rNVrvKIrDAUzICMtTNlHOBYRBdsvCnA099iV4YMBhF
	 aLzXws5JUtXTw==
Received: from za-smtp-delivery-57.mimecast.co.za (za-smtp-delivery-57.mimecast.co.za [41.74.201.57])
	by mm2.emwd.com (Postfix) with ESMTPS id 618B7380DBD
	for <usrp-users@lists.ettus.com>; Fri, 27 Jun 2025 19:37:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vastech.co.za header.i=@vastech.co.za header.b="Xew0uLfu";
	dkim-atps=neutral
Received: from mail.vastech.co.za (41.193.248.106 [41.193.248.106]) by
 relay.mimecast.com with ESMTP id za-mta-127-7a8NJPuROVeJ44bSKGCufg-1; Sat,
 28 Jun 2025 01:37:16 +0200
X-MC-Unique: 7a8NJPuROVeJ44bSKGCufg-1
X-Mimecast-MFC-AGG-ID: 7a8NJPuROVeJ44bSKGCufg_1751067436
dkim-signature: v=1; a=rsa-sha256; d=vastech.co.za; s=dkim;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:MIME-Version:Content-Type;
	bh=EHSuMPVrJnaeHunSOK6t9WGXllMURKVD7O9sbniyzn8=;
	b=Xew0uLfuJOZ9BNRqYjtcuzzpuemdFdkanX1ZnvqZBt/5nNGGXfVlu14MrgQ/hC98r6MGqgAUIH9uRlfInio43J2FSvSh6o/ZGRNpyqfvq87eO2R8CEduiWVRI/EAAcowyAVgBqQ8J1eIG2lWv0k1YPLBmjj5t7NHeYt0a17vNYY=
Received: from exchange3.vastech.co.za (Unknown [172.30.81.31])
	by mail.vastech.co.za with ESMTPSA
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256)
	; Sat, 28 Jun 2025 01:37:11 +0200
Received: from exchange3.vastech.co.za (172.30.81.31) by
 exchange3.vastech.co.za (172.30.81.31) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Sat, 28 Jun 2025 01:37:10 +0200
Received: from exchange3.vastech.co.za ([172.30.81.31]) by
 exchange3.vastech.co.za ([172.30.81.31]) with mapi id 15.02.1118.040; Sat, 28
 Jun 2025 01:37:00 +0200
From: Kevin Williams <kevin.williams@vastech.co.za>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: graph warnings again
Thread-Index: Advnu5KRyUtgbWFrQCeLnzHeaNzWxA==
Date: Fri, 27 Jun 2025 23:37:00 +0000
Message-ID: <4c77f119f052486cbb4baace4acb7e92@vastech.co.za>
Accept-Language: en-US, en-ZA
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.168.3]
MIME-Version: 1.0
Message-ID-Hash: JP7YAJTFFFUFJVA5G7D6WBINF6AHC7RK
X-Message-ID-Hash: JP7YAJTFFFUFJVA5G7D6WBINF6AHC7RK
X-MailFrom: kevin.williams@vastech.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] graph warnings again
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JP7YAJTFFFUFJVA5G7D6WBINF6AHC7RK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0253066471103371533=="

--===============0253066471103371533==
Content-Language: en-US
Content-Type: multipart/signed; micalg=2.16.840.1.101.3.4.2.3;
	protocol="application/x-pkcs7-signature";
	boundary="----=_NextPart_000_01DF_01DBE7CD.23D03080"

------=_NextPart_000_01DF_01DBE7CD.23D03080
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_01E0_01DBE7CD.23D03080"


------=_NextPart_001_01E0_01DBE7CD.23D03080
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Everyone,

 

What is the reason for these warnings?

 

Somehow my rfnoc block and/or image/software/compile has resulted in these
again, and I can't nail it down to something.

 

Some symptoms are an rx_streamer that receives a few 100 Mb of data, but
then stalls.

 

I can see in wireshark that data packets of the correct size flow from both
10 gbe ports - but stop quite soon after starting, and after that just a
stream of some sort of control and ack packets.

 

Regards, Kevin

 

O[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
0/Radio#0:OUTPUT_EDGE:0, no neighbour found!

O[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
0/Radio#0:OUTPUT_EDGE:0, no neighbour found!

[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
0/Radio#0:OUTPUT_EDGE:1, no neighbour found!

[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
0/Radio#0:OUTPUT_EDGE:1, no neighbour found!

L[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
0/Radio#0:OUTPUT_EDGE:0, no neighbour found!

[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
0/Radio#0:OUTPUT_EDGE:0, no neighbour found!

[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action restart_request from
RxStreamer#0:INPUT_EDGE:0, no neighbour found!

[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action restart_request from
RxStreamer#0:INPUT_EDGE:0, no neighbour found!

[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action restart_request from
RxStreamer#0:INPUT_EDGE:0, no neighbour found!

[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action restart_request from
RxStreamer#0:INPUT_EDGE:0, no neighbour found!

O[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
0/Radio#0:OUTPUT_EDGE:0, no neighbour found!

[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
0/Radio#0:OUTPUT_EDGE:0, no neighbour found!

O[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
0/Radio#0:OUTPUT_EDGE:1, no neighbour found!

[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
0/Radio#0:OUTPUT_EDGE:1, no neighbour found!

L[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
0/Radio#0:OUTPUT_EDGE:0, no neighbour found!

[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
0/Radio#0:OUTPUT_EDGE:0, no neighbour found!

 

 


------=_NextPart_001_01E0_01DBE7CD.23D03080
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
class=3DMsoNormal><span lang=3DEN-US>Hi =
Everyone,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>What is the reason for these =
warnings?<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Somehow my rfnoc block and/or image/software/compile has =
resulted in these again, and I can&#8217;t nail it down to =
something.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Some symptoms are an rx_streamer that receives a few 100 Mb =
of data, but then stalls.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>I can see in wireshark that data =
packets of the correct size flow from both 10 gbe ports &#8211; but stop =
quite soon after starting, and after that just a stream of some sort of =
control and ack packets.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Regards, Kevin<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>O[WARNING] [RFNOC::GRAPH::DETAIL] =
Cannot forward action rx_event from 0/Radio#0:OUTPUT_EDGE:0, no =
neighbour found!<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>O[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action =
rx_event from 0/Radio#0:OUTPUT_EDGE:0, no neighbour =
found!<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action =
rx_event from 0/Radio#0:OUTPUT_EDGE:1, no neighbour =
found!<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action =
rx_event from 0/Radio#0:OUTPUT_EDGE:1, no neighbour =
found!<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>L[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action =
rx_event from 0/Radio#0:OUTPUT_EDGE:0, no neighbour =
found!<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action =
rx_event from 0/Radio#0:OUTPUT_EDGE:0, no neighbour =
found!<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action =
restart_request from RxStreamer#0:INPUT_EDGE:0, no neighbour =
found!<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action =
restart_request from RxStreamer#0:INPUT_EDGE:0, no neighbour =
found!<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action =
restart_request from RxStreamer#0:INPUT_EDGE:0, no neighbour =
found!<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action =
restart_request from RxStreamer#0:INPUT_EDGE:0, no neighbour =
found!<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>O[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action =
rx_event from 0/Radio#0:OUTPUT_EDGE:0, no neighbour =
found!<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action =
rx_event from 0/Radio#0:OUTPUT_EDGE:0, no neighbour =
found!<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>O[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action =
rx_event from 0/Radio#0:OUTPUT_EDGE:1, no neighbour =
found!<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action =
rx_event from 0/Radio#0:OUTPUT_EDGE:1, no neighbour =
found!<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>L[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action =
rx_event from 0/Radio#0:OUTPUT_EDGE:0, no neighbour =
found!<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action =
rx_event from 0/Radio#0:OUTPUT_EDGE:0, no neighbour =
found!<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>
------=_NextPart_001_01E0_01DBE7CD.23D03080--

------=_NextPart_000_01DF_01DBE7CD.23D03080
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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

------=_NextPart_000_01DF_01DBE7CD.23D03080--

--===============0253066471103371533==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0253066471103371533==--
