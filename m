Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C171B72A6
	for <lists+usrp-users@lfdr.de>; Fri, 24 Apr 2020 13:07:30 +0200 (CEST)
Received: from [::1] (port=52996 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jRwB7-0007lx-94; Fri, 24 Apr 2020 07:07:29 -0400
Received: from mail-oln040092255031.outbound.protection.outlook.com
 ([40.92.255.31]:29664 helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <snehasish.cse@live.com>)
 id 1jRwB2-0007fJ-Cc
 for usrp-users@lists.ettus.com; Fri, 24 Apr 2020 07:07:24 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J7cLHbRYxFfjgXNEgeX8kBOSvyJ6pKpbSWrb2jaE1qgLRZtLACUkwj7/YHutlrX0xBn4FkRmVIMrVtMJZU8HC+r/wYgiO75z3AK5hSJdLa8707WoBV43rwMS2mjCXejnXX7oxool39sCS8OciMZ2FtpvU71tBJhB93QW2pC2e1rJXLgZfyA/zM376gAQWmVUJK3vti14zz17oeYk+EGfIaG+pIvRxxSCjqUU35CwlFsodH96lglat+wHRfwX/x+6BXwgLouPalF0RRw+1CoclvsGbeeuDHwQUy3JNQBrkYECeCtrOPmwcW1cV/awYR0iuJEFTukTG3BrtsFlQDeFwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3P/L+YvjW5ECgqQ2aJco+Asm/38QWH4/95VbvpuE9VA=;
 b=OeWZ6TYecXCsD/Bo/GYwXpAEHN1WwAH8mVpGtTWiDDLAi+2gRvnmtqRqDuW/jpIndFFnyRoRE/2uNyKXkNIChoPticL+dRD6hVOzA1K+WtvdSXyy3U7yXTZ/6pCfSNtSaew+Vz4JeKCa8yh55RGhdeykQ660skGz+i4YMPpV86RkflQVUtr+NPFqWNUbnKYelC0Vhvk9Dm/poh+UlIxIlBnOCwchzlqF7y/g+HEhFtgCF2EKRZbfzLNgiwUzJ8PuQoCTM7n/3CGJ6dd1GtX8mOlAxYDPlhYDsz83eKTocalqNlbklzOZrbgKgXcwWSS6OoRNWUKOOjchNW9ztzywWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3P/L+YvjW5ECgqQ2aJco+Asm/38QWH4/95VbvpuE9VA=;
 b=Bx/dC29DImYConl4ZUrBA0n9+9WhTAMPmW/x7immGhtZBIbKuRMzXyXTLK/nc2X/0RHPZp5okCQqtm57le4f0SLyu+3NQjxZrHVbf4loeZu/dUNcm/tqNY5o+FKbBNW+M/pp5iJ2HGKsZI/n2nFjFkAUN3IJi1AROY2yibPhnxEbzhE4qevJCJ9ln7Aofna0Pk1TznBaLAqpZKRmo/urYd+HvdiJPD9s6ty1+/KCPRC6CpM+8fM1QWX5Xz8O4QKRWiNzLQftF7CEUzw3njCZxJzGKSaEJT30YlwieARasisvCnuvhDsoBtrXM8EKZp6DLnfCVWxiaKa++bhAqnHZAA==
Received: from PU1APC01FT045.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebe::45) by
 PU1APC01HT217.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebe::409)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Fri, 24 Apr
 2020 11:06:40 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM (10.152.252.51) by
 PU1APC01FT045.mail.protection.outlook.com (10.152.253.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.15 via Frontend Transport; Fri, 24 Apr 2020 11:06:40 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d]) by BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d%7]) with mapi id 15.20.2937.012; Fri, 24 Apr 2020
 11:06:40 +0000
