Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1834F23DB6E
	for <lists+usrp-users@lfdr.de>; Thu,  6 Aug 2020 17:47:46 +0200 (CEST)
Received: from [::1] (port=52018 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3i7I-0006RW-E7; Thu, 06 Aug 2020 11:47:40 -0400
Received: from mail-eopbgr1380112.outbound.protection.outlook.com
 ([40.107.138.112]:2880 helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <sourin.mondal@vehere.com>)
 id 1k3i7E-0006KY-Tg
 for usrp-users@lists.ettus.com; Thu, 06 Aug 2020 11:47:37 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F0Q+5KUePadJZHtgo+wrMv9b6PuhGhWKfKptQZCzE9TFsrEVc8NCyG+FUUvBj00UMdPwBOC14PTCTWV3smwLBvp24p1KNViEZD5epqGhj8Ku3FTQlwjCqVrfR0/nLvEBUnZ0LG0Oza4SIlMpZd+cmHOfWuS5bnwTMSxzB3GtnTnoS/e3lg89UYarPTLnvFRdI7gb9yjI2DafmgAC5k36NOcf22A4oaW8pMY7H94IcgBj3aHT06GE/xI+cCE3DQu38bjRhLFMzqq1Y8KkX/xskT5GcRXkNxAsxsq4lo49hDX5fgheyzdrNks530gatECRLvpMTe0jp1JU5YzXar4MtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VAK1f63nP941ZTBumkezEdg1N7m4nm8nz74m84KS0Dc=;
 b=VIevrjCVKtbmBg8+ozvP7rwqgrtcs0Wf0yt7KKsoSGdfSn3TRJytOFgkwttMnJE0lxV5c/MTYfICKCfn6nGil7wJAmVVsp4hsqGF4dkVlLl1+rZIRTB0SkUcbR///lbrOadq8OIURSa4s8WoH6QKQlANltXE2+ANdT7oMqaQJpefRPVf1a8CwrufCV3HlKIXTqZxGpbe5Jo2xVfbDlQHzFZGVCbQI5LRqY82OJhTf2I6JYtq2Utv8tkQWBF9z+LV3XRDCcZFFO0XUgN4sEMYCIIGiMBM/8srpi/ukj106/XUkpLa2ClhZk5rA66PkQ5gCnYe33yCgMp/ZuPB4he3cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VAK1f63nP941ZTBumkezEdg1N7m4nm8nz74m84KS0Dc=;
 b=h3tGpAqn+MbcqgT9wQeHBrkt69jv4hfX2CifA8woETzw2Igz54xzScZaBjAIdZfp9zD7+KpNdB9QoBKiNs90OL8C6w3CwoJuoLkjRYBzoTTf6Xg+L5wblyjsKkf0kVE9xfoMU6cg6wIm+Y/6REozKrCmqalnvlecASI9kAHvvmw=
Received: from PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c00:16::22) by PN1PR01MB0846.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c00:8::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3261.19; Thu, 6 Aug
 2020 15:46:52 +0000
