Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C182514B311
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jan 2020 11:53:59 +0100 (CET)
Received: from [::1] (port=43858 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iwOVJ-0000O7-Se; Tue, 28 Jan 2020 05:53:57 -0500
Received: from mail-eopbgr1390101.outbound.protection.outlook.com
 ([40.107.139.101]:60240 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <sourin.mondal@vehere.com>)
 id 1iwOVF-0000Gw-Jq
 for usrp-users@lists.ettus.com; Tue, 28 Jan 2020 05:53:54 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MM9o9LlD7EsvplVCDGCKGiT9KlqpgxkwG9NABhUE+lImuvn62XW68Mv3JGxfKprHw4tpgfbDQHLGxtsndSBVez6vBKfOiTQdTgtc0pwR9zgeSOCGgWTXg/vmqvn4vdWg+JhOpsZKDPVLZ7w3ctSnFjuphve3gOItYA6IBDjCAOGzLaL4ZszA4g9th0Bg2XM75Swg/wcaTWNJN1SQ726oG7JFisih4lgOepacfI8H9jADfcgnHF0XtmRhHtsGnPJ93EgoJHaphXmGapQsdkz2+3alKiYByK+w5CQidSWIHXp/kIQaFDfbMAC8yWM0fclLOnU3GxOKlMaAwjjxulFtlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OK349OzDiKiQpD0kfZm6vKcbvs1B0PlnAE6X1d+baEE=;
 b=fx/BtbJLn5Jhk6AXsrhSyT6HnIrKzWWXEbTOAXNO9+pxLh8RdFHpEn1FD9/prG9cwA0TTwP0PusHRxb7RT31a+ccicesjYGhLqL1/NY1j0sokw8dNiQngDG6KUog31LjrHwqEgC9af4DA+HyalpRJ1duGKCZWH8t5LOfdzBvAW78H8tuDggO7SV5xqhXIsnDTo1vRm9mXEzXw6Ywa6QhqZQ7u5JVV1BXVR7RhaF8GHO/GWBX9lvDa/ZtLQByZiasp/GJcxSPV2CwZ1EWFUEfyVxVpv9E7+2tL1G2wwaLDo5ibiAQkRLYYcyXWicwG3wNr3r5QITzEHwNccJlMIqmrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OK349OzDiKiQpD0kfZm6vKcbvs1B0PlnAE6X1d+baEE=;
 b=fQgtPAW9XRN0thYJR3NuJ3/PdNAhnr+sgZ+agtkdb3+C1jQMgZb+n94YvM9c9VWpwL9v/Et4LlLThJIJH64YPnNJiAc6rhXB8ytHBZUUt4O81xdVnRBlF+i8Mh8g2WtiVZtf1W9GWt8RHuvtK6WmmRQcbiKB8EfV1INw1Mcq8aU=
Received: from MA1PR0101MB1701.INDPRD01.PROD.OUTLOOK.COM (52.134.141.9) by
 MA1PR0101MB1798.INDPRD01.PROD.OUTLOOK.COM (52.134.142.139) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.23; Tue, 28 Jan 2020 10:53:09 +0000
Received: from MA1PR0101MB1701.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d173:b7a3:2fd3:d7bb]) by MA1PR0101MB1701.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d173:b7a3:2fd3:d7bb%9]) with mapi id 15.20.2665.026; Tue, 28 Jan 2020
 10:53:09 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] phase-aligning two USRPs without Octoclock
Thread-Index: AQHVz2bE3GcysuM9wU272v0JQcfgjqfz2mmAgAPT/LuAAC1/gIAGMk6pgAAHuQCAAdzPKg==
Date: Tue, 28 Jan 2020 10:53:09 +0000
Message-ID: <MA1PR0101MB17019C1C64CD5C8E69CFE0118B0A0@MA1PR0101MB1701.INDPRD01.PROD.OUTLOOK.COM>
References: <BMXPR01MB23606E790CA4146BE699BFF58B320@BMXPR01MB2360.INDPRD01.PROD.OUTLOOK.COM>,
 <FC4F7A4E-97C4-4CBD-8E54-305964E29BB2@gmail.com>
 <BMXPR01MB236051E2B9CC59A25A0F469C8B0F0@BMXPR01MB2360.INDPRD01.PROD.OUTLOOK.COM>,
 <5E2948D5.4090603@gmail.com>
 <BM1PR0101MB1700776C3BCA0679A99CEBE48B0B0@BM1PR0101MB1700.INDPRD01.PROD.OUTLOOK.COM>,
 <5E2E8200.8090507@gmail.com>
