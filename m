Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC7422DBA2
	for <lists+usrp-users@lfdr.de>; Sun, 26 Jul 2020 06:13:03 +0200 (CEST)
Received: from [::1] (port=59168 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jzY1y-0000Yq-46; Sun, 26 Jul 2020 00:12:58 -0400
Received: from mail-oln040092253095.outbound.protection.outlook.com
 ([40.92.253.95]:23998 helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <snehasish.cse@live.com>)
 id 1jzY1u-0000Tp-3C
 for usrp-users@lists.ettus.com; Sun, 26 Jul 2020 00:12:54 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gesmwo0yGBFo6gsmXsPyJP9+ovN+KagkDnIu+vNjl1U1EtSyixeLQjUqY6yt+dYN2eVqm168N14WG+6yDs4AdT/S8uyqj9CEL7HI2hKJECjYsj7+ljBazQPTuIcBs0jm+MhKpCImQBhzOtriQVIaSHfx20YjLdrsmhMPhVQF5vMoIKW8XiaqVX9TSioQ9H93kOiP2j/Qk6Vss8Fqq5dXvUjNImTCXsgVSSX1vGsOD+OzptOW0XkQ8UhodJGU5M94zvijVy7lMtxwV7fJJIT28u+dfKKdLLV7YoVPaImiqVexnJsP5822fsPUEjCLaGAxZIKv/uVonMtQ561k5L+xAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UcTmthnIBm27CTJ2VyRgZ41BFkkqQ5F2rVhGrCNKmG0=;
 b=K0T18XkMJvylrS+RG3goDKRQLLlAyVzEo5tZhhMBAiHFSmTP7fkVXAiGMLzvMh224RvNhB7Kh9aCiaD0yf2kdYytWLKL37TEM9dtzt19SYB/tGHa4Heh8Ukf7h7PVUZhz2bg7gz5QuBGkPndaAQXfJDLnbJ/RixTL3p0oGWW8RDZMovTQ6bSfkIIt0ZVDTWoZIjMlimTtP0YYz99AWv5rCc84Xf+G8jF1YFgKFdsoVgyAgb/Z2XBj5a6NevbLQy1Gvq5SO4bFUj8IyotTKLum9wKzlzDUlUkpDBO2Jd7f+Pe58yd5AItrWky2xjz4yZUCKNm5OeV4a2ecvaNs4psuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UcTmthnIBm27CTJ2VyRgZ41BFkkqQ5F2rVhGrCNKmG0=;
 b=tqNhi64S+I03YcCwPwFBCF2+brxCETLG2FBdKUZHpb5sajWtNWGbcnC0VQu22aozAzPy30GzK1XWETTWqQG+og48yHua7++jX8SPnSuEyFtKiGtLAfegbMYuP6HZA3C48DBS0eHQlNRkcIXOvypkUE+aBaI2AgVK6qCJHtJin2iPjzLuK+IcYliFkXQxVxuptYWJPVN1zceYsyFTCD/mypxMZuf7dCfiNlBsPh1b4JYmkAGMW5zZGhw+eOhs2ili3+xJbhgq3D77iTSIRaDjtUog+NIIdEn3701xhwC6riGb9Kh9V9ocbFqd5KHg7f/CexzrsLvz8sXJM5QVNg0xIw==
Received: from PU1APC01FT010.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebe::40) by
 PU1APC01HT008.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebe::211)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.10; Sun, 26 Jul
 2020 04:12:09 +0000
Received: from BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM
 (2a01:111:e400:7ebe::49) by PU1APC01FT010.mail.protection.outlook.com
 (2a01:111:e400:7ebe::83) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.10 via Frontend
 Transport; Sun, 26 Jul 2020 04:12:09 +0000
Received: from BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::a18f:5c06:f098:3689]) by BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::a18f:5c06:f098:3689%4]) with mapi id 15.20.3216.028; Sun, 26 Jul 2020
 04:12:09 +0000
To: "Koyel Das (Vehere)" <koyel.das@vehere.com>,
 =?Windows-1252?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>,
 "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Data rate using usrp and grc
