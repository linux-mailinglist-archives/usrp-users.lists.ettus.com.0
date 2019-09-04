Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B83BEA84B8
	for <lists+usrp-users@lfdr.de>; Wed,  4 Sep 2019 15:52:11 +0200 (CEST)
Received: from [::1] (port=56062 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i5Vhh-0001gX-M9; Wed, 04 Sep 2019 09:52:09 -0400
Received: from dispatch1-us1.ppe-hosted.com ([67.231.154.164]:44054)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1i5Vhd-0001Zh-3Y
 for usrp-users@lists.ettus.com; Wed, 04 Sep 2019 09:52:05 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 B4037A1C25
 for <usrp-users@lists.ettus.com>; Wed,  4 Sep 2019 13:51:23 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-by2nam03lp2050.outbound.protection.outlook.com [104.47.42.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us5.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id A55424C0062
 for <usrp-users@lists.ettus.com>; Wed,  4 Sep 2019 13:51:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l42NXvtMx4fZjVk9HCdl96s+haSAnSc59IdWkGFiAn1S/dj1+Ydb4ofLbslYmXNTgb/4bjsaHqGYQE+pmXqnbWewp4IHPHlKzqdCEk/amvR2VmPVwoz+NSdfUN6WlEeVZMxQ5XLPSG4o978ywPd4bfFLWMxaBLJF11t/HLF91ETK6dF0B5/jluBQ7Au6pFsL3H0xpmTd+44I3+pqTCTcYUHz7WJ1z7FoSyw2ddloSKXz0439vOwgZCVHC2VCVohG5aiMXphzPuUqxmH+4EKCCPIApcKg2LyBOF1wI3L5Yr+M/ztVoQrgBFlQPYn3QBqoRrW1mdWxAtn9YtabNT9uKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aec+NapDDRykuKYQu8ks40zjFkinvLmfHUfwsr6FIig=;
 b=MfQg2tc0E/OsibgkVf3cytl6tdaArmJsE+o9ATeDxknaG3uSi92DSEmCKSUy7FipHZmZpowcftQNyW5iSxCx07R/9Bu4GYEc6VZ7pxh/wm1i4swaeuDMnGdOYHD3Qg95Wnhx/VjGroDLTsgAyII0xnV7eAAIltTJi5WU8HJQTNQtHd3kp58s/CUNnfxelu4g+Vbanx17HO9pkT643CoDPWOlb8NMFHkWV/PRE/+8iuBlhZzEcubRA+DbwyTn0HCieKMOfJiwH15JQl/OMmXf+5mvZXroo7ZR+p/LOYBA82k02mL74GkJXr9WR3SM3V0U//KekMA7CGVxeYV3PIXCmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aec+NapDDRykuKYQu8ks40zjFkinvLmfHUfwsr6FIig=;
 b=BjfofleT4WLO9olfqwoIgcrld7qNCa0IsupRTGqt+K5xSUh7NyK+fasVazeTc2+LpnoQkP6fnrsYh7xKknHzbecoQur8AjKU96sktzRX3Q2GzTdPvHdjZwJ8y9EhR5Kru2YaVeODTqDgUJCrGyV8EhqiycsDPxrv94c2eMpOX5c=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.11.30) by
 BL0PR12MB2819.namprd12.prod.outlook.com (20.177.242.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.14; Wed, 4 Sep 2019 13:51:09 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::10b:c950:7de9:d8d8]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::10b:c950:7de9:d8d8%6]) with mapi id 15.20.2220.022; Wed, 4 Sep 2019
 13:51:09 +0000
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: flowgraphs not stopping
Thread-Index: AQHVYyV07u5VtC60mEKpeDPkx3OLTQ==
Date: Wed, 4 Sep 2019 13:51:09 +0000
Message-ID: <BL0PR12MB2340FFE697102E2EB5276D30AFB80@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c845c65c-790a-425c-f266-08d7313ef126
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2819; 
x-ms-traffictypediagnostic: BL0PR12MB2819:
x-microsoft-antispam-prvs: <BL0PR12MB2819AEB61BF9AE8A7DE24275AFB80@BL0PR12MB2819.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0150F3F97D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39830400003)(346002)(366004)(376002)(396003)(199004)(189003)(2906002)(74316002)(3846002)(8936002)(86362001)(102836004)(6116002)(316002)(6506007)(7696005)(81166006)(81156014)(7736002)(53936002)(7116003)(8676002)(6916009)(19627405001)(25786009)(99286004)(26005)(76116006)(66946007)(66446008)(64756008)(66556008)(66476007)(486006)(5660300002)(105004)(9686003)(54896002)(71200400001)(71190400001)(33656002)(3480700005)(66066001)(52536014)(6436002)(55016002)(4744005)(476003)(186003)(14454004)(256004)(508600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2819;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Du8qnTDlZdx83We09MhtmqCoFL6ifSbfY6OxgidH+p4Oep5Fris102Q6LKahbvjz2DFUS0Haff55bnAbCAaU1wLZPOo9ZvBiSokZIaUScbkFeV80DPgKf0abKazFhR0NaI50yAs2LhzZlEerr94ivGo8/nJG8eanyEaOE+8b9R7F6fiPTrXZ64ByuQWfmFCQstWzNOCf7DpSfwcnPsfYmdhFkurqElr8EY/c/lRQDMtxQYGljXyyE/zLtKpStDN0Oh+xmRR96Dm1GS8s4xDBNI90grp2pLiZAfOCKCF+IXvgS3v78MPZRBZTbF4RlD4lyvg91Qs4B8ws7wkp0GrrcycZ/OYP8uJKPCHsvrcAjVqjmps6kQ8dB1KWzroMeiUK2wgrmLXzQCqzay+tZSaCm+erHztc5LkrZ2mtr+wNjTE=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c845c65c-790a-425c-f266-08d7313ef126
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2019 13:51:09.8510 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oOgAwidSxdREjtW0CAdBMhP1O3K3UTR/dzFBaLb9xo4toEGWPYRULt9vm9NLHs+PcJEkYHlT70q1tihxzgY93T9sY5wlMoGppqOXKPNxoz0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2819
X-MDID: 1567605073-unSBq1WI0bDu
Subject: [USRP-users] flowgraphs not stopping
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
Content-Type: multipart/mixed; boundary="===============0659063012936904550=="
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

--===============0659063012936904550==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340FFE697102E2EB5276D30AFB80BL0PR12MB2340namp_"

--_000_BL0PR12MB2340FFE697102E2EB5276D30AFB80BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I have a weird problem that I've seen for a while and I've just ignored unt=
il now.  I've seen this with numerous pieces of hardware, but I am currentl=
y using an E320 in network mode.  This seems to only happen when I am using=
 RFNoC, so I assumed it was me, but today I was testing with only stock blo=
cks and have the same issue.

The problem is that when I run a GR flowgraph without a GUI in "prompt for =
exit" mode, it doesn't always seem to exit.  I'll hit enter like I am suppo=
sed to, but it just hangs until I press ctrl-c.  Currently I have an RFNoC:=
Radio -> DmaFIFO -> GR blocks.  I have tested this with different combos of=
 blocks and they all seem to have the same issue.  I originally thought it =
was me or the split stream block, but they are both out of the equation now=
.  Has anyone else seen this issue before?

I am running:
[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-36); Boos=
t_105300; UHD_3.14.1.HEAD-0-g5491b80e

and GR: v3.7.13.4

--_000_BL0PR12MB2340FFE697102E2EB5276D30AFB80BL0PR12MB2340namp_
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
I have a weird problem that I've seen for a while and I've just ignored unt=
il now.&nbsp; I've seen this with numerous pieces of hardware, but I am cur=
rently using an E320 in network mode.&nbsp; This seems to only happen when =
I am using RFNoC, so I assumed it was me,
 but today I was testing with only stock blocks and have the same issue.</d=
iv>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
The problem is that when I run a GR flowgraph without a GUI in &quot;prompt=
 for exit&quot; mode, it doesn't always seem to exit.&nbsp; I'll hit enter =
like I am supposed to, but it just hangs until I press ctrl-c.&nbsp; Curren=
tly I have an RFNoC:Radio -&gt; DmaFIFO -&gt; GR blocks.&nbsp;
 I have tested this with different combos of blocks and they all seem to ha=
ve the same issue.&nbsp; I originally thought it was me or the split stream=
 block, but they are both out of the equation now.&nbsp; Has anyone else se=
en this issue before?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I am running:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>[INFO] [UHD] linux; GNU C&#43;&#43; version 4.8.5 20150623 (Red Hat 4=
.8.5-36); Boost_105300; UHD_3.14.1.HEAD-0-g5491b80e<br>
</span><span></span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
and GR: v3.7.13.4</div>
</body>
</html>

--_000_BL0PR12MB2340FFE697102E2EB5276D30AFB80BL0PR12MB2340namp_--


--===============0659063012936904550==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0659063012936904550==--

