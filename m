Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4716922C1AB
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 11:08:11 +0200 (CEST)
Received: from [::1] (port=42286 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jytgY-00014t-5a; Fri, 24 Jul 2020 05:08:10 -0400
Received: from mail-eopbgr1390117.outbound.protection.outlook.com
 ([40.107.139.117]:33018 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1jytgS-0000yA-Vn
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 05:08:05 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G54HyWmCE0E7k2toiMyZHcyF7a2V2vBsTTmJeGJmyOo9p80bYPfKWoaz8+XX3KEAXlvhl0veBRLHGmfeMKhrzSKvXRHOadEroTtDkDzB44sJeNFPkrGfAqNcOoZJIx74FQK/IT4WRFeoacK4rHlJ23ffqiNhd2ijT5h3SdOTTVuOgioRY8nAfjQTIcLhlrSF5gEUDv9LcekPstk527FaMBj/St9XzLh1IRPlb76GrgSuHiJjxgto9U7bX+ucXQbvTUgXvWD1PsZ9lXIrSos2EWdPW48KHcAqfwifrOfItjJa3gOuKpnT7iCpX8cFCFjlwM5T0b6VBY86G3LOmQVc4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cCeD3YyCPWxgbUY/UJkJPJivNVSB7h106+3TnYn8IlQ=;
 b=XqFjZL1VrRkn6uBFShI2YhbOwhKbdEFA7/znsqdnboirLkrlAb1MZp3etk7Nb7RnRDmP7G2oHyytGCkxt76uXTp7FHztgYntXA52CPG6DfzLj2QKIng2zhLKPYko2Yw8MdGdQJnm3mHyVBU6yCUhbF5+q8Sb0pBwWBt+EAYZgKw9/QPENW3gqMQv9AYhAOfErTb8nYJtxK6Ed2oZPiC6e9ba9gJf1gF/98EuMCMhEaDZto6O1o3T+vlDz7PWS8lIFY+CbGHbby6twZm1exgr6qlRmIDEhUQMD45xHwh6EkPNpqReoZV17DgRTHpW/S+Nx88OJDEWB6yRWfXoJnQinw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cCeD3YyCPWxgbUY/UJkJPJivNVSB7h106+3TnYn8IlQ=;
 b=QV5sbHgSAm8YevISrMzfEwh4yYqt1hhTwgu9vqpra+7UGZHIozajdoGpRiXCclAd6IL3eph00uOiML6dqGmri6HuSG71c0+9hW88OSO5gP8gH5CL4K3iLPzGcwO8ksfNBMmJVbDgjN0QE7mkUQ9z79nbIA1+OzKayzVIKezvSt8=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MAXPR0101MB1787.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:14::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Fri, 24 Jul
 2020 09:07:21 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f%3]) with mapi id 15.20.3216.021; Fri, 24 Jul 2020
 09:07:21 +0000
