Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F853F122C
	for <lists+usrp-users@lfdr.de>; Thu, 19 Aug 2021 06:02:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A2D7138479E
	for <lists+usrp-users@lfdr.de>; Thu, 19 Aug 2021 00:02:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=msn.com header.i=@msn.com header.b="E1N13q7l";
	dkim-atps=neutral
Received: from GBR01-LO2-obe.outbound.protection.outlook.com (mail-lo2gbr01olkn0162.outbound.protection.outlook.com [104.47.21.162])
	by mm2.emwd.com (Postfix) with ESMTPS id 84B763818F4
	for <usrp-users@lists.ettus.com>; Thu, 19 Aug 2021 00:01:39 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TMkKRrCfNJQcgoyzuPtXda9BSw2yxaRcvGIpkKOJDWMMKaIpB9SUQrQ8nP5fyau7jOGGvCAYJIZvFYbLN0eUnfUBmdRSgudCEQFI8FFT4qqrIg7mgzblDhq9YNv431Ihz4z8x1MmiRHce3rL34f3tkTP0g2UUDuqILv3SzFvIafr67CFWrT+m4UUdjALcE2Pbl2K6GQGxqxv2u9o0i4KY6e5hXHMF3vYiCIqNvR1oUeTsmBjxCCF5gItw1gFA+fqr5lE9/g9BtgI/1t0DHrVzUcsx3nxlDoMsJTQeHakjbISRlu7fwvIyPmiZIcDdLBxUOn9SmmKw+bG8qJOYJq1jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OF4xUJuLAvGgNCR270QWNWlOQvtSH0rhwSNF5ZfZFYo=;
 b=V1vLerkM1FoUf09FlgPiGzhwopFDLk3z/nIYA0II/gi/82B+6US/N0zExcDiaAtFF5kTJwPLBDyz6wwANjHBbHsAg4agVK6C+F834LYkDICNK6OjXEEwDkJ9oWccQUIKnXxKBhlwae7Odm4JY9vDzW9wVK9WXq56/9cyHAIWQZB6ZNmaTzNkSRBuYQ5VF+Z47GO9FAwKj/eblyIcnSNQmeJ1fEkU46oAJO7x2ol4a9NORXcdAlunJ4RU3qwWjS/jYhDX68WfeEyfsW6YlmU6P7fxmbmc28E4mo2Q2+YSlgah//MJ9Ve99kkdyEMylscjw+SmgQAOnfmogz+MvnBw4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=msn.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OF4xUJuLAvGgNCR270QWNWlOQvtSH0rhwSNF5ZfZFYo=;
 b=E1N13q7lvCk1VK/SCXsiXiwOVPzOb9OFhBmvpvE7B+nrgfHTf/KS1fLgaBLSdS2t6SXGUDEW5sbIKg55ny8kbF3U9mYz0stB9ETynho0EnspF0UDcf0jms9rMxmlm2Pd+py+isHEjy3u3Hv6TBQfVERLSlaoi9hANLS3LsVB334P/JYFzpDY0dLPH9xPCOHkNrnElHDY+8YEM2NSnRbD8KhdISDhh7csztjHGwk+6NhGNeslCraGZkYjSCR9Bn3KKwOzsJlU8TEM+AIed6Qmvr3kfLz3DmSisZb+cXLl41D+9IUKPfN8SS/uy7ufgcZ8uQblvgdEiFsa3RykKq3qVQ==
Received: from CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:d7::9) by
 CWLP265MB3604.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:f3::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4415.19; Thu, 19 Aug 2021 04:01:37 +0000
Received: from CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM
 ([fe80::15d2:c20a:e0e1:452d]) by CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM
 ([fe80::15d2:c20a:e0e1:452d%5]) with mapi id 15.20.4436.019; Thu, 19 Aug 2021
 04:01:37 +0000
From: ?? WANG Cui <iucgnaw@msn.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: How to prepare I/Q sample for tx_streamer
Thread-Index: AdeUoUkrCROuZwQ3RS+PO+7Jd8zf0AAAqxSAAABspiAAAbnzAAAAkQQg
Date: Thu, 19 Aug 2021 04:01:37 +0000
Message-ID: 
 <CWLP265MB3396108E9E6873A5FFAE99E0A5C09@CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM>
References: 
 <CWLP265MB339632A5A9B43B1C73C5E426A5C09@CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM>
 <c9193ec9-349d-9ad5-8e1e-eb91dafe70b5@gmail.com>
 <CWLP265MB3396958B0D0915A3FA6325D7A5C09@CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM>
 <a9d57689-30df-238f-9b0d-258b3509a9f7@gmail.com>
