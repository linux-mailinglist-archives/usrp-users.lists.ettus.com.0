Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8323F6BB40
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2019 13:20:11 +0200 (CEST)
Received: from [::1] (port=33060 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnhyb-0003aj-2F; Wed, 17 Jul 2019 07:20:01 -0400
Received: from otransport-24.outbound.emailsrv.net ([107.23.53.12]:37496)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hnhyW-0003Ss-PY
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 07:19:56 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-24.outbound.emailsrv.net (Postfix) with ESMTPS id 7BEFF618D8;
 Wed, 17 Jul 2019 11:19:16 +0000 (UTC)
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-by2nam03lp2050.outbound.protection.outlook.com [104.47.42.50])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id F36B661361;
 Wed, 17 Jul 2019 11:19:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LEG/Y/zQfkWr9YPbf8QI5wxHrI6+F4b/jjFTowQ+ZPKWlBfbZSXVdF1G7+z5fr50fkImJVNKWT7oNqr4V4+G8J7xU/AJivbMPPfEe5xveJV7EwN+7pqVGc2lblslAyIQHpxpinVI1+GPKocEJbTiBVMzTWCBeCAI26DPsvob08Z8rZNn+cvGCqVCrv5liZ5ENjZeXxEpYROy8Y7ldcngC4EFAOV2JmUKDyDmujWGDnlf6fXN28Hff5q5+mJVRDBKStmJjMTNZCumvlcWv5A972icq6bAGqEozwM4OniyVr4tNQvYtUFmgji3umIxQMD7OQZt9vBit6cYkZTZJ4oosg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zlmwUKyWdC6+XdVJunzky6FYxazcNN+RFLFt0Zkb/Sw=;
 b=NtTZa40a0hfGhg5G2XcIVhUPEgCxmGsx0mVV88atQK5KQ0EGFS+9uWmAB20Uz5IKroRIp55zOcHgija1bpVuRziTXCQ3gLwwDNLFAvX6zmNLVty4CL1mSTrSn07N2Cboj2FZr9umLxWqpyJGD4+zQB6ZSHv82o9SuFji7zVUHGR71L1JLdy/IS3IHDJFT8OQMWCMIcfavUVJQZfaRKwn/hcKTPO8x2NFaD/zOxMlBlj/Q//fW4IJm2RzGN6fffQImpDvc+YG6y1TqVGzrPLBPd4QEyWLtARir9473K+bqSm4F/V9bnDn2wHcicPe0vpUa++jvbr2xqGtIJToiWj6hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=gardettoengineering.com;dmarc=pass action=none
 header.from=gardettoengineering.com;dkim=pass
 header.d=gardettoengineering.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zlmwUKyWdC6+XdVJunzky6FYxazcNN+RFLFt0Zkb/Sw=;
 b=fUkxlzyA991cTGVfFO2qYWH5TqUypu83qz8JG9cV742B8i+Cgr9LwCqxf836AWyfm4i8S4vZSeQEuKJX577wXE9mqKPSEzDUv6kSwedG9i67ACzq7InsiYlvjTa80zcRr0SpZXbsoxvoSvyXsiy8N8FFy+FFv93TxVf7MA/jPdI=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2371.namprd12.prod.outlook.com (52.132.11.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.11; Wed, 17 Jul 2019 11:19:14 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1c8e:a892:16c:fc07]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1c8e:a892:16c:fc07%6]) with mapi id 15.20.2094.011; Wed, 17 Jul 2019
 11:19:14 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Sumit Kumar
 <cogwsn@gmail.com>
