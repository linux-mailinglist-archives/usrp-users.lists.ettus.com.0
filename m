Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF63C28D215
	for <lists+usrp-users@lfdr.de>; Tue, 13 Oct 2020 18:20:57 +0200 (CEST)
Received: from [::1] (port=49022 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kSN2m-0006iq-J7; Tue, 13 Oct 2020 12:20:56 -0400
Received: from mail-co1nam11olkn2061.outbound.protection.outlook.com
 ([40.92.18.61]:61216 helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <e070832@hotmail.com>) id 1kSN2i-0006bw-Jn
 for usrp-users@lists.ettus.com; Tue, 13 Oct 2020 12:20:52 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XkJlZIhoJ2dVPL0srpF0KMq8qM27SBSKRP46cIMyMNKk5N2N1Gf2P3tOi7/AUTOMNRnB9I5lPh9R1AwvFUW+xNN3Ppn6CeYf3NxYQNFM8eOxTB9AMvW6gSkMCYOM6Qkj57cFB2KHx6l9Os2p7k6AYPv7cUpthIeHBygR4U9n8QrGkfsVF5vBGcVnYdQtkrUTO37qCAfql90+nnrB5U7zPvNbzAuN/sgIERr8+UmE5reYVqFDcYUL8uSdSard/+Mxz5cSTJmbv9o8zdC5+HJSD7SjqLkNY2FZ5jq7f+h/db/oS1WgMTq6k94rpR9YjXXdviyDjMr11Nse5Y8KEop1aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1YVaME/iB4pf7gEOGoGfUpXkgQcFpFqEMLLIb4ccbBo=;
 b=N+bRTVA1oEzR7Ye1o8/kQsmv6qvTh3QCUki62la/ppvDVUmdYp58L4UpK2he9hMQMaO2ljWsaxTi8YmqCX0qxCpMKXqY3C/6FQ3MO147CVXS8kCscd8hJ4hEe8v17AnhRxQx2e/7S0o8oCYYrRCFgXtNVEW2sQDFree/nY732/2AGHQkx5WImseanl7m71t7FTcFaZkdEt+yG+EY3/86FbvXFDm703z2f1zjzdWC+LfOkkB/sId7acNHs7IxpY9mDiISyVkbIeXXvf3cDnLg2B9Zcj7d7ywdqcau6fcsJ537QU+ak0o9HAzq+x0OFHB7nOOeQWA0LCm0+8pjLybyww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1YVaME/iB4pf7gEOGoGfUpXkgQcFpFqEMLLIb4ccbBo=;
 b=AcfUW5LLB//eitk3bUX1Xbf15kuWX/LcN5Y6MXkKYxUd8oU+ATuHQEgzT9HjWMowWiOVwfOJ9D6rkYBrZcF8bmcaOZniPF+uartIH24OCGHymZnknJBYipfW/RT9NodvgQrDYle3DIQJxzywsk8vTLXz9t3Tu4tUWZPbPTXOko/OCaZMbVofWjY+XE+/zIwyQMlOhon2fcKw4WRtm9pVehtTGT1XO6Os1H+OwqX16fcke1KTvniJwQdiIMCAx8dMdYhTLRRNWcHFRpYfm3ETKSs2wsfYTgkHHmjSM+aImTzMxnL8GLmbMSWJyKS+DA9wd9Q3wzEUDkosI/i1VCKcbg==
Received: from DM6NAM11FT016.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:fc4d::43) by
 DM6NAM11HT064.eop-nam11.prod.protection.outlook.com (2a01:111:e400:fc4d::306)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.23; Tue, 13 Oct
 2020 16:20:09 +0000
Received: from DM6PR19MB2668.namprd19.prod.outlook.com
 (2a01:111:e400:fc4d::44) by DM6NAM11FT016.mail.protection.outlook.com
 (2a01:111:e400:fc4d::395) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.23 via Frontend
 Transport; Tue, 13 Oct 2020 16:20:09 +0000
