Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFF31AFE4B
	for <lists+usrp-users@lfdr.de>; Sun, 19 Apr 2020 23:06:42 +0200 (CEST)
Received: from [::1] (port=51374 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jQH8z-0002j8-NN; Sun, 19 Apr 2020 17:06:25 -0400
Received: from mail-oln040092253027.outbound.protection.outlook.com
 ([40.92.253.27]:6290 helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <snehasish.cse@live.com>)
 id 1jQH8u-0002eI-Mb
 for usrp-users@lists.ettus.com; Sun, 19 Apr 2020 17:06:21 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KVdsOCW6++a8dTcwFt+mlPUcBtd63eRXrbnDfTy8DiWiebaN1ENP8bqzSUEj4+av8kFG0EE+zUo8kjbfic8+xUhhWAMiH07U/yQWC8CsRCE7M7/po+Wit5OlPb+ODdCzw6MuJTJKBkyKdqov1MwMae6R8B68Hxn35YQYEDDfAGUD46FQKh/Ir8KPSfLuojA8B3TPstYk6Zzrl7KV3l4nthR9lquBlZWqUWnKHDw3+fJfpzsKfn0LcGlrUPcFB3P/arPtrjbM/uFcxwwERrVjHfCGflCU3B+QX4wwYP/PZNJ+/T7+kLygr30tl1M6pWGPOHgILVdW8tD7XMF/hXf/bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VUKeii24N4o/S43hEW0TUquywLwH7WZ9LuZgu1sTm1I=;
 b=UZ4RYNq/fVpdBf0ShlIrGX5pIL0QPbyryy04ffD4lhpJBGo9Zmi3cEcHFBCE45YFk3APJgldCqwbCBWfiYHyoghuuzcvtIXBNvwsXkj5ycBDMrbKNargULBVyge+oICjz0bFfvpRx6KPyiM0ruagbIRWHXSkMTWof/CkC6k82jco5zpT8ShHaTsI/gLjmAJdeWubRBM8TUoNZNLv7R/yOxT0xsvER8IjGO1dAWX6Qz2HnaqTgyBFsyJOEXqouMR/suTtpd/LVTGv2bWnJv/z+hSO2H62fVVh37M3uo47f3+6U3n2xb3CIIcMqN0vUQuS1ePBjRM7RtaF3xGkF0o3Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VUKeii24N4o/S43hEW0TUquywLwH7WZ9LuZgu1sTm1I=;
 b=rHysDi27p764vIKdpRn2/iJBrygOeRiBgLYPh2ZPcv7pNH3SKvCaCUClKAieAKqIzl6gPwhGrrEcY2FALMs4c5sp3CVWugWuQJluS0vU0NQNEbHkOFBXc0gb3ean1j+xK9E/QdsCH3A5QQMPz4ANEBWFsWPY7Ni53fE/qZRuKiMv1ajfZra9NGs0sjBGvvvICw8aqsV4LSSRPllNAIulM+7pYNyYIiCRHKJrTNzNcOTDnloo9bPs/DJzuGVG8PfUXmfZ8pmp3NNw5NSUDq2f+2hTgn5w7wWXERNWkz5wm1XdHiYluCf/CzW30UM/Wt3dWW4dxDKImyAbmT1NaMVuhQ==
Received: from PU1APC01FT061.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebe::43) by
 PU1APC01HT196.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebe::408)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Sun, 19 Apr
 2020 21:05:36 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM (10.152.252.51) by
 PU1APC01FT061.mail.protection.outlook.com (10.152.253.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.25 via Frontend Transport; Sun, 19 Apr 2020 21:05:36 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d]) by BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d%7]) with mapi id 15.20.2921.027; Sun, 19 Apr 2020
 21:05:36 +0000
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Thread-Topic: [USRP-users] Fractional downsampling in rfnoc
Thread-Index: AQHWFD4S3p9nAtH5HEib5hstP8Q0q6h9d92AgAH+gWyAAFZFgIABJz9Z
Date: Sun, 19 Apr 2020 21:05:36 +0000
Message-ID: <BM1PR01MB33480770395F326829E72FCE88D70@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
References: <BM1PR01MB33485647B95F4EB1A185B53E88D80@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81tGgXZQDNxq9FGViThnFkWE+3YSeLaebKrqP6OqCw1XvA@mail.gmail.com>
 <BM1PR01MB33488D7B9DC5AE9AF435234088D60@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>,
 <CAL7q81t1RpfgCAY24baDznFWJLM+i21eePoXObHiTAhqO27-FA@mail.gmail.com>
