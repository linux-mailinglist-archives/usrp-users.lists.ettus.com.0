Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 448951C1B99
	for <lists+usrp-users@lfdr.de>; Fri,  1 May 2020 19:23:29 +0200 (CEST)
Received: from [::1] (port=51768 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jUZNo-0002OY-DI; Fri, 01 May 2020 13:23:28 -0400
Received: from mail-dm6nam11on2088.outbound.protection.outlook.com
 ([40.107.223.88]:25653 helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <jerrid.plymale@canyon-us.com>)
 id 1jUZNk-0002AL-NJ
 for usrp-users@lists.ettus.com; Fri, 01 May 2020 13:23:24 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eGoz8EnBC9EqvhMIUPzAMeOASHPc15t+JNtgwDZx6u9bESUEqbopTULM1M+yIkGU3gktIga+9+abGbp+StssZ2dOMlugQ4YvHoMh5NUIMQLILxJStSnR9smCPot1hueLMEQTozYF2yy7IUhABqnZByAMKojsGqxkkH46EQ32nVibYzUSEyvR0ivipgnt5SNDE3Dol52lIJE3pBPbiDRFXxsxt+XrRgRRYSQpgNz2rSqaej+iAo5yvA0Q9m3f2SQRS5wuHaxsohZ+MnS+PFM/UygeBATb9LsG1HF8YMUlb1rXQPIDJnOhqSdrvQOHxLf34YmTOo4TvjZyq8Z/GDwnEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=poYupDkUDmtOZt9AEc731Y29UW+VwX2DW2VRNJKAWVs=;
 b=FTz9zhjZnI5iZjwdJrYovpfyQAxlRAatDhMoXReRvyqeAT+BjwewlunzYT5seXLzCJcKey8Xibv/7PVEgCGdiXx3++V3oMik0gCcpAAdBbz2/+iEdQMnNgJYpKlinImfTDsaPG3GE+uvbddusJMuya1A3ENp2bBE+48MzzupIWtLFEs/DiptAMwvyz38p2R780e/zXikdUrgoc3tVZxi7IJJLhLEM0F6FyqVolwGNud8ClDm350XOL5kuIyiTBSiEPUNK2SmEA8RQLjlGAwqTL7CxPYTJoGztdEtBAPJU1bHMwx7ihcbXUQX9HEXxd9Gn7JFtjcJs6575/DWWvElSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=poYupDkUDmtOZt9AEc731Y29UW+VwX2DW2VRNJKAWVs=;
 b=ae60R6SnEEC+xc97hQBi3qkrRJudYZWyRWDI8XGWwIU5bsacjKXoYJdZ9bw8gE+b8UAgdH56//2hXoLVGfPI8ilvBZz+xtVYB3xhNCBgIPZjfO2NxNxf6Lglsuo7+VNDiXFQDEWFQXNVTzUP4iDcLRprj22KXzv7vNUzek0uRpI=
Received: from BY5PR19MB3398.namprd19.prod.outlook.com (2603:10b6:a03:185::26)
 by BY5PR19MB3906.namprd19.prod.outlook.com (2603:10b6:a03:224::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Fri, 1 May
 2020 17:22:42 +0000
Received: from BY5PR19MB3398.namprd19.prod.outlook.com
 ([fe80::2501:e0e3:f5f2:6faa]) by BY5PR19MB3398.namprd19.prod.outlook.com
 ([fe80::2501:e0e3:f5f2:6faa%4]) with mapi id 15.20.2958.027; Fri, 1 May 2020
 17:22:42 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Setting up an X310 as a signal generator
Thread-Index: AdYf28F15LoJ8T8LTQKOHd5VHhTjFQ==
Date: Fri, 1 May 2020 17:22:42 +0000
Message-ID: <BY5PR19MB339879DA30F3129CB923F7F4C6AB0@BY5PR19MB3398.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=canyon-us.com;
x-originating-ip: [104.174.142.102]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 35f24e34-5e0b-4597-687c-08d7edf441e5
x-ms-traffictypediagnostic: BY5PR19MB3906:
x-microsoft-antispam-prvs: <BY5PR19MB39063B4051A865AE7E75DAE6C6AB0@BY5PR19MB3906.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0390DB4BDA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR19MB3398.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(366004)(346002)(39830400003)(136003)(396003)(6506007)(66476007)(66556008)(66946007)(26005)(76116006)(33656002)(64756008)(8676002)(8936002)(9686003)(2906002)(55016002)(66446008)(508600001)(316002)(6916009)(186003)(86362001)(71200400001)(9326002)(7696005)(52536014)(44832011)(5660300002)(4744005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AY/nHceS/ptFml3z17RNGRG81NkT6H4XMtEA0kiCqZGtbFfdCrAPYgEkJu/aMm4LsNOR51/ZzpB5YHyIf6pHjOsTFQYd48rMnHv/PrEQeFA2wXSVvt84CSKhOacecGMqZN/R45gdBEEwuu5RIv0CW+jU0/Erm6I03/p/RfnuSXYE+HUwTVVJB785lCnNFAETHMGoFBx1aW47eNQPWTCQ8UXjk3OZ63/l/udOQAKRovqa6mIfPrA5wsvdoTgL6SinQWzKrz7WefLHMEEPSPFGw0xxXxz/outLDaURlGcWbwY2kBmJGUuE2dAmeW612FUqSSmchMjTJUZB9ErXuGIKO73tVj9v85dFA7TTaw00Koj1BJHqwK29rox348PVnjpm+B4Bpcz+3QbQY9m4bRIdmMI7MXADpRTMPLESQQfcLbNHJx37WiGC/YuAjUp/dXPm
x-ms-exchange-antispam-messagedata: OD0ztpjFruI2tpjZyclBVP1XoYH9EbJHxCgDrs5/liy8KGTwBMqz44Z/HeTBu83JzLjJh0n/G59JO+BzxPtXUgVJPr2kX//d1bxmm7IewUc8/enEcF+qRuSXzosBMG4ysi0NNGxB/BtITzjW0DEo1ChmH5ax2eG1GMXfK8XhWyIMnWGWUN00KNkbnqoU+TBzeVn9xKrPOKbaKoFaIu4X85beZPrzs6+ohlU4Fq3y+D9/9i/TXRgZtew5gS/lvfDFIcMV54ArB4mznh5hAixUrd83AMD/Gk85SRzEzu3g/cA16pgFlcORhoJx3JqnOlAOl8wuR5Ip22we2H352H2VGJj9ztdg5rnE8GQwDI27x02fQn8LnyzdCWA0UUY3mLGjoe/zGEwWsYfImFs2mU2E3/93OyVBipWoqZSNXaOXJGL5l0goXu84bVUd1RqaTaaqmBuX0kr4EawSFybvb4e9tHBVYULS4q8SUklH0X7pdjPWyIvxhP1K3PJTD3pkNXt/mwdLGLaGhMoTRCaPuQq1RoxKSoMfVOwKQeXASUi2+/ms+r8fUG3jExYxunDSmEti+XMGgPJwILDszM3O1ozryIwj80GSYmLz9Mrh3RAyHSz4WDdMiXnOb0RM6kQxbUCWzRQyhtDf7CamMEy6v/b97O5LRnU57c4v/034v+7poNCJRmizlMQ/XFmPGE17z0hXdhMkpMwKiArgdVyqXFj0QNZUZ78RoK3i38YBymGY3hAVuU8pq11x9tbkfxe6GSn3Mjcu6LL+Cs0vchmLHw42uZQZT/Nmk3IkaO6flT3e/gjhlW3fDXC7ff5gxok9NGlj
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35f24e34-5e0b-4597-687c-08d7edf441e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 17:22:42.8431 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j+vlf+s1eUnWywbMVbSBt7DJm+HLMK+3rfFB3B0rbBP6CXkRSZavO1sFJE9Tc0XWcBDzCEWjqCw0twLtD5a+ZUDJiMHkx4ry2i3pPuBEX5w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR19MB3906
Subject: [USRP-users] Setting up an X310 as a signal generator
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
From: Jerrid Plymale via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
Content-Type: multipart/mixed; boundary="===============2337123316917413828=="
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

--===============2337123316917413828==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY5PR19MB339879DA30F3129CB923F7F4C6AB0BY5PR19MB3398namp_"

--_000_BY5PR19MB339879DA30F3129CB923F7F4C6AB0BY5PR19MB3398namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

So I have been trying to set up a USRP X310 as a signal generator for about=
 a week now, and I'm having some issues. Currently I am using gnuradio-comp=
anion to develop the functionality. I have three sets of signal sources tha=
t are of float type, creating the I and Q values that get passed to a float=
 to complex block. The output of the three float to complex blocks go to an=
 add block, which then outputs to a USRP sink. Currently, the first problem=
 is with underruns, I'm not getting a lot of them however I am getting brea=
ks in the signal when I pass it to a second USRP X310. What would be the be=
st approach to make sure my signal is coming in strong to the second USRP? =
I am also having issues with increasing the power of the signal when it is =
received, is this mainly controlled by the gain value on the USRP source in=
 gnuradio? What can I do to get my incoming signal to have more power?

Best Regards,

Jerrid



--_000_BY5PR19MB339879DA30F3129CB923F7F4C6AB0BY5PR19MB3398namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So I have been trying to set up a USRP X310 as a sig=
nal generator for about a week now, and I&#8217;m having some issues. Curre=
ntly I am using gnuradio-companion to develop the functionality. I have thr=
ee sets of signal sources that are of float
 type, creating the I and Q values that get passed to a float to complex bl=
ock. The output of the three float to complex blocks go to an add block, wh=
ich then outputs to a USRP sink. Currently, the first problem is with under=
runs, I&#8217;m not getting a lot of them
 however I am getting breaks in the signal when I pass it to a second USRP =
X310. What would be the best approach to make sure my signal is coming in s=
trong to the second USRP? I am also having issues with increasing the power=
 of the signal when it is received,
 is this mainly controlled by the gain value on the USRP source in gnuradio=
? What can I do to get my incoming signal to have more power?<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jerrid <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BY5PR19MB339879DA30F3129CB923F7F4C6AB0BY5PR19MB3398namp_--


--===============2337123316917413828==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2337123316917413828==--