To: =?Windows-1252?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] 4 channel capture using grc and pcie
Thread-Index: AQHWYZMiVuDmc7CcMku3Q1nlFH28VqkWbx8AgAAA8CE=
Date: Fri, 24 Jul 2020 09:07:21 +0000
Message-ID: <MA1PR01MB2588551C27619A8DF3078F6190770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB2588ED02A93680AA89569A3490770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <b4de024f-54fd-fe62-0ae0-c0bbe2d0d4f3@ettus.com>
In-Reply-To: <b4de024f-54fd-fe62-0ae0-c0bbe2d0d4f3@ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ettus.com; dkim=none (message not signed)
 header.d=none;ettus.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [42.110.154.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 03f661f6-b76e-4ddd-be20-08d82fb0f969
x-ms-traffictypediagnostic: MAXPR0101MB1787:
x-microsoft-antispam-prvs: <MAXPR0101MB17875F4B9C245516FC2F504990770@MAXPR0101MB1787.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CafViKhEbI13HEli9l2nzJhkgc/WLPqlDk/9JdOLq9F9E41DYSsj0IEdzSTRr4NFFZsTTRck+JYZkmqIi410mW5onNRdsEpmErRKAAGDbEjF+EEYUAnieDe56x4C8uFXS26EWg4cNvqlKTVvCC/weUNz8kjLf9nKrT39hNP9R0j063BHNOdFN0R9Q0JQdMa2xdlh3eCBiwJgTuMpwpkXKyifq785LXKJIr5zMxOm1jcnOsefUL747+kq93G55+7dXhMfTOdZhExJ/fFRFlyZ3+fNI4JcTXp5try2xdpC58dFkd4v5shzaDOce51FmSZ2YnCEC65lQVvZgLczrOdyfOSHeoEHWqSDyNsfE6WGuFfGp6aporPqkSkaYBs8rLu5rG9WRs1osH7dcWsZYfZWRQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(39830400003)(376002)(346002)(136003)(366004)(8936002)(45080400002)(2906002)(186003)(166002)(9686003)(26005)(7696005)(86362001)(966005)(76116006)(52536014)(64756008)(110136005)(8676002)(71200400001)(55016002)(6506007)(508600001)(53546011)(66946007)(66476007)(66556008)(66446008)(316002)(5660300002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: QgGsvwc3yfvnfP5f+wa1yCO8E1QJ0q5OYighMdPWwmM5JW/Hj1v/nlGZBmJDh9vhCE40MR31ncu7zJZ5zC/qz4RpaSXSUt2apIS2NeydFuJWBMtABl1SdHN4oSRijlpV30bE0A6NYLRyC/5j7n9a4gMod0dlLZhF0OO9Uxuq95ohww4gijNm+lgGkUpIzuBhBXIBmoa+Y09fx9Z12jtHRsX5/grp20aHck3geUwUbBiuPVX/6BViNYn018pk8wai9bHxtZZ5cwGEZ3/RbhnQdGShw5EEZZhblQbM2G2Lrbjli+OcadUCRgsCrAWBwmO5malepqzZcd4KWKm3l0BW2pBBk0xDpOWi07cgoNBqDB4HNS+na7Vzwrs/x8jJ/NzL5Y3+wCliuCn9qyXGI0qesxKg7lo9/9eIrNyt1cOL4iGTj1ebuCFIPt3Df7xR1iTnKrv0SA5UBnqYdGYUvLAkCc6rllA2owMXlqvyDgNFidFbkATCsqUkWIctcDN/JUHV
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 03f661f6-b76e-4ddd-be20-08d82fb0f969
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 09:07:21.7691 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W1JyXoSIVdCbD6qLy1oy36nNrZc6W89Vv1arSlhkt5rO++A0jhN/yTE6S1QZanmzIA4KCZtnK3OqhAazvBjYLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR0101MB1787
Subject: Re: [USRP-users] 4 channel capture using grc and pcie
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
From: "Koyel Das \(Vehere\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Koyel Das \(Vehere\)" <koyel.das@vehere.com>
Content-Type: multipart/mixed; boundary="===============3726070336315305431=="
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

--===============3726070336315305431==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB2588551C27619A8DF3078F6190770MA1PR01MB2588INDP_"

--_000_MA1PR01MB2588551C27619A8DF3078F6190770MA1PR01MB2588INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

With this command `sudo apt install gnuradio` on Ubuntu 20.04 LTS will gnu =
radio companion will also get installed with its GUI?

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus M=
=FCller via USRP-users <usrp-users@lists.ettus.com>
Sent: Friday, July 24, 2020 2:32:20 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] 4 channel capture using grc and pcie

Hi Koyel,

The NI 2955 (hardware-wise: an X310 with TwinRX daughterboards) can be
used with modern GNU Radio.

I'd think you'll be most happy with installing Ubuntu Linux 20.04LTS,
from which
`sudo apt install gnuradio`
will give you a working GNU Radio, and a matching UHD.

(Don't follow any other guides on installing UHD =96 you've already got
the recommended version, then, and installing anything else is just
asking for trouble)

Best regards,
Marcus

On 24.07.20 10:21, Koyel Das (Vehere) via USRP-users wrote:
> Hi,
>
> Is it possible to receive data from 4 channels simultaneously of usrp 295=
5 using PCIe ? Which version of Linux and grc should be installed for that?
>
> Regards,
> Koyel
>
> Get Outlook for iOS<https://aka.ms/o0ukef>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_MA1PR01MB2588551C27619A8DF3078F6190770MA1PR01MB2588INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"ltr">
<div>
<meta content=3D"text/html; charset=3DWindows-1252">
</div>
<div dir=3D"ltr">
<div></div>
<div>
<div>With this command&nbsp;<span style=3D"caret-color: rgb(0, 0, 0); font-=
family: -apple-system, HelveticaNeue; font-size: 14.666666984558105px; disp=
lay: inline !important">`sudo apt install gnuradio` on Ubuntu 20.04 LTS wil=
l gnu radio companion will also get installed
 with its GUI?</span></div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Marcus M=FCller via USRP-user=
s &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Friday, July 24, 2020 2:32:20 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] 4 channel capture using grc and pcie</font=
>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">Hi Koyel,<br>
<br>
The NI 2955 (hardware-wise: an X310 with TwinRX daughterboards) can be<br>
used with modern GNU Radio.<br>
<br>
I'd think you'll be most happy with installing Ubuntu Linux 20.04LTS,<br>
from which<br>
`sudo apt install gnuradio`<br>
will give you a working GNU Radio, and a matching UHD.<br>
<br>
(Don't follow any other guides on installing UHD =96 you've already got<br>
the recommended version, then, and installing anything else is just<br>
asking for trouble)<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On 24.07.20 10:21, Koyel Das (Vehere) via USRP-users wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; Is it possible to receive data from 4 channels simultaneously of usrp =
2955 using PCIe ? Which version of Linux and grc should be installed for th=
at?<br>
&gt; <br>
&gt; Regards,<br>
&gt; Koyel<br>
&gt; <br>
&gt; Get Outlook for iOS&lt;<a href=3D"https://aka.ms/o0ukef">https://aka.m=
s/o0ukef</a>&gt;<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; USRP-users@lists.ettus.com<br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
</a><br>
&gt; <br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
USRP-users@lists.ettus.com<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><=
br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_MA1PR01MB2588551C27619A8DF3078F6190770MA1PR01MB2588INDP_--


--===============3726070336315305431==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3726070336315305431==--

