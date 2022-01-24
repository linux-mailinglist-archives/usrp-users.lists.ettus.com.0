Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0650A498912
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jan 2022 19:52:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 002C838449A
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jan 2022 13:52:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=baesystems.com header.i=@baesystems.com header.b="V/DIb3z7";
	dkim-atps=neutral
Received: from dmzms99801.na.baesystems.com (dmzsmtprelay.us.baesystems.com [149.32.232.65])
	by mm2.emwd.com (Postfix) with ESMTPS id 9D8C6384418
	for <usrp-users@lists.ettus.com>; Mon, 24 Jan 2022 13:51:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1643050303; x=1800730303;
  h=from:to:subject:date:mime-version;
  bh=MA7fBlybKfTIV/4XNiWEbG2AmNTinrwCnmhsc7SC1JA=;
  b=V/DIb3z76vWdZauv9LZ7MgxKJoyVCAVFr/toAlq9wtyN9dNjryBqD39S
   +S8fD3V/eYhARSNOP/W4gdbWhszGh/1XkAE6cwxPjoolLTcJgd7RTXapo
   0fEzJOdPZjgvLKqznnqRKpiY9Bx3h9MSwAaoQZCwLYxmcIR5JRFiuY7P0
   g=;
IronPort-SDR: 4BzOjkay+moLJk7WGTfe4ObMn8AIZpyPc6rKB359DbHYUgpEba3pbTLUnsHq5xM5jY+Pc+TjzX
 a602hAmL4CUg==
IronPort-PHdr: =?us-ascii?q?A9a23=3AO+CMnh18Un1HpfnusmDOOgQyDhhOgF0UFjAc5?=
 =?us-ascii?q?pdvsb9SaKPrp82kYBaFo68wxwaRBc2bs6sC17CP9fi4GCQp2tWoiDg6aptCV?=
 =?us-ascii?q?hsI2409vjcLJ4q7M3D9N+PgdCcgHc5PBxdP9nC/NlVJSo6lPwWB6nK94iQPF?=
 =?us-ascii?q?RrhKAF7Ovr6GpLIj8Swyuu+54Dfbx9HiTajf79+Ngu6oAXeusULnYduNrs6x?=
 =?us-ascii?q?h/VrndVYehbyn1kKU+Jkxrg+su8+YNo/jhNtf4m68NOS7jxcb4iTbxfAjQmM?=
 =?us-ascii?q?mQ169PuuBLeUwaB5WYSX3sPnBZQDAfL8B/1XpHqsivnreV9wzWVPdf3Tb8vR?=
 =?us-ascii?q?zuv6bpgRQLyhycGMz4593zXitB1galGrh+tuwBzzojJa4yTKfFwfL7SfckCS?=
 =?us-ascii?q?GRBQMhfSjBBDI2/YYsOE+UOMv1VoJPhq1sMtxayGRWgCP3pxzRVhnH2x6o60?=
 =?us-ascii?q?+E5HA3IwgIgHtYOsHDPrNXyMqceSf2+wbTPzTrYcvha3Tny5pXNfhwvvPqBW?=
 =?us-ascii?q?qhwcc3KxkYxDQPFkk+cqZDkPzOR0uQNqG+b7+x7WO20kWEotRpxozi0xscwl?=
 =?us-ascii?q?IbJg5kVxkrY+iV+xYY4PNu1Q1N0btC4CpVfrT2aN5doTcM4RWFloCg0x6Ebt?=
 =?us-ascii?q?JO4YiQHzJQpyh7DZvGIb4WE/xbuWPueLDp7hX9oeLKxiwuu/Eavy+DxWce63?=
 =?us-ascii?q?UhEoCdHj9TBqHAD2gDV58OaSfV95l+s1SuT2wzJ5OxJI1o4mbffJpMv2LI9l?=
 =?us-ascii?q?5oevVzeEiPqgkn7g7Gael869uS26unreLfrq5yaOoRpkA/xKL4ulda6AekgN?=
 =?us-ascii?q?wgOWHWU9vqk2b34+E35XK1KjvorkqnFqJzaJdoUpqq+AwJNzIYs8Ra/DzGj0?=
 =?us-ascii?q?NQDmXQKKFZIdA6ag4TzPVHBOur0AuyljFuyizdqx+vGPqH/DZXINXjPiqvuf?=
 =?us-ascii?q?bF460JEyQozy85Q545MB70cPP7/QEH8ud7CAhMkNwG5zfzrBdR9248GXGKAG?=
 =?us-ascii?q?K6ZMKfcsV+S4eIvJvGBZJUSuDnmNfcl/eLugWUlmV8ceamp2YAXaHe+Hvl9O?=
 =?us-ascii?q?EqWe2TjgswBEGcRogoxUunqiEaYXTFPYHayWrow5isnB4K+EYfDWoetjaSc3?=
 =?us-ascii?q?CegBJ1WfnlKCk2XEXj2bYWEQOwBaCaTIs96jjwETqKtRJE91RGyqQ/60KBrI?=
 =?us-ascii?q?fbT+i0d5trf040/+vbJjVQv7jFuFOyZ0nqRVCd5gn8VXHk926U16Rhg0U2bl?=
 =?us-ascii?q?LVjjuZDPdhS/O9SFAomKYPHied9DoahdBjGe4LDdFeiRs6hB3V5ZNU7i58zW?=
 =?us-ascii?q?Ac3U4G4iRrOxTbsH74Rk6eMArQ++6/HzmPtKsNmjX3B0f9y3BEdXsJTODj+1?=
 =?us-ascii?q?eZE/A/JCtuR+3g=3D?=