To: EJ Kreinar <ejkreinar@gmail.com>
Thread-Topic: [USRP-users] Modifying RFNoC ddc block for 16 parallel instances
Thread-Index: AQHWGPFZoDfvbKh70EeqElLjPk33eKiFsxgAgAACBxKAAAl8AIAAjjZVgAFSvYCAAAgLvoAAcUWAgAABeCc=
Date: Fri, 24 Apr 2020 11:06:40 +0000
Message-ID: <BM1PR01MB3348DDDD5F4822FDBABEA61688D00@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
References: <BM1PR01MB3348D0FEC4BEAA5F7A79200C88D20@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAEXYVK5Ts2mewxrSw40puiLtHv1+w5R8fi=d+7LD2gcxvn-9Cw@mail.gmail.com>
 <BM1PR01MB334827C32F91A512A6786A1B88D20@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAEXYVK7rCxr7QB=qQOL1omLd3AdPcjQvbnWoFmZ=bYGGtWGeHg@mail.gmail.com>
 <BM1PR01MB33482FF8513BFE835941A7E888D30@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81sH5ae_M4ub4h8dR4DXAVFGxbBi___5TgyoHvK5Lj6nMQ@mail.gmail.com>
 <BM1PR01MB3348E558D45108505B6A5D5D88D00@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>,
 <CADRnH23jKePxiwz0b0C6mrpzdCJ_t2PMeuPK-2OBqj6g+RbFcQ@mail.gmail.com>
In-Reply-To: <CADRnH23jKePxiwz0b0C6mrpzdCJ_t2PMeuPK-2OBqj6g+RbFcQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:A2E5F62E08088DA8E93AF82AA85C666FC6E1A29E64B163341A856E83062B98E6;
 UpperCasedChecksum:501A90E96184B04BB061992D16CEBE694A7F0125BD3AA99FC8CD5F46ABE4AF11;
 SizeAsReceived:7653; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [a/OOuDmISXw9GmXf5bCslOYyUjOrE71+]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 250cf09f-39e7-40c9-35f5-08d7e83f9083
x-ms-traffictypediagnostic: PU1APC01HT217:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O05UDRcu9f233k+o6ak3cLuhi/7PjUB7gS+2EnEYgqcskpo42M9Y/10T6ZkjXtHeFPNHMtxRiepvSLRZidkwRWnm0/RYeGMErZ42BHEmOlyTHngE5N79HvHysLlR2cj3PFK3kw8LbqsYCAmf+xrwVHgw5f0CS8mQ+PMjNXi3zhh3Ie/sQaBiy/qmfor2r74nl3tx+bk8clolq2X9xq3XZMOtRQz+H5YUEE3gwrDFglt0uOG0+l8hFA7Qr2I31m4o
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: +eqI/wXJxK+0Po4pUxEjZPJlZYtNDiAZaiXIg+ztm5JzeOoMWEguOxUxCDDWsY8N+zAHXIRk1bdoNuX1NdJbDSRVfn5qnm1s15LMI+bj6pZjgBMCA/XhwbsgMI89fc0dIA/7FyhLpnwop3CeRxeoIA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 250cf09f-39e7-40c9-35f5-08d7e83f9083
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 11:06:40.0366 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT217
Subject: Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel instances
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
From: Snehasish Kar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Snehasish Kar <snehasish.cse@live.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1136751058665862631=="
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

--===============1136751058665862631==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB3348DDDD5F4822FDBABEA61688D00BM1PR01MB3348INDP_"

--_000_BM1PR01MB3348DDDD5F4822FDBABEA61688D00BM1PR01MB3348INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello EJ

There was no fix but just changing the number of chain in the parameters. B=
asically a Hit and trial. I tried building for 1:32/1:16/1:8. But, after th=
en instead of having 1x1:16 block I tried breaking it into 2x1:4 DDC. After=
 than increasing increasing 3x1:4 gives the same error of timing constraint=
 while writing the BIT File.

Regards
Snehasish
________________________________
From: EJ Kreinar <ejkreinar@gmail.com>
Sent: Friday, April 24, 2020 4:14 PM
To: Snehasish Kar <snehasish.cse@live.com>
Cc: Jonathon Pendlum <jonathon.pendlum@ettus.com>; USRP-users@lists.ettus.c=
om <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel instanc=
es

Hi Snehasish,

That's good to hear! Out of curiosity what was failing timing?

