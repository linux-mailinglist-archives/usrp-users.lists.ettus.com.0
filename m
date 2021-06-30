Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC333B7FC9
	for <lists+usrp-users@lfdr.de>; Wed, 30 Jun 2021 11:17:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 82F94384272
	for <lists+usrp-users@lfdr.de>; Wed, 30 Jun 2021 05:17:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="U/+H8yoL";
	dkim-atps=neutral
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (mail-eopbgr30107.outbound.protection.outlook.com [40.107.3.107])
	by mm2.emwd.com (Postfix) with ESMTPS id 098C5383E06
	for <usrp-users@lists.ettus.com>; Wed, 30 Jun 2021 05:16:34 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dgWxWcOMKZJ5pDkl08HuxhtpUCAQdTWwCuir2lzZpXWifys0amH8taRybEuGQtpQVpErjhk6vqwzkgsAajqXyYUByD+3gq5GL3TMlTgztRz3QR6uXTOB2XssB/Uf9nJ5iZo8nhQqyc0BZLHhF6+96/Z6f6Yp3uj9X1d+KIV4O5ZXLb7q5taT+bkaR6ATAQkWjx65LFcPzsNH2MF2Qxh8m/DB2nqKJCU7YoX2+KAceuBbk3wCHwyL7ejH5hfEAdlPsbLZJerggWt1M7/B2YdHmEj4EtRnl7nte186YF/xLzPVJaWtIZ6rtRK4ci0BMV8A3qnB6vFbCyiGdRJQnG3d/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l/dQBlgu0yBGg/DHy6P3fZwXDmG60YWPgIIBIdfpD2I=;
 b=V4GXZZAY7gj8l7yeW3PXvx+Z6Ftb9MhL/RPOUwdd3ujM9vIvMnbeAQ23tzf2bkP3rqM+AZEr8XghGCIfqEKUuT14nXTuqdgmnJUGXD0aP6WZCs7YE/Oo6vBD/92NvWi2gZQ9Nc05LfatpqK41niCpLWe9P5Xenj+whq70tPjG4eOf/F/hPUnV1TuddOV5BySvYDHiONEQQkCnMo8MLV3wZuOxfYPfFr0jHLmkeOVxSoC+D4pBQMHBby9VGDtgbQRQmYluEHNZGlaBmj7zMhfOa5UZkncT8bl9nKUSdmWXyTdeesICjc8wSRRCu349QQ9GdCtxlEGZIOeSndvtvC5WQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l/dQBlgu0yBGg/DHy6P3fZwXDmG60YWPgIIBIdfpD2I=;
 b=U/+H8yoLXq6paMCu7TCWrg7CKzhGUtfVEeUieHMeV7BnY4Qw2BTCYJa/ItFbH4xJ/tYtoUZVIgHN4j8m2KRYPvg+gHTd5Yk5ht6u9HT6UjEuCU+YfoI37EoLc+SPtjRIDdXuGc/7pqAEFnwBU69H4UBOLV+5UwRb15Nj+QClhwI=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1224.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2eb::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.19; Wed, 30 Jun
 2021 09:16:33 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::192d:5b3a:ffab:9ee5]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::192d:5b3a:ffab:9ee5%3]) with mapi id 15.20.4264.026; Wed, 30 Jun 2021
 09:16:32 +0000
Date: Wed, 30 Jun 2021 11:16:31 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20210630091631.47b6rcam554kkug3@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <HK0PR01MB26748455DC183A7718157C788F019@HK0PR01MB2674.apcprd01.prod.exchangelabs.com>
Content-Disposition: inline
In-Reply-To: <HK0PR01MB26748455DC183A7718157C788F019@HK0PR01MB2674.apcprd01.prod.exchangelabs.com>
X-Originating-IP: [2a02:1811:371b:2300:76ef:cd8b:266e:8a78]
X-ClientProxiedBy: AM0PR02CA0113.eurprd02.prod.outlook.com
 (2603:10a6:20b:28c::10) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:76ef:cd8b:266e:8a78) by AM0PR02CA0113.eurprd02.prod.outlook.com (2603:10a6:20b:28c::10) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.23 via Frontend Transport; Wed, 30 Jun 2021 09:16:32 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 01807a6e-205f-42b3-d4f7-08d93ba7c09d
