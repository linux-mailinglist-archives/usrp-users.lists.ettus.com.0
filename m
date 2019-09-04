Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BF3A8661
	for <lists+usrp-users@lfdr.de>; Wed,  4 Sep 2019 18:11:26 +0200 (CEST)
Received: from [::1] (port=43302 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i5XsQ-0004No-8m; Wed, 04 Sep 2019 12:11:22 -0400
Received: from dispatch1-us1.ppe-hosted.com ([67.231.154.164]:45422)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1i5XsL-0004HX-N9
 for usrp-users@lists.ettus.com; Wed, 04 Sep 2019 12:11:17 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 4CF83105DF7
 for <usrp-users@lists.ettus.com>; Wed,  4 Sep 2019 16:10:37 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-by2nam03lp2055.outbound.protection.outlook.com [104.47.42.55])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us2.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 35D9534006A
 for <usrp-users@lists.ettus.com>; Wed,  4 Sep 2019 16:10:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U3Xq+EISJ5hvEFa3FJOEVbMepxpjhLenV2QnBQktYUCW9d7AVBp19hkc+xN3BxHQvsxPvVM+5QZ49AhT7Vh8WL6heu1qPdqMVpKRPYJNNcihjTn4W0CRRk/71wPIR96UDSPIqG15PeFI1Dcy0xKViMj9fw1RH6uYCd3C4l5tuOepPugEynl3MCG38QbPmfLjfQASTOSIGy35SnOEBr37ugDi/ER2avmRLs0MEUFNDlPIf16dMsUiNMClBij4Sp7RiEmpvFmSQZvoYf1RDcGdH+LJ9AdnA7e2wCyXkse537g5c50E/kJXuo16gu+Q9kKx2Wt9W5xzXsCkLJoA65e5hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2QhNEQfGRWWSXtdKxVJdvfQs+BHYP5mED+H/oczHqv0=;
 b=d6/IBdsxh1uwCuxJpbHssIHwCOJSS/rxUPuBMcZ8+G4rwss39biW/RivQcD1yxczHgsGpMqHYjKQKeZrOg2gk9UbCTOXIxMBOH7C8qzNtQQQamrDVf6vjx/zq4g2TFEudrSEB3q9BbOkbtYhhh3qXw0VurIYkO2mVXDALbhh3iYgP2iAy3iGVpr9/j0PG1ma1MqthD9/o4Giyg0eFaH+Qm1g4E7PcO6eErwRLuEeaS41KW3izsowh+UM2DrixwNWMfWR46m97URkndghaJalblMRo7U76tFF7KcfYIT1n3v1Pe/7gZBhBi5cslRFB4dq/SiEMdLOQ0vCADWt8EEG5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2QhNEQfGRWWSXtdKxVJdvfQs+BHYP5mED+H/oczHqv0=;
 b=ir7tl0Wn1YwMun/r6bC3tAies5xudaMsoIX9h8y9Ujj08QYnIKDmvljkn+9jPj34m5YzidLTPwt8tLtLjnsMec3unQtw3L9mF4yENdIUfZxkNJ/Y/cWWMH6chjCB9gJS4Bkvg7aNR9wpp1A9ALQDoJtK+HsDg4ZcD7SbHYTI/qE=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.11.30) by
 BL0PR12MB2563.namprd12.prod.outlook.com (52.132.10.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.19; Wed, 4 Sep 2019 16:10:23 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::10b:c950:7de9:d8d8]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::10b:c950:7de9:d8d8%6]) with mapi id 15.20.2220.022; Wed, 4 Sep 2019
 16:10:23 +0000
To: Ettus Mail List <usrp-users@lists.ettus.com>, Jason Matusiak
 <jason@gardettoengineering.com>
Thread-Topic: flowgraphs not stopping
Thread-Index: AQHVYyV07u5VtC60mEKpeDPkx3OLTacbr/LP
Date: Wed, 4 Sep 2019 16:10:23 +0000
Message-ID: <BL0PR12MB2340580EB41820A731840688AFB80@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB2340FFE697102E2EB5276D30AFB80@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB2340FFE697102E2EB5276D30AFB80@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 17e4cf2d-9c50-40df-ccce-08d731526434
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600166)(711020)(4605104)(1401327)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7193020);
 SRVR:BL0PR12MB2563; 