In-Reply-To: <5E2E8200.8090507@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sourin.mondal@vehere.com; 
x-originating-ip: [14.143.49.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 69ef604e-17b7-4f95-83d4-08d7a3e04384
x-ms-traffictypediagnostic: MA1PR0101MB1798:
x-microsoft-antispam-prvs: <MA1PR0101MB179816247F0AF76BBC8B24798B0A0@MA1PR0101MB1798.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 029651C7A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39830400003)(346002)(396003)(366004)(136003)(376002)(189003)(199004)(4326008)(186003)(6916009)(66946007)(66446008)(64756008)(66556008)(66476007)(316002)(508600001)(76116006)(966005)(55236004)(91956017)(6506007)(26005)(53546011)(71200400001)(7696005)(19627405001)(8936002)(2906002)(5660300002)(81156014)(86362001)(9686003)(8676002)(52536014)(55016002)(81166006)(33656002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MA1PR0101MB1798;
 H:MA1PR0101MB1701.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: vehere.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oqvfMV7Zd7dbRIC/3IHcsUNkVMqVNbpSDRuwIArg9vTmlB8GTzb59X7sscAZ6WWLgwW0KOvjO+N697IbhJ6lCoYQcrUD3UHxzXBf9JUZ3s7CUx0B1LN+34RkxH8DItkJ4apsWSXvbEIhGAWVUag6GeIpJxx52+1EevSKUwHHMf67gNYOkIAqZI6mAcaR2vtIpPNS8Nt0ZED71vRehnAY1D/7XXskp9Lx7u6plLVqnJWPYBzhxdabcXvzDJN9/jJIOCge3AiNqxQ24kkXnR8wJUJMap/vvAwpGNH40n99WgUqs9pSR2NB6EodB3O3eNB7cdC+EvvsEEIjwK4RUq4OV3N/XqG5M7AP4liyecSll3zrn/aObm6maGEcG+s4XD+8CTbN+qxEe07lnUhxquvtnLRBhAyoNmuTkuqlwx5ZO9DUeoPaV0qIkL13FsbGx23BNIJFGkyMrzUwKwPqX0zjdsVJUu+ID+D+XaNbB5iIJXvJjN1r0H5gJEdhYL671a/wp0nfygTbG3C/07LQHk/obA==
x-ms-exchange-antispam-messagedata: YSoEfM6eKYQqNYkoZPOrELUZ57PSrlVfOcbrn4jXJ3fuNemkKMZ1cOL1VsNW0Ymmn0mg4MPjSL5Fvf42a8L69A/uKAQLZiz2WpU5/7vYGP0HoFnEyPq3CtoRC6syW7FVN0+M2h1pjdRKmqQVFVORFg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69ef604e-17b7-4f95-83d4-08d7a3e04384
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2020 10:53:09.6234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y8s3VftB91qPUkr+gP0AOm6nLik5T4JqbLKVvu8KiTCk40By2ZPoAe6r9uBKpPp3tST5r+hmv/M3Hamy4JUFwdqf52+h4E2ebOsh5CWkuqc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR0101MB1798
Subject: Re: [USRP-users] phase-aligning two USRPs without Octoclock
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
From: "Sourin Mondal \(Vehere\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Sourin Mondal \(Vehere\)" <sourin.mondal@vehere.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6266400615710826303=="
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

--===============6266400615710826303==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR0101MB17019C1C64CD5C8E69CFE0118B0A0MA1PR0101MB1701_"

--_000_MA1PR0101MB17019C1C64CD5C8E69CFE0118B0A0MA1PR0101MB1701_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

I think my previous email is not sent properly so sending again. Thanks for=
 the information you provided. This 5 degrees is for what frequency? Are yo=
u sure its 5 degrees or less? What is the precision?

Regards,
Sourin
________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Monday, January 27, 2020 11:54 AM
To: Sourin Mondal (Vehere) <sourin.mondal@vehere.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] phase-aligning two USRPs without Octoclock

On 01/27/2020 01:00 AM, Sourin Mondal (Vehere) wrote:
Hi Marcus,

Thanks for the information. Could you please also tell what is the accuracy=
 with which the phases are aligned between USRP channels, when we use 10 MH=
z reference to align, in pico-seconds or nano-seconds?

Regards,
Sourin
The answer to that question depends very much on the hardware involved.

In general, two synthesizers locked to the same clock won't have a zero pha=
se *offset* from one another, but will be phase-coherent
  on an ongoing basis.

Now, for *some* types of Ettus hardware, there is special hardware that can=
 arrange to phase-reset during tuning, so that all the participating
  synthesizers will have small phase-offsets with respect to one another.

We generally talk in terms of degrees, rather than picoseconds or nanosecon=
ds.  Residual phase offsets will typically be under 5 degrees.

