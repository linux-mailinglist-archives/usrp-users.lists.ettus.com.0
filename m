Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 95438533EB5
	for <lists+usrp-users@lfdr.de>; Wed, 25 May 2022 16:03:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 41EBF38515E
	for <lists+usrp-users@lfdr.de>; Wed, 25 May 2022 10:03:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653487434; bh=RJ1nNBaBqIGeB5wmAxNCKOU6JdlGZuPsAXROjRwOOug=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=M8ru/IP/qk6h9ZeyQnMyVuYAXDLRIaHSckgq8d7mmW4DArhbjUmUMZak1NOcuekYx
	 8neutGuu904lOiDqpY+1hfqvSPrfbmKaFc+626ZXnfm5v/eVO4PhNfzbHCInpsZgud
	 BcIETKJBk5tgUPP2MBE//cDffZF5WE6xhzChYPCxMhZaPxU5OHA4ctLNT/NJ6VMK40
	 l+fRD+2BSNRFeN2hK3zYfQ0i8JJyF9vddOr5k4EgnQiSuIi1xsv23rnxbIh8IUVzIn
	 k6hlfcHiXHXdNVGxN+70OvBg1rOOYEG8CLSHDTp1mLmpkagY/FS4ZUtQKJoLj6fmFN
	 mD4KXO1t/1pqw==
Received: from mx0a-00010702.pphosted.com (mx0a-00010702.pphosted.com [148.163.156.75])
	by mm2.emwd.com (Postfix) with ESMTPS id 4CDBC384D31
	for <usrp-users@lists.ettus.com>; Wed, 25 May 2022 10:02:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="wPXeJCYI";
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=nio365.onmicrosoft.com header.i=@nio365.onmicrosoft.com header.b="kSwTC3ix";
	dkim-atps=neutral
Received: from pps.filterd (m0239462.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 24PCZEji004974;
	Wed, 25 May 2022 09:02:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=from : to : cc : date :
 message-id : references : in-reply-to : content-type : mime-version :
 subject; s=PPS11062020; bh=f+q0C90Pg/3NjLncwknECFhgOvQfKUQqXJsutb72SK8=;
 b=wPXeJCYIlCIZvQ5fKyQZKJuWES6+B+hHevgMhC0GEiceq85OmTC1hZI+BYICMZsYbEEw
 KayDWxvS4PhmUJXLn3/pXjpKtsEClf9xF/4fO0XEDj2fb/o1U8RMQeynamuh2Bbxs0rb
 5qf59FnsWvHQH9+OpBgtpd4YkZfOlPYuJv7qcq77N1m9OwFqnqKXl/kwsQXk5MJvxHIa
 eumeXCfZFc/McJIRQTvicBDGyBW3KuE0UzUp1qIzQUl4DVAMk2ChkgskULTMvccSXyev
 FZVzqycjQXLPZsGQwM8XbaIq6sTlZu+b6txbjywVkn2Bm4NyAjARYnvffAfP4yWBnhnT SQ==
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2106.outbound.protection.outlook.com [104.47.58.106])
	by mx0b-00010702.pphosted.com (PPS) with ESMTPS id 3g93ub1yg3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 May 2022 09:02:46 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZMl+mYptKMTk8UX2lhHzDXsvTofZi3wQu5yjqCW+RM6yEaGVXV09U49lbtwTlvcGrRWABi9wcmLRX56mKtl4/tlurJkkwlmze5b2MpeeOA8fPegWTarfEVAPWXYFR0TTVuHfCbxSUF5ig62sy+rcYnZbD6hEAf0GmAltz9FvknKR/3ZvatAVZif8b1zMTSbvashsnEFGcmOzMTQcQR0WVb/dFTvQxZgpMYtwuoQW0rEqvXyp3n43Lh8uhGeIDYAmDuiu/IT1G55nTGTHiUMpOjUdoRr51XhMqO9LR+FxWembuEk69IoMBIqWGpfKyDYKDXfi03Su8hTUekqGDdM5cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f+q0C90Pg/3NjLncwknECFhgOvQfKUQqXJsutb72SK8=;
 b=Ys9CRK2r+xtfpDW35ku+Umf/Uv16Aj8GzjNepbQCxByX6b+TRHl/S+y6fgZL0+Tu9aY6WUpCMsRe5jXmRP20OzeJVkz00eRkbDFN+bD3HKaJcPK9RRnWzlBvgWudEO1/6hFVmdxBSR7+y/dROi697OiFcCp35qJPhpKNc31035io5+Xvr2HlMeUCk2yzdAFDuahiE3jQshwpOn2XjXcdKMWxGMpyhcdVFKAULkLGkqvYF+kuOAQFF2khKMv1kF6U53yQ6oABkimPjfscpuMVogeshvzoQTMeZUsjoSkmex3YsfXeHCnsXFfJ0d7SDBUJcptFp4wHo2ze0PVYV4ir9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f+q0C90Pg/3NjLncwknECFhgOvQfKUQqXJsutb72SK8=;
 b=kSwTC3ixKND17vYX0jko6xXHvUY90/WIHgoM07tixQQN+rLIG1U8Kgo9DPefunvdulA1Mh33rp9KhW5O72Bs6OAZ5mS5/jrT8no8Ay3bzJ/aBgKev9izBg/NWt24q5Poj+P4CNPDG5hAndrGVNlWTuIQKiPwl2BRtD31vAN6J6k=
