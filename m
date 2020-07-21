Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 914A02288B0
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jul 2020 21:05:22 +0200 (CEST)
Received: from [::1] (port=43134 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxxZo-0000CG-BQ; Tue, 21 Jul 2020 15:05:20 -0400
Received: from mail-bn8nam11on2052.outbound.protection.outlook.com
 ([40.107.236.52]:52961 helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <jerrid.plymale@canyon-us.com>)
 id 1jxxZj-0008W1-Q9
 for usrp-users@lists.ettus.com; Tue, 21 Jul 2020 15:05:15 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bPw53G93ImURsF9lgSlriP1nBMHeBwRWzrYZpkbrWwpf/vg93Kl63Ml+DFJpe+tYAPPOr9N/jU8ip67oYrSXnKkRjXf3zLlh3ivt3wQ7tVzMZGseBzUQM3y4sx8kc8oV+fGhhXUR8fB3bVaXc2rkDc4BeFvv+QQb9TIwZreX7xZxrL1+EzYSex9+sCLJK6xkj3dCWiDlYuBICf4Ic+Gg1sYK3xee1nfaJlDccZ1h8Guv9yaEe+XVMzVZXGehwXz04RiMs9SReSnJOMYr7fC8NLeZ04q3Quqw+C+QrqJwm4Qll3FfZrIuaPZCy/vjA8xMjjylQZFCwKGx5vgdQ9gzyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6+RqWeIFX7RrKetR5INVMtGr4Yp1NE0r2L+Dg2SVMho=;
 b=kV4mH1fzkBKolh56UPH0dTKrO9IJd1yl/tqRdncki+GOHuFV5GuIJbvK2liApuYOIy1/SWuyBZhrTcGgo//bKcH7csrQaPuxrK+xDuR/HdbCALtY76f0RMBZ9oXp9KHCEL+6IM0J43/QD8NvuR5uf6fSYSEtx7Jik31cSzCKtxaHJkBxyf+767yQxuZ61yIIK9B8Q7LvID70HMhUR4F1nplKokXqliFTBs3tgHtI6PF4c86XIEmGxSH2ispsISlHQmD0ILODq+xWuabYMeu1pdmXS2hpRv2yxmVkBsGbQ/Ftgi+a652slXq/Pd7fbaR9c1YO/CnukXgw4xada1eCIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6+RqWeIFX7RrKetR5INVMtGr4Yp1NE0r2L+Dg2SVMho=;
 b=UMxjG9fzNv7jiWqJ8AuDYWrkSASuLiJmnXBaBrLccv8jXZtBdfjdCLkR0q3kkuh0SVsr8GRfjo8+nifcmmAjT7l3JqTJcWNT7CS8Yd82Ndmn4q5GveYdCZpCEFbesxC5SJTfdC+qlci20NUJCJpbfqVG+I+Kvo9P77n1XJ31yf4=
Received: from BY5PR19MB3398.namprd19.prod.outlook.com (2603:10b6:a03:185::26)
 by BYAPR19MB2678.namprd19.prod.outlook.com (2603:10b6:a03:b3::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.20; Tue, 21 Jul
 2020 19:04:32 +0000
Received: from BY5PR19MB3398.namprd19.prod.outlook.com
 ([fe80::e5ec:f22b:6b02:d161]) by BY5PR19MB3398.namprd19.prod.outlook.com
 ([fe80::e5ec:f22b:6b02:d161%7]) with mapi id 15.20.3195.026; Tue, 21 Jul 2020
 19:04:32 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Signal transmission on a USRP X310
Thread-Index: AdZfj4ix5Oh7QjE5T12FTwUvMq41sQ==
Date: Tue, 21 Jul 2020 19:04:32 +0000
Message-ID: <BY5PR19MB3398C192D241AD8EAAA08B90C6780@BY5PR19MB3398.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=canyon-us.com;
x-originating-ip: [98.153.200.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bfd7c3b7-5cba-4b67-4ff8-08d82da8e6ee
x-ms-traffictypediagnostic: BYAPR19MB2678:
x-microsoft-antispam-prvs: <BYAPR19MB2678F9E7E8E489459DEA090CC6780@BYAPR19MB2678.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bdpnT7hcFcHVoD/Egyk12XXNbVw5sR5XPw+c6MUuIxv+x6swXlOWJ1SvyhfjwdpjZBnnbqvOhw2HC3V+S5zSJLmSqyQ7zj+AjmHyHUqV/qtF5fI0JoPiH34EcctSRuCekUHcB1jjIFFpdC7fojsHZAtR9GChszn3nJYKDk++v/4QPjxfPo8x6zsJjGQPOXmnJKGyys4eov6K4Juhffzhx+843nb9j/rQtDmN0OFgU6Vz6SaAVw3E45dUiKK1HKLCnUiEvqi9grv2nawEXqV74Twsx83t9Z97ykGwKfzWaOCmYMIMSmfgEI3eBfdTnEvagyV2H1yLRYdvE7IOvguEOA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR19MB3398.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39840400004)(366004)(396003)(376002)(346002)(136003)(8676002)(316002)(86362001)(55016002)(7696005)(8936002)(9686003)(9326002)(33656002)(2906002)(64756008)(66476007)(66946007)(508600001)(26005)(52536014)(44832011)(186003)(76116006)(83380400001)(6506007)(5660300002)(71200400001)(66446008)(66556008)(6916009);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 4na6sPqxKXD9gO5A2rx2u3eU8nJKmsrTnzJ8sjPI0bwQm0MKZaybFRP2r+HCPU6lfJMdF4NgqjB7hL6OHY0ytQY0OLJAygVhK71CnI8iP/2VanBqv7v3AlMMZnw+OWK8dx6mv1G5oNPAcvZ7jIHD9Hzredob4nw2R69843Til0j7ZCubUoMVx5D7qc+ifyFaI9LMA58d8qRN/CCvfPi+tGzT1EEL7//vTwIRqQ6AetjSpAf+8jcn9ch3ERCsYacDVE8n/SqTcia6ZuWGOVvmxZSWak9TxgyWS9gvihRDWjZSibUhk2JoEKQHTfYLVKWd3/va0Vtv82s1P0COFVGTA50XuEXlO2KE2whLqZ3oMdBi0B7nOOEFTquIpEcMyBZVuiusdJjecBOCn18V0NMLue4N0QD/WaqM5uopIELJpdHtWzD3HGqGWVbMmpvLcsQC7+1uLXlNHgfHaFYFaAakXgIbKBRJS+AXcM8ermb5jKSES+2V1kzunLTHdU/I7mmL
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR19MB3398.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfd7c3b7-5cba-4b67-4ff8-08d82da8e6ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2020 19:04:32.3479 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gvu/l2S/p9rvt70H8zxjwT8IbwY8rjlpo/i1o6suwVMwDHgFK/aksKAvRLIPy+3C07gqEcT0aUYn86DdZTW+6ZQ9D+T3aYWVCbtW2WjGjyk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR19MB2678
Subject: [USRP-users] Signal transmission on a USRP X310
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
From: Jerrid Plymale via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
Content-Type: multipart/mixed; boundary="===============8340911808050883277=="
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

--===============8340911808050883277==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY5PR19MB3398C192D241AD8EAAA08B90C6780BY5PR19MB3398namp_"

--_000_BY5PR19MB3398C192D241AD8EAAA08B90C6780BY5PR19MB3398namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

So I have been running into some interesting issues lately with using a USR=
P X310 as a signal generator. I have a UBX 40 Duaghterboard installed in th=
e USRP, and I have been testing sending signals at varying frequencies. I h=
ave noticed that I can set the center frequency of the USRP sink block up t=
o about 1.3 GHz, and I can see the sine wave being transmitted and received=
 just fine (1 MHz frequency and 4 MHz sampling rate sine wave), but setting=
 the center frequency any higher causes a loss in data (the spectrogram of =
the signal looks pixelated and some of the pixels in the signal are much lo=
wer that others). I know that the X310 supports up to 6 GHz signals, and I =
know the PC I am running GNU Radio can handle generating the signal IQ data=
, so I am at a loss for ideas as to what could be causing the loss of signa=
l data at frequencies greater than 1.3 GHz. Any suggestions or ideas on wha=
t I am doing wrong and what I need to change would be greatly appreciated.

Best Regards,

Jerrid Plymale

--_000_BY5PR19MB3398C192D241AD8EAAA08B90C6780BY5PR19MB3398namp_
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
<p class=3D"MsoNormal">So I have been running into some interesting issues =
lately with using a USRP X310 as a signal generator. I have a UBX 40 Duaght=
erboard installed in the USRP, and I have been testing sending signals at v=
arying frequencies. I have noticed
 that I can set the center frequency of the USRP sink block up to about 1.3=
 GHz, and I can see the sine wave being transmitted and received just fine =
(1 MHz frequency and 4 MHz sampling rate sine wave), but setting the center=
 frequency any higher causes a loss
 in data (the spectrogram of the signal looks pixelated and some of the pix=
els in the signal are much lower that others). I know that the X310 support=
s up to 6 GHz signals, and I know the PC I am running GNU Radio can handle =
generating the signal IQ data, so
 I am at a loss for ideas as to what could be causing the loss of signal da=
ta at frequencies greater than 1.3 GHz. Any suggestions or ideas on what I =
am doing wrong and what I need to change would be greatly appreciated.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jerrid Plymale<o:p></o:p></p>
</div>
</body>
</html>

--_000_BY5PR19MB3398C192D241AD8EAAA08B90C6780BY5PR19MB3398namp_--


--===============8340911808050883277==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8340911808050883277==--

