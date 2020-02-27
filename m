Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B660D1727B3
	for <lists+usrp-users@lfdr.de>; Thu, 27 Feb 2020 19:33:21 +0100 (CET)
Received: from [::1] (port=60762 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j7NyJ-0006gf-D6; Thu, 27 Feb 2020 13:33:19 -0500
Received: from mail-bn8nam11on2059.outbound.protection.outlook.com
 ([40.107.236.59]:57505 helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <jerrid.plymale@canyon-us.com>)
 id 1j7NyF-0006bO-LH
 for usrp-users@lists.ettus.com; Thu, 27 Feb 2020 13:33:15 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m+fQnuTyh6vAbpOnc/d8A0WLQ7SnBF61eoG3XDDAKApwezZFFpVgkRyDO3fuWJpXxY/3N345KIlQ/33la9hmjVxTVIs2SHg8UPnhPEGhkvzwNkn3XT9chIzA6OMGBy9MoZqQQQk0JHSpc2/OWFm3moVnOwZnlG8NC4qPKE1RZ/km4CDfqywBJGHyLgdc+XgoOrfoyXhFA4isTtfZjMri0aSNqfsapOlcNeY8CpIudMzefwWa1EtgcEX2gI9+0L4ytCgAmdW0sy3YhB0t02aAY9jUyQXTsHGKSJdqv/+qw/WXW8v5NFRSnQ5GhOEs6GLho4rzvL018ajOt7PwTW+6Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BWgwslvXktyFKgGg7/TarW6D/Hka26xAqjqTvL/93pE=;
 b=EmNlLrwT30mriXv4wBuA7dJv5tMK2bqdKnJ6QT1rjcvuVp3T2Hz4I2ZyjdsEwh7bn/82xl+VvJ/YZ0VIfcoj76tl9ZLnhyyH7eDjBhUZcCjSSJ1cdnb8EOiRC3D1V48g/ntdyafZtqoKG95QrLhuL4P/BfCrDYacpQMq843/929iCbCeAVsEkq/ikxgUT1kgGSwBCQJTRGbZNgcrkKps3/Gy+u2kn8kPw+qBQj0laGXr5yPt8/tM0sZaUP57ixtPQrW7EyIPCNtS9ow5wHzJFLj2JEypArNHe8rxPLsbku9sZ/WI96dYjOdGOmIlq/xnrwD/Dmqh8rRtxqvn+kz4DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BWgwslvXktyFKgGg7/TarW6D/Hka26xAqjqTvL/93pE=;
 b=R8obe2nSDAlBwVIwhOAIQArE3980GaQU7GsI/0C+D9ekszJmh2kLJPyno96IxkcceCb4+xLSmax+cmr0BXR9kBlA0+icte17c3wE5Q9SiDRLSi8B4XVpcegDWHAJNQRucUhFwZCtgMFniLxPefUHNFRp7xD4AKjqi/ege1IJiPM=
Received: from MW2PR1901MB2137.namprd19.prod.outlook.com (2603:10b6:302:f::21)
 by MW2PR1901MB2218.namprd19.prod.outlook.com (2603:10b6:302:e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15; Thu, 27 Feb
 2020 18:32:32 +0000
Received: from MW2PR1901MB2137.namprd19.prod.outlook.com
 ([fe80::e5d8:b33d:cf46:682a]) by MW2PR1901MB2137.namprd19.prod.outlook.com
 ([fe80::e5d8:b33d:cf46:682a%3]) with mapi id 15.20.2750.021; Thu, 27 Feb 2020
 18:32:32 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Building and Installing UHD with  RFNoC and GNURadio 3.8 from
 source with Tensorflow 2.0 integration
Thread-Index: AdXtnDGyehhYKopgTKiwE9QXzI486A==
Date: Thu, 27 Feb 2020 18:32:31 +0000
Message-ID: <MW2PR1901MB213772B28ED4FF5A4190EDB2C6EB0@MW2PR1901MB2137.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jerrid.plymale@canyon-us.com; 
x-originating-ip: [98.153.200.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0ac4c6a4-c4fa-4589-a912-08d7bbb36862
x-ms-traffictypediagnostic: MW2PR1901MB2218:
x-microsoft-antispam-prvs: <MW2PR1901MB221871047B2D00C33E0AB970C6EB0@MW2PR1901MB2218.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03264AEA72
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(396003)(346002)(136003)(39830400003)(189003)(199004)(186003)(71200400001)(6916009)(508600001)(9686003)(26005)(33656002)(55016002)(4744005)(2906002)(316002)(7696005)(5660300002)(66476007)(66556008)(76116006)(64756008)(66446008)(66946007)(52536014)(6506007)(81166006)(8936002)(44832011)(8676002)(81156014)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MW2PR1901MB2218;
 H:MW2PR1901MB2137.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: canyon-us.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PpWjT5zyDNkz+cKQRwGPeQeV0uPL01HbPnRD+Fh7ie+fUrMqTdeMH1jGMwxNybsOofFVZ2I2B/HoNdORtWdJyoyV6qZB+OmwemyifoS2RxQbA/oQGE/kOaFwitRI3UCGv9wqHjN44X8WSDP6pUy7JkPOVnej4GiVqxCmqu0MeuJvAvJrs2xDzssJ84a02Rl9GICQ3kigWl1jy0jgSv6E9BAcx4mO534bIYNgOOIKd3VriJVnIUFCQKnbmdY9mCHEb0EYFY2P8rJwgtqwYaAk+BxodJ233EnlNLPMaBp7p0SiZCbKLdPp2kCvh/n9Gj0kRQT3qrNwhieoYhyd4+CiUTRO6Z98L9gdPu3VvzmN2kBGeFkeyLTU0Ckv38BYvHqX17IwdDX+bktznz5mb7lVNxoCuyX/DuZwEBUklGPN+d+Xy5t5JWtN7D0cbHI7vSsK
x-ms-exchange-antispam-messagedata: VXCsvZbsNHZc9sWmQQO4aZRP3PWWZntU+nF46ExTOFg5VrdAGRbXZ7fw2BQw/0fe+PY8FkdQdMfztoahjWH17FcqUcFCHOx+f/1JCdwG7v0IzULQ/1OuUjkFIAZyM5p34oPPqVE1/o4GSUf92giJng==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ac4c6a4-c4fa-4589-a912-08d7bbb36862
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2020 18:32:31.9511 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ISf58sfJnKZa6rrNcI9guKTYtaRYgIMIoxsCv44a6g8E5fTgYx8XYnVI3XNf7KTXl0h3mEIEB6tgHxgoHJc7Ug5qHK+8GeDLNWefYpdVLqI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR1901MB2218
Subject: [USRP-users] Building and Installing UHD with RFNoC and GNURadio
 3.8 from source with Tensorflow 2.0 integration
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
Content-Type: multipart/mixed; boundary="===============7351242868410654531=="
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

--===============7351242868410654531==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MW2PR1901MB213772B28ED4FF5A4190EDB2C6EB0MW2PR1901MB2137_"

--_000_MW2PR1901MB213772B28ED4FF5A4190EDB2C6EB0MW2PR1901MB2137_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hey all,

So I need some direction for what I am trying to do as I am not sure that i=
t is even possible. We are using machine learning in the project I am worki=
ng on, and would like to incorporate that into GNURadio if possible. So I a=
m currently using an anaconda environment set up with python3.7 and Tensorf=
low GPU 2.0 for the machine learning development. I would like to set up an=
 installation for UHD with RFNoC and GNURadio 3.8 using this conda environm=
ent such that it uses python3.7 and has all of the python libraries that th=
e conda environment does (like Tensorflow GPU 2.0). Can anyone point me in =
the right direction for guides that can help me achieve this or instruct me=
 directly? Is this even possible? Would I have to just set up UHD with the =
Python API to integrate Tensorflow GPU 2.0 into the script? Any and all ins=
ight/information on this topic would be greatly appreciated.

Best Regards,

Jerrid

--_000_MW2PR1901MB213772B28ED4FF5A4190EDB2C6EB0MW2PR1901MB2137_
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
<p class=3D"MsoNormal">Hey all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So I need some direction for what I am trying to do =
as I am not sure that it is even possible. We are using machine learning in=
 the project I am working on, and would like to incorporate that into GNURa=
dio if possible. So I am currently
 using an anaconda environment set up with python3.7 and Tensorflow GPU 2.0=
 for the machine learning development. I would like to set up an installati=
on for UHD with RFNoC and GNURadio 3.8 using this conda environment such th=
at it uses python3.7 and has all
 of the python libraries that the conda environment does (like Tensorflow G=
PU 2.0). Can anyone point me in the right direction for guides that can hel=
p me achieve this or instruct me directly? Is this even possible? Would I h=
ave to just set up UHD with the
 Python API to integrate Tensorflow GPU 2.0 into the script? Any and all in=
sight/information on this topic would be greatly appreciated.<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jerrid<o:p></o:p></p>
</div>
</body>
</html>

--_000_MW2PR1901MB213772B28ED4FF5A4190EDB2C6EB0MW2PR1901MB2137_--


--===============7351242868410654531==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7351242868410654531==--