Received: from PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::cc3b:5542:4d86:3d55]) by PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::cc3b:5542:4d86:3d55%7]) with mapi id 15.20.3261.019; Thu, 6 Aug 2020
 15:46:52 +0000
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP not receiving data from two antennas using PCI card
Thread-Index: AQHWbAg9qgjwsPUEwke7OTDIRmASdg==
Date: Thu, 6 Aug 2020 15:46:52 +0000
Message-ID: <PN1PR0101MB18888E07850F604DE16381328B480@PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none; lists.ettus.com; dmarc=none action=none header.from=vehere.com; 
x-originating-ip: [103.242.190.95]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eb551a84-7e3c-4b75-0cd7-08d83a1ff08f
x-ms-traffictypediagnostic: PN1PR01MB0846:
x-microsoft-antispam-prvs: <PN1PR01MB0846A861D0C127A9A479782E8B480@PN1PR01MB0846.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FMuKKS0AIL3g4jUKIzlCRhygm8MGlOaZxVJwrjRdcQ9UQFbG8bTY7VjNlc6rLpNE29xPbRb2WcnnAEpGilxpMNKfSw+tRhw/N/ldsALLK5oohLhHrHiN14vq9cC1yzl/xu9G0SH5fXMtuWorCXtgP4oiMko+XaOSNSh5WU67gr/Aq1RteNtTj+WhRt8BasYRlFLw7I3qMoGgbqvh8SUj/u2w6NJm5B5wksN/LyPpLqlKYX6rkGsQRhyBV3QnuTAQRBFguJu+GEeJl1DvGIZdU5Wg+soRPpp8BLEuGdSi1tg+fdli2x/S7iKBRGzz67rT+DeWeiyoUEw3EoUUyMhztw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(376002)(366004)(39840400004)(396003)(136003)(33656002)(6916009)(7696005)(66946007)(52536014)(66556008)(64756008)(66446008)(66476007)(19627405001)(91956017)(8936002)(76116006)(5660300002)(26005)(186003)(6506007)(86362001)(316002)(71200400001)(55016002)(2906002)(8676002)(508600001)(9686003)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: aUeK/2O+QLYNk9V5xy4lWL13BSquXG31F+1OptsfFJZXhIvUy55AtYWVyv+zrFs1c2DVryFwN0Gwdpee26jjPeCJRcYiLyCioBAkDVqirCBOgbIHFZG7ygHimdDdWBKqSBeQ7PncTBZR5c6awByYN5SYVix0I7uJqomqvh2xwtyQcoqt1KLhkvopGbE3oNYojlezWtoQLu5mvZUwwyKsxiqyFrXKW4XCHijNHlhPC+ujRAf6jgfBgXd1y+DDsGGxHoCu1Nod9jp10G4yuOUYM4RdrOADR35KeLl7v5P0Y18dzZ+Jvk6nBF4h+YWiUksiq4SQNBUCyY+TCA83jpggNZNjeqchWbk2go3/27d+2VDoqHoLQAqaksyXjPZSQxIxaFwZq14iZocjiueD2cfl6xLkVd8oY/EolCgavLu6ff+NNPRJsQDGVnOhXLwNFfa3RGhHBzn4ZChpmX9xcpjbEMwZZLuBUelWITwBG4PspdQ3PyepBezeuKEXJEi1pUw6OpAZi6HlRwreHY3yh+G0oBKXtvsqW9kg9Pze+W3hm2OgcVeJ9aQDTdslleu7Y73WHfddxTsVbrHL78+D8JjAavhdxGYS5R9y/f66A/v58vNdy31DXTrOyM22Elh1qYS/+CeOqPHGlE6HfhdzsfD/Gw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: eb551a84-7e3c-4b75-0cd7-08d83a1ff08f
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2020 15:46:52.5879 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O3SLT5VyElQd+cKa+UlIGNfOyREOxsfpaNsCXV44Xn+mjsHciJnpm6M7z5juiR13JjufgIgSZz6m34NaME3w4vbfAw0tOC/22BPLO8Wrj9Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN1PR01MB0846
Subject: [USRP-users] USRP not receiving data from two antennas using PCI
 card
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
From: "Sourin Mondal \(Vehere\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Sourin Mondal \(Vehere\)" <sourin.mondal@vehere.com>
Content-Type: multipart/mixed; boundary="===============8495807632440572919=="
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

--===============8495807632440572919==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PN1PR0101MB18888E07850F604DE16381328B480PN1PR0101MB1888_"

--_000_PN1PR0101MB18888E07850F604DE16381328B480PN1PR0101MB1888_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using USRP 2955 and want to receive two channels at 100 MSPS each simu=
ltaneously. I have connected usrp with PCIe. I am running my code but only =
one channel is getting received. Other channel is sending zeros only. I am =
using Ubuntu 18.04. Previously one year back I faced the same problem using=
 USRP 2955 along with PCIe and running gnu radio. Only one channel popped u=
p in the frequency sink graph and second graph was static with no signal. H=
owever, 2954 was giving both channels. Where is the problem? How can I corr=
ect that to stream two channels simultaneously using usrp 2955 and PCIe? Pl=
ease help.

Regards,
Sourin

--_000_PN1PR0101MB18888E07850F604DE16381328B480PN1PR0101MB1888_
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
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<div dir=3D"ltr" style=3D"margin: 0px; font-size: 15px; font-family: &quot;=
Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, &quot;Segoe UI&qu=
ot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,=
 sans-serif; background-color: rgb(255, 255, 255)">
I am using USRP 2955 and want to receive two channels at 100 MSPS each simu=
ltaneously. I have connected usrp with PCIe. I am running my code but only =
one channel is getting received. Other channel is sending zeros only. I am =
using Ubuntu 18.04. Previously one
 year back I faced the same problem using USRP 2955 along with PCIe and run=
ning gnu radio. Only one channel popped up in the frequency sink graph and =
second graph was static with no signal. However, 2954 was giving both chann=
els. Where is the problem? How can
 I correct that to stream two channels simultaneously using usrp 2955 and P=
CIe? Please help.</div>
<div dir=3D"ltr" style=3D"margin: 0px; font-size: 15px; font-family: &quot;=
Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, &quot;Segoe UI&qu=
ot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,=
 sans-serif; background-color: rgb(255, 255, 255)">
<br>
</div>
<div dir=3D"ltr" style=3D"margin: 0px; font-size: 15px; font-family: &quot;=
Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, &quot;Segoe UI&qu=
ot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,=
 sans-serif; background-color: rgb(255, 255, 255)">
Regards,</div>
<div dir=3D"ltr" style=3D"margin: 0px; font-size: 15px; font-family: &quot;=
Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, &quot;Segoe UI&qu=
ot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,=
 sans-serif; background-color: rgb(255, 255, 255)">
Sourin</div>
</div>
</body>
</html>

--_000_PN1PR0101MB18888E07850F604DE16381328B480PN1PR0101MB1888_--


--===============8495807632440572919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8495807632440572919==--

