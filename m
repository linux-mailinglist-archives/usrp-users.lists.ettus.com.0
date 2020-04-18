Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5B11AF554
	for <lists+usrp-users@lfdr.de>; Sun, 19 Apr 2020 00:22:19 +0200 (CEST)
Received: from [::1] (port=48140 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jPvqn-0001eF-VD; Sat, 18 Apr 2020 18:22:13 -0400
Received: from mail-oln040092254095.outbound.protection.outlook.com
 ([40.92.254.95]:45568 helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <snehasish.cse@live.com>)
 id 1jPvqj-0001aW-TD
 for usrp-users@lists.ettus.com; Sat, 18 Apr 2020 18:22:10 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aUUgeHl4cywUHyD05dfsQ5vP3wrei/9Je0m2yLGlYQF5AjG/IHoSH08Nw2t9pJJXhVad2pefFnqweIXw26Dg8/S37bY8VwqcASRlDw271UdvXJy0VKdrFKycFaTXH37e4J67BqjhcVd5Dt/g4x81PKXF45StCZF42gc7J6PTFsHbnFfsIx9kPQ98EjL9gjSYZKdut0g8Q/DZl4BR9t8m+1q/FM24ci6lCAjpMLtNEvF5p0dErJkyl+sIQYeA1wJQ3EXV9ZEVKIt/Yla0HRpA4m6zc7FWYhANp2TV2nqHURd3jJ1veGqpl6A7dtpxByEboSrXcEVysoD3LqswVEm++w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lajrkT6PUsGKcNZeo7BBoeKM4S2Eficeckkc6oKs+FM=;
 b=MnCusfCGLHDYQe7iouIhhB0RZGHnqwewmnl4kTphMBPsors9O+oGyRzOCePtZJYH27cmRNm0ycp5CxvtuYGfjgxa6EJI2JqNUEwLcQrOtxiQQcD7PfbXRD8LlWPyt5mvQ3F0og1i33WmFW9ANtcQr7Jm2O0VhTelXq2zxVhsPwsM3kyYcyQ8jRjHSyBsykqkz4vq0qCg7St5/sZo7sxQSwO/1v0UTNi2g5Xq4lCs3Cw4dCBHsuTwTsevFMcdNjfaTEyctMYJxMsqPsQKV1H96JLRq/rbGdeY1uz1LEEZxjqF2gulVMWwcB60Q0HA1wmBl0FhNVGcg+oNYWdgG4K6kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lajrkT6PUsGKcNZeo7BBoeKM4S2Eficeckkc6oKs+FM=;
 b=Uqnd5KQrGf30zy4VkbBsQu/RvGUa96XdAIPd7kzXkUgyUzlK7ssDSCFz2gVs09aO5HAH0kvWk0A0sRKXvQDYVhpqDiNnWVyCggrUi2oz3+FhPVOQZULX1UcyQB2X2uzJzxrri8pk2StvbPlw6qomVFoG0ADdI6INHrjih3xUe7I6Nya7I7tZ8Rk1IeOBd2Z1apHsK7KmQDODJZtIL3DXyrs1lSBsaajYn8uLFYSJAhJlv1FKQuWq0HKuT1yL+43M9J/FVvppgLHKSQiib2kdEh3OukLCsSHpv0Le5hcrXI0CtA462JBwrelAlFK6bUEjYVSQ7r690l4jZfG2EmAfKA==
Received: from SG2APC01FT063.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebd::43) by
 SG2APC01HT059.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebd::263)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Sat, 18 Apr
 2020 22:21:25 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM (10.152.250.59) by
 SG2APC01FT063.mail.protection.outlook.com (10.152.251.186) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.25 via Frontend Transport; Sat, 18 Apr 2020 22:21:25 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d]) by BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d%7]) with mapi id 15.20.2921.027; Sat, 18 Apr 2020
 22:21:25 +0000
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Thread-Topic: [USRP-users] Fractional downsampling in rfnoc
Thread-Index: AQHWFD4S3p9nAtH5HEib5hstP8Q0q6h9d92AgAH+gWw=
Date: Sat, 18 Apr 2020 22:21:25 +0000
Message-ID: <BM1PR01MB33488D7B9DC5AE9AF435234088D60@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
References: <BM1PR01MB33485647B95F4EB1A185B53E88D80@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>,
 <CAL7q81tGgXZQDNxq9FGViThnFkWE+3YSeLaebKrqP6OqCw1XvA@mail.gmail.com>
