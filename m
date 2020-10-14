Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9494C28D9A7
	for <lists+usrp-users@lfdr.de>; Wed, 14 Oct 2020 07:43:41 +0200 (CEST)
Received: from [::1] (port=54944 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kSZZX-0000TD-M4; Wed, 14 Oct 2020 01:43:35 -0400
Received: from mailin.dlr.de ([194.94.201.12]:3095)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Emanuel.Staudinger@dlr.de>)
 id 1kSZZT-0000P9-2a
 for usrp-users@lists.ettus.com; Wed, 14 Oct 2020 01:43:31 -0400
IronPort-SDR: itKcnW8ryptj0DMJsNfQz+tp7MVe+OfomUeVfR8s8jL5kNt9oYh95X1afPKvfM+4Vd7+FD0fyL
 NKEEXSd5+VjQ==
X-IPAS-Result: =?us-ascii?q?A2HbGwDYjoZf/xaKuAoCXh4BAQsSDECBUYEhgWIVgTQKh?=
 =?us-ascii?q?3yNUYJthySRWDQJCwEBAQEBAQEBAQgBGAEMCgQBAQKESAKCBCY5BQ0CAwEBA?=
 =?us-ascii?q?QMCAwEBAQEGAQEBAQEBBQQBAQKGDDkMgjciGWJGAzkBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQQCQwJTAhABHgEBAQEDAQErQQsQA?=
 =?us-ascii?q?gEZBAEBKAchBgEKFAkIAgQOBQiDH4F+TQM9pz90gTSEAzgBAwMBgRGCRg2CJ?=
 =?us-ascii?q?IE4j1GBEYNOghogIgEBAgGBOgEBVoVBBIZ2iTmKIYwAkEJSB4Fhig2LEIFOA?=
 =?us-ascii?q?YUBK4MVgSqNcS+OX5FBjFaCbJJLAgQCBAUCFYFBK2GBGXFPggJnCUcXAg2OK?=
 =?us-ascii?q?xeDTopWdAIBNAIGCgEBAwmNN4ERAQE?=
