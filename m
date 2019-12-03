Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A358111B96
	for <lists+usrp-users@lfdr.de>; Tue,  3 Dec 2019 23:22:38 +0100 (CET)
Received: from [::1] (port=42704 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1icGZ1-0006U3-Li; Tue, 03 Dec 2019 17:22:35 -0500
Received: from mail-oln040092010107.outbound.protection.outlook.com
 ([40.92.10.107]:60022 helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <e070832@hotmail.com>) id 1icGYx-0006Ng-Vm
 for usrp-users@lists.ettus.com; Tue, 03 Dec 2019 17:22:32 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y0Lf8R/ehut/8xqb2HMQY/23oQUWygULlXJXp0h+PAY5J/B4VJr5KpjdRwdg5/17tBzVUZJFFsjAMaBR16dHETMS3U6J5gjt83lmAmcgyZ66v4JYsENbIawFSXqJQjUJWQW1k0YEDPJHPA62pC5ojtjopPnvydyeR+FI8SDSR9Q1ewuC/tIr16NZDvCgqGuU1zlP6nUq17Ab4zx8rH3SS2cu8Ui1v3Ojfo4sBUXLwHaGuznSpHq4xxKHkkOWvXYlp1PzvSlRCpsKLHyysodGICMkX1l3YMK2olGEFqdav8ulb86FDJf1mOZhDI2BQMAp9XtwkVW9msPG+1+HADosCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sd+RngSRG/1XdkOkQLUu43aVOEVbfCcqzgXvoMIyQME=;
 b=N/3UarZHeCfY2sqH6QWhozE6DqX1cifCRxBTTw4a3g4EaIPPhpKUf1vjIkslMz0pznDqkrxYu8sEzLsahFkaHFlCyV9+mFBFJ3doLgk7U6y5avcabp7+mkQ7eQesBUlnuAj+YG30X4pIDRhPEKLzpXVdoq1Anv+5AT1haW/4ynNDxFCrD1iqQ65zxnn/7f771HTjZl3gmg0XpJDfeYd4pxgdZuKDGxO+HPHNCcapx/VNfuj97RGp5s1nhDe4sTn9y9h+cqfILOFD5vkhA+QXNLYWMLrZnR/kUNlFKgdj/r0mfeapL7+WVZmklYawadB35cPM8hoIrqpImi06sgRL7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sd+RngSRG/1XdkOkQLUu43aVOEVbfCcqzgXvoMIyQME=;
 b=h5nsR0udCd0eLRl7J9U7nBfQv3DnmMpyK7flDNYpCptLyV4KibQqCno+asm6Qc9DzZ+XcmH2QimYhrYQjzgLlvdp0WN2vz6wuJgzFnrnxbSjB2lqcRoll4cY+MB2eJOG3RFltpe07IvBXL2tNvsFvcfHHAWZdv9avtw5QouflYSoEGjHnE2/BZC0sNBaBjWRNIzfhhIp99fGLSKB0grNzUOhLbBXQuWCssTG+ZsWgjUgKwyeFgbl05TSRWmWH7lNXMy+tHGSqIJ4CRsWj37muqFEcc1SqTmusetXeqM7vA3YFe4SwyzWebGh10aA0Q2JRPxwRAOAuQDwHk87MbDl5g==
Received: from BN3NAM04FT019.eop-NAM04.prod.protection.outlook.com
 (10.152.92.54) by BN3NAM04HT034.eop-NAM04.prod.protection.outlook.com
 (10.152.93.65) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.18; Tue, 3 Dec
 2019 22:21:49 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com (10.152.92.53) by
 BN3NAM04FT019.mail.protection.outlook.com (10.152.92.173) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18 via Frontend Transport; Tue, 3 Dec 2019 22:21:49 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::6024:225f:b6e0:1c49]) by BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::6024:225f:b6e0:1c49%6]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 22:21:49 +0000
To: Brian Padalino <bpadalino@gmail.com>
Thread-Topic: [USRP-users] IQ-sample with a magnitude larger than 1.0
Thread-Index: AdWgpHZDFeuoUBwwRhSjhCA/Vo76hgAB53iAAlbBdikABq8HAAABiPai
Date: Tue, 3 Dec 2019 22:21:49 +0000
Message-ID: <BN6PR19MB16350BBB7323FF3269271A1DA4420@BN6PR19MB1635.namprd19.prod.outlook.com>
References: <D7790F43D25BB04383227944C1AC1891010C0FCB4E@MXSRV2.fe.hhi.de>
 <CAEXYVK5bF4PXkRcAbY5NAJu80xZxR0uak2S89vYRO1SaE28ECA@mail.gmail.com>
 <BN6PR19MB16353307DC5C994FC836EB37A4420@BN6PR19MB1635.namprd19.prod.outlook.com>,
 <CAEXYVK5PS_hscpMwWogAj24PQu4oa-kxGNOi28JVhFh6yn_96Q@mail.gmail.com>
In-Reply-To: <CAEXYVK5PS_hscpMwWogAj24PQu4oa-kxGNOi28JVhFh6yn_96Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:8D8A329675C0D269F3585E2E581B8E8A22645B72E4EE88739E583BE97C052180;
 UpperCasedChecksum:32D8FCC4BF4A0DA6A2EA3F5A5933391BBC70E749349A68D4311D49146CB0B145;
 SizeAsReceived:7282; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [VIVHx/DKH1BvHymbsLkEZK5yBD8VbwzJ]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: a1c3b51e-f55b-4bce-ced8-08d7783f30aa