In-Reply-To: <a9d57689-30df-238f-9b0d-258b3509a9f7@gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [XiO7WcQo6/lzZ3/WSB5A3Xjpmx63GrDb]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6beaa695-c8d8-4800-a545-08d962c60aef
x-ms-traffictypediagnostic: CWLP265MB3604:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 OUTj47tsLl8BGnNPKBH06jYnxdSR6bIL4nkePFhKxUMD8nLIhr6Arf5Rsot7DJsOQ0qbbNSdlyq8b9ziDOniGGlPzGyPcjoPnH6LZYJhPYcio1EwmI3wpO3x7aMDrZ+vxSzjRfO4Q1cYAxkj/fv5fV+SKeWdV39KgIYt1zKT31Oeo7o/2pIshvQYFEkSzlBsws+6LKhGr8JE5TxZnZ2LCntiA5oPq/tFXhYGFkk8AVffqi86FSyyIm27RW7QnKvKmeNjMb0AhGKAzwAsZMSp5UzBayp9ACzkELbn4fcMHYD0T+QHBTkznriMG+qMnZsXdz8fzwKlBSvzoyGbGZzBBWyGGvDCjXELv69E0DdaCVZ57yYWVf3S8hB+Z4aJs6wszINMXPFei55Npt40/mOvOEdeN8q31/G7j8AsS9LxGiRfEg0bZgY6X7GIZz7hRGIJg0is43oOw9mHsZNSqHxUOqnbmGGF7Y2vcdsJ8gT8uqk=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 8MxZModJ0xEzMgM0SbbnX3cuyfrr6W0HyHBVd8yGnoWCyJUPXxLqOv13ComNAv6XRnBtyOi43JA4njNpRa7QpVuQdLYOIUs7SkjM0qUjI34ioLFlx8/kpiDjMOIzflIw874uTIR2bbOs+gF7UgjCpQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-3174-20-msonline-outlook-1ae57.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 6beaa695-c8d8-4800-a545-08d962c60aef
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2021 04:01:37.4995
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CWLP265MB3604
Message-ID-Hash: NISFZPCYJYDVO4QPQ2QRAKDYRN3XF7UE
X-Message-ID-Hash: NISFZPCYJYDVO4QPQ2QRAKDYRN3XF7UE
X-MailFrom: iucgnaw@msn.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to prepare I/Q sample for tx_streamer
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I4STTLGUIBKR3XMK3Y46GCMO6P4OQNV3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0146675610784403343=="

--===============0146675610784403343==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CWLP265MB3396108E9E6873A5FFAE99E0A5C09CWLP265MB3396GBRP_"

--_000_CWLP265MB3396108E9E6873A5FFAE99E0A5C09CWLP265MB3396GBRP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks, will read it.

From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Thursday, August 19, 2021 11:45 AM
To: ?? WANG Cui <iucgnaw@msn.com>; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Re: How to prepare I/Q sample for tx_streamer

On 2021-08-18 11:02 p.m., ?? WANG Cui wrote:
Hi Marcus,
Thanks for the explanation, so I have to prepare the I/Q samples in my prog=
ram.
Furthermore, can I understand the send() function will multiplex/transform =
the I/Q samples to final REAL baseband waveform samples. Then the USRP hard=
ware simply multiply amplitude of each REAL sample to the carrier frequency=
 and transmit?
WANG Cui
You might usefully spend some time here:

https://kb.ettus.com/Knowledge_Base

Also the "tx_samples_from_file" example applicaton shows you how samples ar=
e delivered to the send() function.  Most applications use floating-point
  I/Q samples on the host side, and the UHD driver converts them to 16-bit =
values over the wire.




From: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.=
com>
Sent: Thursday, August 19, 2021 10:43 AM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: How to prepare I/Q sample for tx_streamer

On 2021-08-18 10:31 p.m., ?? WANG Cui wrote:
Hi,
Maybe I am asking a newbie question.
When use tx_streamer::send() function to send signal, the required format i=
s I/Q samples (say otw_format =3D sc16). I understand should provide I/Q sa=
mples buffer in arguments.
I am wondering for the I/Q samples, should I provide binary values buffer (=
e.g. I: 1, -1, 1..., Q: -1, 1, -1...), then the USRP firmware will modulate=
 the binary values to specific Cos/Sin waves?
Or I should do the Cos/Sin modulation in my program (e.g. I: 0, -.001, 0.00=
2..., Q: -1, 0.999, -0.998...) before pass the buffer send() function?
I searched the documents, but can't find answer, thanks in advance for expl=
anation,

WANG Cui





_______________________________________________

USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>

To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>
The whole point of an SDR is that it doesn't have any pre-defined notion of=
 what modulation techniques are used, etc.  That's entirely up to you.

You're sending a complex-baseband representation of *waveforms*.   The UHD =
library is NOT a DSP library.  It is a device-interface library.

If you need something higher-level, there's Gnu Radio (http://www.gnuradio.=
org) or even MATLAB.  But SDR radios in general don't have any
  built-in modulation.  They want sampled baseband waveforms.




--_000_CWLP265MB3396108E9E6873A5FFAE99E0A5C09CWLP265MB3396GBRP_
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
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	text-align:justify;
	font-size:11.0pt;
	font-family:DengXian;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:DengXian;
	color:windowtext;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:DengXian;
	color:windowtext;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:DengXian;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Thanks, will read it.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span st=
