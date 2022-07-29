Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC7E5856AC
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 23:52:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3A611383FA5
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 17:52:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659131570; bh=BXKy028Mfv74107X0NcRVDwfWdNymZ5QzLIRo/0HAws=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PPyBnjYjRiqXrzCg+U8XAg80IG4zXjInhfXPQAKhSmaPjpWOtdZ4RGsJr+aev2Iau
	 CwO6mWDU/xXDBusp3aB1g18RFyWW8Kqogm9F7lATsrdbWHaRC6a0Wc1Sfo/ckxyPDq
	 UIrCJp6HHHQF28MlQOChVAUGJUmWkxxiMQ5+hGUrCav43BjpDfI12wel4BIVr44Bcx
	 Oxm+f9AqpqMW3qqAn7zieJ5KodiX6Gi2saTp38fs/Ty6MBuxCFNZ3c201txn7zHB57
	 MPkrHS9lhxxjNW5Fx2b9rdyMoXW0zCBPyic5E8XHWz+crJ5dKMGpNt48bi7Q9PqgEY
	 wobDAVeGaXy8Q==
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com [148.163.158.57])
	by mm2.emwd.com (Postfix) with ESMTPS id A11BD383CBB
	for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 17:50:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="mRfFvTJO";
	dkim=pass (1024-bit key; unprotected) header.d=nio365.onmicrosoft.com header.i=@nio365.onmicrosoft.com header.b="gCFBPGe+";
	dkim-atps=neutral
Received: from pps.filterd (m0098779.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 26TDC11s001484;
	Fri, 29 Jul 2022 16:50:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=from : to : subject :
 date : message-id : content-type : mime-version; s=PPS11062020;
 bh=HemOwnPJ2VL2PDhja95OrJ+m/Wg+ojtU296ShtH4huo=;
 b=mRfFvTJOHSdqrV02/KAdbET0ii2+zoLFzR+qmyyr5yItEo/RQtYHCkEeSA8w0ASjrkXE
 82j3G0foDgZ7/Yuu3DqC3C6nIHXEzo0focuLL0rjFl2cLcwuPqrVpQepDz8TUPFgQimb
 nLxGLG3JaKnv28e4hF/0G3hiOt16hsgofiXzSOSjVlqOWIedffTtdnLrQsVGVm9KlE4a
 9US7ZsvLIv3JpFMtcHU8keFvyiwgcCX+OCYhSTyS30O1S/7H89bKWY5Y9aMkiRuhpmT+
 1B7p68/NdBK/VPS8ep21dev8fywK0fCbRCoQo5vxag4brfv5LtBdo6Fw5ibPO/YTvJPq cQ==
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2105.outbound.protection.outlook.com [104.47.55.105])
	by mx0b-00010702.pphosted.com (PPS) with ESMTPS id 3hget6knwv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Jul 2022 16:50:29 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dVpdZI+pJYCLENOPdArRn7oSQGnEwbwjOxHkDS8dhNrBKC6VxMQX6JGuwdR3E0lQ6tDjw+8YNPOe+UazoydDO+C3VQ0wRTT7BmmwadeSkemcuWVIlxBzJ5P4f5E/9GwVCcoAPjwvi8cmEVfeH8fFeL6jgZmczfLYi646Px6dQTJg5reRyqhwlwvtUvMIuzRdlgupCRfdlfjZJ6r3A7ypKAGtMxMHin5U21aY2emXo8QCM+9Nf3OOXN/TL4Yh2uzI34fFuxCox5zyLlgUzqBB3hwiemx1FkEZiNg/Lc3q02z1WizZ8fQ4EGlg4BkDQwBurOEibzp2848p5x6rpDMp6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HemOwnPJ2VL2PDhja95OrJ+m/Wg+ojtU296ShtH4huo=;
 b=HCIHlOG2k8V5EJYnshxg6UfYIvFZAI5nhsAX+hUOpTtzH7m8w6huehfBD69GkQhkEcNvdLbS7xww2b02GdygO9QpMPzLum5ZBYsroBaGEW78Vng9sHwpeVlPXcsk78ykTA1fNdTPS2U3enirInDg8oj5j8tStCcd45t72PnFFtBSJwuLglhD7UW+fcBg04+4VEQwDxyrg95Tr6OGWBbVVPUd0+QC3fVuTrYedTS3bdANe4fpUlUIYD6B8B/N6Qici92aPrlGCUAfpUUXgSDFS9FwuhopNzMbizvU37BcNNA0gpvDLOuy1SYcPauCzmRCxLGNbJZUZloHwgBj+UOikg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HemOwnPJ2VL2PDhja95OrJ+m/Wg+ojtU296ShtH4huo=;
 b=gCFBPGe+o2Zva0VpDuv5wnx6UDVsKT3BXFu4WSqquB8mZB+4mimgf4roX8xNI9dOcf/mTT7/dHTFYt1fO0mePSYJbN8sUVuOZX0V8HAVGwKWNlT9YCTnEXeiVSW42CAFnSf1KDV1z8F1YJMLePdvwb81lwwJHRPoV4fynsrZsHo=