Received: from MWHPR0401MB3707.namprd04.prod.outlook.com
 (2603:10b6:301:78::29) by PH0PR04MB7207.namprd04.prod.outlook.com
 (2603:10b6:510:a::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.17; Wed, 25 May
 2022 14:02:44 +0000
Received: from MWHPR0401MB3707.namprd04.prod.outlook.com
 ([fe80::ecc6:6dac:4f7e:5318]) by MWHPR0401MB3707.namprd04.prod.outlook.com
 ([fe80::ecc6:6dac:4f7e:5318%3]) with mapi id 15.20.5273.022; Wed, 25 May 2022
 14:02:44 +0000
From: Jovian Wysocki <jovian.wysocki@ni.com>
To: "mikio@dolphinsystem.jp" <mikio@dolphinsystem.jp>
Thread-Topic: [EXTERNAL] [USRP-users] Re: Does X410 support phase-aligned and
 phase-corent?
Thread-Index: AQHYaS74/xiTZFfM+UWzGTQhr0xp7a0hj1MAgAEavICADLckgIAAS36E
Date: Wed, 25 May 2022 14:02:44 +0000
Message-ID: 
 <MWHPR0401MB3707A2E7AC3CACA5A20ECDB9FAD69@MWHPR0401MB3707.namprd04.prod.outlook.com>
References: 
 <CABfZwceh1KzO9770-48_wod=D-aAqCuvA5HO+L4shJnbebdnOQ@mail.gmail.com>
 <3bc7c4f4-eb0e-6273-e1ca-bd474272a996@gmail.com>
 <DM6PR04MB5051618A0367612C5D8A2C5EF3CF9@DM6PR04MB5051.namprd04.prod.outlook.com>
 <CABfZwceubKxP72yUJSUsaWW1E+-fEAwpH+baR=WLNuQBQkLaLQ@mail.gmail.com>
 <CABfZwceh_8ikYebvhrR_bm8vNAPJsVW45+0cZ5PkR_zEJog1Zw@mail.gmail.com>
In-Reply-To: 
 <CABfZwceh_8ikYebvhrR_bm8vNAPJsVW45+0cZ5PkR_zEJog1Zw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Enabled=True;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SetDate=2022-05-25T13:58:36.7925169Z;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ContentBits=0;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Method=Standard
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4acb8afc-09ca-4f8e-f842-08da3e573dd4
x-ms-traffictypediagnostic: PH0PR04MB7207:EE_
x-microsoft-antispam-prvs: 
 <PH0PR04MB7207101223DC9CE29C3F02C4FAD69@PH0PR04MB7207.namprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 dq1rcGuxOm4CZdGALa7tAY1yOPRD6Z4hb6tDW6HHQ0DQGXu6ojfWYYEydohweh5aZ1wCp9gwz3pw3s5pX6zD0vmN8kx0+baJcgjGqmfQfuwJOM6nX/Iy4HKhr/IID/zPRRWP9Xw74JgULlx8zcJbdDeImLFMWRmoSDWZYYAK3c1o2yKse2nr+tbxPjzj+AGsHqI5OSvu/3SEI+9ge0bzlmRokyd1Ye+sFaHC1ab8Zc/dC8979EHnOk+BvH+H5QAqM9VebXnaZQOullEBc2sYkkfS6abf5n4ifBtGcz97GYcxdPRV5Z181CxrFTxelRBJueCeKd5eJfklIIuN2y+M9zloQA5lQGMZVpi+/1nQKs2E8FamPNlmLudlwRB+dKOOwnUrH3llP7txtXP9eeaJWfXBjIQzfA4Jeec/DijNXOTCz6SjwZgUuo6ZHbD+Hd1F43MSh//Zon0LveuSFlsugHzFyhRUTztD9B948O9Q4w9pOr3xLyyTrFQG2KiL7knpBTt+LCVXLujqZOBdyaIpp1L+nV+24IsRFtu8LJAdbjTttMg0x4j9onCFbY5iMFnKYgYk6Nw5CCwCrfoCzknOEBuka5rxG+hk6yXXwTD4Z2vmuo1x+uwP82VrV2zkEcoIsF68N3uG6bD2S+YdwgoSbrDwRAZnOBh4Tmy/8X/rsaNJyo3cZkV3NBs7JKvgBE9LZ84Dwt/mLCgGhUdwrn0Zx0c8K+2b030Du+FZnHwImc6QjrGX69shhVUusIhlJIX/03Z/sNuvCOkUnZS4vVY1P7CA92oGZHtxGClm0JeyF6Q=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR0401MB3707.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(33656002)(2906002)(966005)(508600001)(122000001)(64756008)(55016003)(7696005)(4744005)(38100700002)(52536014)(38070700005)(44832011)(316002)(26005)(53546011)(5660300002)(91956017)(8676002)(66556008)(166002)(8936002)(66476007)(66446008)(76116006)(66946007)(4326008)(9686003)(86362001)(6506007)(71200400001)(186003)(21615005)(6916009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?7NabEkKc48KwmhR2qD0sVTcS+wPu78g5i/NF9v5ePBqDixB+MzujrqMfCf1O?=
 =?us-ascii?Q?28gI/ZHtKBNFXVJxgfT/QExYgxB10kw3naDQ7VPliFOmyTlVjzS7gaFCVL82?=
 =?us-ascii?Q?mpUaSexmRVn1fku60xWLu+BV6OZugfWV1nR83/39RKRA/lFYDcYkRh8jirIH?=
 =?us-ascii?Q?TT2Z1u3dwNa2YUHmDFoIKRX48CtUwb6NmK3Oayw9oDZJx97unmramz/gFAgV?=
 =?us-ascii?Q?yL5HewzCxhfU5BFLjCY6Qgs9oPr6oOKw5YhZIaKgDRNcnr3mI2dA0Z93WBYe?=
 =?us-ascii?Q?A1T5ZfsL0rpBGbtVbYZDbdfhF+TIWFcqDaP7Eohoxypuj3cB2GQL/e29VA7L?=
 =?us-ascii?Q?kIivM+l++JXRgMDHcG8suPVMziUYdnCj3GBt2fWHvcthJipFFc+9mE2cJmWP?=
 =?us-ascii?Q?opzSi2kAR2woVKVr9uMG/cy4DQrlJ3uKDgLXCwrkyDKpq8f3p7Me+aXzvyPB?=
 =?us-ascii?Q?FWC3FM174VyLSw4rGBIpYZAWBqcVMd3Bd2yGTwYnzyfFuUQh5WW6k88ys4nF?=
 =?us-ascii?Q?J/pFunon2ZLrEe5l3MLvPq1at9zNHCayWbvVyXbsVrysJl4UwH7owJorLPNW?=
 =?us-ascii?Q?x3VmPP9PWhS6IqS2uLS2JRq689KgQuPFb+PHmsDi/3k0bIU2inGI8nnd3S84?=
 =?us-ascii?Q?fxsr7WyeYXTdsWbrcIlceE1NPGzgilTmMqp1QYBM5SvaflwkLvwlMjelXSID?=
 =?us-ascii?Q?2l6ZPSXOkw5K6i6uMBk65hUr0oJU22X2MIICKp5PKtg4I0ozrFa2E6SIQHfd?=
 =?us-ascii?Q?AGLlis/jhLdPUYR4MMiU2SfTCAQ/aNKHiPFVeMeqt28MhmS2y5I6Q9MDYjZ9?=
 =?us-ascii?Q?5Ra8bdzzTIr36XvtSlbbs117w84S5sdgjIe/Mhn1e42NwLMK0HGR0qrwK7Uy?=
 =?us-ascii?Q?Ci3jYrpH9HiPX5JP/PXmRiO3wpgzEDUkr46pemsK2Dl0Rx+R8j9RPkdJcc7P?=
 =?us-ascii?Q?nwG0AwQwW/YxYDVeUfA+HtVDquYfvA3pbVqTwwQELM0mIe46NzcIMYhHCnTY?=
 =?us-ascii?Q?OeKVGOPBBHDdaT1Bqvl/MfzZaTTgiV/0ywaSEwaBtKXYs6wEIsD1udmUzd0e?=
 =?us-ascii?Q?u3WSgd8V9GzlNinaw+iW+KrV58r/idu3iwS7TUH61RZGnNGQdDuUGLaL5dAv?=
 =?us-ascii?Q?uDonco+ayw9aUOV5nHsvFMwLiF9akvE1KO1F19BhsDeXbn2Ht4KdDp0H7Hfx?=
 =?us-ascii?Q?YJlgL5cteXTZyE1TbS/dA1REwKidRgGeu5rXAODCvwsETrLybTC33kSEChok?=
 =?us-ascii?Q?cdumkT55A1qv+OUcQyFJksnmuZMfg4ZOBnA9Hv7KRMOXZE9ldQ38uVUWzN9t?=
 =?us-ascii?Q?StfLbSKMPZ0gHf3jeGFgEfy7yjpY6BG8NitNCNk+ec3x0M7rkMEYuT2xLiNN?=
 =?us-ascii?Q?7a9l+/bl2eKpeOapTd65MAQlf2d3bA23p9ZlcAz4cg0i8HSV/9jJdLtEb2Nr?=
 =?us-ascii?Q?oQjTQsaT56ZvCOv+vWChBfwzWxgL++XurpI9klntsCnC8k6dMQrlzkzUrlgi?=
 =?us-ascii?Q?yzjOz69KlIweNSyfrJJVyzuTsjYQE7uSdm855iBkb0A/f645QBb5JVDwCb7L?=
 =?us-ascii?Q?bVSA1klonaqDrm53FwdiCTzO6odN8IUBx2ZJqsA1GMJw5mQ8sPiWiMYHgDQU?=
 =?us-ascii?Q?edTXZb3tVIrQyQj2bol8Y896gVT248062n6FIYmRzHUtnPjmjKQexGedPEpf?=
 =?us-ascii?Q?ahAZCGgS+OG3PbyTXPhi08NjMcJ7y560qCqYn1O6VMZauWwzxqw4QLu9OzD6?=
 =?us-ascii?Q?p0cPMi3YdFsxzvSInRItfZZJKOojBUw=3D?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR0401MB3707.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4acb8afc-09ca-4f8e-f842-08da3e573dd4
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2022 14:02:44.6165
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nwPj77GtcqJn8wN0ztwyVtGhAsfq809mA5FIuc+d12wRheWjipoFVXyl7fsuP9m/ELAKUL6/cXl4XQOalJctpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR04MB7207
X-Proofpoint-GUID: bs0o0Q28rwMZ9O1jy2NBYzsEk6AMnQde
X-Proofpoint-ORIG-GUID: bs0o0Q28rwMZ9O1jy2NBYzsEk6AMnQde
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.874,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-05-25_04,2022-05-25_02,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=30 clxscore=1011
 mlxlogscore=999 impostorscore=0 suspectscore=0 mlxscore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 adultscore=0 classifier=spam adjust=30 reason=mlx
 scancount=1 engine=8.12.0-2204290000 definitions=main-2205250072
Message-ID-Hash: ROYGK2UUK6ER3K52TQ2CJUJDPYAPANFH
X-Message-ID-Hash: ROYGK2UUK6ER3K52TQ2CJUJDPYAPANFH
X-MailFrom: prvs=21443b97b1=jovian.wysocki@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Does X410 support phase-aligned and phase-corent?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IKWWKQ6NDDCQSAEHJSP7IXE3MPQJ5JCV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8753546104608154042=="

--===============8753546104608154042==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR0401MB3707A2E7AC3CACA5A20ECDB9FAD69MWHPR0401MB3707_"

--_000_MWHPR0401MB3707A2E7AC3CACA5A20ECDB9FAD69MWHPR0401MB3707_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Mikio,

The Radar EW testbed does not support the N310. Currently it only supports =
the N320/N321 USRP. Because the LO Input is different on the N310 it would =
significantly reduce the frequency range if used with the N321.

Regards,
-Jovian Wysocki

From: Mikio Fukushima <mikio@dolphinsystem.jp>
Date: Wednesday, May 25, 2022 at 4:29 AM
To: Haydn Nelson <haydn.nelson@ni.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>, Marian Koop <m=
arian.koop@ni.com>
Subject: [EXTERNAL] [USRP-users] Re: Does X410 support phase-aligned and ph=
ase-corent?
Hi  Haydn.
Does The Rader EW testbed(N31x) support not only N320/N321 but also USRP N3=
10?

https://www.ni.com/en-us/solutions/aerospace-defense/radar-electronic-warfa=
re-sigint/radar-ew-research-prototyping/build-radar-ew-testbeds.html

Regards,



INTERNAL - NI CONFIDENTIAL

--_000_MWHPR0401MB3707A2E7AC3CACA5A20ECDB9FAD69MWHPR0401MB3707_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Mikio,<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">The Radar EW testbe=
d does not support the N310. Currently it only supports the N320/N321 USRP.=
 Because the LO Input is different on the N310 it would significantly reduc=
e the frequency range if used with the
 N321. <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Regards,<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-Jovian Wysocki<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">Mikio Fukushima &lt=
;mikio@dolphinsystem.jp&gt;<br>
<b>Date: </b>Wednesday, May 25, 2022 at 4:29 AM<br>
<b>To: </b>Haydn Nelson &lt;haydn.nelson@ni.com&gt;<br>
<b>Cc: </b>usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;, M=
arian Koop &lt;marian.koop@ni.com&gt;<br>
<b>Subject: </b>[EXTERNAL] [USRP-users] Re: Does X410 support phase-aligned=
 and phase-corent?<o:p></o:p></span></p>
</div>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi&nbsp; Haydn.<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Does The Rader EW t=
estbed(N31x) support not only N320/N321 but also USRP N310?<o:p></o:p></spa=
n></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><br>
</span><span style=3D"font-size:11.0pt"><a href=3D"https://www.ni.com/en-us=
/solutions/aerospace-defense/radar-electronic-warfare-sigint/radar-ew-resea=
rch-prototyping/build-radar-ew-testbeds.html" target=3D"_blank"><span style=
=3D"font-family:&quot;Arial&quot;,sans-serif">https://www.ni.com/en-us/solu=
tions/aerospace-defense/radar-electronic-warfare-sigint/radar-ew-research-p=
rototyping/build-radar-ew-testbeds.html</span></a><o:p></o:p></span></p>
</div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Regards,<o:p></o:p>=
</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
<p style=3D"font-family:Calibri;font-size:10pt;color:#000000;margin:5pt;" a=
lign=3D"Right">
INTERNAL - NI CONFIDENTIAL<br>
</p>
</body>
</html>

--_000_MWHPR0401MB3707A2E7AC3CACA5A20ECDB9FAD69MWHPR0401MB3707_--

--===============8753546104608154042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8753546104608154042==--