IronPort-Data: =?us-ascii?q?A9a23=3AZBcuVag1/b8Dgol3+R/7UIHSX161SBIKZh0uj?=
 =?us-ascii?q?C45NGQN5FlHY01jehtvWDqDO/6LZDPwe9hyPNi3808Pv56BxoRhSQZory1mF?=
 =?us-ascii?q?H9jpJueD7x1DKtQ0wB+jCH7ockOA/w2MrEsF+hpCC+MzvuRGuK59yMkjPvUH?=
 =?us-ascii?q?uOU5NPsY0ideyc1EE/Ntjo+w4bVsqYw6TSIK1vlVeHa+qUzC3f5s9JACV/43?=
 =?us-ascii?q?orYwP9ZUFUejxtD1rA2TagjUFYzDBD5BrpHTU26ByOQroW5goeHq+j/ILGRp?=
 =?us-ascii?q?gs1/j8zA9Ojl62qIxxSG/jUNE6Eg3dNSrO+jx1Z4Cc1187XNtJFMQEM1HPQz?=
 =?us-ascii?q?os3loglWZ+YEG/FOoXWn+4QSQUeDyB6ObZB/pfNKHWkoNePwkjdNXDrxp2CC?=
 =?us-ascii?q?WlqYdNDoL8nXT8mGfswbWplggq4r/+t2qr+V/JhnN8LKMjwIJhZt2180CqfB?=
 =?us-ascii?q?vEjKa0v6Y2iCcRwhW923Z8IRKeFIZREAQeDpS/oO3VnUmr7wrpk9AtwukTCT?=
 =?us-ascii?q?g=3D=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Ayo6ZX67px4MgGyNRhwPXwROBI+orL9Y04l?=
 =?us-ascii?q?Q7vn2ZFiY5TiXIraqTdaogviMc0AxhJk3I6urwSZVoIEmsgaKdhLN8AV7MZn?=
 =?us-ascii?q?idhILFFvAE0WKm+UyeJ8SczJ8r6U4DSdkCNDSYNzET4qiKg3jbYrNQpOVr6J?=
 =?us-ascii?q?rJuQ6d9QYQcegDUdAX0+4TMHfjLqQCfng8OXNPLuvl2iMonUvHRZ0iVLXzOp?=
 =?us-ascii?q?BJZZmBm/T70LbdJTIWDR8u7weDyRuu9b7BChCdmiwTVjteqI1Sv1Qsx2bCh5?=
 =?us-ascii?q?mLgrWe8FvxxmXT55NZlJ/K0d1YHvGBjcATN3HFlhuoTJ4JYczbgBkF5MWUrH?=
 =?us-ascii?q?o6mtjFpBkte+5p7WnKQ22zqRzxnyH9zTcV7WP4w1Pwuwq7nSXAfkNgNyN9v/?=
 =?us-ascii?q?MfTvKZ0TtlgDhE6tMP44tNjesQMfvC9B6NqOQgGSsazHZc6kBS4dL7tEYvGr?=
 =?us-ascii?q?f2XoUh4bD3zHklWKvoVBiKm7zPL9MeRv00xMwmMG9yPEqp/lWG/rSXLzkO91?=
 =?us-ascii?q?G9Mwo/Utr86UkloJlW9Tps+PAi?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DGCAAs9O5h/0HBJQpaHQEBPAEFBQE?=
 =?us-ascii?q?CAQkBFQmBU4EfGwIBgWeBTpJuoTALAQEBAQEBAQEBCAESLwQBAYhiJjgTAQI?=
 =?us-ascii?q?EAQEBEgEBBgEBAQEBBgQBgRuFaQyCNSKEH14BDAlrJgEEG4J9gg6uQoEzGgJ?=
 =?us-ascii?q?lhGqFE4E4AgEBAYFjhUSCf4Zajz8EkTaBD4EslCOMbqBQBwODRZ9EMBWWQwO?=
 =?us-ascii?q?RM4VnkGAgphoCBAIEBQIWgXiBfnCDOlAXApx+gSwCBgsBAQMJjyqBEAEB?=
