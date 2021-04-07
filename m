Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0E63574E9
	for <lists+usrp-users@lfdr.de>; Wed,  7 Apr 2021 21:25:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B03E7383AEE
	for <lists+usrp-users@lfdr.de>; Wed,  7 Apr 2021 15:25:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=canyonconsulting.onmicrosoft.com header.i=@canyonconsulting.onmicrosoft.com header.b="GD6HshEU";
	dkim-atps=neutral
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2089.outbound.protection.outlook.com [40.107.92.89])
	by mm2.emwd.com (Postfix) with ESMTPS id 3B8753839AC
	for <USRP-users@lists.ettus.com>; Wed,  7 Apr 2021 15:24:58 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fEwOTJv5+qZcY/K6Pa16T8YT/LH1Nk0inCA9n3OhPfHvoJh8NIM8xcf/JKe7UuWlRaY24Y6SWoNLZpDAyHZCVDJKNDlxwyx6tQLKcoMEJNAbcp4A8Ftv2TKN/RK0l6BuhX8CfocC/ljYSHBl1ry9E7WZ+cQ/MuF20yNH5+y53YXAJb6pbIS1EAW3qTX++/zXr+MRLd5ssDO90YIm8ftXmfcOzT0dkfueZlw55pZNzMIAHJIFgpWRiI4ThbcUgNZIt2vUKNmdzD6DyYRAjWjUSifjud0tcNQAmu9CybBgeBvMmk6LM7LaEBKJCN80Y2RoatOAC36JOWz5AdFqryUs3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AezEFlaUXuJdsYH4rs8pnMopXg5HKkBsyD3f5xf2zVE=;
 b=Dbo7fGnzGhRXshuSuDV54AeMVHV6LujxjfwkCqUSEa29wqgqgj/xNLhOiDKU+fB0piyFonEHuMVGG1ieiYSJu45IEMOOFYbfBeky8DFWY0ImtBNMkiGo8ho9pT6Vu4PZ9bkxk47rM02zHpwyZcP7sIoOJmg46zMHeXUtXi56Z1vtlZ2CP06a1tn+VV3tucY1Hf5RIKGEgd0kk0oU2Tc1xYDZ0+r38EEzQhGaX3Pi142WA9dVT4k5N4mKCkD08ZsWU7t3wOW4BTM2rjTHaeWVEN7xmdqqfIlwOk2V/hEjVaB53htD/RnTcX9El4YYCVRDNV5LCGJLa+6HN1pdQJAOfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AezEFlaUXuJdsYH4rs8pnMopXg5HKkBsyD3f5xf2zVE=;
 b=GD6HshEU3dE73fJRqeCLm6F/ve1tLkHMIV+zxDgCAamiFw9B4prlgxPDWggEb2tfJeiZtTodvj4534cmaohDm9Mylxhmv4zPUq/4NjtBLBxr2NUwAVzxpQxzStScpJn0x/5h2wxStryrJF6nvAxD5sFOIeRMHfNyMFe3emI0J/s=