Thread-Index: AQHWYlbbHjnwDUz39U+Gftus+wZMPakX9kiAgAAzE+2AACHHgIAAFLoDgADguQc=
Date: Sun, 26 Jul 2020 04:12:09 +0000
Message-ID: <BM1PR0101MB149167EA077CA8B89D09CD5688750@BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB25884DB85773F1978595CD6890740@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <a7903b46-932a-4848-cffe-4dba3c53f43b@ettus.com>
 <MA1PR01MB2588B4D9AE8EE8E9E48363DC90740@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <2ae3dbb9-667a-f30a-0a24-509de972bb43@ettus.com>,
 <MA1PR01MB258881AEE532398017AD032F90740@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB258881AEE532398017AD032F90740@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:8221CDB0A486E943D5D354A7DFC3C48638CBC2FE44AFC51AD5FD36C48019C701;
 UpperCasedChecksum:F066F37D27D31BDA3788BC34BB76F0D95119CCE68B417683267FC7CAFFA0C721;
 SizeAsReceived:7359; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [fakQbPwP2mDMG9qJY/XBZLxqaQbp6GgV]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: aa8a2547-fef1-478d-8df0-08d8311a1100
x-ms-traffictypediagnostic: PU1APC01HT008:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zhPJkwgC1D0R46AqPuz2vGnzCRwSU/Fqv4Y1iBRRtSmCkIHvLXHnEiGlpSTY0rruEWY3pn9zK0hBs9Regss5s8n4RNiFZ4z+w51GkPJZntN7QULC0iByZrm+EoMKSMhHcYiZ5ThzK8/PJHLLKpYguXVDjy0uKjBSPOC3R7f1wHAmjGKCu43mDemvryX8f5lZn8CTl22oLCU6bpWuO6+8rtii3sihPCdFcxbE+iZPuM0Zir/VogMdTlVzJHjlpCxL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: LpeHCgvNptcQspLYH6m5g2QNXEQs85s8OaQD4VMvIcogxDc33FYZAKmcvVnWsjNDZtFcVXQo1Txb+jJnv0fWs+t1mjDPzhsipZOBM5hCHgMZPtOje6D41STP1bNbaLliDGlAi9NhuT3ZZmNUBDgH/A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: PU1APC01FT010.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: aa8a2547-fef1-478d-8df0-08d8311a1100
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2020 04:12:09.6395 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT008
Subject: Re: [USRP-users] Data rate using usrp and grc
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
From: Snehasish Kar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Snehasish Kar <snehasish.cse@live.com>
Content-Type: multipart/mixed; boundary="===============1414453955414252296=="
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

--===============1414453955414252296==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR0101MB149167EA077CA8B89D09CD5688750BM1PR0101MB1491_"

--_000_BM1PR0101MB149167EA077CA8B89D09CD5688750BM1PR0101MB1491_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello Koyel

I think using a 10gbps nic card, a processor with 3.6GHz clockspeed, DDR4 R=
AM with an nvme ssd or ssd should be fine.

Regards
Snehasish

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Koyel Da=
s (Vehere) via USRP-users <usrp-users@lists.ettus.com>
Sent: Saturday, July 25, 2020 8:21:01 PM
To: Marcus M=FCller <marcus.mueller@ettus.com>; 'USRP-users@lists.ettus.com=
' <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Data rate using usrp and grc

Hi Marcus,

I don=92t know what system features would ensure a 6 gbps continuous data r=
eception and storage from usrp. I only know we have 10 gbps servers so I wa=
s asking if that is not enough to ensure that data rate or something more i=
s needed. I was expecting the system requirements to be outlined for the me=
ntioned data rate.

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Marcus M=FCller <marcus.mueller@ettus.com>
Sent: Saturday, July 25, 2020 7:01:31 PM
To: Koyel Das (Vehere) <koyel.das@vehere.com>; 'USRP-users@lists.ettus.com'=
 <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Data rate using usrp and grc

Hi Koyel,

I'm sorry if I'm repeating myself. I see this seems hard to believe, but:

we really can't tell you. We don't know how well your system performs.

Best regards,
Marcus

