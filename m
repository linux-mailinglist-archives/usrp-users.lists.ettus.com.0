Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7AF446576
	for <lists+usrp-users@lfdr.de>; Fri,  5 Nov 2021 16:08:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4AD7338409E
	for <lists+usrp-users@lfdr.de>; Fri,  5 Nov 2021 11:08:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=campus.tu-berlin.de header.i=@campus.tu-berlin.de header.b="GIGPeaGC";
	dkim-atps=neutral
Received: from mailrelay.tu-berlin.de (mailrelay.tu-berlin.de [130.149.7.70])
	by mm2.emwd.com (Postfix) with ESMTPS id 32122383F8A
	for <usrp-users@lists.ettus.com>; Fri,  5 Nov 2021 11:07:42 -0400 (EDT)
Received: from SPMA-03.tubit.win.tu-berlin.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 5A4986E2E7_18548BCB;
	Fri,  5 Nov 2021 15:07:40 +0000 (GMT)
Received: from mail.tu-berlin.de (mail.tu-berlin.de [141.23.12.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "exchange.tu-berlin.de", Issuer "DFN-Verein Global Issuing CA" (verified OK))
	by SPMA-03.tubit.win.tu-berlin.de (Sophos Email Appliance) with ESMTPS id E40316E2F8_18548BBF;
	Fri,  5 Nov 2021 15:07:39 +0000 (GMT)
Received: from ex-03.svc.tu-berlin.de (10.150.18.7) by ex-04.svc.tu-berlin.de
 (10.150.18.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.9; Fri, 5 Nov 2021
 16:07:39 +0100
Received: from ex-03.svc.tu-berlin.de ([fe80::90c2:55f5:8c3d:e95d]) by
 ex-03.svc.tu-berlin.de ([fe80::90c2:55f5:8c3d:e95d%7]) with mapi id
 15.02.0986.009; Fri, 5 Nov 2021 16:07:39 +0100
From: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
To: Rob Kossler <rkossler@nd.edu>
Thread-Topic: [USRP-users] Tx RF chain still on after transmission?
Thread-Index: AQHX0L20B2lDYzh6x0mK2GIQc7LYM6vzeVkAgAARJhQ=
Date: Fri, 5 Nov 2021 15:07:39 +0000
Message-ID: <bfab544a268e45fab593644856b6bf2f@campus.tu-berlin.de>
References: <30510aa4f1e04639b856128d20a14a3b@campus.tu-berlin.de>,<CAB__hTSR+EizJUFDvsCeQQNsNQFnMWoa8L2zx9zCQ4EJDbA=9w@mail.gmail.com>
In-Reply-To: <CAB__hTSR+EizJUFDvsCeQQNsNQFnMWoa8L2zx9zCQ4EJDbA=9w@mail.gmail.com>
Accept-Language: en-CA, de-DE, en-US
Content-Language: en-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.174.67.81]
MIME-Version: 1.0
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=campus.tu-berlin.de; h=from:to:cc:subject:date:message-id:references:in-reply-to:content-type:mime-version; s=dkim-tub; bh=6Tc7uEAupK0qyiLpZMFe1+mdUF4F2fBsmIH6KjIHcCs=; b=GIGPeaGCx0as4JEQca5knIgQA+R94bTFNvogMGtF3Hn48AHdGD+ZgHyAJ1UQ8/6f+wTrZYrPiIMex/bqW2IpT0W8yBtoapYGAA7XXcYgI3Bmxi7BCc7/qreSQ/jYu+6YA3lAwdUPIggJHNjq04QxP8RgnGE8+78wqu0eqvzlnhs=
Message-ID-Hash: GNMG2QNTPP34O2T3V5Z5OJBDRNFZNDAY
X-Message-ID-Hash: GNMG2QNTPP34O2T3V5Z5OJBDRNFZNDAY
X-MailFrom: k.chang@campus.tu-berlin.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Tx RF chain still on after transmission?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GNMG2QNTPP34O2T3V5Z5OJBDRNFZNDAY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7735195467395341271=="

--===============7735195467395341271==
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_bfab544a268e45fab593644856b6bf2fcampustuberlinde_"

--_000_bfab544a268e45fab593644856b6bf2fcampustuberlinde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear Rob,


this is actually a good idea! I mean the signal we measured is an overlap o=
f environmental noise and signal of interest (SOI). If the SOI is zero I th=
ink it ensures that we have the noise. Thanks Rob


Qasim


________________________________
From: Rob Kossler <rkossler@nd.edu>
Sent: November 4, 2021 5:05:34 PM
To: Chang, Kaixin
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Tx RF chain still on after transmission?

Hi Qasim,
What if you continue to transmit but with all zeros in I/Q?  Does this prod=
uce the result you need?
Rob

On Wed, Nov 3, 2021 at 10:25 AM Chang, Kaixin <k.chang@campus.tu-berlin.de<=
mailto:k.chang@campus.tu-berlin.de>> wrote:
Dear all,

I have a questuon regarding the TX chain. I wanna measure some data transmi=
tted from TX antenna to Rx antenna and without any stop measure the noise. =
So for example I configure the program to send 1000samples and receive 1500=
samples (so 500 noise samples). My question is, when the transmitter finish=
es its job, is the RF TX chain still on? Are the ADC or amplifier turnt off=
? Becaue I want the measured noise the same as while transmission.

Sincerely

Qasim
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_bfab544a268e45fab593644856b6bf2fcampustuberlinde_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<p>Dear Rob,</p>
<p><br>
</p>
<p>this is actually a good idea!&nbsp;<span>I mean the signal we measured i=
s an overlap of environmental noise and signal of interest (SOI). If the SO=
I is zero I think it ensures that we have the noise. Thanks Rob</span></p>
<p><span><br>
</span></p>
<p>Qasim</p>
<p><br>
</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Rob Kossler &lt;rkoss=
ler@nd.edu&gt;<br>
<b>Sent:</b> November 4, 2021 5:05:34 PM<br>
<b>To:</b> Chang, Kaixin<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Tx RF chain still on after transmission?</=
font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Qasim,
<div>What if you continue to transmit but with all zeros in I/Q?&nbsp; Does=
 this produce the result you need?</div>
<div>Rob</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 3, 2021 at 10:25 AM Chang=
, Kaixin &lt;<a href=3D"mailto:k.chang@campus.tu-berlin.de">k.chang@campus.=
tu-berlin.de</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left:1px solid rgb(204,204,204); padding-left:1ex">
<div>Dear all,<br>
<br>
I have a questuon regarding the TX chain. I wanna measure some data transmi=
tted from TX antenna to Rx antenna and without any stop measure the noise. =
So for example I configure the program to send 1000samples and receive 1500=
samples (so 500 noise samples).
 My question is, when the transmitter finishes its job, is the RF TX chain =
still on? Are the ADC or amplifier turnt off? Becaue I want the measured no=
ise the same as while transmission.<br>
<br>
Sincerely<br>
<br>
Qasim </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_bfab544a268e45fab593644856b6bf2fcampustuberlinde_--

--===============7735195467395341271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7735195467395341271==--
