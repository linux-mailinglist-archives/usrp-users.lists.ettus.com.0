Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E745E91E
	for <lists+usrp-users@lfdr.de>; Wed,  3 Jul 2019 18:32:34 +0200 (CEST)
Received: from [::1] (port=42800 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hiiBN-0005VR-8L; Wed, 03 Jul 2019 12:32:33 -0400
Received: from becas.av.it.pt ([193.136.92.250]:62805)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <botelhomarinho@av.it.pt>)
 id 1hiiBJ-0005MX-8D
 for usrp-users@lists.ettus.com; Wed, 03 Jul 2019 12:32:29 -0400
Received: from lecas.av.it.pt (192.168.86.21) by becas.av.it.pt
 (192.168.86.20) with Microsoft SMTP Server (TLS) id 15.0.1156.6; Wed, 3 Jul
 2019 17:31:46 +0100
Received: from lecas.av.it.pt ([fe80::3919:3ba0:4fca:ae6e]) by lecas.av.it.pt
 ([fe80::3919:3ba0:4fca:ae6e%15]) with mapi id 15.00.1156.000;
 Wed, 3 Jul 2019 17:31:46 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Full-duplex issues 
Thread-Index: AQHVMbzOjbOz+D3caka/x4YNy0DW1w==
Date: Wed, 3 Jul 2019 16:31:46 +0000
Message-ID: <1562171506188.95247@av.it.pt>
Accept-Language: pt-PT, en-US
Content-Language: pt-PT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.83.137]
MIME-Version: 1.0
Subject: [USRP-users] Full-duplex issues
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
From: Diogo Botelho Ribeiro Marinho via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Diogo Botelho Ribeiro Marinho <botelhomarinho@av.it.pt>
Content-Type: multipart/mixed; boundary="===============4515043511782866714=="
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

--===============4515043511782866714==
Content-Language: pt-PT
Content-Type: multipart/alternative;
	boundary="_000_156217150618895247avitpt_"

--_000_156217150618895247avitpt_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello All,


After finished the full installation of UHD in the Host and the USRP N310 i=
 used the gnu-radio blocks UHD:source /sink to produce full-duplex in the 4=
 TX/RX however the message "L"(that means late command on TX). To solve thi=
s problem I installed the RFnoC blocks and develop some Gnu-radio examples =
without success.


Can you please provide some examples or any idea to solve this problem?


Note: the testbench works fine with full duplex and high sample rate...


Thank you in advanced

Diogo Marinho

--_000_156217150618895247avitpt_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} --></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hello All, </p>
<p><br>
</p>
<p>After finished the full installation of UHD in the Host and the USRP N31=
0 i used the gnu-radio blocks UHD:source /sink to produce full-duplex&nbsp;=
in the&nbsp;4 TX/RX however the message &quot;L&quot;(that means late comma=
nd on TX). To solve this problem I installed the RFnoC
 blocks and develop some Gnu-radio&nbsp;examples without success.</p>
<p><br>
</p>
<p>Can&nbsp;you&nbsp;please provide some examples or any idea&nbsp;to solve=
 this problem?</p>
<p><br>
</p>
<p>Note: the&nbsp;testbench&nbsp;works&nbsp;fine&nbsp;with&nbsp;full duplex=
 and high&nbsp;sample rate...</p>
<p><br>
</p>
<p>Thank you in advanced<br>
</p>
<p>Diogo Marinho<br>
</p>
</body>
</html>

--_000_156217150618895247avitpt_--


--===============4515043511782866714==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4515043511782866714==--

