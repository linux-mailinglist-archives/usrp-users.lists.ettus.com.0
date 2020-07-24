Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1809822CC11
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 19:23:34 +0200 (CEST)
Received: from [::1] (port=46190 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jz1Pv-0003d2-3N; Fri, 24 Jul 2020 13:23:31 -0400
Received: from mail-eopbgr1390098.outbound.protection.outlook.com
 ([40.107.139.98]:47744 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1jz1Pr-0003Vq-J4
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 13:23:27 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TDbxThNKKrON5hjg/tQqn1hQhKW+MtvBKUTk87SNjlQiT+9/gCBbMjVIz7g7y5dES4QKi0oc5qDzwxbT5lUMGzjHyIMi6Ma48kCdkC8QJVltGX3ecdvnG/t2k6rwa5NOzJ7ciARVEx+YhjAFRtbKieSv3G8spOv7RXiaeiO9lh/dqEEKwnMOpCSjtByRDhhws94SmzfcvhUHof4OYtswoc3Y4cyeW5eU/lcMb+N0Y4m4zGn3PCphOEXX2knlOeT6dmwnzIXzb6JmCOa2R77hmR8+1TvHTtt2is38Jivn+3Hij/1YIkpu5BF/bYzh1S1kAZUbmywf+A8NyKGXGEplnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eF5l2GfhHDyYsyqHBXoXJAuyG0dJ9z3/hySIlOoZEtQ=;
 b=PPsIMk8zavMOEPNr0MxtetBHBSIcHxwcqJbm1kAX2xoCbN4qnmFv4fbCjDfmEcX0LMQI5geA9jtIZR6ND3mYUMIP2quW3TvnzAotHoadtU7CLk2bSJuorbteKs4xzatrsoItjBAjQ9yVTIC88D7xTsXqmziSvAremqikxUVkXz/+SLdxL1VI9h6kTg/4z/TjxIp9WcoKK96188DPFiPZqoy3nWxXafoTA0cWBVdCYjM+spc955UQlLEo4lUFWJEiXGlP9v+lL/56n+7E2bl05WzQOAtz3xH6EuHQvYhQoYNoUsoqU79vOv4y3mjROMuv0x4wVNjIS0nP3W68kzgDFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eF5l2GfhHDyYsyqHBXoXJAuyG0dJ9z3/hySIlOoZEtQ=;
 b=b69zQBIEsnwvCUZNSK+oMtrDm+dcoTHGaM8EuN2zKCiBF++K4nkA+j8n/bTDlNwyJekeOLdUTyKZ9a0irwGo9rTePb9XdbEpHT0I0M5prDsAoiNAMPY62FotDxbJNDt/4geHSCOs48WRXz2Kc3tCM1DXFw4OwCSaFSJFAdeMLmE=
Received: from BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:47::23)
 by BMXPR01MB2533.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:3e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.20; Fri, 24 Jul
 2020 17:22:42 +0000
Received: from BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c50a:f9e6:f794:ccdc]) by BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c50a:f9e6:f794:ccdc%6]) with mapi id 15.20.3216.022; Fri, 24 Jul 2020
 17:22:42 +0000
