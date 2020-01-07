Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D242B132CC5
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jan 2020 18:14:44 +0100 (CET)
Received: from [::1] (port=52650 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iosRC-0000rf-Rh; Tue, 07 Jan 2020 12:14:38 -0500
Received: from mail-bn7nam10on2087.outbound.protection.outlook.com
 ([40.107.92.87]:6241 helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <jerrid.plymale@canyon-us.com>)
 id 1iosR8-0000jG-QZ
 for usrp-users@lists.ettus.com; Tue, 07 Jan 2020 12:14:34 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ln3o+FRycttDrNjoG4/APPpQ35axTvCHWgF3nrLYNaokm+pNio6+CReNzx1BiblOS3xV+b14LCB5zIfRZXMwko4urlI7Jl2StMIzKvJedqb2M9Z5MIi/GJicKAapImlU8FVKlX+3azc58yq4b9jNxN82gJlkBDfnvqpEsV90aQgSPW96R83Tt8dhDhzGr5hYlo8aj+AH33KYiCh53x99zaAiAJOcz95eaSx3zTCH9WV762npNMt9e3WXtDj8Lo0KVBoaD/W3elrKX+ie8d3fodR0x5c56mO3h9qd/f8hXFJnBY5iiHPgxrfurzoYks0OY+pIHYDTbaWdEnK8VTvAXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XqSDvGQiEheboqh5T3bv3ni5vrNkUQwT3kwBxWn3dVo=;
 b=ZZExbwgG6l6xqvy7EO+LDeHT59qvIevF9u3ExtRta1acDq7a9EZ8iZtPknfzOzCesCmaGMAWyOs9GkmsfVZ+lW8Wrc/Y33eCSPC38v6zW2v88NBP9G79L69aUYe/hFZnS+aoklavmZ62yed6g5s7a/i9VNviAseQk1GTdZsTEKbDJLWVkPn21Z6Qlwe6zcSlo4HJwNGfSJbnh68ODGgUn5L27Ku0FtFQeTq/dzfKSnXjKudg/dCb7Ht0Tz06aWnVTwD+WzxtGgsCw1UJHSB/14BOXwb+Rcysbh7UFTdn3j5vye+rrJEE+EUb4eP75O6qc8Xk76Z0F+7uv+q34PSjXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XqSDvGQiEheboqh5T3bv3ni5vrNkUQwT3kwBxWn3dVo=;
 b=jh7G9429La/EXSuziBJlfGIFZk2T8i1LlKKm6qTX7rO+/Z9nlbczNsE2pwpZ4qXx5M0fY+0iu0Hdtrql99BYK6oW+FIDhBFBshz/R58pcj2t5tllUTAeOhIr9EemYJ161bPF/8Ls0FYsv6SBPALaaarcK4escW7jPRl5HzqdlOY=
Received: from MW2PR1901MB2137.namprd19.prod.outlook.com (52.132.151.149) by
 MW2PR1901MB2092.namprd19.prod.outlook.com (52.132.150.140) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Tue, 7 Jan 2020 17:13:52 +0000
Received: from MW2PR1901MB2137.namprd19.prod.outlook.com
 ([fe80::4c9c:7120:d637:71c5]) by MW2PR1901MB2137.namprd19.prod.outlook.com
 ([fe80::4c9c:7120:d637:71c5%6]) with mapi id 15.20.2602.015; Tue, 7 Jan 2020
 17:13:52 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Building RFNoC image with default blocks fails, [DRC MDRV-1]
 Multiple Driver Nets: Net has multiple drivers 
Thread-Index: AdXFfM1o4QRwQMlpQLiONM7mbV6Z4w==
Date: Tue, 7 Jan 2020 17:13:52 +0000
Message-ID: <MW2PR1901MB21376E15E5861E7F3CA62EDEC63F0@MW2PR1901MB2137.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jerrid.plymale@canyon-us.com; 
x-originating-ip: [98.153.200.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 323aca95-5e74-4a83-3a9d-08d79394f83e
x-ms-traffictypediagnostic: MW2PR1901MB2092:
x-microsoft-antispam-prvs: <MW2PR1901MB209274D582F95BF1F064E79DC63F0@MW2PR1901MB2092.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 027578BB13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(376002)(39830400003)(396003)(346002)(199004)(189003)(86362001)(81166006)(7696005)(66476007)(66446008)(66556008)(6506007)(8676002)(8936002)(4743002)(76116006)(81156014)(44832011)(64756008)(6916009)(71200400001)(66946007)(55016002)(26005)(2906002)(5660300002)(4744005)(186003)(508600001)(316002)(9686003)(52536014)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MW2PR1901MB2092;
 H:MW2PR1901MB2137.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: canyon-us.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bT3YBbKmguB1krIzd9GQKcq02b6fsCpHDhWBbgvD8f/MNx/Lqq/Mjj9/Lzb/eUC9aHwTiUOq0zPUwVjSdGj0BrxS1SfSf8sGiiu43B1QLIVQlK+ChToUL5k6/QzuCiL8Oh+jdGyLOadm2G+LxHbAh/+fCk0eBeGKITYXhzoM7/dSYuB23kANfatAiQE24VU12aLdVOXW99YCJ7QUCGdMGF5On3tJTIbBoHrBLwpnm0KJogxee+yaqiNb9cEDSZaNskoQvVC4teUStJkWTtKnqS2mhjhkYr4g03oJkfcH3YAdEa3Kac4/G6R7Z2KLWQUNqt6OAgJToLy1sJQ2SS0QV5Ymayu1xLweA8708wt6ArPPonCEj/6ODf+JFs47BzHOsmkYZPgqUCGn6HLDd910thbqX60drVsbzZ4OvMUmjRW9fDEmpQgpYHu9qxP98zbQ
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 323aca95-5e74-4a83-3a9d-08d79394f83e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2020 17:13:52.3356 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8138Y596VqxF2Bb9yY0TlMN3pMHDNVysSLwg3QxrRP56dUKHkkNi3WWH5m1SfPxmQUIlhN72PDOcUSrZnQDC7UiGp22wuiqYZBiTFgGVD1A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR1901MB2092
Subject: Re: [USRP-users] Building RFNoC image with default blocks fails,
 [DRC MDRV-1] Multiple Driver Nets: Net has multiple drivers
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

Hello Cherif and Brian,

I did find the clock signal re-definitions you were talking about in *rfnoc_ce_auto_inst_x310.v*, and I did notice that the file is generated by the *uhd_image_builder.py file*, so I looked in the *uhd_image_builder.py* file to find the code that generates *rfnoc_ce_auto_inst_x310.v*. I was able to find the signal re-definitions in the image builder file, lines 43 and 44 I believe, and I changed them there.  So far that seems to have fixed the issue and I have successfully been able to build a custom FPGA image. The one thing I have yet to try is building one with a custom RFNoC block. Anyways, thank you for the help and I will post again if I run into any other issues.

Best Regards,

Jerrid


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
