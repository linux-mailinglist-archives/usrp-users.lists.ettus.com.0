Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C87013335C0
	for <lists+usrp-users@lfdr.de>; Wed, 10 Mar 2021 07:17:21 +0100 (CET)
Received: from [::1] (port=38412 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lJs9l-0003jS-8F; Wed, 10 Mar 2021 01:17:17 -0500
Received: from mail-eopbgr1390092.outbound.protection.outlook.com
 ([40.107.139.92]:16768 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <sourin.mondal@vehere.com>)
 id 1lJs9h-0003dE-64
 for usrp-users@lists.ettus.com; Wed, 10 Mar 2021 01:17:13 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=khZnL3Qls6KDjT0s+HPrr+xFR/DY/SXqMJYlvlVWGWpRjTZhUvJsslMYX4utPpOGLWNZRbDk7OnOt26Y2LmdR49G++4JYUGObTFE3ER5itBGZbWXq/1YJdU1krgHbwfU4oglkGCDiDOWHeKZi9iorELrXB2oTia5DduRmka+W5vBV4Sy5xvBC+gt+DYqUmF45r6wlf1Q2qtGdljmlsEOd7XqJhWV17ug++8L/eb1XPGIcq0d7LXqqv6pYakTp9XV0wWgimKtxAojiH0yZsrYI/PBg+dAM5IDn4h6UJt92LoadJaCPX9YrPZTT4TnjJvICJoEiW6vO5IbJPdFBztO1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5rr5XWGZmoYIUblAWfzaVNhxJc6JtTUlAOKWW+qU9aI=;
 b=bXyESpaUT/BoMcUeNfiJ4QkdTK5jINtYu7xl6TNFIPJI9qE4A7rhfbyM6JJaey95bl2X60oD0Nla6UM1mOlX84NGCqPjxmN+I1iCVWB1dLASKpNHobKuZSXLwqMNVBEUjNH24otXyW9ApDQXVKHSjV2ylrm/eboLoCXOinNPCWUeOb3OTnuzd6oFIcGEZZYEMyFqVZBhOSx0Jdn2jcn4u/TgDtjDgixxsIulrJTHpRdmOX1kSFHYgDRXeToMRRqH+38K5EeDqgLLkFmMkWOI0ORsyrk1utF1PCtHbXKQSrGBGSbKraZ2kOtV5lkjxf4Yw44xS7D3wP53ttaoGCq/7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5rr5XWGZmoYIUblAWfzaVNhxJc6JtTUlAOKWW+qU9aI=;
 b=mQfpt+Tz+2JZzfT0Tpmm5d/2d3OJIxQ5K6u0Q7QXm05O4nK3i+hw2qbxQ0wTfw8HBmrJls0CS/0nwc9HSzXeF1+hTLMmhYgLfpfjwZKAVVeJ0hnfBLOL1C5VIO9EfMcqJ1NHa7eY4IQceBVe6PG5yuPLdF3WE7/cPk5dbFfeXgU=
Received: from BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:3b::16)
 by BMXPR01MB3350.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:5b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.28; Wed, 10 Mar
 2021 06:16:29 +0000
Received: from BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c5ab:e2d5:3f7e:f6c7]) by BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c5ab:e2d5:3f7e:f6c7%7]) with mapi id 15.20.3912.028; Wed, 10 Mar 2021
 06:16:29 +0000
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Problem in installation of NI Linux device driver in ubuntu
 20.04.