yle=3D"font-family:&quot;Calibri&quot;,sans-serif"> Marcus D. Leech &lt;pat=
chvonbraun@gmail.com&gt;
<br>
<b>Sent:</b> Thursday, August 19, 2021 11:45 AM<br>
<b>To:</b> ?? WANG Cui &lt;iucgnaw@msn.com&gt;; usrp-users@lists.ettus.com<=
br>
<b>Subject:</b> Re: [USRP-users] Re: How to prepare I/Q sample for tx_strea=
mer<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><o:p>&nbsp;=
</o:p></p>
<div>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left">On 2021-08-=
18 11:02 p.m., ?? WANG Cui wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">Hi Marcus,<o:p></o:p></p>
<p class=3D"MsoNormal">Thanks for the explanation, so I have to prepare the=
 I/Q samples in my program.<o:p></o:p></p>
<p class=3D"MsoNormal">Furthermore, can I understand the send() function wi=
ll multiplex/transform the I/Q samples to final REAL baseband waveform samp=
les. Then the USRP hardware simply multiply amplitude of each REAL sample t=
o the carrier frequency and transmit?<o:p></o:p></p>
<p class=3D"MsoNormal">WANG Cui<o:p></o:p></p>
</blockquote>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-family:&quot;Calibri&quot;,sans-serif">You might usefully spend so=
me time here:<br>
<br>
<a href=3D"https://kb.ettus.com/Knowledge_Base">https://kb.ettus.com/Knowle=
dge_Base</a><br>
<br>
Also the &quot;tx_samples_from_file&quot; example applicaton shows you how =
samples are delivered to the send() function.&nbsp; Most applications use f=
loating-point<br>
&nbsp; I/Q samples on the host side, and the UHD driver converts them to 16=
-bit values over the wire.<br>
<br>
<br>
<br>
<o:p></o:p></span></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span st=
yle=3D"font-family:&quot;Calibri&quot;,sans-serif"> Marcus D. Leech
<a href=3D"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;<=
/a> <br>
<b>Sent:</b> Thursday, August 19, 2021 10:43 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a><br>
<b>Subject:</b> [USRP-users] Re: How to prepare I/Q sample for tx_streamer<=
/span><o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left">&nbsp;<o:p>=
</o:p></p>
<div>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left">On 2021-08-=
18 10:31 p.m., ?? WANG Cui wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">Maybe I am asking a newbie question.<o:p></o:p></p>
<p class=3D"MsoNormal">When use tx_streamer::send() function to send signal=
, the required format is I/Q samples (say otw_format =3D sc16). I understan=
d should provide I/Q samples buffer in arguments.<o:p></o:p></p>
<p class=3D"MsoNormal">I am wondering for the I/Q samples, should I provide=
 binary values buffer (e.g. I: 1, -1, 1..., Q: -1, 1, -1...), then the USRP=
 firmware will modulate the binary values to specific Cos/Sin waves?<o:p></=
o:p></p>
<p class=3D"MsoNormal">Or I should do the Cos/Sin modulation in my program =
(e.g. I: 0, -.001, 0.002..., Q: -1, 0.999, -0.998...) before pass the buffe=
r send() function?<o:p></o:p></p>
<p class=3D"MsoNormal">I searched the documents, but can<span lang=3D"ZH-CN=
">&#8217;</span>t find answer, thanks in advance for explanation,<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">WANG Cui<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-family:&quot;Calibri&quot;,sans-serif"><br>
<br>
<br>
</span><o:p></o:p></p>
<pre>_______________________________________________<o:p></o:p></pre>
<pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a><o:p></o:p></pre>
<pre>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com">usrp-users-leave@lists.ettus.com</a><o:p></o:p></pre>
</blockquote>
<p class=3D"MsoNormal" align=3D"left" style=3D"margin-bottom:12.0pt;text-al=
ign:left"><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">The wh=
ole point of an SDR is that it doesn't have any pre-defined notion of what =
modulation techniques are used, etc.&nbsp; That's entirely
 up to you.<br>
<br>
You're sending a complex-baseband representation of *waveforms*.&nbsp;&nbsp=
; The UHD library is NOT a DSP library.&nbsp; It is a device-interface libr=
ary.<br>
<br>
If you need something higher-level, there's Gnu Radio (<a href=3D"http://ww=
w.gnuradio.org">http://www.gnuradio.org</a>) or even MATLAB.&nbsp; But SDR =
radios in general don't have any<br>
&nbsp; built-in modulation.&nbsp; They want sampled baseband waveforms.<br>
<br>
<br>
</span><o:p></o:p></p>
</blockquote>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p=
>
</div>
</body>
</html>

--_000_CWLP265MB3396108E9E6873A5FFAE99E0A5C09CWLP265MB3396GBRP_--

--===============0146675610784403343==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0146675610784403343==--
