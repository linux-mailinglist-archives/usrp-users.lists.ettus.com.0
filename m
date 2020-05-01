Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4474D1C115F
	for <lists+usrp-users@lfdr.de>; Fri,  1 May 2020 13:10:24 +0200 (CEST)
Received: from [::1] (port=44340 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jUTYh-0000TB-Sx; Fri, 01 May 2020 07:10:19 -0400
Received: from mail-oln040092254012.outbound.protection.outlook.com
 ([40.92.254.12]:6191 helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <snehasish.cse@live.com>)
 id 1jUTYd-0000MX-R2
 for usrp-users@lists.ettus.com; Fri, 01 May 2020 07:10:16 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YUV1YfrNmLNS28hex0I7hU6JSA6uMOQ8qglQzKSchONhG9xPLIsP3D+bl0NNzXoaV2tkf+13uqPCEefNGvxwEUiXW4jqrBrZ7812V/x2VxeEObSxGyeo63ERjj4O/6lDMPO2mLAkIeiyy8hRRkhxl7kZCmhoKjJcrZ8Q9QGMLYaQTFYvmmA7UCr7qE2htJEqTjg8vShnTqDqOo4e06y08/qeN+aRcBT1bcCRzjyCIwj+zWpBfNgnn+WvH5INt/K4nbFeuYkwZbUJi8ufe1ivlJDv6Glf+6xR77cxJYymAmWjC8pAkx+j0S2eCnT3upYv24fg8Y+sseC2fAbp1iAtrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gnDyn0GQCT42hz0Kt1vS5nEVkvHazKo/LKsy5QYy8Gw=;
 b=mP0OXzbOCtNKK0ZKV3TQkiEo/gywP/kQ82OTSTbk3QaeS2A6x/Nn2qyAnaTVbKwZj/ndO/GyIhh2ejzJTDjqJu7E6WCBl7BVeV505/c3hX7F+yoK4yBUdhXUbU+NzMUwfIiJUXKWTl/4w5p01DM59ad9GLV1gD0spqkINcgx9i3LA2PWt6M2g4ACPD27t0GNBWmr8YUniQF8wt7rNHsZxWrb3rpToDPmgZ+oeQmStfB9zFcy2l6rJbaFUVVGVz/t/5wUAFPT0DpP67dxKJb2uag73glknYJ91RCehKBnjJR2CGjSehKDrzfz2uX5R9sKorQdW6rSNtmOhieSsfcaOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gnDyn0GQCT42hz0Kt1vS5nEVkvHazKo/LKsy5QYy8Gw=;
 b=KI0AzFTI+uJ6B6hid4GeYg2yrBJyrpTfOYN/CgNw5BDBYIRS1CmvjMUdTeJVe2S/qDg6AWWAg1eLrPq8rbnbmxzCeoegGKEm15oiT8NmmN2Q86J6Me66HWHYo6XBc2kJBoM0LTVKqXd2HXNL3i9KKNWtajp73KqmoN9yYUkxBfrnn+4HPA0qkN4Whnp2y296bALyHIDSd8snWWkOswWnRSZfzww2YU5VqbxK+fKjVTl2au5yDd1Q1locffrOCJf1ypY73FLw+wTOsCeCUtdQmRPRmrlKN8jkhPtznejE4JIO3k4FrtK0JPD2l7qO9tagEFMugq1X2habf29sAfoZoQ==
Received: from PU1APC01FT041.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebe::48) by
 PU1APC01HT154.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebe::195)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19; Fri, 1 May
 2020 11:09:32 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM (10.152.252.57) by
 PU1APC01FT041.mail.protection.outlook.com (10.152.253.108) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.19 via Frontend Transport; Fri, 1 May 2020 11:09:31 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d]) by BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d%7]) with mapi id 15.20.2958.020; Fri, 1 May 2020
 11:09:30 +0000
