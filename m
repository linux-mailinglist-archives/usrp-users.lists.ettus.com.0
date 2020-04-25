Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4761B866E
	for <lists+usrp-users@lfdr.de>; Sat, 25 Apr 2020 14:19:03 +0200 (CEST)
Received: from [::1] (port=37198 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jSJlp-0005B7-TU; Sat, 25 Apr 2020 08:18:57 -0400
Received: from mail-oln040092253048.outbound.protection.outlook.com
 ([40.92.253.48]:33967 helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <snehasish.cse@live.com>)
 id 1jSJll-0004vn-8H
 for usrp-users@lists.ettus.com; Sat, 25 Apr 2020 08:18:53 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W3l1gJYnv/kyzxSed49+sncbDCD78XRoUyDUCZaNIJjCcz4pqkdnFa3MZpM3LGWTFXFFNPcxLwKmQMFVkVfv/le7Z7k6Yeb0ry7JsPbd9yJeRYlxX/fNGIxVJrpa3BrK60WlIJWl6FpjnLNqbCbNH0pYCNIQYkLaWaQ47X7jUevefHEEARk3psM2tlrgmGlS4EH7HuIi0/AwGtldpuU4uBdSNjHceihGq0NNpe5WyY0m2QaMDtGbck/k8mAD7PNiwZ5wgq9VSqgx6jjedcemcSDawI7UGwyriFakLxw5E3MArHcZIBK3fu4wnAODOaxVVN0PVQ95iQAnY9o2w6hNRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QG7xmbB6NrWZHBr4bJV8p+Eh7h/hVRoI8W4aBblEiPM=;
 b=BbSw23zSaL8JLvfNnbPtv4J7kuFlawr+3adAdIsXV1JxAti3DD3hKE4wRuQpjsSsiXrY6Gx0ubIkNyMqU6TFxZktXrU6srDG0R6UYIOVSZ9R2zz2RXvGnSkI73v/Ns0cD5tW6BuqTWvxYM2eLr/jC8gjhuGBJaIgGv8CkMF4jn/Zg609i1EAL+uLXpqcWE3/V5eUUS0U8EGc8nz1zkEfFJgJg91S0YQ7AVkynZDavVkM2YnWy3HacOdysUcWS0S62/74f5sbW6M/LPO7bQmhPiSfJ+xN5jP2dtrB9/VAtqjirJCIB5YOYqzXoA0tcgjr2NqlUctFpThOQ+Ea3TVpOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QG7xmbB6NrWZHBr4bJV8p+Eh7h/hVRoI8W4aBblEiPM=;
 b=g4em5wrcsb2Cj6GssM9tAiL9aNMqNdBXSCQtztOggw29yUqfHw9gIz1jvNvhTO/6sA1QxCOfxuDFwj6eSnoHfiIl3X7TSi1Y3HdfN+pF3PInyG54DOleAGYx97QWsb3umi59aqNrqe7Vrx5tnQg1BEdrz1BHjYgULkYNTOYxLYbd1xRLQkxHLj9ueVPSbxTzQ3azu+3eLIiZ7QYW8o1SlyO+yzIS5B30NcQCRPVOCxVxcAyuZH0f1uISsldtq68Yc0GCZWdwkeLmUxpH/qRbQPBups2VQ8ZAwVUYS7qFBDmXdfrgFvchya3EuvxbFON0rsNggEfvBgj2rfayaIHF7w==
Received: from HK2APC01FT003.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::51) by
 HK2APC01HT006.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::116)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sat, 25 Apr
 2020 12:18:08 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM (10.152.248.53) by
 HK2APC01FT003.mail.protection.outlook.com (10.152.248.173) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.15 via Frontend Transport; Sat, 25 Apr 2020 12:18:08 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d]) by BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d%7]) with mapi id 15.20.2937.020; Sat, 25 Apr 2020
 12:18:07 +0000