But keep in mind that things like differential heating of cables, and inter=
nal circuit in ANY coherent radio can case the phase relationships
  to drift slightly.




________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.=
com>
Sent: Thursday, January 23, 2020 12:48 PM
To: Sourin Mondal (Vehere) <sourin.mondal@vehere.com><mailto:sourin.mondal@=
vehere.com>
Subject: Re: [USRP-users] phase-aligning two USRPs without Octoclock

On 01/22/2020 11:53 PM, Sourin Mondal (Vehere) wrote:

Hi Marcus,
Do I need to use 1 PPS also along with 10 MHz reference? And are there any =
software commands to be used along with these hardware configuration for sy=
nchronizing multiple USRPs without octoclock? If so what are those commands=
?

Regards,
Sourin
You would do well to spend some time with this app-note:

https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices

Indeed, there are many app-notes that might be relevant for you.

Along with:

http://files.ettus.com/manual/




--_000_MA1PR0101MB17019C1C64CD5C8E69CFE0118B0A0MA1PR0101MB1701_
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
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I think my previous email is not sent properly so sending again. Thanks for=
 the information you provided. This 5 degrees is for what frequency? Are yo=
u sure its 5 degrees or less? What is the precision?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Sourin</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Monday, January 27, 2020 11:54 AM<br>
<b>To:</b> Sourin Mondal (Vehere) &lt;sourin.mondal@vehere.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] phase-aligning two USRPs without Octoclock=
</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 01/27/2020 01:00 AM, Sourin Mondal (Veh=
ere) wrote:<br>
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
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks for the information. Could you please also tell what is the accuracy=
 with which the phases are aligned between USRP channels, when we use 10 MH=
z reference to align, in pico-seconds or nano-seconds?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Regards,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Sourin</div>
</blockquote>
The answer to that question depends very much on the hardware involved.<br>
<br>
In general, two synthesizers locked to the same clock won't have a zero pha=
se *offset* from one another, but will be phase-coherent<br>
&nbsp; on an ongoing basis.<br>
<br>
Now, for *some* types of Ettus hardware, there is special hardware that can=
 arrange to phase-reset during tuning, so that all the participating<br>
&nbsp; synthesizers will have small phase-offsets with respect to one anoth=
er.<br>
<br>
We generally talk in terms of degrees, rather than picoseconds or nanosecon=
ds.&nbsp; Residual phase offsets will typically be under 5 degrees.<br>
<br>
But keep in mind that things like differential heating of cables, and inter=
nal circuit in ANY coherent radio can case the phase relationships<br>
&nbsp; to drift slightly.&nbsp; <br>
<br>
<br>
<br>
<br>
<blockquote type=3D"cite">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D"Cal=
ibri, sans-serif" style=3D"font-size:11pt"><b>From:</b> Marcus D. Leech
<a class=3D"x_moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail.com=
">&lt;patchvonbraun@gmail.com&gt;</a><br>
<b>Sent:</b> Thursday, January 23, 2020 12:48 PM<br>
<b>To:</b> Sourin Mondal (Vehere) <a class=3D"x_moz-txt-link-rfc2396E" href=
=3D"mailto:sourin.mondal@vehere.com">
&lt;sourin.mondal@vehere.com&gt;</a><br>
<b>Subject:</b> Re: [USRP-users] phase-aligning two USRPs without Octoclock=
</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_x_moz-cite-prefix">On 01/22/2020 11:53 PM, Sourin Mondal (V=
ehere) wrote:<br>
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
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi Marcus,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Do I need to use 1 PPS also along with 10 MHz reference? And are there any =
software commands to be used along with these hardware configuration for sy=
nchronizing multiple USRPs without octoclock? If so what are those commands=
?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Regards,&nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Sourin</div>
<div dir=3D"auto">
<div></div>
</div>
</blockquote>
You would do well to spend some time with this app-note:<br>
<br>
<a class=3D"x_x_moz-txt-link-freetext" href=3D"https://kb.ettus.com/Synchro=
nization_and_MIMO_Capability_with_USRP_Devices">https://kb.ettus.com/Synchr=
onization_and_MIMO_Capability_with_USRP_Devices</a><br>
<br>
Indeed, there are many app-notes that might be relevant for you.<br>
<br>
Along with:<br>
<br>
<a class=3D"x_x_moz-txt-link-freetext" href=3D"http://files.ettus.com/manua=
l/">http://files.ettus.com/manual/</a><br>
<br>
<br>
</div>
</blockquote>
<br>
</div>
</body>
</html>

--_000_MA1PR0101MB17019C1C64CD5C8E69CFE0118B0A0MA1PR0101MB1701_--


--===============6266400615710826303==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6266400615710826303==--

