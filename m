Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4F1149EE4
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2020 07:01:21 +0100 (CET)
Received: from [::1] (port=57120 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ivxSX-0003Rb-FL; Mon, 27 Jan 2020 01:01:17 -0500
Received: from mail-eopbgr1390120.outbound.protection.outlook.com
 ([40.107.139.120]:14976 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <sourin.mondal@vehere.com>)
 id 1ivxSU-0003IX-6b
 for usrp-users@lists.ettus.com; Mon, 27 Jan 2020 01:01:14 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y1tjgefeK1Q6H8CJHvaA0MqhxpPAeC+wWcf3/E8HDXw0wsJcl8etalsB1VhF1WmclQPsoZDraWvpGo2EG2AZVdXcDv9rB2wDa0g2rRyhASOBfEO/YH6CBPD5JncGkVq8++1BIINorof8/WvV8s/XMP5aqhZnsKErtB/6z+jERwc+fw6ZSPhtnnNhQrJQbJSy6chQXUi82jFis72zhn2yRwbwg0w3HBAZlCXdh3eRVGEnjY8Bqn4cKal3kFR/cf3LzCRsKdoOy0bVQpW9an4exAGlBk9d+5zzskPdkUddBxajex49GV70Do/+ITeRvuUDZ3kvRB6HYrwR0NVV0tIt0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TlHR7sb/6pD4quxn7BqY6kU5iRQ1ZWt8oCmG/gO5SWk=;
 b=A8JI5vFipVcgRSNWuUiYcLcbY19/kPUesn27EcTSCrjWKdd2H3au45I+axYIRfAZLpNvp+e4PMXyvmGrlaprURsCdyKEkUxZxWqRBtZdEF2ypkXm1NWM5Y8x+CKHpMmTOl4U6VdXpL9frOecrTBEs7s7Sf2avEbCTz+05TlahGAytF1IYN70J9Gj4IQIE5iP6tcAUzrWE25cHRuMXmT/wbKb1E7dIKedu7ibkVaMxnakScH8WRKQwcsywCafti5BZbekjoaBHdl/vFP/VO2tJ8tAevlYllUXUjY/4rzBgSBJpmcnOCf8snX4cjLEJ5hLRKVZCHaJug9XpttYR2rJug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TlHR7sb/6pD4quxn7BqY6kU5iRQ1ZWt8oCmG/gO5SWk=;
 b=GRNO9lCQQGnHwL91YShDypCtgLF9eXYQH2mmOSpqC/FDrBd6dkCCQ/QJBtIxD5UHfKhWHQmcVDnr0zvWAJSEFYPi9lctMCmW7KjVyvOv7HoQWIZzcwPe+qG9twDWH2c/5JQTExU4+icsS/9EzDhNHXoZHmetJWYputZ03/q4i0U=
Received: from BM1PR0101MB1700.INDPRD01.PROD.OUTLOOK.COM (52.133.131.142) by
 BM1PR0101MB1716.INDPRD01.PROD.OUTLOOK.COM (10.174.222.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.21; Mon, 27 Jan 2020 06:00:29 +0000
Received: from BM1PR0101MB1700.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::55af:ce05:a5fd:705e]) by BM1PR0101MB1700.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::55af:ce05:a5fd:705e%3]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 06:00:29 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] phase-aligning two USRPs without Octoclock
Thread-Index: AQHVz2bE3GcysuM9wU272v0JQcfgjqfz2mmAgAPT/LuAAC1/gIAGMk6p
Date: Mon, 27 Jan 2020 06:00:29 +0000
Message-ID: <BM1PR0101MB1700776C3BCA0679A99CEBE48B0B0@BM1PR0101MB1700.INDPRD01.PROD.OUTLOOK.COM>
References: <BMXPR01MB23606E790CA4146BE699BFF58B320@BMXPR01MB2360.INDPRD01.PROD.OUTLOOK.COM>,
 <FC4F7A4E-97C4-4CBD-8E54-305964E29BB2@gmail.com>
 <BMXPR01MB236051E2B9CC59A25A0F469C8B0F0@BMXPR01MB2360.INDPRD01.PROD.OUTLOOK.COM>,
 <5E2948D5.4090603@gmail.com>