X-MS-TrafficTypeDiagnostic: AS8P190MB1224:
X-Microsoft-Antispam-PRVS: 
	<AS8P190MB12243170F5EFB25C6AF88ED8F0019@AS8P190MB1224.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	D7cGDdX3Ooyd/Pjpa7X4TNDcUH0HJ2H8T8He98ebFsyuwZ6MXmVB/OkE45ZxBgCusDnSD2NFF1BNM2wEyye5mJ0xFqIH5rjpIDnPsLR0DVMD5bzXs0guKbs7k+mENNv3kXYkdV3szblIR+LjRab1fcSuYRv2mUGlEEU2mRWniHf6jlV0NV8f1iGwm6lus0n/7W3fT3uaWFORBAaLHTalULlz1UDZ1wZPJDN6QBI33HFBDUOvRpNbELUKlLbXGYIvd0wxwqgBzptp4hUMj7jWO0e81l6+9ULVWkKpMQYrnqOSDKF/ElCQTdPGLClebZiXtA6k19Vj9Wp+XbK5Y3NQkcf8LFkhUgqPNe8uSZL20eBLZLdtoEWoCxf3gVxpou7njFvNmkdQbn0X1WgpYImRJ1IiYxubN/nH/l0ZzgznITN5cJJEBmumqKCdEsZ6w50Qigpcm5ehd/CkGMyf5DAJ1xr6hBT794YRbFHRRyTnIsAcy+xxarJZvRR8NuTt0k8XBGzHyUnVMX81IJML6ytZZhLrgwky8gf6NnyeF9HWXleMykI7N95J/27Xc6HAiJDbaUbSPRSscDWuYIiWEpe44B+QXpgPDNJ66LrmUp83Pmg3Sb3OkXXmXolaNfgBcbFgtQYGOuG3p+GOR4Ve33BDBQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(7916004)(4636009)(376002)(396003)(366004)(136003)(39860400002)(346002)(5660300002)(86362001)(1076003)(186003)(16526019)(53546011)(4744005)(83380400001)(6916009)(2906002)(6486002)(9686003)(8936002)(66556008)(786003)(478600001)(33716001)(8676002)(316002)(52116002)(66476007)(66946007)(6496006)(38100700002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?i2rm05u9rWOwRhIDUpf6B6AihOZi/Z+dE0QyGwENmpMTJVHUkzMpw3XhUH?=
 =?iso-8859-1?Q?PqhFHbjgVzsdZNUgBdWA78iktH12xF6gHPTBIseSLwKCqjZlXOoD9x1EVt?=
 =?iso-8859-1?Q?amT6y4+aY71Cx+cObTuxjgFGIT3Ma5rA7c/6qQQbDJsJge3CCKGzOqdEvq?=
 =?iso-8859-1?Q?6A/ka9favwclh4gpDq0ZypdZq/VoU1I4+EKYfkTcuBzPytYttyZ6fzAog4?=
 =?iso-8859-1?Q?I8ecY8iPMVBPqyJGd4/P35M+RN7RJlef6OS2kt6gwX3mf77GMm2V8tr5og?=
 =?iso-8859-1?Q?pdrpYA/r0ZzHj0MnrUgTqLFsclMXXMK5lM/MJVD3RzseKc76R5wwwxZS4A?=
 =?iso-8859-1?Q?ojD87QpPSCqcepWcmy3QcVuQWp20Gbl74/voD0AqZ+R1ODlyxZauQ38/pS?=
 =?iso-8859-1?Q?iiZmBM6g2H1xgTDBg7qk8GKh8+pbKBCQn53m6/uE+SZK3cpSMHArMTCPGW?=
 =?iso-8859-1?Q?5ZOCCDVVusAZ7AwJj5ZOjqP/CJjWvTNgMSkjxMj0KqzeGNQwCpjdsx5842?=
 =?iso-8859-1?Q?bWe8t7FU5f+iS87sJlGs40Dqpv8uSVDZwntr8+OKMTHkK/lc2TdwtNlXwz?=
 =?iso-8859-1?Q?LQGNttH8H/izx3KgExKBpw/Q+EApnMH+dom28uiLaAmzeQHaMO8VfYgXt2?=
 =?iso-8859-1?Q?l/0YHA4UAHgmqbEIM23jsaeSUopBuRKCYssJAlzj0y80BAE4NbNblsaA+X?=
 =?iso-8859-1?Q?0/sUFuGqOJtRlx/zr/mtOOmvjoiD4DjhE1wvwe3myexb1d/eLpCeyNDJto?=
 =?iso-8859-1?Q?wu+SmEj3JcQ+FSqcc+K6uWtrDtXgh7Iy1gIuzk9NHEPMzJ3lggxN8mxzpr?=
 =?iso-8859-1?Q?9IT6DJvKYium+1rFso9a9g4Fr2Zl01MO14nEibDdvHgJoBxBFpWSbC8EXN?=
 =?iso-8859-1?Q?snEQtYUk8HYG3TD0DYIA6X7TivFh9huZbx6Uzw4YmCNTUlkY8QU744fnXQ?=
 =?iso-8859-1?Q?bq5AD8xX7/6WJEQ0HCtMftdROwt8R6F0KLyyDa3XD4Ydy2ZQvEnA6hk5H+?=
 =?iso-8859-1?Q?itPRzg61nH6JsDq9NHT2O5fpIgdzA1BpBKs0IccSrRodKWf9tNffsM62Z9?=
 =?iso-8859-1?Q?ZmZJwMifbvYHyqC99mXxOjkaAE3sAO0ATvXrkU5I+qyZQ3VgI+d2+fooOU?=
 =?iso-8859-1?Q?FFltMaQZwYg1KKp61YiRDKTR9n1f4jIJMZ75MDcTrBlsTQm5LZV8ofzz5U?=
 =?iso-8859-1?Q?d/+QUn+f4mOLGAmZMaAAoOLzFUM3MhtK/MCDIrr1N6qHWW5Q1TCwOPDJTz?=
 =?iso-8859-1?Q?CIGQp8UgmqdBqActDHsnmKXqN0IfNi/t59muAghJZW1FbMz7bpl53s71mc?=
 =?iso-8859-1?Q?882KqKAmIkn4m3QbeDboFOWsXt5ZpL+Vdv3iy9xHhig/4YUQSPn27LDUTc?=
 =?iso-8859-1?Q?5+X+eysZiNtBzhjK7HSzOtcMaCFrmmZcDiMuFlSu6Y68HNKhNWpkaTIvIH?=
 =?iso-8859-1?Q?ElFpckbN362MlpBJ?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 01807a6e-205f-42b3-d4f7-08d93ba7c09d
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2021 09:16:32.8614
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HLazP3J5wZrpoZQyZ68c/lwvgpYDLgZEtI0a7hK9MkbMLNrOj7PvXCPitaHbHoOnkWfSM5goEYLKy+R+6oNNYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1224
Message-ID-Hash: YNCIV6QLDPD5CI44BQKYKCG5VVU7HHBR
X-Message-ID-Hash: YNCIV6QLDPD5CI44BQKYKCG5VVU7HHBR
X-MailFrom: Cedric.Hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Question about controlling multiple USRP N210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YNCIV6QLDPD5CI44BQKYKCG5VVU7HHBR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?C=C3=A9dric?= Hannotier <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On 30/06/21 08:17, ZHOU Yuxuan wrote:
> However, when I tried to transmit this frame with 2 USRP N210 I failed
> with console outputting LLLLLLLL. I guessed it is due to the
> processing power of my PC is not able to support to the sample rate
> (20M sps for each, I guess it is equivalent to 40M totally).

Yeah, it means your network card has to transmit 40 Msps.

> I connect to 2 USRP N210 through ethernet with a switcher since my PC
> only has 1 ethernet network adapter.

I guess you have a 1GbE card and/or switch,
and you use the default over-the-wire format (which should be sc16),
hence you get:
40 Msps * (16 * 2) bps =3D 1.28 Gbps

which your Ethernet card/switch cannot handle.
You could use a lower over-the-wire format (sc8),
but it will reduce the dynamic range and increase the quantization noise.

Regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
