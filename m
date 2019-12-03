Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 719F511048B
	for <lists+usrp-users@lfdr.de>; Tue,  3 Dec 2019 19:54:28 +0100 (CET)
Received: from [::1] (port=47430 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1icDJX-00081y-D7; Tue, 03 Dec 2019 13:54:23 -0500
Received: from mail-oln040092005091.outbound.protection.outlook.com
 ([40.92.5.91]:32776 helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <e070832@hotmail.com>) id 1icDJU-0007yW-0V
 for usrp-users@lists.ettus.com; Tue, 03 Dec 2019 13:54:20 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j4H/mpZrRB2CAEIqr51ulrW8IARCV+taJ3Cc/qf0cJclLtaCcqPppKF22GdgFaeMEoF5A2fbO3p4hhJ/Jq9PgZVWQe/SXBZImtU8n943veIPjGwNhhLvYdJXEwOlCgTYeXZRFr+XFzdMbYF/DMey9Y+B1iGE16uqEDGJiOgspFlcz66iMQC7rQ326I5rweBCVQC5Gx/8TvMyVsdUcVu0rvy0QoD3KW2+dfc4xaMH9uDDpEz55IROAX1Ul+/+mE570MZjg//gbAXdrHLXK36VXL1oUHp8Hvre1zswomk2pTL/UHZ/Y0ZY1QZhbaueIWJ9+Z5qDli3ocXmUFGGTLzIww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TirdxnU5ACHH0KCCKIaNgd9z5Hc5l/exaDgpwd/GMrw=;
 b=ndu6hH9NjtLilKImh0J83rD+5dvgYwvKiP1yh2La9cAdvqqEJir5C/Mvm3q7cLdgHzVIPp5DYbPBA9sto7yLAFVFvGFWJI6GaGhgWmdya7JT1BVxrqPzAcWQ4fvj4bAnIqfLM/ZfTIueUufdoZwJGOdLkIYjAqVOGJih36LhlnMayBAvpZbLC/4H5UEbUSIyNNs6ICtGvr3JQ69sReI/89E/QSNb6QYP/rHjHw5um7dgNE6iS8pmcU1jrDAoxFPBpLvVBdbb0oGhufjFCzHBRZEt+oinc2Tv847fup28dawD9f7ojpiLj1h058ApYBQMxbp0xITr22oMj6xN1D+VJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TirdxnU5ACHH0KCCKIaNgd9z5Hc5l/exaDgpwd/GMrw=;
 b=UZKV3ebxAV4DYPLQdu8bTsmfm/Zb1u959W7/eRVDEBBIo+RrX2woru0s8QGIbG+T5i+iB62xiDkeadCzymvsUZx+4wX5B3HyXsY110n6JuhA6ba45XO5PBSU+Bp3mih0FLNMxGEYVu+GUnRNaYCXshk1vpzgkcGHjS3KEYTRmXYSmWhCB5P0mun/wPJj/+ufveigSvRmTr/gv6ZZ64FC4T81Mnk+AJb1qxaO+zlLziPi4H0330T1a5NX9IgkVLFzgI3fScreVMnqi+TPgYZcDqOsW8tyzJtBpL7hI1E41m12AVQ9lTba9m+VxKIgOfoKPVw95VcIuDDpA0bwQZHG7Q==
Received: from CY1NAM02FT005.eop-nam02.prod.protection.outlook.com
 (10.152.74.51) by CY1NAM02HT258.eop-nam02.prod.protection.outlook.com
 (10.152.74.233) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.17; Tue, 3 Dec
 2019 18:53:37 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com (10.152.74.56) by
 CY1NAM02FT005.mail.protection.outlook.com (10.152.74.117) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17 via Frontend Transport; Tue, 3 Dec 2019 18:53:37 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::6024:225f:b6e0:1c49]) by BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::6024:225f:b6e0:1c49%6]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 18:53:37 +0000
To: "Lindstedt, Ralf" <ralf.lindstedt@hhi.fraunhofer.de>, Brian Padalino
 <bpadalino@gmail.com>
Thread-Topic: [USRP-users] IQ-sample with a magnitude larger than 1.0
Thread-Index: AdWgpHZDFeuoUBwwRhSjhCA/Vo76hgAB53iAAlbBdik=
Date: Tue, 3 Dec 2019 18:53:36 +0000
Message-ID: <BN6PR19MB16353307DC5C994FC836EB37A4420@BN6PR19MB1635.namprd19.prod.outlook.com>
References: <D7790F43D25BB04383227944C1AC1891010C0FCB4E@MXSRV2.fe.hhi.de>,
 <CAEXYVK5bF4PXkRcAbY5NAJu80xZxR0uak2S89vYRO1SaE28ECA@mail.gmail.com>
In-Reply-To: <CAEXYVK5bF4PXkRcAbY5NAJu80xZxR0uak2S89vYRO1SaE28ECA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:E10D33969569AF8F77FFF466AB5D783D6C8B4CBA594F9E882A1724CC3ED434EA;
 UpperCasedChecksum:E748FAE9771B6F50D27C30F18BA8CCC1F2B339FF4D0922EB0F5454A8AE788CCE;
 SizeAsReceived:7134; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [lxhzYVsYRYYWK7jgubPMt4xJcAOoEUfy]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: b98b4b55-b097-44f1-0cca-08d778221acc
