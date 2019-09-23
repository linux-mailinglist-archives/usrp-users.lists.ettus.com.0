Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D86BB9C4
	for <lists+usrp-users@lfdr.de>; Mon, 23 Sep 2019 18:39:38 +0200 (CEST)
Received: from [::1] (port=38330 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iCRNA-0007iS-DB; Mon, 23 Sep 2019 12:39:36 -0400
Received: from lecas.av.it.pt ([193.136.92.250]:35678)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <botelhomarinho@av.it.pt>)
 id 1iCRN6-0007XU-RH
 for usrp-users@lists.ettus.com; Mon, 23 Sep 2019 12:39:32 -0400
Received: from becas.av.it.pt (192.168.86.20) by lecas.av.it.pt
 (192.168.86.21) with Microsoft SMTP Server (TLS) id 15.0.1156.6; Mon, 23 Sep
 2019 17:38:49 +0100
Received: from becas.av.it.pt ([fe80::3548:1929:e6e8:180f]) by becas.av.it.pt
 ([fe80::3548:1929:e6e8:180f%17]) with mapi id 15.00.1156.000;
 Mon, 23 Sep 2019 17:38:49 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: rx_to_file
Thread-Index: AQHVciz1sPX+qvMTeE+IEjjXerCwbQ==
Date: Mon, 23 Sep 2019 16:38:49 +0000
Message-ID: <1569256729341.35718@av.it.pt>
Accept-Language: pt-PT, en-US
Content-Language: pt-PT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.81.225]
MIME-Version: 1.0
Subject: [USRP-users] rx_to_file
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
Content-Type: multipart/mixed; boundary="===============5509744679596522015=="
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

--===============5509744679596522015==
Content-Language: pt-PT
Content-Type: multipart/alternative;
	boundary="_000_156925672934135718avitpt_"

--_000_156925672934135718avitpt_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,


I used the "rx_to_file " executable file test to receive samples from USR N=
310 and the file with rx camples as the following format:



0000 0000 0000 0000 8600 c038 5900 00b8
8600 c038 5900 00b8 5900 8038 8600 c0b8
5900 8038 0000 0000 5900 8038 0000 0000
5900 8038 5900 0038 5900 8038 5900 0038
5900 0038 0000 0000 5900 0038 5900 00b8
5900 00b8 0000 0000 0000 0000 5900 00b8
5900 8038 5900 00b8 5900 0038 5900 00b8
5900 0038 5900 00b8 0000 0000 5900 00b8
5900 0038 5900 80b8 0000 0000 5900 00b8
5900 0038 0000 0000 5900 8038 5900 80b8
5900 0038 0000 0000 5900 0038 5900 00b8

.....

...




Can you tell me how this I/Q samples are organized? by channel ?

How can i represent this?


Thanks in advanced

Diogo Marinho


--_000_156925672934135718avitpt_
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
<p>Hello,</p>
<p><br>
</p>
<p>I used the &quot;rx_to_file &quot; executable file test to receive sampl=
es from USR N310 and the file with rx camples as the following format:</p>
<p><br>
</p>
<p><br>
</p>
<p>0000 0000 0000 0000 8600 c038 5900 00b8<br>
8600 c038 5900 00b8 5900 8038 8600 c0b8<br>
5900 8038 0000 0000 5900 8038 0000 0000<br>
5900 8038 5900 0038 5900 8038 5900 0038<br>
5900 0038 0000 0000 5900 0038 5900 00b8<br>
5900 00b8 0000 0000 0000 0000 5900 00b8<br>
5900 8038 5900 00b8 5900 0038 5900 00b8<br>
5900 0038 5900 00b8 0000 0000 5900 00b8<br>
5900 0038 5900 80b8 0000 0000 5900 00b8<br>
5900 0038 0000 0000 5900 8038 5900 80b8<br>
5900 0038 0000 0000 5900 0038 5900 00b8<br>
</p>
<p>.....</p>
<p>...</p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
<p>Can you tell me how this I/Q samples are organized? by channel ? </p>
<p>How can i represent this?</p>
<p><br>
</p>
<p>Thanks in advanced</p>
<p>Diogo Marinho <br>
</p>
<p><br>
</p>
</body>
</html>

--_000_156925672934135718avitpt_--


--===============5509744679596522015==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5509744679596522015==--

