Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 433616BCE3
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2019 15:20:41 +0200 (CEST)
Received: from [::1] (port=38632 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnjrL-00072F-Uh; Wed, 17 Jul 2019 09:20:39 -0400
Received: from otransport-5.outbound.emailsrv.net ([54.84.246.51]:47573)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hnjrI-0006tK-4w
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 09:20:36 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-5.outbound.emailsrv.net (Postfix) with ESMTPS id CA26F616AB;
 Wed, 17 Jul 2019 13:19:54 +0000 (UTC)
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam03lp2054.outbound.protection.outlook.com [104.47.40.54])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id 232B6613C2;
 Wed, 17 Jul 2019 13:19:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qk9b3Y4gpwT0YGR7ZhY3hXP+y5c8z0aqdowzfkiaEOz19O914tt0I3pUVL7bzr5L6VPOz7Z9WIuG8E3/AuG9FoUCxf4Ibq8I9i12AzQcQCorm6pqOsQaw4dHQWYSZGFCD7QiPhtXKZOF9zxa06/ywIgJXxaMqhQ35t38Sp2P9QZxUsRlOjwyAv7S77v+Ot3hqwyoEvv27PLt89kERcM354jUgBNlxjFQxi8R6VMacrQybonS/Gv85tA0KY1/bF/FCHzoRNZ9aH39053GDrHdO8TMzC3zpA2hIornxL0qAQfri7M7xE+MEClB0ugydB7k+QRaLRn2Wp910FUjvBcbFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b03Vn51j7cXoCMx4MES4uAGgeS9l2seDxOsGsXighQY=;
 b=PKaxn6nWbTs031qXHurjNil1n/yeEghddDZFzRGnFXON1soM9R87DAxxMxQCBCUBxiZNN65cOU31HM9kpRM2p/bMH7VuXNCAJc39pXQ2JDdyxEpOV/TWApbId5iAZIl2Rps5rnnmPOakrEIvbJi4bE4f49xwAw1nRbJws+NuRPPUOHDvlZ1xiwpWq18DBf9I7X5qJSxLRcs9v3TT0yb+io8StDcsTWeiE8C7j5l9c5LmVcICYN4oQbcHlIYplDepp+lPIyARuYZwU1cbC2YbR9Yt3KBDImHtR3ansvIfzxXcUAHZjSc4jl67CPeWul3D/uObbut3rotvZoRIobTlaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=gardettoengineering.com;dmarc=pass action=none
 header.from=gardettoengineering.com;dkim=pass
 header.d=gardettoengineering.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b03Vn51j7cXoCMx4MES4uAGgeS9l2seDxOsGsXighQY=;
 b=JH9YI3yQ7TU2r0TrR2Iv1y4IW0vpLQ18rEWXZ/AyCZ4qaZwsI+MhHqnUN6ewIvisO6ZcGG+ETi86hLLUaGJdQkr9+WIWzIR/BxMAfvdLekmIG47ygtywBymOqAgFS8Auwrbz0Ze5gTlSn1KaynxEhsNXkv3BCVlaOez4mesiOSA=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2498.namprd12.prod.outlook.com (52.132.11.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.11; Wed, 17 Jul 2019 13:19:50 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1c8e:a892:16c:fc07]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1c8e:a892:16c:fc07%6]) with mapi id 15.20.2094.011; Wed, 17 Jul 2019
 13:19:50 +0000
To: Sumit Kumar <cogwsn@gmail.com>
Thread-Topic: [USRP-users] Sequence Errors N200
Thread-Index: AQHVPJEbXcWWBQK7KE2S3Vh3Ld9JNKbOqY5VgAAHsoCAAAE5S4AACXsAgAAM2pk=
Date: Wed, 17 Jul 2019 13:19:50 +0000
Message-ID: <BL0PR12MB234037B01F84C36682568490AFC90@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <CAOExtcQtL_gri3uWw9_NyXPEOwS6Gpc+NqSs07Vwmdc4gbHQTg@mail.gmail.com>
 <BL0PR12MB2340A337C6CBB311E990C16CAFC90@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAOExtcRbYo-15C2eVcmJNz98=0vK5nJEJsdZt6MUd0ViUhcQZQ@mail.gmail.com>
 <BL0PR12MB2340682EFC45C0AA255B6AA2AFC90@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <CAOExtcSLfxOUFfqoH0EVfJCWxRsrayZV9WnDLSk=Rf-7=pnCYA@mail.gmail.com>
