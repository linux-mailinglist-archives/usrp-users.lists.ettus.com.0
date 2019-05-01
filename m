Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A321F10889
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2019 15:56:53 +0200 (CEST)
Received: from [::1] (port=43124 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hLpj3-000254-RS; Wed, 01 May 2019 09:56:45 -0400
Received: from otransport-8.outbound.emailsrv.net ([52.20.59.36]:44172)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <jason@gardettoengineering.com>)
 id 1hLpiV-0001wm-A9
 for usrp-users@lists.ettus.com; Wed, 01 May 2019 09:56:41 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-8.outbound.emailsrv.net (Postfix) with ESMTPS id AC7FA6183B
 for <usrp-users@lists.ettus.com>; Wed,  1 May 2019 13:55:30 +0000 (UTC)
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
 (mail-bn3nam04lp2058.outbound.protection.outlook.com [104.47.46.58])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id 6D1B0A26D8
 for <usrp-users@lists.ettus.com>; Wed,  1 May 2019 13:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com; s=selector1-gardettoengineering-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SlAFEkYFC5l5G7X4072nrZtBtDxTvvIduO/ez1QPkbM=;
 b=jkhI/v5BDzEsMKzEMggRvb5tCYOaGBqw2PYkKBUfCS+xSm4NICbRJo8uWjiXd6L4KRaLibThyYem+j3VQ1bE6Ew8zH2gMEWwWU+asJtXiU/LJ3e4aHGkglNvDQIFdj9uLz37tOAV27IX8JYnwFGZ9+ighZyQIwMXA2onvm73gyg=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2371.namprd12.prod.outlook.com (52.132.11.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Wed, 1 May 2019 13:55:29 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1d2e:7d8e:79f3:acc2]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1d2e:7d8e:79f3:acc2%4]) with mapi id 15.20.1835.018; Wed, 1 May 2019
 13:55:29 +0000
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: E320 numpy missing?
Thread-Index: AQHVABoTNnG79M7aUECTLuXK0wxQraZWSqj+
Date: Wed, 1 May 2019 13:55:29 +0000
Message-ID: <BL0PR12MB234015C72FC859EABF9D3918AF3B0@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB2340BD354F1A9FDB6CE37E97AF3B0@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB2340BD354F1A9FDB6CE37E97AF3B0@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f7f6d029-f580-466a-ce2c-08d6ce3cabcf
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BL0PR12MB2371; 
x-ms-traffictypediagnostic: BL0PR12MB2371:
x-microsoft-antispam-prvs: <BL0PR12MB2371C0DC9CCBBB311B5E5475AF3B0@BL0PR12MB2371.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:225;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39830400003)(376002)(396003)(366004)(136003)(346002)(189003)(199004)(76176011)(66446008)(64756008)(86362001)(256004)(19627405001)(25786009)(9686003)(8936002)(99286004)(7696005)(5660300002)(2940100002)(66946007)(73956011)(66476007)(53546011)(55016002)(6506007)(81156014)(66066001)(76116006)(102836004)(81166006)(3846002)(8676002)(54896002)(6116002)(7116003)(2906002)(71200400001)(6246003)(476003)(33656002)(508600001)(71190400001)(316002)(446003)(6916009)(26005)(53936002)(11346002)(229853002)(186003)(66556008)(7736002)(74316002)(6436002)(52536014)(14454004)(105004)(486006)(68736007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2371;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bPJVidgHjhRv8/tzHg8O1xPd30SV203BjsLWqpbhxICrkZI7MJjQGWlcwS+1SJLKDbzL+A3UVrLqWKA7LOj/EXkrmOx5yAQDLFQVGBPVr1Tx+wRxXmPh1Z65kaSwtRngS1KdlyAQtTbgL3nSYVZOfldTcb6h0UVYwKs87X3Cjdwx/WK93SW9ShmQYHa1msIKyoO/5hiaoE6RWwG9Lw9W6k3Aq/IPDOjmnPlNVP8OYitxSnk02pDIlzowAUGpLIPOYQ5i0A9khKccETg9hUaf7KMqFmfG9J8o2XcZ+knMpVk8vPkgm0DwMinmllI1WFHFsiEt7IcTSij5dvnusdK+CWZzvRmlfC0qpqiY5emo/9nSETcWXOTY6Lt3LFiL2pJaXDPQ10M5radwlRWiw34X6093uFVA1bP5qNoAFJybRFE=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7f6d029-f580-466a-ce2c-08d6ce3cabcf
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 13:55:29.3704 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2371
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-bn3nam04lp2058.outbound.protection.outlook.com|104.47.46.58|NAM04-BN3-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.46.58, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-15890-c
X-Mailprotector-ID: 84e67a74-1279-4232-95b3-209d6fe2ff2b
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] E320 numpy missing?
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
Content-Type: multipart/mixed; boundary="===============8785638673023027053=="
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