x-ms-traffictypediagnostic: BL0PR12MB2563:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR12MB25639B149AE8C0A835350A0FAFB80@BL0PR12MB2563.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0150F3F97D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(396003)(366004)(346002)(39830400003)(189003)(199004)(446003)(33656002)(2906002)(19627405001)(105004)(486006)(14444005)(86362001)(316002)(256004)(7696005)(66946007)(76176011)(71200400001)(64756008)(66476007)(66446008)(11346002)(476003)(99286004)(53546011)(102836004)(26005)(76116006)(2940100002)(186003)(6506007)(6116002)(3846002)(7736002)(81166006)(71190400001)(5660300002)(66556008)(81156014)(6246003)(8676002)(9686003)(508600001)(229853002)(8936002)(54896002)(52536014)(3480700005)(66066001)(55016002)(110136005)(53936002)(6436002)(25786009)(14454004)(74316002)(7116003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2563;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7mJ5/NaHcI9ov++qLpQhgEFnI1lIWT29Ty4/mh/dJ49vJXE/oEhKH+wrzO0MNSQilcYrBlZdztWvyOZK17hoCUNIjgXJsBghaFJPwCxF+hTvii/MMJeJo0YHVibGTO/vEIPrKcu+ZBOnUCbJG/Fp9GlprikBJ71KE8QklDXQSFsPHG4DiHekItWnr1HPWguwMb1+izOZHrLMpXmxqwmyhs7grOxu0JtkUXjLJ1CzX15Fkv5ey+jS4KRnQYeUyeMsHZcXRwiTACtV9RuH+BOmJltD1XC2l698Gk+EYPT+BuhDbszdb4MTaXhBT0yCTQdLAEfJFL72uRFPmx7Ua2at9sc0APFovm1sUE3qwywYmsKi1G7zXfbvdpX/awMl8Ox9RmSA0MZwQT2CfXN6wY7HSNgJUfu+as+4EZHYojf20N8=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17e4cf2d-9c50-40df-ccce-08d731526434
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2019 16:10:23.3626 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OA6UfZNPUrj8nPnlIVgWVppHABnGb59ac0LrQREdsQsaPDXKoEocviGDNPUcujIsH366L3cZa1dCsGmU5+ggm/d7DYbH7FVba1eHgZVjPo8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2563
X-MDID: 1567613427-YV1Nr_J7mhRB
Subject: Re: [USRP-users] flowgraphs not stopping
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
Content-Type: multipart/mixed; boundary="===============3517191211034306076=="
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

--===============3517191211034306076==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340580EB41820A731840688AFB80BL0PR12MB2340namp_"

--_000_BL0PR12MB2340580EB41820A731840688AFB80BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I think I've found the problem.  I thought I disabled a GR OOT block when I=
 was running my tests this morning, but I either was wrong, or some process=
 was hung in memory somewhere after I started stripping the flowgraph down.=
  The issue was a block that was spawning a thread that was listening on a =
UDP socket.  When the flowgraph ended, the the thread was told to close, bu=
t the socket was blocking waiting for data that was never going to come.  I=
 added in the timeout option to our socket initialization and it seems to w=
ork fine now.

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Jason Ma=
tusiak via USRP-users <usrp-users@lists.ettus.com>
Sent: Wednesday, September 4, 2019 9:51 AM
To: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: [USRP-users] flowgraphs not stopping

I have a weird problem that I've seen for a while and I've just ignored unt=
il now.  I've seen this with numerous pieces of hardware, but I am currentl=
y using an E320 in network mode.  This seems to only happen when I am using=
 RFNoC, so I assumed it was me, but today I was testing with only stock blo=
cks and have the same issue.

The problem is that when I run a GR flowgraph without a GUI in "prompt for =
exit" mode, it doesn't always seem to exit.  I'll hit enter like I am suppo=
sed to, but it just hangs until I press ctrl-c.  Currently I have an RFNoC:=
Radio -> DmaFIFO -> GR blocks.  I have tested this with different combos of=
 blocks and they all seem to have the same issue.  I originally thought it =
was me or the split stream block, but they are both out of the equation now=
.  Has anyone else seen this issue before?

I am running:
[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-36); Boos=
t_105300; UHD_3.14.1.HEAD-0-g5491b80e

and GR: v3.7.13.4

--_000_BL0PR12MB2340580EB41820A731840688AFB80BL0PR12MB2340namp_
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
</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif">
I think I've found the problem.&nbsp; I thought I disabled a GR OOT block w=
hen I was running my tests this morning, but I either was wrong, or some pr=
ocess was hung in memory somewhere after I started stripping the flowgraph =
down.&nbsp; The issue was a block that was
 spawning a thread that was listening on a UDP socket.&nbsp; When the flowg=
raph ended, the the thread was told to close, but the socket was blocking w=
aiting for data that was never going to come.&nbsp; I added in the timeout =
option to our socket initialization and it
 seems to work fine now.</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Jason Matusiak via USRP-users=
 &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Wednesday, September 4, 2019 9:51 AM<br>
<b>To:</b> Ettus Mail List &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> [USRP-users] flowgraphs not stopping</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I have a weird problem that I've seen for a while and I've just ignored unt=
il now.&nbsp; I've seen this with numerous pieces of hardware, but I am cur=
rently using an E320 in network mode.&nbsp; This seems to only happen when =
I am using RFNoC, so I assumed it was me,
 but today I was testing with only stock blocks and have the same issue.</d=
iv>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
The problem is that when I run a GR flowgraph without a GUI in &quot;prompt=
 for exit&quot; mode, it doesn't always seem to exit.&nbsp; I'll hit enter =
like I am supposed to, but it just hangs until I press ctrl-c.&nbsp; Curren=
tly I have an RFNoC:Radio -&gt; DmaFIFO -&gt; GR blocks.&nbsp;
 I have tested this with different combos of blocks and they all seem to ha=
ve the same issue.&nbsp; I originally thought it was me or the split stream=
 block, but they are both out of the equation now.&nbsp; Has anyone else se=
en this issue before?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I am running:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span>[INFO] [UHD] linux; GNU C&#43;&#43; version 4.8.5 20150623 (Red Hat 4=
.8.5-36); Boost_105300; UHD_3.14.1.HEAD-0-g5491b80e<br>
</span><span></span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
and GR: v3.7.13.4</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB2340580EB41820A731840688AFB80BL0PR12MB2340namp_--


--===============3517191211034306076==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3517191211034306076==--