Thread-Index: AQHXFLlWAb6uIT6ECkyGN5pcuT+s2Q==
Date: Wed, 10 Mar 2021 06:16:29 +0000
Message-ID: <BMXPR01MB2760A66BED30609D2A9C827A8B929@BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none; lists.ettus.com; dmarc=none action=none header.from=vehere.com; 
x-originating-ip: [219.65.75.30]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 759a8b51-5e6c-4695-42ac-08d8e38c0b55
x-ms-traffictypediagnostic: BMXPR01MB3350:
x-microsoft-antispam-prvs: <BMXPR01MB33506B2A45A7122AFA0B2E1B8B919@BMXPR01MB3350.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u0e1myuCBU/KCOmeYNS0cBAQrj85mkeD7g9NVxrYJ+TkHEemRXT9kux9ERqJ2u/95dMbMy4VIBOnJWW9xXsyqZJZ7Y/HLX5V75g6slKu8thdwDv0ZFe1wE8J+rumJCmA2adu/cHVjucJE9LKtecg/wAW6Z9s2gW8JtTSDCbf+ltBwNyMvudLX2lTqNBDRCkV+pGuDVXxLArcHGvt1iu0mkQ8qRluA+C44f/IvkwmL3R8ev7llwnf4QLeAa0b8zatbyvFdlAwFlqXCgC1qXycbkTFPb6xgHD6NFazBE4YGuFJOrgyd4Vp3stZXL5iyaVkUuvljK+r09oloBQp8v0MUPfbVqm4YZGG65ABUGDkiZjFyCrJuCdaSz9h1hiduFsk9sOfXq+yCN+5nE4TNeOsJQlwHFe9ISBXkFS0eZRObjg3n6bg8fWvgv0f2wAbzD7Wp2bVWEkKkbV6RQw3a9YY2ie9AICRcmie+d/UkHH7S2TPaHdMWwGF6F4y5ccpdmFT54HfFMQ+VqlPUvXV0Z7QEai2ILYpRDaSY9zLOpvHbloSRKxabaALdt4Wmfx/vPjyfYwTszsIh4P2RdGtXqA+mw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(366004)(39830400003)(346002)(376002)(136003)(396003)(6506007)(7696005)(5660300002)(316002)(186003)(166002)(8936002)(478600001)(52536014)(83380400001)(6916009)(2906002)(33656002)(86362001)(8676002)(26005)(66556008)(76116006)(64756008)(66446008)(19627405001)(66476007)(66946007)(55016002)(71200400001)(9686003)(21615005)(66574015);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?EUv0wCrP8XxWE9Mr+PFvdVpp/13ZGO0nJnM3WOuteHx0wgyXMDIZxsNP0P?=
 =?iso-8859-1?Q?fyl/cL/DRTeecue4KyL5Sl1BPTNjFl/UoXLCQEr7TMduWi7DqskR177GSf?=
 =?iso-8859-1?Q?Ui/xzGkYqGUKt2icxiHIsLNK3zfBD7G0x3fKwNP0TD7FH9zeRySZEP+9bJ?=
 =?iso-8859-1?Q?jyomQU/a/SenMxkhUmFPgZczPUTTBCd8JweJHsi+nnRba2ru1J1hKTmKwa?=
 =?iso-8859-1?Q?1mpEKyJNecYAqKUb4hxwg+cVUOdSh9LAQ79rWgFbb5F8IljD5101Mtd3D9?=
 =?iso-8859-1?Q?1Kyz3K+G/DqcAKPGyPQH5Up/PmPglUCW0wfT5yS7nc5wE3/0ifIc+SX4M4?=
 =?iso-8859-1?Q?mH6c1R0HZvOEBYvTT29SLBq7N+GHYc/HX2VlJ8P9+h9BazWVIX5mYKR8hW?=
 =?iso-8859-1?Q?06scBYkp75l7xKkEIWTfA+8ALZTCB2k5jCuvOkeS4mF4EpwsgHoU/wtEwI?=
 =?iso-8859-1?Q?DtwqJytdTooB1ynB3tcV5hW8k/kY5OrSk6LkLpZEmBmgomgDhF7xFS7rCE?=
 =?iso-8859-1?Q?6ZRk9AZcY08GqbHiEjo+IZ699gp1+AHKtE2YqzYFuO3Rc2XrOsaOFSYjpf?=
 =?iso-8859-1?Q?qMnNGLZfpGTtBRHr46vCpdpq9RAzFJIC9BCKDDpeeuy43UTvAO2dzG+W8Y?=
 =?iso-8859-1?Q?03aUIvG7KbxPyDiTSLDf9kA1Dga/sLTzfKiYihvKCrdKP8ZY1J15FBH7W3?=
 =?iso-8859-1?Q?eaxbsStCGlyt/+wELSlY0t69Zq1I+1+OL/xii+BoHWR621f6FWQXy6yORI?=
 =?iso-8859-1?Q?sG5iXKqWqDhzfC0YHiEdyhEaq0zZga1yXnCfuHMPOvV4NvomfJ4zAGGYJs?=
 =?iso-8859-1?Q?QfiuiTF4wpyTdPssdusCcm0ZLkUv67MoUQzK2k6n+GhiW32NbkPGLdRXyB?=
 =?iso-8859-1?Q?3B7A38CQn+PTIqFVc5QHKznOoN5yH50SwTa91R+VJZotyXheSkvaHXIu9a?=
 =?iso-8859-1?Q?MKw/jSCqxy8zNG5wB7jxn00qHb4n3xPVAw5oQqLM5258psAJ1II9Z1FCbb?=
 =?iso-8859-1?Q?Iuxxg+nWEg3+xP2ofzLOXkuu+cz0hpN3+QdXf3psnC6R2UGmA4Q7f8jhoM?=
 =?iso-8859-1?Q?P+J/1aMBGpOZSvAe+eJD2uzPR5lSfUM5cpH7X40qHROcauJPtpsp8QqG0g?=
 =?iso-8859-1?Q?ifr+K5qT8rY0HfKOiHH1XPpVRU7GjWlUClYSCI/sN1NIzxsVo7EwvB6OL+?=
 =?iso-8859-1?Q?hBj1Espp+5CUCekZ3qQ0SASsF66UVckYXT0m3TCS5a+f3B70OiY3QY+rme?=
 =?iso-8859-1?Q?ti3n2nOM25y7RCLMh9Y+5hJNgxY3BfzvVsqi/T1I8V0uuS7BWK2I1dmMb9?=
 =?iso-8859-1?Q?r0CD/sfIIah9VMa+rylqnwqtHQDGOy+3YvzkET+DM4Q2jgM=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 759a8b51-5e6c-4695-42ac-08d8e38c0b55
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2021 06:16:29.6089 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9BrJ2h9e4hgGpnXV57IfYNu7ucrdOmPje5NbDzrM6Bui0z0TZFwbgx83cajpk4Q0Pt41b9uUGlEL0HqX8lXutC+lHfEGm3DOvmyrvvLpSFs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BMXPR01MB3350
Subject: [USRP-users] Problem in installation of NI Linux device driver in
 ubuntu 20.04.
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
Content-Type: multipart/mixed; boundary="===============5466780192440141560=="
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

