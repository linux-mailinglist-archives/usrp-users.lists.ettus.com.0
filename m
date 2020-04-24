Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B991B6CD4
	for <lists+usrp-users@lfdr.de>; Fri, 24 Apr 2020 06:56:38 +0200 (CEST)
Received: from [::1] (port=56480 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jRqOB-0003dl-T5; Fri, 24 Apr 2020 00:56:35 -0400
Received: from mail-oln040092253102.outbound.protection.outlook.com
 ([40.92.253.102]:7204 helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <snehasish.cse@live.com>)
 id 1jRqO7-0003XX-5x
 for usrp-users@lists.ettus.com; Fri, 24 Apr 2020 00:56:31 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YObA8y1OJSQX2JoMUUXyDYjhY3jc6rhmMQyIUL+oOPvIq5PlHFAO02lh8TMYqFImtHnmf3MVkT96hRRkOlMZ2z1NNlaurGPHEJCTg71XsyBbHrWpzNSX4j6oUiUmOn6m+PXDwL0wLV0KUjgLF4g1wLPqeu7IkqdAhhsAodSrkR5DzTquOplnJfTOm5QEg3z7gVk8WJ5VqXxt9ISARwMCLk9sK27KImSzAhIsjEJRGoGbPL+G7J1DAeHE+ia6KRwe2Rz6iNVqhN/kaVvUnDd95qVaAsOpIw+Nca/D/4MISbVcmkY2v8AKM5IKkCzdDnFA6NiDuxjTMZl3UmENcG3yOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LfwXCHuZ+amXctgH6o2CoTp0exrp3UmfzJzB9YLmQrw=;
 b=XwdQ/q33KvStcuC1k2I1S+RAdXiDQ8Nx8OmFvPL7cghn+SlgJ/l3ABypvvpiOKf9lnb+gvgGHLL5np82k8iU/IQ7+q44wXsEmnYOm4rjUf2fH+puWnRLy/t7F8BjADFXLgJM4zIRSIrHdRMTuzzc9rIFo9s8CUWUBQDur9LPCjW/H62Oa/6qLnN3WraF58NLdVAWAGLh3D5AwN7Y19PTuimDdiu4dM9mN3ozP2eJqxqhrr4gQ9RIt5MNwqeBuRo2LnUN8gMTURHrZCIflg4zfhlflVr9GGOHOUO2qzEFsltEyYB6CTCe82Ya/22e4jHw6M0fOt5A4FGpK4GxU2qC6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LfwXCHuZ+amXctgH6o2CoTp0exrp3UmfzJzB9YLmQrw=;
 b=V3IX9feEAkg226P+PefDO1BJSKeYULQ6e2eaNwV1YSdyF/t5q+63YcINK55U6vfn6COdlO0qlYvU3BTOC6kqgiXiOXJbJ1if0zs7arMRQB6Sm4YP0lRlxhCq4dk+uqdkyhpeSOz90qJygKgTCgwPYwHqtWcA40sNFFvwvaji0HFKG3Uh+3h66oXWorbwOK5ZsAt7nzys7vpQfPWSMndWuRpeuLufr1KrDlY6uHZrgu0GOFSCPrnc37ol/Id7HkwKYp5mcOt8DmNku1fnrcmOUFo28Kaq4KagEnXqyau5V6ULiViDlthTNBU0SMEkPw566pJCYB6TzCKfsqYUBpQTFg==
Received: from HK2APC01FT015.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::4a) by
 HK2APC01HT022.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::376)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Fri, 24 Apr
 2020 04:55:46 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM (10.152.248.59) by
 HK2APC01FT015.mail.protection.outlook.com (10.152.248.167) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.15 via Frontend Transport; Fri, 24 Apr 2020 04:55:46 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d]) by BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d%7]) with mapi id 15.20.2937.012; Fri, 24 Apr 2020
 04:55:46 +0000
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Thread-Topic: [USRP-users] Fractional downsampling in rfnoc
Thread-Index: AQHWFD4S3p9nAtH5HEib5hstP8Q0q6h9d92AgAH+gWyAAFZFgIAH5k7U
Date: Fri, 24 Apr 2020 04:55:46 +0000
Message-ID: <BM1PR01MB334874FD80DAE63A2212DC0288D00@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
References: <BM1PR01MB33485647B95F4EB1A185B53E88D80@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81tGgXZQDNxq9FGViThnFkWE+3YSeLaebKrqP6OqCw1XvA@mail.gmail.com>
 <BM1PR01MB33488D7B9DC5AE9AF435234088D60@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>,
 <CAL7q81t1RpfgCAY24baDznFWJLM+i21eePoXObHiTAhqO27-FA@mail.gmail.com>
