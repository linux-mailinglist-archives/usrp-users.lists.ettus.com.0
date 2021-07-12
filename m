Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE313C5B44
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 13:42:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 58B1938432C
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 07:42:07 -0400 (EDT)
Received: from mailservice.tudelft.nl (mailservice.tudelft.nl [130.161.131.5])
	by mm2.emwd.com (Postfix) with ESMTPS id A1BD43842E9
	for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 07:39:33 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by amavis (Postfix) with ESMTP id 9321CCC00F4
	for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 13:39:32 +0200 (CEST)
X-Virus-Scanned: amavisd-new at tudelft.nl
X-Spam-Flag: NO
X-Spam-Score: -0.195
X-Spam-Level: 
X-Spam-Status: No, score=-0.195 tagged_above=-99 required=5
	tests=[ALL_TRUSTED=-1, BASW_FROM=0.01, HTML_MESSAGE=0.001,
	RDNS_NONE=0.793, SPF_HELO_NONE=0.001] autolearn=no autolearn_force=no
Received: from mailservice.tudelft.nl ([130.161.131.74])
	by localhost (tudelft.nl [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 3_EdmAwGoboT for <usrp-users@lists.ettus.com>;
	Mon, 12 Jul 2021 13:39:31 +0200 (CEST)
Received: from SRV217.tudelft.net (srv217.tudelft.net [131.180.6.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx3.tudelft.nl (Postfix) with ESMTPS id C6E41CC00E9
	for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 13:39:31 +0200 (CEST)
Received: from SRV216.tudelft.net (131.180.6.16) by SRV217.tudelft.net
 (131.180.6.17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2242.10; Mon, 12 Jul
 2021 13:39:31 +0200
Received: from SRV216.tudelft.net ([fe80::f963:9b7:1b46:bb9c]) by
 SRV216.tudelft.net ([fe80::f963:9b7:1b46:bb9c%4]) with mapi id
 15.01.2242.010; Mon, 12 Jul 2021 13:39:31 +0200
From: Cherif Diouf <C.E.V.Diouf@tudelft.nl>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC TX Streamer issue
Thread-Index: Add3EXX36pVjkC23Q7ulrkhwl3O2QA==
Date: Mon, 12 Jul 2021 11:39:31 +0000
Message-ID: <ef868d72c8cd4f889c9efa8ed61d4db3@tudelft.nl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Message-ID-Hash: YFEKCW2G25A3QKWGY7BM7R4CFFYPAMBK
X-Message-ID-Hash: YFEKCW2G25A3QKWGY7BM7R4CFFYPAMBK
X-MailFrom: C.E.V.Diouf@tudelft.nl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC TX Streamer issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YFEKCW2G25A3QKWGY7BM7R4CFFYPAMBK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0162106380333254094=="

--===============0162106380333254094==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_ef868d72c8cd4f889c9efa8ed61d4db3tudelftnl_"

--_000_ef868d72c8cd4f889c9efa8ed61d4db3tudelftnl_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using an X310 device and I have freshly install RFNoC 4, (Vivado 2019.=
1, UHD 4.0, GNU Radio 3.8, gr-ettus )using the migration guide

(https://kb.ettus.com/RFNoC_4_Migration_Guide#Prerequisites).

I tried to build a simple GNU Radio flowgraph

GNU Radio source signal (cosine) -> RFNoC TX streamer -> RFNoC Radio.
But when I run the graph I obtain the following error:
"/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py", line 1584, in m=
ake
    return _ettus_swig.rfnoc_tx_streamer_make(graph, num_chans, stream_args=
, vlen)
RuntimeError: LookupError: KeyError: [convert] Cannot find an item size for=
: `'

Do you have any idea where it should come from.

Best Regards
Cherif

Below is the full tx script


--_000_ef868d72c8cd4f889c9efa8ed61d4db3tudelftnl_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
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
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"NL" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I am using an X310 device and I=
 have freshly install RFNoC 4, (Vivado 2019.1, UHD 4.0, GNU Radio 3.8, gr-e=
ttus )using the migration guide<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">(<a href=3D"https://kb.ettus.co=
m/RFNoC_4_Migration_Guide#Prerequisites">https://kb.ettus.com/RFNoC_4_Migra=
tion_Guide#Prerequisites</a>).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I tried to build a simple GNU R=
adio flowgraph<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">GNU Radio source signal (cosine=
) -&gt; RFNoC TX streamer -&gt; RFNoC Radio.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">But when I run the graph I obta=
in the following error:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-GB" style=3D"color:black">&quot;=
/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py&quot;, line 1584, =
in make<br>
&nbsp;&nbsp;&nbsp; return _ettus_swig.rfnoc_tx_streamer_make(graph, num_cha=
ns, stream_args, vlen)<br>
RuntimeError: LookupError: KeyError: [convert] Cannot find an item size for=
: `'</span></b><b><span lang=3D"EN-GB" style=3D"font-size:12.0pt;color:blac=
k;mso-fareast-language:NL"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Do you have any idea where it s=
hould come from.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Best Regards<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Cherif<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Below is the full tx script<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_ef868d72c8cd4f889c9efa8ed61d4db3tudelftnl_--

--===============0162106380333254094==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0162106380333254094==--
