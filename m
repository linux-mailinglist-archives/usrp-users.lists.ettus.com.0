Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D17B112FD05
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jan 2020 20:27:56 +0100 (CET)
Received: from [::1] (port=34176 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1inSbx-0005Cj-G3; Fri, 03 Jan 2020 14:27:53 -0500
Received: from mail-eopbgr680055.outbound.protection.outlook.com
 ([40.107.68.55]:10662 helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <jerrid.plymale@canyon-us.com>)
 id 1inSbu-00058e-KM
 for usrp-users@lists.ettus.com; Fri, 03 Jan 2020 14:27:50 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kx5l0MTFeUSzD59YMFU5GikVyL/v6at/8deHjGyRHieAMdoW0kW1lQ7D3Q7NB5a2N04ygKeKZO0DFRcSvPfl9DaeRCdb9LXEepa94Q/eADzpYcFQ7yhdZaLdu7ZL2dBwpsfAv5laEYKoEas+FlfzQ0hx3PwR9X18MgrRNaLMk2AQVrntqlKmURboxPp8PdfnjZk9KxiwL/iEPLUrBtDuEXvMWTdShOdfF3bGYWiBfDi0CEnUl/sTUk6u2j87G6xqw0bCo+XaYjr+JEQMtxIwAETur/WbRlW3BOx8S6INJT5b5Jz1GxUZ+8zZ2180RCcwLinQcgt95GmBOI9h2bcWIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LStnR5EiL1lyG5KealRwe0Ff0Xag6Lr0weLSjRyjGIY=;
 b=m0eUf2fv5xKNhLpcz2rSXrhArFpbueUz6Y/32EbKjKGDA4mnF2qUkZ4n1toA/b3sCrxnszc7iBjFpEscKHKW27UowILarltMpOfWcZqCg2BMHUQwC2QNWh3CpK1iX7MIViin28Ns9j0KUuIz6V4JG4reLyvPDclLGfkwCjVg5eawSF+7xMJh0zMpzuErmx0+77Uv68FVyD5vt90A1grJjgtmp5rdw4urmHkKxowGL9RPR+0feKNjFNHSfWivxoHB6aXpHF3tcTaJKHUWQ0nOPbFFcEQfW/hNjeu3xrnKeKzVJoCmZA4MarO6i1uARQaaNrI7JPz1tDZVjppqGcNYPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LStnR5EiL1lyG5KealRwe0Ff0Xag6Lr0weLSjRyjGIY=;
 b=ITYZQDqvcg49oP2FBYdjusm34ZhG8Wrn/LOgTNkB+dKvwr89FzxyAJjsh6XeDGY4hv83kfpR1fQVTF2ddTe8x/2yGknFhU+7zBo6uguP93VxEtvQ8iQY5XXHyeCvuTxhQZq1jn6XDNhiq7dvJjoc/WXiUzMUoP6wUTJ617OtVts=
Received: from MW2PR1901MB2137.namprd19.prod.outlook.com (52.132.151.149) by
 MW2PR1901MB2187.namprd19.prod.outlook.com (52.132.147.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.12; Fri, 3 Jan 2020 19:27:05 +0000
Received: from MW2PR1901MB2137.namprd19.prod.outlook.com
 ([fe80::c5ee:2e44:f17e:c324]) by MW2PR1901MB2137.namprd19.prod.outlook.com
 ([fe80::c5ee:2e44:f17e:c324%5]) with mapi id 15.20.2581.014; Fri, 3 Jan 2020
 19:27:05 +0000
To: =?utf-8?B?TWFyY3VzIE3DvGxsZXI=?= <marcus.mueller@ettus.com>
Thread-Topic: [USRP-users] IOError: [Errno 2] No such file or directory -
 uhd_image_builder_gui crashes when trying to run
Thread-Index: AQHVwkx5t1k3hE6ezEiGldcoEpdv8KfZUAiAgAAB6DA=
Date: Fri, 3 Jan 2020 19:27:05 +0000
Message-ID: <MW2PR1901MB2137F7BEF77557EA8B539737C6230@MW2PR1901MB2137.namprd19.prod.outlook.com>
References: <MW2PR1901MB2137B5985ADB1D60955CA0E6C6230@MW2PR1901MB2137.namprd19.prod.outlook.com>
 <0986444f6acfa153422d73f3f3787ea1d04ef1de.camel@ettus.com>
In-Reply-To: <0986444f6acfa153422d73f3f3787ea1d04ef1de.camel@ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jerrid.plymale@canyon-us.com; 
x-originating-ip: [98.153.200.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 04cf6faf-1856-453e-28c2-08d79082eac6
x-ms-traffictypediagnostic: MW2PR1901MB2187:
x-microsoft-antispam-prvs: <MW2PR1901MB2187C00FE6EE6529681B5E3AC6230@MW2PR1901MB2187.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0271483E06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39830400003)(366004)(346002)(136003)(376002)(199004)(189003)(52536014)(66556008)(4326008)(186003)(26005)(33656002)(2906002)(86362001)(66446008)(66476007)(64756008)(4744005)(508600001)(66946007)(316002)(76116006)(5660300002)(7696005)(6506007)(71200400001)(55016002)(81166006)(6916009)(44832011)(8676002)(8936002)(9686003)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MW2PR1901MB2187;
 H:MW2PR1901MB2137.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: canyon-us.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k74xIwCJ96WXAbkoPKpJqyFUvxvQDjich+2ERqD9QQ6mJV/nakFu5Jn80LNTMk5KHM0b9I5I6OPY78sy3XVy83+tnj60DNus7xVXSOjeUTvHoZmC7jgXu1Iboolj46nc6OprJ9h7GItTAtAht+iSFY+VXtJTiiXUIQYQR0iG2Yl1yaZbzIhaBef8av0mn7ExnkblLkf2mJlDmM5FiK2/eCm94zhgvhaXbv8voqhSX9lUBEdgZP3ABRv+o6wY1NMoxRJgucS0gRrcnxRzQMxJ9jHMjBcs4M/ABr6GhYOKhnEPOFWLwC0la+xtCx7fqEHSv08AW0Ub8odOXDQKGnVsE/IbJXdhN2sJNDogLO8c9lR0VXEXDCgU2r/G9HbFQvTsikMGEx03snb4vrcTS91EZNYFgKZME7m0pQ0Ydq/9WngsVjzHJEYMZaBXv1yaKZ0q
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04cf6faf-1856-453e-28c2-08d79082eac6
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2020 19:27:05.4818 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qNgbscjrB/+RsE7h+t4mdeMtn+ZV2AJ1a1wM7Y66oTpZfK5CeXa92Aa2ByCutSM1zsD2roO/uqzQyKUOv0qu5svx7JvJOZ/JoqY2vcloD8U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR1901MB2187
Subject: Re: [USRP-users] IOError: [Errno 2] No such file or directory -
 uhd_image_builder_gui crashes when trying to run
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Hey Marcus,

Thanks for your reply, it reminded me what I needed to do. In the version I am running, the e300 folder has been replaced with the e31x folder, so I just changed the e300 target to e31x in the uhd_image_builder_gui python file and it is working again now. Not sure how to check the version of uhd-fpga repo to tell you the truth.

Best Regards, 

Jerrid

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