IronPort-PHdr: =?us-ascii?q?9a23=3AsxH0dxSV1iyNKry0Ltkp8sjtDtpsv+yvbD5Q0Y?=
 =?us-ascii?q?Iujvd0So/mwa67ZBSFt8tkgFKBZ4jH8fUM07OQ7/m/HzJYqsnc+Fk5M7V0Hy?=
 =?us-ascii?q?cfjssXmwFySOWkMmbcaMDQUiohAc5ZX0Vk9XzoeWJcGcL5ekGA6ibqtW1aFR?=
 =?us-ascii?q?rwLxd6KfroEYDOkcu3y/qy+5rOaAlUmTaxe7x/IAi0oAnLt8QanYRuJ6Qxxx?=
 =?us-ascii?q?DUvnZGZuNayH9yK1mOhRj8/MCw/JBi8yRUpf0s8tNLXLv5caolU7FWFSwqPG?=
 =?us-ascii?q?8p6sLlsxnDVhaP6WAHUmoKiBpIAhPK4w/8U5zsryb1rOt92C2dPc3rUbA5XC?=
 =?us-ascii?q?mp4ql3RBP0jioMKjg0+3zVhMNtlqJWuBKvqQJizY7Ibo+bN/R+caHcfdwGSm?=
 =?us-ascii?q?VMRdxeWzBDAo6mc4cDE/QNMOBFpIf9vVsOqh6+CBGrCe3gzz9HnHn23bAk3O?=
 =?us-ascii?q?QlCw3IwRAgEMgTsHvJrdX1MqgSXv6vzKTT0DrDa+lW1S3g54fWax0sp+yHUr?=
 =?us-ascii?q?1sf8TL00YvCx/FgUuKqYzjJz6Yy/oAvmeU4uRgUe+jl24qph1/rzWxxcohhY?=
 =?us-ascii?q?rEi4ALx13F8Sh0wJo4K922RkB0f9OqHoVduiWGO4ZrXM8sTW5mtSAnwbMIvp?=
 =?us-ascii?q?67eTIFyJUhxxPHd/OIaZOH4hb9W+aUOzh4mG5ld6ylhxap60Sv1ur8Vsys3F?=
 =?us-ascii?q?lQqypKiNjNtncL1xDJ9seHTf598l+/1jaTywDT9/pELVoomqrcLp4sxKM7mJ?=
 =?us-ascii?q?kLsUnbAyP6hF/6gLKVe0gr4OSk9urqb7b8qpOCKYN4khzyPrg0lsCiAuk1PR?=
 =?us-ascii?q?ICU3WV9Om/zrHv4030TbpMg/YriKfWqoraKt4epqOhBg9V1Zss5AinAje91d?=
 =?us-ascii?q?QYgWEHLFVYeBKbl4TpO0/BIPT/DfqnjVqiljllyf/GMLPhBZvDLX/Nnq3/cb?=
 =?us-ascii?q?pj5EBTyRQ+wcpe55JSFrEBOuj8VlXsu9zcFB81KRG7zPj/BNV80IMRR36PD7?=
 =?us-ascii?q?eEPK/Oq1OE++EiLuaWaIMItjvwKOIp6+DwgXMhnF8SZ6ip3Z8ZaHCiGfRmJl?=
 =?us-ascii?q?2Ub3XpgtgbF2cKoxQxTOjwhFOfTT5cfWuyUL895jE9B4KpE53DS5uwj7yFxi?=
 =?us-ascii?q?e3BIBZaX5eBlCWDXjob5mEW+sLaC+KPMBtjj4JWaSiRoIvyx2jrw/6y717Lu?=
 =?us-ascii?q?rR4CIYtJbj2MJp6O3UkBE47SZ0ANiF02GRU2F0mXsFRyIt3KBluUxx00qD0b?=
 =?us-ascii?q?NmjPxCDtxe/PdJUgYhNZ7A1Ox2Ec79Wh7dfteUU1aqWMmpATY0ToF5/9hbN0?=
 =?us-ascii?q?slRI3y1Urr3y22BrYUk/qAA5lioYzG2H2kc+t4wnDb2a1ntEUvX8dOM2KrnI?=
 =?us-ascii?q?Zz8xKVC4OfwBbRrLqjaalJhH2Fz2yE12fb5Ew=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.77,373,1596492000"; d="scan'208,217";a="42207015"
To: <e070832@hotmail.com>
CC: <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] SFP+ to RJ45 Adapter
Thread-Index: AQHWoXbiuspza82mlEynHjCHwQQQuqmVrnkAgAAFhqmAAAJoqIAA3k6Q
Date: Wed, 14 Oct 2020 05:42:49 +0000
Message-ID: <aafdb1789e884437b8ee7d24918dd68f@dlr.de>
References: <DM6PR19MB26682C0D9A7271A482546057A4040@DM6PR19MB2668.namprd19.prod.outlook.com>,
 <CAGp1hYpMrQf6j7sTXCpFXOfsigQ6GsFNJBCipAbQhWvwKyK+yg@mail.gmail.com>,
 <DM6PR19MB2668D49AD0F0F45B730E547CA4040@DM6PR19MB2668.namprd19.prod.outlook.com>
 <DM6PR19MB26689FEDF4D276221C9524D0A4040@DM6PR19MB2668.namprd19.prod.outlook.com>
In-Reply-To: <DM6PR19MB26689FEDF4D276221C9524D0A4040@DM6PR19MB2668.namprd19.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tm-snts-smtp: FECB0652D58C4EEF56225F29F96823CC6AF47F38CFBC40C6B0FBB99162FCC74A2000:8
MIME-Version: 1.0
Subject: Re: [USRP-users] SFP+ to RJ45 Adapter
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Emanuel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Emanuel.Staudinger@dlr.de
Content-Type: multipart/mixed; boundary="===============7590259593180621844=="
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

