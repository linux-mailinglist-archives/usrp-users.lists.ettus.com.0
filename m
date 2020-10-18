Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1885829156F
	for <lists+usrp-users@lfdr.de>; Sun, 18 Oct 2020 05:41:57 +0200 (CEST)
Received: from [::1] (port=36700 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kTzZw-0007Wx-Ot; Sat, 17 Oct 2020 23:41:52 -0400
Received: from mail-oln040092254054.outbound.protection.outlook.com
 ([40.92.254.54]:45472 helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <james_ttfun@hotmail.com>)
 id 1kTzZt-0007SU-2R
 for USRP-users@lists.ettus.com; Sat, 17 Oct 2020 23:41:49 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VoeAgyuiqV8LGsA1sn6oa9T6GYuAQvC4H7UsiSehE2hQUTrLRq53nU3tfS8GWiQ/kVMX3xAK6QMFkJIHQO77jSXgz26Z9ny1QvvOSX3S87RLi5KDZ+eZJdmCddkbiBLsEFsEdaS/3hkAfqUOdwjlo5suQxF3ZMZFExbbdmlZTFEGBXKk04aypBj5hTlHRpUBz4Ngic7JcQSi6s85NIGpbKgWNZLxFtLtcXHs0drzZCzF9A47MUpZmywJZRddv/a+A4hXmN55faLBhB37o2xPVxBZfs+r7LfcjsnOoAWAR7nzLN6zcCqnVCjKInDHwT1HINtbX7jhQufd0mF2OcJqEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E76FCFWoZZgvRdHzass0XDpWb11UDy6+p1JP/ErLqrE=;
 b=aigRme79ukn5uP95CwUzOZiLeoyEBTr4EjZwbgw5GUxCmbDSnuqjqNlYQL/r6J35PTo+1Gx2YjtiL90bHuV54iecXovlahQ8WFZnx7kErAB1mzVTlYuDdOYhEkLoWQ2Mt0XnjSYCtUD8Du33smk0Y61TcGokYy2vKafGDAsapnbmct8038vIFFrsBwJzu6tH/ATnGjGQ0b1YElf9p7JJWVhcGykNAlNpcEUab/PDsLKojPXpsDlTp1B/Srn0Au+74VpltKJs3pIUuQifSM4EiOQLyA/AWV/XurQkLJVYIEaTUThD8qdA7M9Ivn2wyzrTpzZtqvDL+tymyRzVsqDicQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E76FCFWoZZgvRdHzass0XDpWb11UDy6+p1JP/ErLqrE=;
 b=Hl1QnCHF+JZzz8HB0XrcSJql3yaML0BtcfaILNiTo5i2cugQEtNDwQ4fiUuekkzGEBEq76mFA4YK/oiEZo+N7IB7Z3sxGL0PtzTvX8dYp50Z2VuwCvwaCG3jiB+8ocUCTe4s0nrleAEbJt3MVloa9lCJQfvswfioZRdUsui0Gp9yo9+dq8SkJelLucuiEMbIGKIe1iKaDAJVDAqKw5rHeHT3kB/Em4pIsEhcr1WtOwG3MSIt4n4e0qYa6JUjU6nTOlc4yUwCs6375CrxjZGFm+aFaHl+y7k5BipvUEroV7oV5804l8Y7OGzWU3t058fM2d+JfQ2g/f+1Z8yF4NhJyQ==
Received: from HK2APC01FT056.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::46) by
 HK2APC01HT153.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::468)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.21; Sun, 18 Oct
 2020 03:41:05 +0000
Received: from SYAPR01MB2848.ausprd01.prod.outlook.com (10.152.248.57) by
 HK2APC01FT056.mail.protection.outlook.com (10.152.249.67) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.21 via Frontend Transport; Sun, 18 Oct 2020 03:41:05 +0000
Received: from SYAPR01MB2848.ausprd01.prod.outlook.com
 ([fe80::71e9:151f:e774:a9ee]) by SYAPR01MB2848.ausprd01.prod.outlook.com
 ([fe80::71e9:151f:e774:a9ee%7]) with mapi id 15.20.3477.022; Sun, 18 Oct 2020
 03:41:05 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
 <USRP-users@lists.ettus.com>
Thread-Topic: [USRP-users] How to build N310 file system image
Thread-Index: AQHWlt0B8rzEMtYCKkm5HfO8EMDqqqmAoimAgBlSCYuAAJXmAIACSBBp
Date: Sun, 18 Oct 2020 03:41:05 +0000
Message-ID: <SYAPR01MB2848A220FC7121F6AC37D9BF9D010@SYAPR01MB2848.ausprd01.prod.outlook.com>
References: <HK0PR03MB50912828D2A5D7837C4F31F89D330@HK0PR03MB5091.apcprd03.prod.outlook.com>,
 <5F741327.5030501@gmail.com>
 <SYAPR01MB28487ADC6FC52070151510CA9D030@SYAPR01MB2848.ausprd01.prod.outlook.com>,
 <5F89CE6C.4050903@gmail.com>
In-Reply-To: <5F89CE6C.4050903@gmail.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:5DAC55B69F5BEEC5755E2801FA2D78140D6DB0902F31C7BEE9737AD21E727E7A;
 UpperCasedChecksum:0BA63B763BD9392CAB035158D12F1EAE2D9FCB23DB87C33AB8F9CDFE62D1E448;
 SizeAsReceived:7008; Count:43
