Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDB9BC38C
	for <lists+usrp-users@lfdr.de>; Tue, 24 Sep 2019 09:58:52 +0200 (CEST)
Received: from [::1] (port=34850 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iCfik-0007fU-Hs; Tue, 24 Sep 2019 03:58:50 -0400
Received: from mailin.dlr.de ([194.94.201.12]:27578)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Robert.Poehlmann@dlr.de>)
 id 1iCfif-0007ba-UY
 for usrp-users@lists.ettus.com; Tue, 24 Sep 2019 03:58:46 -0400
IronPort-SDR: oYtUe5LvEvzhnxgiacVUT3DwxWNckI1rvSxZLFsziXFugMAuXJU1sDJ9W7bRisveq9bXqEKn0g
 LvmU+nANnjIw==
IronPort-PHdr: =?us-ascii?q?9a23=3AoOKdtxCoJdS+i5MFgjmFUyQJP3N1i/DPJgcQr6?=
 =?us-ascii?q?AfoPdwSPT+o8bcNUDSrc9gkEXOFd2Cra4d0KyM4uu5AzJIyK3CmUhKSIZLWR?=
 =?us-ascii?q?4BhJdetC0bK+nBN3fGKuX3ZTcxBsVIWQwt1Xi6NU9IBJS2PAWK8TW94jEIBx?=
 =?us-ascii?q?rwKxd+KPjrFY7OlcS30P2594HObwlSizexfL1/IA+ooQjVucUanJVuJ6cswR?=
 =?us-ascii?q?bVv3VEfPhby3l1LlyJhRb84cmw/J9n8ytOvv8q6tBNX6bncakmVLJUFDspPX?=
 =?us-ascii?q?w7683trhnDUBCA5mAAXWUMkxpHGBbK4RfnVZrsqCT6t+592C6HPc3qSL0/RD?=
 =?us-ascii?q?qv47t3RBLulSwKMSMy/mPKhcxqlK9VoAyvqQFjw4DaY4+VOvhxfqLBctwVXm?=
 =?us-ascii?q?dBRNpdWihbD4+gc4cDEuwMNvtYoYnnoFsOqAOzCA6wCuPo0TBHmGX23bEg3+?=
 =?us-ascii?q?o7FgHJwgwgH9YLsHvOqtX1MrwfXv2xzKnS1znMcu1Z1C775YPVfB4hpvSMUq?=
 =?us-ascii?q?hxccrX0UQvGATFjlKfqYzhITyZzPgCs2+e7+Z4S+2vl3InqxxqojS12sgsjY?=
 =?us-ascii?q?zJi4QIwV7H7SV02Js5KcGiREJmYtOpH4FcuzyUOoZ1WM8uXn9ktD4nxrEao5?=
 =?us-ascii?q?K3YSsHxZs9yxLCZfGKcJKE7gzjWeueOTt0mXNodbalixqs8UWtxffwW8iu3F?=
 =?us-ascii?q?pUoCdIkd/BvW0X2RPJ8MiIUP5981+k2TaIyg/c9PlJIVsxlarHM54hxaMwlo?=
 =?us-ascii?q?YLvUTDACD2nEL2gbeYeEsi9Oam5OTpbLXhqJGfMIF6kB3yProhlMO+H+k0KA?=
 =?us-ascii?q?kOX26H+eSmzrLv51D2QLFQjvEsj6bWrojWJcUdpqGnHw9Yypsv5wqlAzu709?=
 =?us-ascii?q?kVkmMLIE9LdR+ElYTlJk/CLOj9DfilglSslDlrx+rBPr3kGpjDMn/Dn6z/cr?=
 =?us-ascii?q?Zn905Q0hA9zddB6JJUDrEBJej8Wkn3tNHDExA5Nxa0z/z6B9pjzo8eQ36AAr?=
 =?us-ascii?q?eFMKPOtl+F/v8vI/KWZI8NoTr9NuMl6OD0jX8iglIdeaip3YALaHCjBPhpPV?=
 =?us-ascii?q?mZYWbxgtcaC2sFog0+TOm5wGGFBGpOfGyqGr8n6ysgIIanFpvYAI2xnKGami?=
 =?us-ascii?q?y8G8sFSHpBDwXYK3Diep+YHc8LZSKWJ8ZnlBQIUaLnR4J3hkLmjxPz17cydr?=
 =?us-ascii?q?mcwSYfr5+2jNU=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2GiAAAPzIld/wyKuAoZSxYHAQEFAQw?=
 =?us-ascii?q?FAYFVBgELAQGBGoFvgS8KlTSZIhSBKzwJAQEBAQEBAQEBAwEcAQwKAQEChD0?=
 =?us-ascii?q?Cg0M2Bw4CAwkBAQUBAQEBAQUEAQEChhYMGwKCHSIYUT4BAQEBAQEBAQEkAQE?=
 =?us-ascii?q?BAQEBAQEBAQEBAQEBAQEBAQEBAQESAjQPRg8SAQEYAQEBAQMBAQMBJz8CGwI?=
 =?us-ascii?q?BCBEEAQEGAQEBAggVBwIFEAEOAQEKFAkIAgQSAQYCBoMVghmsIIIlH4QYARR?=
 =?us-ascii?q?AhSwQgTQBjh+BEUaCTD6CYQEBAQEBF4ErBBoVH4MHgiYEjE2JNA6IFIccA4d?=
 =?us-ascii?q?KB4E+hleBFYhmhTqDKIpSiyuMa3GIUZJpGQFcDQeBGnFPggRoCAEJPhAUgVo?=
 =?us-ascii?q?Xg0+KU3MBAQWMCYEjAQE?=
