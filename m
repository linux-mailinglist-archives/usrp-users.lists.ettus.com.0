Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D9241E0B6
	for <lists+usrp-users@lfdr.de>; Thu, 30 Sep 2021 20:14:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3191C384502
	for <lists+usrp-users@lfdr.de>; Thu, 30 Sep 2021 14:14:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=OroliaDS.onmicrosoft.com header.i=@OroliaDS.onmicrosoft.com header.b="CF7Ck5Cs";
	dkim-atps=neutral
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0085.outbound.protection.office365.us [23.103.209.85])
	by mm2.emwd.com (Postfix) with ESMTPS id 6BE6C38409E
	for <usrp-users@lists.ettus.com>; Thu, 30 Sep 2021 14:13:26 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=CqVg+DPCjjLqTOQsmGuQUZC63EvvnCib4SPhQ+obVODS9L5t1iW12u0M+9ZqnmsaDLhwXvQepPDh7dlcL7WhWUtAyuB+fChPXzT3iFIDhWZQePv2yq1csu9X3nMyl5LsV1bzBQ45bhv+CSvVc4tIc3lSZUIOlvi1ZMOlTmVwI+0ZHM4eZwbFvj+dy1qNV0vOygjMVwW5HdX484NXaVwQ46knODVtX0C4EuXFAGvE3bmgXJK+J7pq/AWbT+wUyocrD3sVpjLSQKIhLMOQe6KG15rlWFW1KAKcVMghfx/NEeedPm078k/DX1eX4kfPqWqXQH3ZJqT9dHLSS43/g2T3Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=kG6/dvPqDY7z97b1RVOSer+O6YJtF+WqYVWTKnsmOx8=;
 b=t94jl0lMkYM7GpI4TMTB14phQxUg1LXlmvOUXNutCwRPdKkNG6ILXKbOPjeVgqfVrOMjojZl7qGmKaysdYOahV7CsxOiZOoUpmZTR72N2Jh0YHITmA8jpTehwXDHycMY/ZivxkvI2u42yNHXgTUyh7uo9j+RdLhVvm+1K69KvI0vugLVhSVE365K1OgHbFJYL7iM0kSSMMK7e/CdmhB3J5lvJh5+WLjxWcgiAYiHA27sfCd7MrYx9C27FcyylkFx8Yzn/3AgENnQLEvafTVMHqCTS/m9dzdUU5XUlobhxqP+OYniQhBy9E2MWBrcuLo6/G0y7Oe6o7bf4LjkwPJFuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oroliads.com; dmarc=pass action=none header.from=oroliads.com;
 dkim=pass header.d=oroliads.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=OroliaDS.onmicrosoft.com; s=selector1-OroliaDS-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kG6/dvPqDY7z97b1RVOSer+O6YJtF+WqYVWTKnsmOx8=;
 b=CF7Ck5Csq98PdqiiXBpv/P/8jq5bgxQLVNWqlZDFfZLb2NVT5kntlmkfm1CG38Gjhx3c6g1F6ET7o+lkNvWLd218ukQ/e4tQbmV7QW0cx3+bMLFF1HuiHvB5MC8+gnKS6KN8+k/0M88NQwN0fG/qs4boYCc5Y7kCkOVapC0ap4g=
