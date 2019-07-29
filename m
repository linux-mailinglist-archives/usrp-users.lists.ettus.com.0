Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE1278B63
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2019 14:11:31 +0200 (CEST)
Received: from [::1] (port=42978 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hs4Uz-0002hG-MG; Mon, 29 Jul 2019 08:11:29 -0400
Received: from otransport-9.outbound.emailsrv.net ([52.0.21.132]:41966)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hs4Un-00026A-92
 for usrp-users@lists.ettus.com; Mon, 29 Jul 2019 08:11:17 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-9.outbound.emailsrv.net (Postfix) with ESMTPS id D9CF4616C6;
 Mon, 29 Jul 2019 12:10:36 +0000 (UTC)
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
 (mail-bn3nam01lp2051.outbound.protection.outlook.com [104.47.33.51])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id 9B910612AE;
 Mon, 29 Jul 2019 12:10:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=im84I+zALGn9G65a5J1mNF3uaNiCVlAlIlZamGXbnGSIajP20qJ24qiRl8V9AokE67UezjUwRFTFwAT4Gma06cIDAzB8Myp7Eff8nLUFguLpJAM1neL32Cn05xkhLbP2p++1Oor+/mxH2tqXxOdvaohHrihXq/2MpJbOvx5RXg6sJp2PqlLbJAntwgU2yYaLMHMfzfPGZnwZ43qqAzsggDBwva30ZaFmIuFtQP1tlCW1XV6lqjIUofl1LsyXZSH83f+PFz0+TtAv+FB4s+StoMVoUOH8sX98I7fpCobDXZe4eBCVScVcl41HmDb5K19mOqfpABpb2QdHmBBxkaFNsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5bPCm9udWoxFUlKV2w3sn+6uMZj3rvzWz/fmYZ1K8mE=;
 b=WRsGvSXiBU/+cnDnyXdtB8ukhlE4nPKhZ8SpXJ+TfhHMYW419kX/+T1gWatGF7h3M1hhypebASb3sHm0cqoxSpgVpFYSsihtwfwl7AcIHEIrgW6qgDv2IHE1NKsaVo0ZkRVUBdAB13FFsqaB8pgmq64/fNOliQ8zdfHI2LshfxTtbRgUNOcBrckialcomv8hM20ZG1+p4DuWf+Tm75MS8q/cZNp3ZcmEL8csX7sWvFahnlRaO1tLOSLClhsYuTnbb808Ukf44V8bUaCBwSLO92HsFMMHDIxRX80uP3y6QgfCE+YSwFmFkrn6IEHkJbHNcbezO/yLOA4z/PHAHjm22Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=gardettoengineering.com;dmarc=pass action=none
 header.from=gardettoengineering.com;dkim=pass
 header.d=gardettoengineering.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5bPCm9udWoxFUlKV2w3sn+6uMZj3rvzWz/fmYZ1K8mE=;
 b=GAzBMCNkNxutKfuLW0/thYccYLOKcESahF3uW7eQSFmdQpKyDQDm5oYuhjAxJT91KRR68RHVl3DI4H/M3oVppH1ts+7siWR3kj70qzRRiyQ4TEtk06yfhNAqlWgt6O465RQy3oiaDN1C+20L4LUyGexCxe4L5UonaeNGVpFRQk0=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.29.147) by
 BL0PR12MB2545.namprd12.prod.outlook.com (52.132.11.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Mon, 29 Jul 2019 12:10:33 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::f04f:ce70:958b:cef2]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::f04f:ce70:958b:cef2%7]) with mapi id 15.20.2094.017; Mon, 29 Jul 2019
 12:10:33 +0000
To: Erik Heinz <erik.heinz@supracon.com>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: X310 slow with gnuradio
Thread-Index: AQHVRflf5AQks7e2KkqSRTP1NKZdFKbhe4EEgAACoeqAAAKE/g==
Date: Mon, 29 Jul 2019 12:10:33 +0000
Message-ID: <BL0PR12MB23406901E5927304D6DE3D55AFDD0@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <1564399837020.98564@supracon.com>,
 <BL0PR12MB2340E7234FB9747C92CD15F9AFDD0@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <1564401740674.89525@supracon.com>
