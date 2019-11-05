Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E27F0460
	for <lists+usrp-users@lfdr.de>; Tue,  5 Nov 2019 18:51:32 +0100 (CET)
Received: from [::1] (port=56116 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iS2zJ-0006KL-2b; Tue, 05 Nov 2019 12:51:29 -0500
Received: from mail-oln040092004074.outbound.protection.outlook.com
 ([40.92.4.74]:43870 helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <e070832@hotmail.com>) id 1iS2zF-0006AZ-8C
 for usrp-users@lists.ettus.com; Tue, 05 Nov 2019 12:51:25 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nuHXm8wf68yV2/yPgJlDtQqZdOhdIYC6QSJQDKjuwLlaZBfjWaQFyCAHd0ErafCWDW2u1qtitbDdbBU2454nfqkCuV5YWvQQVMaIUXcIBqtjQXccCBMfqocYXhhLgxzn0w/6vAA1bSSTxeSU9pedeu9xKjCnRs8sdZ6NG7xFrQY6WYioJgIvURauIkxguDBeoYHyCNDvY3B3+RkzLh0PUSO7x0Jiq9fzSSHrYRubUwDxPL59Y/R4ck+Lv4Fu3+s6DIeIJ7GBfwHVQt0mXghfVDmTSI/HsqaZ72dnJFa9sBfBcSxmhgACEHQ4Lkb1ggy4Z5PnyuwXapByyCpkAmNawQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b6SxJLF/dX19CALpknmwyg37lymfsJ57HHCdGyntg/0=;
 b=Djmde/lFPE5shFaIUZyZu8tnQqhLv9EjK2ZB1CReTc4tHOeE4QvPPn4jJd/M6hRU7EjzGFfW1u8FLEpeMK7vebzxaw+718kRp97WMpWnFWfb8+EAGruA6JEnR6ppa2DOShkAg0bjA0umUn/FmYxbhi86JdJM8ff4y8ONkwUEnhOIFDY1h+IBOXetddFa9XvPyANR6KKiRstInDLPgK3igOtB1iOnBJmmr7dSn0Bc9kXexi5Fawv9vi7cVcWARTOUp7w3tn/6VAN5oWAU2Eh+3GtRjUyb0vAUJV0Q+FF1O9xp9dgABKn2w0aVeGqlmoArxBn4AY9BQk3doolJGegWlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b6SxJLF/dX19CALpknmwyg37lymfsJ57HHCdGyntg/0=;
 b=Lzq+YSTr68i2mxsnVl5mFUbN5APCwKKgxDJe07OZX83EveYau3ax/CvNj2hQbkoPYO3/ZPx82uGkZP3sJXrS1D5vR9xHJUMURTOLmo1bM0eTVrntGq116VAIlkM0iG5bCgFFdH8uHPTMm9rXZk3eURHqvpoxa2SeREp1XzXjFTwzKu4QwdxSgrBHyUpjkVuI/oweIMy1Ha12IeVRSv9vI+fdvgdCLEz/E8REatDtszARrGnDoNxBZKnu6wLDH3cptCB0Odhha6W0bnnISoTHONBSVqaHKYrEnMYmdkmCM66Q0QKpo5bMe/hS6f57njHEyNjTdCoCc2o17BUDvp4MYQ==
Received: from SN1NAM02FT014.eop-nam02.prod.protection.outlook.com
 (10.152.72.51) by SN1NAM02HT094.eop-nam02.prod.protection.outlook.com
 (10.152.73.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2387.20; Tue, 5 Nov
 2019 17:50:43 +0000
Received: from BN6PR19MB0980.namprd19.prod.outlook.com (10.152.72.56) by
 SN1NAM02FT014.mail.protection.outlook.com (10.152.72.106) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2387.20 via Frontend Transport; Tue, 5 Nov 2019 17:50:43 +0000
Received: from BN6PR19MB0980.namprd19.prod.outlook.com
 ([fe80::852c:e3be:ce47:b79f]) by BN6PR19MB0980.namprd19.prod.outlook.com
 ([fe80::852c:e3be:ce47:b79f%5]) with mapi id 15.20.2408.024; Tue, 5 Nov 2019
 17:50:43 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Programming N310 micro SD Card Image Problem
Thread-Index: AQHVk/mtjhIeV3VcLUKPla3Wlx/rIA==
Date: Tue, 5 Nov 2019 17:50:43 +0000
Message-ID: <BN6PR19MB098066E4121E57DC0E06B8A4A47E0@BN6PR19MB0980.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:C02B767AFD61324175D8E57B54CC35002DE7133819D6D22DC9F46CBEB7AF4A18;
 UpperCasedChecksum:C1DF6B25A51A3D31AEBEFCF249DD19062C971794765CA9D8BE7F36BEE1C7C62B;
 SizeAsReceived:6626; Count:41
x-tmn: [W0M/wdNwFU4ZBYzSYzY3gqKhkuyy4LDV]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: ee436ef2-2d8d-4f74-1103-08d76218ae27
x-ms-traffictypediagnostic: SN1NAM02HT094:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HgqZSwwfohArcw9XI8jryKB7kU1iOwoID5GITNGdVG1rVOqLhPnHQBmqA57xMHAOJQo84kjzfHsRK+hob9ajqxzKZ8ihOTgkJh6T+VkiwumFh3WvEWeQVmgfb8i8XC/r99WqpD3vxuhOBbXvVpOzrbUT3IqFx7b0Z8KFdrVcbuqAtTUmMY6ahYr8lMtJ6JQC
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: ee436ef2-2d8d-4f74-1103-08d76218ae27
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 17:50:43.5578 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM02HT094
Subject: [USRP-users] Programming N310 micro SD Card Image Problem
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
From: Jeff S via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeff S <e070832@hotmail.com>
Content-Type: multipart/mixed; boundary="===============4763854970360989131=="
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

--===============4763854970360989131==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR19MB098066E4121E57DC0E06B8A4A47E0BN6PR19MB0980namp_"

--_000_BN6PR19MB098066E4121E57DC0E06B8A4A47E0BN6PR19MB0980namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

The original SD card that came with the unit works, but I programmed an ima=
ge onto a 16GB microSD card for the N310 using:

$ sudo dd if=3D./installs/share/uhd/images/usrp_n3xx_fs.sdimg of=3D/dev/sdb=
 bs=3D1M

after downloading the most recent images.  When I insert the card into the =
N310 and power on, it seems to go into some sort of "emergency mode," when =
I try and connect using the serial interface, "screen /dev/ttyUSB0 115200."


If I do a "journalctl -xb" from the serial root login, I see the following =
(snapshot of the first failure I found):

Jan 12 22:21:50 ni-sulfur-rev6-mender systemd[1]: Mounting /uboot...
-- Subject: Unit uboot.mount has begun start-up
-- Defined-By: systemd
-- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
--
-- Unit uboot.mount has begun starting up.
Jan 12 22:21:50 ni-sulfur-rev6-mender systemd[1]: Mounted /uboot.
-- Subject: Unit uboot.mount has finished start-up
-- Defined-By: systemd
-- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
--
-- Unit uboot.mount has finished starting up.
--
-- The start-up result is RESULT.
Jan 12 22:23:12 ni-sulfur-rev6-mender systemd[1]: dev-mmcblk0p4.device: Job=
 dev-mmcblk0p4.device/start timed out.
Jan 12 22:23:12 ni-sulfur-rev6-mender systemd[1]: Timed out waiting for dev=
ice dev-mmcblk0p4.device.
-- Subject: Unit dev-mmcblk0p4.device has failed
-- Defined-By: systemd
-- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
--
-- Unit dev-mmcblk0p4.device has failed.
--

Has anyone come across this before?

Jeff

--_000_BN6PR19MB098066E4121E57DC0E06B8A4A47E0BN6PR19MB0980namp_
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
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
The original SD card that came with the unit works, but I programmed an ima=
ge onto a 16GB microSD card for the N310 using:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<blockquote style=3D"margin-top:0px; margin-bottom:0px">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ sudo dd if=3D./installs/share/uhd/images/usrp_n3xx_fs.sdimg of=3D/dev/sdb=
 bs=3D1M</div>
</blockquote>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
after downloading the most recent images.&nbsp; When I insert the card into=
 the N310 and power on, it seems to go into some sort of &quot;emergency mo=
de,&quot; when I try and connect using the serial interface, &quot;screen /=
dev/ttyUSB0 115200.&quot;<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
If I do a &quot;journalctl -xb&quot; from the serial root login, I see the =
following (snapshot of the first failure I found):</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<span>Jan 12 22:21:50 ni-sulfur-rev6-mender systemd[1]: Mounting /uboot...<=
br>
</span>
<div>-- Subject: Unit uboot.mount has begun start-up<br>
</div>
<div>-- Defined-By: systemd<br>
</div>
<div>-- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-dev=
el<br>
</div>
<div>-- <br>
</div>
<div>-- Unit uboot.mount has begun starting up.<br>
</div>
<div>Jan 12 22:21:50 ni-sulfur-rev6-mender systemd[1]: Mounted /uboot.<br>
</div>
<div>-- Subject: Unit uboot.mount has finished start-up<br>
</div>
<div>-- Defined-By: systemd<br>
</div>
<div>-- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-dev=
el<br>
</div>
<div>-- <br>
</div>
<div>-- Unit uboot.mount has finished starting up.<br>
</div>
<div>-- <br>
</div>
<div>-- The start-up result is RESULT.<br>
</div>
<div>Jan 12 22:23:12 ni-sulfur-rev6-mender systemd[1]: dev-mmcblk0p4.device=
: Job dev-mmcblk0p4.device/start timed out.<br>
</div>
<div>Jan 12 22:23:12 ni-sulfur-rev6-mender systemd[1]: Timed out waiting fo=
r device dev-mmcblk0p4.device.<br>
</div>
<div>-- Subject: Unit dev-mmcblk0p4.device has failed<br>
</div>
<div>-- Defined-By: systemd<br>
</div>
<div>-- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-dev=
el<br>
</div>
<div>-- <br>
</div>
<div>-- Unit dev-mmcblk0p4.device has failed.<br>
</div>
<div>-- <br>
</div>
<span></span></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Has anyone come across this before?<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Jeff<br>
</div>
</body>
</html>

--_000_BN6PR19MB098066E4121E57DC0E06B8A4A47E0BN6PR19MB0980namp_--


--===============4763854970360989131==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4763854970360989131==--