If you put together a merge request for your fix I'll take a look and try t=
o merge that in.

EJ

On Fri, Apr 24, 2020, 12:07 AM Snehasish Kar via USRP-users <usrp-users@lis=
ts.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hello Jonathon

I need to use a sample rate between 20ksps to 1msps.

Btw I tried following Brian's advice about breaking the logic. I was able t=
o use to build a fpga image with 2x1:4 DDC block. Though I required 1:16 DD=
C block, but still it is great to start working.

@Brian Padalino<mailto:bpadalino@gmail.com>: Thanks a lot for the help.

Regards
________________________________
From: Jonathon Pendlum <jonathon.pendlum@ettus.com<mailto:jonathon.pendlum@=
ettus.com>>
Sent: Friday, April 24, 2020 9:00 AM
To: Snehasish Kar <snehasish.cse@live.com<mailto:snehasish.cse@live.com>>
Cc: Brian Padalino <bpadalino@gmail.com<mailto:bpadalino@gmail.com>>; usrp-=
users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-users@lists.=
ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel instanc=
es

Hi Snehasish,

The DDC supports a wide range of sampling rates. Depending on the rates you=
 want, some of the DDC filters could be removed to reduce utilization or th=
ere may be a better architecture to fit your situation. What rates do you n=
eed to support?

Jonathon

On Thu, Apr 23, 2020 at 3:19 AM Snehasish Kar via USRP-users <usrp-users@li=
sts.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hello Brian

While writing the bitstream it gave an error stung the current design didn=
=92t satisfy the timing constraint.

I tried creating 12 blocks of DDC 1 to 2, blocks but that failed too saying=
 the placer couldnot place more than 5% of the movable instances in the des=
ign.

Regards
Snehasish

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Brian Padalino <bpadalino@gmail.com<mailto:bpadalino@gmail.com>>
Sent: Thursday, April 23, 2020 4:19:14 AM
To: Snehasish Kar <snehasish.cse@live.com<mailto:snehasish.cse@live.com>>
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel instanc=
es

On Wed, Apr 22, 2020 at 6:17 PM Snehasish Kar <snehasish.cse@live.com<mailt=
o:snehasish.cse@live.com>> wrote:
Hello Brian

Thanks for your response, actually I tried using DDC 1 to n block as given =
here, but giving 1 to 8 channels have a timing issue, while generating the =
build. So I thought it as an alternative plan.

https://gitlab.com/theseus-cores/theseus-cores/-/blob/master/fpga-rfnoc/REA=
DME.md#dsp-utilsnoc_block_ddc_1_to_n

What was the timing issue?  Is it possible for you to break up the logic to=
 help relax timing constraints?

Brian
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_BM1PR01MB3348DDDD5F4822FDBABEA61688D00BM1PR01MB3348INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Hello EJ</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
There was no fix but just changing the number of chain in the parameters. B=
asically a Hit and trial. I tried building for 1:32/1:16/1:8. But, after th=
en instead of having 1x1:16 block I tried breaking it into 2x1:4 DDC. After=
 than increasing increasing 3x1:4
 gives the same error of timing constraint while writing the BIT File.</div=