--===============7590259593180621844==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_aafdb1789e884437b8ee7d24918dd68fdlrde_"

--_000_aafdb1789e884437b8ee7d24918dd68fdlrde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jeff,

I use the SFP+ to RJ45 adapters from Ubiquiti, which worked pretty well wit=
h a Cat6 copper cable over a couple of meters. I tested that with a Sonnet =
10Gb to Thunderbolt 3 adapter on an Intel NUC for an X310. Works like a cha=
rm.

Carefully check that the SFP+ adapter for the X310 you are buying is really=
 supporting Jumbo-frames. There are cheap(er) ones on the market for 10Gbit=
 Ethernet, though they do not necessarily support frame sizes of, e.g., 900=
0. I experienced this with SFP+ adapters before we bought the ones from Ubi=
quiti. It has been a pain to find this out, because the data sheet did not =
mention that and after quite some time I found a forum post stating that th=
is device does not support Jumbo frames.

All the best,
Emanuel

Von: USRP-users <usrp-users-bounces@lists.ettus.com> Im Auftrag von Jeff S =
via USRP-users
Gesendet: Dienstag, 13. Oktober 2020 18:20
An: Ettus Mail List <usrp-users@lists.ettus.com>
Betreff: Re: [USRP-users] SFP+ to RJ45 Adapter

I just rered my post as well, and I should have been more clear.

The Thunderbolt adapter I have has an RJ45 connector (unfortunately) https:=
//www.cablematters.com/pc-1039-131-intel-certified-thunderbolt-3-to-10-gb-e=
thernet-adapter.aspx.  It is not one that I asked for, just what I ended up=
 with.  I wanted to go from that RJ45 (via copper?) to the SFP+ port on the=
 X310.

I like the suggestions from everyone so far, and I need to see what's going=
 to fit (cost-wise).

Thanks!

________________________________
From: Derek Steinkamp <derekste@gmail.com>
Sent: Tuesday, October 13, 2020 10:51 AM
To: Jeff S <e070832@hotmail.com>
Subject: Re: [USRP-users] SFP+ to RJ45 Adapter

Just re-read your post. This is what you need (assuming your thunderbolt 10=
G adapter has an SFP+ port- if not see the QNAP product)

[Blue] Colored 10G SFP+ DAC Cable - Twinax SFP Cable for Ubiquiti Devices, =
2-Meter(6.5ft) https://www.amazon.com/dp/B075XJXSWG/ref=3Dcm_sw_r_cp_api_fa=
b_1XCHFbFY9K6T6

QNAP QNA-T310G1S Thunderbolt 3 to 10GbE Adaptor, Single-Port Thunderbolt 3 =
to Single-Port 10GbE SFP+ https://www.amazon.com/dp/B07KTLP44W/ref=3Dcm_sw_=
r_cp_api_fab_BZCHFbCZ56488

On Tue, Oct 13, 2020 at 10:43 AM Jeff S via USRP-users <usrp-users@lists.et=
tus.com<mailto:usrp-users@lists.ettus.com>> wrote:
I acquired a Thunderbolt 10 Gigabit adapter, and I was wondering if I could=
 connect it to the SFP+ connector on my X310.

Has anyone done this?  And, is there a particular SFP+ to RJ45 which works =
well?  All I see on the Ettus website is the recommendation for using the t=
erminated cable and PC network adapter.

Thanks,
Jeff
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_aafdb1789e884437b8ee7d24918dd68fdlrde_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.E-MailFormatvorlage19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Hi Jeff,<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">I use the SFP&#43; to RJ45 adapters from Ubiquiti, which worked prett=
y well with a Cat6 copper cable over a couple of meters. I tested that with=
 a Sonnet 10Gb to Thunderbolt 3 adapter on
 an Intel NUC for an X310. Works like a charm.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Carefully check that the SFP&#43; adapter for the X310 you are buying=
 is really supporting Jumbo-frames. There are cheap(er) ones on the market =
