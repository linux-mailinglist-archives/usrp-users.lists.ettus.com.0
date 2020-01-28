Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7650D14B29B
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jan 2020 11:31:16 +0100 (CET)
Received: from [::1] (port=39476 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iwO9D-0007WW-VV; Tue, 28 Jan 2020 05:31:07 -0500
Received: from mail-eopbgr1390092.outbound.protection.outlook.com
 ([40.107.139.92]:47399 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <sourin.mondal@vehere.com>)
 id 1iwO99-0007R6-43
 for usrp-users@lists.ettus.com; Tue, 28 Jan 2020 05:31:03 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rr+mAXMD0RqxsOWRsU7Nb2U474UpzhXuNg1e681E+d2ZCz11QUzMD+zqWs5ARvYvjci0FIW5MF7HeKvRcN1uyV4QMpVejvPtgMOxa618HxfdG/CHCsNUQkrKBaiSuOuaZiVY0xY3Zw5nKEBVn+9hAI/jy4yqtJD5g0idcdqFZfCE3hiYpIMd8al2BZvEgtkMOxhesu0PK+zk5zq4c94pvgYCYIq50hMj63G+TCGQdKOu/m6GwIVPserfHcW7KN1X2vHBul73hJTlb8nuRGPtsD9OMCuM+RzUNCWWP+PMVGPqR/X6bA1jkJWqNL5dGilUVqbsBUG2RWiZ/+0DlkOsRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WHqE78fr2MaHL907ifVvTSOhFujhMR4JwGsJEkC+0Zc=;
 b=akhBFWpyQ5eF2Emvdh3h7xyst1dxVvLJxaB8drLzn44u6Hr4ZaFm96FOA2JgWA5ubVocfiUusARlQL+zLo/zBgi+cUslNZ7mK9aqtoqdR1XC2JLinpcUlHXgF+qI8aLLUXPOqXGuB+Zd4vgICfDJ6rVLasADOGJltaZ7lZoRzLgdFagqcFvj48/wzaMIDKQ4QxHCqYHxgasSwCfC0b17XUSAYSTmHD8586Zk5M2TtyKVnR67xb1JqGocpXNHRBDaiUhs4+f13COU2K7ZJFWSLKzlKOOmQw0zNWzlzbM7g3ZLLenWjrShVyrj365wRyds6M6jzjGRYDdNjBJlEzCjMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WHqE78fr2MaHL907ifVvTSOhFujhMR4JwGsJEkC+0Zc=;
 b=BEzpHFlQSCZ7DHjLQW0TlEyUM2T/qHBesEtVeW6E8vm9qbH14U+5ib4Sju+UVlNT16YAPNN4g6DwvflsgUH2yIzdctEPTaHeJPW0ka72Aa+CdnzcH/wQYXs6bH4a7zlDTrMcTWshrgq9C5+cpTbJPw66L1AU0YxuzOeHgEE8YDE=
Received: from MA1PR0101MB1701.INDPRD01.PROD.OUTLOOK.COM (52.134.141.9) by
 MA1PR0101MB1350.INDPRD01.PROD.OUTLOOK.COM (52.134.139.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22; Tue, 28 Jan 2020 10:30:18 +0000
Received: from MA1PR0101MB1701.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d173:b7a3:2fd3:d7bb]) by MA1PR0101MB1701.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d173:b7a3:2fd3:d7bb%9]) with mapi id 15.20.2665.026; Tue, 28 Jan 2020
 10:30:18 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] phase-aligning two USRPs without Octoclock
Thread-Index: AQHVz2bE3GcysuM9wU272v0JQcfgjqfz2mmAgAPT/LuAAC1/gIAGMk6pgAAHuQCAAdaR4w==
Date: Tue, 28 Jan 2020 10:30:17 +0000
Message-ID: <MA1PR0101MB170130A6AF3474B5B5C6BF428B0A0@MA1PR0101MB1701.INDPRD01.PROD.OUTLOOK.COM>
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
x-ms-office365-filtering-correlation-id: 9043e8e2-0280-4e39-7a98-08d7a3dd1203
x-ms-traffictypediagnostic: MA1PR0101MB1350:
x-microsoft-antispam-prvs: <MA1PR0101MB1350F0C4801B747F035DAA168B0A0@MA1PR0101MB1350.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 029651C7A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(396003)(136003)(39830400003)(376002)(366004)(189003)(199004)(55016002)(71200400001)(966005)(33656002)(55236004)(7696005)(9686003)(5660300002)(19627405001)(6506007)(53546011)(316002)(52536014)(508600001)(6916009)(86362001)(26005)(186003)(66556008)(8936002)(4326008)(66476007)(8676002)(66946007)(81156014)(64756008)(76116006)(2906002)(81166006)(91956017)(66446008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MA1PR0101MB1350;
 H:MA1PR0101MB1701.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: vehere.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: K9JaCQfUvNms3Btn9pd/h1cGD4Un4/c1zYuxUfVsYHckuH9Cx4HA7bWYnXsKTHPwDwah2ZLkucFuHaxPkDgeOs34BlFTuW5O+LqOXPVw8JVYnzHdx0xiKTUBayI7cn80aS1HAu7HQxRGgG4evmQy8DShliwRs3xgy80zGD6MEbzaEaYBvFLxTceDa3+VDpploCtnl3/zxj8TplxHueeq5SY1uO0oH9rcd61WDz1AKclZeH32MIENQdWUzCQE1BhxJGE8QBwwqIW0oeLy/wqBDhaXOBWR4dPYIIccXVoR1HPdDpoO05jHN46TCraYHrf3NKGsz8G7N44AxcV8n9ynvtKS9H4j6o9AKZ3XfhhJi2uYCkVw0qy4804agWTnSi+bToC3bj3MrcgU+KUuR4+qa1qtt/BDOwewVavGF6rRL3x+tbcIJrDusaI/It0ncE7KGdiT3mJy30xY3R8gmqqe/GV5HNkhxgqPwhgoK3XseDcVyo/XWG3Ry2rBybZQMGL83cgttpi1tO4LvmAGozSnuQ==
x-ms-exchange-antispam-messagedata: UYu2EZX8EsHjtz9mLYe2InNFNNJsIw9TFAX59/waAfVDGDsEOHHnSkRC+5lU3W+RDDLnImP99PAC3hWX28AcGjt80kw8Y76fTZ2hMgFKQNsboXPo9kZgvDcbIIGUJ3S9LsRGu6NkRD8ezlawNFssQg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9043e8e2-0280-4e39-7a98-08d7a3dd1203
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2020 10:30:17.9893 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: osSxN1HB6ZQQ3xaQ84Rx6Hxb+yKBCqgb7BhvEj5B5Iz2cEEeMa23BAm/nS1DFxtytxAY76zM+PW4Osx7FU6QScdBstqBrLY6izJcBcgQ2sI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR0101MB1350
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
Content-Type: multipart/mixed; boundary="===============8399783588352467800=="
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

--===============8399783588352467800==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR0101MB170130A6AF3474B5B5C6BF428B0A0MA1PR0101MB1701_"

--_000_MA1PR0101MB170130A6AF3474B5B5C6BF428B0A0MA1PR0101MB1701_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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




--_000_MA1PR0101MB170130A6AF3474B5B5C6BF428B0A0MA1PR0101MB1701_
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

--_000_MA1PR0101MB170130A6AF3474B5B5C6BF428B0A0MA1PR0101MB1701_--


--===============8399783588352467800==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8399783588352467800==--

