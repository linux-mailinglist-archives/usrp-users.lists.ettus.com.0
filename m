Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 662766BCFE
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2019 15:27:21 +0200 (CEST)
Received: from [::1] (port=41806 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnjxo-0007fC-Ax; Wed, 17 Jul 2019 09:27:20 -0400
Received: from otransport-5.outbound.emailsrv.net ([54.84.246.51]:47854)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hnjxl-0007Xu-17
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 09:27:17 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-5.outbound.emailsrv.net (Postfix) with ESMTPS id BA77461836
 for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2019 13:26:36 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02lp2059.outbound.protection.outlook.com [104.47.36.59])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id 74D41A25D9
 for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2019 13:26:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EDqmlaJGXdgKyPEQCUH1+PyYk/DqERB9CPv/VDFyYBrDPteefQVa5DwTYe3eUnNxVLLyrIXHUHbHiAg5TlG4XtlARuJMXpykcKrCDYFjvgAM8FsQ0imIuwTMHumijtkdgwHeS5ZL3m1uulbVzCjyHm9t+ps9odTYgpxd9CzNREAp8iJ2viIeqz7mKCK5x41rsspy4fS3sVnWRxV58l5RhEkrc4lSyVNphwgPjhM3ryEAo7FRZXpzdDfNAlwLzFU4ASMjuwn1WspwhWltHTThuxk2sbCAmrg5PGwWCAfvu8tD0QF92ZVC+1Y5b6+zuIuk/VQL8HaY4kAw2DO4CsuVVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5fivE7r1xD3v/AwoIUxXFgLqx04OJJ7rWWfeMEigW/Q=;
 b=MYuDdDWtQ975ZLenCiPyMStQxA2x6orJaH8oCjKMNFUKwbLeu59QDJ7vnWDonGMFv2eCfsOvr1SZIMkSLCNE5dixNI/IsktAkyOXq1VqJ9hLO/QMvIRxeKOxCJwscbmhUgu4FEq/Ea2SFbiSmYRpcczecpasmUCw/53b7ZJMJbn87J2udfthFirbpXfHQi0djZY8xwD5WmXPTD7CdbWas3hNP6MniI1PfbTDhojXLpM0acqdv5Wrk5hPCYqgj/RLacVDVhsxCpuEWbsXAIXv4+/uL5tmrvfQQ3CZyGvcXFOyGu221Mmw66FI2Od2vgpoJy19uYflfy0p4DD83+rDcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=gardettoengineering.com;dmarc=pass action=none
 header.from=gardettoengineering.com;dkim=pass
 header.d=gardettoengineering.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5fivE7r1xD3v/AwoIUxXFgLqx04OJJ7rWWfeMEigW/Q=;
 b=jwNK+QuhPSnu/bo7BPsHKDSEBXGkhCF2xpv5jkkDvkT3WeT9+pDMV10YFBmT79HZPgL7KBAubHUYOTDRfCQJbGH+e7OChxLqKmTdrknZYGwQLkbsh0o5KtkQGxW1SeHDlijIECZF4JbhsoJn8wTI6b3oaTZtBuSZWH4Gi56lFa0=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2481.namprd12.prod.outlook.com (52.132.11.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 17 Jul 2019 13:26:33 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1c8e:a892:16c:fc07]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1c8e:a892:16c:fc07%6]) with mapi id 15.20.2094.011; Wed, 17 Jul 2019
 13:26:33 +0000
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: Issues shutting down an E320
Thread-Index: AQHVMCXP2CHTaHlIl0qNcR/aVYv4YqbO5e4z
Date: Wed, 17 Jul 2019 13:26:33 +0000
Message-ID: <BL0PR12MB2340C32DBAC7C0294B370DD9AFC90@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB2340CF3093F897E9895719B3AFF90@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB2340CF3093F897E9895719B3AFF90@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d65c555f-57f4-4bca-0b19-08d70aba62bb
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2481; 
x-ms-traffictypediagnostic: BL0PR12MB2481:
x-microsoft-antispam-prvs: <BL0PR12MB2481684B06765B5D62E2BD87AFC90@BL0PR12MB2481.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(39830400003)(376002)(346002)(396003)(189003)(199004)(86362001)(11346002)(446003)(6436002)(53936002)(486006)(66066001)(8936002)(7736002)(33656002)(81166006)(81156014)(74316002)(2906002)(76116006)(66446008)(64756008)(66556008)(66476007)(66946007)(186003)(26005)(76176011)(6916009)(102836004)(7696005)(6246003)(54896002)(9686003)(476003)(55016002)(105004)(256004)(19627405001)(53546011)(6506007)(71200400001)(71190400001)(3846002)(25786009)(6116002)(68736007)(8676002)(508600001)(5660300002)(52536014)(99286004)(14454004)(229853002)(4744005)(316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2481;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /cdkzgdrys2jtk1fFtrvp+MDdcdiQ8x+8vwLoDw97IeOrzyIjuzvaIv3oPP4fNRDaDs/nIYRSAd7wXDYwK2za12LvOwk74QhOFOmkajkACWsbayXExJkny8fTd/cMzjNGGjmXiDbgR/+GjpzuuIMlbA+Cpu1YIBSMUs1AIOnru215ZjppOc7fBsLLUWPIaLnng5GbhXNAUSl0syZU3+XEUdKre/aBSwQTXZA7AE1j1w9c5phDreB3cKS9/uoX2SC528K5QFBIxploLWeHcXX4mn79Kio25TmqcmpIZDEjPz4a01HquUMqyi2rttkLXjzPm81Fj9jq2ihh1zkt/AuBm4zIcKosvU/xZUtBHJu2W10sNjCiiiLqgWihVjpUY6Cq/gme5BPktSkndlEvfwQyEpoZw/xK1cf6D7ZynFZ09s=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d65c555f-57f4-4bca-0b19-08d70aba62bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 13:26:33.1865 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2481
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-sn1nam02lp2059.outbound.protection.outlook.com|104.47.36.59|NAM02-SN1-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.36.59, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-12070-c
X-Mailprotector-ID: c409576c-aede-4a9b-ad9c-007ab183f4b0
Subject: Re: [USRP-users] Issues shutting down an E320
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
Content-Type: multipart/mixed; boundary="===============4862224947877372946=="
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

--===============4862224947877372946==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340C32DBAC7C0294B370DD9AFC90BL0PR12MB2340namp_"

--_000_BL0PR12MB2340C32DBAC7C0294B370DD9AFC90BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I never got a response on this, but in case others have the same problems, =
I use this command instead of the shutdown -h command: systemctl poweroff

It is a small sample size, but it seems to work every time.

________________________________
From: Jason Matusiak
Sent: Monday, July 1, 2019 12:03 PM
To: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: Issues shutting down an E320


I've noticed issues getting my E320 to shutdown sometimes.  It is almost li=
ke it is halting, but not going down far enough to turn off the unit (the L=
ED doesn't turn off).


I'll issue the "shutdown -h now" command and it will kick me out of my ssh =
session (which is fine).  I cannot ping it anymore, so that makes me feel l=
ike it is shutting down, but the green LED never goes out.  I've tried the =
"-P" flag, but that doesn't seem to help.


Again, this isn't every time, but sometimes (maybe it is dependent on which=
 E320 I am using, I haven't kept a good enough watch on when it happens to =
be sure).



--_000_BL0PR12MB2340C32DBAC7C0294B370DD9AFC90BL0PR12MB2340namp_
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
I never got a response on this, but in case others have the same problems, =
I use this command instead of the shutdown -h command:&nbsp;systemctl power=
off</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
It is a small sample size, but it seems to work every time.</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Jason Matusiak<br>
<b>Sent:</b> Monday, July 1, 2019 12:03 PM<br>
<b>To:</b> Ettus Mail List &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Issues shutting down an E320</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0; margin-bottom=
:0">I've noticed issues getting my E320 to shutdown sometimes.&nbsp; It is =
almost like it is halting, but not going down far enough to turn off the un=
it (the LED doesn't turn off).</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0; margin-bottom=
:0"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0; margin-bottom=
:0">I'll issue the &quot;shutdown -h now&quot; command and it will kick me =
out of my ssh session (which is fine).&nbsp; I cannot ping it anymore, so t=
hat makes me feel like it is shutting down, but the
 green LED never goes out.&nbsp; I've tried the &quot;-P&quot; flag, but th=
at doesn't seem to help.</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0; margin-bottom=
:0"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0; margin-bottom=
:0">Again, this isn't every time, but sometimes (maybe it is dependent on w=
hich E320 I am using, I haven't kept a&nbsp;good enough watch on when it ha=
ppens to be sure).</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0; margin-bottom=
:0"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0; margin-bottom=
:0"><br>
</p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB2340C32DBAC7C0294B370DD9AFC90BL0PR12MB2340namp_--


--===============4862224947877372946==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4862224947877372946==--