Received: from CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM (52.145.47.208) by
 CY1P110MB0167.NAMP110.PROD.OUTLOOK.COM (23.103.25.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4544.18; Thu, 30 Sep 2021 18:13:22 +0000
Received: from CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM
 ([fe80::7daa:8e7a:6611:5dd]) by CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM
 ([fe80::7daa:8e7a:6611:5dd%7]) with mapi id 15.20.4544.023; Thu, 30 Sep 2021
 18:13:21 +0000
From: "Adam Bader (Proxy)" <adam.bader@oroliads.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Amount of Radio Buffer in 4.1
Thread-Index: AQHXtg7h3DMaWANdGEidMTxdHbEtGKu8yA0AgAAZUZg=
Date: Thu, 30 Sep 2021 18:13:21 +0000
Message-ID: 
 <CY1P110MB0821105DB4342C7D8C5A4AFCE3AA9@CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM>
References: 
 <CY1P110MB08211A4EDC3FF3B5A0C29EC8E3AA9@CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM>
 <db842876-79a2-4807-fdf3-d86d03f2e29f@gmail.com>
In-Reply-To: <db842876-79a2-4807-fdf3-d86d03f2e29f@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 5d29ff4a-aef7-a79c-4f7f-f64129813178
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=oroliads.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d940d134-82d4-4fb1-6192-08d9843dfccd
x-ms-traffictypediagnostic: CY1P110MB0167:
x-microsoft-antispam-prvs: 
 <CY1P110MB0167B25B08A3E6CE9A4B117BE3AA9@CY1P110MB0167.NAMP110.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Z+cgH+VP/MVV9zxS685U5wft5EZ/zXZe341o5U3elQ8iiXC6R6l+GHUsvLXBKud6tb9CItO8f5qzkZwEs08lmcqrADlAqS2xKHYl40fa9/sRJHQn5R+HJ2XtA5xXQVFWmXLfiMxKPSDNMPXxrGsvPCtE1ChZRDdWXvevHglXksGskD4qkASnRl1VwkIVlDfW5UTM+wT6XKpLohjIJ35Tat77MIR142rx8aUfoyMtZHsvphCPE8HNHgL1jTQzucG9Bo32pVFWIwzHH3MPO9wnhpG9Ods4tsFlLr76UxWql/ySQw4bxmGWKIjZvz5igiPzm2ENLgAw0R55wi8WfDmgEu0lFeGspm1EzaW+CI1OjslTzQlnM/N2aeV2egdYpMlNO7PIt90EjGxK+6cO/Hs625roPJsU/VOoBt8zXj55mLZvfLD1KgJSiTtPZQ8ENBW2iAN9Jn5xxgDkaVLxMhaU10CZsdF/TJu7py+02kFNXt5m39ogl9eG079aP6SCuf+e5o7qE2jXZj1t5J1wkseVmNG2WlvMOnLmx7kFaPzTx+F7j6uaZVLti8nw2SMk4QStUyjFi1PjkJHu18tPa6qfTgz7qX2hhdSmvBEUsZozaaeykD5cALge2Kct4A8CM1cB
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(38070700005)(5660300002)(86362001)(110136005)(66446008)(2906002)(76116006)(508600001)(53546011)(33656002)(8676002)(7696005)(83380400001)(52536014)(66946007)(66476007)(66556008)(64756008)(316002)(19627405001)(186003)(26005)(6506007)(122000001)(8936002)(71200400001)(38100700002)(55016002)(9686003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 Tr6IK1gZrV73nDtu9layaEKk3llGxsZhRXZ9wIcsJhoY8YHZ91gCI1IyZVxMgKyIyPJlqBsWzkT5xe5uU6VM72VoxsvmtEbqmg9camMgX5ptbe6Ln/a3VumoQf18MFfPvzSxupk6Xff2K0ZLOZrASw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: oroliads.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: d940d134-82d4-4fb1-6192-08d9843dfccd
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2021 18:13:21.7506
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2b24436f-9785-4281-92f6-d7ee04c9cf8f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1P110MB0167
Message-ID-Hash: DRBMXTJYP5NELGF7IO3BFPUPOXR7MF3S
X-Message-ID-Hash: DRBMXTJYP5NELGF7IO3BFPUPOXR7MF3S
X-MailFrom: adam.bader@oroliads.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Amount of Radio Buffer in 4.1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H2PKHPRLDDJPNMWBQDCOX27VVT7YHZH7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3615480106853907130=="

--===============3615480106853907130==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1P110MB0821105DB4342C7D8C5A4AFCE3AA9CY1P110MB0821NAMP_"

--_000_CY1P110MB0821105DB4342C7D8C5A4AFCE3AA9CY1P110MB0821NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Setting has_time_spec to false after the initial send shows no change in be=
havior


Adam Bader

Principal Software Engineer, Orolia Defense & Security

1610 SW Main St Suite 202

Ankeny, IA 50023

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Thursday, September 30, 2021 11:41 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: Amount of Radio Buffer in 4.1

CAUTION: External email to ODS


On 2021-09-30 11:21 a.m., Adam Bader (Proxy) wrote:
We are having issues trying to run our application with the current version=
 4 releases of UHD. We are running successfully on version 3.13. I've been =
trying to create a simplified test scenario using a single output on a N310=
 and continue to see underruns and time errors on version 4.1.

I'm using a modified benchmark_rate application trying to model our streami=
ng implementation. My testing has been on a system running Ubuntu 18.04. Th=
e computer has a 10Gb card connected directly to port sfp1 on the radio. Th=
e radio is running the default HG fpga image. MTU is set to 9000.

Data is transmitted at 62.5Msps in a continuous burst. Every packet is sent=
 with an up to date time_spec. Our application builds up and sends 1ms wort=
h of samples to the radio repeatedly (trying to pass the whole ms to send()=
 as well as break them up into max_num_samp chunks shows no change in timin=
g behavior). After resetting radio time to 0 the initial packet is time spe=
c'd to 1.8 seconds to prime the radio buffer. There is no rx stream involve=
d.

I had the sample application poll radio time in parallel with sending data =
to the radio. The radio time thread prints out the result from get_time_now=
 every 100ms. The transmission thread prints out the time_spec that was jus=
t transmitted once send returns. In 4.1 I can see streaming is effectively =
handling everything in 'real-time'. The radio times being printed line up i=
dentically with the time_spec that was just transmitted. Any delay in trans=
mission results in immediate underruns and time errors. This same test when=
 done with the 3.13 host library and another N310 using the 3.13 firmware s=
hows the sample just written being 150-200ms ahead of what the current radi=
o time is.

Is there anything that can be done to increase the amount of buffer availab=
le on the radio with the stock FPGA firmware? Is there something we need to=
 rethink in our streaming implementation in UHD4? Appreciate any insights.


Are you able to do continuous (not-timed) streaming at 62.5Msps in your cur=
rent configuration?



CAUTION: This email originated from outside of ODS. Do not click links or o=
pen attachments unless you recognize the sender and know the content is saf=
e.
_____________________________________
The information contained in this e-mail and any attachments from Orolia ma=
y contain confidential and/or proprietary information, and is intended only=
 for the named recipient to whom it was originally addressed. If you are no=
t the intended recipient, any disclosure, distribution, or copying of this =
e-mail or its attachments is strictly prohibited. If you have received this=
 e-mail in error, please notify the sender immediately by return e-mail and=
 permanently delete the e-mail and any attachments.

--_000_CY1P110MB0821105DB4342C7D8C5A4AFCE3AA9CY1P110MB0821NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Setting has_time_spec to false after the initial send shows no change in be=
havior</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<p style=3D"text-align: start; background-color: rgb(255, 255, 255); color:=
 rgb(33, 33, 33); font-size: 11pt; font-family: Calibri, sans-serif; margin=
: 0px;">
<b><span style=3D"margin: 0px; font-size: 10pt; font-family: Arial, sans-se=
rif, serif, EmojiFont; color: rgb(29, 55, 135);">Adam Bader</span></b></p>
<p style=3D"text-align: start; background-color: rgb(255, 255, 255); color:=
 rgb(33, 33, 33); font-size: 11pt; font-family: Calibri, sans-serif; margin=
: 0px;">
<span style=3D"margin: 0px; font-size: 10pt; font-family: Arial, sans-serif=
, serif, EmojiFont; color: rgb(127, 127, 127);">Principal Software&nbsp;Eng=
ineer, Orolia Defense &amp; Security</span></p>
<p style=3D"text-align: start; background-color: rgb(255, 255, 255); color:=
 rgb(33, 33, 33); font-size: 11pt; font-family: Calibri, sans-serif; margin=
: 0px;">
</p>
<p style=3D"text-align: start; background-color: rgb(255, 255, 255); color:=
 rgb(33, 33, 33); font-size: 11pt; font-family: Calibri, sans-serif; margin=
: 0px;">
<span style=3D"margin: 0px; font-size: 9pt; font-family: Arial, sans-serif,=
 serif, EmojiFont; color: gray;">1610 SW Main St Suite 202</span></p>
<p style=3D"text-align: start; background-color: rgb(255, 255, 255); color:=
 rgb(33, 33, 33); font-size: 11pt; font-family: Calibri, sans-serif; margin=
: 0px;">
<span style=3D"margin: 0px; font-size: 9pt; font-family: Arial, sans-serif,=
 serif, EmojiFont; color: gray;">Ankeny, IA 50023</span></p>
<br>
</div>
</div>
</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Thursday, September 30, 2021 11:41 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: Amount of Radio Buffer in 4.1</font>
<div>&nbsp;</div>
</div>
<div>
<table cellspacing=3D"0" cellpadding=3D"0" align=3D"left" width=3D"`&quot;1=
00%`&quot;" style=3D"background-color:blue">
<tbody>
<tr>
<td width=3D"`&quot;100%`&quot;" style=3D"width:100.0%"><span style=3D"colo=
r:#ffffff"><b>CAUTION:</b> External email to ODS</span></td>
</tr>
</tbody>
</table>
<br>
<br>
<div>
<div class=3D"x_moz-cite-prefix">On 2021-09-30 11:21 a.m., Adam Bader (Prox=
y) wrote:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<span style=3D"margin:0px; font-size:12pt; color:rgb(0,0,0); background-col=
or:rgb(255,255,255)">We are having issues trying to run our application wit=
h the current version 4 releases of UHD. We are running successfully on ver=
sion 3.13. I've been trying to create
 a simplified test scenario using a single output on a N310 and continue to=
 see underruns and time errors on version 4.1.</span>
<div style=3D"margin:0px; font-size:12pt; color:rgb(0,0,0); background-colo=
r:rgb(255,255,255)">
<br>
</div>
<div style=3D"margin:0px; font-size:12pt; color:rgb(0,0,0); background-colo=
r:rgb(255,255,255)">
I'm using a modified benchmark_rate application trying to model our streami=
ng implementation.<span>&nbsp;</span><span style=3D"margin:0px; background-=
color:rgb(255,255,255); display:inline!important; color:rgb(0,0,0)">My test=
ing has been on a system running Ubuntu
 18.04. The computer has a 10Gb card connected directly to port sfp1 on the=
 radio. The radio is running the default HG fpga image. MTU is set to 9000.=
</span></div>
<div style=3D"margin:0px; font-size:12pt; color:rgb(0,0,0); background-colo=
r:rgb(255,255,255)">
<br>
</div>
<div style=3D"margin:0px; font-size:12pt; color:rgb(0,0,0); background-colo=
r:rgb(255,255,255)">
Data is transmitted at 62.5Msps in a continuous burst. Every packet is sent=
 with an up to date time_spec. Our application builds up and sends 1ms wort=
h of samples to the radio repeatedly (trying to pass the whole ms to send()=
 as well as break them up into max_num_samp
 chunks shows no change in timing behavior). After resetting radio time to =
0 the initial packet is time spec'd to 1.8 seconds to prime the radio buffe=
r. There is no rx stream involved.</div>
<div style=3D"margin:0px; font-size:12pt; color:rgb(0,0,0); background-colo=
r:rgb(255,255,255)">
<br>
</div>
<div style=3D"margin:0px; font-size:12pt; color:rgb(0,0,0); background-colo=
r:rgb(255,255,255)">
I had the sample application poll radio time in parallel with sending data =
to the radio. The radio time thread prints out the result from get_time_now=
 every 100ms. The transmission thread prints out the time_spec that was jus=
t transmitted once send returns.
 In 4.1 I can see streaming is effectively handling everything in 'real-tim=
e'. The radio times being printed line up identically with the time_spec th=
at was just transmitted. Any delay in transmission results in immediate und=
erruns and time errors. This same
 test when done with the 3.13 host library and another N310 using the 3.13 =
firmware shows the sample just written being 150-200ms ahead of what the cu=
rrent radio time is.</div>
<div style=3D"margin:0px; font-size:12pt; color:rgb(0,0,0); background-colo=
r:rgb(255,255,255)">
<br>
</div>
<span style=3D"margin:0px; font-size:12pt; color:rgb(0,0,0); background-col=
or:rgb(255,255,255)">Is there anything that can be done to increase the amo=
unt of buffer available on the radio with the stock FPGA firmware? Is there=
 something we need to rethink in our
 streaming implementation in UHD4? Appreciate any insights.</span><br>
</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<br>
</div>
</blockquote>
<b>Are you able to do continuous (not-timed) streaming at 62.5Msps in your =
current configuration?<br>
<br>
<br>
</b></div>
<br>
<table cellspacing=3D"0" cellpadding=3D"0" align=3D"left" width=3D"`&quot;1=
00%`&quot;" style=3D"background-color:blue">
<tbody>
<tr>
<td width=3D"`&quot;100%`&quot;" style=3D"width:100.0%"><span style=3D"colo=
r:#ffffff"><b>CAUTION:</b> This email originated from outside of ODS. Do no=
t click links or open attachments unless you recognize the sender and know =
the content is safe.</span></td>
</tr>
</tbody>
</table>
</div>
<div style=3D"" font-size:9pt;=3D"" font-family:=3D"" ?Calibri?,sans-serif;=
??=3D"">_____________________________________<br>
The information contained in this e-mail and any attachments from Orolia ma=
y contain confidential and/or proprietary information, and is intended only=
 for the named recipient to whom it was originally addressed. If you are no=
t the intended recipient, any disclosure,
 distribution, or copying of this e-mail or its attachments is strictly pro=
hibited. If you have received this e-mail in error, please notify the sende=
r immediately by return e-mail and permanently delete the e-mail and any at=
tachments.
</div>
</body>
</html>

--_000_CY1P110MB0821105DB4342C7D8C5A4AFCE3AA9CY1P110MB0821NAMP_--

--===============3615480106853907130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3615480106853907130==--
