Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 695A15286F1
	for <lists+usrp-users@lfdr.de>; Mon, 16 May 2022 16:27:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A2E893852A8
	for <lists+usrp-users@lfdr.de>; Mon, 16 May 2022 10:27:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652711227; bh=vOGnRa7vTSi6Ofc35Tri4NT3IHpyV1x3+whNcQbg2iQ=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=AtPu9LrAYr8hDAvab/E4Kr7rH9uc1rWuKzF3qO4O2QtVnOf0KlvOSNiBdNgnMDnVY
	 Pk74fNcRrX1JhUplZHfEq38N/P2VHy1XBCHVb1EwOqA65XOdHRhpcXUVVJ2Vy0hzDt
	 rJvFEBDO9FtEnrOkpgHPRjUczVAwqqYjfwzc9IQUYDh1oaMoKnVSpKJprgfEbHQlj4
	 rfQrIOooIIK38rCIu86Cy/6I/YjoCSw0gYTGcBWZ8kYTg/uL4099EDH75c5hi7sWbQ
	 dj4t+a2wURgTNUNr3ZqAG7YFY43wuOUeoZ/DWekCMJsI9aCjX/8EMTssQpEwUikBzP
	 fXvOi9zJlxefg==
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com [148.163.158.57])
	by mm2.emwd.com (Postfix) with ESMTPS id 46777385273
	for <usrp-users@lists.ettus.com>; Mon, 16 May 2022 10:25:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="cHEcE03E";
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=nio365.onmicrosoft.com header.i=@nio365.onmicrosoft.com header.b="I2ndbbnY";
	dkim-atps=neutral
Received: from pps.filterd (m0098779.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 24FNibWe005789;
	Mon, 16 May 2022 09:25:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=from : to : cc : date :
 message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version : subject; s=PPS11062020;
 bh=PKWIyddLeOyKefnexoLLsJxy5ALITtBd72E19Ewvkvs=;
 b=cHEcE03EvqM4o8ZogUzTi4JMApppBSi/utI6KQ9QnTIHNX5AxHhVsVS6XbGL7Q7bkBMY
 35zuaU7P8A6XErjdN3FgPVXamRWheP44KitpJWGKyQXMdubTJ+1BdWwvh6UfO448sfZv
 BmWEmIt6/20bE4Z577+Ifu0LwZk1i3KhT6S2AVA55v6pl+kXXjV2v7MChgtFuscNR3j2
 KcJ2c+CpsGBK2Q8LsrhjUlqqf8KG1u/667KnWxWjCnZ9UuGiCr2ehRIex5I5p8RmZ8wV
 QFhQbcxB5XgVNxc0L6RF0L2s+qfg5C0J/owVrw67IRcq3iUIlJbqX3j8YEUMGxAQ1mlc gw==
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2172.outbound.protection.outlook.com [104.47.58.172])
	by mx0b-00010702.pphosted.com (PPS) with ESMTPS id 3g2a85b3tj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 16 May 2022 09:25:58 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cbUvhW5b6dF1VH0dL5YW+u/Xo8A/ss52ApQop3UlBINPVkkg1ZgbM4DNyzE1ePpnKwkp7JXB9CVxI9VixdISaRKdrTzf5ieV3XdpsV/p8/mYbr+jiM2MiN4aeyzzMWSeFcVXf2Cb/V0WyFmrtdNeHLcbFtRgW/iC2KT+3sTgKouILjOuuf/p+E3sl7aj3fgn1b6fQUQd9ngi2LPobApAvEEf6F1M17HAj8JFMoWbdHuiECfnXWCI0DfcLT7jV2i9bkf3/XXUXnTIFAF3cIe9EM6L0t2WpzgClJfU0UU5mz7qQpOmPCCHSTyjacbuf3y55OjYlcgd0mWNSckJIYWf2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PKWIyddLeOyKefnexoLLsJxy5ALITtBd72E19Ewvkvs=;
 b=VuWV792TcZ0ZG1y9b5cvVdvq9vVbuMX0QCcvNO3wGENZJ+n2P637vacifD8I4I3xlL5UO4ThUHXWyQUI+/Br+2BRiFnYHOOiNHg6h8q2VklvyQyo3NzNdgepUYHKGgndGlOFNeeLIwbnfnoiR3dKgr/DpH3zAAIGkYggFT6ZTKDZFE5JR+LFkIiPmimtFDpK3/hgW3Bm4/Gj5tRRACa/Z9fYrrPu4YH17Oo2xs/ApVzyHKqx9+iwEtWLZhSEHehoqcjQH3ECI3epUdZ3QCbA2lYI6MdZ7nekdxpBm1BRbXiVuc8ccfr/uzmRVzWrKTO55jEEJZrCTNQdV0cb6+Zn6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PKWIyddLeOyKefnexoLLsJxy5ALITtBd72E19Ewvkvs=;
 b=I2ndbbnY195ADAd3XfNOSfdt9YxzYHDVSTjkQTQMvqPQ8BkS6u8LeRHUsIW0HGK5OlOQbUscEBl50EksWhGlS2zX57vBPHJDpo7b7EQ/xyiuUA+6DnPXsgSNgbureuYl75ie6JGZl0z0ThlchIl3A4CN5s40qmwPVDlzRl6Iku0=