In-Reply-To: <CAOExtcSLfxOUFfqoH0EVfJCWxRsrayZV9WnDLSk=Rf-7=pnCYA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8cc49561-5a8b-48dc-eab2-08d70ab972e2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2498; 
x-ms-traffictypediagnostic: BL0PR12MB2498:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <BL0PR12MB249862A5049D85443DA55D3BAFC90@BL0PR12MB2498.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:363;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(366004)(136003)(346002)(376002)(39830400003)(189003)(199004)(7736002)(25786009)(53936002)(74316002)(8676002)(6436002)(236005)(508600001)(6306002)(9686003)(76176011)(966005)(6506007)(53546011)(26005)(5070765005)(66066001)(68736007)(256004)(7696005)(55016002)(446003)(54896002)(11346002)(186003)(8936002)(486006)(21615005)(81166006)(81156014)(99286004)(105004)(102836004)(229853002)(3846002)(6116002)(316002)(33656002)(2906002)(476003)(71190400001)(71200400001)(1411001)(14454004)(5660300002)(76116006)(4326008)(19627405001)(66476007)(66556008)(64756008)(66446008)(6916009)(52536014)(86362001)(66946007)(606006)(6246003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2498;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7yrqpBplcnNv51s8GGfrLqOFHjcgx4BKdZoGcXZPOtDMLoKc5lZt/VeNJuWYFTwQx4kgxpSUti2hu8t6ReiVX+C4/5velfyrFd6wEo4v7au7iQDj+7Qh+yjdC6IILkbOrpApmZceqIIdfcFDjiJf8wEV8dQBLNjkrTzpMJS1Ba/KZjHEGIvrkUlOAVGsh2R0JTMz+YnCxvX9lLCvbxIsX/CW4GcPO7sh7BMDHqQAKNir88HMGL52vH0winoJroG2eTtahv1oECszD/E7bcCZMeqIKJZT2DoIBrqLbpsNwfRa+zNBzIA3H9X3B9IyjBRFHN3OvycXSmot9WEhXi62mJh5ohCQh/4WRONjHvJBz3xTi6G1cB3A+915uaIuuqkWP6uDXm1etayHMk2mgiMypow2WJ/CGSGDiFe4EsEeEIw=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cc49561-5a8b-48dc-eab2-08d70ab972e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 13:19:50.7206 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2498
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-co1nam03lp2054.outbound.protection.outlook.com|104.47.40.54|NAM03-CO1-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.40.54, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-29899-c
X-Mailprotector-ID: a1eae7f9-dffa-4144-b885-e362b5e006a9
Subject: Re: [USRP-users] Sequence Errors N200
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
From: Jason Matusiak via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason Matusiak <jason@gardettoengineering.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8297458824619520684=="
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

--===============8297458824619520684==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB234037B01F84C36682568490AFC90BL0PR12MB2340namp_"

--_000_BL0PR12MB234037B01F84C36682568490AFC90BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

You are right, the table of revisions was for the X-series

try running the command from your prefix: src/uhd/host/build/utils/usrp_bur=
n_mb_eeprom --args=3D"type=3Dn200" --read-all

don't quote me on the type portion, I don't have a board in front of me to =
see if it is n200 or something else.  I //think// that will report the majo=
r and minor revision values (I am grasping at straws here, just trying to f=
igure out what the differences might be).

You are connecting the ethernet connections to the two devices through the =
exact same port on your PC?

________________________________
From: Sumit Kumar <cogwsn@gmail.com>
Sent: Wednesday, July 17, 2019 8:24 AM
To: Jason Matusiak <jason@gardettoengineering.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Sequence Errors N200

The sticker  for sbx shows F33612 and F33814.
How will this help ?


On Wed, Jul 17, 2019 at 1:50 PM Jason Matusiak <jason@gardettoengineering.c=
om<mailto:jason@gardettoengineering.com>> wrote:
Sumit,

OK, the last idea I have:

There is a sticker on the back of the N-series devices it usually says the =
version there, but not always.  This has a little info: https://kb.ettus.co=
m/About_the_Motherboard_and_Daughtercard_EEPROM_on_USRP_Devices#N200.2F210_=
EEPROM

Do they match?

________________________________
From: Sumit Kumar <cogwsn@gmail.com<mailto:cogwsn@gmail.com>>
Sent: Wednesday, July 17, 2019 7:45 AM
To: Jason Matusiak <jason@gardettoengineering.com<mailto:jason@gardettoengi=
neering.com>>
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: Re: [USRP-users] Sequence Errors N200

Hi Jason,

Yes they are consistent, I mean the output of uhd_usrp_probe for both N200 =
is exactly the same (except the ip, serial and mac addr).
I do not know where the problem is! Hardware or software

Regards
Sumit

On Wed, Jul 17, 2019 at 1:19 PM Jason Matusiak <jason@gardettoengineering.c=
om<mailto:jason@gardettoengineering.com>> wrote:
I am not really an N-series guy, so this probably won't be helpful.  Have y=
ou tried doing a uhd_usrp_probe on both devices and seen that the responses=
 are consistent?

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com<mailto:usrp-users-boun=
ces@lists.ettus.com>> on behalf of Sumit Kumar via USRP-users <usrp-users@l=
ists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Sent: Wednesday, July 17, 2019 7:15 AM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: [USRP-users] Sequence Errors N200

Hi,
I am trying transmit using Ettus N200 (call it A) but getting this error me=
ssage on the console

SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS..................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
................................

I looked for it on google and found these links
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-May/037495=
.html
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2012-July/03283=
8.html

Both the links  suggested problem related to the gigabit port. Then I conne=
cted another USRP N200 (call it B) to the same laptop and tried transmittin=
g using that as there were no such sequence error messages.

This makes me believe there is some problem with the first USRP, i.e., A.

Further I tried with different versions of UHD 3.11, UHD 3.15.. but its the=
 same.

Receive is good only transmit is throwing error.

Not only with UHD, even in labview, when I transmit, I see nothing coming o=
ut from the N200 (A).

I am using SBXv2 daughter board.

Any clue!

Regards
--
--
Sumit kumar
Postdoc
SnT, Luxembourg




--
--
Sumit kumar
Postdoc
SnT, Luxembourg




--
--
Sumit kumar
Postdoc
SnT, Luxembourg



--_000_BL0PR12MB234037B01F84C36682568490AFC90BL0PR12MB2340namp_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
You are right, the table of revisions was for the X-series</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
try running the command from your prefix: src/uhd/host/build/utils/usrp_bur=
n_mb_eeprom&nbsp;--args=3D&quot;type=3Dn200&quot; --read-all</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
don't quote me on the type portion, I don't have a board in front of me to =
see if it is n200 or something else.&nbsp; I //think// that will report the=
 major and minor revision values (I am grasping at straws here, just trying=
 to figure out what the differences might
 be).</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
You are connecting the ethernet connections to the two devices through the =
exact same port on your PC?</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Sumit Kumar &lt;cogws=
n@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, July 17, 2019 8:24 AM<br>
<b>To:</b> Jason Matusiak &lt;jason@gardettoengineering.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Sequence Errors N200</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">The sticker&nbsp; for sbx shows F33612 and F33814.&nbsp;
<div>How will this help ?&nbsp;</div>
<div><br>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Jul 17, 2019 at 1:50 PM Jas=
on Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.com">jason@gard=
ettoengineering.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Sumit,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
OK, the last idea I have:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
There is a sticker on the back of the N-series devices it&nbsp;<em>usually<=
/em>&nbsp;says the version there, but not always.&nbsp; This has a little i=
nfo:&nbsp;<a href=3D"https://kb.ettus.com/About_the_Motherboard_and_Daughte=
rcard_EEPROM_on_USRP_Devices#N200.2F210_EEPROM" rel=3D"nofollow" target=3D"=
_blank" style=3D"color:rgb(59,115,175)">https://kb.ettus.com/About_the_Moth=
erboard_and_Daughtercard_EEPROM_on_USRP_Devices#N200.2F210_EEPROM</a><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Do they match?</div>
<div id=3D"x_gmail-m_6506407344245079092Signature">
<div>
<div id=3D"x_gmail-m_6506407344245079092appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_6506407344245079092divRplyFwdMsg" dir=3D"ltr"><font fa=
ce=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>Fr=
om:</b> Sumit Kumar &lt;<a href=3D"mailto:cogwsn@gmail.com" target=3D"_blan=
k">cogwsn@gmail.com</a>&gt;<br>
<b>Sent:</b> Wednesday, July 17, 2019 7:45 AM<br>
<b>To:</b> Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.c=
om" target=3D"_blank">jason@gardettoengineering.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Sequence Errors N200</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Jason,
<div><br>
<div>Yes they are consistent, I mean the output of uhd_usrp_probe for both =
N200 is exactly&nbsp;the same (except the ip, serial and mac addr).</div>
<div>I do not know where the problem is! Hardware or software&nbsp;</div>
<div><br>
</div>
<div>Regards</div>
<div>Sumit&nbsp;&nbsp;</div>
</div>
</div>
<br>
<div class=3D"x_gmail-m_6506407344245079092x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail-m_6506407344245079092x_gmail_attr">On Wed=
, Jul 17, 2019 at 1:19 PM Jason Matusiak &lt;<a href=3D"mailto:jason@gardet=
toengineering.com" target=3D"_blank">jason@gardettoengineering.com</a>&gt; =
wrote:<br>
</div>
<blockquote class=3D"x_gmail-m_6506407344245079092x_gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex; border-left:1px solid rgb(204,204,204); padding-le=
ft:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I am not really an N-series guy, so this probably won't be helpful.&nbsp; H=
ave you tried doing a uhd_usrp_probe on both devices and seen that the resp=
onses are consistent?</div>
<div id=3D"x_gmail-m_6506407344245079092x_gmail-m_9014729813065413461Signat=
ure">
<div>
<div id=3D"x_gmail-m_6506407344245079092x_gmail-m_9014729813065413461append=
onsend">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_6506407344245079092x_gmail-m_9014729813065413461divRpl=
yFwdMsg" dir=3D"ltr">
<font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11p=
t"><b>From:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.e=
ttus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on b=
ehalf of Sumit Kumar via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, July 17, 2019 7:15 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Sequence Errors N200</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi,&nbsp;
<div>I am trying transmit using Ettus N200 (call it A) but getting this err=
or message on the console&nbsp;</div>
<div><br>
</div>
<div>SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.............................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
.....................................<br>
</div>
<div><br>
</div>
<div>I looked for it on google and found these links&nbsp;</div>
<div><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2014-May/037495.html" target=3D"_blank">http://lists.ettus.com/pipermail/u=
srp-users_lists.ettus.com/2014-May/037495.html</a><br>
</div>
<div><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2012-July/032838.html" target=3D"_blank">http://lists.ettus.com/pipermail/=
usrp-users_lists.ettus.com/2012-July/032838.html</a><br>
</div>
<div><br>
</div>
<div>Both the links&nbsp; suggested problem related to the gigabit port. Th=
en I connected another USRP N200 (call it B) to the same laptop and tried t=
ransmitting using that as there were no such sequence error messages.</div>
<div><br>
</div>
<div>This makes me believe there is some problem with the first USRP, i.e.,=
 A.&nbsp;<br>
</div>
<div><br>
</div>
<div>Further I tried with different versions of UHD 3.11, UHD 3.15.. but it=
s the same.&nbsp;</div>
<div><br>
</div>
<div>Receive is good only transmit is throwing error.&nbsp;</div>
<div><br>
</div>
<div>Not only with UHD, even in labview, when I transmit, I see nothing com=
ing out from the N200 (A).&nbsp;</div>
<div><br>
</div>
<div>I am using SBXv2 daughter board.&nbsp;</div>
<div><br>
</div>
<div>Any clue!</div>
<div><br>
</div>
<div>Regards</div>
<div>-- <br>
<div dir=3D"ltr" class=3D"x_gmail-m_6506407344245079092x_gmail-m_9014729813=
065413461x_gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr"><span style=3D"color:rgb(136,136,136); font-size:12.8px">-=
-&nbsp;</span><br style=3D"color:rgb(136,136,136); font-size:12.8px">
<div style=3D"color:rgb(136,136,136); font-size:12.8px">Sumit kumar<br>
Postdoc</div>
<div style=3D"color:rgb(136,136,136); font-size:12.8px">SnT, Luxembourg</di=
v>
<div style=3D"color:rgb(136,136,136); font-size:12.8px"><br>
</div>
<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div dir=3D"ltr" class=3D"x_gmail-m_6506407344245079092x_gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr"><span style=3D"color:rgb(136,136,136); font-size:12.8px">-=
-&nbsp;</span><br style=3D"color:rgb(136,136,136); font-size:12.8px">
<div style=3D"color:rgb(136,136,136); font-size:12.8px">Sumit kumar<br>
Postdoc</div>
<div style=3D"color:rgb(136,136,136); font-size:12.8px">SnT, Luxembourg</di=
v>
<div style=3D"color:rgb(136,136,136); font-size:12.8px"><br>
</div>
<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div dir=3D"ltr" class=3D"x_gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr"><span style=3D"color:rgb(136,136,136); font-size:12.8px">-=
-&nbsp;</span><br style=3D"color:rgb(136,136,136); font-size:12.8px">
<div style=3D"color:rgb(136,136,136); font-size:12.8px">Sumit kumar<br>
Postdoc</div>
<div style=3D"color:rgb(136,136,136); font-size:12.8px">SnT, Luxembourg</di=
v>
<div style=3D"color:rgb(136,136,136); font-size:12.8px"><br>
</div>
<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB234037B01F84C36682568490AFC90BL0PR12MB2340namp_--


--===============8297458824619520684==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8297458824619520684==--