X-IronPort-AV: E=Sophos;i="5.64,543,1559512800"; 
 d="jpg'145?scan'145,208,217,145";a="22714436"
To: <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] USRP N310 Phase Bouncing Issue
Thread-Index: AQHVcn2weuEOatUR90iO2w+J155Ipac591OAgAB+3tA=
Date: Tue, 24 Sep 2019 07:58:03 +0000
Message-ID: <2032979BBC82474D954F55A08A5408F94EEC6F02@DLDEFFMIMP03EXC.intra.dlr.de>
References: <CAMKs6heJ9P9ThPC=EAdSdb-8jHDkC6yi4+h-By-Fq3CeNnZBFw@mail.gmail.com>
 <5D897DE7.4080808@gmail.com>
In-Reply-To: <5D897DE7.4080808@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-tm-snts-smtp: 2F9C1265A8E18A9955AFBC1D5BB64054E864E9F671486F2B31B5B631068D22312000:8
MIME-Version: 1.0
Subject: Re: [USRP-users] USRP N310 Phase Bouncing Issue
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
Content-Type: multipart/mixed; boundary="===============0436510142968191156=="
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

--===============0436510142968191156==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_2032979BBC82474D954F55A08A5408F94EEC6F02DLDEFFMIMP03EXC_";
	type="multipart/alternative"

--_004_2032979BBC82474D954F55A08A5408F94EEC6F02DLDEFFMIMP03EXC_
Content-Type: multipart/alternative;
	boundary="_000_2032979BBC82474D954F55A08A5408F94EEC6F02DLDEFFMIMP03EXC_"

--_000_2032979BBC82474D954F55A08A5408F94EEC6F02DLDEFFMIMP03EXC_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

is the device configured correctly? External and QEC don't work together:

Apparently it is linked to the quadrature error correction (QEC) and can be=
 solved turning off this calibration. This can be done by setting init_cals=
=3DBASIC, where you can add the relevant calibrations but avoid RX_QEC_INIT=
, see https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_mg_calibratio=
ns.

Robert


From: USRP-users [mailto:usrp-users-bounces@lists.ettus.com] On Behalf Of M=
arcus D. Leech via USRP-users
Sent: Tuesday, September 24, 2019 4:23 AM
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] USRP N310 Phase Bouncing Issue