In-Reply-To: <CAL7q81t1RpfgCAY24baDznFWJLM+i21eePoXObHiTAhqO27-FA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:128BA28EB8007B781C496882A6873BD5354D74EE4D429DBCD14EE7F3F783ACC3;
 UpperCasedChecksum:3161C8B5AF684BC1B1554EDCA2A896FF4B47F1F692658D011A0BAAD96666DF8D;
 SizeAsReceived:7225; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [rE6wwQMNGyif3TiV1B5/siEYc8BVsrub]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 81487559-bb45-4b43-fd02-08d7e80bc04c
x-ms-traffictypediagnostic: HK2APC01HT022:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bbdOLIuhCOUOH11+8qwafJgy6wu3N4G5z0o1neLwN8dMK12Ka4IupgPyxFbpkh3EOLdXXbYMtR96kDxD+JAORaEWLyGGcy4jDb4BVeQ9H+jX2wo8+zC4BxRTRmUYwvXnEgf50O77gkbmmUC4oWDlo/cpGvFfJj79CwaTwwlQU9kg4GZP+bepaQuz2eON5mqWTDsex3Dy7I85PQwVOcpBGyMvWgcTABqlfVYNazmU4rP0PAy+CymZ6KGNIw1Yx6YW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: M+FWXh2nIT8RYFHmmtXtlIcS0WmAmpM55N9llOooxHfiKH5Sihrk8o7KS17kT4tsfDVm6BzVi9c/nC8BHJD7BG92ZheSOe81BvOzHfaDxg/ORM4Czxn/z0ysmN2XCFkTaG+fTFs5PvFU6tRGTtDhSA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 81487559-bb45-4b43-fd02-08d7e80bc04c
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 04:55:46.4330 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT022
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
Content-Type: multipart/mixed; boundary="===============4643111432411716151=="
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

--===============4643111432411716151==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB334874FD80DAE63A2212DC0288D00BM1PR01MB3348INDP_"

--_000_BM1PR01MB334874FD80DAE63A2212DC0288D00BM1PR01MB3348INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

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

--_000_BM1PR01MB334874FD80DAE63A2212DC0288D00BM1PR01MB3348INDP_
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
I tried building the fractional downsampler again and was successful to bui=
ld it in this version of UHD: UHD 4.0.0.rfnoc-devel-409-gec9138eb. Also the=
re is a channelizer available at
<a href=3D"https://github.com/e33b1711/rfnoc-ppchan" id=3D"LPlnk680611">htt=
ps://github.com/e33b1711/rfnoc-ppchan</a><b>
</b>. But the problem with this channelizer is, it sends almost 25.6msps sa=
mples to the host. Also the number of packet it sends, creates a overflow i=
n the host even with 10gig sfp cable. So what I am planning is to make a de=
-interleaver, which will be responsible
 for channel down-selection. Please let me know your thoughts on this.<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Can you please let me know how to set the packet size on any rfnoc block.</=
div>
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

--_000_BM1PR01MB334874FD80DAE63A2212DC0288D00BM1PR01MB3348INDP_--


--===============4643111432411716151==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4643111432411716151==--