Received: from DM6PR19MB2668.namprd19.prod.outlook.com
 ([fe80::21a1:f9df:d858:f054]) by DM6PR19MB2668.namprd19.prod.outlook.com
 ([fe80::21a1:f9df:d858:f054%6]) with mapi id 15.20.3455.031; Tue, 13 Oct 2020
 16:20:09 +0000
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] SFP+ to RJ45 Adapter
Thread-Index: AQHWoXbiuspza82mlEynHjCHwQQQuqmVrnkAgAAFhqmAAAJoqA==
Date: Tue, 13 Oct 2020 16:20:09 +0000
Message-ID: <DM6PR19MB26689FEDF4D276221C9524D0A4040@DM6PR19MB2668.namprd19.prod.outlook.com>
References: <DM6PR19MB26682C0D9A7271A482546057A4040@DM6PR19MB2668.namprd19.prod.outlook.com>,
 <CAGp1hYpMrQf6j7sTXCpFXOfsigQ6GsFNJBCipAbQhWvwKyK+yg@mail.gmail.com>,
 <DM6PR19MB2668D49AD0F0F45B730E547CA4040@DM6PR19MB2668.namprd19.prod.outlook.com>
In-Reply-To: <DM6PR19MB2668D49AD0F0F45B730E547CA4040@DM6PR19MB2668.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:61DAE1D9680A1A1DF5CA85349E1B428F140E59363E655B1C160CF347E36EFD7C;
 UpperCasedChecksum:A920F80FF6CCACE1C044CA45FE645B6CB3DEA2651FF616A34E0BC69C488D9936;
 SizeAsReceived:7013; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [P8p0+MThp9z6xnDhU8aFfkbmW9x1BRay]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 036a5c42-c3f9-45ab-48f1-08d86f93dafb
x-ms-traffictypediagnostic: DM6NAM11HT064:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dj5v/xtE8yO20B6Sem0qzHFzgePHFnUyM3VbG47ggE4tH/XfhNWuW1AOBOCFMcQioQZKYTxOyrAB+hIojV0xU2VCf7G4WHXUDov9/5vzk5YmrKhxBO9w+kDnlNktAcu+iRGVAWGoTIeVej3ZiMLkvLFZ66GJoOfrzzG/Uxq162k0Ox3rdaX+kTpYL7JYwZoOwuImOagkxlzJeedHSV11y6LO40dNlnkzyiXmVttihR2wyCfNjsfupV5cT5fnUNfs
x-ms-exchange-antispam-messagedata: DHDdxehACdGLlA/X695kJpcUIiyEfIGfQLB78qILnlVirVCJq2VSEr543QVU6iPYUeQHupPBJcaQvRI2/gtj7gZYo2Re+9Hlyx3t2EHYgbi8CFN7ZDmuOexLwdqHXxoNqajZ8rk/t8z8w0EOZYLBGg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT016.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 036a5c42-c3f9-45ab-48f1-08d86f93dafb
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2020 16:20:09.6912 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM11HT064
Subject: Re: [USRP-users] SFP+ to RJ45 Adapter
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
From: Jeff S via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeff S <e070832@hotmail.com>
Content-Type: multipart/mixed; boundary="===============3423548704404957726=="
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

--===============3423548704404957726==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR19MB26689FEDF4D276221C9524D0A4040DM6PR19MB2668namp_"

--_000_DM6PR19MB26689FEDF4D276221C9524D0A4040DM6PR19MB2668namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I just rered my post as well, and I should have been more clear.

The Thunderbolt adapter I have has an RJ45 connector (unfortunately) https:=
//www.cablematters.com/pc-1039-131-intel-certified-thunderbolt-3-to-10-gb-e=
thernet-adapter.aspx.  It is not one that I asked for, just what I ended up=
 with.  I wanted to go from that RJ45 (via copper?) to the SFP+ port on the=
 X310.

I like the suggestions from everyone so far, and I need to see what's going=
 to fit (cost-wise).

Thanks!

________________________________
From: Derek Steinkamp <derekste@gmail.com>
Sent: Tuesday, October 13, 2020 10:51 AM
To: Jeff S <e070832@hotmail.com>
Subject: Re: [USRP-users] SFP+ to RJ45 Adapter

Just re-read your post. This is what you need (assuming your thunderbolt 10=
G adapter has an SFP+ port- if not see the QNAP product)

[Blue] Colored 10G SFP+ DAC Cable - Twinax SFP Cable for Ubiquiti Devices, =
2-Meter(6.5ft) https://www.amazon.com/dp/B075XJXSWG/ref=3Dcm_sw_r_cp_api_fa=
b_1XCHFbFY9K6T6