for 10Gbit Ethernet, though they do not necessarily
 support frame sizes of, e.g., 9000. I experienced this with SFP&#43; adapt=
ers before we bought the ones from Ubiquiti. It has been a pain to find thi=
s out, because the data sheet did not mention that and after quite some tim=
e I found a forum post stating that
 this device does not support Jumbo frames.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">All the best,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Emanuel<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b>Von:</b> USRP-users &lt;usrp-users-bounces@lists.=
ettus.com&gt; <b>
Im Auftrag von </b>Jeff S via USRP-users<br>
<b>Gesendet:</b> Dienstag, 13. Oktober 2020 18:20<br>
<b>An:</b> Ettus Mail List &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Betreff:</b> Re: [USRP-users] SFP&#43; to RJ45 Adapter<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">I just =
rered my post as well, and I should have been more clear.<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">The Thu=
nderbolt adapter I have has an RJ45 connector (unfortunately)
<a href=3D"https://www.cablematters.com/pc-1039-131-intel-certified-thunder=
bolt-3-to-10-gb-ethernet-adapter.aspx">
https://www.cablematters.com/pc-1039-131-intel-certified-thunderbolt-3-to-1=
0-gb-ethernet-adapter.aspx</a>.&nbsp; It is not one that I asked for, just =
what I ended up with.&nbsp; I wanted to go from that RJ45 (via copper?) to =
the SFP&#43; port on the X310.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">I like =
the suggestions from everyone so far, and I need to see what's going to fit=
 (cost-wise).<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Thanks!=
<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"x_divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"color:black">From:</span></b><span=
 style=3D"color:black"> Derek Steinkamp &lt;derekste@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, October 13, 2020 10:51 AM<br>
<b>To:</b> Jeff S &lt;e070832@hotmail.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] SFP&#43; to RJ45 Adapter</span> <o:p></o:p=
></p>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal">Just re-read your post. This is what you need (assum=
ing your thunderbolt 10G adapter has an SFP&#43; port- if not see the QNAP =
product)<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">[Blue] Colored 10G SFP&#43; DAC Cable - Twinax SFP C=
able for Ubiquiti Devices, 2-Meter(6.5ft)
<a href=3D"https://www.amazon.com/dp/B075XJXSWG/ref=3Dcm_sw_r_cp_api_fab_1X=
CHFbFY9K6T6">
https://www.amazon.com/dp/B075XJXSWG/ref=3Dcm_sw_r_cp_api_fab_1XCHFbFY9K6T6=
</a><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">QNAP QNA-T310G1S Thunderbolt 3 to 10GbE Adaptor, Sin=
gle-Port Thunderbolt 3 to Single-Port 10GbE SFP&#43;
<a href=3D"https://www.amazon.com/dp/B07KTLP44W/ref=3Dcm_sw_r_cp_api_fab_BZ=
CHFbCZ56488">
https://www.amazon.com/dp/B07KTLP44W/ref=3Dcm_sw_r_cp_api_fab_BZCHFbCZ56488=
</a><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, Oct 13, 2020 at 10:43 AM Jeff S via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus=
.com</a>&gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">I acqui=
red a Thunderbolt 10 Gigabit adapter, and I was wondering if I could connec=
t it to the SFP&#43; connector on my X310.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Has any=
one done this?&nbsp; And, is there a particular SFP&#43; to RJ45 which work=
s well?&nbsp; All I see on the Ettus website is the recommendation for usin=
g the terminated cable and PC network adapter.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Thanks,=
<br>
Jeff<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a><o:p></o:p></p>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_aafdb1789e884437b8ee7d24918dd68fdlrde_--


--===============7590259593180621844==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7590259593180621844==--

