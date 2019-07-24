Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0B572FA9
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jul 2019 15:16:46 +0200 (CEST)
Received: from [::1] (port=33884 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hqH8L-0007pM-T0; Wed, 24 Jul 2019 09:16:41 -0400
Received: from mailin.dlr.de ([194.94.201.12]:28004)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Robert.Poehlmann@dlr.de>)
 id 1hqH8I-0007ix-Me
 for usrp-users@lists.ettus.com; Wed, 24 Jul 2019 09:16:38 -0400
IronPort-SDR: 9YZGHhQzBqyQnlciFhwR07jDn5sNnL3yFIdZP/PmISJ39GOYTA6MSH6GcoV5iXjpge9DXGO8Os
 4x/0Sl7ODKDg==
IronPort-PHdr: =?us-ascii?q?9a23=3AG/nwbh9VbcM4bv9uRHKM819IXTAuvvDOBiVQ1K?=
 =?us-ascii?q?B21uocTK2v8tzYMVDF4r011RmVBN+du6oP1rSempujcFRI2YyGvnEGfc4EfD?=
 =?us-ascii?q?4+ouJSoTYdBtWYA1bwNv/gYn9yNs1DUFh44yPzahANS47xaFLIv3K98yMZFA?=
 =?us-ascii?q?nhOgppPOT1HZPZg9iq2+yo9JDffhtEiCC+bL9uIxm7rQTcvdQKjIV/Lao81g?=
 =?us-ascii?q?HHqWZSdeRMwmNoK1OTnxLi6cq14ZVu7Sdete8/+sBZSan1cLg2QrJeDDQ9Lm?=
 =?us-ascii?q?A6/9brugXZTQuO/XQTTGMbmQdVDgff7RH6WpDxsjbmtud4xSKXM9H6QawyVD?=
 =?us-ascii?q?+/6apgVR3mhzodNzMh8G/ZlNF+jL5VrhyiqRxwwY/Ub52aO/dlZKzRYdcXSH?=
 =?us-ascii?q?BdUspNSiBMBJ63YYsVD+oGOOZVt47wqUcJrRSlGwasHv/vxiVSiH/xw6I60+?=
 =?us-ascii?q?AhEQTc0wwmGdIDq2nbrNHvNKsITO+60rDFwDPeZP1Y3jf97ZLHchEnofyUQ7?=
 =?us-ascii?q?1wbdbRyVQ0Fw/fklqQronlMyuI2eQJqWiX9fdvWvyphmU6qA9xuiCiytowho?=
 =?us-ascii?q?XTm44YyV/J+T9kzIs7JtC0UlN3bcO8HJdNqy2WLZZ6T8AtTm1ypSo3xL4LtY?=
 =?us-ascii?q?SlcCUKx5kr3wPTZv2DfoSS/B7uVOmcLS15iX5/Zb6ygxm//E69wePmTMa0yk?=
 =?us-ascii?q?xFri9dn9nJsXACygLc59CcSvt44kehwTGP1x3P6u1cIUA7i67bK5k5z7A+kJ?=
 =?us-ascii?q?Qdv0vNEC/2lkvxj6GYcV8q9vS15+roY7rruIWQN45yigHiKKQhgNazDvk8Mg?=
 =?us-ascii?q?gURWSU5Pqz2KXi/U3/XrpKkuU7nrTFvJzAOMgWpaG0DxVI3ost6BuzFSqq3M?=
 =?us-ascii?q?kAkXkCNl1FeRaHj4bzO1HJJfD1Feuxg1O3nzh13fDGIqftDI/KLnfdkLfheb?=
 =?us-ascii?q?N95FRayAo11t1Q+pZUCqsbLP3uRED9rMbYAQMhMwyo3+bnD81w1pkZWW2UHK?=
 =?us-ascii?q?CZKr/SvUWU5uIuJ+mMYJQVuDH7K/U+/PHhl2E2mUQdfKmywZsYdnW4Hu98L0?=
 =?us-ascii?q?qFZnrsh88LEX0WsQomUOzqlFqCXCZOZ3apRaI8/ig3CJ+9DYjdXICtm6eM3C?=
 =?us-ascii?q?O6Hp1NemBGEUqAHmn0d4WYRvcMczieLdNmkjwBBvCdTNp1zxakuRXmjaZmKu?=
 =?us-ascii?q?7P/Sswv5vuz8lu++DWjlc58jkiS4zJznqXVyRphW4SXBcy3btjugpw1kueyu?=
 =?us-ascii?q?5zhPkORvJJ4PYcBj09P5PG06pCDN3yXgfIeNGhRFK8BNmrV2JiBuktysMDNh?=
 =?us-ascii?q?4uU+6piQrOinKn?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2FhAADiWDhd/wuKuApmHgEGBwaBUwk?=
 =?us-ascii?q?LAYEUgVsUgS4Kl0SPIolcFIFnCQEBAQEBAQEBASABDAoBAQKEPgKCfTQJDgE?=
 =?us-ascii?q?DAQEFAQEBAQYBAQKGBwyCOiIcgQsBAQEBAQEBAQFNAkQsAQEBBAEsXAIBCBE?=
 =?us-ascii?q?EAQELHQcoChQJCAEBBAESCIMbgR18rgiEMgGGDoE0AY10gRFGgkw+gmEDAoE?=
 =?us-ascii?q?mBQESASEWHoMHgiYEjCItX4dClXYHAoE5hzqILYUlgxqKGIpYjTeHSZFuE4E?=
 =?us-ascii?q?gcXFcFYJKCYYqM4ofAXIBAQGLVYEigSEBAQ?=
