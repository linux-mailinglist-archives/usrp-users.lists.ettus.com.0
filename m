Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E6618BA4
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 16:23:42 +0200 (CEST)
Received: from [::1] (port=53332 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOjwc-0001SP-LM; Thu, 09 May 2019 10:22:46 -0400
Received: from otransport-8.outbound.emailsrv.net ([52.20.59.36]:50495)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <jason@gardettoengineering.com>)
 id 1hOjw4-0001Iw-Ne
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 10:22:42 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-8.outbound.emailsrv.net (Postfix) with ESMTPS id 57DA3616D2;
 Thu,  9 May 2019 14:21:32 +0000 (UTC)
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam01lp2052.outbound.protection.outlook.com [104.47.32.52])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id E7832A40B1;
 Thu,  9 May 2019 14:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com; s=selector1-gardettoengineering-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8jcwO3x/UdatJpUWkvAxodTR7byr5eIJV4xjQHeXeyg=;
 b=PNwjNljigSxyCUvDWRC63x+YE8eSnuEfTJX/9QJGoh//gengjKPvHaLvH16b5dexqsjf+e11XJwI5CDq7ocEGlcPJHKxbVEzqYZ7lKHlzB+pq5s7Xppj0IEzRYjWpYF2it07vKZdUNXL2EQiQ/XifBC3UIsN5AnhZXXBJxQS6/U=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2529.namprd12.prod.outlook.com (52.132.11.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Thu, 9 May 2019 14:20:10 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5%7]) with mapi id 15.20.1856.012; Thu, 9 May 2019
 14:20:10 +0000
To: Joe Martin <k5so@k5so.com>
Thread-Topic: [USRP-users] Need a little help with running legacy prebuilt UHD
 versions
Thread-Index: AQHVBm7RX9ZL6047eUCP7trk/EXp+qZi15cI
Date: Thu, 9 May 2019 14:20:09 +0000
Message-ID: <BL0PR12MB2340B79E071584EF5599E398AF330@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <556BBE2D-2BA6-40A3-BFF5-F5FA2351DB06@k5so.com>
 <BL0PR12MB2340E831A1782ED0958D6DBAAF320@BL0PR12MB2340.namprd12.prod.outlook.com>
 <84C6BD1A-2901-4FFC-834C-55B481EB7045@k5so.com>
 <CA+JMMq9oRqxDSVgyACAZucejC2Z3hKwciNCjX_YEJ6taCgUQ-g@mail.gmail.com>
 <CA+JMMq8N5XP6Z9CDUO0JHZxJotHRPfQRRqsvJT5-XwZZVWRv+w@mail.gmail.com>
 <A0F0F533-AE85-4802-A676-EA4C39C9372F@k5so.com>
 <B98CD290-9E92-49CE-AD7D-E19FE82B5657@k5so.com>
 <CA+JMMq9+WVXGDRwBd9WAcwXHXDynDsUYy4nOXuryttxvNKbXCA@mail.gmail.com>
 <19BFE8B3-662A-4DC0-BB72-557E7495F6D0@k5so.com>
 <5F41CEE9-58DF-4868-89C2-5F88876803DF@k5so.com>
 <CAGVTi8VOeNG5B9X-WaMQrvbxkt96UFhm5a6-++9znYCzexfRtQ@mail.gmail.com>
 <9f223faf-add7-74cc-faa1-d4a0ed95e28a@balister.org>
 <2C9C895D-DD6D-4456-9F1D-557F699AB391@k5so.com> <5CD36887.5050805@gmail.com>
 <4F25C7C9-CB61-46DF-9163-2CB0CF86DDCF@k5so.com>
 <F19914AE-5635-4F61-A19B-13C16AE6CE8D@k5so.com>,
 <2BBEC239-22F9-4F4C-B777-222484DEC314@k5so.com>