To: EJ Kreinar <ejkreinar@gmail.com>
Thread-Topic: [USRP-users] Fractional downsampling in rfnoc
Thread-Index: AQHWFD4S3p9nAtH5HEib5hstP8Q0q6h9d92AgAH+gWyAAFZFgIAH5k7UgABxdACAABYjZoABk+tc
Date: Sat, 25 Apr 2020 12:18:07 +0000
Message-ID: <BM1PR01MB33489C57EB8AED0CF374E34A88D10@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
References: <BM1PR01MB33485647B95F4EB1A185B53E88D80@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81tGgXZQDNxq9FGViThnFkWE+3YSeLaebKrqP6OqCw1XvA@mail.gmail.com>
 <BM1PR01MB33488D7B9DC5AE9AF435234088D60@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81t1RpfgCAY24baDznFWJLM+i21eePoXObHiTAhqO27-FA@mail.gmail.com>
 <BM1PR01MB334874FD80DAE63A2212DC0288D00@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>,
 <CADRnH22JnbOn46n7Qc4v+RXH4O+BU_WOaBUC=RuLZ1=Kr8z6Cw@mail.gmail.com>,
 <BM1PR01MB33484E55A2AC021C9AB286CD88D00@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR01MB33484E55A2AC021C9AB286CD88D00@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:923C74CBAC62E83A6DA68F0A2AA87A89467D83E0C0BFC7EE8484E56906A1C166;
 UpperCasedChecksum:E3E63543468BF2C2FB87CF8825FF1050468E4BE6AFF4801408A2A96991EC3D4F;
 SizeAsReceived:7544; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [y1ntkl3S1edPxT3Zv7GHY7jKb3STAqnf]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 14c0a9a2-6224-471c-4a30-08d7e912b6aa
x-ms-traffictypediagnostic: HK2APC01HT006:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0Wo3iOLv4t6b0WHbu3+mKs1bAHcZztMMs8CPlvhs81pvAntWjLreFB7aGaVBEiYJ2ge0ZOkWegqiqSwaKwkz0bSkbpjCSO2yoblkQknL6tAgoNo2+Ynd8uPp36cxhcHb8sHQKPyirQesRW3oXdlw2pWERbb78/+S08MWnIWr5IA+LNPRsusH06r+qIqpn+LmjME5DHitr4Ck65x4CRZ+cp7fRzetVw13xTMw9eYdU89pP+9aGhWuVpMFf8dY4Toe
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: YENcZUf20xmXEjA0Rr1TIKV6V7+OusopJ7IHeWtK8KK8ulnCRhtKEsEucst8DFr1wGdgBFUddd6dSCZ0UIMRzyGNrCGiLAO0fheQQlx599HFJ0/3OT3cdOKK17z4JcLC8/fiXdOR8SQ4uKc/sA6F/g==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 14c0a9a2-6224-471c-4a30-08d7e912b6aa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2020 12:18:07.8861 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT006
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
Content-Type: multipart/mixed; boundary="===============7846481537502256858=="
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

--===============7846481537502256858==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB33489C57EB8AED0CF374E34A88D10BM1PR01MB3348INDP_"

--_000_BM1PR01MB33489C57EB8AED0CF374E34A88D10BM1PR01MB3348INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello EJ

Any update on this?

Regards
Snehasish

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Snehasish Kar <snehasish.cse@live.com>
Sent: Friday, April 24, 2020 6:01:27 PM
To: EJ Kreinar <ejkreinar@gmail.com>
Cc: Jonathon Pendlum <jonathon.pendlum@ettus.com>; usrp-users@lists.ettus.c=
om <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Fractional downsampling in rfnoc

Hello EJ

