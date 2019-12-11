Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0091311A762
	for <lists+usrp-users@lfdr.de>; Wed, 11 Dec 2019 10:37:27 +0100 (CET)
Received: from [::1] (port=47526 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieyQo-0001YR-Tr; Wed, 11 Dec 2019 04:37:18 -0500
Received: from mail.dynamicware.de ([62.116.178.137]:41758)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <erik.heinz@supracon.com>)
 id 1ieyQk-0001UW-T3
 for usrp-users@lists.ettus.com; Wed, 11 Dec 2019 04:37:15 -0500
Received: from localhost (localhost [127.0.0.1])
 by mail.dynamicware.de (Postfix) with ESMTP id 324ECB65D79
 for <usrp-users@lists.ettus.com>; Wed, 11 Dec 2019 10:36:33 +0100 (CET)
X-Virus-Scanned: amavisd-new at mail.dynamicware.de
Received: from mail.dynamicware.de ([127.0.0.1])
 by localhost (mail.dynamicware.de [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id W-Oyu7Rdsfjc for <usrp-users@lists.ettus.com>;
 Wed, 11 Dec 2019 10:36:32 +0100 (CET)
Received: from exchange.SupraconAG.local (unknown [109.73.25.41])
 (Authenticated sender: info@supracon.com)
 by mail.dynamicware.de (Postfix) with ESMTPSA id B81B2B65BE6
 for <usrp-users@lists.ettus.com>; Wed, 11 Dec 2019 10:36:32 +0100 (CET)
Received: from exchange.SupraconAG.local (10.3.1.132) by
 exchange.SupraconAG.local (10.3.1.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.464.5; 
 Wed, 11 Dec 2019 10:36:32 +0100
Received: from exchange.SupraconAG.local ([fe80::7144:35e7:733f:abd4]) by
 exchange.SupraconAG.local ([fe80::7144:35e7:733f:abd4%6]) with mapi id
 15.02.0464.005; Wed, 11 Dec 2019 10:36:32 +0100
To: USRP-users <usrp-users@lists.ettus.com>
Thread-Topic: B210: LO and noise issues
Thread-Index: AQHVsAX4Fpod12ig7kekyAKIgcDw7w==
Date: Wed, 11 Dec 2019 09:36:32 +0000
Message-ID: <77a16772b0384a0994c0d4e7b7e7f0ee@supracon.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.1.24]
MIME-Version: 1.0
Subject: [USRP-users] B210: LO and noise issues
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Erik Heinz via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Erik Heinz <erik.heinz@supracon.com>
Content-Type: multipart/mixed; boundary="===============1781748309715639586=="
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

--===============1781748309715639586==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_77a16772b0384a0994c0d4e7b7e7f0eesupraconcom_"

--_000_77a16772b0384a0994c0d4e7b7e7f0eesupraconcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


from the AD9361 data sheet I learn that the USRP B210 has two seperates LOs=
, one for TX and one for RX. On the other hand, the two TX and RX channels =
share one LO, respectively.


I wonder if there is an operation mode where TX and RX use the SAME LO, or =
some trick to achieve this. Probably not?


The difference between using one LO for TX and RX and using two separate sy=
nthesizers, even if they are phase-synchronous and set to the same frequenc=
y, is that two synthesizers have independent 1/f noise introduced by the PL=
L. If using one LO, and feeding TX back to RX, this noise is canceled by th=
e mixing and does not show up in the base band signal.


Any ideas?


Best regards,

Erik




--_000_77a16772b0384a0994c0d4e7b7e7f0eesupraconcom_
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
<p>from the <span>AD9361</span> data sheet I learn that the USRP B210 has t=
wo seperates LOs, one for TX and one for RX. On the other hand, the two TX =
and RX channels share one LO, respectively.<br>
</p>
<p><br>
</p>
<p>I wonder if there is an operation mode where TX and RX use the SAME LO, =
or some trick to achieve this. Probably not?<br>
</p>
<p><br>
</p>
<p>The difference between using one LO for TX and RX and using two separate=
 synthesizers, even if they are phase-synchronous and set to the same frequ=
ency, is that two synthesizers have independent 1/f noise&nbsp;introduced b=
y the PLL. If using one LO, and feeding
 TX back to RX, this noise is canceled by the mixing and does not show up i=
n the base band signal.</p>
<p><br>
</p>
<p>Any ideas?</p>
<p><br>
</p>
<p>Best regards,</p>
<p>Erik</p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
<div id=3D"Signature"></div>
</div>
</body>
</html>

--_000_77a16772b0384a0994c0d4e7b7e7f0eesupraconcom_--


--===============1781748309715639586==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1781748309715639586==--