In-Reply-To: <1564401740674.89525@supracon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 359f6370-c3d5-4108-a00c-08d7141dc1d5
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2545; 
x-ms-traffictypediagnostic: BL0PR12MB2545:
x-microsoft-antispam-prvs: <BL0PR12MB2545F37A55C7E039E8D3F9B2AFDD0@BL0PR12MB2545.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(346002)(396003)(39830400003)(366004)(136003)(189003)(199004)(53546011)(6506007)(74316002)(71200400001)(71190400001)(68736007)(86362001)(6436002)(66946007)(99286004)(66446008)(64756008)(76116006)(66476007)(66556008)(316002)(26005)(9686003)(54896002)(256004)(14444005)(7696005)(76176011)(229853002)(486006)(476003)(102836004)(55016002)(110136005)(105004)(53936002)(52536014)(5660300002)(186003)(11346002)(446003)(33656002)(6246003)(81156014)(8676002)(8936002)(81166006)(2906002)(6116002)(3846002)(2501003)(19627405001)(508600001)(14454004)(7736002)(25786009)(66066001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2545;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xfSBWxhNdaIxYJILIffpzaIQsQSOMVe93C0c7V1xY2WPQmnlw9s9hxhlJDNJk+MzqLokK4noVAT0SmL7L8IEdnnLgmp1DXiUZohqoa43EgPG7hUm61vEyzqPDlvlJRlkd3hILc2AdOFnOVtioOmOMflZwV9LTMilCzNm2pBLCY0dIPi5SEWD0vG8CipU8I+c2cGkrwA9wd0mSnrhMAnyyECCms8XWqusWta5Kl876sQPoHDUbNHqH/WvPifs5OHRib+K1Sd5Y0DdifoO8FeEuhOWUrJ4GtpmQKiuVxGOhW/pC/6QnVxbSsDmX4IdZlQjH/NN9afEhNTputNRXUdj5V5dmXphAGLVOHcybfDRRjVh8+6cengMnvPNVL7xXreyNUfpNHoZbBWgPw4FuH6fOybIjI658j0O6WHlr7GYLug=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 359f6370-c3d5-4108-a00c-08d7141dc1d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 12:10:33.3235 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2545
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-bn3nam01lp2051.outbound.protection.outlook.com|104.47.33.51|NAM01-BN3-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.33.51, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-20676-c
X-Mailprotector-ID: b4f08938-d802-4978-ac06-7d50fad708c1
Subject: Re: [USRP-users] X310 slow with gnuradio
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
Content-Type: multipart/mixed; boundary="===============6622978181799953217=="
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

--===============6622978181799953217==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB23406901E5927304D6DE3D55AFDD0BL0PR12MB2340namp_"

--_000_BL0PR12MB23406901E5927304D6DE3D55AFDD0BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Erik,

Whoops, I glazed over that point, sorry.  I am not really sure what else to=
 try.  That is a pretty old version of GR, could you maybe try a newer vers=
ion in a different directory/prefix (so it doesn't mess up your current bui=
ld)?  At what sample rate do things seem to work right again?

________________________________
From: Erik Heinz <erik.heinz@supracon.com>
Sent: Monday, July 29, 2019 8:02 AM
To: Jason Matusiak <jason@gardettoengineering.com>; usrp-users@lists.ettus.=
com <usrp-users@lists.ettus.com>
Subject: AW: X310 slow with gnuradio


Hi jason,


I had the MTU set to 8028. I increased to 9000, just to make sure -> no cha=
nge.

As I wrote, the UHD driver itself can transmit at full speed, so it should =
be no network issue.


Best regards,

Erik




________________________________
Von: Jason Matusiak <jason@gardettoengineering.com>
Gesendet: Montag, 29. Juli 2019 13:50
An: usrp-users@lists.ettus.com; Erik Heinz
Betreff: Re: X310 slow with gnuradio

Shot in the dark Erik:
    What is your MTU set at for the ethernet port?  Try setting it to 9000 =
if it isn't and see if that does anything for you.
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Erik Hei=
nz via USRP-users <usrp-users@lists.ettus.com>
Sent: Monday, July 29, 2019 7:30 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] X310 slow with gnuradio


Hi,


I am getting lots of underflow errors when sending with gnuradio to an X310=
 at sampling rates of 50 MSps and higher. The flowchart is as simple as pos=
sible: a signal source and a

"UHD: USRP Sink" block. When sending and receiving at the same time, the pe=
rformance is even worse.


The X310 is connected to the PC by 10G ethernet. Using the UHD example prog=
rams benchmark_rate, tx_waveforms, txrx_loopback_to_file etc., a sampling r=
ate of 200 MSps full duplex is no problem at all. So it is not a problem of=
 the UHD driver and the network setup should be OK as well.


The processor is an Intel core i3-7100 @3.9GHz.  A gnuradio flowchart with =
a signal source, a throttle block and a file sink works at 50 MSps sampling=
 rate and more, so the processor speed should not be a problem either. The =