I tried using your channelizer. Its really a helpful module. The challenge =
I faced when i tried using it with a input sample rate of 25msps and tried =
dividing it into 16 channels. I should have returned 625kspsx2 sample rate =
each channel. But you can see the snaphshots, if a tune into 955.4MHz and t=
ry to get a channel on index 0 ie the center freq, it works well and I am a=
ble to decode GSM Burst from it. But if I try to add index 2(which is 955.8=
MHz), the amplitude in the spectrum falls and also I am not able to decode =
any GSM burst. The same happens when i tune 955.8MHz and try to get index  =
14(ie 955.4MHz), I don't see the spectrum, the same happens for 128 and 256=
 channel (input sample rate 50msps). Can you please let me know if I am goi=
ng wrong somewhere.   I have attached the snapshots and flow graph for your=
 reference. My uhd version is UHD_3.14.0.0-0-unknown.

Regards
Snehasish


________________________________
From: EJ Kreinar <ejkreinar@gmail.com>
Sent: Friday, April 24, 2020 4:22 PM
To: Snehasish Kar <snehasish.cse@live.com>
Cc: Jonathon Pendlum <jonathon.pendlum@ettus.com>; USRP-users@lists.ettus.c=
om <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Fractional downsampling in rfnoc

Hi Snehasish,

Since you're already working with theseus-cores, I assume you've found the =
rfnoc polyphase channelizer has channel downselection already integrated in=
to rfnoc and gnuradio (brief write up about it here: https://www.theseus-co=
res.com/2019/12/17/rfnoc-deinterleaving-polyphase-channelizer/). I believe =
this worked with UHD-3.14 when I tested last December. Wondering if this wo=
rks for you or if there's other updates you might need?

EJ

On Fri, Apr 24, 2020, 12:56 AM Snehasish Kar via USRP-users <usrp-users@lis=
ts.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hello Jonathon

I tried building the fractional downsampler again and was successful to bui=
ld it in this version of UHD: UHD 4.0.0.rfnoc-devel-409-gec9138eb. Also the=
re is a channelizer available at https://github.com/e33b1711/rfnoc-ppchan .=
 But the problem with this channelizer is, it sends almost 25.6msps samples=
 to the host. Also the number of packet it sends, creates a overflow in the=
 host even with 10gig sfp cable. So what I am planning is to make a de-inte=
rleaver, which will be responsible for channel down-selection. Please let m=
e know your thoughts on this.

Can you please let me know how to set the packet size on any rfnoc block.

Regards
Snehasish
________________________________
From: Jonathon Pendlum <jonathon.pendlum@ettus.com<mailto:jonathon.pendlum@=
ettus.com>>
Sent: Sunday, April 19, 2020 8:58 AM
To: Snehasish Kar <snehasish.cse@live.com<mailto:snehasish.cse@live.com>>
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: Re: [USRP-users] Fractional downsampling in rfnoc

Hi Snehasish,

I forgot about that error. I actually made an issue about it on their repo:=
 https://github.com/SynchronousLabs/rfnoc-SynchronousLabs/issues/2. Unless =
they provide an EDIF or their source code, you can only use their code for =
simulation. Certainly a disappointing oversight on their part.

Jonathon

On Sat, Apr 18, 2020 at 6:21 PM Snehasish Kar <snehasish.cse@live.com<mailt=
o:snehasish.cse@live.com>> wrote:
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
From: Jonathon Pendlum <jonathon.pendlum@ettus.com<mailto:jonathon.pendlum@=
ettus.com>>
Sent: Friday, April 17, 2020 9:22 PM
To: Snehasish Kar <snehasish.cse@live.com<mailto:snehasish.cse@live.com>>
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
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
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_BM1PR01MB33489C57EB8AED0CF374E34A88D10BM1PR01MB3348INDP_
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
<div>Hello EJ</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Any update on this?</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards&nbsp;</div>
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
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Snehasish Kar &lt;sne=
hasish.cse@live.com&gt;<br>
<b>Sent:</b> Friday, April 24, 2020 6:01:27 PM<br>
<b>To:</b> EJ Kreinar &lt;ejkreinar@gmail.com&gt;<br>
<b>Cc:</b> Jonathon Pendlum &lt;jonathon.pendlum@ettus.com&gt;; usrp-users@=
lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Fractional downsampling in rfnoc</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Hello EJ</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I tried using your channelizer. Its really a helpful module. The challenge =
I faced when i tried using it with a input sample rate of 25msps and tried =
dividing it into 16 channels. I should have returned 625kspsx2 sample rate =
each channel. But you can see the
 snaphshots, if a tune into 955.4MHz and try to get a channel on index 0 ie=
 the center freq, it works well and I am able to decode GSM Burst from it. =
