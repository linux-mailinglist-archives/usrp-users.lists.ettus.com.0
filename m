Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 852ADC2465
	for <lists+usrp-users@lfdr.de>; Mon, 30 Sep 2019 17:35:16 +0200 (CEST)
Received: from [::1] (port=54608 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iExhj-0004vV-9U; Mon, 30 Sep 2019 11:35:15 -0400
Received: from dispatch1-us1.ppe-hosted.com ([67.231.154.164]:55866)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1iExhg-0004nA-4c
 for usrp-users@lists.ettus.com; Mon, 30 Sep 2019 11:35:12 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 B9B7A10921F
 for <usrp-users@lists.ettus.com>; Mon, 30 Sep 2019 15:34:31 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from NAM05-BY2-obe.outbound.protection.outlook.com
 (mail-by2nam05lp2050.outbound.protection.outlook.com [104.47.50.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us3.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 590879C0072;
 Mon, 30 Sep 2019 15:34:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kNzICVEivMZmXwfA7j9EgaWyt1xPExZt4y39b+fIViYIhS1agJuaehimqbgu1unURpNgHKL+FfJF5/3efJNNh+yYSNRNSNvM2xmndhRAP2a3bgEaHE2ZLOmZPNz5+KgN35eUI8/4UrhlThGjag3upInac5Fqb2jqXkgCAKxELokPIg0hhfHYLcZqqWzBhP1eVFRyNPCDx3yFEv1u7o181r30tx4uBoypOefZBt3JQrG0NwBVMKgu+MS1oh+dqkgQBXiSxILZY9WTKEneNHLy8xSLj5xWAKqhwucR/wh9JKBuF6BvSIda3Q8BvrTpiSqVcgR7TNckbXhGzQ+ySg7uDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NekikBZriiE9khZ/iBbozrzdH2WwoVPjyuK/3yq4TyA=;
 b=gL8iEgAOYSIKWjw8YzeCRMWu7oPNX0gg3pt2md98KfPoYuZf2XUaAf9FcTrBECcezq+8QH0Lczy9wbHTd1y668HYZ2F2QmH38KT0zZyfwOY4J4MheaUkb7C7npFnyROnvG/eu2PLNBuV/Ot+P4hNLvLePL/OJsogRlhokf8yIZj9NKMMOBrxQ/acF3dtElCn+9i1YCEwMhH9LNGMnki9juhNILudmgb+y6PrProXyJ+bUoecaFj/Z7+wievUObH9oEpFIsVh1o4hzeyWKy3k7vrCF2Vgh1BzU8MXhBPvCqlA7hA13bso8cnjh1wawfBEe00Xm6K6G4HMN3eyThz8+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NekikBZriiE9khZ/iBbozrzdH2WwoVPjyuK/3yq4TyA=;
 b=qhDRb+RDS2pswLL0WI5QVWWm1XRlkMoeX5BFdUqY2oBcbPojuV2aNYfmysp6t5NBoBzx4Urdu17wIDP2C76V20O2ZPt+vTQKD3sE0pG30JvEG5ikNulEzI7uHRmEciYfSIOXYQiV9LQuBcgDLJNPI3tz5FM3/dW+vPYeMBFulUw=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.11.30) by
 BL0PR12MB2529.namprd12.prod.outlook.com (52.132.11.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Mon, 30 Sep 2019 15:34:14 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::d017:bb2f:c281:2400]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::d017:bb2f:c281:2400%5]) with mapi id 15.20.2305.017; Mon, 30 Sep 2019
 15:34:14 +0000
