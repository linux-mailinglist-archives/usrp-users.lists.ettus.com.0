Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F22C78AE7
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2019 13:51:31 +0200 (CEST)
Received: from [::1] (port=34942 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hs4Bc-0000eY-Sl; Mon, 29 Jul 2019 07:51:28 -0400
Received: from otransport-5.outbound.emailsrv.net ([54.84.246.51]:45154)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hs4BY-0000ZC-NE
 for usrp-users@lists.ettus.com; Mon, 29 Jul 2019 07:51:24 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-5.outbound.emailsrv.net (Postfix) with ESMTPS id 540E961685;
 Mon, 29 Jul 2019 11:50:44 +0000 (UTC)
Received: from NAM05-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam05lp2052.outbound.protection.outlook.com [104.47.48.52])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id CBD5CA3C26;
 Mon, 29 Jul 2019 11:50:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lyO3yZFgwRWuj6Xu5YgizUgACqpmqeDokxj6cZHJmrQBBCo1/9ZTEer49fDH0SdlgwuK307Pvr6LHDXv6Yk/YV8JI4Lv0WPz8fr/ZIMqMLSovfLNRPoO4vcKn/+g/R0QuC4RITaBaOvv+JmgiRHHp12TMgZWyu6khT5YIqqFx85o5n8wb/rhPyF/n61HFCU4Ju6XESfcQV040ZAWUZfemppMJWwkK+rorMdjuNXDjEa4TmH9mIvAEA0qRGvMV/WK54arxZ5RJ4Cbs2swlfCgehEJIFvB8PjtSAFT2n8PrUY8LaPCRI0Nb8IuGaqQ0vuqWQj0/gSUBZWaxzbE8VOtcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W0sgxHIZ1b3z4J2npRon12KdusQ+jjQzrDM+ytKiscw=;
 b=SA95IYT8ruQzbrSP9Ha14XdW4IQ3JHrIkdBff6eZo5xJizjOk94iAW6kYFSqazmmkcMtCudSJWHTU/NfAA5rJd2qxkSH9XJ74UeISf4LL+sAyGos7RxmVjPXFTqLGud4/RnIiWm98K1S/zjtMX7i4gYiTUeEbt7mFC+GpfjFyVy59Tx+zVlH9FxRy2D4F7xorJuDsQ+DmFdCDRhS7uhJ0rjSHWuPbIG9deaypapndSjsR4OOju4XANCqrn9zwW9bniaMXnflTU+vwefuBQBowZh5o0ggYZ5aOFpRyvXd+Jq4fVROaERYOKdBD81XFQ1m9yHU69QxV4+OR/mvOB3YuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=gardettoengineering.com;dmarc=pass action=none
 header.from=gardettoengineering.com;dkim=pass
 header.d=gardettoengineering.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W0sgxHIZ1b3z4J2npRon12KdusQ+jjQzrDM+ytKiscw=;
 b=GflrAYZgLmctCX5Uhg8yN1TtZv51zBPCJy1gJ7hS0AeDHkA5gMoASrNbYckXgLCHZfyO/2afvp9Rzl8nMT8W9ZrzkR+laeRgkphZm3bFLHABJxCUWStmls6GehQR2PUHVBNQhAyJZnHksAA/I0od8Rfnw8VgWjb2jHSegPFOoMc=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.29.147) by
 BL0PR12MB2497.namprd12.prod.outlook.com (52.132.10.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Mon, 29 Jul 2019 11:50:42 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::f04f:ce70:958b:cef2]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::f04f:ce70:958b:cef2%7]) with mapi id 15.20.2094.017; Mon, 29 Jul 2019
 11:50:42 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Erik Heinz
 <erik.heinz@supracon.com>