To: EJ Kreinar <ejkreinar@gmail.com>
Thread-Topic: [USRP-users] Fractional downsampling in rfnoc
Thread-Index: AQHWFD4S3p9nAtH5HEib5hstP8Q0q6h9d92AgAH+gWyAAFZFgIAH5k7UgABxdACAABYjZoAD9ZiAgAb2ttE=
Date: Fri, 1 May 2020 11:09:30 +0000
Message-ID: <BM1PR01MB3348296DCB46F8E768C32D6188AB0@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
References: <BM1PR01MB33485647B95F4EB1A185B53E88D80@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81tGgXZQDNxq9FGViThnFkWE+3YSeLaebKrqP6OqCw1XvA@mail.gmail.com>
 <BM1PR01MB33488D7B9DC5AE9AF435234088D60@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81t1RpfgCAY24baDznFWJLM+i21eePoXObHiTAhqO27-FA@mail.gmail.com>
 <BM1PR01MB334874FD80DAE63A2212DC0288D00@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CADRnH22JnbOn46n7Qc4v+RXH4O+BU_WOaBUC=RuLZ1=Kr8z6Cw@mail.gmail.com>
 <BM1PR01MB33484E55A2AC021C9AB286CD88D00@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>,
 <CADRnH22h_Z=-92c0yZdyiietMX06mvFai2uvSQG6Li7o_ZPnCQ@mail.gmail.com>
In-Reply-To: <CADRnH22h_Z=-92c0yZdyiietMX06mvFai2uvSQG6Li7o_ZPnCQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:FAF19300B34E2C9B7E0976E07FE66787F15DFD6092FCD77C9CD6C4D137FEBF86;
 UpperCasedChecksum:DBBE401E2F8A7525004C2987D3CE131332F7B3D97FBE42DF45A95A0EA88F6E86;
 SizeAsReceived:7627; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [2R2U++iQ8b0aNl2Ne9NW8E54wogj3GF0]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: aa18ea91-62a7-4384-d166-08d7edc01f0a
x-ms-traffictypediagnostic: PU1APC01HT154:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ukOwVGOGLerls67qKE9fMaoE3l/T+FxBk40be4Qd2qe4tQqD/O3Hkn5JY52mb9VjzkJPJze/4aBNShGcySo9ScMKvHnZuTS8Z0Qt++9yGk7lBquyTLCRrxsmNx6HL5+ShG555w92TgEqIH2MGUvt2wT5zVMEjd4t6UpOxt5nBC5MxQFari00nTaCYIVKdjsPTG1go7WSzuu11tujD7WTYDnxNED3thffAYjnjsZLY1BTLoSSsidpzInDaBvqap/+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: SvY9+0EJT24Nm40yt2o8SQeawrQk/klwFO/6+ojJaVSNAFqFVN/TjBJnxdGd34wh9v4ux7nqym+tzpwOIFKwpu+bfC7YU2Ob9fbKwZSXjVGa0FxNrEQnlbqM9nOsnDxUxPiJoOxSu1jvhyLOSL292g==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: aa18ea91-62a7-4384-d166-08d7edc01f0a
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 11:09:30.3512 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT154
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
Content-Type: multipart/mixed; boundary="===============7082880723577114641=="
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

--===============7082880723577114641==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB3348296DCB46F8E768C32D6188AB0BM1PR01MB3348INDP_"

--_000_BM1PR01MB3348296DCB46F8E768C32D6188AB0BM1PR01MB3348INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello EJ

Just needed some information to use the channelizer. We are able to set 25.=
6msps as input rate to the channelizer and get 200kspsx2 each channel, also=
 we are able to decode GSM burst with it. But I am unable to get anything o=
n the negative side. Suppose I tune into 947.8MHz and try setting index 40(=
947.8MHz), I am able to get spectrum and able to decode GSM burst. But when=
 I try setting index 64 (935.2MHz) . I get a error message saying " WHOA! C=
ouldnt get requested  256 samples could get only 0, timeout on channel 0"

Please advice on how to choose index value for the negative frequencies.

Regards
Snehasish

________________________________
From: EJ Kreinar <ejkreinar@gmail.com>
Sent: Monday, April 27, 2020 6:09 AM
To: Snehasish Kar <snehasish.cse@live.com>
Cc: Jonathon Pendlum <jonathon.pendlum@ettus.com>; usrp-users@lists.ettus.c=
om <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Fractional downsampling in rfnoc

Hi Snehasish,

A few thoughts...

> 25msps and tried dividing it into 16 channels. I should have returned 625=
kspsx2 sample rate each channel