On 25.07.20 13:32, Koyel Das (Vehere) wrote:
> Hi Marcus,
>
> =93as to your previous questions regarding "will my computer be able to
> keep up": We can't tell you how fast your computer and storage is.=94
>
> If I use a 10 gbps server and
>
> RAM disk storage or as you said the following:
>
> =93Also, setting larger output buffers in the GNU Radio blocks can help,
> too, if you don't need low latency (which you don't need at all, if
> you're just recording). Try setting "2**24" in the min output buffer
> setting in your USRP source's "advanced" tab.=94
>
>
>  Then will I be able to write data at 6 gbps ?
>
> Regards,
> Koyel
>
>
>
> Get Outlook for iOS<https://aka.ms/o0ukef>
> ________________________________
> From: Marcus M=FCller <marcus.mueller@ettus.com>
> Sent: Saturday, July 25, 2020 1:57:49 PM
> To: Koyel Das (Vehere) <koyel.das@vehere.com>; 'USRP-users@lists.ettus.co=
m' <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] Data rate using usrp and grc
>
> Hi Koyel,
>
>> Will there be packet drops if USRP source is set at 32 bit complex
> float in grc when receiving at 100 MSPS each from two channels?
>
> as to your previous questions regarding "will my computer be able to
> keep up": We can't tell you how fast your computer and storage is.
>
> Anyway,
>
>> I am unable to set usrp source block in grc to 16 bit complex as then
> the usrp source block is not compatible with file sink which doesn=92t
> have option for 16 bit complex
>
> Nothing in GNU Radio cares about the content of the data bytes you're
> pushing around: simply set your file sink to e.g. int, or float, or to
> short with vector length 2, or to byte with vector length 4: Doesn't
> matter, as long as the item size ends up being 32 bits.
>
> Best regards,
>
> Marcus
>
> On 25.07.20 09:43, Koyel Das (Vehere) via USRP-users wrote:
>> Hi,
>>
>> I want to capture data from usrp 2955 using USRP Source block of grc and=
 write to file using file sink block of grc. Will there be packet drops if =
USRP source is set at 32 bit complex float in grc when receiving at 100 MSP=
S each from two channels? That makes 2*100e6*64 (32 bit I and 32 bit Q) =3D=
 12800e6 or 12.8 gbps. I am unable to set usrp source block in grc to 16 bi=
t complex as then the usrp source block is not compatible with file sink wh=
ich doesn=92t have option for 16 bit complex. Please help
>>
>> Regards,
>> Koyel
>>
>> Get Outlook for iOS<https://aka.ms/o0ukef>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_BM1PR0101MB149167EA077CA8B89D09CD5688750BM1PR0101MB1491_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div>
<div>
<div style=3D"direction: ltr;">Hello Koyel </div>
<div><br>
</div>
<div style=3D"direction: ltr;">I think using a 10gbps nic card, a processor=
 with 3.6GHz clockspeed, DDR4 RAM with an nvme ssd or ssd should be fine.</=
div>
<div><br>
</div>
<div style=3D"direction: ltr;">Regards</div>
<div style=3D"direction: ltr;">Snehasish <span id=3D"ms-outlook-ios-cursor"=
></span></div>
</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature">Get <a href=3D"https://aka.ms/o0uke=
f">Outlook for iOS</a></div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Koyel Das (Vehere) via USRP-u=
sers &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Saturday, July 25, 2020 8:21:01 PM<br>
<b>To:</b> Marcus M=FCller &lt;marcus.mueller@ettus.com&gt;; 'USRP-users@li=
sts.ettus.com' &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Data rate using usrp and grc</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hi Marcus,&nbsp;</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">I don=92t know what system features would ensure a 6 gbps =
continuous data reception and storage from usrp. I only know we have 10 gbp=
s servers so I was asking if that is not enough to ensure that data rate or=
 something more is needed. I was expecting
 the system requirements to be outlined for the mentioned data rate.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel&nbsp;</div>
