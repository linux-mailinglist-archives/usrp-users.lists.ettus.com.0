Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 756DB5ACB4
	for <lists+usrp-users@lfdr.de>; Sat, 29 Jun 2019 19:31:53 +0200 (CEST)
Received: from [::1] (port=36030 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hhHCW-0003Kg-L5; Sat, 29 Jun 2019 13:31:48 -0400
Received: from mail-oln040092071094.outbound.protection.outlook.com
 ([40.92.71.94]:44865 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <andrewjohn83@outlook.com>)
 id 1hhHCS-0003Do-9V
 for usrp-users@lists.ettus.com; Sat, 29 Jun 2019 13:31:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7vei43k1jPLc3kDa8HMxUxBQ1IqK2knaSZjE5rsidIU=;
 b=YSZafXQD02J6Sll9f6mcoIe6aS7SbHnTBUMCkfwmFjVKjsl+mzYFSDZxPMvYZPc4R7x2tPIHcQEww/raU+dunOHHhZzJnFn/Owhaeh1jYafUbhtCb2vsJuX70NBcskWmifFaz9jmLG3SmMDQMeNc0orww7oI1GU09Sey+02uZLU2yiBLVPpwAYGMq2ScayuavTDpxcFJKxDsJtCoHGdI4Y48XaIEsnbiPcTO3aBaVnDGiHuYTqqtu4V8Up9zCIXjilL6y/liuTh7PG6nmgoOd467sQ4E6R0JZ8Uu20Hjos2WUE//iNdCfPo0dA10MRme8jSD9jd/HPDF9kTYbMilAA==
Received: from VE1EUR03FT033.eop-EUR03.prod.protection.outlook.com
 (10.152.18.52) by VE1EUR03HT226.eop-EUR03.prod.protection.outlook.com
 (10.152.18.231) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2032.15; Sat, 29 Jun
 2019 17:31:02 +0000
Received: from AM6PR04MB5222.eurprd04.prod.outlook.com (10.152.18.55) by
 VE1EUR03FT033.mail.protection.outlook.com (10.152.18.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2032.15 via Frontend Transport; Sat, 29 Jun 2019 17:31:02 +0000
Received: from AM6PR04MB5222.eurprd04.prod.outlook.com
 ([fe80::9556:bac5:be47:fa74]) by AM6PR04MB5222.eurprd04.prod.outlook.com
 ([fe80::9556:bac5:be47:fa74%6]) with mapi id 15.20.2032.019; Sat, 29 Jun 2019
 17:31:02 +0000
To: Robin Coxe <coxe@quanttux.com>
Thread-Topic: [USRP-users] UHD Version
Thread-Index: AQHVLgIVYXBUDKgcbkKwh/P15PWO26axrZiAgAE2cjE=
Date: Sat, 29 Jun 2019 17:31:02 +0000
Message-ID: <AM6PR04MB5222B61C9DA03293F4CD062FDFFF0@AM6PR04MB5222.eurprd04.prod.outlook.com>
References: <AM6PR04MB5222C69E5980F3B69F765129DFFC0@AM6PR04MB5222.eurprd04.prod.outlook.com>,
 <CAKJyDk+TqOWy93b8a46-tynUHMuxi=FOmKxfDDY7akhvMJkiLw@mail.gmail.com>
In-Reply-To: <CAKJyDk+TqOWy93b8a46-tynUHMuxi=FOmKxfDDY7akhvMJkiLw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:529F4D608D35B599F00A6F150C58F1794BDE6E9B0862480B278491BD84676D7C;
 UpperCasedChecksum:B4DB8A2A9F85C88938F4D6AC137EF3D9DB98DAA6A32139ADD880872F5BCFFDE3;
 SizeAsReceived:6937; Count:43
x-tmn: [VrQaEzvXX5Gy+cotQ8QawZQCa9+gOYO56BQUUenCe2juPf+aOhZF1Hi5R7aXZCRF]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:VE1EUR03HT226; 
x-ms-traffictypediagnostic: VE1EUR03HT226:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-message-info: dRCZ6XUJcEPi/gDe0QHD0svC82OlDmwtNkEcZFEVYiSos6B/aEsiavyWMFqlXS6fUeENCHvWQrogc9ZDmW1x00uY1DdxpbpS01sOOD+07fWkn4NcMyNpvFnbGa/4YM+uHtVG01IAFKL1wmARgUqawhiZYM83XKKmY9nelK0U+LCa9B+S36GuFnY0cK7shuuw
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 5498862d-efe5-404c-fdc7-08d6fcb78f01
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2019 17:31:02.7591 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT226
Subject: Re: [USRP-users] UHD Version
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
From: Andrew Thommesen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrew Thommesen <andrewjohn83@outlook.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1613155845979232123=="
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

--===============1613155845979232123==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_AM6PR04MB5222B61C9DA03293F4CD062FDFFF0AM6PR04MB5222eurp_"

--_000_AM6PR04MB5222B61C9DA03293F4CD062FDFFF0AM6PR04MB5222eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I tried changing the git branch (gitbranch: release_003_009_004) in this fi=
le, but it still installed master. Was this the correct parameter to change=
? If so, any idea why it didn't work?

Thanks,

Andy

Sent from Outlook<http://aka.ms/weboutlook>
________________________________
From: Robin Coxe <coxe@quanttux.com>
Sent: 28 June 2019 22:57
To: Andrew Thommesen
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] UHD Version

After cloning the gnuradio repo, you can edit this file: https://github.com=
/gnuradio/gr-recipes/blob/master/uhd.lwr

On Fri, Jun 28, 2019 at 3:39 PM Andrew Thommesen via USRP-users <usrp-users=
@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hi,

When installing rfnoc using pybombs is it possible to specify the version o=
f UHD that you want to install? If so, how?

Thanks,

Andy


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_AM6PR04MB5222B61C9DA03293F4CD062FDFFF0AM6PR04MB5222eurp_
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
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I tried changing the git branch (gitbranch: release_003_009_004) in this fi=
le, but it still installed master. Was this the correct parameter to change=
? If so, any idea why it didn't work?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Andy</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
Sent from <a href=3D"http://aka.ms/weboutlook">Outlook</a></div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Robin Coxe &lt;coxe@q=
uanttux.com&gt;<br>
<b>Sent:</b> 28 June 2019 22:57<br>
<b>To:</b> Andrew Thommesen<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] UHD Version</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">After cloning the gnuradio repo, you can edit this file:&n=
bsp;<a href=3D"https://github.com/gnuradio/gr-recipes/blob/master/uhd.lwr">=
https://github.com/gnuradio/gr-recipes/blob/master/uhd.lwr</a></div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Fri, Jun 28, 2019 at 3:39 PM And=
rew Thommesen via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
When installing rfnoc using pybombs is it possible to specify the version o=
f UHD that you want to install? If so, how?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Andy</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_gmail-m_-8013295402690349942Signature">
<div id=3D"x_gmail-m_-8013295402690349942divtagdefaultwrapper" style=3D"fon=
t-size:12pt; color:rgb(0,0,0); background-color:rgb(255,255,255); font-fami=
ly:Calibri,Arial,Helvetica,sans-serif">
<br>
</div>
</div>
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
</div>
</body>
</html>

--_000_AM6PR04MB5222B61C9DA03293F4CD062FDFFF0AM6PR04MB5222eurp_--


--===============1613155845979232123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1613155845979232123==--