>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Regards</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Snehasish<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> EJ Kreinar &lt;ejkrei=
nar@gmail.com&gt;<br>
<b>Sent:</b> Friday, April 24, 2020 4:14 PM<br>
<b>To:</b> Snehasish Kar &lt;snehasish.cse@live.com&gt;<br>
<b>Cc:</b> Jonathon Pendlum &lt;jonathon.pendlum@ettus.com&gt;; USRP-users@=
lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel =
instances</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"auto">Hi Snehasish,
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">That's good to hear! Out of curiosity what was failing ti=
ming?</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">If you put together a merge request for your fix I'll tak=
e a look and try to merge that in.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">EJ</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Fri, Apr 24, 2020, 12:07 AM Sneh=
asish Kar via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0 0 0 .8ex; border-left=
:1px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Hello Jonathon <br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I need to use a sample rate between 20ksps to 1msps. <br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Btw I tried following Brian's advice about breaking the logic. I was able t=
o use to build a fpga image with 2x1:4 DDC block. Though I required 1:16 DD=
C block, but still it is great to start working.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<a id=3D"x_m_-1889242729522562714OWAAM472637" href=3D"mailto:bpadalino@gmai=
l.com" target=3D"_blank" rel=3D"noreferrer">@Brian Padalino</a>: Thanks a l=
ot for the help.<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Regards<br>
</div>
<div id=3D"x_m_-1889242729522562714appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_-1889242729522562714divRplyFwdMsg" dir=3D"ltr"><font face=3D=
"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From:</=
b> Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" targe=
t=3D"_blank" rel=3D"noreferrer">jonathon.pendlum@ettus.com</a>&gt;<br>
<b>Sent:</b> Friday, April 24, 2020 9:00 AM<br>
<b>To:</b> Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" targ=
et=3D"_blank" rel=3D"noreferrer">snehasish.cse@live.com</a>&gt;<br>
<b>Cc:</b> Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" target=
=3D"_blank" rel=3D"noreferrer">bpadalino@gmail.com</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.c=
om</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel =
instances</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Snehasish,
<div><br>
</div>
<div>The DDC supports a wide range of sampling rates. Depending on the rate=
s you want, some of the DDC filters could be removed to reduce utilization =
or there may be a better architecture to fit your situation. What rates do =
you need to support?</div>
<div><br>
</div>
<div>Jonathon</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Thu, Apr 23, 2020 at 3:19 AM Snehasish Kar via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=
=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hello Brian</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">While writing the bitstream it gave an error stung the cur=
rent design didn=92t satisfy the timing constraint.&nbsp;</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">I tried creating 12 blocks of DDC 1 to 2, blocks but that =
failed too saying the placer couldnot place more than 5% of the movable ins=
tances in the design.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards</div>
<div dir=3D"ltr">Snehasish</div>
<div><br>
</div>
<div id=3D"x_m_-1889242729522562714x_gmail-m_4985790380076774549ms-outlook-=
mobile-signature">
Get <a href=3D"https://aka.ms/o0ukef" target=3D"_blank" rel=3D"noreferrer">=
Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_-1889242729522562714x_gmail-m_4985790380076774549divRplyFwdM=
sg" dir=3D"ltr">
<font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11p=
t"><b>From:</b> Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" t=
arget=3D"_blank" rel=3D"noreferrer">bpadalino@gmail.com</a>&gt;<br>
<b>Sent:</b> Thursday, April 23, 2020 4:19:14 AM<br>
<b>To:</b> Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" targ=
et=3D"_blank" rel=3D"noreferrer">snehasish.cse@live.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" =
rel=3D"noreferrer">
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&g=
t;<br>
<b>Subject:</b> Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel =
instances</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">On Wed, Apr 22, 2020 at 6:17 PM Snehasish Kar &lt;<a href=
=3D"mailto:snehasish.cse@live.com" target=3D"_blank" rel=3D"noreferrer">sne=
hasish.cse@live.com</a>&gt; wrote:<br>
</div>
<div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hello Brian</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks for your response, actually I tried using DDC 1 to =
n block as given here, but giving 1 to 8 channels have a timing issue, whil=
e generating the build. So I thought it as an alternative plan.</div>
<div dir=3D"ltr"><br>
</div>
<div><a href=3D"https://gitlab.com/theseus-cores/theseus-cores/-/blob/maste=
r/fpga-rfnoc/README.md#dsp-utilsnoc_block_ddc_1_to_n" target=3D"_blank" rel=
=3D"noreferrer">https://gitlab.com/theseus-cores/theseus-cores/-/blob/maste=
r/fpga-rfnoc/README.md#dsp-utilsnoc_block_ddc_1_to_n</a></div>
</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>What was the timing issue?&nbsp; Is it possible for you to break up th=
e logic to help relax timing constraints?</div>
<div><br>
</div>
<div>Brian</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
<div>
<div>
<div dir=3D"ltr">
<div></div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_BM1PR01MB3348DDDD5F4822FDBABEA61688D00BM1PR01MB3348INDP_--


--===============1136751058665862631==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1136751058665862631==--

