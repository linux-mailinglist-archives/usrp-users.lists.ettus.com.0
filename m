Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A74292859
	for <lists+usrp-users@lfdr.de>; Mon, 19 Oct 2020 15:40:35 +0200 (CEST)
Received: from [::1] (port=50006 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kUVOo-0007Ar-1M; Mon, 19 Oct 2020 09:40:30 -0400
Received: from mail-oln040092254072.outbound.protection.outlook.com
 ([40.92.254.72]:15680 helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <james_ttfun@hotmail.com>)
 id 1kUVOj-000758-Ni
 for USRP-users@lists.ettus.com; Mon, 19 Oct 2020 09:40:26 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k7mKCdjaWyADFNlj2Ht6myuFf+t36M9nrMSzm8xw17kloE66jegHmh+A+Z6VTqvXDhUA5hKMSwfXF79Vfk2grY/DrRVwIj07u/Ulv21EeJYBaB/T3KNBYB6XDoV4BoOhI4TnjJcludJNtUSU6oReg4FXc4ef23C/pgUNsZmdP7hTL0BBJudtRsMu78H9hMtZfJTKvaurK34JWypRmUsBX3KmoVla5qX+gGiaV9G2ykc/NA1UMeLbxFFfZ8oEFQQhQ0kphpglj/bFAW57KoL8/YngzxXa/YUl7yAsHs/zpVCHgc4zvDqkuLYNlhRpgHobBm9N9g+qCNU2NHjwMs0sMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mWP+aq0C3kVAGczprSVvXxXZiDjCs+8Ek8Il7Q291XY=;
 b=Lkj6Ef8uurM8RJmmtTtmVPKvtUU72GJOfMxMNoNj1iHnhaOaCN5kxqTunK85eVQJzZR5+IogJgYJLR1AD9eBQHns74VtzZiBsi0wdgCIhLhNavzgr1PEtbg9P9Lxe1ZFnq5cQW+sFMoTM5mD3CBgWgPLh6buXZ0YVMIb+BaMpHTM8Y8CBjgdAIn08fB3uR09+fFaTJEDm2TAcZJQLDjDnncPyKTl1AqQPvxiIjWs3HDWjcbQ4w7skmUsaUxuzBQtfQ2VB1OT1x+Cv2MbHjyS0+350w9cBs81hmXohreTFPn/GPmWXvj4lWyTUhHkF0r19tmkd4fKTkL++AP5mXOFwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mWP+aq0C3kVAGczprSVvXxXZiDjCs+8Ek8Il7Q291XY=;
 b=dMGxgXhS4+gg1lpjMHu9HTATfs8a0CmaLXgOPwufYAhJl0/o/hL69WhbKAYvE+Ylxxbi7j7+PqxkvMg6HF0kKH4bO6EUHU+v316MZYvfk9MU//4qbfFtFooDAJStlMqDFXAwJ5HHVtNnuLh5K3LUD7m/CyoplgH8a9Um18CD4zKDTMfVuG0VE1AjtqA0TjtY277LS2UAgp0SBkqHGu+8+rv9xdCgUv7gCxe9/mAknSmAjM8xcaClZkI/jQSQ8iOt6N9hNg4i9ufyA7AdOd5RkK9Lx6S1M6J9tIf13q6hdCy6O8vpDQtwyMrDSDQ/DhfB/R2CXs0Iz42DefZ2ZCVYOg==
Received: from SG2APC01FT019.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebd::48) by
 SG2APC01HT219.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebd::465)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.23; Mon, 19 Oct
 2020 13:39:41 +0000
Received: from SYAPR01MB2848.ausprd01.prod.outlook.com (10.152.250.55) by
 SG2APC01FT019.mail.protection.outlook.com (10.152.250.121) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.21 via Frontend Transport; Mon, 19 Oct 2020 13:39:41 +0000
Received: from SYAPR01MB2848.ausprd01.prod.outlook.com
 ([fe80::71e9:151f:e774:a9ee]) by SYAPR01MB2848.ausprd01.prod.outlook.com
 ([fe80::71e9:151f:e774:a9ee%7]) with mapi id 15.20.3477.022; Mon, 19 Oct 2020
 13:39:41 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
 <USRP-users@lists.ettus.com>
Thread-Topic: [USRP-users] How to build N310 file system image
Thread-Index: AQHWlt0B8rzEMtYCKkm5HfO8EMDqqqmAoimAgBlSCYuAAJXmAIACSBBpgAArdYCAAghqig==
Date: Mon, 19 Oct 2020 13:39:41 +0000
Message-ID: <SYAPR01MB28484534719B16EC5F6CA3499D1E0@SYAPR01MB2848.ausprd01.prod.outlook.com>
References: <HK0PR03MB50912828D2A5D7837C4F31F89D330@HK0PR03MB5091.apcprd03.prod.outlook.com>,
 <5F741327.5030501@gmail.com>
 <SYAPR01MB28487ADC6FC52070151510CA9D030@SYAPR01MB2848.ausprd01.prod.outlook.com>,
 <5F89CE6C.4050903@gmail.com>
 <SYAPR01MB2848A220FC7121F6AC37D9BF9D010@SYAPR01MB2848.ausprd01.prod.outlook.com>,
 <5F8BDCD3.6040502@gmail.com>
In-Reply-To: <5F8BDCD3.6040502@gmail.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:B08B1DCE36D192FC32BD0C1F0B91943D94B17E786A822F121570FBC38D2D9350;
 UpperCasedChecksum:D87A14B51F0212A3044FE127F091A00461E19A8FC45A99A69D6FE474019AD2A1;
 SizeAsReceived:7145; Count:43