In-Reply-To: <CAL7q81t1RpfgCAY24baDznFWJLM+i21eePoXObHiTAhqO27-FA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:60231C636CBC20AD993F2BF9332C315A6D35A4D30B805FC352B6720902AE0716;
 UpperCasedChecksum:F58FFFD15669B2007D056C78D2872A975FC9E2998DCB66E4ABE09F567D2B21FE;
 SizeAsReceived:7225; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [FlCJ4Frcsnf3D9NuhgYfiU/AuktZc56F]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: e8bd4459-abe5-48f7-4a1f-08d7e4a56833
x-ms-traffictypediagnostic: PU1APC01HT196:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sS6w9+AI6Sx8C3LwwK319G0vGXZgf57XXNfUG2OUIhZ/YxKlA5rS/wc7HkxiD/7NoA3/wIuqX16AAP5URhMjaIImr32Z68je2MO6x3U8cFs5ImU4PYKV8xd01Oarlzu01MgbiN7d9FMx5x0tGZklWgMn+mcO23QVA2xlu4v36C3klBKs5B+rbTmDnpWA5/gR7I9ZhifPSy8Jzy2iFJcPgND6AmxUv1lJMAmOYQ/5Yt60o5Z9UIzZRTBypupLNtVM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: 6Gw+LFk6ImorWfEatGqlFlJNnriEd7ltEE88g+6v8Xa+PXhZ2XDuw8Y8hv/kqFdA1lY2TcMvmN4SFJoXxhFKgckeUHrTMR3vdFCg3BDmAuKrDviqP68s/JFcebBnuljcP1Lc5HxVnSbvekrQ34laVg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: e8bd4459-abe5-48f7-4a1f-08d7e4a56833
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2020 21:05:36.4723 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT196
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
Content-Type: multipart/mixed; boundary="===============7011827836501473290=="
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

--===============7011827836501473290==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB33480770395F326829E72FCE88D70BM1PR01MB3348INDP_"

--_000_BM1PR01MB33480770395F326829E72FCE88D70BM1PR01MB3348INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Anyway thanks for the help Jonathon

Regards
Snehasish
________________________________
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Sent: Sunday, April 19, 2020 8:58 AM
To: Snehasish Kar <snehasish.cse@live.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
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

--_000_BM1PR01MB33480770395F326829E72FCE88D70BM1PR01MB3348INDP_
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
Anyway thanks for the help Jonathon</div>
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
<b>Sent:</b> Sunday, April 19, 2020 8:58 AM<br>
<b>To:</b> Snehasish Kar &lt;snehasish.cse@live.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Fractional downsampling in rfnoc</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Snehasish,
<div><br>
</div>
<div>I forgot about that error. I actually made an issue about it on their =
repo:&nbsp;<a href=3D"https://github.com/SynchronousLabs/rfnoc-SynchronousL=
abs/issues/2">https://github.com/SynchronousLabs/rfnoc-SynchronousLabs/issu=
es/2</a>. Unless they provide an EDIF or
 their source code, you can only use their code for simulation. Certainly a=
 disappointing oversight on their part.</div>
<div><br>
</div>
<div>Jonathon</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Sat, Apr 18, 2020 at 6:21 PM Sne=
hasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com">snehasish.cse@live=
.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
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
<div id=3D"x_gmail-m_-353417754879076980appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_-353417754879076980divRplyFwdMsg" dir=3D"ltr"><font fa=
ce=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>Fr=
om:</b> Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" =
target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt;<br>
<b>Sent:</b> Friday, April 17, 2020 9:22 PM<br>
<b>To:</b> Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" targ=
et=3D"_blank">snehasish.cse@live.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
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
ithub.com/SynchronousLabs/rfnoc-SynchronousLabs" target=3D"_blank">https://=
github.com/SynchronousLabs/rfnoc-SynchronousLabs</a>.
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
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp=
-users@lists.ettus.com</a>&gt; wrote:<br>
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
<div id=3D"x_gmail-m_-353417754879076980x_gmail-m_-7099343062042280710ms-ou=
tlook-mobile-signature">
Get <a href=3D"https://aka.ms/o0ukef" target=3D"_blank">Outlook for iOS</a>=
</div>
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
</div>
</blockquote>
</div>
</div>
</body>
</html>

--_000_BM1PR01MB33480770395F326829E72FCE88D70BM1PR01MB3348INDP_--


--===============7011827836501473290==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7011827836501473290==--