Received: from SN6PR04MB3870.namprd04.prod.outlook.com (2603:10b6:805:43::15)
 by DM6PR04MB3929.namprd04.prod.outlook.com (2603:10b6:5:ac::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.6; Fri, 29 Jul
 2022 21:50:26 +0000
Received: from SN6PR04MB3870.namprd04.prod.outlook.com
 ([fe80::3947:9153:efa8:364a]) by SN6PR04MB3870.namprd04.prod.outlook.com
 ([fe80::3947:9153:efa8:364a%5]) with mapi id 15.20.5458.026; Fri, 29 Jul 2022
 21:50:26 +0000
From: Steven Koo <steven.koo@ni.com>
To: "discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>,
        "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD 4.2.0.1 released!
Thread-Index: AQHYo5UJ9FTvJfgGm0K7dcWUIgwLHQ==
Date: Fri, 29 Jul 2022 21:50:26 +0000
Message-ID: 
 <SN6PR04MB3870B3932E601E69236EF18FE8999@SN6PR04MB3870.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Enabled=True;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SetDate=2022-07-29T21:49:10.7191330Z;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ContentBits=0;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Method=Standard
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a0d5e39d-75c0-4cc5-42c7-08da71ac590d
x-ms-traffictypediagnostic: DM6PR04MB3929:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 GW7rRARVthX0pww3E391DA4OfOp3eN8amEsShGVSW42LuJTbSz3p7zsia7TEbtiTURenRaJTXAZqaOwLB2lXwKP5s2MOmGv1rEZDTaM9/CULsm8D4y/v3T59QACfWckV3xorPLUyhqlzK9HssZv7ohefDxunIIBhi7dh3MoY7n2bcNHsTjoHvwLxS/IaIZt7dEcWtIE44p3lqzum5WR2HLTPe96BVf6uzYj/WsC5nADPEyGlf1uNF7aK0bWe4XwUenvgzDwb7ObdSlmAsRxm7ftQCRyG/WDNRH5Vo+nEXkq2oDicxbl8l1PpebXAO/VT4XGJOPR9F+eNP1DZZTTqDX81X1ZHkKFpfxIzOuJIuzpHmob8frtzkBgBlH5s/ukAJgAMokqyvpnEatowkhSPTBt6pQBf5J+k6XNkqiaHp7KhrfyJCh1+KV237OBtTKLYmce9f2fzFG30htX0MAlQ6qcPvwXaRSGUrjmypDiJLmL2uUrsCX85ZCvbmANS6rj8lyKAJd2ON0mGDf3UTwf3N3Zwb4NgZ+fTrxH+d4yb46vEVMgUX8++/WssabIql3dqMM21sgTlxDfcbDGZzsekAWs4dKFvjEM57/uM+czBdh0OMaQ78HRUgmerVZlZvPBCt0Xh92zPXcVVkOirnLYQSHcLDGL7UDJos3y9ewUGFyXMk6ZKJMsoJzx7kMPGYMFKQNtO8TK35C9VmPeTyuJcmSJJGJt9UYDsjp9NmAwVExNozzP1vCO/pL4antFvF2coAddftmeRKUqcQt0upCSOOz4OS646Dpt1wut5NGm4ix8hHzsTfVZ9kx2PP0TCakJDoSRRdEqy1oiDYvyE43nHfkEcmSpyKNjdN5c2pDcSEl8grDcdJ+ixxwrdLGAlbbjk
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR04MB3870.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(346002)(366004)(376002)(136003)(396003)(39860400002)(52536014)(8936002)(66556008)(66446008)(76116006)(8676002)(38100700002)(5660300002)(66946007)(64756008)(66476007)(4744005)(2906002)(316002)(110136005)(44832011)(7116003)(966005)(6506007)(9686003)(122000001)(186003)(71200400001)(478600001)(33656002)(55016003)(41300700001)(38070700005)(166002)(7696005)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?0C6Oj7TqcOiv7OdDWpdHK6j5wNm92URrWMs+eToZ7BQNMb6jQhyeGxP4?=
 =?Windows-1252?Q?20jiIbNe/VezEYZNA4s+XhgB2ABschkuxZ0zLO7gDc5H0BTw5LfNJs/3?=
 =?Windows-1252?Q?s7tCsbqnTKHhXiHE2NPmXEBNmrNIek4ADp59Sl5Rds6afa5ZMrqlFi9L?=
 =?Windows-1252?Q?qWd5QReHFVD8jwVQVKreowh6rFKoUdiKfUUp83dOboOwduHl3D1U42ov?=
 =?Windows-1252?Q?orKsNMQ4cXK0apbHxhhBU9Ni6kjZEWPoQ+Js/XTFDx7fDFx10iNvuyRO?=
 =?Windows-1252?Q?asBgQ46U6kQnyOb1yUC/HqvSK8At9gZamLF6JR/miGM9wcrUh8FTD+P8?=
 =?Windows-1252?Q?OofZcl+3QVwDZTGx8hfAoCbvtK82r1pPTXVAGnguCSeJRQ1IesDSvGp7?=
 =?Windows-1252?Q?m3ADkyQrpA6n+r4CzHEn/hD538OTaoL85rFf3T1zhNeif/7Hk/pkxfZ3?=
 =?Windows-1252?Q?eW4Fy/X7lhAaIcK2BgTPUn9IhYOKFXtLkopH1uUrrZNvw80V3x7WYpDu?=
 =?Windows-1252?Q?N3Qsd9a7DI/7Vvmna3C/WhYjE4YaoABjiB/8OAQ7IVhBEsNAImkgtciJ?=
 =?Windows-1252?Q?3mqNNAt61IaF5lcMmpeSYz6Yt0uxkiH3C8L3rLH3UOudfZkS82xAb1K+?=
 =?Windows-1252?Q?HsdTsi8cdelwjRBoO/E4GV/z2Reo7daSKxxa3+6I45ork9W207PdWhp2?=
 =?Windows-1252?Q?5Ai7A5Bw76q16uX7slJyWC6GAWph4XI0Q4Y2hfLjKlfaU3VN+0pEO43N?=
 =?Windows-1252?Q?eu5O7YFN8kT9fI5PT/rajcmWC6FKqTovLkWrzjudTgh9jJEvwe5Aqq7+?=
 =?Windows-1252?Q?XtZidJz7PClKbXDBVtwJwyGrunTHP4Bpfx2AaKWK2cc9/0u6G7+4Bdwd?=
 =?Windows-1252?Q?nSAMZJWmD7UPXYDqMXyosW3YVP+DvomgiBnUuawu2BBpyCMQw8mxC1R1?=
 =?Windows-1252?Q?RDaDW97NwQeuwlTk+wLVbBQkDKpPJIS/yeAQm3HFaj6QJlHN5R2xwk4M?=
 =?Windows-1252?Q?cxHcqzVhBWPApI+SvArjQWcls7elEaPXCBjxA2FE/9o6oj7lP5iC0pjC?=
 =?Windows-1252?Q?axD94mDI5hspvroC+HYqL1X14RRK04RwfiYCr6W9VeaOAtOCQ/lJmSkr?=
 =?Windows-1252?Q?KZ0DCw/YG+KoYW1uMganGeF2VlkWx594HW9uR05uSqUc0hRjDSTL6eE3?=
 =?Windows-1252?Q?UPLtHcrpo2su0HKPArM8Ty5EO4G7KbgKxxAkCR8WC6VMSk96dNuFpSMN?=
 =?Windows-1252?Q?D+GzeI3MV3uLN6DEMzZSpGGEiAVkQJwU5awX8AV+Y3YofK1tRRtLk1mI?=
 =?Windows-1252?Q?WVyIpCNsbPcy792s8Pw9GXtcfWChz0tNLRtMFQOilglzdkHkIKuoW5+C?=
 =?Windows-1252?Q?suTOVzOKh4s8eiWyjW5kR/W6PnJZeQBmoX+oYTNysLhnlkMCzd1An4Ri?=
 =?Windows-1252?Q?8qPNpR5dqEk2wa9A/G1cBGdTWf2Zj3b09ogXSEcNV5kKQOw3ZI45PFXS?=
 =?Windows-1252?Q?tgA+y3pZh2TDGtfuColMoSqE/Rrp6eVSw0AZ4IGQVWnN+4qhPRH9pekk?=
 =?Windows-1252?Q?A/HOTXLi/ujYb2SOQSNuYxuJzZBqlF/8up4ETReJldVaCu0D5/YhjmPD?=
 =?Windows-1252?Q?wklVkkeLsH7k6AIoA1h6cFhIWrsf84zBQUANG8/OpVbitSJhfG2cYlvp?=
 =?Windows-1252?Q?2r3vRNwfzPnvWhTQ6AZ32RuCInTvx5mIui2Rr6migVBgPblfbfsczlF6?=
 =?Windows-1252?Q?imGaHrMBxYul2HPk68IWsILWFpdmXH/WP7UnSaN/+t2E7mPcwXQ38FoQ?=
 =?Windows-1252?Q?/z32Sw=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR04MB3870.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0d5e39d-75c0-4cc5-42c7-08da71ac590d
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2022 21:50:26.8232
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DGbpoTYuqdgt16HMUQARTtAJsjTsI6WHOvRX1CQSwtzZjCllB2ig/8WLH/YwFGsFqjhHCRzpHD2XNFxyp7muzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB3929
X-Proofpoint-GUID: V5lUib6uv_QMummPVO96gpe7VOkZPa9C
X-Proofpoint-ORIG-GUID: V5lUib6uv_QMummPVO96gpe7VOkZPa9C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-07-29_20,2022-07-28_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=30
 mlxlogscore=999 mlxscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 phishscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0
 adultscore=0 malwarescore=0 classifier=spam adjust=30 reason=mlx
 scancount=1 engine=8.12.0-2206140000 definitions=main-2207290091
Message-ID-Hash: 4FXSSLJFJS55OQLQTWDS2TAZUIEEAEV4
X-Message-ID-Hash: 4FXSSLJFJS55OQLQTWDS2TAZUIEEAEV4
X-MailFrom: prvs=5209950ab0=steven.koo@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.2.0.1 released!
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TVGUWFBCR7NMUHASIZXT6QAKQVOUEFAX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5242221792969465711=="

--===============5242221792969465711==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR04MB3870B3932E601E69236EF18FE8999SN6PR04MB3870namp_"

--_000_SN6PR04MB3870B3932E601E69236EF18FE8999SN6PR04MB3870namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

UHD 4.2.0.1 is now available [1]! This a minor release that includes:

  *   Support for ZBX rev D daughterboard. Hardware change only. No product=
 feature or spec changes.
  *   Bug fixes and improvements for USRP devices. See the changelog. [1]

We=92d like to thank all the USRP users that have filed issues or directly =
contributed to
UHD and meta-ettus. You contributions have helped the continued improvement=
 of UHD.
As always, please file issues to our GitHub repo [2], by posting in the USR=
P-users mailing list, or
contacting support@ettus.com<mailto:support@ettus.com>.

Thanks!
Steven

[1] https://github.com/EttusResearch/uhd/releases/tag/v4.2.0.1
[2] https://github.com/EttusResearch/uhd/issues/



INTERNAL - NI CONFIDENTIAL

--_000_SN6PR04MB3870B3932E601E69236EF18FE8999SN6PR04MB3870namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1593466267;
	mso-list-template-ids:-1081338664;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1
	{mso-list-id:1905333020;
	mso-list-template-ids:2126910964;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:black">UHD 4.2.0.1 is now avail=
able [1]! This a minor release that includes:<o:p></o:p></span></p>
<ul style=3D"margin-top:0in;caret-color: rgb(0, 0, 0);font-variant-caps: no=
rmal;orphans: auto;text-align:start;widows: auto;-webkit-text-size-adjust: =
auto;-webkit-text-stroke-width: 0px;word-spacing:0px" type=3D"disc">
<li class=3D"MsoNormal" style=3D"color:black;mso-list:l0 level1 lfo3">Suppo=
rt for ZBX rev D daughterboard. Hardware change only. No product feature or=
 spec changes.<o:p></o:p></li><li class=3D"MsoNormal" style=3D"color:black;=
mso-list:l0 level1 lfo3">Bug fixes and improvements for USRP devices. See t=
he changelog. [1]<o:p></o:p></li></ul>
<p class=3D"MsoNormal" style=3D"caret-color: rgb(0, 0, 0);font-variant-caps=
: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-size-adju=
st: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"color:black">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"caret-color: rgb(0, 0, 0);font-variant-caps=
: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-size-adju=
st: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"color:black">We=92d like to thank all the USRP users that ha=
ve filed issues or directly contributed to<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"caret-color: rgb(0, 0, 0);font-variant-caps=
: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-size-adju=
st: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"color:black">UHD and meta-ettus. You contributions have help=
ed the continued improvement of UHD.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"caret-color: rgb(0, 0, 0);font-variant-caps=
: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-size-adju=
st: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"color:black">As always, please file issues to our GitHub rep=
o [2], by posting in the USRP-users mailing list, or<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"caret-color: rgb(0, 0, 0);font-variant-caps=
: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-size-adju=
st: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"color:black">contacting<span class=3D"apple-converted-space"=
>&nbsp;</span><a href=3D"mailto:support@ettus.com" title=3D"mailto:support@=
ettus.com"><span style=3D"color:#0F93FF">support@ettus.com</span></a>.<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal" style=3D"caret-color: rgb(0, 0, 0);font-variant-caps=
: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-size-adju=
st: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"color:black">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"caret-color: rgb(0, 0, 0);font-variant-caps=
: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-size-adju=
st: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"color:black">Thanks!<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"caret-color: rgb(0, 0, 0);font-variant-caps=
: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-size-adju=
st: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"color:black">Steven<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"caret-color: rgb(0, 0, 0);font-variant-caps=
: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-size-adju=
st: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"color:black">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"caret-color: rgb(0, 0, 0);font-variant-caps=
: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-size-adju=
st: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"color:black">[1]&nbsp;<a href=3D"https://github.com/EttusRes=
earch/uhd/releases/tag/v4.2.0.1" title=3D"https://github.com/EttusResearch/=
uhd/releases/tag/v4.2.0.1"><span style=3D"color:#000064">https://github.com=
/EttusResearch/uhd/releases/tag/v4.2.0.1</span></a><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"caret-color: rgb(0, 0, 0);font-variant-caps=
: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-size-adju=
st: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"color:black">[2]&nbsp;<a href=3D"https://github.com/EttusRes=
earch/uhd/issues/" title=3D"https://github.com/EttusResearch/uhd/issues/"><=
span style=3D"color:#000064">https://github.com/EttusResearch/uhd/issues/</=
span></a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br>
<p style=3D"font-family:Calibri;font-size:10pt;color:#000000;margin:5pt;" a=
lign=3D"Right">
INTERNAL - NI CONFIDENTIAL<br>
</p>
</body>
</html>

--_000_SN6PR04MB3870B3932E601E69236EF18FE8999SN6PR04MB3870namp_--

--===============5242221792969465711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5242221792969465711==--