Thread-Topic: [USRP-users] Sequence Errors N200
Thread-Index: AQHVPJEbXcWWBQK7KE2S3Vh3Ld9JNKbOqY5V
Date: Wed, 17 Jul 2019 11:19:13 +0000
Message-ID: <BL0PR12MB2340A337C6CBB311E990C16CAFC90@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <CAOExtcQtL_gri3uWw9_NyXPEOwS6Gpc+NqSs07Vwmdc4gbHQTg@mail.gmail.com>
In-Reply-To: <CAOExtcQtL_gri3uWw9_NyXPEOwS6Gpc+NqSs07Vwmdc4gbHQTg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 848d7110-25c3-4287-bfa5-08d70aa89965
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2371; 
x-ms-traffictypediagnostic: BL0PR12MB2371:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BL0PR12MB2371FEB2C9F2D80408E5709DAFC90@BL0PR12MB2371.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(366004)(346002)(136003)(396003)(39830400003)(199004)(189003)(76116006)(66556008)(66446008)(64756008)(66476007)(66946007)(105004)(86362001)(186003)(476003)(446003)(11346002)(66066001)(5660300002)(52536014)(26005)(71200400001)(71190400001)(966005)(74316002)(6246003)(6436002)(9686003)(236005)(508600001)(54896002)(6306002)(55016002)(7736002)(53936002)(2906002)(21615005)(99286004)(81156014)(81166006)(606006)(3846002)(6116002)(256004)(8936002)(2501003)(110136005)(486006)(229853002)(7696005)(53546011)(102836004)(6506007)(76176011)(33656002)(19627405001)(8676002)(68736007)(316002)(25786009)(14454004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2371;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kO5t0C4Wjb55xUkrP2EEAjiACDsrNjapVPbqgIzwoUnw8m7QdaMpPXfOW5KCbJWI5UVSOTTRFgNnL1nBXalwdaPRY6ly+jXjXB9hNtAlA1ktWuxslhxQEULKz3u7a039cPWddmt6Kg9am1LKrBk6zEk0OAjH8s6o3a2xQAYsFkGcDXwrjNn9PRns0QKMM+bWn6L0p+gDMlmGM+5/Opc95HH9rZV3YeKrxk1wKGEvZjE38A0RMz9oJp/ySNcmp7zTDJMviN2YSxaFZw4qxRCZxp5bxuh/RdBp6lYo3gRb6Pl0FVbqp3SfdkPSJAipIoYehWbEPWraaOS2hvn00csjL4j07pl2E1Ss7PuOnm9VrbLs8hZjGnUKQYgbssgjDdtqf48cb7pUrPOYICN6imDc0CxlpfKMA5PInvAKlvQLsKQ=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 848d7110-25c3-4287-bfa5-08d70aa89965
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 11:19:13.8291 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2371
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-by2nam03lp2050.outbound.protection.outlook.com|104.47.42.50|NAM03-BY2-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.42.50, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-16588-c
X-Mailprotector-ID: 6a070924-9f0d-4866-b2ff-aae15d6628a6
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
Content-Type: multipart/mixed; boundary="===============4332058230075138843=="
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

--===============4332058230075138843==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340A337C6CBB311E990C16CAFC90BL0PR12MB2340namp_"

--_000_BL0PR12MB2340A337C6CBB311E990C16CAFC90BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I am not really an N-series guy, so this probably won't be helpful.  Have y=
ou tried doing a uhd_usrp_probe on both devices and seen that the responses=
 are consistent?

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Sumit Ku=
mar via USRP-users <usrp-users@lists.ettus.com>
Sent: Wednesday, July 17, 2019 7:15 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
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



--_000_BL0PR12MB2340A337C6CBB311E990C16CAFC90BL0PR12MB2340namp_
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
I am not really an N-series guy, so this probably won't be helpful.&nbsp; H=
ave you tried doing a uhd_usrp_probe on both devices and seen that the resp=
onses are consistent?</div>
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
sers-bounces@lists.ettus.com&gt; on behalf of Sumit Kumar via USRP-users &l=
t;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Wednesday, July 17, 2019 7:15 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
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
/2014-May/037495.html">http://lists.ettus.com/pipermail/usrp-users_lists.et=
tus.com/2014-May/037495.html</a><br>
</div>
<div><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2012-July/032838.html">http://lists.ettus.com/pipermail/usrp-users_lists.e=
ttus.com/2012-July/032838.html</a><br>
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
</div>
</div>
</body>
</html>

--_000_BL0PR12MB2340A337C6CBB311E990C16CAFC90BL0PR12MB2340namp_--


--===============4332058230075138843==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4332058230075138843==--