--===============5466780192440141560==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB2760A66BED30609D2A9C827A8B929BMXPR01MB2760INDP_"

--_000_BMXPR01MB2760A66BED30609D2A9C827A8B929BMXPR01MB2760INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I am trying to install NI Linux device driver and I followed the steps ment=
ioned in the link "https://files.ettus.com/manual/page_ni_rio_kernel.html" =
but I am facing an error. Can anyone help me the proper procedure of how to=
 install NI Linux device driver in ubuntu 20.04.
Please find the attachment where I wrote the error messages.

with regards,

Sourin Mondal

Associate Software Engineer
Vehere | Proactive Communications Intelligence & Cyber Defence
M: +91 9330337699 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere=
.com<http://www.vehere.com/>

Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India & Asia since 2012!

The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive Pvt Ltd and/or its associates/ gro=
up companies/ subsidiaries. If you are not the addressee, or the person res=
ponsible for delivering it to the addressee, any disclosure, copying, distr=
ibution or any action taken or omitted to be taken in reliance on it is pro=
hibited and may be unlawful. If you have received this e-mail in error, ple=
ase notify the sender and remove this communication entirely from your syst=
em. The recipient acknowledges that no guarantee or any warranty is given a=
s to completeness and accuracy of the content of the email. The recipient f=
urther acknowledges that the views contained in the email message are those=
 of the sender and may not necessarily reflect those of Vehere Interactive =
Pvt Ltd. Before opening and accessing the attachment please check and scan =
for virus. WARNING: Computer viruses can be transmitted via email. The reci=
pient should check this email and any attachments for the presence of virus=
es. The company accepts no liability for any damage caused by any virus tra=
nsmitted by this email.


--_000_BMXPR01MB2760A66BED30609D2A9C827A8B929BMXPR01MB2760INDP_
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
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span lang=3D"en-US"><span style=3D"font-family:Calibri,Arial,Helvetica,san=
s-serif; font-size:12pt; color:rgb(0,0,0)">Hello everyone,</span></span></d=
iv>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span lang=3D"en-US"><span style=3D"font-family:Calibri,Arial,Helvetica,san=
s-serif; font-size:12pt; color:rgb(0,0,0)"><br>
</span></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span lang=3D"en-US"><span style=3D"font-family:Calibri,Arial,Helvetica,san=
s-serif; font-size:12pt; color:rgb(0,0,0)">I am trying to install NI Linux =
device driver and I followed the steps mentioned in the link &quot;<a href=
=3D"https://files.ettus.com/manual/page_ni_rio_kernel.html" target=3D"_blan=
k" rel=3D"noopener noreferrer">https://files.ettus.com/manual/page_ni_rio_k=
ernel.html</a>&quot;
 but I am facing an error. Can anyone help me the proper procedure of how t=