To: "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: Error in grc but running on terminal 
Thread-Index: AQHWYd5eh7OS4YWp7kiQ26S4zNqnLA==
Date: Fri, 24 Jul 2020 17:22:42 +0000
Message-ID: <BM1PR01MB257714D4AD3404AE8779C8E990770@BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none; lists.ettus.com; dmarc=none action=none header.from=vehere.com; 
x-originating-ip: [42.110.154.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c6389c01-7c64-4467-f20f-08d82ff62c91
x-ms-traffictypediagnostic: BMXPR01MB2533:
x-microsoft-antispam-prvs: <BMXPR01MB2533218ABB7F3AEAC36E367990770@BMXPR01MB2533.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2C7VQuKi0h6ivkCReIog67zdFXFlkmv7cDbPY9uPGvygVT+DSf3N36FWbAMbXLARUKIPdkSD6Q8wIN7MUY7JMX/7V51EX0Q7wt6FNFQtRaIodXCH5NV4LuaqoQOkzyc9fT0NCQK0RKYzRyVkQ446tUhUcjcjqUaPbk40zR7Q8NLN0bk0cf7F3DQldWBbo+rwyGLF2pXsficynlwE18nIaIxjCj6OPajzObqwIux6YRAQ/MlzfJ+mCpmUjj2zswQsPzorSO3QR8OLIVak/jMxPeMS7LLNf0hcg+TDOtiiU8dauCwFv0MVVP7+LDmHmJo5g4J4hIeKOPa+O1WrXe3rknPx37nAdGiZZbgnw1Cl9RL3uRf0T/O+cKvr4OTjEqQRFKqc4mN7bTUENtP36XzdjOENtmXdtwJZanKgfdBIp/IjmqtJ8pAnxC5bSn2otUxqKL1jfUUbpMbhyk3bkdOdvw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(376002)(396003)(39840400004)(346002)(366004)(66446008)(66946007)(66556008)(64756008)(66476007)(4743002)(7696005)(186003)(4744005)(316002)(508600001)(33656002)(8936002)(6506007)(26005)(8676002)(45080400002)(76116006)(5660300002)(6916009)(166002)(2906002)(9686003)(71200400001)(86362001)(52536014)(55016002)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 2o+jUNDlvxpJ0HSIGhLen4y4Z7WEHuSpcdcrnuWOcziTBVETBuFVjdUgIUpafZjIBapeQfbTdib/dQdHXoBl0vJ2HIwq3aJGAUeflGXE1luFV86C+ChC4UkS+IDx765YqtbKbMiI3Vr6o/uD1G4lZ+M1aAF5KGf65VD5A8U6uqNKXo6cL3rtj4DV+CzSxObybGz6V4vcyCgWYsywsg5YQCp7ybd7/7kk5lm2NDceZ/pv3bsh+H9bB78DQPbHyyq1s/GW2TOwmUHMN24wBGORKULGor5qMxuly1kaPDwC7auy+aXX7lS83E38C19H6b5ZnuX7gEtKVMeAp2XuNDpOxuzaj0VI/l0pPtMZvhu5Dc+56eiDr6WsCM8oZUZ2y2gkl7j9ceskmXCHyvord9dUyvCl2jqUyynLCVSaKq9yTzxGfI2+QUyC15XpWxnO6bVOdPjwBf164fc0lLOZdRdbjgKWhMkN5ieJYrIFz+gcR+YJgjKJVuEIDOKYgmfyNIsV
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c6389c01-7c64-4467-f20f-08d82ff62c91
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 17:22:42.8707 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +LposhzrUy49ObfgozzEHdyD1RZRH7gzxn1wq0R8UqSHfKrEKPxNSTF0Hkb+/UfhTKKonk41XD2tMc5b1BbA8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BMXPR01MB2533
Subject: [USRP-users] Error in grc but running on terminal
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
From: "Koyel Das \(Vehere\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Koyel Das \(Vehere\)" <koyel.das@vehere.com>
Content-Type: multipart/mixed; boundary="===============2522912974733110024=="
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

--===============2522912974733110024==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB257714D4AD3404AE8779C8E990770BM1PR01MB2577INDP_"

--_000_BM1PR01MB257714D4AD3404AE8779C8E990770BM1PR01MB2577INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using USRP 2955. I am using the code in c++ given in github to acquire=
 data. I don=92t know data is correct or not but the green light below one =
antenna is glowing. However, when I run a grc flowgraph I get fpga image in=
compatibility error. Why this different behaviour while running from termin=
al and while running using grc?

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>

--_000_BM1PR01MB257714D4AD3404AE8779C8E990770BM1PR01MB2577INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hi,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">I am using USRP 2955. I am using the code in c++&nbsp;give=
n in github to acquire data. I don=92t know data is correct or not but the =
green light below one antenna is glowing. However, when I run a grc flowgra=
ph I get fpga image incompatibility error.
 Why this different behaviour while running from terminal and while running=
 using grc?</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel&nbsp;</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
</body>
</html>

--_000_BM1PR01MB257714D4AD3404AE8779C8E990770BM1PR01MB2577INDP_--


--===============2522912974733110024==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2522912974733110024==--

