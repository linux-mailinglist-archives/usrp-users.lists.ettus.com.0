Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6BC115819
	for <lists+usrp-users@lfdr.de>; Fri,  6 Dec 2019 21:05:24 +0100 (CET)
Received: from [::1] (port=41008 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1idJqn-0002fK-Ca; Fri, 06 Dec 2019 15:05:17 -0500
Received: from mail-mw2nam10on2066.outbound.protection.outlook.com
 ([40.107.94.66]:6206 helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <minutolo@caltech.edu>)
 id 1idJqj-0002YS-LY
 for usrp-users@lists.ettus.com; Fri, 06 Dec 2019 15:05:13 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i6yPx3dNpGIvAxastbuXYntc1Gazs/nrPYTp4FkW/i6RFhy6GYi5H8O4DQco3dEbXDv6uPRuZsQx/Wb0NvXo6stsq2uT578LjhUJP4u26Fo2gsOCuC3+CaCNzsSsx9F+9viXLy781XonnR1k6yRkjdYQgi+zOstKDyCjoRlaJVPUTc87x37/OieAkgLWP+++rtRY9Wb/2KaVXQwPu+ALMeW8vPFKQg+gZJTbzq4xBW5wVG2C6AJbxg+YWRRA9trZMKpeGUwC3y7jBX+kSLdRC2vwQwNF5a5hIBTdHadHHHRCYPEMcUWEhnFtd2EpumF61j+4C6oHkA4KWuxcU6JwZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DAIfUz6cqK7PgX77dTWuIm+eWqFjFOW9XAAa2E/T2ZA=;
 b=CC8yztOVldxiPURcADmFTt1v64JwEWNLgcoldQ2wiHSRr1DxlPLoxwcsw8gB4PzOSZ2/vT+sld6/7TwG4Zo+bIc/zPtwLM2GYNQwbQxYcI6rWUcpDLBwhChYLKQpgMfNUAAMcbxAmLamI9Fx/2X6aDJAbDbN6D49Pfyqg4lzH62BlfiKZHYMWqS+iEj8KWKldiJxpkBwNC9Q9KGWeYdMok4EIswm5GnCvqXtBIo7QsUdl9qY1eE9SzJV14X9WmLHksN1/dVVBnCaoD6XU9J2zYITYdSd2T6LOKDVFH9a7ah1rOi0/2z1ZJiSidPDaoqyUAklwK+Fxjp0bNIk4xQ/rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=caltech.onmicrosoft.com; s=selector2-caltech-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DAIfUz6cqK7PgX77dTWuIm+eWqFjFOW9XAAa2E/T2ZA=;
 b=Dln4Sc9MHD81CS3qmmrAJZpHbTYhjeTozEEMM6gauNNh9WqEZXWZyJOtxCAxrylA4LMtFs4acvvTNl38QZXIg6BanXjO8LCn0rrKxxFMbYIxof9nau2bs/A4VT1CqrreSxag1gXJY3aGdLFXdqViz4W4Pm5poH6Gb9VhIqn7FJU=
Received: from BYAPR03MB3621.namprd03.prod.outlook.com (52.135.215.140) by
 BYAPR03MB3863.namprd03.prod.outlook.com (20.176.255.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.12; Fri, 6 Dec 2019 20:04:31 +0000
Received: from BYAPR03MB3621.namprd03.prod.outlook.com
 ([fe80::ccce:7dab:2a19:386d]) by BYAPR03MB3621.namprd03.prod.outlook.com
 ([fe80::ccce:7dab:2a19:386d%6]) with mapi id 15.20.2495.014; Fri, 6 Dec 2019
 20:04:31 +0000
To: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] x300 systematic error
Thread-Index: AQHVlOmOSIy6MTG42UmFlKIM6dZdW6ennfeAgAARt4CABgN+/Q==
Date: Fri, 6 Dec 2019 20:04:31 +0000
Message-ID: <BYAPR03MB36214EB9C433931AE9169D3DD35F0@BYAPR03MB3621.namprd03.prod.outlook.com>
References: <BYAPR03MB36214F251A9766E8F9376E31D3790@BYAPR03MB3621.namprd03.prod.outlook.com>
 <CACSOXP2Kx_0hQzZN4c0Jx1mv44Guc77QDFfJa=ZPb4TCsc1wrA@mail.gmail.com>,
 <5DE5A5BF.2090806@gmail.com>
In-Reply-To: <5DE5A5BF.2090806@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=minutolo@caltech.edu; 
x-originating-ip: [131.215.195.196]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e63cb042-0290-4c21-caa9-08d77a8781f6
x-ms-traffictypediagnostic: BYAPR03MB3863:
x-microsoft-antispam-prvs: <BYAPR03MB38633CA70F365898B28FADC0D35F0@BYAPR03MB3863.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0243E5FD68
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(39860400002)(136003)(376002)(396003)(199004)(53754006)(189003)(33656002)(6506007)(76176011)(53546011)(6916009)(5660300002)(86362001)(71200400001)(9686003)(54896002)(316002)(74316002)(7066003)(55016002)(102836004)(19627405001)(81156014)(75432002)(66476007)(478600001)(66556008)(2906002)(81166006)(229853002)(66446008)(52536014)(76116006)(64756008)(66946007)(8936002)(8676002)(26005)(88552002)(186003)(66574012)(71190400001)(966005)(7696005)(21615005)(786003)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB3863;
 H:BYAPR03MB3621.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: caltech.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ur7Dthr6OykgcRKHlmquGF/QOiiywEjXMtE7m3Su8V8sCW482uX1L5JmR2bR72cTIrmGNZ+VpKnTgLCxtydlPqrXKZCrkl+oB3fooJDY5gwAgu85tyT2WlHcWWLlGXyKuIVbwh4UrbdYs3WEPd5y/5cR8BR3SFLQbc/Oes4BsPXx0vfD/JjrtfHeEMwRzOgPmwhIivn1PDOKD+wi5ZyvMakMXcz8BZcmplE2HVqBWcbWczHTU7/ajlRhYGMdLI/UXLb12uw85JzHEFmL3wUPr2mXMap7CSuUV3l1xof8FYd94+mIRwnkbwYDochvJVo6DPtyO8G8L2DKCREJvK7HPmItz+Sx+T0qgDG40tb0cy0UAorTGeqyyIRKMbXaaahNnIKd5V2KjqNjLh4lTTJ2pBkGuPI/eKMYAZjxFVdYDele0KtEScokV0pYjGjm/bgaEx8ewAtZ78JJm+wPf+HvIx28UqodX9NA6FirEC8o9BVES6csspBv0x44PR3Ag/6taUUJqGDqX1Rt4IhNKPZHhp+ECEaCUvPv5pY6I8KuDAI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: e63cb042-0290-4c21-caa9-08d77a8781f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2019 20:04:31.4283 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hy8L446u1HaIXKeIuNkTGuXnmR0GggF0zO0J9ZtoXy4OjiYqa+l5PSfEYMSt8CxHZSkDi87QUzBsudrTyZS6eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3863
Subject: Re: [USRP-users] x300 systematic error
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
From: "Minutolo, Lorenzo via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Minutolo, Lorenzo" <minutolo@caltech.edu>
Content-Type: multipart/mixed; boundary="===============7769404597451350823=="
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

--===============7769404597451350823==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB36214EB9C433931AE9169D3DD35F0BYAPR03MB3621namp_"

--_000_BYAPR03MB36214EB9C433931AE9169D3DD35F0BYAPR03MB3621namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
The problem was fixed by removing a periodic call to the reset() method of =
the streamers.  The code<https://github.com/LorenzoMinutolo/GPU_SDR> and th=
e documentation<http://www.its.caltech.edu/~minutolo/gpu_sdr_doc.html> is p=
ublicly available and the fix has been applied in one of the recent commits=
. The effect of not resetting the streamers was critical for our applicatio=
n in UHD 3.11 (we were observing a different line delay in each of out meas=
urement) but with the latest UHD (3.15) Everything seems to work fine.

Best,

Lorenzo
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus D=
. Leech via USRP-users <usrp-users@lists.ettus.com>
Sent: Monday, December 2, 2019 4:01 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] x300 systematic error

