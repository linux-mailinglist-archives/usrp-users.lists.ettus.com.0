Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFBB3FC785
	for <lists+usrp-users@lfdr.de>; Tue, 31 Aug 2021 14:46:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B14E438460C
	for <lists+usrp-users@lfdr.de>; Tue, 31 Aug 2021 08:46:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=lunet.onmicrosoft.com header.i=@lunet.onmicrosoft.com header.b="RixjlEg8";
	dkim-atps=neutral
Received: from mta-2.lboro.ac.uk (mta-2.lut.ac.uk [158.125.160.48])
	by mm2.emwd.com (Postfix) with ESMTPS id AE771380ECD
	for <usrp-users@lists.ettus.com>; Tue, 31 Aug 2021 08:45:19 -0400 (EDT)
Received: from itsex-2.lboro.ac.uk ([158.125.160.17] helo=itsex-2.lunet.lboro.ac.uk)
	by mta-2.lboro.ac.uk with esmtps (TLS1.2:ECDHE-RSA-AES128-SHA256:128)
	(Exim 4.94.2)
	id 1mL35e-0005ro-5r; Tue, 31 Aug 2021 13:42:17 +0100
Received: from itsex-2.lunet.lboro.ac.uk (2001:630:301:d314::160:17) by
 itsex-2.lunet.lboro.ac.uk (2001:630:301:d314::160:17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2242.12; Tue, 31 Aug 2021 13:42:12 +0100
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (2a01:111:f400:7e0d::209) by itsex-2.lunet.lboro.ac.uk
 (2001:630:301:d314::160:17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2242.12 via
 Frontend Transport; Tue, 31 Aug 2021 13:42:11 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AfaaaHbSrG4m2MQzW4tKxbMc6yv/nKz59I1GJfJcj39tvcaEP61IhszAq9ezLdu2QRtHCr1rQ89Z6iRR+sp/A3EsTJD4lNK7W1Nl5WosCH0Xkc/HjFUSpBkPSlCA04p40z39UOop4jOV2A/znRfIfOVkO2GBPqq7olLjgARwkgi2iMb2L/Zt3KFxzRsWzAcelk0mp5241+HIdOHKc5cGqVHLO8RtcQnaYgBK3ne3m8fW9PU27y+DROodkBWz4Q8O90+2Bl/NUYu8yLMUzgj2xnKA62o7oenPKoonqjdpg1eBhlotKxj5Tznn5fzVbpj3wo5PfcT+YZ4ocBQtI7cQHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2SWD9eQrNGNgtQiVinxVoTI3kCKTPbgIUu7R0yb9Ro4=;
 b=CXWgCN4qiFf20+mr0g9ICnxUe8nXY0o+rcfk6UNbKWgTevuq6tYZ4WQZTNGMWMWD1aOAtgF6AZ2kmex1RgG0lZi733Oii0kyKxmefRcjNAthH+9gmMmW+ersPy+zr/qcc2gL9BU6GxEltgFeMwhF9aXjBCwZ4bim8eBzmx5f7aqAiBT6pXltONST7q+VJzkkA1/F39BsNfm07DY02raDD6QdJumnc/fIoY7YxxJpX4WRLKUEdMw+fm6JldmYQAK1e9nj3ku4rN0R7HT25kvGUMKPdrfsxmIWqwJO2GnHdAfVB0NUAicOkPQVktSFU8JHVeb0n5l47QM3oE4irP7uEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=lboro.ac.uk; dmarc=pass action=none header.from=lboro.ac.uk;
 dkim=pass header.d=lboro.ac.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lunet.onmicrosoft.com;
 s=selector2-lunet-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2SWD9eQrNGNgtQiVinxVoTI3kCKTPbgIUu7R0yb9Ro4=;
 b=RixjlEg89ai56gxWljRDJNGSROtf7GoeNqOqitQ5kn/Arc4MFvHoQc5ZSeAf1R0kT3quCQS9SjogYUzeogWJ0WwnOC6b88HCA54ABA7bC5J34TpLsuZelbtU9LFW2a2D0Q6O2hHNzgJGRGy0aSrbLO9OXSrrN+gv7Kd4ohWLdkk=
Received: from VE1PR04MB6653.eurprd04.prod.outlook.com (2603:10a6:803:122::28)
 by VI1PR04MB6928.eurprd04.prod.outlook.com (2603:10a6:803:12e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.23; Tue, 31 Aug
 2021 12:42:04 +0000
Received: from VE1PR04MB6653.eurprd04.prod.outlook.com
 ([fe80::ec35:f7c9:59f6:2af7]) by VE1PR04MB6653.eurprd04.prod.outlook.com
 ([fe80::ec35:f7c9:59f6:2af7%5]) with mapi id 15.20.4457.024; Tue, 31 Aug 2021
 12:42:04 +0000
From: Ming You <M.You@lboro.ac.uk>
To: Cameron Matson <ncmatson95@gmail.com>, usrp-users
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Cannot Ping SFP port
Thread-Index: AQHXnfj1OJnfwqtFjkaJBfq0qP3+QauNjBmd
Date: Tue, 31 Aug 2021 12:42:04 +0000
Message-ID: <VE1PR04MB6653860A9AA24499243B8395BACC9@VE1PR04MB6653.eurprd04.prod.outlook.com>
References: <CAGLr63voh9G8EnOVZMi6phwk+5rPkY7zBnuX5pu9szfdrL_KmQ@mail.gmail.com>
In-Reply-To: <CAGLr63voh9G8EnOVZMi6phwk+5rPkY7zBnuX5pu9szfdrL_KmQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=lboro.ac.uk;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 080c58ed-64d9-4993-0322-08d96c7cbca9
x-ms-traffictypediagnostic: VI1PR04MB6928:
x-microsoft-antispam-prvs: <VI1PR04MB6928D0450D1414876A188AB1BACC9@VI1PR04MB6928.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pbYjqHKpIdcxbfHAYsyIJKehZFEhmzLQWvR3pVhHmH9JNhNppHjoWrfChLzSbB6ukAFMovgKl3x6qCxRi86Rb1QaCgkB/Nv+5FFpsdz0ZpoJ5YvH467N+gvRew/w6eBa31xRItr/7loVNDmd77Eq15POCrpGIB9T93bGgDSNLaxq5WT8Ypxty56/Cz97D/rNq7vSzm1l62WA7or0OVynzzB4IizM9uwLyLMzwvOuevGSmxbMKBURAknuMq/PZXL514wu4vOqVAVyLph25TegH6hSrptjefYXIbcVsTemZRLJfRR9C5/Ux9AQwwPFvMBGxqmHzfKunI8E3ajIsNP6X9oUbo1pggabc/JhzEp4ma3cELTfXMvyx7O3Ux3yWodM98vbMFQ64kQ4bWv5uhokl9Q96BGy0NUYkATj1xCRP+TG/9FSWUHYyUPrFBdfMzI4M2mCgjhPqB4/jm+0zdwrc4mlSS/wNgG6LOE8kDlGslM0GdoPzE+WXwXtYS0WwoR/fCKhTTOaZLFJF5uObV3O+B0xOyzAHABRYw5wLYbP8TPifBFvQgYAlIH2o3ncfD/Kka1qTt5CyAXmb3lvSoPv3p6ryVI58rvuOuD6G/wt2mmHPJryRWZQ9sea1orsk1dOzBcMW8CP3eYXrEGcpXN6J360qQkohLCDWxCjOUnv/MeNm/dWFoOnwIobByFHiwoJgQqdAED5ND2hin/b4pjQMOSP2AGlmhczcqVwRKnp19BWzxe8dunS0Qz4e0mKFf2OxeCh61GTNJTCk7lDlnMYDw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6653.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(376002)(136003)(39860400002)(366004)(396003)(8936002)(26005)(53546011)(76116006)(55016002)(316002)(122000001)(91956017)(66476007)(66556008)(66446008)(478600001)(6506007)(186003)(8676002)(66946007)(86362001)(7696005)(2906002)(9686003)(83380400001)(71200400001)(52536014)(38070700005)(55236004)(38100700002)(5660300002)(64756008)(786003)(966005)(110136005)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?0Ws9WFzY1KCNLqYRNG1e2HMNtM5QpQgHi4L7UlLGbU/229woZjVJuGAPJi?=
 =?iso-8859-1?Q?BNWRP+DWJYSsbxlt0KlY26OdFucS7VftQMwLoWJFtYvt35psdxJgsPIGtq?=
 =?iso-8859-1?Q?yPrXTiE419dQTtjQxoxEN7Bj4M83JPLd5clwH+B1GawTV6HjOGpmi+cgzg?=
 =?iso-8859-1?Q?8OmNoNbR9livj5/O8zsfLkOua8cK2l7GmzlfS1tYDlaMecxkARbGGi12wd?=
 =?iso-8859-1?Q?m8H9ooJNHRqf0nQPaD9NoxIJJOcRck4XNgyWDEQ+bPjxa2fSDzAO0jrL5B?=
 =?iso-8859-1?Q?ojP+9pJYMA8dASOj/lziKjAHBqCDY56yZZLGaVxBtAt6a88jTwv9hCmNXF?=
 =?iso-8859-1?Q?LftmvLJzJey+TKAUR/4hcTxikalcuux8AfturwOzO1VA3Bwkh+kBaT4w05?=
 =?iso-8859-1?Q?DpholF56Ye6I3POX7O/zHpSDS0G5/4emMcztihehkKVYwyf40cDkhCldEh?=
 =?iso-8859-1?Q?JjM4Wh5C+P8gAxi09VxwjS/TeBgVCzC8ArDS/NXtMaFnQNP6lRhCgYikBY?=
 =?iso-8859-1?Q?VApHKQG2nN6BOZBeuN3+IqP4eROoie6yVU4LAkajcw+U4YCMjcoy5yZGVH?=
 =?iso-8859-1?Q?AmPYTgKZbSTidPBwNZz7JMwHBQ+opsmv2QocdrPRGpwhYMtVcYqBi4oe9E?=
 =?iso-8859-1?Q?c8frz8VD/jOFGkEQh5E3hBd7I1xblCtthvUQDoqpe0pMgzCSv4tdWc1RaV?=
 =?iso-8859-1?Q?+bhhr0jHfja7PPKFoonBQZqXdKYZsWiCmL61o2Lq0FyfvREXWIgFmHkI3p?=
 =?iso-8859-1?Q?gvZZGrSReBQV4EE+0EBnjA8Ic9pop19kNjFz+B5zi7K42gJtYseVqSgcHD?=
 =?iso-8859-1?Q?qHi7zm2y6KdXYP7CQruvsJo+znL0UMvoYqw2nuwCj1FMK+/1Z3eEtkqrWs?=
 =?iso-8859-1?Q?RqqtcbgYDMewP7iIcwMz4Q+ZbV1h1S8YRJPzLjIqZyho2xoLML7NSFd1O3?=
 =?iso-8859-1?Q?nevh0pduy+gxVzj8yGOXLEHfAO0Adz8vIwU1vlZWem0F6Yb/JOfTMJe0gt?=
 =?iso-8859-1?Q?oKbqcMQfdTjC2lspv6j72nzhAKRQtmCWAuIfMoPu/7Z1Io+3zhpOcfIqPJ?=
 =?iso-8859-1?Q?2Ohg6yvbDcWcYgBAVKWiH4TNUA/BNOewj8xZAYpFBmGczCS6gm/bl4o+Q4?=
 =?iso-8859-1?Q?xyZfk8M1SqpdAAseN92wNKa8yjln2IY5aBGoSOFunnLfrjjhDqO8HTdeeA?=
 =?iso-8859-1?Q?+LEqg4PLoEEMWyuSiAzb5t+Z+1hXEKM1AGpohx8uX+FoJv+2wM32pdQx9Y?=
 =?iso-8859-1?Q?2IErC91wiylBJkcFmNY7kNm9CpkuMuRdNBqk2NoNHlspGzc1BrFpls/1Bn?=
 =?iso-8859-1?Q?W5+6/WTnS/tKctckyU4oV+Qw9tBHHEefJI/R618dYsV2llE=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6653.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 080c58ed-64d9-4993-0322-08d96c7cbca9
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2021 12:42:04.4874
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cf264fc0-aeb8-449f-9054-82ce4454084b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qu2GzIWHLii/cOck3WA8E3jPaO7K80nWBHmonlXggeWKc1kNHZKLsCwsv/g84nP3QNyG+xoquFSSaQ2EWR1dBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6928
X-OriginatorOrg: lboro.ac.uk
X-Scan-Signature: 0e3b478e77e5bed22ac1e2af09d0fd40
X-Lboro-Creds: scanned on mta-2.lboro.ac.uk
Message-ID-Hash: V3AVXCWW3CGXJJFSYPSDJVKZ4OAVYS42
X-Message-ID-Hash: V3AVXCWW3CGXJJFSYPSDJVKZ4OAVYS42
X-MailFrom: M.You@lboro.ac.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Cannot Ping SFP port
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V3AVXCWW3CGXJJFSYPSDJVKZ4OAVYS42/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Cameron,

If you have ruled out the soft-issues, then it might be hardware compatible issues. As far as I know, there are some compatible issues of the usrp with "some" sfp+ adaptors. 

I've used a few kinds, some working ones are:

1. Avago ABCU-5730ARZ (provided along with the USRP purchases, for some models)
2. FINSAR FCLF8522P2BTL 

One not working after all efforts (similar problem as your description, green light on, no ping through)
1. ProLabs MC3208411-T-C

Hope this info is also helpful to anyone reading this message, at least to rule out one bad choice and a heads-up about the potential compatible issues.

Thanks,
Ming




________________________________________
From: Cameron Matson <ncmatson95@gmail.com>
Sent: 31 August 2021 00:41
To: usrp-users
Subject: [USRP-users] Cannot Ping SFP port

Hello everyone,

We recently moved our setup, and ever since setting up in the new place we've been unable to ping/connect over the sfp+ port.  We're using N310s with the WX fpga image and Ubuntu 20.04.  I've checked and as far as I can tell both the N310 and the nic on the server have ip addresses on the same subnet with the same subnet mask.  When I use a sfp+/fiber transceiver at both the green "link" led lights up on sfp1 at the N310, so something is working.

I've tried going through the steps here to no avail:
https://kb.ettus.com/Troubleshooting_N310/N320_Device_Discovery_Issues

Does anybody have any ideas of things to try out?

Thank you,
Cameron
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
