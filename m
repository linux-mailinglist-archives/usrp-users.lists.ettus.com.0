Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 765D06EAB29
	for <lists+usrp-users@lfdr.de>; Fri, 21 Apr 2023 15:01:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 798583841A3
	for <lists+usrp-users@lfdr.de>; Fri, 21 Apr 2023 09:01:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682082113; bh=7ozHuTBuzjL/Q7WO2OyQfSN58R304cJtbhrM66MtCdA=;
	h=Date:To:References:In-Reply-To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=vPEai+7Mkq67Yq5HAmKKeBw0iM2I9WnsPIkvjdUvIoMrl4lZtpi+miZ4b0aNZdDA1
	 424idfHwbC7TiRPpfVKz7QYlaNc/IwlyxEKu8LHOABX0POiq2sHkT4yBolvQVn8yMG
	 AH6X4NbqI3FcsYl9C49pKsVwCv7kaorPWZqGvPxHO1kQrHAJV8B0s2e5NC9iMjI8vR
	 2nR2BcJwyW/aqbBZJ8qwC7qLW7f4PISpJPDWnbnef62GVbtbIiFGPoPsqjuafUV5Wb
	 usTbqW6jIoexLLdjC94IkODQ2oIsg0/TXROyc8o9+Mm90OqqtFA1mgC1y93fnwiaGo
	 jNvPpetEMz5VQ==
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04on2122.outbound.protection.outlook.com [40.107.6.122])
	by mm2.emwd.com (Postfix) with ESMTPS id 994C5383FC0
	for <usrp-users@lists.ettus.com>; Fri, 21 Apr 2023 08:49:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="R2fp79iK";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LgJYATjZuzY6mjExlAuO5GSctq88ZEpWqlFGkpXzK2i2Nol6SeH5AtdOpZOTPh33onxVAZzlaUoMKLPW/H1GUT7xq9G0/W/bVZx1YInX9XsuAfmCq83KQYN9HY7ylTb4kQGgvvHy8PoKo5tHX83mhxL/ZflIXsf2Cag/rWPee4vnyxOgmQnkLrwz7aIhWeyBKvzQH2Rr+r2x2SP21v3znSFLyp3scv8cbRJg8/L2+oS3cdSUSoEL1q2ac/ElaSdDDUlJTQuW3wPne2MqTf5lHimDGosaaqWXhPi8nxhM045sZBhOx8PD5CiusFZGx+LOZlyu74oDnVoQ6tet3t/chA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uhA5IqL5mS9pxhA874mEGGO9sf5TfLlK0sjFS5utTPc=;
 b=JTyl4zX2uHdPZxFyw5pq7a2x8yrY02bNcUdby7AUNkVpqxjRhrZ/8d2bHvPah4CP8/fCEbGaEFVqwRaGZ+McBUEZKW/bgBl+NG+UZY3VWHSzprTVPA8dUm7vsLNgcz3fxOCa1u5sduz5o8OojTkDQD1Zhpvj5aH1fed8JgnsEaHpfjh6SaUiLIH3fDA5NDlNesbMN0i5GcRknLLCYIH7tY68t5SDX6YtSKpsK81zN4acLRmrFYAWiY4X2+RqNoNBYur+4pr6sJHoRPvnIdZa0I41Y3iKTyEPBji9m0GTgsESgbuxgw9rMMYCL8j+enZ7p5NWyRJfUFq5R0FD3mrLlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uhA5IqL5mS9pxhA874mEGGO9sf5TfLlK0sjFS5utTPc=;
 b=R2fp79iK9ZYscPn1ja5+xnXoOvMyp2zs8Wpbnmxm0ss1R1gho6rvrUIVXR1tpQOGzyCqwsiY/hIenEZ5bVA8e8wA7iDmhrbLY7y0zPOkA+9oOcJLU9ty1xtH0aG6a8I7yToqEWGXNQCWFtoV4zowekJqSvJK6AgBw1wGw9yME/o=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 AM8P190MB0802.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:1c7::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6319.22; Fri, 21 Apr 2023 12:49:52 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::b764:6e23:f8dd:8432]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::b764:6e23:f8dd:8432%7]) with mapi id 15.20.6319.022; Fri, 21 Apr 2023
 12:49:51 +0000
Date: Fri, 21 Apr 2023 14:49:50 +0200
To: Ian Chodera <iac@md1tech.co.uk>
Message-ID: <20230421124950.6xpnvo3kncmnzcbi@barbe>
Mail-Followup-To: Ian Chodera <iac@md1tech.co.uk>,
	usrp-users@lists.ettus.com