o install NI Linux device driver in ubuntu 20.04.<br>
</span><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-=
size:12pt; color:rgb(0,0,0)">Please find the attachment where I wrote the e=
rror messages.</span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span lang=3D"en-US"><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span lang=3D"en-US">with regards,<br>
</span></div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"Signature">
<div>
<div style=3D""><font face=3D"Tahoma, sans-serif" color=3D"#222222"><span s=
tyle=3D"font-size:12px"><b>Sourin Mondal</b></span></font><br>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0px; margin-bott=
om:0px; color:rgb(32,31,30); font-family:Calibri,sans-serif; font-size:11pt=
; margin:0cm 0cm 0.0001pt; text-align:start; background-color:rgb(255,255,2=
55)">
<span style=3D"margin:0px; font-size:9pt; font-family:Tahoma,sans-serif; co=
lor:rgb(34,34,34)">Associate Software Engineer</span><span style=3D"margin:=
0px; font-family:Tahoma,sans-serif; color:rgb(34,34,34)"><br>
</span><span style=3D"margin:0px; font-size:9pt; font-family:Tahoma,sans-se=
rif; color:rgb(34,34,34)">Vehere | Proactive Communications Intelligence &a=
mp; Cyber Defence<br>
M: +91 9330337699 | T: +91&nbsp;33 40545454 | F: +91&nbsp;33 40545455 | W:&=
nbsp;</span><span style=3D"margin:0px; font-size:9pt; font-family:Tahoma,sa=
ns-serif; color:rgb(31,73,125)"><a href=3D"http://www.vehere.com/" target=
=3D"_blank" rel=3D"noopener noreferrer" style=3D"margin:0px"><span style=3D=
"margin:0px; color:rgb(17,85,204)">www.vehere.com</span></a></span><span st=
yle=3D"margin:0px; font-size:9.5pt; font-family:Arial,sans-serif; color:rgb=
(34,34,34); background:white">&nbsp;&nbsp;</span><span style=3D"margin:0px;=
 color:rgb(31,73,125)">&nbsp;</span><span style=3D"margin:0px"></span></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0px; margin-bott=
om:0px; color:rgb(32,31,30); font-family:Calibri,sans-serif; font-size:11pt=
; margin:0cm 0cm 0.0001pt; text-align:start; background-color:rgb(255,255,2=
55)">
<i><span style=3D"margin:0px; font-size:9pt; font-family:Tahoma,sans-serif;=
 color:rgb(34,34,34)">Vehere is the proud recipient of the Fastest Growing =
Technology Company Awards in India &amp; Asia since 2012!<br>
<br>
</span></i><span style=3D"margin:0px; font-size:7.5pt; font-family:Tahoma,s=
ans-serif; color:rgb(34,34,34)">The content of this e-mail is confidential =
and intended solely for the use of the addressee. The text of this email (i=
ncluding any attachments) may contain
 information, which is proprietary and/or confidential or privileged in nat=
ure belonging to Vehere Interactive Pvt Ltd and/or its associates/ group co=
mpanies/ subsidiaries. If you are not the addressee, or the person responsi=
ble for delivering it to the addressee,
 any disclosure, copying, distribution or any action taken or omitted to be=
 taken in reliance on it is prohibited and may be unlawful. If you have rec=
eived this e-mail in error, please notify the sender and remove this commun=
ication entirely from your system.
 The recipient acknowledges that no guarantee or any warranty is given as t=
o completeness and accuracy of the content of the email. The recipient furt=
her acknowledges that the views contained in the email message are those of=
 the sender and may not necessarily
 reflect those of Vehere Interactive Pvt Ltd. Before opening and accessing =
the attachment please check and scan for virus. WARNING: Computer viruses c=
an be transmitted via email. The recipient should check this email and any =
attachments for the presence of
 viruses. The company accepts no liability for any damage caused by any vir=
us transmitted by this email.&nbsp;</span></p>
<br>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BMXPR01MB2760A66BED30609D2A9C827A8B929BMXPR01MB2760INDP_--


--===============5466780192440141560==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5466780192440141560==--

