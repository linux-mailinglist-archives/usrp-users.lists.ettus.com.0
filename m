Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D568BF1F28
	for <lists+usrp-users@lfdr.de>; Wed,  6 Nov 2019 20:43:58 +0100 (CET)
Received: from [::1] (port=51232 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iSRDc-00029k-TU; Wed, 06 Nov 2019 14:43:52 -0500
Received: from mail-oln040092004100.outbound.protection.outlook.com
 ([40.92.4.100]:5248 helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <e070832@hotmail.com>) id 1iSRDZ-00024Y-2o
 for usrp-users@lists.ettus.com; Wed, 06 Nov 2019 14:43:49 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G2VOlwDQkVsEpcl445o5K2bTo2A/f7R03gc0PloW+/Ry8lMeQi9M4Pz42qKkwQZBM187ymr0zjYaWyCiQ9Tzji2/25ONNAN6V4ntBlv/TG+VqTsfO0kz/+7t9shGvKj8PqtoeLzw+CP5VjE4TQalEqxU3kM1eBx0uHjIeaNg3KNqIAFchocsishb8WxpUS3r8WJ9tvQ+CjrYA7EdxRPTrcI0z1KudmHhkBkIDBTUA8vHe2SHT6rrprsyc4alaK6m71g7JOTFHiSEiz3anSJdI7VciUwjNH+nBe3YBC8H5bsAYoWxGi7GWp/2OrMfpXgzcSIg1aMI2yS54s/PhzyUcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FmMd79BhK8aNSZ7g/H9JbEun8GtkFUzUtOOtAnp8yA8=;
 b=Tb1iptovp6GeUzo2ynu5ouTVlTbgfn/zAgbCtnHqT/gTs3TXYN1gRMd9HMm5SQfEL+YcnlQ9YevyqmGEc/qIAJb2Ljr9h84s33VbT+xJp+xEs0apsGexZgmIxSABCRa2qy+PJuKL+YaxeDng4H7DnuH+oLpcNwOKm3crPtupn4FvZFBWVHn++woW7zMXOr0x0UkjW7J6eSpOhWB0Gm64dj2TLDyYa9neDhoKyhDXDG/6RIfA+iMCXrJrseuXHg5DyB8mCnQa0/+if/mok/E0NmGvzwuwTd4QeKSsKGZzBvbZhEGsqIEMvJjxZA/H6n1fZA8u63ENi+BIp8ZyJUweHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FmMd79BhK8aNSZ7g/H9JbEun8GtkFUzUtOOtAnp8yA8=;
 b=pZcL7JHLYHjdhWuNsWOmDucRplVWjYfS9g/cMGUcMvcwWv/FSD54drbkay40wKtVH6VuulmgKyj9HtR3bwKPP8IZfVF+1ar85/EB9zdlFdvEF5usqrBxUNr5J3m0bh8poss5Y804h4HkNw6AdzWKaKbo/MdIVow8txnQC/l9qTsa/wKXUJ/Ouw5U6i0X1hnxnosAnRwHeUfSVnZmDMsYwfkPTvTrxkWYIF6zGRV2LMyDqTH53mOcabDFrwiRgFDJ5Vqy33HBvL1eCEnPmC9quQyqIVVL1LisBtr5wubccZ6omcjYryqTWvfkvcuGzeE528RaizgcU7537Y9S3Xf/Og==
Received: from SN1NAM02FT049.eop-nam02.prod.protection.outlook.com
 (10.152.72.51) by SN1NAM02HT126.eop-nam02.prod.protection.outlook.com
 (10.152.73.115) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2387.20; Wed, 6 Nov
 2019 19:43:07 +0000
Received: from CY4PR19MB0984.namprd19.prod.outlook.com (10.152.72.51) by
 SN1NAM02FT049.mail.protection.outlook.com (10.152.72.166) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20 via Frontend Transport; Wed, 6 Nov 2019 19:43:07 +0000
Received: from CY4PR19MB0984.namprd19.prod.outlook.com
 ([fe80::146a:888e:c688:a94c]) by CY4PR19MB0984.namprd19.prod.outlook.com
 ([fe80::146a:888e:c688:a94c%7]) with mapi id 15.20.2430.020; Wed, 6 Nov 2019
 19:43:07 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Programming N310 micro SD Card Image Problem
Thread-Index: AQHVk/mtjhIeV3VcLUKPla3Wlx/rIKd+idTa
Date: Wed, 6 Nov 2019 19:43:07 +0000
Message-ID: <CY4PR19MB0984DDBD5EBB744F3071039EA4790@CY4PR19MB0984.namprd19.prod.outlook.com>
References: <BN6PR19MB098066E4121E57DC0E06B8A4A47E0@BN6PR19MB0980.namprd19.prod.outlook.com>
In-Reply-To: <BN6PR19MB098066E4121E57DC0E06B8A4A47E0@BN6PR19MB0980.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:5C66D544AB6D2CDC7EFE60A515C7D99468C8F659BE4B69D7232495785ACACC9E;
 UpperCasedChecksum:3FE1B53C20BFFFFA0B8DE55A5F622057CBB9D8A68E608F9D3D04B7FB20C7CC5F;
 SizeAsReceived:6943; Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [/G4N+Kyve87Q4LA2sDarOPIeFJysiFpM]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 174d6871-5ca6-48f2-10a7-08d762f18c21
x-ms-traffictypediagnostic: SN1NAM02HT126:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CX3I+3q/FYpKJ4GP4jquM6v6QtpxdyqaPHH+m4CPC3PtnQh6MAEYudcs4NPD2jqEoFZJNg8Rd6JatcQBNeD7EfGy16hyk7Myq/IA1xlKvq3j2yl+B+G5wKXm1I2sT5gmR/6kXVmKLpfryIK62k20j1EonKuzKqxxY/0F73LniUIICb78JbbuUjHbu950tWwD
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 174d6871-5ca6-48f2-10a7-08d762f18c21
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 19:43:07.2552 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM02HT126
Subject: Re: [USRP-users] Programming N310 micro SD Card Image Problem
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
Content-Type: multipart/mixed; boundary="===============6082469422473802045=="
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

--===============6082469422473802045==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR19MB0984DDBD5EBB744F3071039EA4790CY4PR19MB0984namp_"

--_000_CY4PR19MB0984DDBD5EBB744F3071039EA4790CY4PR19MB0984namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

It appears that the 16GB microSD card I was using was not actually large en=
ough for the partitions to write.  The original 16GB mSD has free space at =
the end of the partitions, whereas the 16GB I programmed had no free space =
at the end and sdb3 and sdb4 did not seem to mount.  Since dd does not give=
 any kind of pass/fail indication, and none of the documentation seemed to =
indicate that I needed more than 16GB, I found this by:

$ sudo cfdisk /dev/sdb

From there, the last partitions did not look correct and the overall size s=
eemed off.  I deleted sdb4 partition and no free space showed back up, whic=
h seemed off as well.

I got a 64GB microSD card and programmed it the same way, and the unit seem=
ed to boot correctly, and the partitions seemed correct.

Jeff

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Jeff S v=
ia USRP-users <usrp-users@lists.ettus.com>
Sent: Tuesday, November 5, 2019 11:50 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Programming N310 micro SD Card Image Problem

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

--_000_CY4PR19MB0984DDBD5EBB744F3071039EA4790CY4PR19MB0984namp_
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
It appears that the 16GB microSD card I was using was not actually large en=
ough for the partitions to write.&nbsp; The original 16GB mSD has free spac=
e at the end of the partitions, whereas the 16GB I programmed had no free s=
pace at the end and sdb3 and sdb4 did
 not seem to mount.&nbsp; Since dd does not give any kind of pass/fail indi=
cation, and none of the documentation seemed to indicate that I needed more=
 than 16GB, I found this by:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ sudo cfdisk /dev/sdb</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
From there, the last partitions did not look correct and the overall size s=
eemed off.&nbsp; I deleted sdb4 partition and no free space showed back up,=
 which seemed off as well.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I got a 64GB microSD card and programmed it the same way, and the unit seem=
ed to boot correctly, and the partitions seemed correct.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff<br>
</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp=
-users-bounces@lists.ettus.com&gt; on behalf of Jeff S via USRP-users &lt;u=
srp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Tuesday, November 5, 2019 11:50 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Programming N310 micro SD Card Image Problem</=
font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
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
</div>
</div>
</div>
</body>
</html>

--_000_CY4PR19MB0984DDBD5EBB744F3071039EA4790CY4PR19MB0984namp_--


--===============6082469422473802045==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6082469422473802045==--