References: <F31D8B08-5590-4DDF-973A-104B8F61C219@md1tech.co.uk>
Content-Disposition: inline
In-Reply-To: <F31D8B08-5590-4DDF-973A-104B8F61C219@md1tech.co.uk>
X-ClientProxiedBy: AM3PR05CA0122.eurprd05.prod.outlook.com
 (2603:10a6:207:2::24) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXP190MB1848:EE_|AM8P190MB0802:EE_
X-MS-Office365-Filtering-Correlation-Id: c1b77e0f-b6a0-4633-f398-08db4266e5f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	318SRGK9MAxpmbAy6xSkqJCPjGbbtqGnaA/KIljA3Id+MkAUH4zkUFRVw4y8Qqa3jjVZoG+KHoJm2ODFY54y+NXBzqI1ktXiOLhvWBNe3wW4Phc8Zecj8oq3yjU97V6EOd4lDhEEUJjzeEbDtgliK/o9iveS2gT0WDVf1NClBP7VaT+VU6ITkm85uxAf+5QqDKJ9aWQ0Vg3tjmbIjAEixdE1tboxjY/O3RzNPBZMSZ5+5ZAkl1b2+aH9P4O5Hvm5Ukn9eKi+7rAazxkcVwsO36UhZODARZdXdwH8f/IabEUp9CiD9wskhNuq4Z/drNYJh18hMih8CGBgK0yAEXx5ERBy5u7lKpAo1sqFsLL5Mc+ZBR/JnPpO7LyN0vaTLABPU/Dwmxs5kXkvGdF/hapnbVAY7+1aZVJJDbQrkjkuUNet/5VIXA7lM1m4YdWa12p3wKdJkV5bShlWpmPmlTtz4p4tbAFAjGUvvpOZs0ypoGO71wgm8hiLv2GGaHEe1yc15S16GgJUqJfCuoOgUqHQp43YGOKihcf9G+IT+6J4VeE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(7916004)(376002)(396003)(346002)(136003)(366004)(39860400002)(451199021)(41300700001)(2906002)(8936002)(38100700002)(8676002)(5660300002)(33716001)(41320700001)(86362001)(83380400001)(52116002)(6486002)(1076003)(6506007)(9686003)(6512007)(966005)(478600001)(53546011)(186003)(66556008)(6916009)(66476007)(4326008)(786003)(66946007)(316002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?nMZco0OMqCPqf1HNcupXf3kjWwbiHBBhaVJV8HWmeLe28gbWyXgd4NtuI1?=
 =?iso-8859-1?Q?+AqtQRaVYJ6LbYmBTMLbFnjEh3TwmEBAntAyj+xuxw7TbnORhU1qukfqca?=
 =?iso-8859-1?Q?AYVa0h7REueEbfLwGrYntbHX8gf+2C4e0ZMO/WXCwovzoBRNVANKqoPcy3?=
 =?iso-8859-1?Q?2ih7RulOtLPA5tcnauvxhaxznEffrSo9zuVQCtYWfHWNXrs830neFshTIq?=
 =?iso-8859-1?Q?gLh984iQXPHTkdO13Q4ya3Z5o/Se4yK6d1PE4fFmmE2NFvVzackJEqf94l?=
 =?iso-8859-1?Q?MI9x873N/8h7ucBLm23H+5dGfWclUNBN4hpvx5Bds8VmryyQaz+2MxCmTv?=
 =?iso-8859-1?Q?Utl9bDa8NZQnIict1erMyw8QjfKjqjZ0OTdq9UbweM73kVNs4yvmmmf2IS?=
 =?iso-8859-1?Q?Zne95AsWvbHgyUy+b6wx31FBEOnufDNzoNm98eH90OUiRkJQNQIscMZqGn?=
 =?iso-8859-1?Q?F0C1ud4M9LJAS8Jdp7Dh4g4QtHBzuVIpB/3LoJveVuy67csDBFpo+iUUCb?=
 =?iso-8859-1?Q?klbV7I5Q7Y1kS7u8G5DQB/lMpjpXTqn373eXl8mIn7BZ4gakdVfTI4zMQf?=
 =?iso-8859-1?Q?8TwyZc6QMY5ucILgnHkqzdcTGnox3r+BSMVc8leaHFEFUMey4p1et6G3SC?=
 =?iso-8859-1?Q?kAvTUPD9iIx1NhtHO4V60KzvXxnq1gzraG7Fz8GCR1qiClYf3Sr4+ez1Ry?=
 =?iso-8859-1?Q?QOaxRo3djCUqxRF4vgXh45VoASI6DIgHgXd+D9D0YpJknyAuCbPZbor2/X?=
 =?iso-8859-1?Q?StgmPnu0qa5bIHZuXcEotzhPxp/SUYRi/ewFcgVmaBZ1pDhDpR68dvS6mC?=
 =?iso-8859-1?Q?MqDxSqY4x8dQnN/jKwRxkfJjJXZbMTIfNf/iYGIx4QroBZUoi9xn3NTq3X?=
 =?iso-8859-1?Q?nd+ZyiDw5HDcg65P51MIB2GqQaBUsMtAKL7Bi3nM0I+l6W7RYnHLIZGkfE?=
 =?iso-8859-1?Q?UrN60+Mps15DEnvZPbo0+bCz7ndN1if59cBmqEdGNA5yil8Qp1eWfbHqbz?=
 =?iso-8859-1?Q?cegpktUbdk5AHZQcKPjyURPz27l7F6MyNiOWBB0ctpUxBac+MJYtcYp8D4?=
 =?iso-8859-1?Q?bzQ0GdhrqhHetHeuOt4xZ+llzpj1ym4/dQ99Usg65vGr3g1RCVgya3579u?=
 =?iso-8859-1?Q?WdPIqgiHc++ywyp0V3wi0E23oEvpObgHbrXlSKNHbEm62brr2A8ZwGCnXz?=
 =?iso-8859-1?Q?GCswotknBv+E6xbQ7oUetKiinaBz6nMadSFpg/7rqkJvvO8lyfZX76qjP8?=
 =?iso-8859-1?Q?KyhDg5QDiWnK9bxziMvT4ZMamRXQCr42xf8dUVOehSbs1fmMmko25W09v5?=
 =?iso-8859-1?Q?i2ax0Ks42YGKqD3SwBmljqnLw5IcFy5hGWMTrGpjvKqz5F1XHwQpJ8QobL?=
 =?iso-8859-1?Q?gRdjSDjJLCTUwfUEyI28fbzWKizSb/e1DxH2iXmOOlHtrmPdySLDu4rg6+?=
 =?iso-8859-1?Q?Ab1FGt4v/z4Y7SU7ydIg5EO77BDjrnOWDod7e3w3dhc6nrLBTq8udQrkFw?=
 =?iso-8859-1?Q?xlM74LWTnvo1kPdv/UUCVQNiYlL1uHBpij6RRiD3Q+0xSuf+7MX/JUo4HH?=
 =?iso-8859-1?Q?Blx+RuVgWMXdug0R4mRyA9wDOt1xZ6YusnWfGqHuL3F7uTpq4N7pwOkxqk?=
 =?iso-8859-1?Q?bpMaKlpmtcMo4pr0Fw9fE/3RySqjxBQPUszceipwb7ws3CHObYvsoxnjSp?=
 =?iso-8859-1?Q?q0U+JMpPmShVWN2FhETwcxz5wI9cmcc9O+MR8CSrdxLDxmXVO80PBoXE2C?=
 =?iso-8859-1?Q?k89A=3D=3D?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: c1b77e0f-b6a0-4633-f398-08db4266e5f3
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2023 12:49:51.7368
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Gl8mJ9dPY9Fcq3lOAG5DXazH77eJGGzI9v++GkHyKzBdFvunHdZCLfqunF+hcTrM/Q7m6t81gmd8lufDiIOMSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8P190MB0802
Message-ID-Hash: MSLBXXMUYQQNPLANKYXD5AFC7FXIIE6C
X-Message-ID-Hash: MSLBXXMUYQQNPLANKYXD5AFC7FXIIE6C
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B200-mini  not detected
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MSLBXXMUYQQNPLANKYXD5AFC7FXIIE6C/>
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

Hi Ian,

On 2023-04-21 13:09 +0100, Ian Chodera wrote:
> I have a problem using a B200-mini on a Ubuntu 20.04 machine
>=20
> The device is recognised on the USB bus
>=20
> >lsusb
> Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
> Bus 001 Device 008: ID 2500:0021 Ettus Research LLC USRP B200-mini
> Bus 001 Device 006: ID 10c4:ea60 Silicon Labs CP210x UART Bridge
>=20
> But not using uhd_find_devices (or uhd_usrp_probe)
[...]
> The fpga and firmware images on the machine appear to be up-to date (usin=
g. uhd_images_downloader)
>=20
>=20
> I have confirmed that the B200-mini works by plugging it into another com=
puter (a Mac) - here is the output from uhd_find_devices on that machine
>=20
> [INFO] [UHD] Mac OS; Clang version 14.0.0 (clang-1400.0.29.202); Boost_10=
8100; UHD_4.4.0.0-47-gd18647dd
> [INFO] [B200] Loading firmware image: /opt/local/share/uhd/images/usrp_b2=
00_fw.hex...
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: 31E21E3
>     name: B200mini
>     product: B200mini
>     type: b200
>=20
>=20
> What could be wrong on the Ubuntu machine - and how can I fix it?

If uhd_find_devices works under the root user,
then it might be an issue with missing udev rules.
You can find the procedure there:
https://files.ettus.com/manual/page_transport.html#transport_usb_udev

Best regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
