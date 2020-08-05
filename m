Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA3223CEB7
	for <lists+usrp-users@lfdr.de>; Wed,  5 Aug 2020 20:59:35 +0200 (CEST)
Received: from [::1] (port=43222 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3OdP-00055V-Bj; Wed, 05 Aug 2020 14:59:31 -0400
Received: from mail-dm6nam10on2096.outbound.protection.outlook.com
 ([40.107.93.96]:36960 helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <bnold@purdue.edu>) id 1k3OdL-0004o7-1r
 for usrp-users@lists.ettus.com; Wed, 05 Aug 2020 14:59:27 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MdYk8LxIc8imKRa04JHvf1+h+nYPWQfP+k+9KnAtlK+MDd3OEOuJIOf9kb1/+CA0L853zXObKvtOd3gDuZqyesviSAYXaH6lAaohf9hTKSWOzVnVj1/2Y4MMMZzcp7cShFnPxdyg0rc/TsOVUd/NCfl883rx2qVk4DLDgTo3OIL8qIcq/XVGQbd+LVzh+HIxh84I3nlxpfTJa9Ob2885s2BiV5235XF4d+vYtw2v/r+e89kKG0YEQGvjXa8h53SvplNMxyD3XLb89XpIDGAnO7sIxpWvG1mJqmVMZz446/B2WwzGuVaJjBNEyc8mPD+JVptbDIcCvAjO4wB1w3eHjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mUvgYyPoOMuoHdfAXjB2fEhvPo1RxiaG785D7ZW48/I=;
 b=VpDJcpXe3sHUtYsS59k49wDGwSc59MrTBccb31nx33aAEBSZQ9O9ZNFFn1QAB0SHvHjCRDDEuYMqtWxwPTnhTvqy4/Hw46TePrWQ31ENOa/PXvqdc4vq1iw5pXwNE59LLbwU29OuLZ0UyWbpi2FJdfFbTM9Ui8l2CVaH08Fin6aRuy2veGxW7hzWmJuZmsXlxfJb+gagxAakKRnzPKn+ReFRDOQKLiZbe8WM7a+mtKGSfbDJ59SqSPRzvadw1crU3nmXwf9pNogJ4X0dzEa6QsSkPEupmdpGUnOvhhS/eh3GFuhkh/riIzqtU8jkyqvvNSz2GSJW1kGBVv+V0OmiXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=purdue.edu; dmarc=pass action=none header.from=purdue.edu;
 dkim=pass header.d=purdue.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purdue0.onmicrosoft.com; s=selector2-purdue0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mUvgYyPoOMuoHdfAXjB2fEhvPo1RxiaG785D7ZW48/I=;
 b=MuJk8YaxgUPoo8P9RBj7Hq1S5M2+fjDVvQUDywbw3hdUZn0B3Np6U9YECl3IHRvCvfCNyZlaWM+ZBPG1S+qVAL+j30eo98xl/lU4/eIOV+Y6w4RiozwLYGd7lptX+IkexPIKYvzcDTUzUbAQnKt4iv4cKLOyD/bU72pn80ZMe/U=
Received: from BN6PR2201MB1555.namprd22.prod.outlook.com
 (2603:10b6:405:23::19) by BN6PR2201MB1747.namprd22.prod.outlook.com
 (2603:10b6:405:61::38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.17; Wed, 5 Aug
 2020 18:58:40 +0000
Received: from BN6PR2201MB1555.namprd22.prod.outlook.com
 ([fe80::795a:4d18:5ee8:8f78]) by BN6PR2201MB1555.namprd22.prod.outlook.com
 ([fe80::795a:4d18:5ee8:8f78%9]) with mapi id 15.20.3261.018; Wed, 5 Aug 2020
 18:58:40 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N310 10G ethernet media converters
Thread-Index: AQHWa1nj0swlb0JGpU+/bZgalYCSpg==
Date: Wed, 5 Aug 2020 18:58:40 +0000
Message-ID: <BN6PR2201MB1555037426D1EE0520DFCD86C84B0@BN6PR2201MB1555.namprd22.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none; lists.ettus.com; dmarc=none action=none header.from=purdue.edu; 
x-originating-ip: [192.92.192.136]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0521b398-3deb-41e8-83a9-08d83971912d
x-ms-traffictypediagnostic: BN6PR2201MB1747:
x-microsoft-antispam-prvs: <BN6PR2201MB174767852A3C2AB62C41BB5EC84B0@BN6PR2201MB1747.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m/2aABws0IPwEIXkUtEk6JBhcPh4rcuqa4QBebkNQy7A332rBKYGN+B4Rko6OsqQ2d2E7UpuQDAFwluCoSiyyz3L2r/C5BwUuaQ/GDehjJDTpP98YY2MmXQw5PXsvyxvYmVqIsWsm2R160mqpb3RO6WjfVKtjRGockOrdUXvllOkCC+xhoE2teprKmHFmr7qbZJMyxW8T6H/hDkc2No76YhcKhgiti9oj6x5i26nur4B88JN6QyihykyBmS+gLieHBGN1bbW2dQifcx1cYRqjSp7ONH1BC/F8MHtKDd66SFC94g15eFf/078aMFys2tnh+74dXVjWGECQR6iNbXJ8w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR2201MB1555.namprd22.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(366004)(136003)(39860400002)(346002)(376002)(66556008)(5660300002)(83380400001)(64756008)(6916009)(66446008)(4744005)(66946007)(66476007)(7696005)(316002)(33656002)(6506007)(19627405001)(86362001)(786003)(71200400001)(26005)(8936002)(478600001)(52536014)(8676002)(2906002)(76116006)(9686003)(55016002)(186003)(75432002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: KIGGJwaEd3m0v0RGmT2nq6Rbm7Weqn+cXBE2TzMNa4lG/pmc7H8ho43FkkOOF9qnpfz4Wh3zQ9oGCC1cqWbr4xTR86O/w521mOPrJduTpXY4UKsV0KVgq3k5fUrznWl7UzGk02Vbr6039tNmD0Xan1ktGJmQ+MKKsYwdFi2uJFN3/sBqMaa8ETXlyZxR2GdTsZP5vbhP+UftY1aUAB5zK7iE6z4PiSUfIfJ2vmyV9OGmcdY9GotL6v1VtnwCYUdseLeABLobFIoEgZaC+7f4lgXl2YaB2kw56VLelsarascOSr7IIJXghurwibvRFx7VXxXL3W6aX6eT/J2uIvfa8XhYuPsXOTGqxFMQdNJXFyUbGRXqBY3SVlk/q1kiUUHxQYK8f4Jf0gMyI+nBNmk7xwOLVChhuIOwKvBjmWYnWC1IkB3SfwUQmP3/4ZElEVQaPfY2GH1P5+d5HDMzWVQfbQSu7dB4XQStQJnJjH+WMg9vVourn12i855Jt9kpmb6rwnRVOI922bOdSLl77J3iQ5MWnhxeUPGGhw/zsbggF3ljq8WrVlJZ/SK4iSJQvZjU+lEV8Fyt6WEzyj5rswtRc1Pa+Mc4GiX4EmruLTVsXgHbUlLe6r7kZtbr8M2aWMZJe0cqIpzyEhCWP9uRijht8A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: purdue.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR2201MB1555.namprd22.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0521b398-3deb-41e8-83a9-08d83971912d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2020 18:58:40.1002 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4130bd39-7c53-419c-b1e5-8758d6d63f21
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KvIYWC8cMtHVVAy8+CzqdbQthzbMIWCTG7PmaZl8n6/O4fDDmFkfDiMw0Cq9n5u/YOEShPAtn5JK4hd60Xrs1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR2201MB1747
Subject: [USRP-users] N310 10G ethernet media converters
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
From: Benjamin R Nold via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Benjamin R Nold <bnold@purdue.edu>
Content-Type: multipart/mixed; boundary="===============0790779269522847269=="
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

--===============0790779269522847269==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR2201MB1555037426D1EE0520DFCD86C84B0BN6PR2201MB1555_"

--_000_BN6PR2201MB1555037426D1EE0520DFCD86C84B0BN6PR2201MB1555_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi USRP Useres,

I am planning on using a N310 in a system where I need to run a 10G etherne=
t connection about 30 m outside. I am thinking a good option is to use an o=
ptical connection to do this. What SFP+ adapters to optical are compatible =
with the N310? Are there any pitfalls/limitations when using a SFP+ to opti=
cal converter? Do I need to consider anything extra when selecting a 10G et=
hernet adapter for my host PC?

Thanks,



--_000_BN6PR2201MB1555037426D1EE0520DFCD86C84B0BN6PR2201MB1555_
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
Hi USRP Useres,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I am planning on using a N310 in a system where I need to run a 10G etherne=
t connection about 30 m outside. I am thinking a good option is to use an o=
ptical connection to do this. What SFP+ adapters to optical are compatible =
with the N310? Are there any pitfalls/limitations
 when using a SFP+ to optical converter? Do I need to consider anything ext=
ra when selecting a 10G ethernet adapter for my host PC?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div>
<div id=3D"Signature">
<div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<div><br>
</div>
<p style=3D"margin-top:0px; margin-bottom:0px"></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BN6PR2201MB1555037426D1EE0520DFCD86C84B0BN6PR2201MB1555_--


--===============0790779269522847269==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0790779269522847269==--

