Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0961E4135
	for <lists+usrp-users@lfdr.de>; Wed, 27 May 2020 14:04:52 +0200 (CEST)
Received: from [::1] (port=53410 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jdung-0007WK-UP; Wed, 27 May 2020 08:04:48 -0400
Received: from relay07-mailcontrol.conova.com ([217.196.144.165]:52290
 helo=relay03-mailcontrol.conova.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93)
 (envelope-from <prvs=0409f2fbbb=s1810567006@students.fh-hagenberg.at>)
 id 1jdunb-0007Is-Uy
 for usrp-users@lists.ettus.com; Wed, 27 May 2020 08:04:44 -0400
Received: from fhooembox2.fh-ooe.at ([193.170.127.183]) by
 relay03-mailcontrol.conova.com; Wed, 27 May 2020 14:04:02 +0200
Received: from FHOOEMBOX2.fhooe.at (10.140.60.11) by fhooembox2.fhooe.at
 (10.140.60.11) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Wed, 27 May
 2020 14:04:00 +0200
Received: from FHOOEMBOX2.fhooe.at ([fe80::6dde:8694:7bff:6faa]) by
 fhooembox2.fhooe.at ([fe80::6dde:8694:7bff:6faa%12]) with mapi id
 15.00.1497.006; Wed, 27 May 2020 14:04:00 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X310: control frontend with custom RFNoC blocks
Thread-Index: AQHWNB7o1x3tiB4dDkGOTXXi/nMTjA==
Date: Wed, 27 May 2020 12:04:00 +0000
Message-ID: <b85e909970a544ebb9fd74f25661599f@fhooembox2.fhooe.at>
Accept-Language: en-US, de-AT
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.140.62.9]
MIME-Version: 1.0
X-cloud-security-sender: s1810567006@students.fh-hagenberg.at
X-cloud-security-recipient: usrp-users@lists.ettus.com
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
 relay03-mailcontrol.conova.com with 1DA32B2526D
X-cloud-security-connect: fhooembox2.fh-ooe.at[193.170.127.183], TLS=1,
 IP=193.170.127.183
X-cloud-security: scantime:.3092
Subject: [USRP-users] X310: control frontend with custom RFNoC blocks
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
From: Haberleitner David - S1810567006 via USRP-users
 <usrp-users@lists.ettus.com>
Reply-To: Haberleitner David - S1810567006
 <S1810567006@students.fh-hagenberg.at>
Content-Type: multipart/mixed; boundary="===============7758907855052262547=="
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

--===============7758907855052262547==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_b85e909970a544ebb9fd74f25661599ffhooembox2fhooeat_"

--_000_b85e909970a544ebb9fd74f25661599ffhooembox2fhooeat_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi everyone,


for our project we would like to control frontend settings directly from th=
e hardware to perform fast frequency sweeps.
Is there a way to do that?


From out research it seems that the frontend chips (UBX160 in our case) are=
 controlled via a SPI register in the Radio-NoC block. But we haven't figur=
ed out how to control this register from our custom block (via the Command =
Interface?).


Thanks,
David

--_000_b85e909970a544ebb9fd74f25661599ffhooembox2fhooeat_
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
<p>Hi everyone,</p>
<p><br>
</p>
<p>for our project we would like to control frontend settings directly from=
 the hardware to perform fast frequency sweeps.<br>
Is there a way to do that?</p>
<p><br>
</p>
<p>From out research it seems that the frontend chips (UBX160 in our case) =
are controlled via a SPI register in the Radio-NoC block. But we haven't fi=
gured out how to control this register from our custom block (via the Comma=
nd Interface?).</p>
<p><br>
</p>
<p>Thanks,<br>
David<br>
</p>
</body>
</html>

--_000_b85e909970a544ebb9fd74f25661599ffhooembox2fhooeat_--


--===============7758907855052262547==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7758907855052262547==--