QNAP QNA-T310G1S Thunderbolt 3 to 10GbE Adaptor, Single-Port Thunderbolt 3 =
to Single-Port 10GbE SFP+ https://www.amazon.com/dp/B07KTLP44W/ref=3Dcm_sw_=
r_cp_api_fab_BZCHFbCZ56488

On Tue, Oct 13, 2020 at 10:43 AM Jeff S via USRP-users <usrp-users@lists.et=
tus.com<mailto:usrp-users@lists.ettus.com>> wrote:
I acquired a Thunderbolt 10 Gigabit adapter, and I was wondering if I could=
 connect it to the SFP+ connector on my X310.

Has anyone done this?  And, is there a particular SFP+ to RJ45 which works =
well?  All I see on the Ettus website is the recommendation for using the t=
erminated cable and PC network adapter.

Thanks,
Jeff
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_DM6PR19MB26689FEDF4D276221C9524D0A4040DM6PR19MB2668namp_
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
<div>
<div dir=3D"ltr">
<div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I just rered my post as well, and I should have been more clear.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
The Thunderbolt adapter I have has an RJ45 connector (unfortunately) <a hre=
f=3D"https://www.cablematters.com/pc-1039-131-intel-certified-thunderbolt-3=
-to-10-gb-ethernet-adapter.aspx" id=3D"LPlnk">
https://www.cablematters.com/pc-1039-131-intel-certified-thunderbolt-3-to-1=
0-gb-ethernet-adapter.aspx</a>.&nbsp; It is not one that I asked for, just =
what I ended up with.&nbsp; I wanted to go from that RJ45 (via copper?) to =
the SFP+ port on the X310.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I like the suggestions from everyone so far, and I need to see what's going=
 to fit (cost-wise).</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Thanks!<br>
</div>
<div class=3D"x__Entity x__EType_OWALinkPreview x__EId_OWALinkPreview x__ER=
eadonly_1">
</div>
<br>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Derek Steinkamp &lt=
;derekste@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, October 13, 2020 10:51 AM<br>
<b>To:</b> Jeff S &lt;e070832@hotmail.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] SFP+ to RJ45 Adapter</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"auto">Just re-read your post. This is what you need (assuming y=
our thunderbolt 10G adapter has an SFP+ port- if not see the QNAP product)<=
/div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">[Blue] Colored 10G SFP+ DAC Cable - Twinax SFP Cable for =
Ubiquiti Devices, 2-Meter(6.5ft)
<a href=3D"https://www.amazon.com/dp/B075XJXSWG/ref=3Dcm_sw_r_cp_api_fab_1X=
CHFbFY9K6T6">
https://www.amazon.com/dp/B075XJXSWG/ref=3Dcm_sw_r_cp_api_fab_1XCHFbFY9K6T6=
</a><br>
</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">QNAP QNA-T310G1S Thunderbolt 3 to 10GbE Adaptor, Single-P=
ort Thunderbolt 3 to Single-Port 10GbE SFP+
<a href=3D"https://www.amazon.com/dp/B07KTLP44W/ref=3Dcm_sw_r_cp_api_fab_BZ=
CHFbCZ56488">
https://www.amazon.com/dp/B07KTLP44W/ref=3Dcm_sw_r_cp_api_fab_BZCHFbCZ56488=
</a><br>
</div>
<div><br>
<div class=3D"x_x_gmail_quote">
<div dir=3D"ltr" class=3D"x_x_gmail_attr">On Tue, Oct 13, 2020 at 10:43 AM =
Jeff S via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bo=
rder-left-width:1px; border-left-style:solid; padding-left:1ex; border-left=
-color:rgb(204,204,204)">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I acquired a Thunderbolt 10 Gigabit adapter, and I was wondering if I could=
 connect it to the SFP+ connector on my X310.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Has anyone done this?&nbsp; And, is there a particular SFP+ to RJ45 which w=
orks well?&nbsp; All I see on the Ettus website is the recommendation for u=
sing the terminated cable and PC network adapter.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Thanks,<br>
Jeff<br>
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
</div>
</div>
</div>
</body>
</html>

--_000_DM6PR19MB26689FEDF4D276221C9524D0A4040DM6PR19MB2668namp_--


--===============3423548704404957726==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3423548704404957726==--