On 12/02/2019 05:57 PM, Ettus Research Support via USRP-users wrote:
Hi Lorenzo,

What version of UHD are you using?

Can you share your C++ app (either by emailing the mailing list or by email=
ing it to support@ettus.com<mailto:support@ettus.com>)?

Regards,
Nate Temple
My guess is that *somebody* is running out of sockets -- either the host-si=
de UHD library or the X3xx side.

How rapidly do you reset/re-start the streams?

For TCP sockets at least, there's a timer when the socket is closed that ca=
uses it to hang-around for a while in case more
  data arrives after the close handshake.  While the socket is in this stat=
e, it cannot be reused, so if you're rapidly creating
  and destroying objects that ultimately create a socket, you can run out o=
f sockets.  Pure speculation on my part, and it
  may be something else entirely.



On Wed, Nov 6, 2019 at 1:41 PM Minutolo, Lorenzo via USRP-users <usrp-users=
@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hi All,
My C++ application has a loop which after creating the streamers,

send and receive some samples -> reset the streamers -> wait some time -> r=
epeat.

after exactly 83 iterations I get the error in the attached screenshot.

If I restart the application everything works normally again

What is causing this? is there a workaround?


I'm using the USRP x300, core i9-990k CPU, intel x710 chip, running ubuntu =
18.04 LTS with boost 1.68 and the latest UHD library (just coned).