But if I try to add index 2(which is 955.8MHz), the amplitude in the spectr=
um falls and also I am not able
 to decode any GSM burst. The same happens when i tune&nbsp;955.8MHz and tr=
y to get index&nbsp; 14(ie 955.4MHz), I don't see the spectrum, the same ha=
ppens for 128 and 256 channel (input sample rate 50msps). Can you please le=
t me know if I am going wrong somewhere. &nbsp;
 I have attached the snapshots and flow graph for your reference. My uhd ve=
rsion is UHD_3.14.0.0-0-unknown.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Regards</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Snehasish<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> EJ Kreinar &lt;ejkr=
einar@gmail.com&gt;<br>
<b>Sent:</b> Friday, April 24, 2020 4:22 PM<br>
<b>To:</b> Snehasish Kar &lt;snehasish.cse@live.com&gt;<br>
<b>Cc:</b> Jonathon Pendlum &lt;jonathon.pendlum@ettus.com&gt;; USRP-users@=
lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Fractional downsampling in rfnoc</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"auto">Hi Snehasish,
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Since you're already working with theseus-cores, I assume=
 you've found the rfnoc polyphase channelizer has channel downselection alr=
eady integrated into rfnoc and gnuradio (brief write up about it here:&nbsp=
;<a href=3D"https://www.theseus-cores.com/2019/12/17/rfnoc-deinterleaving-p=
olyphase-channelizer/">https://www.theseus-cores.com/2019/12/17/rfnoc-deint=
erleaving-polyphase-channelizer/</a>).
 I believe this worked with UHD-3.14 when I tested last December. Wondering=
 if this works for you or if there's other updates you might need?</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">EJ</div>
</div>
<br>
<div class=3D"x_x_gmail_quote">
<div dir=3D"ltr" class=3D"x_x_gmail_attr">On Fri, Apr 24, 2020, 12:56 AM Sn=
ehasish Kar via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_x_gmail_quote" style=3D"margin:0 0 0 .8ex; border-le=
ft:1px #ccc solid; padding-left:1ex">
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
I tried building the fractional downsampler again and was successful to bui=
ld it in this version of UHD: UHD 4.0.0.rfnoc-devel-409-gec9138eb. Also the=
re is a channelizer available at
<a href=3D"https://github.com/e33b1711/rfnoc-ppchan" id=3D"x_x_m_4601514971=
204269138LPlnk680611" target=3D"_blank" rel=3D"noreferrer">
https://github.com/e33b1711/rfnoc-ppchan</a><b> </b>. But the problem with =
this channelizer is, it sends almost 25.6msps samples to the host. Also the=
 number of packet it sends, creates a overflow in the host even with 10gig =
sfp cable. So what I am planning
 is to make a de-interleaver, which will be responsible for channel down-se=
lection. Please let me know your thoughts on this.<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Can you please let me know how to set the packet size on any rfnoc block.</=
div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Regards</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Snehasish<br>
</div>
<div id=3D"x_x_m_4601514971204269138appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_x_m_4601514971204269138divRplyFwdMsg" dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From=
:</b> Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">jonathon.pendlum@ettus.com</a>&gt;<br>
<b>Sent:</b> Sunday, April 19, 2020 8:58 AM<br>
<b>To:</b> Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" targ=
et=3D"_blank" rel=3D"noreferrer">snehasish.cse@live.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" =
rel=3D"noreferrer">
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&g=
t;<br>
<b>Subject:</b> Re: [USRP-users] Fractional downsampling in rfnoc</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Snehasish,
<div><br>
</div>
<div>I forgot about that error. I actually made an issue about it on their =
repo:&nbsp;<a href=3D"https://github.com/SynchronousLabs/rfnoc-SynchronousL=
abs/issues/2" target=3D"_blank" rel=3D"noreferrer">https://github.com/Synch=
ronousLabs/rfnoc-SynchronousLabs/issues/2</a>.
 Unless they provide an EDIF or their source code, you can only use their c=
