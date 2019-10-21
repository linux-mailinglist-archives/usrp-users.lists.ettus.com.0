Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FB6DF42F
	for <lists+usrp-users@lfdr.de>; Mon, 21 Oct 2019 19:27:43 +0200 (CEST)
Received: from [::1] (port=51770 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMbT3-00067l-Bm; Mon, 21 Oct 2019 13:27:41 -0400
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52]:60640)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1iMbSz-0005zm-SP
 for usrp-users@lists.ettus.com; Mon, 21 Oct 2019 13:27:37 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 551C6646DA
 for <usrp-users@lists.ettus.com>; Mon, 21 Oct 2019 17:26:57 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02lp2051.outbound.protection.outlook.com [104.47.36.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us2.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 4E53BA40070;
 Mon, 21 Oct 2019 17:26:46 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V+TZB628fjPcr3vuzQoMAYjHYujp/fuKRUP/RyJfBCwZ7uRZ9HLI1Rg8qeTXt9exOvQt1pilaxdCri22wsGuIvX0R7zaI709ddK2/7sit4CmZNFuxKX7YjFbmkK4tno8v9pzYyHJ7DbgxvC5M5uO198Z1jEF2I+BttGERJ5dqz7rWlVJgMmQvrgexyShGqOLC4s0Q5IUDPZRScUtXc0iGWaMOylbUtL7KdQf0Yz7e4IBUejOqmVt12bEh4VoNuMSAGRZynscEir/cukCUkkxjQMol2RNlBxNyH1+mamsfeMHW0Tp5lxdTpoZOioib+IvlojxCNXEtH7fy5ZpXIGW3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0nC9VSo5tp8xXGBNuA0XSungZDe6TCE2K117wy/2QZ0=;
 b=BpH2U+CQIN9VylpJusE2zshMU1FqIgN+gjWqMuV8bkzykBJvfHDxUvze4VVi/TouomNZwB56DtXx7XdLiqyV+4Jw8nWF7XMsunzdm+GmbSOpxk38SEPRNMY3v8p05ckpMphAQDHd38xWbMQ5mkKIuTKl+y0HB0d/I9USDaET2MeeucIq0+mqeL/TyJD409DpGkw0B5ekWKqFHd25cQWFkLa1jIxguBEFunD799D6nolMLOHZmDIa3lPoOLKEeoRuExFqo3/oPlTzR9TjMIY8dAJrlyhLYKEyS3TulORfnPxO2qU1TsolTkRLKgITOesjBgH8wDtweOroillE1x011Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0nC9VSo5tp8xXGBNuA0XSungZDe6TCE2K117wy/2QZ0=;
 b=D4FUA4nx5Ya2Voo45J/JIzO+JLOs8O0YZmzXJGHAP9r/4J8hMJt+nm8Kpg6hq5L9QHkZYvPyHf/ojw+l/EFcFQ0FWtBbWkin+1UgIzLwDDOM6pZpwi3EDJ0Z8ZFHaOruEu8uOmJtf56TK72HutwPiTgg2n/BbvOzCpQP7tbOBdg=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.11.30) by
 BL0PR12MB2513.namprd12.prod.outlook.com (52.132.9.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.19; Mon, 21 Oct 2019 17:26:44 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::d017:bb2f:c281:2400]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::d017:bb2f:c281:2400%5]) with mapi id 15.20.2347.028; Mon, 21 Oct 2019
 17:26:44 +0000
