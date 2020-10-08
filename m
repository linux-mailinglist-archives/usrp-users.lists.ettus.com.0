Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C3483287664
	for <lists+usrp-users@lfdr.de>; Thu,  8 Oct 2020 16:51:28 +0200 (CEST)
Received: from [::1] (port=49674 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQXGO-0005a5-H3; Thu, 08 Oct 2020 10:51:24 -0400
Received: from mailservice.tudelft.nl ([130.161.131.5]:35827)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <C.E.V.Diouf@tudelft.nl>)
 id 1kQXGJ-0005Mb-L8
 for usrp-users@lists.ettus.com; Thu, 08 Oct 2020 10:51:19 -0400
Received: from localhost (localhost [127.0.0.1])
 by amavis (Postfix) with ESMTP id 1D483400B7
 for <usrp-users@lists.ettus.com>; Thu,  8 Oct 2020 16:50:31 +0200 (CEST)
X-Virus-Scanned: amavisd-new at tudelft.nl
X-Spam-Flag: NO
X-Spam-Score: -0.195
X-Spam-Level: 
X-Spam-Status: No, score=-0.195 tagged_above=-99 required=5
 tests=[ALL_TRUSTED=-1, BASW_FROM=0.01, HTML_MESSAGE=0.001,
 RDNS_NONE=0.793, SPF_HELO_NONE=0.001] autolearn=no autolearn_force=no
Received: from mailservice.tudelft.nl ([130.161.131.69])
 by localhost (tudelft.nl [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Ueq73wE25rti for <usrp-users@lists.ettus.com>;
 Thu,  8 Oct 2020 16:50:30 +0200 (CEST)
Received: from SRV217.tudelft.net (mailboxcluster.tudelft.net [131.180.6.17])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.tudelft.nl (Postfix) with ESMTPS id 403CC400AA
 for <usrp-users@lists.ettus.com>; Thu,  8 Oct 2020 16:50:30 +0200 (CEST)
Received: from SRV220.tudelft.net (131.180.6.20) by SRV217.tudelft.net
 (131.180.6.17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P521) id 15.1.2044.4; Thu, 8 Oct
 2020 16:50:23 +0200
Received: from SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210]) by
 SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210%13]) with mapi id
 15.01.2044.006; Thu, 8 Oct 2020 16:50:23 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Replay block time commands
Thread-Index: AQHWnYISyK3WZWXBvkCxLb/keUBrig==
Date: Thu, 8 Oct 2020 14:50:23 +0000
Message-ID: <2e92fb3d3f694bcca5767b03451b4f05@tudelft.nl>
Accept-Language: en-US, nl-NL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: [USRP-users] Replay block time commands
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
From: Cherif Diouf via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Cherif Diouf <C.E.V.Diouf@tudelft.nl>
Content-Type: multipart/mixed; boundary="===============7549323107264445906=="
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

--===============7549323107264445906==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2e92fb3d3f694bcca5767b03451b4f05tudelftnl_"

--_000_2e92fb3d3f694bcca5767b03451b4f05tudelftnl_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


http://ettus.80997.x6.nabble.com/USRP-users-X310-Replay-Block-and-receiver-=
timming-td11818.html


From this post and at the time the replay block did not support time-comman=
ds. Is the functionality now available. And did anyone test it?


Cherif

--_000_2e92fb3d3f694bcca5767b03451b4f05tudelftnl_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hi,</p>
<p><br>
</p>
<p><a href=3D"http://ettus.80997.x6.nabble.com/USRP-users-X310-Replay-Block=
-and-receiver-timming-td11818.html" class=3D"OWAAutoLink">http://ettus.8099=
7.x6.nabble.com/USRP-users-X310-Replay-Block-and-receiver-timming-td11818.h=
tml</a></p>
<p><br>
</p>
<p>From this post and at the time the replay block did not support time-com=
mands. Is the functionality now available. And did anyone test it?</p>
<p><br>
</p>
<p>Cherif<br>
</p>
</div>
</body>
</html>

--_000_2e92fb3d3f694bcca5767b03451b4f05tudelftnl_--


--===============7549323107264445906==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7549323107264445906==--