--===============8785638673023027053==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB234015C72FC859EABF9D3918AF3B0BL0PR12MB2340namp_"

--_000_BL0PR12MB234015C72FC859EABF9D3918AF3B0BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I also get a "ImportError: No module named sip" when I try to run: uhd_sigg=
en_gui

So I think a few things might be missing from the cross-compile setup.

________________________________
From: Jason Matusiak
Sent: Wednesday, May 1, 2019 8:46 AM
To: Ettus Mail List
Subject: E320 numpy missing?

Finally got my E320 in and I cross-compiled a new setup.  I tried to fire u=
p my flowgraph (which works fine on an E310) and it is complaining about nu=
mpy missing.

If I do a search from / on the E320, the only numpy that is showing up is:
/usr/include/boost/python/numpy

If I do a search from a good E310 in / I see:
./usr/lib/python2.7/site-packages/numpy
./usr/lib/python2.7/site-packages/numpy/core/include/numpy
./usr/lib/python2.7/site-packages/Cython/Includes/numpy
./usr/include/boost/python/numpy


Back on the host machine, my E320 cross-compile prefix shows numpy:
./sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/include/boost/python/numpy

My good E310 prefix shows:
./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1.13.1=
-r0/numpy-1.13.1/build/src.linux-x86_64-2.7/numpy
./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1.13.1=
-r0/numpy-1.13.1/build/src.linux-x86_64-2.7/numpy/core/include/numpy
./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1.13.1=
-r0/numpy-1.13.1/numpy
./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1.13.1=
-r0/numpy-1.13.1/numpy/core/include/numpy
./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packages/C=
ython/Includes/numpy
./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packages/n=
umpy
./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packages/n=
umpy/core/include/numpy
./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/include/boost/python/numpy

So, was numpy forgotten?  Left out for a reason?  I am going to attempt to =
build it by hand, but I have a fear that I am going to go down dependency h=
ell with this and other missing packages that GR might want.


--_000_BL0PR12MB234015C72FC859EABF9D3918AF3B0BL0PR12MB2340namp_
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
I also get a &quot;<span>ImportError: No module named sip&quot; when I try =
to run:&nbsp;<span>uhd_siggen_gui<br>
</span><span></span><br>
</span><span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
So I think a few things might be missing from the cross-compile setup.</div=
>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Jason Matusiak<br>
<b>Sent:</b> Wednesday, May 1, 2019 8:46 AM<br>
<b>To:</b> Ettus Mail List<br>
<b>Subject:</b> E320 numpy missing?</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Finally got my E320 in and I cross-compiled a new setup.&nbsp; I tried to f=
ire up my flowgraph (which works fine on an E310) and it is complaining abo=
ut numpy missing.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
If I do a search from / on the E320, the only numpy that is showing up is:&=
nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
/usr/include/boost/python/numpy</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
If I do a search from a good E310 in / I see:&nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span>./usr/lib/python2.7/site-packages/numpy<br>
</span>
<div>./usr/lib/python2.7/site-packages/numpy/core/include/numpy<br>
</div>
<div>./usr/lib/python2.7/site-packages/Cython/Includes/numpy<br>
</div>
<div>./usr/include/boost/python/numpy<br>
</div>
<span></span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Back on the host machine, my E320 cross-compile prefix shows numpy:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
./sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/include/boost/python/numpy<=
br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
My good E310 prefix shows:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span>./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/=
1.13.1-r0/numpy-1.13.1/build/src.linux-x86_64-2.7/numpy<br>
</span>
<div>./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1=
.13.1-r0/numpy-1.13.1/build/src.linux-x86_64-2.7/numpy/core/include/numpy<b=
r>
</div>
<div>./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1=
.13.1-r0/numpy-1.13.1/numpy<br>
</div>
<div>./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1=
.13.1-r0/numpy-1.13.1/numpy/core/include/numpy<br>
</div>
<div>./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packa=
ges/Cython/Includes/numpy<br>
</div>
<div>./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packa=
ges/numpy<br>
</div>
<div>./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packa=
ges/numpy/core/include/numpy<br>
</div>
<div>./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/include/boost/python/num=
py<br>
</div>
<span></span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
So, was numpy forgotten?&nbsp; Left out for a reason?&nbsp; I am going to a=
ttempt to build it by hand, but I have a fear that I am going to go down de=
pendency hell with this and other missing packages that GR might want.</div=
>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB234015C72FC859EABF9D3918AF3B0BL0PR12MB2340namp_--


--===============8785638673023027053==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8785638673023027053==--