x-ms-traffictypediagnostic: BN3NAM04HT034:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6Qa6szLDLq5cxGzCk29rm2n189cUyOXUOpJw9Cn/SXN25VPn16BV5ZAQdJyqk/o9ntflA16pxCTXzXPTEmP/Uj38t+GZz+H3CQgqhnLUF0dt0ihPGjLOeizCmC+REYN6MtRIwWTtGaysrwjvPTsobc8tsIgSd/OEdpxYdJQKCRz5XqFpMyDgWej2OIDAdPfNC++ZEQAuQFFNlbE1E4ABqd/k16/dfRwrVUrYy5TmDqo=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: a1c3b51e-f55b-4bce-ced8-08d7783f30aa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 22:21:49.0098 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3NAM04HT034
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
Content-Type: multipart/mixed; boundary="===============0081524578136816158=="
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

--===============0081524578136816158==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR19MB16350BBB7323FF3269271A1DA4420BN6PR19MB1635namp_"

--_000_BN6PR19MB16350BBB7323FF3269271A1DA4420BN6PR19MB1635namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Awesome!  Thanks, Brian!


________________________________
From: Brian Padalino <bpadalino@gmail.com>
Sent: Tuesday, December 3, 2019 3:37 PM
To: Jeff S <e070832@hotmail.com>
Cc: Lindstedt, Ralf <ralf.lindstedt@hhi.fraunhofer.de>; usrp-users@lists.et=
tus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] IQ-sample with a magnitude larger than 1.0

On Tue, Dec 3, 2019 at 1:53 PM Jeff S <e070832@hotmail.com<mailto:e070832@h=
otmail.com>> wrote:
I'm fairly new to GNURadio, so I may have (most likely) missed it, but I ha=
d the same problem that was fixed by multiplying the complex number going i=
nto my sink by 0.25 to get my QPSK modulation to work on my X310.  Since do=
ing that, I have found references to over driving the TX on this list.  Is =
the [1, -1] limit an Ettus device limit, or is it a GNURadio limit?  And wh=
ere is that documented (so I can maybe find what else I'm missing)?

Ettus radios.  Normalized complex values:

  https://files.ettus.com/manual/page_stream.html#stream_datatypes_cpu

If the values aren't normalized, it seems difficult to try to figure out wh=
at "full scale" means.  Right?


Also, it seems like the consensus is that going [1,-1] is still too much, a=
nd going less than 0.707 may be better.

3dB sounds like a lot to drop, but 0.1dB or even 0.5dB is probably just fin=
e.  This is just the level coming out of the DAC.  Further amplification do=
wn the line might cause other non-linearity issues, but overall you probabl=
y want to exercise as much dynamic range as possible.

Brian

--_000_BN6PR19MB16350BBB7323FF3269271A1DA4420BN6PR19MB1635namp_
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
Awesome!&nbsp; Thanks, Brian!<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div><br>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Brian Padalino &lt;=
bpadalino@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, December 3, 2019 3:37 PM<br>
<b>To:</b> Jeff S &lt;e070832@hotmail.com&gt;<br>
<b>Cc:</b> Lindstedt, Ralf &lt;ralf.lindstedt@hhi.fraunhofer.de&gt;; usrp-u=
sers@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] IQ-sample with a magnitude larger than 1.0=
</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">On Tue, Dec 3, 2019 at 1:53 PM Jeff S &lt;<a href=3D"mailt=
o:e070832@hotmail.com">e070832@hotmail.com</a>&gt; wrote:<br>
</div>
<div class=3D"x_gmail_quote">
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I'm fairly new to GNURadio, so I may have (most likely) missed it, but I ha=
d the same problem that was fixed by multiplying the complex number going i=
nto my sink by 0.25 to get my QPSK modulation to work on my X310.&nbsp; Sin=
ce doing that, I have found references
 to over driving the TX on this list.&nbsp; Is the [1, -1] limit an Ettus d=
evice limit, or is it a GNURadio limit?&nbsp; And where is that documented =
(so I can maybe find what else I'm missing)?</div>
</div>
</blockquote>
<div><br>
</div>
<div>Ettus radios.&nbsp; Normalized complex values:</div>
<div><br>
</div>
<div>&nbsp;&nbsp;<a href=3D"https://files.ettus.com/manual/page_stream.html=
#stream_datatypes_cpu">https://files.ettus.com/manual/page_stream.html#stre=
am_datatypes_cpu</a></div>
<div><br>
</div>
<div>If the values aren't normalized, it seems difficult to try to figure o=
ut what &quot;full scale&quot; means.&nbsp; Right?</div>
<div>&nbsp;</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Also, it seems like the consensus is that going [1,-1] is still too much, a=
nd going less than 0.707 may be better.</div>
</div>
</blockquote>
<div><br>
</div>
<div>3dB sounds like a lot to drop, but 0.1dB or even 0.5dB is probably jus=
t fine.&nbsp; This is just the level coming out of the DAC.&nbsp; Further a=
mplification down the line might cause other non-linearity issues, but over=
all you probably want to exercise as much
 dynamic range as possible.</div>
<div><br>
</div>
<div>Brian</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"x_gmail-m_6265047434519115788Signature">
<div>
<div>
<div dir=3D"ltr">
<div></div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BN6PR19MB16350BBB7323FF3269271A1DA4420BN6PR19MB1635namp_--


--===============0081524578136816158==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0081524578136816158==--