In-Reply-To: <5E2948D5.4090603@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sourin.mondal@vehere.com; 
x-originating-ip: [14.143.49.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7f99b9d4-3abd-48c5-365a-08d7a2ee36a7
x-ms-traffictypediagnostic: BM1PR0101MB1716:
x-microsoft-antispam-prvs: <BM1PR0101MB17168A6F4059253A7872E8048B0B0@BM1PR0101MB1716.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(39830400003)(346002)(136003)(366004)(376002)(189003)(199004)(966005)(5660300002)(508600001)(86362001)(55016002)(316002)(8936002)(66946007)(55236004)(186003)(26005)(19627405001)(76116006)(8676002)(33656002)(81156014)(71200400001)(81166006)(52536014)(7696005)(4326008)(53546011)(6506007)(6916009)(2906002)(64756008)(66556008)(66446008)(9686003)(66476007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BM1PR0101MB1716;
 H:BM1PR0101MB1700.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: vehere.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P8VZzYh2YqO+2gSRwGtYbkqV6h6f/P1baaFEpsIHQKzlJbp0igW6udUAkvuxyKR9rbQgTG+EtWXirTcGoSii/Gc2NbmemVe3amyo2ISC402SzKqDY1UE14TC/5FXgfYBjUp0PTfLCS6JOWxjS/EU5Hx38HvtFHPXLpcYQX8I6oY0fi8Al+T92JLIsv7xKSSoivsSPiF3sHnu5FTFlEvUWbw8Hnx4+kd2iCsR5D+1wXKQdUDqFcOCG2HrTChcXzJ5yaFFr/Va0NpX5oWUo/nvzrYNYx4y6Qp66r40IfnckW7uRMdbD49BynXphBD9ISeurhhZLmcvumk6jcln41Tf0XGr/rJhj4e3DAYkwOlK/0a5iyhimknrnMhrJNfNvF2M98t0cAHRXvKw+cJlUO9oLFK7eG4qZDKvgmZrBhqEaheN/Ndo8O9P3jh04TFPXer0x9GLSUntqQN3GkjgXjkGgOmAqBpjuxiqvV8y5P+nqq4=
x-ms-exchange-antispam-messagedata: rwHnPX/5eucEAbudP9lGhA+PcKZz6QTufvLgPloDUcszZXWGYkSlnL4Zgc3jqLR4oYptvqEWNBga2yOVcf16uWMc9/P7uFsQY3c8krpRnMpaCOErRDx2ImYt8DrbXcieY4/HkxJfhbtIiFgwNzWknA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f99b9d4-3abd-48c5-365a-08d7a2ee36a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 06:00:29.7519 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2BZz/jM90wy++QVY6gkmZNAHz1/fHcg7mrnzlRGAXiOaaLl+SRQNe+U0dboNyZD/Oxin3z/LjkwLD6d1/93SYULRHP/bhmJwgODF/zjD0U8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BM1PR0101MB1716
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
Content-Type: multipart/mixed; boundary="===============7877277081749397154=="
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

--===============7877277081749397154==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR0101MB1700776C3BCA0679A99CEBE48B0B0BM1PR0101MB1700_"

--_000_BM1PR0101MB1700776C3BCA0679A99CEBE48B0B0BM1PR0101MB1700_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thanks for the information. Could you please also tell what is the accuracy=
 with which the phases are aligned between USRP channels, when we use 10 MH=
z reference to align, in pico-seconds or nano-seconds?

Regards,
Sourin
________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Thursday, January 23, 2020 12:48 PM
To: Sourin Mondal (Vehere) <sourin.mondal@vehere.com>
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



--_000_BM1PR0101MB1700776C3BCA0679A99CEBE48B0B0BM1PR0101MB1700_
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
Thanks for the information. Could you please also tell what is the accuracy=
 with which the phases are aligned between USRP channels, when we use 10 MH=
z reference to align, in pico-seconds or nano-seconds?</div>
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
<b>Sent:</b> Thursday, January 23, 2020 12:48 PM<br>
<b>To:</b> Sourin Mondal (Vehere) &lt;sourin.mondal@vehere.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] phase-aligning two USRPs without Octoclock=
</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 01/22/2020 11:53 PM, Sourin Mondal (Veh=
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
<div>
<blockquote type=3D"cite"></blockquote>
</div>
</div>
</blockquote>
You would do well to spend some time with this app-note:<br>
<br>
<a class=3D"x_moz-txt-link-freetext" href=3D"https://kb.ettus.com/Synchroni=
zation_and_MIMO_Capability_with_USRP_Devices">https://kb.ettus.com/Synchron=
ization_and_MIMO_Capability_with_USRP_Devices</a><br>
<br>
Indeed, there are many app-notes that might be relevant for you.<br>
<br>
Along with:<br>
<br>
<a class=3D"x_moz-txt-link-freetext" href=3D"http://files.ettus.com/manual/=
">http://files.ettus.com/manual/</a><br>
<br>
<br>
</div>
</body>
</html>

--_000_BM1PR0101MB1700776C3BCA0679A99CEBE48B0B0BM1PR0101MB1700_--


--===============7877277081749397154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7877277081749397154==--