<div><br>
</div>
<div class=3D"x_ms-outlook-ios-signature" id=3D"x_ms-outlook-mobile-signatu=
re">Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus M=FCller &lt=
;marcus.mueller@ettus.com&gt;<br>
<b>Sent:</b> Saturday, July 25, 2020 7:01:31 PM<br>
<b>To:</b> Koyel Das (Vehere) &lt;koyel.das@vehere.com&gt;; 'USRP-users@lis=
ts.ettus.com' &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Data rate using usrp and grc</font>
<div>&nbsp;</div>
</div>
<div class=3D"x_BodyFragment"><font size=3D"2"><span style=3D"font-size:11p=
t">
<div class=3D"x_PlainText">Hi Koyel,<br>
<br>
I'm sorry if I'm repeating myself. I see this seems hard to believe, but:<b=
r>
<br>
we really can't tell you. We don't know how well your system performs.<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On 25.07.20 13:32, Koyel Das (Vehere) wrote:<br>
&gt; Hi Marcus,<br>
&gt;<br>
&gt; =93as to your previous questions regarding &quot;will my computer be a=
ble to<br>
&gt; keep up&quot;: We can't tell you how fast your computer and storage is=
.=94<br>
&gt;<br>
&gt; If I use a 10 gbps server and<br>
&gt;<br>
&gt; RAM disk storage or as you said the following:<br>
&gt;<br>
&gt; =93Also, setting larger output buffers in the GNU Radio blocks can hel=
p,<br>
&gt; too, if you don't need low latency (which you don't need at all, if<br=
>
&gt; you're just recording). Try setting &quot;2**24&quot; in the min outpu=
t buffer<br>
&gt; setting in your USRP source's &quot;advanced&quot; tab.=94<br>
&gt;<br>
&gt;<br>
&gt;&nbsp; Then will I be able to write data at 6 gbps ?<br>
&gt;<br>
&gt; Regards,<br>
&gt; Koyel<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Get Outlook for iOS&lt;<a href=3D"https://aka.ms/o0ukef">https://aka.m=
s/o0ukef</a>&gt;<br>
&gt; ________________________________<br>
&gt; From: Marcus M=FCller &lt;marcus.mueller@ettus.com&gt;<br>
&gt; Sent: Saturday, July 25, 2020 1:57:49 PM<br>
&gt; To: Koyel Das (Vehere) &lt;koyel.das@vehere.com&gt;; 'USRP-users@lists=
.ettus.com' &lt;usrp-users@lists.ettus.com&gt;<br>
&gt; Subject: Re: [USRP-users] Data rate using usrp and grc<br>
&gt;<br>
&gt; Hi Koyel,<br>
&gt;<br>
&gt;&gt; Will there be packet drops if USRP source is set at 32 bit complex=
<br>
&gt; float in grc when receiving at 100 MSPS each from two channels?<br>
&gt;<br>
&gt; as to your previous questions regarding &quot;will my computer be able=
 to<br>
&gt; keep up&quot;: We can't tell you how fast your computer and storage is=
.<br>
&gt;<br>
&gt; Anyway,<br>
&gt;<br>
&gt;&gt; I am unable to set usrp source block in grc to 16 bit complex as t=
hen<br>
&gt; the usrp source block is not compatible with file sink which doesn=92t=
<br>
&gt; have option for 16 bit complex<br>
&gt;<br>
&gt; Nothing in GNU Radio cares about the content of the data bytes you're<=
br>
&gt; pushing around: simply set your file sink to e.g. int, or float, or to=
<br>
&gt; short with vector length 2, or to byte with vector length 4: Doesn't<b=
r>
&gt; matter, as long as the item size ends up being 32 bits.<br>
&gt;<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Marcus<br>
&gt;<br>
&gt; On 25.07.20 09:43, Koyel Das (Vehere) via USRP-users wrote:<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; I want to capture data from usrp 2955 using USRP Source block of g=
rc and write to file using file sink block of grc. Will there be packet dro=
ps if USRP source is set at 32 bit complex float in grc when receiving at 1=
00 MSPS each from two channels? That makes
 2*100e6*64 (32 bit I and 32 bit Q) =3D 12800e6 or 12.8 gbps. I am unable t=
o set usrp source block in grc to 16 bit complex as then the usrp source bl=
ock is not compatible with file sink which doesn=92t have option for 16 bit=
 complex. Please help<br>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt; Koyel<br>
&gt;&gt;<br>
&gt;&gt; Get Outlook for iOS&lt;<a href=3D"https://aka.ms/o0ukef">https://a=
ka.ms/o0ukef</a>&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; USRP-users@lists.ettus.com<br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
.com</a><br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_BM1PR0101MB149167EA077CA8B89D09CD5688750BM1PR0101MB1491_--


--===============1414453955414252296==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1414453955414252296==--

