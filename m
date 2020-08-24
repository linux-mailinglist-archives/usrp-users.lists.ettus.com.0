Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF6B250630
	for <lists+usrp-users@lfdr.de>; Mon, 24 Aug 2020 19:29:26 +0200 (CEST)
Received: from [::1] (port=55064 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kAGHZ-0003jB-JJ; Mon, 24 Aug 2020 13:29:21 -0400
Received: from email3-east.aero.org ([130.221.184.167]:26765)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <prvs=498978330=jonathan.nguyen@aero.org>)
 id 1kAGHW-0003cA-6U
 for usrp-users@lists.ettus.com; Mon, 24 Aug 2020 13:29:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
 t=1598290157; x=1629826157;
 h=from:to:subject:date:message-id:mime-version;
 bh=D3UG4teI+VygaHTKGci68IGpEU/vClu1uIwxmO06xww=;
 b=tlSP+6hvSedQHXC3W+Oz9loro7YBxv3W0svv9VNElZf9TkMq5oigGIZ5
 lzf0qioLxQ7ZnPLZV5pCGxteCJ1lBtHIWOyCDPKvP9ZvvQb8Fd20KF5yv
 A0JjMK00oe5XVCdXCiBu4SU9AZYHyEjWP9ufBHKYk4HITcBPWicSlrfxm 4=;
x-SBRS: 3.5
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="3701949"
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208,217";a="3701949"
IronPort-PHdr: =?us-ascii?q?9a23=3A905miR0xhmzve5d1smDT+zVfbzU7u7jyIg8e44?=
 =?us-ascii?q?YmjLQLaKm44pD+JxWFuKdpjUTVRsPW9+5ZkKzdtKWzEWAD4JPUtncEfdQMUh?=
 =?us-ascii?q?IekswZkkQmB9LNEkz0KvPmLklYVMRPXVNo5Te3ZE5SHsutY1zJvmb04CIOBw?=
 =?us-ascii?q?65Pg1wdaz5H4fIhJGx0Oa/s5TYfwRPgm+7ZrV/ZBW7pAncrI8Ym4xnf6880B?=
 =?us-ascii?q?yPpWFHKOk=3D?=
X-IPAS-Result: =?us-ascii?q?A2EOAgCC90Nfh2tAL2hfgQmCbS9Rd4EzCoEiAoZPA4U4j?=
 =?us-ascii?q?VuOW4dBA1ULAQEBAQEBAQEBBgItAgQBAQINhD0CgkYlOBMCAw0BAQEFAQEBA?=
 =?us-ascii?q?QEGAwECAhABAQEIDQkIKYVjAQuDVIEDAQEBAQEBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBBQKBDFYbEwEBOBEBDHQmAQQbGoMEAYF+TQMuAaYTA?=
 =?us-ascii?q?oE5iGABAXOBNIMBAQEFhQ8YV4E3CYE4gnGCVBI5iG4/gVSCH4Urg0iCLY93i?=
 =?us-ascii?q?XacVgeCZgSHYJJhoDKSQ5sfhCgCBAIEBQIOAQEFgWuBe00wgyxQFwINjjmDV?=
 =?us-ascii?q?4pWQzE3AgYKAQEDCXyPDAGBEAEB?=
