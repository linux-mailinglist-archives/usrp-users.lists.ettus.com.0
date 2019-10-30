Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC74E9C2D
	for <lists+usrp-users@lfdr.de>; Wed, 30 Oct 2019 14:21:42 +0100 (CET)
Received: from [::1] (port=33408 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iPnum-0003kc-4J; Wed, 30 Oct 2019 09:21:32 -0400
Received: from secgw1.intern.tuwien.ac.at ([128.130.30.71]:49542)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <daniel.neunteufel@tuwien.ac.at>)
 id 1iPnui-0003gY-45
 for usrp-users@lists.ettus.com; Wed, 30 Oct 2019 09:21:28 -0400
Received: from totemomail (localhost [127.0.0.1])
 by secgw1.intern.tuwien.ac.at (8.14.7/8.14.7) with ESMTP id x9UDKkhp018786
 for <usrp-users@lists.ettus.com>; Wed, 30 Oct 2019 14:20:46 +0100
Received: from localhost ([127.0.0.1])
 by totemomail (Totemo SMTP Server) with SMTP ID 829
 for <usrp-users@lists.ettus.com>;
 Wed, 30 Oct 2019 14:20:45 +0100 (CET)
Received: from edge13b.intern.tuwien.ac.at (edge13b.intern.tuwien.ac.at
 [IPv6:2001:629:1005:30::67])
 by secgw1.intern.tuwien.ac.at (8.14.7/8.14.7) with ESMTP id x9UDKjl4018779
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=OK)
 for <usrp-users@lists.ettus.com>; Wed, 30 Oct 2019 14:20:45 +0100
Received: from mbx13b.intern.tuwien.ac.at (2001:629:1005:30::62) by
 edge13b.intern.tuwien.ac.at (2001:629:1005:30::67) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Wed, 30 Oct 2019 14:20:45 +0100
Received: from mbx13b.intern.tuwien.ac.at (2001:629:1005:30::62) by
 mbx13b.intern.tuwien.ac.at (2001:629:1005:30::62) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Wed, 30 Oct 2019 14:20:45 +0100
Received: from mbx13b.intern.tuwien.ac.at ([fe80::f0e9:7c2:196e:5846]) by
 mbx13b.intern.tuwien.ac.at ([fe80::f0e9:7c2:196e:5846%20]) with mapi id
 15.00.1497.000; Wed, 30 Oct 2019 14:20:45 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Cannot load X310 FPGA image
Thread-Index: AQHVjyEOytDndXMmD02hAqpu2xs29Q==
Date: Wed, 30 Oct 2019 13:20:44 +0000
Message-ID: <1572441644641.81263@tuwien.ac.at>
Accept-Language: en-US, de-AT
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [128.130.30.11]
MIME-Version: 1.0
Subject: [USRP-users] Cannot load X310 FPGA image
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
From: "Neunteufel, Daniel via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Neunteufel, Daniel" <daniel.neunteufel@tuwien.ac.at>
Content-Type: multipart/mixed; boundary="===============5178733769413031141=="
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

--===============5178733769413031141==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_157244164464181263tuwienacat_"

--_000_157244164464181263tuwienacat_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


I'm working with three X310 with TwinRX daughterboards. I tried the latest =
UHD 3.15 with the according v36 XG FPGA image. As I encountered problems wi=
th DPDK support in this UHD version, I went back to the latest stable relea=
se 3.14.1.1, which solved this problem.


Downgrading the X310 FPGA images to v35 (necessary for 3.14.1.1) worked lik=
e a charm on two of the devices, however, for one uhd_image_loader terminat=
ed with
"Error: RuntimeError: Device reported an error during initialization.".

I loaded the desired image into volatile memory via JTAG using Vivado. Doin=
g so, I'm able to use the device with UHD 3.14.1.1 until power cycling. The=
 uhd_image_loader still does not work, causing the same error message. Usin=
g the HG image doesn't help, either.


The problem is very similar to the one described here, but unfortunately th=
e solution seems to be off-list:

http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2016-October/05=
0028.html



Any help highly appreciated.
Thanks,
Daniel


--_000_157244164464181263tuwienacat_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p></p>
Hi all,
<p><br>
</p>
<p>I'm working with three X310 with TwinRX daughterboards. I tried the late=
st UHD 3.15 with the according v36 XG FPGA image. As I encountered problems=
 with DPDK support in this UHD version, I went back to the latest stable re=
lease 3.14.1.1, which solved this
 problem.<br>
</p>
<p><br>
</p>
<p>Downgrading the X310 FPGA images to v35 (necessary for 3.14.1.1) worked =
like a charm on&nbsp;two of the&nbsp;devices, however, for one&nbsp;<em>uhd=
_image_loader</em> terminated with<br>
&quot;<em>Error: RuntimeError: Device reported an error during initializati=
on.</em>&quot;.</p>
<p><br>
I loaded the desired image into volatile memory via&nbsp;JTAG using Vivado.=
 Doing so, I'm able to use the device with UHD 3.14.1.1 until power cycling=
.&nbsp;The<em>&nbsp;uhd_image_loader
</em>still does not work, causing the same error message. <em></em>Using th=
e HG image doesn't help, either.</p>
<p><br>
</p>
The problem is very similar to the one described here, but unfortunately th=
e solution seems to be off-list:<br>
<p><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2=
016-October/050028.html">http://lists.ettus.com/pipermail/usrp-users_lists.=
ettus.com/2016-October/050028.html</a></p>
<p><br>
</p>
<p><br>
</p>
<p>Any help highly appreciated.<br>
Thanks,<br>
Daniel<br>
</p>
<p><br>
</p>
</body>
</html>

--_000_157244164464181263tuwienacat_--


--===============5178733769413031141==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5178733769413031141==--