In-Reply-To: <CAL7q81tGgXZQDNxq9FGViThnFkWE+3YSeLaebKrqP6OqCw1XvA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:59F61E113FA2C2E0E91DEEA2900304867727E30404D7C103CECE98A0E5965CFC;
 UpperCasedChecksum:8D2A87E715CD6E4FF2D3EBFCA46ECBAF9EED05DFB1C61580BDF5115928347AB3;
 SizeAsReceived:7068; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [y/uOxdjyuTh5ZhiOTSFFKnXxm36dLBlc]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: f2217a71-4fdb-48ae-c771-08d7e3e6d546
x-ms-traffictypediagnostic: SG2APC01HT059:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZM24e5qnudVXuck1CKH4Gb1GA4TJ6GjHinC6JlDpxe6mV7DgkdSYEZVx7417qD8t0ob8c8bmFedZkvpadwmpalT2K8ZbhJhzuat5DUYLtUDCmGm7ZPE+e+koCR4tBKS7NyOQsIZ2y4H6KbtMIrtquMbRIGGQLWjSu/eUhHwTKOV8UmKM9N/X1itEn31bAGFWOgaV9TvuFGDEUshFIMizBdML829rsjeo57CPU5XYDejLkV1YOPf5gWdf7PjpMs3K
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: H/LcutQs9E99aKr+QPbJ+QYQB58Xqb2lWU3584fqY4xzuSYw7X8yrnUebVGPj9cs58izceKif42MUqeLcZrB7YDLPq8VmJSjvPJP0K3ojkRHKzg+cu3Dfu29A8PBxfTJi9yf8ceCxrOCl+8lbHBvTQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f2217a71-4fdb-48ae-c771-08d7e3e6d546
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2020 22:21:25.5533 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT059
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
Content-Type: multipart/mixed; boundary="===============6081944126273604408=="
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

--===============6081944126273604408==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB33488D7B9DC5AE9AF435234088D60BM1PR01MB3348INDP_"

--_000_BM1PR01MB33488D7B9DC5AE9AF435234088D60BM1PR01MB3348INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello Jonathon

Tried building the fractional downsampler from synchronous labs and have en=
countered the following error:
source file was generated for simulation and is not permitted as input to s=
ynthesis [/home/snehasish/rfnoc-SynchronousLabs/rfnoc/fpga-src/fract_dec_fi=
lter.vhd:241995]

Can you please help me with it.

Regards
Snehasish
________________________________
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Sent: Friday, April 17, 2020 9:22 PM
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

--_000_BM1PR01MB33488D7B9DC5AE9AF435234088D60BM1PR01MB3348INDP_
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
Hello Jonathon <br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Tried building the fractional downsampler from synchronous labs and have en=
countered the following error:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span>source file was generated for simulation and is not permitted as inpu=
t to synthesis [/home/snehasish/rfnoc-SynchronousLabs/rfnoc/fpga-src/fract_=
dec_filter.vhd:241995]</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Can you please help me with it.<br>
<span></span><span></span></div>
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
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jonathon Pendlum &lt;=
jonathon.pendlum@ettus.com&gt;<br>
<b>Sent:</b> Friday, April 17, 2020 9:22 PM<br>
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

--_000_BM1PR01MB33488D7B9DC5AE9AF435234088D60BM1PR01MB3348INDP_--


--===============6081944126273604408==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6081944126273604408==--