ode for simulation. Certainly a disappointing oversight on their part.</div=
>
<div><br>
</div>
<div>Jonathon</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Sat, Apr 18, 2020 at 6:21 PM Snehasish Kar &lt;<a href=
=3D"mailto:snehasish.cse@live.com" target=3D"_blank" rel=3D"noreferrer">sne=
hasish.cse@live.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
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
Tried building the fractional downsampler from synchronous labs and have en=
countered the following error:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<span>source file was generated for simulation and is not permitted as inpu=
t to synthesis [/home/snehasish/rfnoc-SynchronousLabs/rfnoc/fpga-src/fract_=
dec_filter.vhd:241995]</span></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Can you please help me with it.<br>
<span></span><span></span></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Regards</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Snehasish<br>
</div>
<div id=3D"x_x_m_4601514971204269138x_gmail-m_-353417754879076980appendonse=
nd"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_x_m_4601514971204269138x_gmail-m_-353417754879076980divRplyFwd=
Msg" dir=3D"ltr">
<font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11p=
t"><b>From:</b> Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ett=
us.com" target=3D"_blank" rel=3D"noreferrer">jonathon.pendlum@ettus.com</a>=
&gt;<br>
<b>Sent:</b> Friday, April 17, 2020 9:22 PM<br>
<b>To:</b> Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" targ=
et=3D"_blank" rel=3D"noreferrer">snehasish.cse@live.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" =
rel=3D"noreferrer">
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&g=
t;<br>
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
ithub.com/SynchronousLabs/rfnoc-SynchronousLabs" target=3D"_blank" rel=3D"n=
oreferrer">https://github.com/SynchronousLabs/rfnoc-SynchronousLabs</a>.
 Since it was built, RFNoC has had some changes that will need to be fixed,=
 but I think this is your only option versus writing one from scratch.</div=
>
<div><br>
</div>
<div>Jonathon</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Thu, Apr 16, 2020 at 6:35 PM Snehasish Kar via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=
=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hello&nbsp;</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">I am trying to use the RFNOC based M/2 channelizer from&nb=
sp;<a href=3D"https://github.com/theseus-cores/theseus-cores/releases/tag/v=
1.1.0" target=3D"_blank" rel=3D"noreferrer">https://github.com/theseus-core=
s/theseus-cores/releases/tag/v1.1.0</a>&nbsp;. I am
 trying to divide 25 MHz spectrum into 124 subchannels each of bandwidth 20=
0KHz. I am capturing the signal at 200msps and I need to decimate it to 25.=
6msps(25MHz/128 channels).&nbsp;Please help me in understanding how this ca=
n be achieved using RFNoC, is there=92s
 any block already defined for fractional downsampling.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks &amp; Regards&nbsp;</div>
<div dir=3D"ltr">Snehasish&nbsp;</div>
<div dir=3D"ltr"><br>
</div>
<div id=3D"x_x_m_4601514971204269138x_gmail-m_-353417754879076980x_gmail-m_=
-7099343062042280710ms-outlook-mobile-signature">
Get <a href=3D"https://aka.ms/o0ukef" target=3D"_blank" rel=3D"noreferrer">=
Outlook for iOS</a></div>
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
</div>
</body>
</html>

--_000_BM1PR01MB33489C57EB8AED0CF374E34A88D10BM1PR01MB3348INDP_--


--===============7846481537502256858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7846481537502256858==--