Received: from DM6PR04MB5051.namprd04.prod.outlook.com (2603:10b6:5:12::32) by
 BYAPR04MB5047.namprd04.prod.outlook.com (2603:10b6:a03:43::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5250.18; Mon, 16 May 2022 14:25:53 +0000
Received: from DM6PR04MB5051.namprd04.prod.outlook.com
 ([fe80::fde9:7f03:c467:310b]) by DM6PR04MB5051.namprd04.prod.outlook.com
 ([fe80::fde9:7f03:c467:310b%4]) with mapi id 15.20.5250.018; Mon, 16 May 2022
 14:25:52 +0000
From: Haydn Nelson <haydn.nelson@ni.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>,
        "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [EXTERNAL] [USRP-users] Re: Does X410 support phase-aligned and
 phase-corent?
Thread-Index: AQHYaS78G6h072fs20qRM0Ygvum+ta0hjRtg
Date: Mon, 16 May 2022 14:25:52 +0000
Message-ID: 
 <DM6PR04MB5051618A0367612C5D8A2C5EF3CF9@DM6PR04MB5051.namprd04.prod.outlook.com>
References: 
 <CABfZwceh1KzO9770-48_wod=D-aAqCuvA5HO+L4shJnbebdnOQ@mail.gmail.com>
 <3bc7c4f4-eb0e-6273-e1ca-bd474272a996@gmail.com>
In-Reply-To: <3bc7c4f4-eb0e-6273-e1ca-bd474272a996@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ActionId=97f0f672-7e9b-40e3-a2a1-4533a2babb46;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ContentBits=0;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Enabled=true;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Method=Standard;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Name=Internal;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SetDate=2022-05-16T14:17:55Z;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a92bf3a6-4a49-4696-6acc-08da3747fb80
x-ms-traffictypediagnostic: BYAPR04MB5047:EE_
x-microsoft-antispam-prvs: 
 <BYAPR04MB504742E0A412D446066E5B28F3CF9@BYAPR04MB5047.namprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 oxiPcIEwQO9szojRryB8pPsfAyvv+mlG45iNWCV/LKDKsce1p0eOuqoLEV6yhT2W142qkP956ExQiMFr6INPHYrBp+U7Q41TXwbziO+kPmH4VKbMpjnWZIl5vuQ0iiL0GOk8gZgkjSO+qL3jUNsOFFkfDw6lF/sgxt5niKepMaYOt4X5XfRNaVBdYYzuGrX2WFEhrdqcENyi38AWlcuy5owaAz9Icu0qLVdfILYiyQuQb41//Mab8ggKQBHXQp4iAIopYeZwqyZSpkYk0nr35BNvgQx4zRNrmNX2awI30pYzlfVikmbAKegSPusJsoFjYfrQ8Bmysvfw8Bz6NumZCEHNQ0DEz+H3vuwTygbKYBoXsjTe5Tz4eV+huY68G98VjXIvHHYpxYUJijCvdjzxUEEJ8eUoinPq4m6q2hC6Sh1mnVYVw9budwW5J1+wB0YgSzjtoJkms2doA2vr1GqVzjlJjP5lhi8TWne0Y1Epx6QJ71bpsbXRSxNvP0B8emDyE4Q6ACL2WUS4RrlupVaGY1Og8aTuMBUB+MMi2JDqxdNUUC+2VO0HbRteyhkQlJh+MPBQkiJtk8PrGFBy9RgBkmQpJPeksekhTQzIYwgqlNq4mimiy3rTIm21mYDD68XsON9IaiV8pdNatLFpXYga99NMjfrvobhuy1pXw2SsvVlL4syp9f/SyANjAh8I7v+OOjqGuLffj8UvjklpL4LXbMOtK2P6vnqpwZOLfCuCYw0LeofnvAFd98lbgiOpPnI9yoqTLeNrBO9570dZM9rE+N5DUvfcE7Lef+N+ZKfvV/hz/1pHVT+c5vilFejCewnZu8L4DHJ0s/BqwG8LPUxOTA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR04MB5051.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(316002)(66476007)(122000001)(66556008)(66446008)(64756008)(33656002)(2906002)(86362001)(110136005)(4326008)(8676002)(966005)(52536014)(5660300002)(66946007)(8936002)(38100700002)(40140700001)(38070700005)(44832011)(76116006)(55016003)(83380400001)(26005)(71200400001)(7696005)(53546011)(6506007)(9686003)(508600001)(186003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?Sk4yTWZ1aVNwNG1LMHRHMk9uU0w4ajc4Vis5cjZCUytXTjB1dVBKQ3NUU01o?=
 =?utf-8?B?c2lnSXE0SXRESHZWZG0wMDdkSWdCYUlXQy9TY1NGdDdvWk1PL29ZOEo1eXpj?=
 =?utf-8?B?OW02OGRkdHBIUFgxeC9NMmhHMEIzM3lZT2tZdHdUV2hjTjVGUisySXFiem8x?=
 =?utf-8?B?MWwvTUZiczQxR0drMTVBTXF0RVM2cGcvWnFBeHdXalFEd2l0REhKNmRlMWFS?=
 =?utf-8?B?Q3ZiTXhnWmY4ZXRPSUs5WlhESUcvamU3NXEyUGU5WWVrSDdpdDhjZDZ4azRw?=
 =?utf-8?B?bVFuRzljdUFXbzBpMXZWMVkwYmRiK2Z5OHEvUWJKVVYwSHY5TmVpQk42UjZl?=
 =?utf-8?B?eE9EUjhrdkc4ZFVKeGhQK2xrUXNrOVpBRDFzRjhwK01MRDFmTWd6bXlRRUdJ?=
 =?utf-8?B?Q2gyekdQd0FJN05aZXFkYTBobVEvbzV2SmptYjZIcmtnV1lXNHJEbjB1WWJh?=
 =?utf-8?B?aERXS0NSMWErZE1IZ2piN3VpQjZtUzJQZmo0VjB2eTJWNEpZcW9PdHRmaDkx?=
 =?utf-8?B?Y2pyMjQrSTNRRGw3azlUZ0UzL2NtTyttdm1XL085b2dXc1RUQ3ZCTk16d25J?=
 =?utf-8?B?cy9HV3BBVFN1cmgxL09Va2ZzUElyaFZ4d2xab0h2Tit1TFg0RnlpVEFTSHBy?=
 =?utf-8?B?RlJlaGxTNDJQODREbngrSHJRR2p5bmI5Y2xCNHY4Wkt1U0FIR0hlc215eUFi?=
 =?utf-8?B?ZXFxNUxwY09KRk1RRklrdlNXODBEbHpWeTAzRzhQenRwYlRhVEhIZnp4QUND?=
 =?utf-8?B?VElZeGprM3l5NWlLampzeXFyekFTSCtyanRDaG1KOUJCS1lnQUJHZ3lEYVhC?=
 =?utf-8?B?L0tUeXFySjBwRWxDN2JHTzloblJDLzdHTmE3bDJUcThtdHpjT0I3UFJNUFFr?=
 =?utf-8?B?aDB0M3E2MUZobkNUOEdjQXFuOC8vSUVNQmZhN2JzajVsWFZmL1NLR0theGlN?=
 =?utf-8?B?R1JGSmtYNjh1UTRBTzQ5b3l2Q1B2WmJNaTA2bkRUYys3R3RVSFNlRklzZUl0?=
 =?utf-8?B?c1pBQnU0NXdPb2ZWOGdrNWMycktmQVlqTDBZYlVlcjJRUndzWGwzd1NyNnFY?=
 =?utf-8?B?cHNYRVdDbGVMYmxNMGEwRUt5YnhjaHdWa0lZOGh1cnI0M0F0ck9kZHkzYUVM?=
 =?utf-8?B?SkJrNFkwbnVUcDhyWjVmdmNicmhIakp3cGgvU1ZKSkdJcTVaaXp6SmVWQmQ2?=
 =?utf-8?B?d1dUTy8vblRVZjg0S3gyUDkxZENWSE0yaFlnejNWWU5NeVhWdkljRVY1Zis2?=
 =?utf-8?B?N0EwSm8wVTFWVWhMRjZSZy8xTUFIU1h4S0V5VUFWT2xTZTV4WlRFcC9hWDlP?=
 =?utf-8?B?dU9JZ3prLzM5V1NVQk9UVm9KTmVtU29LbHVEbkFhdWp5blVRdVNFWmlqTVlz?=
 =?utf-8?B?eE4vdGFKSTdLN0tIN1JTTmR1OFZQOHlJZFhBUTYrRUc5aFZyUVZ3TW5FRzFL?=
 =?utf-8?B?QVNHWE8yN0JObjk4bGtLQ0wwNmZoaEx4cWxVdVBmWGRHV1d3VUFyellPMHJk?=
 =?utf-8?B?bVRLNnpMUkFReEx3UWRzb0xRTEhsaFpNUVlxVDZ2L2VBNkRoeXBLMGVmT0VE?=
 =?utf-8?B?bW5XMGJoSm52SHYzWjFCL1RMUVhoZ21EaXBHUEhqOXgwNlRVZlM2aFBVd1Z6?=
 =?utf-8?B?ZGR4bWdvVXV0Qmk3Z1JGNWs3NEVuVmYwU1Y0NkhjUGpyQWkwTTNCakdjUXBx?=
 =?utf-8?B?b0dpNEJVTXMzdmo5UGk2OTUrRlg1WVg1V1lnTmJDbzVJTEdTZEUxb2R3NVBX?=
 =?utf-8?B?SkVwUWhodjNUUzBKN005U3RFdEEyMEFwcjc4SlpNMnpnZ2w4TlFGeTJXY010?=
 =?utf-8?B?Ym54aURXdFlSSXZQR1NuZjZ2UzY4V0JHV25EcUR5ZXpXMy9DZnZ1MGU2WWI0?=
 =?utf-8?B?ODdvaG9pQnRNdGFWQnFwQi9wZzhWRVM2RGFva0k4ZzhKeGVReU10bE9mTEZn?=
 =?utf-8?B?c2xScjFqSFpMM2pUaC93Rkx3Ukd4MjJuNlR0TXlrTmRNTjk5UHdsVGdEeTVI?=
 =?utf-8?B?UWlTSkllYVpEbzE3Zyt4V0JTY3hORkR4N2s4YTNya1pjUElZZ3o5KzhRNHpt?=
 =?utf-8?B?eU5xbXdlRW82VXRsL3dhRzhhYlNVMW5Jc25JTGJlTHlPNGJrOEVPTktmUEx3?=
 =?utf-8?B?M0RlYTBYU0dvN1JDcjh2OG9MMmxTV0lZSGc0NXh2b0twWHFjc1F2b0xhMG5p?=
 =?utf-8?B?T1FsRjhZeTVFYkcyNjBmOXl0UlE1TExpdnUyQ1piZWlDLzdjNTBDTlBKZDJ5?=
 =?utf-8?B?M2hGZXZkOTZqbFVaRENiMUNtK05ZNUVtWjdSeEp6RndPdmF1WWFPNzBub2pR?=
 =?utf-8?B?VE5kNXUyNWlzWTduQ24zZlRoTWFGN3BsU0dlRm4yWUhNV2k5MVBXdz09?=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR04MB5051.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a92bf3a6-4a49-4696-6acc-08da3747fb80
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2022 14:25:52.7580
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZUAB/GrS8mDW/FcPD1cAc+qdLvmA2QZcJUr4BTHjiTyomJJxeNir81v42BYov9sMJchJ9LWGSAHfn8cBZfMexw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5047
X-Proofpoint-ORIG-GUID: 0xwjnEQqaeuQ-fRCNtb6bb6tOX1iJcHS
X-Proofpoint-GUID: 0xwjnEQqaeuQ-fRCNtb6bb6tOX1iJcHS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-05-16_13,2022-05-16_02,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=30 suspectscore=0
 clxscore=1011 adultscore=0 malwarescore=0 mlxlogscore=999 phishscore=0
 bulkscore=0 priorityscore=1501 mlxscore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 classifier=spam adjust=30 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2205160081
Message-ID-Hash: W4JLA77HWXJK3LLK4KH637TUUD3XGFF3
X-Message-ID-Hash: W4JLA77HWXJK3LLK4KH637TUUD3XGFF3
X-MailFrom: prvs=21358e6f41=haydn.nelson@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Marian Koop <marian.koop@ni.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Does X410 support phase-aligned and phase-corent?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OBCROA5FZZOK2Z5I36OCE4E72MXPMKJJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: base64

SW4gb3JkZXIgdG8gZ2V0IFBoYXNlIGFsaWdubWVudCBpbiBhIG5vcm1hbCBmYXNoaW9uLCBjaXJj
dWl0cnkgaGFzIHRvIGJlIGluIHBsYWNlIHRvIHNoYXJlIHRoZSBMb2NhbCBvc2NpbGxhdG9yIG9u
IHRoZSBSRiB1cCBhbmQgZG93biBjb252ZXJ0IGNoYWluLg0KVGhlIFg0MTAgaXMgYWJsZSB0byB1
c2UgYSBjb21tb24gMTBNSHogcmVmZXJlbmNlIGZvciBhbGwgQURDL0RBQ3Mgd2hpY2ggd291bGQg
YWxzbyBiZSByZXF1aXJlZCBmb3IgYSB0cnVseSBwaGFzZSBjb2hlcmVudCBhcHBsaWNhdGlvbi4N
ClRoZSBVU1JQIFg0MTAgZG9lc24ndCBoYXZlIHRoYXQgTE8gc2hhcmluZyBjYXBhYmlsaXR5IGJ1
aWx0IGluLCBUaGUgVVNSUCBOMzIwICYgVVNSUCBOMzIxIHdhcyBidWlsdCB3aXRoIHRoaXMgY2ly
Y3VpdHJ5IGJ5IGRlZmF1bHQuDQoNCkRlcGVuZGluZyBvbiB0aGUgcGVyZm9ybWFuY2UgeW91IG5l
ZWQgd2UgYWN0dWFsbHkgYnVpbHQgYSBmdWxsIG11bHRpLWNoYW5uZWwgcGhhc2UgY29oZXJlbnQg
cmVmZXJlbmNlIGFyY2hpdGVjdHVyZSBvbiB0aGUgVVNSUCBOMzIwL04zMjEsIHlvdSBjYW4gbGVh
cm4gbW9yZSBhYm91dCB0aGF0IGhlcmUuDQpodHRwczovL3d3dy5uaS5jb20vZW4tdXMvc29sdXRp
b25zL2Flcm9zcGFjZS1kZWZlbnNlL3JhZGFyLWVsZWN0cm9uaWMtd2FyZmFyZS1zaWdpbnQvcmFk
YXItZXctcmVzZWFyY2gtcHJvdG90eXBpbmcvYnVpbGQtcmFkYXItZXctdGVzdGJlZHMuaHRtbA0K
DQpCYWNrIHRvIHlvdXIgWDQxMCBxdWVzdGlvbiwgSSBiZWxpZXZlIHRoZXJlIGlzIGEgd2F5IHRv
IGxvY2sgZWFjaCBjaGFubmVsIG9uIHRoZSBYNDEwIHRvIHRoZSAxME1IWiBmcmVxdWVuY3kgcmVm
ZXJlbmNlIHN1Y2ggdGhhdCB0aGVyZSBpcyBubyBmcmVxdWVuY3kgZGlmZmVyZW5jZSBjaGFubmVs
IHRvIGNoYW5uZWwgb24gdGhlIExPLg0KSG93ZXZlciwgdGhhdCBkb2Vzbid0IGd1YXJhbnRlZSBh
IGZpeGVkIHBoYXNlIGRpZmZlcmVuY2UgY2hhbm5lbCB0byBjaGFubmVsIG9uIGVhY2ggaW5pdGlh
bGl6YXRpb24sIEkgYmVsaWV2ZSB0aGUgU0RSIFByb2R1Y3QgRW5naW5lZXJpbmcgdGVhbSB3YXMg
bG9va2luZyBhdCB3YXlzIHRvIG1pdGlnYXRlIHRoYXQgdW5jZXJ0YWludHkgdGhyb3VnaCBhIHNo
YXJlZCBkaWdpdGFsIHJlc2V0LCBJJ3ZlIGZvcndhcmRlZCB0aGlzIHF1ZXN0aW9uIHRvIG91ciBw
cm9kdWN0IG1hbmFnZW1lbnQgdGVhbSB0byByZXNwb25kIHdpdGggbW9yZSBkZXRhaWxzIGludG8g
dGhhdCByZXNlYXJjaCBwcm9qZWN0LCB3aGljaCBpcyB3aGF0IEkgd2FzIHJlZmVycmluZyB0byBv
biB0aGUgbm90ZXMgeW91IGZvdW5kIG9uIEV0dHVzLmNvbSDwn5iKDQoNCldpdGggdGhhdCBzYWlk
LCBpZiB5b3UgYXJlIGxvb2tpbmcgZm9yIG1vcmUgdGhhbiA0IGNoYW5uZWxzIChJRSBtb3JlIHRo
YW4gMXggWDQxMCByYWRpbykgdGhhdCBtaWdodCBnZXQgZGlmZmljdWx0IGJ1dCB3ZSBjYW4gaGF2
ZSB0aGF0IGNvbnZlcnNhdGlvbiB0byBzZWUgd2hhdCBpcyBwb3NzaWJsZSwgdGhlIFVTUlAgTjMy
MC9OMzIxIGlzIHRoZSByZWNvbW1lbmRlZCByYWRpbyBjdXJyZW50bHkgZm9yIHN1Y2ggc3lzdGVt
IGNvbmZpZ3VyYXRpb25zIGN1cnJlbnRseS4NCg0KSG9wZWZ1bGx5IHRoYXQgaGVscHMuDQoNCkhh
eWRuIE5lbHNvbg0KUHJpbmNpcGFsIFNvbHV0aW9ucyBNYXJrZXRpbmcgTWFuYWdlcg0KV2lyZWxl
c3MvUmFkYXIvRVcgJiBFT0lSIFRlc3QgU29sdXRpb25zDQpBZXJvc3BhY2UgYW5kIERlZmVuc2UN
CisxLTUxMi03MzEtNzI1MSB8ICBuaS5jb20NCg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KRnJvbTogTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4NClNlbnQ6
IE1vbmRheSwgTWF5IDE2LCAyMDIyIDk6MTEgQU0NClRvOiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQ0KU3ViamVjdDogW0VYVEVSTkFMXSBbVVNSUC11c2Vyc10gUmU6IERvZXMgWDQxMCBzdXBw
b3J0IHBoYXNlLWFsaWduZWQgYW5kIHBoYXNlLWNvcmVudD8NCg0KT24gMjAyMi0wNS0xNiAwNDox
NywgTWlraW8gRnVrdXNoaW1hIHdyb3RlOg0KPiBIaSBhbGwsDQo+IEknbSBjb25zaWRlcmluZyB0
byBwdXJjaGFzZSBhIFVTUlAgWDQxMCBmb3Igb25lIG9mIHJlc2VhcmNoIHByb2plY3RzLg0KPiB0
aGUgb2JqZWN0aXZlIG9mIHRoaXMgcHJvamVjdCBpcyBNSU1PIG9wZXJhdGlvbiwgSSBoYXZlIHNv
bWUgcXVlc3Rpb25zLg0KPg0KPiBRMS4NCj4gRG9lcyBlYWNoIGNoYW5uZWwgb24gWDQxMCBzdXBw
b3J0IHBoYXNlLWFsaWduZWQgYW5kIHBoYXNlLWNvcmVudA0KPiBvcGVyYXRpb24/DQpJdCBpc24n
dCBtZWFuaW5nZnVsIHRvIGNvbnNpZGVyIHBoYXNlLWNvaGVyZW5jZSBhbmQgcGhhc2UtYWxpZ25t
ZW50IG9uIGEgc2luZ2xlIGNoYW5uZWwuIFRoZSBwaGFzZS1jb2hlcmVuY2UgYW5kIGFsaWdubWVu
dCBpcyBhbHdheXMgd2l0aCByZXNwZWN0IHRvIG90aGVyIGNoYW5uZWxzLg0KDQo+DQo+IFEyLg0K
PiBEb2VzIGVhY2ggY2hhbm5lbCBvbiBtdWx0aSBYNDEwcyBzdXBwb3J0IHBoYXNlLWFsaWduZWQg
YW5kDQo+IHBoYXNlLWNvcmVudCBvcGVyYXRpb24/DQo+DQo+IFEzLg0KPiBXaGF0IGlzICJMaW1p
dGVkIHBlcmZvcm1hbmNlIj8NCj4NCj4gWzNdIExpbWl0ZWQgcGVyZm9ybWFuY2UgZm91ci1jaGFu
bmVsIHBoYXNlLWNvaGVyZW50IG9wZXJhdGlvbiB3aXRoaW4gYQ0KPiBzaW5nbGUgcmFkaW8gaXMg
dW5kZXIgaW52ZXN0aWdhdGlvbg0KSSdtIG5vdCBzdXJlIHdoYXQgImxpbWl0ZWQgcGVyZm9ybWFu
Y2UiIG1lYW5zLCBub3Igd2hhdCB0aGUgc2NoZWR1bGUgZm9yDQp0aGF0IGlzLCBidXQgSSBrbm93
IHRoYXQgaW4gIGluaXRpYWwgcmVsZWFzZSwgdGhlIFg0MTAgZG9lcyBOT1Qgc3VwcG9ydA0KICAg
bXV0dWFsIHBoYXNlLWNvaGVyZW5jZSBldmVuIHdpdGhpbiBhIHNpbmdsZSByYWRpby4NCg0KDQo+
DQo+IGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL3d3dy5ldHR1cy5jb20vYWxs
LXByb2R1Y3RzL3VzcnAteDQxMC9fXzshIUZiWjBad0kzUWchcUs5eEJ1S0JXdXNEZXdDcVRrZUZs
MVNqQWV3XzM2bkZJeHFlc01hZnFPR2hlTUVsd3A1REsxNUllLVRMaVlJNk5CS1Fnem5ZRGZoMERa
MVd0SERZdWckDQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQ0KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZl
QGxpc3RzLmV0dHVzLmNvbQ0KDQpJTlRFUk5BTCAtIE5JIENPTkZJREVOVElBTA0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
