Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCB6F9428
	for <lists+usrp-users@lfdr.de>; Tue, 12 Nov 2019 16:27:04 +0100 (CET)
Received: from [::1] (port=50128 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iUY4J-00084y-CE; Tue, 12 Nov 2019 10:26:59 -0500
Received: from mail-eopbgr680102.outbound.protection.outlook.com
 ([40.107.68.102]:5734 helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <ilbeeman@wpi.edu>) id 1iUY4F-0007y7-H2
 for usrp-users@lists.ettus.com; Tue, 12 Nov 2019 10:26:55 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AV9SduAwCPh+Rwu65GA6u8XEhoRjwSZZC9UAgP3BjgfY7jh6AImDfWEgGOTJl679X5pPmST4hLowCNAlgK8ALweFtHOkdjL8/UpqV08YU4dJ0bpny9buBlzyEx5dQO7gOc4InMhRFZKY+DKZ7YLvuLeFBdkjQPc8qFnoeTr1Wouc1jirDlefEvEcIOi8LjenMdptIuCPqOAl1f/8Qk3TWjRN6IzZtIqDE4ZWMZOHxwlSbebhnIF/kZA8SqeBLKiet4wMDl60b5utLEckcotI3dwECnS9n+qo9Ri27qkGUetBQRwx0iJKhnO3RmWHUorADq8i/jmqh+eg7+ZXz4UkuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=whympWwAzE9GkDWCWQiisF2wJSKpQzdcA2I7kIb3Axg=;
 b=VmgjkGhYx71cons3w3/cJg8TTvun5324zv0ke+JXPr3PjnQT6L8OUx2YR2nbUuzhmdO3m93JjAF8kpSJDy6ZMNoqwttJ1R/XJpKI5uc8bYose8ChWxdCehtNTfcwPEMiKZ7jHuASADu5FT9flA58+8VKoBejuLPqz8whrJwxjQ3eGNEI9VC7tsPq/ku1JA+7CUR52loHgXS3xKXiayBbiZeMb9jndaifmqMEYN6NZQHgezIyzbk5jWCpiygX6n+HLLfkbfEjSePMpTMtGYWex8wIqInnwR4zCgNR/WxU2OTmVh1Kl0An+prD3/tlvpQLye+gGbGeYj9qveLBgME9gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wpi.edu; dmarc=pass action=none header.from=wpi.edu; dkim=pass
 header.d=wpi.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wpi.edu; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=whympWwAzE9GkDWCWQiisF2wJSKpQzdcA2I7kIb3Axg=;
 b=bTpym1S4ATiFYyJfvpIBDOJ12sMIdhZMJU1W9oenllFgxUOgkZtrxzPrJl67ApfTJtkbHdTT3PzaBt9TTnvvlQ3SyTKlLloxkibSAguUF8Wpq/YhqGzJgneD/8n6BijrI1v+gIeNVAkgmfk+3m4y+y4t7uFQBcTgn8yKHsuQhlw=
Received: from BN7PR01MB3859.prod.exchangelabs.com (52.132.5.158) by
 BN7PR01MB3617.prod.exchangelabs.com (52.132.4.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Tue, 12 Nov 2019 15:26:13 +0000
Received: from BN7PR01MB3859.prod.exchangelabs.com
 ([fe80::d4f2:a731:c3c7:9877]) by BN7PR01MB3859.prod.exchangelabs.com
 ([fe80::d4f2:a731:c3c7:9877%4]) with mapi id 15.20.2430.027; Tue, 12 Nov 2019
 15:26:13 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Question about the IMU (MPU-9150) on the E310
Thread-Index: AdWZbYFWFx3F+tpRQRaJgGFiWrx0/Q==
Date: Tue, 12 Nov 2019 15:26:13 +0000
Message-ID: <BN7PR01MB3859967050EB771F0A90D7CFCB770@BN7PR01MB3859.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ilbeeman@wpi.edu; 
x-originating-ip: [130.215.223.39]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d3b33dce-9fa0-4fe1-7165-08d76784a741
x-ms-traffictypediagnostic: BN7PR01MB3617:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BN7PR01MB36176021274301C8CB2C96D0CB770@BN7PR01MB3617.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(376002)(346002)(39860400002)(396003)(136003)(199004)(189003)(7696005)(2501003)(9686003)(81166006)(26005)(14454004)(75432002)(7736002)(81156014)(6506007)(4744005)(6916009)(25786009)(8676002)(52536014)(486006)(88552002)(3846002)(33656002)(8936002)(6306002)(5660300002)(476003)(99286004)(2906002)(55016002)(74316002)(305945005)(66446008)(66556008)(66476007)(66946007)(66066001)(6116002)(86362001)(2351001)(316002)(76116006)(478600001)(5640700003)(71200400001)(186003)(256004)(64756008)(786003)(71190400001)(102836004)(6436002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN7PR01MB3617;
 H:BN7PR01MB3859.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: wpi.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jFOodXzMjiYOIjWQdIPkH+FJDDJQzdD37FqitnBIRCEGcUzGzAEwLab/yaJUuVWum14GeOhzet/c/Eujqw/7pq5iyFK2hQX0o4JvfeUT1DI9p2bctwU83pJfoVkekLtwICaZt/mM/fnJmd6jlixOLJn2ZrENHDITGdYZctR0DslIVYGOGL2twZQIvN6XSPRDaiYwDttoCAzh9AFhujbQdDdaQ5p8ln3DP00MueZtq65qqyiMx504WLEyhCiwQJexM8E8K8PkeXYK/hBiqYCB7XJPGlxVkdtUqkX6pY5zsG6AQtHcE7yM0bOljCrU0PR+tsvgH/qSmX/huitXyxP/3dXx5m84QKEZmRCAc2CCklj4FOvAxfb9WeiCw5MFb9QEBvDN1+KXu9aJS0mHztg8rqIGu5Lsosl28r/FmrMHWHbKIaBxHGzcrwGk9wrZOS6Pm8bRr7Jw/Pl1XvDQLQrYH0jJv0d9EA62hPzSce+X3EE=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wpi.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: d3b33dce-9fa0-4fe1-7165-08d76784a741
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 15:26:13.3643 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 589c76f5-ca15-41f9-884b-55ec15a0672a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FRxYZGI+8sltGwBuSjHfuKeH5fY5SDiqbZN3okUQgXgcd2nwXRbav7Lt5BntbZxc2xByxKivxjJPEgvskAo7fg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR01MB3617
Subject: [USRP-users] Question about the IMU (MPU-9150) on the E310
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
From: "Beeman, Isaac L. via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Beeman, Isaac L." <ilbeeman@wpi.edu>
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

Hi List,

I have recently started working with the E310/E312 and have gotten multichannel RX/TX and GPS working, but I can't figure out how to grab data off of the internal IMU/MPU-9150. I found some website (http://gnuradio.cn/en/html/support/en/page_usrp_e3x0.html) that said that the USRP image should contain RTIMULib applications with allow the user to test the IMU, but, unless I am looking in the wrong place, the current image for the E310 does not have any RTIMULib applications on it. 

I want to know if there are any API calls or libraries that would allow me to do development with the IMU.

-Isaac Beeman

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
