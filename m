Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE30C4B5812
	for <lists+usrp-users@lfdr.de>; Mon, 14 Feb 2022 18:09:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B527838511C
	for <lists+usrp-users@lfdr.de>; Mon, 14 Feb 2022 12:09:51 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="ui7+968j";
	dkim-atps=neutral
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (mail-eopbgr30138.outbound.protection.outlook.com [40.107.3.138])
	by mm2.emwd.com (Postfix) with ESMTPS id AE72B38510D
	for <usrp-users@lists.ettus.com>; Mon, 14 Feb 2022 12:08:53 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CDUlDpR+rbyl4keHh6FTWgrwfi/Flp+32LRny5DOj9zVCo1AF664IfukUccjLEMIyubMHRCSA8Rt1+FbuSKCyIDJzdz5OiZVlZCiDP3DJrhYqfA/f2RBBNwxKCPKpfXndrw30XkM+J2NyTsW/LDqvjdyYt0aJeDD4JJ/0eVse6grQylJUidM8V3A6yIsUl95kPZGpCID6sIFxFn53kjOjBunFfsz0VvhuN+04tYzJHeqWeNAVscmMNO8dyN/oHRLy/rURVOF++V+Na3I6qBAV5YL2mFjLTkieTbYkYJhtWYAD2wqdqHxc+p7aRaIdF3LUY3GgSI/yM0cRjT6P4Grvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oHYG87/vMQj/3vqLns+SSKjIxJGbcPeTzFFexB/oJuM=;
 b=Vy20/CqHop3WHx/VftQ8HuH83mCjJiutOhHBes1s8kVHja6Xi1MlMr2gdkbRW4DgeLm8siF6gZNFdzua9IAcyM6veettKR1Aa82DoiU5y36jROVBGOcG0QhhAi+y1N3HAt2/ANroTZ0J+Ocdnou/KkvDp04gXPefzpcckhiOx4dZVNO3vbV71ewuaBOIk1iqksvN0AJWnc4265BCawigjCv9rtdpRfU6tpvV2LB2NUD2uutnXXkNisf9HTKcyaAkU3/P6/rbMxIeNyNUXIki4mjKyHxx/s0M0+QvWqT1iVfNt0fQbwioOZ65pnVoOm8xhVXT2aOWHwK+KeyjYgiUTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oHYG87/vMQj/3vqLns+SSKjIxJGbcPeTzFFexB/oJuM=;
 b=ui7+968jow/QW9KEmhYOrEtN75PEz2Nl7yN5VZyiBP6Rhdc0dJ0DQ35Kb6DB0kiRg+fezLT3agDmTFSPDIhdc1UgBz/t5+yHjTDzJpWL89vCLVmFhmXSUUcO9S4Avfx92lih55ijCsyrFd0qd0DtzQAZLkGzfN2Kr6Z+aiG+ZKE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by PA4P190MB1342.EURP190.PROD.OUTLOOK.COM (2603:10a6:102:104::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.11; Mon, 14 Feb
 2022 17:08:52 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::9930:3526:4b08:9530]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::9930:3526:4b08:9530%5]) with mapi id 15.20.4975.018; Mon, 14 Feb 2022
 17:08:52 +0000
Date: Mon, 14 Feb 2022 18:08:50 +0100
To: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>
Message-ID: <20220214170850.q7roalqvlrosbtzx@barbe>
Mail-Followup-To: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <AM8P250MB010792CDC76C3D13D18CB1749B2F9@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <8826730b-9cc0-8b8c-e0c8-f5fc164ef4b9@gmail.com>
 <CAFche=iWv7J7JwoqE=naU7syiiF2bsFo4qTt9GM4i2GNLiyPMw@mail.gmail.com>
 <AM8P250MB01070462BE00D5B546824A2D9B339@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