Thread-Topic: X310 slow with gnuradio
Thread-Index: AQHVRflf5AQks7e2KkqSRTP1NKZdFKbhe4EE
Date: Mon, 29 Jul 2019 11:50:42 +0000
Message-ID: <BL0PR12MB2340E7234FB9747C92CD15F9AFDD0@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <1564399837020.98564@supracon.com>
In-Reply-To: <1564399837020.98564@supracon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6d247922-f230-4c4c-5fb0-08d7141afbd1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2497; 
x-ms-traffictypediagnostic: BL0PR12MB2497:
x-microsoft-antispam-prvs: <BL0PR12MB24975AEFA7747A6C92AED6EDAFDD0@BL0PR12MB2497.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(366004)(396003)(39830400003)(346002)(189003)(199004)(486006)(11346002)(8676002)(68736007)(476003)(74316002)(446003)(81166006)(81156014)(8936002)(105004)(2501003)(7736002)(25786009)(2906002)(6116002)(19627405001)(3846002)(33656002)(6246003)(6506007)(26005)(53936002)(229853002)(55016002)(186003)(9686003)(54896002)(5660300002)(316002)(14444005)(256004)(66446008)(76116006)(66946007)(71200400001)(66476007)(66066001)(508600001)(14454004)(6436002)(53546011)(52536014)(66556008)(102836004)(76176011)(7696005)(86362001)(64756008)(110136005)(71190400001)(99286004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2497;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Qg1nBZ7hqlhfi8ORmv+wUtE3XAEz6cQPh1br8lqXrt9yWFVUDr9jx9KVSP1yDmNNqCKnAm6jV5yEuP+hSClr6sL4K00/slbpru9uo5e84WmENaTbGa+pXxWzvNhJP2IcNEHQNZ2aNnEgtiMIql0jtn2pOS0E9oXcbRBFUZSUpQx7Q/MNgfXVsCsa1jzTTci7tIrZqiEBYpzrLtgviivnzFH4v2WbnlVHG5CANErOI7KQPt3qXxoob5fS61c6kiIvsc5b7T+GTiNlmMxB0tMpWCcTjkyeh+/9ZaMUNAfCmDi85jTlKuLW6sh6VEK63/RqbTATNZj89VhMSisOnGvxKdDuF4h0gpNRAidsiLNsHvdFglhn0gbzoB3Din3SgyddKEc41RiypWPQtS9F+S0m8k/f+/QwAYv8FdN4CHHL8Zg=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d247922-f230-4c4c-5fb0-08d7141afbd1
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 11:50:42.1053 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2497
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-co1nam05lp2052.outbound.protection.outlook.com|104.47.48.52|NAM05-CO1-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.48.52, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-13782-c
X-Mailprotector-ID: 7594980c-39a0-48cd-ba20-9dfe2228a1c5
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
Content-Type: multipart/mixed; boundary="===============4258386698682159295=="
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

--===============4258386698682159295==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340E7234FB9747C92CD15F9AFDD0BL0PR12MB2340namp_"

--_000_BL0PR12MB2340E7234FB9747C92CD15F9AFDD0BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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





--_000_BL0PR12MB2340E7234FB9747C92CD15F9AFDD0BL0PR12MB2340namp_
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
Shot in the dark Erik:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; What is your MTU set at for the ethernet port?&nbsp; Try sett=
ing it to 9000 if it isn't and see if that does anything for you.</div>
<div id=3D"Signature">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Erik Heinz via USRP-users &lt=
;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Monday, July 29, 2019 7:30 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] X310 slow with gnuradio</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr" style=3D"font-size:12pt; color:#000000; background-color:#=
FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Hi,</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">I am getting lots of unde=
rflow errors when sending with gnuradio to an X310 at sampling rates of 50 =
MSps and higher. The flowchart is as simple as possible: a signal source an=
d a&nbsp;</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">&quot;UHD: USRP Sink&quot=
; block.&nbsp;When sending and receiving at the same time,&nbsp;the perform=
ance is even&nbsp;worse.
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">The X310 is connected to =
the PC by 10G ethernet. Using the UHD example programs&nbsp;benchmark_rate,=
&nbsp;tx_waveforms, txrx_loopback_to_file etc.,&nbsp;a&nbsp;sampling rate&n=
bsp;of 200 MSps&nbsp;full duplex&nbsp;is no&nbsp;problem at all. So it is
 not a problem of the UHD driver and the network setup should be&nbsp;OK as=
 well. </p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">The processor is an Intel=
 core i3-7100&nbsp;@3.9GHz.&nbsp; A gnuradio flowchart with a signal source=
, a throttle block and a file sink works at 50 MSps sampling rate and more,=
 so the&nbsp;processor speed should not be a problem
 either. The gnuradio version is 3.7.11 which is the one currently distribu=
ted for Ubuntu buster.<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Any ideas? Could an updat=
e to a more recent gnuradio version help?</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Best regards,</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Erik<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">&nbsp;<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB2340E7234FB9747C92CD15F9AFDD0BL0PR12MB2340namp_--


--===============4258386698682159295==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4258386698682159295==--

