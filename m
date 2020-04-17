Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D9E1AE384
	for <lists+usrp-users@lfdr.de>; Fri, 17 Apr 2020 19:15:16 +0200 (CEST)
Received: from [::1] (port=52832 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jPUa9-0005FY-GV; Fri, 17 Apr 2020 13:15:13 -0400
Received: from mail-oln040092254089.outbound.protection.outlook.com
 ([40.92.254.89]:12736 helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <snehasish.cse@live.com>)
 id 1jPUa5-00057H-06
 for usrp-users@lists.ettus.com; Fri, 17 Apr 2020 13:15:09 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZcXWDlLMks2zQ3fPq0C+arGFTT2UIus0kjQ8FqcspxYaBAfC/IQXQfbJOqRhA3YOY0RzoVheKqdUceWOLBuU0X9o5Yrh4kD5x37SykhdHcHmHE1/AEdFADgt0ffHRi1JhRjUyHNVaj/FshHibvyW+st+Px8m/4+68pFDXMN7sE60SZQ9+UK5aWgisNZnhvmV8A3ucwM2jOh3qfl6aMiEyN4hOqCQ1canU1T1Hn9qDj6Zk0JVPz1wCzwR0ELvUcUVOPAWjvW2q1EuQJx9qtX7njx7GHzu/t5kM0LRMWG45yf9IGzaxzPT7tBsIFr7iE4XIqGpliSTnBhzj/Y1wzJFHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ulJs6uLlYZqyheACU6KeNYXKufR+E43pFHRUBXMyJ2c=;
 b=KIXGwd11IwXFtIVCrAMisNdOhk5/PHP/4Q30j/FZ8/zXN+ruym8jvS5dGshvClNu45QywHQr27AbgUQw91O52vNaUdEfHNgeKlFzftfbdGKyJWIh3/HGqcbxeCTSIYmMUSOjD+53qzMoi42PgzJHo3ey3EnWC4r9wBQdgiGgQIx0HpqYOhYucmGBKAYv5l2j2WyxfXQDztT/kdL7qjs9IP3twLeGEjeVdQeiLdnmqauPDwvZtNwOBsC687cq3HkPedJZUWlGifr4ux7CLZ1fPIQf/2h6BK314LaPlcgCzvBElhv4R+SgF0HikfXlVMqXWK+/lLH4oyLYfd1CsZ0ryw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ulJs6uLlYZqyheACU6KeNYXKufR+E43pFHRUBXMyJ2c=;
 b=D8UgtI4GSqOoTGzliiz2x7exxJ5Zi1R8Ujapx9NT3BzSBz85wTARmg8EWsisnlIgTdegoVpnuTd1uEm50JzYFSioI0MlP24zYS4ivUuiOvN4d6F8fo+fb28e7cjyK+R6tn5JtTjoVmN0wf9L+0nlRLojBjs5DdDjfyu474IBTnpaL3CfQ6IA2fTdXLyqhDs0Eq6Qg82bldJfVLu6j2ALv1SoQHVWr7RgFzZHucjgnuggEvX0PCTJVxYgbXZU29CyDS5YC1dQvr6bgu30Wbf3jhDMddrtQonaGwTQWUqlF8pWaujEkgFXJY4wzHHzNNKwTbuE9OpejDPmO/IFDhZv9g==
Received: from SG2APC01FT022.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebd::47) by
 SG2APC01HT195.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebd::452)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Fri, 17 Apr
 2020 17:14:25 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM (10.152.250.57) by
 SG2APC01FT022.mail.protection.outlook.com (10.152.250.205) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.25 via Frontend Transport; Fri, 17 Apr 2020 17:14:24 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d]) by BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d%7]) with mapi id 15.20.2921.027; Fri, 17 Apr 2020
 17:14:24 +0000
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Thread-Topic: [USRP-users] Fractional downsampling in rfnoc
Thread-Index: AQHWFD4S3p9nAtH5HEib5hstP8Q0q6h9d92AgAAVQqU=
Date: Fri, 17 Apr 2020 17:14:24 +0000
Message-ID: <BM1PR01MB3348E7FFB839D85B8764750B88D90@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
References: <BM1PR01MB33485647B95F4EB1A185B53E88D80@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>,
 <CAL7q81tGgXZQDNxq9FGViThnFkWE+3YSeLaebKrqP6OqCw1XvA@mail.gmail.com>
In-Reply-To: <CAL7q81tGgXZQDNxq9FGViThnFkWE+3YSeLaebKrqP6OqCw1XvA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:3B5743490119AE1C5003D28C8B49D7E751C049FE4878CC5C004F27748EC74B1D;
 UpperCasedChecksum:321C59DE619C26BD1FC6EC897EF85641E7CD6E1BB06D6B49ECC6E1FA63D531B6;
 SizeAsReceived:7068; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [F1CTgsKj6llGP50D1OkBOqbAiAoBW4ne]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: b7df5d7b-5bcc-4098-3947-08d7e2f2c742