gnuradio version is 3.7.11 which is the one currently distributed for Ubunt=
u buster.


Any ideas? Could an update to a more recent gnuradio version help?


Best regards,

Erik





--_000_BL0PR12MB23406901E5927304D6DE3D55AFDD0BL0PR12MB2340namp_
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
Erik,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Whoops, I glazed over that point, sorry.&nbsp; I am not really sure what el=
se to try.&nbsp; That is a pretty old version of GR, could you maybe try a =
newer version in a different directory/prefix (so it doesn't mess up your c=
urrent build)?&nbsp; At what sample rate do things
 seem to work right again?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Erik Heinz &lt;erik.h=
einz@supracon.com&gt;<br>
<b>Sent:</b> Monday, July 29, 2019 8:02 AM<br>
<b>To:</b> Jason Matusiak &lt;jason@gardettoengineering.com&gt;; usrp-users=
@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> AW: X310 slow with gnuradio</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr" style=3D"font-size:12pt; color:#000000; background-color:#=
FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
Hi jason,<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
I had the MTU set to 8028. I increased to 9000, just&nbsp;to make&nbsp;sure=
 -&gt; no change.</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
As I wrote, the UHD driver itself can transmit at full speed, so it should =
be no network issue.<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
Best regards,</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
Erik<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
&nbsp;<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
<br>
</p>
<div dir=3D"ltr" style=3D"color:rgb(33,33,33)">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>Von:</b> Jason Matusiak &lt;j=
ason@gardettoengineering.com&gt;<br>
<b>Gesendet:</b> Montag, 29. Juli 2019 13:50<br>
<b>An:</b> usrp-users@lists.ettus.com; Erik Heinz<br>
<b>Betreff:</b> Re: X310 slow with gnuradio</font>
<div>&nbsp;</div>
</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Shot in the dark Erik:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
&nbsp; &nbsp; What is your MTU set at for the ethernet port?&nbsp; Try sett=
ing it to 9000 if it isn't and see if that does anything for you.</div>
<div id=3D"x_Signature">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> USRP-users &lt;usrp=
-users-bounces@lists.ettus.com&gt; on behalf of Erik Heinz via USRP-users &=
lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Monday, July 29, 2019 7:30 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] X310 slow with gnuradio</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr" style=3D"font-size:12pt; color:#000000; background-color:#=
FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;margin-top:0px; margin-bottom:0px">
Hi,</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;margin-top:0px; margin-bottom:0px">
<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;margin-top:0px; margin-bottom:0px">
I am getting lots of underflow errors when sending with gnuradio to an X310=
 at sampling rates of 50 MSps and higher. The flowchart is as simple as pos=
sible: a signal source and a&nbsp;</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;margin-top:0px; margin-bottom:0px">
&quot;UHD: USRP Sink&quot; block.&nbsp;When sending and receiving at the sa=
me time,&nbsp;the performance is even&nbsp;worse.
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;margin-top:0px; margin-bottom:0px">
<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;margin-top:0px; margin-bottom:0px">
The X310 is connected to the PC by 10G ethernet. Using the UHD example prog=
rams&nbsp;benchmark_rate,&nbsp;tx_waveforms, txrx_loopback_to_file etc.,&nb=
sp;a&nbsp;sampling rate&nbsp;of 200 MSps&nbsp;full duplex&nbsp;is no&nbsp;p=
roblem at all. So it is not a problem of the UHD driver and the network
 setup should be&nbsp;OK as well. </p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;margin-top:0px; margin-bottom:0px">
<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;margin-top:0px; margin-bottom:0px">
The processor is an Intel core i3-7100&nbsp;@3.9GHz.&nbsp; A gnuradio flowc=
hart with a signal source, a throttle block and a file sink works at 50 MSp=
s sampling rate and more, so the&nbsp;processor speed should not be a probl=
em either. The gnuradio version is 3.7.11 which
 is the one currently distributed for Ubuntu buster.<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;margin-top:0px; margin-bottom:0px">
<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;margin-top:0px; margin-bottom:0px">
Any ideas? Could an update to a more recent gnuradio version help?</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;margin-top:0px; margin-bottom:0px">
<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;margin-top:0px; margin-bottom:0px">
Best regards,</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;margin-top:0px; margin-bottom:0px">
Erik<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;margin-top:0px; margin-bottom:0px">
<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;margin-top:0px; margin-bottom:0px">
&nbsp;<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;margin-top:0px; margin-bottom:0px">
<br>
</p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB23406901E5927304D6DE3D55AFDD0BL0PR12MB2340namp_--


--===============6622978181799953217==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6622978181799953217==--

