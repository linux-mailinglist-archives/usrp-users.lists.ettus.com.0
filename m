Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F77E330C
	for <lists+usrp-users@lfdr.de>; Thu, 24 Oct 2019 14:52:36 +0200 (CEST)
Received: from [::1] (port=52614 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iNcbK-0006j1-6c; Thu, 24 Oct 2019 08:52:26 -0400
Received: from oxalide-smtp-out.extra.cea.fr ([132.168.224.13]:47610)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <rodolphe.bertolini@cea.fr>)
 id 1iNcbG-0006e8-JM
 for usrp-users@lists.ettus.com; Thu, 24 Oct 2019 08:52:22 -0400
Received: from pisaure.intra.cea.fr (pisaure.intra.cea.fr [132.166.88.21])
 by oxalide-sys.extra.cea.fr (8.14.7/8.14.7/CEAnet-Internet-out-4.0) with ESMTP
 id x9OCpenP024903
 for <usrp-users@lists.ettus.com>; Thu, 24 Oct 2019 14:51:40 +0200
Received: from pisaure.intra.cea.fr (localhost [127.0.0.1])
 by localhost (Postfix) with SMTP id 95F112079B3
 for <usrp-users@lists.ettus.com>; Thu, 24 Oct 2019 14:51:40 +0200 (CEST)
Received: from muguet1-smtp-out.intra.cea.fr (muguet1-smtp-out.intra.cea.fr
 [132.166.192.12])
 by pisaure.intra.cea.fr (Postfix) with ESMTP id 8B1F02079AE
 for <usrp-users@lists.ettus.com>; Thu, 24 Oct 2019 14:51:40 +0200 (CEST)
Received: from EXCAH-B2.intra.cea.fr (excah-b2.intra.cea.fr [132.166.88.87])
 by muguet1-sys.intra.cea.fr (8.14.7/8.14.7/CEAnet-Internet-out-4.0) with ESMTP
 id x9OCpeTb024879
 for <usrp-users@lists.ettus.com>; Thu, 24 Oct 2019 14:51:40 +0200
Received: from EXDAG0-B2.intra.cea.fr ([fe80::d079:8496:6c6c:9b1f]) by
 EXCAH-B2.intra.cea.fr ([fe80::6d9a:7f48:7b8f:6abc%11]) with mapi id
 14.03.0468.000; Thu, 24 Oct 2019 14:51:40 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X310 and N310: using multiple RF
Thread-Index: AdWKZy+Gw6OIbKKyRAaBOo7dtYCwMQ==
Date: Thu, 24 Oct 2019 12:51:39 +0000
Message-ID: <F479266F97CCAE47854721C82406934E1CFD7097@EXDAG0-B2.intra.cea.fr>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [132.166.88.110]
x-tm-as-product-ver: SMEX-11.0.0.4179-8.100.1062-23234.003
x-tm-as-result: No--2.837700-0.000000-31
x-tm-as-user-approved-sender: Yes
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: [USRP-users] X310 and N310: using multiple RF
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
From: BERTOLINI Rodolphe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: BERTOLINI Rodolphe <rodolphe.bertolini@cea.fr>
Content-Type: multipart/mixed; boundary="===============4552848386382298640=="
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

--===============4552848386382298640==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_F479266F97CCAE47854721C82406934E1CFD7097EXDAG0B2intrace_"

--_000_F479266F97CCAE47854721C82406934E1CFD7097EXDAG0B2intrace_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello USRP-users mailing list,

We are using an X310 for OpenAirInterface (OAI). It has one RF card.
I wonder the following:


  *   With the following configuration:
     *   USRP X310, HG image, one RF card
     *   host connected to USRP through 1*10Gbps and 1*1Gbps
  *   I run OAI on the 10Gbps ethernet interface, and while it is running I=
 tried to run an other instance via the 1Gbps ethernet interface. I didn't =
expect it to work, but I didn't expect neither the error message: uhd tells=
 me that no USRP was found (I made sure it looks-up through the 1Gbps inter=
face).
     *   My interpretation is that once that all of the available RF cards =
have an established link with the host, USRP closes all of the free interfa=
ces (PCIe, ethernet...)
     *   Thus, if I put an other RF card, and tell the USRP to use only one=
 ethernet interface per RF card, then I would be able to run one OAI instan=
ce through an ethernet interface + an RF card, and an other instance throug=
h the other ethernet interface + the other RF card. Is it correct?
     *   Now if we consider the N310, its 4 RF cards and its 2 ethernet int=
erfaces: (ignoring limitation from OAI bandwidth requirements) is it possib=
le to run two instances of OAI through a single ethernet interface, so that=
 I could run four instance through two ethernet interfaces?
     *   If all of the above is correct, do you have any idea on how to ach=
ieve this?

Thank you
Regards,
Rodolphe

--_000_F479266F97CCAE47854721C82406934E1CFD7097EXDAG0B2intrace_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" id=3D"owaParaStyle"></style>
</head>
<body fpstyle=3D"1" ocsi=3D"0">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">
<div>Hello USRP-users mailing list,</div>
<div><br>
</div>
<div>We are using an X310 for OpenAirInterface (OAI). It has one RF card.</=
div>
<div>I wonder the following:</div>
<div><br>
<ul style=3D"font-family: Tahoma; font-size: 10pt;">
<li>With the following configuration:
<ul>
<li>USRP X310, HG image, one RF card<br>
</li><li>host connected to USRP through 1*10Gbps and 1*1Gbps</li></ul>
</li><li>I run OAI on the 10Gbps ethernet interface, and while it is runnin=
g I tried to run an other instance via the 1Gbps ethernet interface. I didn=
't expect it to work, but I didn't expect neither the error message: uhd te=
lls me that no USRP was found (I made
 sure it looks-up through the 1Gbps interface).
<ul>
<li>My interpretation is that once that all of the available RF cards have =
an established link with the host, USRP closes all of the free interfaces (=
PCIe, ethernet...)</li><li>Thus, if I put an other RF card, and tell the US=
RP to use only one ethernet interface per RF card, then I would be able to =
run one OAI instance through an ethernet interface &#43; an RF card, and an=
 other instance through the other ethernet interface &#43; the
 other RF card. Is it correct?<br>
</li><li>Now if we consider the N310, its 4 RF cards and its 2 ethernet int=
erfaces: (ignoring limitation from OAI bandwidth requirements) is it possib=
le to run two instances of OAI through a single ethernet interface, so that=
 I could run four instance through two
 ethernet interfaces?</li><li>If all of the above is correct, do you have a=
ny idea on how to achieve this?<br>
</li></ul>
</li></ul>
<div><br>
</div>
<div>Thank you</div>
<div>Regards,</div>
<div>Rodolphe<br>
</div>
</div>
</div>
</body>
</html>

--_000_F479266F97CCAE47854721C82406934E1CFD7097EXDAG0B2intrace_--


--===============4552848386382298640==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4552848386382298640==--