Received: from CO6PR19MB4801.namprd19.prod.outlook.com (2603:10b6:5:341::23)
 by MWHPR19MB1566.namprd19.prod.outlook.com (2603:10b6:300:d2::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.29; Wed, 7 Apr
 2021 19:24:55 +0000
Received: from CO6PR19MB4801.namprd19.prod.outlook.com
 ([fe80::d8d:6dc9:809d:9807]) by CO6PR19MB4801.namprd19.prod.outlook.com
 ([fe80::d8d:6dc9:809d:9807%7]) with mapi id 15.20.3999.033; Wed, 7 Apr 2021
 19:24:55 +0000
From: Jerrid Plymale <jerrid.plymale@canyon-us.com>
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: Bug existing in DUC RFNoC block when GRC generates python script
Thread-Index: Adcr400bCLyWQ7BpTxe5Ft9QbTn7FA==
Date: Wed, 7 Apr 2021 19:24:55 +0000
Message-ID: 
 <CO6PR19MB4801DA37884FB719D398AFFEC6759@CO6PR19MB4801.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=canyon-us.com;
x-originating-ip: [98.153.200.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6234dcba-9551-49a8-b46e-08d8f9fad387
x-ms-traffictypediagnostic: MWHPR19MB1566:
x-microsoft-antispam-prvs: 
 <MWHPR19MB1566804C0B1A1D77E4743925C6759@MWHPR19MB1566.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 wcrLcIk7soRNV7jIMS/BntETVUpTbxNoHX1hvd3d49/reEJM3Vrbq70zIvYOc9iKxO+MzAKDdhDgGmHyH0OUgsIT6zEJ848ewpvKHCgr3UAY5T1wub3Bt6VD0G5RnyUGoDpmi/CAL+Ex4hvdkS4djgeC9I6wbO+ldRyN1JmYaKyN438MdEayU3DTVabaGancvf0qY2A+u9voiMncCaDNrvbqQfVWMB9b5F0PNTnvp1m8a/Fn2zO7xJXMtPjriKaXGUiStE5Y77mPmig44BlSH5b9es2gXoeLIcpfx5EC41GPpnBs+z/KHPb8K05tbfuaXRK3I/s253vPzRwcmkgxrLZ8cIzWFKGeo1oGHKG1wUu/DA1utNXyuC2pPraqSV0/PNSlxQjcvPV7gVM/ALwqzmoM56aBS74r9IXTnfkpUjRWf5kPwhUpb9BHmAhW8SYqAc7uDYbz2sUxlXlxpsLzWMiv+3Jyrfm8h2MPdZORXhqp+zAy3NXUxP4PypRLn7m6/BUDk/uagcV8OS8wjeoEc0rLHnQmMR1crki+LGTItX7+eNBhftWMcrmZnzEG05F+A4B2VaUXxvoQwbqT54Atfc9Uf6VRcbEKKA8TC3MmGu+UrYo3WlG7BK06qAIO01Ktk+YmtnLB3CKCmD/G+l2fKYEDuZGwgqK6EgaA8/cMN3Y=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR19MB4801.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39830400003)(396003)(366004)(376002)(346002)(55016002)(4744005)(6916009)(7696005)(2906002)(5660300002)(9686003)(86362001)(83380400001)(71200400001)(26005)(186003)(8676002)(33656002)(478600001)(316002)(66446008)(64756008)(66556008)(66476007)(9326002)(8936002)(44832011)(52536014)(38100700001)(6506007)(66946007)(76116006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?us-ascii?Q?w1E+GscKBvr5hO1nFxF61IZyxxQZ5pX5u8AdkAFbqP+BQyJlp2YP73M84b4m?=
 =?us-ascii?Q?T5Agrj/oZufPMMLlGCcJrNLubckU3/q6vvyDEAV+gnCFSBaVfS5xlDmg0QDi?=
 =?us-ascii?Q?aa8HMCx5wMWX9KZ2UG4PwcCAucr5R1i1TAw0ntzp5x8xnKWkfBr5miUosuMo?=
 =?us-ascii?Q?f/vG1poz7pjGnib5RjjxzOzLojD/2+rd8qrAROqUmvNMR03E4qY3lpF/zkXv?=
 =?us-ascii?Q?2x6l1iVhmO9M93OIaVu8CyJ4tZNhilvLQtvUDFVJ8dta03PMYax2+B15agT9?=
 =?us-ascii?Q?EF3NJgpi108NqUt6nbqQCTNM9osnhYWxGEi2nUG1hQ+Cv5ETAmTiIF4cAi0G?=
 =?us-ascii?Q?ZtDkLglg0lPNZKqpC5AWj8XycGZuEgdaB/OvTc6RXG3eNcIqjfaMWHrVLW/l?=
 =?us-ascii?Q?tUogfqg3mz03CXdPiATAJz9bGxckfmgZihhyjl9Vc1MkOPwwzawS/uzPDuFa?=
 =?us-ascii?Q?Q3jFrJAEQmkxv7mmWFeLDZuAy+0nptT8J4YIB5Zmrku/nM5+3+2oMfE2L/JP?=
 =?us-ascii?Q?UBqEd2wYCTaWu183QaY5miC5+EuVzt75BL0VF4yShFf26UtAgUAMrvolh7br?=
 =?us-ascii?Q?ST5DhWxbWMqlt/7XYl2euUK0OdKwh22vYf4vBt4qtmXkmcWTdtHNs7ADPYp0?=
 =?us-ascii?Q?/q6m5eRVOxDZJNGwB2/GP6rJ1w4I21ijjVigm476a9r3rGv5iobZwPEpqhMr?=
 =?us-ascii?Q?ymGhoqmtyh+G4+22icG0ukNnmKH8TDNMhr7MVgImo73aiQ+N/cimbhOY2tAw?=
 =?us-ascii?Q?2gQbU1fn4kZpJFpa5eJNmmPYbXacsY2cYAIfqq5gykhWgkpqOc5s9lNflJQb?=
 =?us-ascii?Q?NHhPheLlQFY9+WQh1BxrZdulAMzPUumzKNnkSzFWfonS6XV0s/Lkd+AlD4Dk?=
 =?us-ascii?Q?tstuU8qmfqv23cGp1i8rH9pbghXYaN15iEUv8zFNjoTZAOctl1maSsfcdYLj?=
 =?us-ascii?Q?Pba3N0nATbFroZ5xExlsXfv9yf2WX8ThU6hXEOR6QzMIJR+vtbZ4Qon2oIwf?=
 =?us-ascii?Q?fLpCC6t+ai7gvjKJ9gUkeJTU7AnsmgynekF71sf2pLvMxeCvPzvVzY8y0m+T?=
 =?us-ascii?Q?noZiPQgU/puwlc9hUosHVLo4dkFa5nA/yusE+EceN4HD/CxGbQN+YKb/bizC?=
 =?us-ascii?Q?tr4kwjUjUFjjR85H8Vp8Qo7FtwTP9+QPlnlPKFtzyBe8V32eHbqDJ3UNRQr2?=
 =?us-ascii?Q?dHNP0rIyHbTVw9J2drPiHSilBY4ZOePQCyjOooM02RAYuZqrjzxxWq9eK0T8?=
 =?us-ascii?Q?limTOACYpzb3fbyal3VXZn5b96Wfz00EPFp+kO9DVWVHxAwms2jSE/urv3Wo?=
 =?us-ascii?Q?Jp0ZYXQyKYTGmq3FkZL7zeLR?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR19MB4801.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6234dcba-9551-49a8-b46e-08d8f9fad387
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2021 19:24:55.7886
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2KfqSmgStA2kd5O0DJIjGkE7v3alr6laY82GgxaQMOcijxnlQJYkKRtbOMajfgTCvwglG+bObIOyi4utw8Cg3ZUJlh6I1VyfPJoZA9l1wL0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR19MB1566
Message-ID-Hash: 2VOAGFATGHXHQXQDO72TBWXEYI6TENTN
X-Message-ID-Hash: 2VOAGFATGHXHQXQDO72TBWXEYI6TENTN
X-MailFrom: jerrid.plymale@canyon-us.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Bug existing in DUC RFNoC block when GRC generates python script
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EETVHJE5V2WCNWJX2IS37FPRRBP7PDBQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3946359244304385794=="

--===============3946359244304385794==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CO6PR19MB4801DA37884FB719D398AFFEC6759CO6PR19MB4801namp_"

--_000_CO6PR19MB4801DA37884FB719D398AFFEC6759CO6PR19MB4801namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

It seems I have come across an problem with the DUC RFNoC block from gr-ett=
us that was brought up back in November. When I try tunning my flowgraph, I=
 get the following error: in__init__ self.ettus_rfnoc_duc_0( TypeError: mak=
e() takes 4 positional arguments but 5 were given

What do I need to do to fix this?

Best Regards,

Jerrid

--_000_CO6PR19MB4801DA37884FB719D398AFFEC6759CO6PR19MB4801namp_
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
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It seems I have come across an problem with the DUC =
RFNoC block from gr-ettus that was brought up back in November. When I try =
tunning my flowgraph, I get the following error:
<i><span style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-ser=
if;color:black;background:white">in__init__ self.ettus_rfnoc_duc_0( TypeErr=
or: make() takes 4 positional arguments but 5 were given<o:p></o:p></span><=
/i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif;color:black;background:white"><o:p>&nbsp;</o:p></=
span></i></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;color:black;background:white">What do I need to do t=
o fix this?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;color:black;background:white"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;color:black;background:white">Best Regards,</span><o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jerrid<o:p></o:p></p>
</div>
</body>
</html>

--_000_CO6PR19MB4801DA37884FB719D398AFFEC6759CO6PR19MB4801namp_--

--===============3946359244304385794==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3946359244304385794==--