The error is the same using all other UHD versions

Thanks,
Lorenzo
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com



--_000_BYAPR03MB36214EB9C433931AE9169D3DD35F0BYAPR03MB3621namp_
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
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
The problem was fixed by removing a periodic call to the reset() method of =
the streamers.&nbsp; The
<a href=3D"https://github.com/LorenzoMinutolo/GPU_SDR" title=3D"https://git=
hub.com/LorenzoMinutolo/GPU_SDR">
code</a> and the <a href=3D"http://www.its.caltech.edu/~minutolo/gpu_sdr_do=
c.html" title=3D"http://www.its.caltech.edu/~minutolo/gpu_sdr_doc.html">
documentation</a> is publicly available and the fix has been applied in one=
 of the recent commits. The effect of not resetting the streamers was criti=
cal for our application in UHD 3.11 (we were observing a different line del=
ay in each of out measurement) but
 with the latest UHD (3.15) Everything seems to work fine.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Best,<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Lorenzo<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Marcus D. Leech via USRP-user=
s &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Monday, December 2, 2019 4:01 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] x300 systematic error</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 12/02/2019 05:57 PM, Ettus Research Sup=
port via USRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif">Hi =
Lorenzo,<br>
<br>
What version of UHD are you using?<br>
<br>
Can you share your C&#43;&#43; app (either by emailing the mailing list or =
by emailing it to
<a href=3D"mailto:support@ettus.com">support@ettus.com</a>)?<br>
<br>
Regards,<br>
Nate Temple</div>
</div>
</blockquote>
My guess is that *somebody* is running out of sockets -- either the host-si=
de UHD library or the X3xx side.<br>
<br>
How rapidly do you reset/re-start the streams?<br>
<br>
For TCP sockets at least, there's a timer when the socket is closed that ca=
uses it to hang-around for a while in case more<br>
&nbsp; data arrives after the close handshake.&nbsp; While the socket is in=
 this state, it cannot be reused, so if you're rapidly creating<br>
&nbsp; and destroying objects that ultimately create a socket, you can run =
out of sockets.&nbsp; Pure speculation on my part, and it<br>
&nbsp; may be something else entirely.<br>
<br>
<br>
<blockquote type=3D"cite"><br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Nov 6, 2019 at 1:41 PM Minu=
tolo, Lorenzo via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex; border-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi All,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
My C&#43;&#43; application has a loop which after creating the streamers,&n=
bsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
send and receive some samples -&gt;<span style=3D"font-family:Calibri,Arial=
,Helvetica,sans-serif; background-color:rgb(255,255,255); display:inline"><=
span>&nbsp;</span>reset the streamers -&gt;</span>&nbsp;wait some time -&gt=
; repeat.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
after exactly 83 iterations I get the error in the attached screenshot.</di=
v>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
If I restart the application everything works normally again</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
What is causing this? is there a workaround?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; background-c=
olor:rgb(255,255,255); display:inline">I'm using the USRP x300, core i9-990=
k CPU, intel x710 chip, running ubuntu 18.04 LTS with boost 1.68 and the la=
test UHD library (just coned).</span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; background-c=
olor:rgb(255,255,255); display:inline"><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; background-c=
olor:rgb(255,255,255); display:inline">The error is the same using all othe=
r UHD versions</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; background-c=
olor:rgb(255,255,255); display:inline"><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; background-c=
olor:rgb(255,255,255); display:inline">Thanks,</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; background-c=
olor:rgb(255,255,255); display:inline">Lorenzo</span></div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
<br>
<fieldset class=3D"x_mimeAttachmentHeader"></fieldset> <br>
<pre>_______________________________________________
USRP-users mailing list
<a class=3D"x_moz-txt-link-abbreviated" href=3D"mailto:USRP-users@lists.ett=
us.com">USRP-users@lists.ettus.com</a>
<a class=3D"x_moz-txt-link-freetext" href=3D"http://lists.ettus.com/mailman=
/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listin=
fo/usrp-users_lists.ettus.com</a>
</pre>
</blockquote>
<br>
</div>
</body>
</html>

--_000_BYAPR03MB36214EB9C433931AE9169D3DD35F0BYAPR03MB3621namp_--


--===============7769404597451350823==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7769404597451350823==--