To: Neel Pandeya <neel.pandeya@ettus.com>
Thread-Topic: [USRP-users] next pps issues with TwinRX
Thread-Index: AQHVd5+nMNpaPST0n0uDbRwbaMd+4adEVcmAgAADreQ=
Date: Mon, 30 Sep 2019 15:34:14 +0000
Message-ID: <BL0PR12MB23404630FAD94CED7B1A3954AF820@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB2340E8912EBC7072A9D3C46FAF820@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <CACaXmv-DJFq2VQeZXCh-YKF-P=++xOga9o=KJ-_azwBmNFHiKA@mail.gmail.com>
In-Reply-To: <CACaXmv-DJFq2VQeZXCh-YKF-P=++xOga9o=KJ-_azwBmNFHiKA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8e259a26-99de-48ae-b892-08d745bba600
x-ms-traffictypediagnostic: BL0PR12MB2529:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR12MB25291BDBE18841A6E2AD951CAF820@BL0PR12MB2529.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01762B0D64
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(39830400003)(136003)(346002)(376002)(366004)(199004)(189003)(81166006)(606006)(8936002)(8676002)(19627405001)(66066001)(71190400001)(81156014)(14454004)(316002)(64756008)(52536014)(76116006)(66446008)(5660300002)(71200400001)(66556008)(66476007)(66946007)(256004)(5024004)(33656002)(6916009)(53546011)(55016002)(6506007)(3846002)(6436002)(26005)(6306002)(54896002)(9686003)(236005)(6116002)(76176011)(102836004)(7696005)(229853002)(105004)(186003)(7736002)(4326008)(86362001)(6246003)(446003)(11346002)(966005)(508600001)(476003)(74316002)(486006)(99286004)(25786009)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2529;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sNP0uKJQFyj3JoeoArmH83KghGc4xhs0FhDkvqpRr8UsRwgsik+o4aOSrOJnGRaxsimpn8ZYfz96FiurD27Vh5Z7WYHd3lpzsQihLKrlNmU02/tMVXWMA6q0tuljkMXYR9bDjokDXjRlRq3WfUI3W1KYXdEc9c8TQPlbCc9X7qGhsuz3RscTrIV6C8od9dEDE4u79WJyPrpYv/DT1nh/2ge7yz1yVqr2A+un5P5ASmWKYG214ig3rwaVDF2dA9rHCmD/bBOz9VcOCGwZwRyqFRAcLSfMH2LikNn73k0SBCVOLUQB+wD/29NuIzWQ3T+IwZ/nirWHeZmhdeWOzaKwcepMhVIyIvltgY9CyQTqLqJD/jofNZFnVUaZCpxZphKF/hrtwGRxRPwzkw1oRWXf0NexxgTfrtRnKgvZO0GzXrVdXG1QCr/fQPhdta5iytTRCDUyFqEGURvRUtGgCW5JpQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e259a26-99de-48ae-b892-08d745bba600
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2019 15:34:14.1121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pd81n2jF9IvSNJCvQixWeR1fRKKkYYrEoMifAEEQc8I/xzvmHqm4xzCydIcF0z9bjJnkv1Jg0OESZiznydxRNRl46Ds3RvteTzDrXXSrCjs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2529
X-MDID: 1569857660-BPZLcEsfmQvG
Subject: Re: [USRP-users] next pps issues with TwinRX
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jason Matusiak via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason Matusiak <jason@gardettoengineering.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1940281598198347633=="
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

--===============1940281598198347633==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB23404630FAD94CED7B1A3954AF820BL0PR12MB2340namp_"

--_000_BL0PR12MB23404630FAD94CED7B1A3954AF820BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Howdy Neel,

We are running GR v3.7.13.4.

We will get UHD 3.14.1.1 installed on one of our machines today and give th=
at a shot.

Thanks.

________________________________
From: Neel Pandeya <neel.pandeya@ettus.com>
Sent: Monday, September 30, 2019 11:19 AM
To: Jason Matusiak <jason@gardettoengineering.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] next pps issues with TwinRX

Hello Jason:

We'll look into this and get back to you shortly.

If you get a chance, could you please try it with the tagged UHD 3.14.1.1 ?

Which version of GNU Radio are you using?

--Neel Pandeya



On Mon, 30 Sep 2019 at 10:10, Jason Matusiak via USRP-users <usrp-users@lis=
ts.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
We are having another issues with our TwinRXs.  A co-worker has been trying=
 to get this to work for a while, but has had no luck with the PPS timing. =
 Here is the notes:

We are running UHD_3.14.1.HEAD-12-g5f75f73f.

The setup is a single X310 (revision: 11,  revision_compat: 7) with two Twi=
nRX boards. The device gets Ref/PPS from an Octoclock.

The attached script has a hard-coded IP address and clock rate. It works fo=
r other X310s with UBX/SBX daughter boards as well as the E320.

Good results are (note line 5 below):

Synchronizing Radios to Reference Signals
Checking PPS synchronization
next_pps from 1569851984.633563 is 1569851985.000000
Setting time for radio `gr uhd usrp source`: 2019-09-30 09:59:45
PPS alignment PASSED!: [1569851986.0, 1569851986]
All radios are Synchronized

Bad results are:
Synchronizing Radios to Reference Signals
Checking PPS synchronization
next_pps from 1569851508.136703 is 1569851509.000000
Setting time for radio `gr uhd usrp source`: 2019-09-30 09:51:49
PPS alignment mismatch: [1569851509.9999995, 1569851509]