Received: from mail-bl2gcc02lp2107.outbound.protection.outlook.com (HELO
 GCC02-BL0-obe.outbound.protection.outlook.com) ([104.47.64.107])
 by email3-east.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 10:28:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jh/GNRsOAZapXEdOxK3ZM98zXX6se0Gf0qj8YQmZ9yz3Vig3GDMViBuVYAks+96wKm99+3gDJaRS+B6gJiTUpqytJaYeA2/GXFyW4de1j1R4Ct4xM4X/QiOr4BJBYkcgL80gSPCHsc8nuAkshkTqlf9Ikp0KGZefe0tlyX6tF4CCkvWIFEOBe74J3pKXgZvwB7LtVx9qRiWcYpj9EkSXE5lrgycNlJJuJ5tF2JgPFGzMZCCSzd+Izzlv3dcDy7ltfj7/iyGZMApPGWlWv7/vgxztU3nAW5WTvKQDNzWDVoxfjnX1KpxYwjlral4oNGZbYH01RhlxGKLfyeFVB7dxug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=653wjvk+ui6yVwkdm45+TzSEYjujrMgjJu9TZzmnliA=;
 b=SDIqQZ3ic8y/C/jZV5+Oq3W2+qP42meJ8idFRlQ3/kUxSzqjXqfVHzjDPUSxtJ4VApvTy84vOV72pxs8kSqdaQ2qgzwprP3RHJLn7gh3VrEmAq/S8Ia73TcCNk1frr+uYPItx5NGHigOLmRM8ahKfrxGO2f9fh4FdE4nH2npBsunz632lKENWDGl1Q4ojqiknrf1+zyHrBZngWhg4UBxJw+ZpeSV2eMJW7laYGlps+bocpSlIUlNwMz/qabGQ+IdwQbLUhbW6LLEhMyMc4CRZHA4TrGEsWiv9es0P1c7d5lE80b7+4bZytMufvZWP0ebVYk5K3e1c9gwBreWY/1Ufg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=653wjvk+ui6yVwkdm45+TzSEYjujrMgjJu9TZzmnliA=;
 b=ltJODHgil908zrdX3Ttj7geTgUsFPpa+6/4v5e9dbUjhTWBHwlNPwwtWIEo+IYSXwlLEuy2+j8TCRajtk5cbtdsU1KuKLNAfhnWdyeQ09ch6bptOW1hz+IuruqO31fzAZAne9bmkGP1dDGmDCjtukIVLM1rk0xpatJc/ANwEGsI=