x-tmn: [VtORWDCR2reFVMNQ/Sc4KffCvEVP4pRt]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 20a80afc-fa62-4fb6-250c-08d87317a487
x-ms-traffictypediagnostic: HK2APC01HT153:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mFA7qAQAwxx1Duc0EBvXo+wcJeyCXN6qGiHGBqhMJBkQEjY6s1aTW17/QxooZKrlBS9YtDe4qrYDaOkwCy2Ui5HPkXeihi023L0HnDpmDXjHnJP30brnOfr9NhidZazfBpEHCcIej2bhLKJ86bFf+3VXClxTt2jSkPnSbWm917UVE+Gxua48UMVRv+f4p9d5nfohys7qfaKzvO9tbplKQw==
x-ms-exchange-antispam-messagedata: smyzRQ29XltkK8zEyRunHPACuXjSi4saytl3aLV2vRhmli1B6RrWtGOJ9a5ZcEtmhMBpcch8jaddgrgFf1PYOYUeQ++9AK1Rrn/RKKds8w8YGgF2T79YDDNEI5zPP0BnsMC3fBL98gAwHdsRh1VoiQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: HK2APC01FT056.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 20a80afc-fa62-4fb6-250c-08d87317a487
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2020 03:41:05.4097 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT153
Subject: Re: [USRP-users] How to build N310 file system image
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
From: james Thomas via USRP-users <usrp-users@lists.ettus.com>
Reply-To: james Thomas <james_ttfun@hotmail.com>
Content-Type: multipart/mixed; boundary="===============7546618605063560486=="
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

--===============7546618605063560486==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SYAPR01MB2848A220FC7121F6AC37D9BF9D010SYAPR01MB2848ausp_"

--_000_SYAPR01MB2848A220FC7121F6AC37D9BF9D010SYAPR01MB2848ausp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

when I run repo init -u git://github.com/EttusResearch/oe-manifests.git -b =
v3.14.1.1 it have error below:
how to fix this?

repo init -u git://github.com/EttusResearch/oe-manifests.git -b v3.14.1.1
repo: warning: Python 2 is no longer supported; Please upgrade to Python 3.=
6+.

... A new version of repo (2.8) is available.
... New version is available at: /home/w/meta-ettus/.repo/repo/repo
... The launcher is run from: /usr/bin/repo
!!! The launcher is not writable.  Please talk to your sysadmin or distro
!!! to get an update installed.

Downloading manifest from git://github.com/EttusResearch/oe-manifests.git
fatal: Couldn't find remote ref refs/heads/v3.14.1.1
manifests:
fatal: Couldn't find remote ref refs/heads/v3.14.1.1

fatal: Couldn't find remote ref refs/heads/v3.14.1.1
manifests:
fatal: Couldn't find remote ref refs/heads/v3.14.1.1

fatal: cannot obtain manifest git://github.com/EttusResearch/oe-manifests.g=
it
________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Friday, October 16, 2020 12:46
To: james Thomas <james_ttfun@hotmail.com>; usrp-users@lists.ettus.com <USR=
P-users@lists.ettus.com>
Subject: Re: [USRP-users] How to build N310 file system image

On 10/16/2020 03:51 AM, james Thomas wrote:
Hi Marcus,
is there more document of how to build this source?
________________________________

If you visit the repository web-page, there's information there about build=
ing images.



--_000_SYAPR01MB2848A220FC7121F6AC37D9BF9D010SYAPR01MB2848ausp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
when I run repo init -u git://github.com/EttusResearch/oe-manifests.git -b =
v3.14.1.1 it have error below:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
how to fix this?<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
repo init -u git://github.com/EttusResearch/oe-manifests.git -b v3.14.1.1
<div>repo: warning: Python 2 is no longer supported; Please upgrade to Pyth=
on 3.6+.</div>
<div><br>
</div>
<div>... A new version of repo (2.8) is available.</div>
<div>... New version is available at: /home/w/meta-ettus/.repo/repo/repo</d=
iv>
<div>... The launcher is run from: /usr/bin/repo</div>
<div>!!! The launcher is not writable. &nbsp;Please talk to your sysadmin o=
r distro</div>
<div>!!! to get an update installed.</div>
<div><br>
</div>
<div>Downloading manifest from git://github.com/EttusResearch/oe-manifests.=
git</div>
<div>fatal: Couldn't find remote ref refs/heads/v3.14.1.1</div>
<div>manifests:</div>
<div>fatal: Couldn't find remote ref refs/heads/v3.14.1.1</div>
<div><br>
</div>
<div>fatal: Couldn't find remote ref refs/heads/v3.14.1.1</div>
<div>manifests:</div>
<div>fatal: Couldn't find remote ref refs/heads/v3.14.1.1</div>
<div><br>
</div>
fatal: cannot obtain manifest git://github.com/EttusResearch/oe-manifests.g=
it<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Friday, October 16, 2020 12:46<br>
<b>To:</b> james Thomas &lt;james_ttfun@hotmail.com&gt;; usrp-users@lists.e=
ttus.com &lt;USRP-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] How to build N310 file system image</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 10/16/2020 03:51 AM, james Thomas wrote=
:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi Marcus,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
is there more document of how to build this source?<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<br>
</blockquote>
If you visit the repository web-page, there's information there about build=
ing images.<br>
<br>
<br>
</div>
</body>
</html>

--_000_SYAPR01MB2848A220FC7121F6AC37D9BF9D010SYAPR01MB2848ausp_--


--===============7546618605063560486==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7546618605063560486==--