X-IronPort-AV: E=Sophos;i="5.64,303,1559512800"; d="scan'208,217";a="20355749"
To: <robert.tillson@baesystems.com>, <usrp-users@lists.ettus.com>
Thread-Topic: Follow up: n3xx master clock rate
Thread-Index: AdVB7/SAwOQCrfcTR+G+r51/3cPGbgAMNgzwAAA3lDA=
Date: Wed, 24 Jul 2019 13:15:56 +0000
Message-ID: <2032979BBC82474D954F55A08A5408F94EE9DBBE@DLDEFFMIMP03EXC.intra.dlr.de>
References: <2032979BBC82474D954F55A08A5408F94EE9DA91@DLDEFFMIMP03EXC.intra.dlr.de>
 <4ddabc2b-870d-4e7b-bd81-5a6235fde6c5@DLDEFFMIMP03EXC.intra.dlr.de>
In-Reply-To: <4ddabc2b-870d-4e7b-bd81-5a6235fde6c5@DLDEFFMIMP03EXC.intra.dlr.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tm-snts-smtp: 6ED5E445C50E8EFAFA38DBF950307695FA692ABBF2EB426D03AD4A964073D3AC2000:8
MIME-Version: 1.0
Subject: Re: [USRP-users] Follow up: n3xx master clock rate
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Robert via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robert.Poehlmann@dlr.de
Content-Type: multipart/mixed; boundary="===============7894317546399470804=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============7894317546399470804==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2032979BBC82474D954F55A08A5408F94EE9DBBEDLDEFFMIMP03EXC_"

--_000_2032979BBC82474D954F55A08A5408F94EE9DBBEDLDEFFMIMP03EXC_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

X310 does not support coherent TX+RX on 4 channels, which is also a require=
ment.

From: USRP-users [mailto:usrp-users-bounces@lists.ettus.com] On Behalf Of T=
illson, Bob (US) via USRP-users
Sent: Wednesday, July 24, 2019 3:09 PM
To: usrp-users (usrp-users@lists.ettus.com)
Subject: Re: [USRP-users] Follow up: n3xx master clock rate

Not sure if you are truly tied to the N310, but the X310 can support that r=
ate...

From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Robert v=
ia USRP-users
Sent: Wednesday, July 24, 2019 3:29 AM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Follow up: n3xx master clock rate

*** WARNING ***
EXTERNAL EMAIL -- This message originates from outside our organization.

Dear Ettus team,

a while ago there was a discussion about the master clock rates of the n3xx=
 devices, which restricts the usable sampling rates:
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-October/05=
8292.html

A feature request was filed to enable additional master clock rates. How is=
 the status on this?

Our application requires a sampling rate of 25 MHz, which could be realized=
 with a master clock rate of 150 MHz. Resampling is inconvenient, as we are=
 interested in the signal time-of-arrival (ToA).


Best regards

Robert

--------------------------
Deutsches Zentrum f=FCr Luft- und Raumfahrt e.V. (DLR)
German Aerospace Center
Institute of Communications and Navigation | Oberpfaffenhofen, Muenchener S=
tr. 20 | 82234 Wessling | Germany

Robert P=F6hlmann
Telephone +49 8153 28 2619 | Telefax +49 8153 28 1871 | robert.poehlmann@dl=
r.de<mailto:robert.poehlmann@dlr.de>
DLR.de<http://www.dlr.de/>


--_000_2032979BBC82474D954F55A08A5408F94EE9DBBEDLDEFFMIMP03EXC_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
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
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" style=3D"line-height:16.0pt;punctuation-wrap:simple;=
text-autospace:none">
<span style=3D"color:#1F497D">X310 does not support coherent TX&#43;RX on 4=
 channels, which is also a requirement.</span><u><span style=3D"font-size:8=