x-ms-traffictypediagnostic: SG2APC01HT195:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OIYSiEoP6WsX9N6IBl4LG298cksIQbf06RmOz7sTv2x5kgb/yCZTV7/NRks+l9IHscIg7ikk67GgxVN8ZLy3s5R4c3y5qqzZHvyMaSoRe4eNt+7g/Ew1KsiH45jruR0ScjUjsQjYvuy+2+hNfTrYBeBDw60CnG6+VTAmGmoDGAO331d1rTN49pwazJ2J/zGEDdRotGCzGwMYEyFx/uWKc0yeIuhDNcpGRf6cWWw22r+liraJxHu6pVIj7+MieKHg
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: BB9sWZK7kyd2DS8xGFMtaia4vHp9qi8jjyBu8a2GAW4s2F78Je4k/zVFBAIvurBydC8zxAEBarKWQVFdmWhjxyXQ4kKl71QAkYh4heyhHVDnzvehRVipq8b5Jk7oRwXvnglQAxSVeMg2xDe3XKGg6Q==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: b7df5d7b-5bcc-4098-3947-08d7e2f2c742
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2020 17:14:24.7934 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT195
Subject: Re: [USRP-users] Fractional downsampling in rfnoc
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4196924619950112519=="
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

--===============4196924619950112519==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB3348E7FFB839D85B8764750B88D90BM1PR01MB3348INDP_"

--_000_BM1PR01MB3348E7FFB839D85B8764750B88D90BM1PR01MB3348INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello Jonathon

I have tried using the down sampler from synchronous labs, but encountered =
a lot many errors while generating USRP image. I think I need to check and =
understand the differences and implement those. Also is there some other wa=
y I can achieve the divide the band without fractionally downsampling it. I=
 need to divide the 25MHz gsm band into sub-bands of 200KHz for demodulatio=
n of GSM Signals

Thanks for the response.

Regards
Snehasish

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Sent: Friday, April 17, 2020 9:22:19 PM
To: Snehasish Kar <snehasish.cse@live.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Fractional downsampling in rfnoc

Hello Snehasish,

Unfortunately, the standard library of blocks does not have a Fractional De=
cimator. Your best bet is to try to use the one made by Synchronous Labs a =
few years ago. Their code is on github here: https://github.com/Synchronous=
Labs/rfnoc-SynchronousLabs. Since it was built, RFNoC has had some changes =
that will need to be fixed, but I think this is your only option versus wri=
ting one from scratch.

Jonathon

On Thu, Apr 16, 2020 at 6:35 PM Snehasish Kar via USRP-users <usrp-users@li=
sts.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hello

I am trying to use the RFNOC based M/2 channelizer from https://github.com/=
theseus-cores/theseus-cores/releases/tag/v1.1.0 . I am trying to divide 25 =
MHz spectrum into 124 subchannels each of bandwidth 200KHz. I am capturing =
the signal at 200msps and I need to decimate it to 25.6msps(25MHz/128 chann=
els). Please help me in understanding how this can be achieved using RFNoC,=
 is there=92s any block already defined for fractional downsampling.

Thanks & Regards
Snehasish

Get Outlook for iOS<https://aka.ms/o0ukef>
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_BM1PR01MB3348E7FFB839D85B8764750B88D90BM1PR01MB3348INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hello Jonathon</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">I have tried using the down sampler from synchronous labs,=
 but encountered a lot many errors while generating USRP image. I think I n=
eed to check and understand the differences and implement those. Also is th=
ere some other way I can achieve the
 divide the band without fractionally downsampling it. I need to divide the=
 25MHz gsm band into sub-bands of 200KHz for demodulation of GSM Signals</d=
iv>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks for the response.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards</div>
<div dir=3D"ltr">Snehasish&nbsp;</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jonathon Pendlum &lt;=
jonathon.pendlum@ettus.com&gt;<br>
<b>Sent:</b> Friday, April 17, 2020 9:22:19 PM<br>
<b>To:</b> Snehasish Kar &lt;snehasish.cse@live.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Fractional downsampling in rfnoc</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hello Snehasish,
<div><br>
</div>
<div>Unfortunately, the standard library of blocks does not have a Fraction=
al Decimator. Your best bet is to try to use the one made by Synchronous La=
bs a few years ago. Their code is on github here:&nbsp;<a href=3D"https://g=
ithub.com/SynchronousLabs/rfnoc-SynchronousLabs">https://github.com/Synchro=
nousLabs/rfnoc-SynchronousLabs</a>.
 Since it was built, RFNoC has had some changes that will need to be fixed,=
 but I think this is your only option versus writing one from scratch.</div=
>
<div><br>
</div>
<div>Jonathon</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Thu, Apr 16, 2020 at 6:35 PM Sne=
hasish Kar via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
>usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hello&nbsp;</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">I am trying to use the RFNOC based M/2 channelizer from&nb=
sp;<a href=3D"https://github.com/theseus-cores/theseus-cores/releases/tag/v=
1.1.0" target=3D"_blank">https://github.com/theseus-cores/theseus-cores/rel=
eases/tag/v1.1.0</a>&nbsp;. I am trying to divide
 25 MHz spectrum into 124 subchannels each of bandwidth 200KHz. I am captur=
ing the signal at 200msps and I need to decimate it to 25.6msps(25MHz/128 c=
hannels).&nbsp;Please help me in understanding how this can be achieved usi=
ng RFNoC, is there=92s any block already
 defined for fractional downsampling.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks &amp; Regards&nbsp;</div>
<div dir=3D"ltr">Snehasish&nbsp;</div>
<div dir=3D"ltr"><br>
</div>
<div id=3D"x_gmail-m_-7099343062042280710ms-outlook-mobile-signature">Get <=
a href=3D"https://aka.ms/o0ukef" target=3D"_blank">
Outlook for iOS</a></div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_BM1PR01MB3348E7FFB839D85B8764750B88D90BM1PR01MB3348INDP_--


--===============4196924619950112519==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4196924619950112519==--