To: Robin Coxe <coxe@quanttux.com>
Thread-Topic: [USRP-users] python 2.7 on N310
Thread-Index: AQHViC1YDwyTWLH5IEmENGsqVWuv5KdlUAIAgAAHe3k=
Date: Mon, 21 Oct 2019 17:26:43 +0000
Message-ID: <BL0PR12MB2340E075A319EECD15E56CE1AF690@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB234040B48E118FC3E23DF5CEAF690@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <CAKJyDkKWg1xmjAwjdyDOOWdoqe5fqJCQQi39FMi0UHf9e2hthg@mail.gmail.com>
In-Reply-To: <CAKJyDkKWg1xmjAwjdyDOOWdoqe5fqJCQQi39FMi0UHf9e2hthg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0483cc61-53f7-4ac6-e6f3-08d7564bd7eb
x-ms-traffictypediagnostic: BL0PR12MB2513:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BL0PR12MB2513FA25D319CB8DB3B9F9C0AF690@BL0PR12MB2513.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0197AFBD92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(346002)(366004)(39830400003)(396003)(189003)(199004)(71190400001)(66066001)(19627405001)(476003)(6436002)(229853002)(486006)(256004)(6116002)(8936002)(3846002)(6246003)(4326008)(66556008)(66476007)(71200400001)(9686003)(236005)(2906002)(105004)(446003)(54896002)(606006)(55016002)(6306002)(11346002)(102836004)(52536014)(66446008)(7736002)(508600001)(76116006)(6916009)(6506007)(81156014)(14454004)(26005)(76176011)(74316002)(99286004)(316002)(86362001)(81166006)(25786009)(5660300002)(66946007)(966005)(64756008)(8676002)(33656002)(53546011)(7696005)(186003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2513;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xerdxk1DrGa3jCOG7XijTcJiQIDTRXkQyw8XGxTsEwXMGg2McddLw/4J/HxlNvbebhUx0Kf44UA+xIkI25jyYkDsmImvPvNOGVFWQXjQ23oaEGhw9KDSYoAIOlxg2j+Qkh5CC8DUsGJ4UmmtaBZN23WCbGo55KfUkRLGMucPRBJI3bUUflkRchDff7M5QGukYmB3gUpZLj9P3WT5OFpqWGF+3O52zq+ay22aPEg9+eygR2Nx+iLDWBr66w7NZ9oS4KG0IFqXi5OG0JJzDUbsEJCH8qIWzVKWPOM2vofQKg7GM/rbq7zK0KLsqhfzB0lgbXnkZIvpB+5pjWjBzZkPbZM4d2V+flrzXY/Gc+L32dh3lYpx2qu29dAJvZ4xmECawzkPL3E2k5aUfWupXLSnJS7wGeHwNGGhDOTCWQhbZZz9esnH5MU4cnmcLYswm58RLBgIt4v16DlcVD3JdmHAbQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0483cc61-53f7-4ac6-e6f3-08d7564bd7eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2019 17:26:43.8883 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rpXRqgtL5duA6v+4jVYZDTCJeZJLUc5IEurMeyHJracjHXiuGkdt2uva8q4wyBA0ADlpvBNq75U6rJCjlTeF/q0RZOWWvyu67BlFPPnsBxI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2513
X-MDID: 1571678807-9jE5ehGRSCXm
Subject: Re: [USRP-users] python 2.7 on N310
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
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4439813519410536813=="
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

--===============4439813519410536813==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340E075A319EECD15E56CE1AF690BL0PR12MB2340namp_"

--_000_BL0PR12MB2340E075A319EECD15E56CE1AF690BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Really?  OK, thanks Robin.  Maybe I'll see if I can find some toolchain fro=
m before the switch over (but I am sure too many other things will be too o=
ld for all of other packages.

I was surprised since that I could do this stuff with the E320 (which to me=
 has a very similar setup), but the N310 wouldn't work.  I guess we will ha=
ve to forgot using it in embedded mode and only use it in network mode.  Th=
anks Robin!

________________________________
From: Robin Coxe <coxe@quanttux.com>
Sent: Monday, October 21, 2019 12:54 PM
To: Jason Matusiak <jason@gardettoengineering.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] python 2.7 on N310

Python 3 has been the default for MPM on the N310 since June of 2017.
https://github.com/EttusResearch/uhd/commit/5f99240bd283da3da71588fcb1c1886=
937693928<https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com=
_EttusResearch_uhd_commit_5f99240bd283da3da71588fcb1c1886937693928&d=3DDwMF=
aQ&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DW_MQLyUWPXWHfsF4mr51=
mTMqpeO4RbBBLexficV9DG8&m=3DJbLHwD_efOdK-ZuvD-QH2Fw4AAiWtCXu0WvdSfn6_xE&s=
=3DlE6ZF4x-LhtjQkpWmr6HKpawJBtAP1yjwDDIfqzCFhA&e=3D>

On Mon, Oct 21, 2019 at 9:37 AM Jason Matusiak via USRP-users <usrp-users@l=
ists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
I am just starting to play with the N310 and I am having issues with some o=
f our flowgraphs that work fine with the X310 and the E320.  The issue seem=
s to be that there seems to be minimal support for python 2.7 for the N310.=
  Is there a toolchain or anything else I can do to get better support?  Th=
ings like threading.py are missing and only in python3.5 for it.

Thanks.
~Jason
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://=
urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailman_listi=
nfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwq=
Of-v5A_CdpgnVfiiMM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&m=3DJbLH=
wD_efOdK-ZuvD-QH2Fw4AAiWtCXu0WvdSfn6_xE&s=3Df3Ey7bGiI6_481vBRvMfnbI06m4xRL3=
McIn8x83oG20&e=3D>

--_000_BL0PR12MB2340E075A319EECD15E56CE1AF690BL0PR12MB2340namp_
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
Really?&nbsp; OK, thanks Robin.&nbsp; Maybe I'll see if I can find some too=
lchain from before the switch over (but I am sure too many other things wil=
l be too old for all of other packages.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I was surprised since that I could do this stuff with the E320 (which to me=
 has a very similar setup), but the N310 wouldn't work.&nbsp; I guess we wi=
ll have to forgot using it in embedded mode and only use it in network mode=
.&nbsp; Thanks Robin!</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Robin Coxe &lt;coxe@q=
uanttux.com&gt;<br>
<b>Sent:</b> Monday, October 21, 2019 12:54 PM<br>
<b>To:</b> Jason Matusiak &lt;jason@gardettoengineering.com&gt;<br>
<b>Cc:</b> Ettus Mail List &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] python 2.7 on N310</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Python 3 has been the default for MPM on the N310 since Ju=
ne of 2017.
<div><a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__gith=
ub.com_EttusResearch_uhd_commit_5f99240bd283da3da71588fcb1c1886937693928&am=
p;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_=
MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&amp;m=3DJbLHwD_efOdK-ZuvD-QH2Fw4A=
AiWtCXu0WvdSfn6_xE&amp;s=3DlE6ZF4x-LhtjQkpWmr6HKpawJBtAP1yjwDDIfqzCFhA&amp;=
e=3D">https://github.com/EttusResearch/uhd/commit/5f99240bd283da3da71588fcb=
1c1886937693928</a><br>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon, Oct 21, 2019 at 9:37 AM Jas=
on Matusiak via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I am just starting to play with the N310 and I am having issues with some o=
f our flowgraphs that work fine with the X310 and the E320.&nbsp; The issue=
 seems to be that there seems to be minimal support for python 2.7 for the =
N310.&nbsp; Is there a toolchain or anything
 else I can do to get better support?&nbsp; Things like threading.py are mi=
ssing and only in python3.5 for it.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
~Jason</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettu=
s.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=
=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51=
mTMqpeO4RbBBLexficV9DG8&amp;m=3DJbLHwD_efOdK-ZuvD-QH2Fw4AAiWtCXu0WvdSfn6_xE=
&amp;s=3Df3Ey7bGiI6_481vBRvMfnbI06m4xRL3McIn8x83oG20&amp;e=3D" rel=3D"noref=
errer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB2340E075A319EECD15E56CE1AF690BL0PR12MB2340namp_--


--===============4439813519410536813==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4439813519410536813==--