Any thoughts of why this might be happening?

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://=
urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailman_listi=
nfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwq=
Of-v5A_CdpgnVfiiMM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&m=3DVzsj=
pGSylp7F9peAKPOcnLbFzmAh8CNVnwzwket3hCo&s=3D_gOstnMMEDkfFbD1tcNsLqzHaSnMGcI=
jP7W9NVzbH6M&e=3D>

--_000_BL0PR12MB23404630FAD94CED7B1A3954AF820BL0PR12MB2340namp_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Howdy Neel,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
We are running GR v3.7.13.4.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
We will get UHD 3.14.1.1 installed on one of our machines today and give th=
at a shot.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks.</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Neel Pandeya &lt;neel=
.pandeya@ettus.com&gt;<br>
<b>Sent:</b> Monday, September 30, 2019 11:19 AM<br>
<b>To:</b> Jason Matusiak &lt;jason@gardettoengineering.com&gt;<br>
<b>Cc:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] next pps issues with TwinRX</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif">Hel=
lo Jason:</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif">We'=
ll look into this and get back to you shortly.<br>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif">If =
you get a chance, could you please try it with the tagged UHD 3.14.1.1 ?</d=
iv>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif">Whi=
ch version of GNU Radio are you using?<br>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif">--N=
eel Pandeya</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon, 30 Sep 2019 at 10:10, Jason=
 Matusiak via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
We are having another issues with our TwinRXs.&nbsp; A co-worker has been t=
rying to get this to work for a while, but has had no luck with the PPS tim=
ing.&nbsp; Here is the notes:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; background-color:rgb(255,255,255)">
We are running UHD_3.14.1.HEAD-12-g5f75f73f.</div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; background-color:rgb(255,255,255)">
The setup is a single X310 (<span style=3D"margin:0px">revision: 11</span>,=
&nbsp; revision_compat: 7) with two TwinRX boards. The device gets Ref/PPS =
from an Octoclock.</div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; background-color:rgb(255,255,255)">
<span style=3D"margin:0px"><br>
</span></div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; background-color:rgb(255,255,255)">
<span style=3D"margin:0px">The attached script has a hard-coded IP address =
and clock rate. It works for other X310s with UBX/SBX daughter boards as we=
ll as the E320.<br>
</span></div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; background-color:rgb(255,255,255)">
<span style=3D"margin:0px"><br>
</span></div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; background-color:rgb(255,255,255)">
<span style=3D"margin:0px">Good results are (note line 5 below):</span></di=
v>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; background-color:rgb(255,255,255)">
<span style=3D"margin:0px"><br>
</span></div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; background-color:rgb(255,255,255)">
<span style=3D"margin:0px"></span><span style=3D"margin:0px">Synchronizing =
Radios to Reference Signals<br>
</span>
<div style=3D"margin:0px">Checking PPS synchronization<br>
</div>
<div style=3D"margin:0px">next_pps from 1569851984.633563 is 1569851985.000=
000<br>
</div>
<div style=3D"margin:0px">Setting time for radio `gr uhd usrp source`: 2019=
-09-30 09:59:45<br>
</div>
<div style=3D"margin:0px"><b>PPS alignment PASSED!: [1569851986.0, 15698519=
86]<br>
</b></div>
<div style=3D"margin:0px">All radios are Synchronized</div>
<div style=3D"margin:0px"><br>
</div>
<div style=3D"margin:0px">Bad results are:<span style=3D"margin:0px"><br>
</span></div>
<div style=3D"margin:0px"><span style=3D"margin:0px">Synchronizing Radios t=
o Reference Signals<br>
</span>
<div style=3D"margin:0px">Checking PPS synchronization<br>
</div>
<div style=3D"margin:0px">next_pps from 1569851508.136703 is 1569851509.000=
000<br>
</div>
<div style=3D"margin:0px">Setting time for radio `gr uhd usrp source`: 2019=
-09-30 09:51:49<br>
</div>
<div style=3D"margin:0px"><b>PPS alignment mismatch: [1569851509.9999995, 1=
569851509]</b></div>
<div style=3D"margin:0px"><b><br>
</b></div>
<div style=3D"margin:0px">Any thoughts of why this might be happening?</div=
>
</div>
</div>
<br>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettu=
s.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=
=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51=
mTMqpeO4RbBBLexficV9DG8&amp;m=3DVzsjpGSylp7F9peAKPOcnLbFzmAh8CNVnwzwket3hCo=
&amp;s=3D_gOstnMMEDkfFbD1tcNsLqzHaSnMGcIjP7W9NVzbH6M&amp;e=3D" rel=3D"noref=
errer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB23404630FAD94CED7B1A3954AF820BL0PR12MB2340namp_--


--===============1940281598198347633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1940281598198347633==--