In-Reply-To: <2BBEC239-22F9-4F4C-B777-222484DEC314@k5so.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 07acb3a7-3b6b-4773-72d2-08d6d489719c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BL0PR12MB2529; 
x-ms-traffictypediagnostic: BL0PR12MB2529:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR12MB2529BA42DBAC67E9FB15C5EEAF330@BL0PR12MB2529.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(396003)(346002)(366004)(376002)(39830400003)(199004)(189003)(68736007)(256004)(74316002)(14454004)(7736002)(25786009)(99286004)(561924002)(5660300002)(6916009)(6246003)(71190400001)(71200400001)(19627405001)(7696005)(76176011)(73956011)(66946007)(66476007)(76116006)(66556008)(53936002)(64756008)(66446008)(54896002)(19273905006)(6306002)(86362001)(316002)(9686003)(236005)(508600001)(8676002)(66066001)(52536014)(4326008)(102836004)(33656002)(6436002)(105004)(11346002)(446003)(6506007)(53546011)(26005)(6116002)(186003)(3846002)(2906002)(606006)(486006)(476003)(55016002)(81156014)(81166006)(8936002)(229853002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2529;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: abe8qrom7ykUVi3XjJaNZgFbeDiTqoT/shpaqXAlx+W+Oxv90AKMmEW9rJQmRac5aBZzIcAy/TbQOFyC1R0X6wHy2rNh8Oewu8TPEfOKsJ60EUhxEh7vF5DsZveQKrWZNQnYMKU2sfR87TOH2GeQD6oDjndXj4TD6tHhv/dFY2Fau38X1RyKn0jQ9xaiwrCSFiQBo4XrSqgmckoZOxIAes/xwPS5dbN3aricKWQyatxxJwlIPEFroyWwTImwVr8rwHnaeMgy+estviazYDPq2mXalKgitzZ1648g5QI+AxyQsjqggd1FU0BCDYvoBvyi9l+77y6isnEjcOyKWmu35Qdwf9kcWEnbBnda+dNmH6Dp50/tgfnxc1Un/UVmprdQAF415zwXLLd1+xumqdYIcOHCjSdb4Tzx4NDy03fGzv8=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07acb3a7-3b6b-4773-72d2-08d6d489719c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 14:20:09.9531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2529
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-sn1nam01lp2052.outbound.protection.outlook.com|104.47.32.52|NAM01-SN1-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: subject_50_chars subject_10_spaces clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.32.52, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-13022-c
X-Mailprotector-ID: 5477dd5f-e66b-4e75-bcc5-31500c118e39
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Need a little help with running legacy prebuilt
 UHD versions
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
Content-Type: multipart/mixed; boundary="===============8548828932073455985=="
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

--===============8548828932073455985==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340B79E071584EF5599E398AF330BL0PR12MB2340namp_"

--_000_BL0PR12MB2340B79E071584EF5599E398AF330BL0PR12MB2340namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Maybe try running a VM of a version of Ubuntu that is roughly the vintage o=
f that version of UHD?

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Joe Mart=
in via USRP-users <usrp-users@lists.ettus.com>
Sent: Thursday, May 9, 2019 9:53 AM
To: Joe Martin
Cc: usrp-users@lists.ettus.com
Subject: [USRP-users] Need a little help with running legacy prebuilt UHD v=
ersions

I need a bit of help to understand how to run legacy prebuilt UHD versions =
from the files.ettus.com/binaries/uhd<http://files.ettus.com/binaries/uhd> =
repository.

I would like to try various UHD versions to try to find a version that will=
 run with an elderly (Rev 2) N210 with unknown firmware/fpga images in it. =
 After downloading a legacy version, e.g., uhd_003.004.000-release_Ubuntu-1=
1.10-x86_64.deb, and clicking =93install=94 I am not understanding what I n=
eed to do next to actually run the version, as uhd_usrp_probe =97version re=
ports the version of UHD that I originally had installed, not the legacy ve=
rsion I intended to install.

I am running Ubuntu 18.04, should I expect to be able to run the legacy ver=
sions labeled, for example, *_Ubuntu-11.10-x86_64.deb, as in the example ab=
ove ?

Clearly I=92m missing something fundamental, and likely simple, in my under=
standing about how to use these prebuilt older versions.  I have had no pro=
blem building, installing, and running UHD versions from source but I have =
never tried to run a =93prebuilt=94 version before.

Joe

--_000_BL0PR12MB2340B79E071584EF5599E398AF330BL0PR12MB2340namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Maybe try running a VM of a version of Ubuntu that is roughly the vintage o=
f that version of UHD?</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Joe Martin via USRP-users &lt=
;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Thursday, May 9, 2019 9:53 AM<br>
<b>To:</b> Joe Martin<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Need a little help with running legacy prebuil=
t UHD versions</font>
<div>&nbsp;</div>
</div>
<div class=3D"" style=3D"word-wrap:break-word">I need a bit of help to unde=
rstand how to run legacy prebuilt UHD versions from the
<a href=3D"http://files.ettus.com/binaries/uhd" class=3D"">files.ettus.com/=
binaries/uhd</a>&nbsp;repository. &nbsp;
<div class=3D""><br class=3D"">
</div>
<div class=3D"">I would like to try various UHD versions to try to find a v=
ersion that will run with an elderly (Rev 2) N210 with unknown firmware/fpg=
a images in it. &nbsp;After downloading a legacy version, e.g., uhd_003.004=
.000-release_Ubuntu-11.10-x86_64.deb, and
 clicking =93install=94 I am not understanding what I need to do next to ac=
tually run the version, as uhd_usrp_probe =97version reports the version of=
 UHD that I originally had installed, not the legacy version I intended to =
install. &nbsp;
<div class=3D""><br class=3D"">
</div>
<div class=3D"">I am running Ubuntu 18.04, should I expect to be able to ru=
n the legacy versions labeled, for example, *_Ubuntu-11.10-x86_64.deb, as i=
n the example above ?&nbsp;</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Clearly I=92m missing something fundamental, and likely sim=
ple, in my understanding about how to use these prebuilt older versions. &n=
bsp;I have had no problem building, installing, and running UHD versions fr=
om source but I have never tried to run a
 =93prebuilt=94 version before.&nbsp;</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Joe</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB2340B79E071584EF5599E398AF330BL0PR12MB2340namp_--


--===============8548828932073455985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8548828932073455985==--

