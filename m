Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0CBDF346
	for <lists+usrp-users@lfdr.de>; Mon, 21 Oct 2019 18:37:24 +0200 (CEST)
Received: from [::1] (port=33566 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMagI-0001ek-QC; Mon, 21 Oct 2019 12:37:18 -0400
Received: from dispatch1-us1.ppe-hosted.com ([67.231.154.164]:55764)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1iMagE-0001V4-IA
 for usrp-users@lists.ettus.com; Mon, 21 Oct 2019 12:37:14 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 5E66CA87D3
 for <usrp-users@lists.ettus.com>; Mon, 21 Oct 2019 16:36:32 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam03lp2050.outbound.protection.outlook.com [104.47.40.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us4.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 7E632B4008D
 for <usrp-users@lists.ettus.com>; Mon, 21 Oct 2019 16:36:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EyXbBSaXelzlKY7X08XhK+tuzTvoA944Ief2SVdxQWsdYfv9fazNMoFx7h/A6NLDohKlMwX8mvUI/If+8EYBaUODCWEJ/7BUBHlaMGSC7cIovipcAfDIjQuD+iRofkgZAfQkc4aRV7AAVMlqc7Ol5dVnm0Lhy172H3n6nbRfaOtgEi/FCFLGE4LwCQ6CL+KCMmTNRSU3UU4SYW+0hHiW9CCx7K6isdiL8RnqA7HSmmmU6f2MH/AU6ao8VoSNDjQZdfsjAxlroDQOwMVhIUBt6uioEMVSSE+HOYV7PYQDFHtsTmgNk8NYjLsC7Q4/REe025epiyE5WhnD2Uga+VsBmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QOus4ReH3G4tTa8cmn5Al8Hynt/g1I3UYIS25QRL5vs=;
 b=LS2AR7kQYh5+6/dJ3K2meAhgY5qDGiRihQUw8bikPA8eX86sMeNjGKwAiBOqDHBR5KNr+eWykIc5B7sge82y09bsEOgfAO2CnupBZ8CaQU4QhTsQa0TBIWb9UyZBM7UDFR3OtkCc8V9Bh1R9hZMJeyBEi2Fj36YqLDvLb08XvYcAB11I/Z9B8dadkD+4nq9okr98CpwHQSTITer/VpjUAgxRs64sXfqSgJhay4DCEsKRWV7rw3WtiQGKSX7VPreUFATbkep6J7bFbdkb0LIelCcXcGRgCcG2q22RziqpLIA4kiopxcI7x14XmwlDl+8ZCmas/AqN8ocY81Ss2rkO2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QOus4ReH3G4tTa8cmn5Al8Hynt/g1I3UYIS25QRL5vs=;
 b=e6J0fPbG+iybgtG5YWmshEOa4gPTzXV20TqWApy+nc/69CA0akRwF8taHM8EfdUtnSpxk6I0mRAxPEB8pbJ+SzXM61P5jow27dd/Z9cXlOQ+8FLXV7K6rAASvzZCpcSRf0Cpkns0l9OGu8bBKfK6LbX04+z0qvvMTEo2A8j9TD0=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.11.30) by
 BL0PR12MB2500.namprd12.prod.outlook.com (52.132.11.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.24; Mon, 21 Oct 2019 16:36:19 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::d017:bb2f:c281:2400]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::d017:bb2f:c281:2400%5]) with mapi id 15.20.2347.028; Mon, 21 Oct 2019
 16:36:18 +0000
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: python 2.7 on N310
Thread-Index: AQHViC1YDwyTWLH5IEmENGsqVWuv5A==
Date: Mon, 21 Oct 2019 16:36:18 +0000
Message-ID: <BL0PR12MB234040B48E118FC3E23DF5CEAF690@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 863a91b2-2b0c-4259-1e77-08d75644ccce
x-ms-traffictypediagnostic: BL0PR12MB2500:
x-microsoft-antispam-prvs: <BL0PR12MB2500A342B115113327825257AF690@BL0PR12MB2500.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0197AFBD92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(39830400003)(396003)(346002)(366004)(189003)(199004)(86362001)(6116002)(3846002)(33656002)(186003)(66476007)(66556008)(64756008)(66446008)(74316002)(66946007)(7736002)(99286004)(7696005)(6506007)(7116003)(2906002)(76116006)(316002)(102836004)(6916009)(19627405001)(26005)(486006)(9686003)(105004)(81166006)(508600001)(256004)(8676002)(5660300002)(52536014)(81156014)(4744005)(8936002)(25786009)(71190400001)(55016002)(6436002)(71200400001)(14454004)(54896002)(66066001)(476003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2500;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xP2901hK81P1eUGFrgszdm2WYRKF0lb+F7R+LuLGcbWkIcEAfbR2k6xTZCHXOrwUiixTQ/M8w71JKI7EVJ7XvZKbnsLqnBn6Oi8odaEvsHXBYlWaUrlk5b5GQwSuD+QZyLPpPVRMrCfj9CgBPrA+7O3JVAUF2c6mgMJoXxiy531VLu12poXfkV+EupA8UVIN0U45xHqhXeBG0ck8lB+FlLjokIZMM0TUR8IOmEhW6Bc+WvFxYv9Ysq8y/MPXUHJMir5Ny6XIXl8dOOT6pI9+fyeQ8zy70yRVR1P62sa1IvJwAKdb7DaAI+EoK5xsXsQURsOkQEMGw0tArnIyLAEup6WT6Q71i5kFZBNa3AjkpdtckjSyBheZFDLJ5InwcC6a6C6Gq2qUcdnEYa6vTx0YeV26ldRYiv6m232uCDs9uEinz3wv1+721E9eOtDjJv4o
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 863a91b2-2b0c-4259-1e77-08d75644ccce
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2019 16:36:18.8200 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BgFtz1+o7EIgnJxHhTHeWd6rEMR2tvs51zl8pqBeVVpKU+Nd6aUWOhD1IPy3CNiMrSn2bk5YswpYvv/PoThlcHyBNhAXNV/xhqJwCpcpLOs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2500
X-MDID: 1571675782-ucaVDuxOoPSG
Subject: [USRP-users] python 2.7 on N310
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
Content-Type: multipart/mixed; boundary="===============0357236417135438052=="
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

--===============0357236417135438052==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB234040B48E118FC3E23DF5CEAF690BL0PR12MB2340namp_"

--_000_BL0PR12MB234040B48E118FC3E23DF5CEAF690BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I am just starting to play with the N310 and I am having issues with some o=
f our flowgraphs that work fine with the X310 and the E320.  The issue seem=
s to be that there seems to be minimal support for python 2.7 for the N310.=
  Is there a toolchain or anything else I can do to get better support?  Th=
ings like threading.py are missing and only in python3.5 for it.

Thanks.
~Jason

--_000_BL0PR12MB234040B48E118FC3E23DF5CEAF690BL0PR12MB2340namp_
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
I am just starting to play with the N310 and I am having issues with some o=
f our flowgraphs that work fine with the X310 and the E320.&nbsp; The issue=
 seems to be that there seems to be minimal support for python 2.7 for the =
N310.&nbsp; Is there a toolchain or anything
 else I can do to get better support?&nbsp; Things like threading.py are mi=
ssing and only in python3.5 for it.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
~Jason</div>
</body>
</html>

--_000_BL0PR12MB234040B48E118FC3E23DF5CEAF690BL0PR12MB2340namp_--


--===============0357236417135438052==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0357236417135438052==--