On 09/23/2019 10:12 PM, Austin Adam via USRP-users wrote:
Hi USRP Users,

Currently we are taking a signal from a signal generator, splitting it four=
 ways, and connecting it to the receiving ports of the USRP N310.  We are u=
sing a USRP N210 as an external local oscillator (splitting the output into=
 the RX LO ports on the N310) to help synchronize the four signals.

During first observation, using GNU Radio, we noticed that the four signals=
 display about a 180 degree phase shift between the daughter boards, as sta=
ted online within the getting started manual of the N310.  We expected to s=
ee this 180 degrees phase shift however, we are unexpectedly noticing a bou=
ncing of phase shift during our simulations. This can be seen in the video =
attached.

We thought the cause of this was because of insufficient power being input =
into the external LO (+3dBm-6dBm) however increasing the power to satisfy t=
his, did not solve the problem.

Are we correct to assume that there should be an initial 180 degree phase d=
iscrepancy that can be fixed using GNU? Or is this bouncing in phase a norm=
al occurrence when using an N210 to drive the external LO?

The PPS an MIMO cables are not currently connected.

 Thank you for any responses!

~Austin
[Image removed by sender.] Gain30.75.webm<https://drive.google.com/file/d/1=
pVEcmdE--pvkEy_6eWWNzWQHlYk1CyUI/view?usp=3Ddrive_web>[Image removed by sen=
der.]




_______________________________________________

USRP-users mailing list

USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>

http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
Are you operating very close to DC in the baseband?  (That is, the LO is ve=
ry close to the received signal).  You could just be seeing the
  dynamic nature of DC offset removal.

The movie won't play for me (probably my fault), so I'm just guessing here.=
  You'll likely see some aggregate phase noise that is the sum
  of the phase-noise of the LO splitting electronics, and the phase-noise o=
f the RF channels and mixing, etc.

What is the magnitude of the phase noise (after you've accounted for the 18=
0deg phase ambiguity due to the 2XLO scheme).


--_000_2032979BBC82474D954F55A08A5408F94EEC6F02DLDEFFMIMP03EXC_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Consolas","serif";
	color:black;}
span.EmailStyle19
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
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">is the device configured =
correctly? External and QEC don&#8217;t work together:<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white">
<i><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1F497D">Apparently it is linked to the quadrature err=
or correction (QEC) and can be solved turning off this calibration. This ca=
n be done by setting init_cals=3DBASIC, where you can add
 the relevant calibrations but avoid RX_QEC_INIT, see&nbsp;<a href=3D"https=
://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_mg_calibrations" target=
=3D"_top"><span style=3D"color:#551A8B">https://files.ettus.com/manual/page=
_usrp_n3xx.html#n3xx_mg_calibrations</span></a>.</span></i><i><span style=
=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;=
"><o:p></o:p></span></i></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1F497D">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1F497D">Robert</span><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Verdana&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;;color:windowtext"> USRP-users [mailto:usrp-users-bounces@lists.ettus=
.com]
<b>On Behalf Of </b>Marcus D. Leech via USRP-users<br>
<b>Sent:</b> Tuesday, September 24, 2019 4:23 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] USRP N310 Phase Bouncing Issue<o:p></o:p><=
/span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On 09/23/2019 10:12 PM, Austin Adam via USRP-users w=
rote:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal">Hi USRP Users, <o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Currently we are taking a signal from a signal gener=
ator, splitting it four ways, and connecting it to the receiving&nbsp;ports=
 of the USRP N310.&nbsp; We are using a USRP N210 as an external local osci=
llator (splitting the output into the RX LO
 ports on the N310) to help synchronize the four signals.&nbsp; &nbsp; <o:p=
></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">During first observation, using GNU Radio, we notice=
d that the four signals display about a 180 degree phase shift between the =
daughter boards, as stated online within the getting started manual of the =
N310.&nbsp; We expected to see this 180
 degrees phase shift however, we are unexpectedly noticing a bouncing of ph=