Based on your screen shot I'm guessing you started with 10 Msps and used 16=
 channels to get 625 kHz channel spacing (with 1250 ksps per channel). Is t=
hat correct?

> But you can see the snaphshots, if a tune into 955.4MHz and try to get a =
channel on index 0 ie the center freq, it works well and I am able to decod=
e GSM Burst from it. But if I try to add index 2(which is 955.8MHz), the am=
plitude in the spectrum falls and also I am not able to decode any GSM burs=
t

Is it correct that your "index 2" center frequency is targetting 400 kHz of=
fset from the center frequency? If so, I dont expect this would work. Using=
 a channel spacing of 625 kHz, the closest channel you could receive next t=
o 955.4 MHz would be 956.025 MHz. Based on your screenshot it actually seem=
s like the peak energy you're looking for may be lower than the channel fre=
quency by about 200 kHz?

This is one downside of the polyphase channelizer in this particular implem=
entation. The channel outputs are consistently spaced and cannot be changed=
 except by moving the sample rate, center frequency, or number of channels.

EJ

On Fri, Apr 24, 2020 at 8:31 AM Snehasish Kar <snehasish.cse@live.com<mailt=
o:snehasish.cse@live.com>> wrote:
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
From: EJ Kreinar <ejkreinar@gmail.com<mailto:ejkreinar@gmail.com>>
Sent: Friday, April 24, 2020 4:22 PM
To: Snehasish Kar <snehasish.cse@live.com<mailto:snehasish.cse@live.com>>
Cc: Jonathon Pendlum <jonathon.pendlum@ettus.com<mailto:jonathon.pendlum@et=
tus.com>>; USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com> <u=
srp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
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

--_000_BM1PR01MB3348296DCB46F8E768C32D6188AB0BM1PR01MB3348INDP_
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
Hello EJ <br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Just needed some information to use the channelizer. We are able to set 25.=
6msps as input rate to the channelizer and get 200kspsx2 each channel, also=
 we are able to decode GSM burst with it. But I am unable to get anything o=
n the negative side. Suppose I tune
 into 947.8MHz and try setting index 40(947.8MHz), I am able to get spectru=
m and able to decode GSM burst. But when I try setting index 64 (935.2MHz) =
. I get a error message saying &quot; WHOA! Couldnt get requested&nbsp; 256=
 samples could get only 0, timeout on channel
 0&quot;</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Please advice on how to choose index value for the negative frequencies.</d=
iv>
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> EJ Kreinar &lt;ejkrei=
nar@gmail.com&gt;<br>
<b>Sent:</b> Monday, April 27, 2020 6:09 AM<br>
<b>To:</b> Snehasish Kar &lt;snehasish.cse@live.com&gt;<br>
<b>Cc:</b> Jonathon Pendlum &lt;jonathon.pendlum@ettus.com&gt;; usrp-users@=
lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Fractional downsampling in rfnoc</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Snehasish,<br>
<br>
A few thoughts...<br>
<br>
&gt; 25msps and tried dividing it into 16 channels. I should have returned =
625kspsx2 sample rate each channel<br>
<br>
Based on your screen shot I'm guessing you started with 10 Msps and used 16=
 channels to get 625 kHz channel spacing (with 1250 ksps per channel). Is t=
hat correct?<br>
<br>
&gt; But you can see the snaphshots, if a tune into 955.4MHz and try to get=
 a channel on index 0 ie the center freq, it works well and I am able to de=
code GSM Burst from it. But if I try to add index 2(which is 955.8MHz), the=
 amplitude in the spectrum falls and
 also I am not able to decode any GSM burst<br>
<br>
Is it correct that your &quot;index 2&quot; center frequency is targetting =
400 kHz offset from the center frequency? If so, I dont expect this would w=
ork. Using a channel spacing of 625 kHz, the closest channel you could rece=
ive next to 955.4 MHz would be 956.025 MHz.
 Based on your screenshot it actually seems like the peak energy you're loo=
king for may be lower than the channel frequency by about 200 kHz?<br>
<div><br>
</div>
<div>This is one downside of the polyphase channelizer in this particular i=
mplementation. The channel outputs are consistently&nbsp;spaced and cannot =
be changed except by moving the sample rate, center frequency, or number of=
 channels.&nbsp;</div>