Received: from BYAPR09MB3494.namprd09.prod.outlook.com (2603:10b6:a03:10f::31)
 by BY5PR09MB4294.namprd09.prod.outlook.com (2603:10b6:a03:1d9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.26; Mon, 24 Aug
 2020 17:28:35 +0000
Received: from BYAPR09MB3494.namprd09.prod.outlook.com
 ([fe80::118c:c6b8:2c76:c304]) by BYAPR09MB3494.namprd09.prod.outlook.com
 ([fe80::118c:c6b8:2c76:c304%3]) with mapi id 15.20.3261.026; Mon, 24 Aug 2020
 17:28:35 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Finding multiple USRPs on the Python API
Thread-Index: AdZ6O1rxhjyfUYHhTC65yHPfTUiscw==
Date: Mon, 24 Aug 2020 17:28:35 +0000
Message-ID: <BYAPR09MB3494FDB408B6F5F3F7CC91438E560@BYAPR09MB3494.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL1RoZUFlcm9zcGFjZUNvcnAiLCJpZCI6ImQxNGIyZjNhLWMwODAtNGE0ZC1hZWU1LWRkNjg4MjBjNDYyZCIsInByb3BzIjpbeyJuIjoiU2Vuc2l0aXZpdHkiLCJ2YWxzIjpbeyJ2YWx1ZSI6Ik5vbmUifV19LHsibiI6IlJlbGVhc2UiLCJ2YWxzIjpbXX0seyJuIjoiT3B0aW9uYWwiLCJ2YWxzIjpbXX1dfSwiU3ViamVjdExhYmVscyI6W10sIlRNQ1ZlcnNpb24iOiIxNy41LjEyLjEzIiwiVHJ1c3RlZExhYmVsSGFzaCI6IjFvTnFcL3FoV3lJbjFMMlhjVzk4XC9OdUU4MXZMOTg0UzFmQWtSRkdhbmJoRmQyZGFGamFmOE9veVFnR3lFVk1DcyJ9
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=aero.org;
x-originating-ip: [130.221.224.7]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1b4c4e93-6614-4ef1-2d47-08d84853218d
x-ms-traffictypediagnostic: BY5PR09MB4294:
x-microsoft-antispam-prvs: <BY5PR09MB4294D35C8EF81C0B92B944818E560@BY5PR09MB4294.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KeD+WsqKXRioivDBtQG5upfDpYep9Jg/jU6zceq2T+U75kGkGCntwG9oNBnmvqUcsnzNuRgTCu2pY8DZomsjPgMgsVIwzFHtKd2lawYaYfkA1GtNF1NvIkQyG2lT6IFhHzFaNtDt1/GrUFpjHCC8O1A2VQ0+0NXgAS9lJdsPoPRzpx19mmcCT/1h/RhiiCECyzbqYv09pKOClcuGBO+Mi/6DGG+bvXK1QYvrCx61iFyedr5mdNPbIQLsUosrB/VHE9mgWszXyP/qWUjRYa3LGTlXAm5qTYG2NNmnJX+dPv574FXJP+GQOmJ6D/iN8fdtNPk7HdFCX6q1Do1s2nziJQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR09MB3494.namprd09.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(39850400004)(396003)(366004)(346002)(52536014)(66556008)(86362001)(76116006)(66946007)(64756008)(66446008)(316002)(66476007)(4744005)(5660300002)(6506007)(9326002)(478600001)(26005)(186003)(8936002)(33656002)(6916009)(7696005)(8676002)(71200400001)(9686003)(2906002)(55016002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: LIRcMjv11hYIXu7lC97peKh782o5youQgZJQ8PfKkJ0jc+pGiMnHsKAJx2KMMtoUPyiwhw3V00d8+reofRhv513Om1AV3SdI6Ug57RaApQ3hCQuKB55JLXPq+TkV6FPRhAtD/2V8QNdm+NIsNVFV4yb2FgC+XEwWifyJciTJxPf6OE8zP4KoYpXIJbzglz4OvHh1BIqrASwZ2eaRneJ+ce0AQsVmoUkcsf3cGOR1Wf5dTcokK3jfe6nRdynCRgcuwlXXGsKFOXcB0lViQi7UzKVucCmuVa92NlAeF/hNzCgGLNNIe4zG1iwTS+2xM99P/YV8k4J5LjSahdraTTUEjuvJsAlFSF5y9nuZP+oUC6nybShroDMVoSrRuq1s7LTOnLQOyhwhRQUTKABlcrRtGxH+6tRJDJH/2z/ddsRE24iS94OPGxQxdtyNp4poBXSYtUvaYZYQ3U9kJoT8fUZ1trLHkOpkVYoIA8SNF/whVFyS4VXjK6JyvXLgLIdZvCm6Kt73WMsPegvlRMakZV4/uBdZ344I4j5py7lK50+qiCvNEjA+SyDM02iAhHTMc+v2Bp+3tQ7kNwZg9sBFPgfMKfpAQOzwdwxz3nE2NjOnW+bwhrEYl6JiXKS7Jw3pLkZAP95vZTHcFkoXL7i53PrXcw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR09MB3494.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b4c4e93-6614-4ef1-2d47-08d84853218d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2020 17:28:35.3222 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qAh5T/b6Ms8aERtPoQWwdeHBwZPMXutCM/M248y4lRjENbdflSXfrPNKa8I574aD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR09MB4294
Subject: [USRP-users] Finding multiple USRPs on the Python API
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
From: Jonathan V Nguyen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathan V Nguyen <jonathan.nguyen@aero.org>
Content-Type: multipart/mixed; boundary="===============2155242315914799047=="
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

--===============2155242315914799047==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR09MB3494FDB408B6F5F3F7CC91438E560BYAPR09MB3494namp_"

--_000_BYAPR09MB3494FDB408B6F5F3F7CC91438E560BYAPR09MB3494namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I was wondering if there was a way to get the addresses of all the USRPS cu=
rrently connected to a host on the Python API. I saw that the C++ API had t=
he uhd::device::find() function, but this seems to be missing in the Python=
 API. The main goal is to be able to create a multiUSRP object with all con=
nected USRPs without knowing their addresses / serial numbers beforehand.

Thanks,
Jonathan


--_000_BYAPR09MB3494FDB408B6F5F3F7CC91438E560BYAPR09MB3494namp_
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I was wondering if there was a way to get the addres=
ses of all the USRPS currently connected to a host on the Python API. I saw=
 that the C++ API had the uhd::device::find() function, but this seems to b=
e missing in the Python API. The main
 goal is to be able to create a multiUSRP object with all connected USRPs w=
ithout knowing their addresses / serial numbers beforehand.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Jonathan<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BYAPR09MB3494FDB408B6F5F3F7CC91438E560BYAPR09MB3494namp_--


--===============2155242315914799047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2155242315914799047==--