x-ms-traffictypediagnostic: CY1NAM02HT258:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NX4xgmfMjxkm1UYZHqnXzFSWoEzAIuoH52KqlAkF0tSdj6Frshw892VK+WbnFFaAt8xbISpSKfg3stgc4RoeBLrJfzvzUtvc8UdaN7jOWVraE79JXcmFFvEYGXeeBpWDhfBSDq3blLrZihR7wfslZBMQwIJgcZL+7fUpktZb1EOdi4bHgjpmIRFd+XTEtp8+
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: b98b4b55-b097-44f1-0cca-08d778221acc
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 18:53:36.8836 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1NAM02HT258
Subject: Re: [USRP-users] IQ-sample with a magnitude larger than 1.0
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jeff S via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeff S <e070832@hotmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9033611505409290582=="
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

--===============9033611505409290582==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR19MB16353307DC5C994FC836EB37A4420BN6PR19MB1635namp_"

--_000_BN6PR19MB16353307DC5C994FC836EB37A4420BN6PR19MB1635namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm fairly new to GNURadio, so I may have (most likely) missed it, but I ha=
d the same problem that was fixed by multiplying the complex number going i=
nto my sink by 0.25 to get my QPSK modulation to work on my X310.  Since do=
ing that, I have found references to over driving the TX on this list.  Is =
the [1, -1] limit an Ettus device limit, or is it a GNURadio limit?  And wh=
ere is that documented (so I can maybe find what else I'm missing)?

Also, it seems like the consensus is that going [1,-1] is still too much, a=
nd going less than 0.707 may be better.

Thanks and regards.
Jeff


________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Brian Pa=
dalino via USRP-users <usrp-users@lists.ettus.com>
Sent: Thursday, November 21, 2019 2:41 PM
To: Lindstedt, Ralf <ralf.lindstedt@hhi.fraunhofer.de>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] IQ-sample with a magnitude larger than 1.0

On Thu, Nov 21, 2019 at 2:49 PM Lindstedt, Ralf via USRP-users <usrp-users@=
lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:

We are transmitting samples in bursts of 15360 samples(1ms @ 15.36Msamples/=
s). When the magnitudes of the transmitted samples are mostly larger than 1=
.0, the received signal, especially the beginning is distorted.

Definitely not recommended.




My assumptions is that this distortion happens on the transmitter side. Is =
this correct, and if what exactly happens with the data?

Clipping/saturation in the Ettus radios, I believe - but it should be noted=
 that you should be able to transmit > 1.0 magnitude so long as either I or=
 Q being sent isn't larger than 1.0 - but I still don't recommend that eith=
er.

Which Ettus product and why are you transmitting > 1.0, if you don't mind m=
e asking?

Brian

--_000_BN6PR19MB16353307DC5C994FC836EB37A4420BN6PR19MB1635namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I'm fairly new to GNURadio, so I may have (most likely) missed it, but I ha=
d the same problem that was fixed by multiplying the complex number going i=
nto my sink by 0.25 to get my QPSK modulation to work on my X310.&nbsp; Sin=
ce doing that, I have found references
 to over driving the TX on this list.&nbsp; Is the [1, -1] limit an Ettus d=
evice limit, or is it a GNURadio limit?&nbsp; And where is that documented =
(so I can maybe find what else I'm missing)?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Also, it seems like the consensus is that going [1,-1] is still too much, a=
nd going less than 0.707 may be better.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Thanks and regards.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature"><br>
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp=
-users-bounces@lists.ettus.com&gt; on behalf of Brian Padalino via USRP-use=
rs &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Thursday, November 21, 2019 2:41 PM<br>
<b>To:</b> Lindstedt, Ralf &lt;ralf.lindstedt@hhi.fraunhofer.de&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] IQ-sample with a magnitude larger than 1.0=
</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">On Thu, Nov 21, 2019 at 2:49 PM Lindstedt, Ralf via USRP-u=
sers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ett=
us.com</a>&gt; wrote:<br>
</div>
<div class=3D"x_gmail_quote">
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div lang=3D"DE">
<div class=3D"x_gmail-m_4689399309233509282WordSection1">
<p class=3D"x_MsoNormal"><span lang=3D"EN-GB">We are transmitting samples i=
n bursts of 15360 samples(1ms @ 15.36Msamples/s). When the magnitudes of th=
e transmitted samples are mostly larger than 1.0, the received signal, espe=
cially the beginning is distorted.</span></p>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>Definitely not recommended.</div>
<div>&nbsp;</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div lang=3D"DE">
<div class=3D"x_gmail-m_4689399309233509282WordSection1">
<p class=3D"x_MsoNormal"><span lang=3D"EN-GB"><u></u><u></u></span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-GB"><u></u>&nbsp;<u></u></span></=
p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-GB">My assumptions is that this d=
istortion happens on the transmitter side. Is this correct, and if what exa=
ctly happens with the data?</span></p>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>Clipping/saturation in the Ettus radios, I believe - but it should be =
noted that you should be able to transmit &gt; 1.0 magnitude so long as eit=
her I or Q being sent isn't larger than 1.0 - but I still don't recommend t=
hat either.</div>
<div><br>
</div>
<div>Which Ettus product and why are you transmitting &gt; 1.0, if you don'=
t mind me asking?</div>
<div><br>
</div>
<div>Brian</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BN6PR19MB16353307DC5C994FC836EB37A4420BN6PR19MB1635namp_--


--===============9033611505409290582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9033611505409290582==--