x-tmn: [AHFnyCvHgfslUMu28j3hBSuYZseB87aL]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: dc42a61e-2560-473f-1555-08d874346eb0
x-ms-traffictypediagnostic: SG2APC01HT219:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8oz4mHFJSFULb6r8MDoDiKqye2cdqS6anzzLOHp0pJLBaMX8bxqBHOjT/yya+4CT+YIhxFmwmPtjBtLDmerZA8aT6R/UkmU+ksDaZLpsyBxmo+yaTQMmXwzCWAbkvmflilg8CMv9hLGy/HW+yis58BvVoXx9n48tveNTf9lPn+vkfw0zW45n7w2LXTWJTLlchP6xgP2B3SgTk0egLh/ETA==
x-ms-exchange-antispam-messagedata: Czb8agEWPOjzSN9RxYFDCnU3KS+wdD6wtn7uR8FWBelcpnnCCTENwsH7ug6QwmesC1dK9jy323tg13KqPI1yLOBVA+mDDf+eNEwT1R0cbVShW/cv9W1A+bXgvEJJHU47DyMDtUcLkHDuc6PifkX9sg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT019.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: dc42a61e-2560-473f-1555-08d874346eb0
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2020 13:39:41.6130 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT219
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
Content-Type: multipart/mixed; boundary="===============2633926511174587915=="
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

--===============2633926511174587915==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SYAPR01MB28484534719B16EC5F6CA3499D1E0SYAPR01MB2848ausp_"

--_000_SYAPR01MB28484534719B16EC5F6CA3499D1E0SYAPR01MB2848ausp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,
repo still not work for me. but i can clone from git. so if can i use git c=
lone for every repo instead of using repo auto fetch the repos?
________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Sunday, October 18, 2020 02:12
To: james Thomas <james_ttfun@hotmail.com>; usrp-users@lists.ettus.com <USR=
P-users@lists.ettus.com>
Subject: Re: [USRP-users] How to build N310 file system image

On 10/17/2020 11:41 PM, james Thomas wrote:
when I run repo init -u git://github.com/EttusResearch/oe-manifests.git -b =
v3.14.1.1 it have error below:
how to fix this?

repo init -u git://github.com/EttusResearch/oe-manifests.git -b v3.14.1.1
repo: warning: Python 2 is no longer supported; Please upgrade to Python 3.=
6+.
So, first things first--you need to add Python3.6 to your system.


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
My guess is that your system/network is not configured to allow GIT traffic=
 to pass through--you'll have to fix that or have your sysadmin
  fix that.


________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.=
com>
Sent: Friday, October 16, 2020 12:46
To: james Thomas <james_ttfun@hotmail.com><mailto:james_ttfun@hotmail.com>;=
 usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <USRP-users@=
lists.ettus.com><mailto:USRP-users@lists.ettus.com>
Subject: Re: [USRP-users] How to build N310 file system image

On 10/16/2020 03:51 AM, james Thomas wrote:
Hi Marcus,
is there more document of how to build this source?
________________________________

If you visit the repository web-page, there's information there about build=
ing images.




--_000_SYAPR01MB28484534719B16EC5F6CA3499D1E0SYAPR01MB2848ausp_
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
Hi Marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
repo still not work for me. but i can clone from git. so if can i use git c=
lone for every repo instead of using repo auto fetch the repos?<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Sunday, October 18, 2020 02:12<br>
<b>To:</b> james Thomas &lt;james_ttfun@hotmail.com&gt;; usrp-users@lists.e=
ttus.com &lt;USRP-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] How to build N310 file system image</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 10/17/2020 11:41 PM, james Thomas wrote=
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
when I run repo init -u git://github.com/EttusResearch/oe-manifests.git -b =
v3.14.1.1 it have error below:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
how to fix this?<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
repo init -u git://github.com/EttusResearch/oe-manifests.git -b v3.14.1.1
<div>repo: warning: Python 2 is no longer supported; Please upgrade to Pyth=
on 3.6+.</div>
</div>
</blockquote>
So, first things first--you need to add Python3.6 to your system.&nbsp; <br=
>
<br>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
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
</blockquote>
My guess is that your system/network is not configured to allow GIT traffic=
 to pass through--you'll have to fix that or have your sysadmin<br>
&nbsp; fix that.<br>
<br>
<br>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D"Cal=
ibri, sans-serif" style=3D"font-size:11pt"><b>From:</b> Marcus D. Leech
<a class=3D"x_moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail.com=
">&lt;patchvonbraun@gmail.com&gt;</a><br>
<b>Sent:</b> Friday, October 16, 2020 12:46<br>
<b>To:</b> james Thomas <a class=3D"x_moz-txt-link-rfc2396E" href=3D"mailto=
:james_ttfun@hotmail.com">
&lt;james_ttfun@hotmail.com&gt;</a>; <a class=3D"x_moz-txt-link-abbreviated=
" href=3D"mailto:usrp-users@lists.ettus.com">
usrp-users@lists.ettus.com</a> <a class=3D"x_moz-txt-link-rfc2396E" href=3D=
"mailto:USRP-users@lists.ettus.com">
&lt;USRP-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> Re: [USRP-users] How to build N310 file system image</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_x_moz-cite-prefix">On 10/16/2020 03:51 AM, james Thomas wro=
te:<br>
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
</blockquote>
<br>
</div>
</body>
</html>

--_000_SYAPR01MB28484534719B16EC5F6CA3499D1E0SYAPR01MB2848ausp_--


--===============2633926511174587915==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2633926511174587915==--