.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blue;mso-fa=
reast-language:DE"><o:p></o:p></span></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> USRP-use=
rs [mailto:usrp-users-bounces@lists.ettus.com]
<b>On Behalf Of </b>Tillson, Bob (US) via USRP-users<br>
<b>Sent:</b> Wednesday, July 24, 2019 3:09 PM<br>
<b>To:</b> usrp-users (usrp-users@lists.ettus.com)<br>
<b>Subject:</b> Re: [USRP-users] Follow up: n3xx master clock rate<o:p></o:=
p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Not sure if you are tr=
uly tied to the N310, but the X310 can support that rate&#8230;<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b>From:</b> USRP-users &lt;usrp-users-bounces@lists=
.ettus.com&gt;
<b>On Behalf Of </b>Robert via USRP-users<br>
<b>Sent:</b> Wednesday, July 24, 2019 3:29 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Follow up: n3xx master clock rate<o:p></o:p></=
p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:solid windowtext 1.0pt;padding:1.0pt 4.0pt 1.0pt 4.0pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">*<strong><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">**
</span></strong></span><strong><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;">WARNING
</span></strong><strong><span style=3D"font-size:12.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;">***</span></strong><span style=3D"font-s=
ize:8.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;">EXTERNAL EMAIL -- This message originates from outside ou=
r organization</span><span style=3D"font-size:8.5pt;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;">.</span><o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,&quot;serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><a name=3D"Gru=DF"></a>Dear Ettus team,<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">a while ago there was a discussion about the master =
clock rates of the n3xx devices, which restricts the usable sampling rates:=
<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://lists.ettus.com/pipermail/usrp-use=
rs_lists.ettus.com/2018-October/058292.html">http://lists.ettus.com/piperma=
il/usrp-users_lists.ettus.com/2018-October/058292.html</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A feature request was filed to enable additional mas=
ter clock rates. How is the status on this?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Our application requires a sampling rate of 25 MHz, =
which could be realized with a master clock rate of 150 MHz. Resampling is =
inconvenient, as we are interested in the signal time-of-arrival (ToA).<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"punctuation-wrap:simple;text-autospace:none=
"><span style=3D"mso-fareast-language:DE">Best regards<o:p></o:p></span></p=
>
<p class=3D"MsoNormal" style=3D"punctuation-wrap:simple;text-autospace:none=
"><span style=3D"mso-fareast-language:DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"punctuation-wrap:simple;text-autospace:none=
"><a name=3D"Absender"></a><span style=3D"mso-fareast-language:DE">Robert<o=
:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"punctuation-wrap:simple;text-autospace:none=
"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;mso-fareast-language:DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"punctuation-wrap:simple;text-autospace:none=
"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:dimgray;mso-fareast-language:DE">&#8212;&#8212;&#8212;&#8=
212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&=
#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212=
;&#8212;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"punctuation-wrap:simple;text-autospace:none=
"><b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:dimgray;mso-fareast-language:DE">Deutsches Zentrum f=
=FCr Luft- und Raumfahrt</span></b><span style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:dimgray;mso-fareast-lang=
uage:DE">
 e.V. (DLR)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"punctuation-wrap:simple;text-autospace:none=
"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:dimgray;mso-fareast-language:DE">German Aerospace Center<=
/span><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:dimgray;mso-fareast-language:DE"><o:p>=
</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16.0pt;punctuation-wrap:simple;=
text-autospace:none">
<a name=3D"Institut"></a><span style=3D"font-size:8.5pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:dimgray;mso-fareast-language:DE">In=
stitute of Communications and Navigation | Oberpfaffenhofen, Muenchener Str=
. 20 | 82234 Wessling | Germany<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"punctuation-wrap:simple;text-autospace:none=
"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;mso-fareast-language:DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"punctuation-wrap:simple;text-autospace:none=
"><a name=3D"Funktion"></a><b><span lang=3D"DE" style=3D"font-size:10.0pt;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:dimgray;mso-farea=
st-language:DE">Robert P=F6hlmann</span></b><span lang=3D"DE" style=3D"font=
-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:dim=
gray;mso-fareast-language:DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16.0pt;punctuation-wrap:simple;=
text-autospace:none">
<a name=3D"Telefon"></a><span lang=3D"DE" style=3D"font-size:8.5pt;font-fam=
ily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:dimgray;mso-fareast-lang=
uage:DE">Telephone &#43;49 8153 28 2619 | Telefax &#43;49 8153 28 1871 |
<a href=3D"mailto:robert.poehlmann@dlr.de">robert.poehlmann@dlr.de</a><o:p>=
</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16.0pt;punctuation-wrap:simple;=
text-autospace:none">
<span lang=3D"DE" style=3D"font-size:8.5pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:dimgray;mso-fareast-language:DE"><a href=3D"http=
://www.dlr.de/">DLR.de</a></span><u><span lang=3D"DE" style=3D"font-size:8.=
5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blue;mso-far=
east-language:DE"><o:p></o:p></span></u></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_2032979BBC82474D954F55A08A5408F94EE9DBBEDLDEFFMIMP03EXC_--


--===============7894317546399470804==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7894317546399470804==--