ase shift during our simulations. This can be seen in the video attached.<o=
:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">We thought the cause of this was because of insuffic=
ient power being input into the external LO (&#43;3dBm-6dBm) however increa=
sing the power to satisfy this, did not solve the&nbsp;problem.&nbsp;<o:p><=
/o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Are we correct to assume that there should be an ini=
tial 180 degree phase discrepancy that can be fixed using GNU? Or is this b=
ouncing in phase a normal occurrence when using an N210 to drive the extern=
al LO?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">The PPS an MIMO cables are not currently connected.<=
o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">&nbsp;Thank you for any responses!<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">~Austin<o:p></o:p></p>
</div>
<div style=3D"border:solid #DDDDDD 1.0pt;padding:4.0pt 4.0pt 4.0pt 4.0pt;ma=
x-height:18px">
<p class=3D"MsoNormal" style=3D"background:whitesmoke"><b><span style=3D"fo=
nt-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><a hre=
f=3D"https://drive.google.com/file/d/1pVEcmdE--pvkEy_6eWWNzWQHlYk1CyUI/view=
?usp=3Ddrive_web" target=3D"_blank"><span style=3D"border:none windowtext 1=
.0pt;padding:0cm;text-decoration:none"><img border=3D"0" width=3D"100" heig=
ht=3D"100" id=3D"_x0000_i1025" src=3D"cid:~WRD000.jpg" alt=3D"Image removed=
 by sender."></span><span style=3D"border:none windowtext 1.0pt;padding:0cm=
">&nbsp;</span><span style=3D"border:none windowtext 1.0pt;padding:0cm;text=
-decoration:none">Gain30.75.webm</span></a><span style=3D"border:solid wind=
owtext 1.0pt;padding:0cm"><img border=3D"0" width=3D"100" height=3D"100" id=
=3D"_x0000_i1026" src=3D"cid:~WRD000.jpg" alt=3D"Image removed by sender.">=
</span><o:p></o:p></span></b></p>
</div>
</div>
</div>
<p class=3D"MsoNormal"><br>
<br>
<br>
<o:p></o:p></p>
<pre>_______________________________________________<o:p></o:p></pre>
<pre>USRP-users mailing list<o:p></o:p></pre>
<pre><a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.c=
om</a><o:p></o:p></pre>
<pre><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
</a><o:p></o:p></pre>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Are you operating ver=
y close to DC in the baseband?&nbsp; (That is, the LO is very close to the =
received signal).&nbsp; You could just be seeing the<br>
&nbsp; dynamic nature of DC offset removal.<br>
<br>
The movie won't play for me (probably my fault), so I'm just guessing here.=
&nbsp; You'll likely see some aggregate phase noise that is the sum<br>
&nbsp; of the phase-noise of the LO splitting electronics, and the phase-no=
ise of the RF channels and mixing, etc.<br>
<br>
What is the magnitude of the phase noise (after you've accounted for the 18=
0deg phase ambiguity due to the 2XLO scheme).<br>
<br>
<o:p></o:p></p>
</div>
</body>
</html>

--_000_2032979BBC82474D954F55A08A5408F94EEC6F02DLDEFFMIMP03EXC_--

--_004_2032979BBC82474D954F55A08A5408F94EEC6F02DLDEFFMIMP03EXC_
Content-Type: image/jpeg; name="~WRD000.jpg"
Content-Description: ~WRD000.jpg
Content-Disposition: inline; filename="~WRD000.jpg"; size=823;
	creation-date="Tue, 24 Sep 2019 07:56:39 GMT";
	modification-date="Tue, 24 Sep 2019 07:56:39 GMT"
Content-ID: <~WRD000.jpg>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0a
HBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIy
MjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCABkAGQDASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD3+iii
gAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKA
CiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAK
KKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAoo
ooAKKKKACiiigAooooAKKKKACiiigD//2Q==

--_004_2032979BBC82474D954F55A08A5408F94EEC6F02DLDEFFMIMP03EXC_--


--===============0436510142968191156==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0436510142968191156==--