X-IPAS-Result: =?us-ascii?q?A2DGCAAs9O5h/0HBJQpaHQEBPAEFBQECAQkBFQmBU4EfG?=
 =?us-ascii?q?wIBgWeBTpJuoTALAQEBAQEBAQEBCAESLwQBAYhiJjgTAQIEAQEBEgEBBgEBA?=
 =?us-ascii?q?QEBBgQBgRuFaQyCNSKEH14BDAlrJgEEG4J9gg6uQoEzGgJlhGqFE4E4AgEBA?=
 =?us-ascii?q?YFjhUSCf4Zajz8EkTaBD4EslCOMbqBQBwODRZ9EMBWWQwORM4VnkGAgphoCB?=
 =?us-ascii?q?AIEBQIWgXiBfnCDOlAXApx+gSwCBgsBAQMJjyqBEAEB?=
X-IronPort-AV: E=Sophos;i="5.88,311,1635206400";
   d="scan'208,217";a="446321846"
IronPort-SDR: 1IHQpP+vBUu75abLwKehXCYNSffalFVYsZLd2ZtOEQfqD8iGG9XT08T0IontyvE7mAnkcEq1YQ
 ogHgxN4kkfWA==
X-IronPort-AV: E=Sophos;i="5.88,311,1635206400";
   d="scan'208,217";a="50933210"
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N310 LO Offset tuning
Thread-Index: AdgRU1sVSlsamyryRtOZhTYBsL8zlQ==
Date: Mon, 24 Jan 2022 18:51:40 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.42.226.78]
MIME-Version: 1.0
Message-ID: <164305030384.11266.16739764613533549577@mm2.emwd.com>
Message-ID-Hash: MCPEQTKK5JVMCK6VVGVU3BKZNO3HLMZT
X-Message-ID-Hash: MCPEQTKK5JVMCK6VVGVU3BKZNO3HLMZT
X-MailFrom: robert.tillson@baesystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N310 LO Offset tuning
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MCPEQTKK5JVMCK6VVGVU3BKZNO3HLMZT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Tillson, Bob (US) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Tillson, Bob (US)" <robert.tillson@baesystems.com>
Content-Type: multipart/mixed; boundary="===============5129810029605166738=="

--===============5129810029605166738==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_fd1d1a02386b4793812b7a92e9109b6abaesystemscom_"

--_000_fd1d1a02386b4793812b7a92e9109b6abaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Is LO offset tuning supported by the N310?

Using UHD 3.14.1.1 and with rx samples to file, I noticed the following out=
put:

Setting RX Freq: 350.000000 MHz...
Setting RX LO Offset: 30.000000 MHz...
Actual RX Freq: 350.000000 MHz...

Using other values for LO Offset does not change Actual RX Freq either...

Thanks,


--_000_fd1d1a02386b4793812b7a92e9109b6abaesystemscom_
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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
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
<p class=3D"MsoNormal">Is LO offset tuning supported by the N310?<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Using UHD 3.14.1.1 and with rx samples to file, I no=
ticed the following output:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">Setting RX Freq: 350.0000=
00 MHz...<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">Setting RX LO Offset: 30.=
000000 MHz...<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">Actual RX Freq: 350.00000=
0 MHz...<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Using other values for LO Offset does not change Act=
ual RX Freq either&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_fd1d1a02386b4793812b7a92e9109b6abaesystemscom_--

--===============5129810029605166738==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5129810029605166738==--