<div><br>
</div>
<div>EJ</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Fri, Apr 24, 2020 at 8:31 AM Sne=
hasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com">snehasish.cse@live=
.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
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
<div id=3D"x_gmail-m_6595891259048216248appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_6595891259048216248divRplyFwdMsg" dir=3D"ltr"><font fa=
ce=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>Fr=
om:</b> EJ Kreinar &lt;<a href=3D"mailto:ejkreinar@gmail.com" target=3D"_bl=
ank">ejkreinar@gmail.com</a>&gt;<br>
<b>Sent:</b> Friday, April 24, 2020 4:22 PM<br>
<b>To:</b> Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" targ=
et=3D"_blank">snehasish.cse@live.com</a>&gt;<br>
<b>Cc:</b> Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.co=
m" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt;;
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
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
olyphase-channelizer/" target=3D"_blank">https://www.theseus-cores.com/2019=
/12/17/rfnoc-deinterleaving-polyphase-channelizer/</a>).
 I believe this worked with UHD-3.14 when I tested last December. Wondering=
 if this works for you or if there's other updates you might need?</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">EJ</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Fri, Apr 24, 2020, 12:56 AM Snehasish Kar via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br>
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
I tried building the fractional downsampler again and was successful to bui=
ld it in this version of UHD: UHD 4.0.0.rfnoc-devel-409-gec9138eb. Also the=
re is a channelizer available at
<a href=3D"https://github.com/e33b1711/rfnoc-ppchan" id=3D"x_gmail-m_659589=
1259048216248x_m_4601514971204269138LPlnk680611" rel=3D"noreferrer" target=
=3D"_blank">
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
<div id=3D"x_gmail-m_6595891259048216248x_m_4601514971204269138appendonsend=
"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_6595891259048216248x_m_4601514971204269138divRplyFwdMs=
g" dir=3D"ltr">
<font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11p=
t"><b>From:</b> Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ett=
us.com" rel=3D"noreferrer" target=3D"_blank">jonathon.pendlum@ettus.com</a>=
&gt;<br>
<b>Sent:</b> Sunday, April 19, 2020 8:58 AM<br>
<b>To:</b> Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" rel=
=3D"noreferrer" target=3D"_blank">snehasish.cse@live.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer"=
 target=3D"_blank">
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" rel=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>&g=
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
abs/issues/2" rel=3D"noreferrer" target=3D"_blank">https://github.com/Synch=
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
=3D"mailto:snehasish.cse@live.com" rel=3D"noreferrer" target=3D"_blank">sne=
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
<div id=3D"x_gmail-m_6595891259048216248x_m_4601514971204269138x_gmail-m_-3=
53417754879076980appendonsend">
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_6595891259048216248x_m_4601514971204269138x_gmail-m_-3=
53417754879076980divRplyFwdMsg" dir=3D"ltr">
<font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11p=
t"><b>From:</b> Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ett=
us.com" rel=3D"noreferrer" target=3D"_blank">jonathon.pendlum@ettus.com</a>=
&gt;<br>
<b>Sent:</b> Friday, April 17, 2020 9:22 PM<br>
<b>To:</b> Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" rel=
=3D"noreferrer" target=3D"_blank">snehasish.cse@live.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer"=
 target=3D"_blank">
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" rel=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>&g=
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
ithub.com/SynchronousLabs/rfnoc-SynchronousLabs" rel=3D"noreferrer" target=
=3D"_blank">https://github.com/SynchronousLabs/rfnoc-SynchronousLabs</a>.
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
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
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
1.1.0" rel=3D"noreferrer" target=3D"_blank">https://github.com/theseus-core=
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
<div id=3D"x_gmail-m_6595891259048216248x_m_4601514971204269138x_gmail-m_-3=
53417754879076980x_gmail-m_-7099343062042280710ms-outlook-mobile-signature"=
>
Get <a href=3D"https://aka.ms/o0ukef" rel=3D"noreferrer" target=3D"_blank">=
Outlook for iOS</a></div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
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
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
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
</body>
</html>

--_000_BM1PR01MB3348296DCB46F8E768C32D6188AB0BM1PR01MB3348INDP_--


--===============7082880723577114641==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7082880723577114641==--