Content-Disposition: inline
In-Reply-To: <AM8P250MB01070462BE00D5B546824A2D9B339@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
X-ClientProxiedBy: PR3P250CA0030.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:102:57::35) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3d6176ab-50a0-44f6-fa1b-08d9efdcac8e
X-MS-TrafficTypeDiagnostic: PA4P190MB1342:EE_
X-Microsoft-Antispam-PRVS: 
	<PA4P190MB1342FDFBFFAED57B3EADD735F0339@PA4P190MB1342.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	NvgmcfoXidRLZXPx4xG+tC4g8PYGRzYcmYEz502vFlAFK2lopFGcRxVIOpETOFvrW8FdN82Hjq54wi+CU5eE+sRKLiuBKv7hogqgsKwjO82+kd/L2KTWSuUbBx1xewGOXW3oqvWUg6JAG/BR8RZXSKL7CYWJNkHQyYTT73YqVpWZ3ktJWzz9/Q18l62qLhJXVCzUNlQTdvsAVUEfwatFPH01xsQgPLrO5TFNZY5Mwtmf0cLPwL9TwiQpX8iXGk35w48r9AriOdP7JA1bqeGkb1Pa9XT8Q+MNX+2B3NWXtJPjIEFPhO2hRBv3ZkW1MO7ci9F0B2WN4d7Qb/OUryAiJiKzzzEqb2Zd2R4Hxcks8wWJeyf1xjGHHXJI4mHyuLNEItumWnFOf0KC5mvFBHtlX1umP4yOmDeY62xJN8f0IMk3l8UpVHGh0NtnN6Z9FW7kX2jMe6/Nc8RXdbsAUdr7ZpL47kGxGXkrLH6sYaDmiQ4Ir1vYlpG7mppWQLT6mwmIDe3izD7EM2pyOvIFoBeaNmejzjQx/KM8efwymLbMhNN5qRabgIpfv06S5e/9ttjOxZjGbQlnAk1JzvtQgocA4Xx2guJIWZUoaFz8YBaA7qbtxn2k/qzEMyU6oKUqS98QDCTvJziHFLfARxkQjI1dtF8Vkw0Jn6yuOkAkl1K2Aj5PV+gQBgPzLFlMa2IvfLMHzHUZla6hBAkxbj/+PVN/p7jskOo5VJsZG7bH4IBLWGs=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(7916004)(366004)(4326008)(9686003)(33716001)(1076003)(8936002)(6512007)(8676002)(186003)(6486002)(6916009)(316002)(786003)(86362001)(38100700002)(5660300002)(66476007)(66556008)(66946007)(4744005)(6506007)(53546011)(966005)(52116002)(508600001)(2906002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?TibOvSvYY4caXHaEuTjgWKQ2E8hgvtKrrdeatKFWUEKzoOnji8URGMtREu?=
 =?iso-8859-1?Q?0294Zy6KTdzEN1hbBpEzcR+7EQ8QJDWjQN5lGWblB12eXgwa8PnKYhtCzo?=
 =?iso-8859-1?Q?WoolK8RG3/GhrAohRgoVxFWxqUcgslrGuLZzjgtHYD/L9pIiTAXtsXWlyI?=
 =?iso-8859-1?Q?UDGm9jcjKC827AgTE+uI3BaBCAhSXJ874brXr4Gk17Ow3h47aK2YAzbudW?=
 =?iso-8859-1?Q?E90Cf25oFDcG55LF+rNejxXf1b4tptV+/9feO0lwwwGt4XvGtkDHS2ntGs?=
 =?iso-8859-1?Q?yXEDzMgHNxhPzvDPlEKWNBHcfLvdTIa0PPqTZQ92I4av/TbudTJs6/i3VD?=
 =?iso-8859-1?Q?li6JFarzglKV10lkPuGPunM1l0BwoldfWxIgtJ9t1JJX0SsjrXFJ1Ysfp1?=
 =?iso-8859-1?Q?DSNsi3mO4J08h5lknHqZomeLMqLC6zMaTktStARJUVEA0cGH8y0/J0XDWa?=
 =?iso-8859-1?Q?jgFmCBaLGMKfOtyKqupoGUu6Vc/n2TfQBpWeahnsQmSHzQF9CDGdm45OJc?=
 =?iso-8859-1?Q?hRchtNLlc3rrMPaaQ/o8emX2lxTb+BtHS7k4Gp2Fo43EVyZONHJ1RRqPqS?=
 =?iso-8859-1?Q?rPJk4mUC/jwY3hnIeq1ncmgfOEi83DoSeZHfVsCvrigzo+74YmPJzu5r3L?=
 =?iso-8859-1?Q?qnIYTpClmOjfLmkt5hoPlR3L3mIMUYFeOylcABOT7D3Q+ChS2TLRAThu6X?=
 =?iso-8859-1?Q?zWx0GGtpG4zzVIbIjfck/KuM5bWtRfOCp2+zxOLDT1/eUqHZXx1jZNdkfS?=
 =?iso-8859-1?Q?B8+HvyUKK+swnv61/sFKvnqzn7no6l2tKuALP+BauLhW4SC1cc39GTqHt0?=
 =?iso-8859-1?Q?jvo7wmKc9XOQtXTPaQ0GXMyuWVIcYmZDkzg4XNpdWdW+J6Qc7Viq/XMwQF?=
 =?iso-8859-1?Q?jGQq118Taaagi1mQcYbUjPuKy16Ajqa337KIrAZJ7zWxh7VCxhMWt0sQQP?=
 =?iso-8859-1?Q?wfPksXmm9bjD6Hg1r+1vMZxeOZNaBa2o5kfKo+DxVoQnK2kp8a6gD0Qp0U?=
 =?iso-8859-1?Q?UcqXWQ9cOHU87oyvyVO1qeAP1vmJBaWMSppoz7GDT2vNnu9CZTsdGtNfSG?=
 =?iso-8859-1?Q?P5C3QfvUpfwcgsWPsQmJfru4joZqdBnu1U9U7y2Jwrwr7FigW5XJx9Puta?=
 =?iso-8859-1?Q?JTwMJADsSoKDimMXNDE/0Xt5765hPx9mesvjYjjS8ZCjwj+tg+QJ5I4/6f?=
 =?iso-8859-1?Q?TQnnBvQfPl/AA0mOxkkuZ8NwvZ/XlpkJoVzKcdd9rHNMdpPiGdNcdTeWH4?=
 =?iso-8859-1?Q?71/Q+/DR4b8ZeD2wtJqTNwip+zU/ZZpfLgEdpdQAtDqp1K5V/8i+NwEQiL?=
 =?iso-8859-1?Q?hMh13FQH5SpU/757oUYLNtWAIotLE/kkPQG1aYexnIhGqjiBOpDhXbB2Za?=
 =?iso-8859-1?Q?Tt2GtvrBrY+BqtUBmxEGI95E9FmgFZTlw5KXgu6cHQ09W4zhu/WhltgHLj?=
 =?iso-8859-1?Q?6vk54FBEgyS81nFTMx5vHPwgAEIFJwHZsjSPPnNBwIm1txp01rJIQ6HoTE?=
 =?iso-8859-1?Q?ylhbJYGDqI00p/STlN5rKQxXtilehk6ZZS14Bw1FPQbPYEvxEJtI18XDox?=
 =?iso-8859-1?Q?VgtYF9xIwq+Bv6+587nK5xvr8jdIP3dVeySXSEGmRslr0ECiLNdMHr5hyj?=
 =?iso-8859-1?Q?WLqc9dk6rmiC3VAfM6w72FVo5eBsIzy/gBXhj5wVgeITUclQ2Es9cKQ1Xn?=
 =?iso-8859-1?Q?4+HFy/4/uGdnDOAyj5NDhWo3a8znp91sHAtAFVtoLzsDiL9Q+DPyh6Z1h3?=
 =?iso-8859-1?Q?NkdtEkmEdwA8R9+mVbOhNaHPQ=3D?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d6176ab-50a0-44f6-fa1b-08d9efdcac8e
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2022 17:08:51.9967
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hX50wpa458vGJcUkS9hK0i9LvV0Ptpo3kOCoeqCUFkuuuX/kc2yLHpY18nLxxBZopyFvi3En5iuCxQ6LCScQSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4P190MB1342
Message-ID-Hash: H4V7IQW52EDFSLIIUE4BJIBY242UFAA2
X-Message-ID-Hash: H4V7IQW52EDFSLIIUE4BJIBY242UFAA2
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [UHD] Setting sampling rates to 500Msps is not supported.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H4V7IQW52EDFSLIIUE4BJIBY242UFAA2/>
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

Hi Tobias,

On 14/02/22 10:31, Tobias Kronauer wrote:
> I built the master branch, [...]
>=20
> ```bash
> [...]
> [INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_200,=
 [...]
> [...]
> ```
> [...]
> Did I forget something?

From the log, you are still using X4_200.
AFAIU, you need to synthesise a CG_400 FPGA image [1] to allow
sample rates higher than 245.76 MSps.
I don't own that device, nor use UHD4, but I guess one can build such
image using [2]:

```bash
cd $UHD_SOURCE/fpga/usrp3/top/x400/
rfnoc_image_builder -y ./x410_400_rfnoc_image_core.yml
```

And use the generated bitstream under ./build/

N.B.: I don't know if the bitstream is compatible with UHD-4.1 or
only works with UHD-master.

[1] https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_updating_fpga_t=
ypes
[2] https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Running_the_=
Image_Builder

--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
