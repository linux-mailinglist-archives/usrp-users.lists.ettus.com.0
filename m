Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E675B907E
	for <lists+usrp-users@lfdr.de>; Thu, 15 Sep 2022 00:23:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3A6283812DB
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 18:23:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663194196; bh=NKfRtUSeOt4BE90OOEzyi6bP8fndwsEunaHF26ZNDhw=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ki8qb5jabJ9Owcg9tjpUBWKyKps8VpEyOzuTA3WkbHJujxKuYw7WZZ9lsW7hMRCQY
	 KqPowrAW2e54e4Gmw1CTDpxZvnUjV9uOALyoG52YVPmLFQdxSC+AU+xSbP0CQcGKwr
	 BX97UR+hI6/LeugK8rCdjy16gqPhiaPcuG0e+AxXirZDRodyISuEKHbnYuziL0r4Ht
	 U6BLDGyxnZdNYsLkG6+RgtAo1SeM5bWwkLrbvoP9epoAqPyYZEKjf4HknCrrxHQvSd
	 6LdlKnV8Q/OuCdpKu8GxpFA3Ma52fRMh+2W4XmI3tf2OXoXaU/OalywNvHz66qpw4K
	 8uNsPLkzd9oxA==
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com [148.163.156.75])
	by mm2.emwd.com (Postfix) with ESMTPS id 778B1380DE5
	for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 18:21:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="ylz5ZyXR";
	dkim=pass (1024-bit key; unprotected) header.d=nio365.onmicrosoft.com header.i=@nio365.onmicrosoft.com header.b="Zvjlsw8g";
	dkim-atps=neutral
Received: from pps.filterd (m0098781.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28ELLKZf015021;
	Wed, 14 Sep 2022 17:21:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=from : to : subject :
 date : message-id : content-type : mime-version; s=PPS11062020;
 bh=4D91pmHv5P2kyqrfnTikAIW9cLVA2XY0/jbOiSn3FHI=;
 b=ylz5ZyXR64tC95FQ9fpl6hfEV1qj/ggdc7NJVBk5+Ban0qCgLxuOlNbueK5dtDLt6+Yy
 llrKdXwfElF/6WI+77yHxGdFe0Y18bMzyKrLOXJGfOy+kF8EwY/t0Url0Jjok/75+Dfo
 LT9rAjk+o5tKNUYcoudbcwyt/2LkwbekJfDSol3665d/q/mJvHT4w7Rz4i6I6l4eW6Vd
 4nD/cOIpzZgKcG0jfaySIIMtwiYpiUs9RHMnMUaEQtkMstpfi9CK8dZ9FAezLXR/DGMR
 CaLwWxWRUQwnfEq3gI29Tn6W2dsV02WnyQq07TryQfdscWLARg//6P1KjbLzedZD96Vk bQ==
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2170.outbound.protection.outlook.com [104.47.55.170])
	by mx0a-00010702.pphosted.com (PPS) with ESMTPS id 3jjyfcjrvy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 14 Sep 2022 17:21:52 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QyXcjIgHSpBPbCq3jJ1/6y0udY7CfwkKfb2D/zBM9wKVMbAK1L5mCuF7Qd7JAePfYaGvighBS0l8atF3qvuvRzomubsuqkDQTpcyrAQiMn/dJDh68a9D2fVZWgrvG2psSd46apZBkBwOhNG5w+Os0513V7fWdNJUSGEzD/ijxrSJ9pQPbbG84VEefFJiIV+zW1lniWPe5y1UOeu9xshkZvfp19FM8OmwApbiLaP8wxW+VQKHoyGou3ibqi35oBnGrbpaIXGkVp+QfRN1p0/Uh2H8qW+BC1bWqRCgvUmMD9T+UWMRQ846rhUR7LWW++RxZOoFE+YawDyee7tUJiF8iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4D91pmHv5P2kyqrfnTikAIW9cLVA2XY0/jbOiSn3FHI=;
 b=lIvI6SGAzgQB2Qzj7cfvrK5pILjS4/SSjaDF5Gqvmfde4M/kXixodtizflNGdMYrZxL9H3iiMbhSZB/0FrBZLMyx3LvrYPAJJndS/mc4Sg7EJkrZEKWkTqbPoHtX8GRAf6p3ijVukpaw7jaTlMFYPNu1fbrgx6J9QKMbGLAbtv5M2AzDwEop3eepUPUtqIPbLVQfijVqWDqi7s9kXKutpGf7hKTqRRkij+VCOR8iWSA0kGetK4LD4YtfVEJhz+bKOiazxGIkWo5RBSZLzeenl5ywlSvH2IZKGyc/w2QpTn++1G7+KxpOv1CU+3O9PEJbl+fdjL6k+15xsNUnXG3SUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4D91pmHv5P2kyqrfnTikAIW9cLVA2XY0/jbOiSn3FHI=;
 b=Zvjlsw8gSv4DtG4X2Y+M6/X9xMaWgknywAdzek7vQjsWPsgLxZJ1I8oTj9m7tTf+nPjzZLSU2i45EIVN6tImRyguRyrEZ/MJ/5XdosEQGke6hbaMuLcm9IxKbQvScbcG2X3/hGOOd1L5fA07EBcVWkjwroE7ZOaEVAPDWB3FDbc=
Received: from SN6PR04MB3870.namprd04.prod.outlook.com (2603:10b6:805:43::15)
 by DM6PR04MB4074.namprd04.prod.outlook.com (2603:10b6:5:b9::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Wed, 14 Sep
 2022 22:21:46 +0000
Received: from SN6PR04MB3870.namprd04.prod.outlook.com
 ([fe80::b428:21a7:32c4:e881]) by SN6PR04MB3870.namprd04.prod.outlook.com
 ([fe80::b428:21a7:32c4:e881%5]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 22:21:46 +0000
From: Steven Koo <steven.koo@ni.com>
To: "discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>,
        "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD 4.3.0.0 released!
Thread-Index: AQHYyIXyU2z3NkT/OEG74ff1AyHQqg==
Date: Wed, 14 Sep 2022 22:21:46 +0000
Message-ID: 
 <SN6PR04MB3870C53A01D40869FAA91219E8469@SN6PR04MB3870.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Enabled=True;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SetDate=2022-09-14T22:07:27.0594752Z;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ContentBits=0;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Method=Privileged
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR04MB3870:EE_|DM6PR04MB4074:EE_
x-ms-office365-filtering-correlation-id: 31bc91fc-2c89-4af4-9222-08da969f82bf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 kAiE+mXyDvnMlGKoBYTLc8zW7NN6BzJ9gt8pL2yPHR9dYMxoVq1YgoN/g5HM3qNEAxQ6Op8DVmlfe2/CS36OT7nXy+LBXkx0ZXJocwAzsyNYyRS5wW4S7HSYAMPFiFU0aROHoqs1jTRUCML26fhsMAyAvDh/6lfgiJFPv09E7m/5LLHrSq5vHamd9TA6E4I86xr+QE/xUVi65eJinHSouHJ1jx/Ryajwph+4P1oeiDWdzV4PtYe8gBk7Grkg2p0XI90rhvTJ+bfZ0hQfmNwLIPm7ROl4dUm+V1rXbF8Nubypq9GnulQkoNBKpic/7ED0IfxEC2EH/IrkIHf8NzLptB2AZzCEGKHgea/zdq4pBEc+gpMkYZ+x7phnnYn0zL60p897dC6m3gOm+2TY5mlHzDOirwxoto9qynlq6L/SbLKkLbsv0byUqbFfgwms8RdLzQ9Yvk9Y9LuKcYGIg/abt+7qxVyY/ijWh0rHmfd5agYOw7xCC5Jv67PY3WQPObkxLQR9XEtu5d2BQjOXWWiLofRGdje18TC+RARtWZLu7n3DIOF20LhTvMPMf3FdaCLsO6k6Rt4BYwjITSiamFnDQJQ9LCTy/2YsxHln/h3ah2I+rbtkwl/WXrzYRPgey7DsBeqZCvkhBoe5aBQnBf4E58h85qCQqmyxC5UcGCNYq7091quS/CtbLQy4IYXvzwz2GKBwcta/q4p/9ivNbbDtRd+5ejt5l6z4YWzpClf56ExdpU3duy56ueFfxtn6oPREVbE/e2st+7pgDpRuHi4tglUD3JNXZz7GIjGvSNZqsIso+z/U4C3tH24J+gYBFoCRV4P/I32OU/riji7VUdLA9w==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR04MB3870.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(136003)(376002)(39860400002)(396003)(346002)(366004)(451199015)(9686003)(8936002)(44832011)(71200400001)(110136005)(38100700002)(8676002)(55016003)(966005)(26005)(38070700005)(478600001)(7696005)(66946007)(6506007)(86362001)(66476007)(66446008)(64756008)(186003)(76116006)(66556008)(122000001)(5660300002)(52536014)(4744005)(33656002)(7116003)(2906002)(316002)(41300700001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?Id+bqeZJycbxsqYTtvAqV7l5qrCfGuVDOuBBEY+1SEv1RywgNq2ipumv8Sjg?=
 =?us-ascii?Q?Lbe2J9ZLpvytBvLGLuzxr4uvPoBzIrbt5v1RekTpyCJV1cr7nOB1F/AI9KZz?=
 =?us-ascii?Q?gL16q90wk0XxYanK++oDrFfEzyQVFUKXqlkH1EBvYRQs/sFKzSz652pTWcv+?=
 =?us-ascii?Q?zcy3ajALZa/3vuqOYw07+YlR/Ik9q5xR+eF2tiTSQWgc33Dudta44lWTbiIC?=
 =?us-ascii?Q?ag4hWmu2kDQmUper4BnL0hENlHxFvqjKx7TuePuHxkAYHe5V0LjJn4zb+Hem?=
 =?us-ascii?Q?AxyL1ury7r5wNBJsBIc1QSV9p1D5DHLr2rr3Ky4Ufdg4CsdL8CfhTi+nvvTI?=
 =?us-ascii?Q?bINeVVIGl1jqSwF+v5+aSsXcisFY7zPIV2w6NJ6hrz4EgqVDzaC6aR2LKEcB?=
 =?us-ascii?Q?GnO4vH0yViB2sqaXdHbyTyOWVEciRKI2orKHUG+LPTbECYQpLLhPs5BvDbiu?=
 =?us-ascii?Q?TGko6UY7QOegRJn/aSmcc7Qstu9uUlvOmj1pA2RvCzQOPVASYN63MIglDcEN?=
 =?us-ascii?Q?RxqQ9z0e6tUZWWQU33BvnGrIsLkk2wiotVoMjp7l2dwPUT4oZyNNIwLVKOth?=
 =?us-ascii?Q?hArJRCUbvb6O9F/ZKa/oSz1usr14MwNeaKEXtaz1Wp1IMzK0TH0atrAoieCL?=
 =?us-ascii?Q?7BETJCSixojHU1nPlTR/xH1+yakSiZPNrYqBWt/l2iMQT5SZMnfWo4ma5LPW?=
 =?us-ascii?Q?PbjeTgBW2uXbVFa5VGeZkYdUGhSJoHCKMUaGO/EmIrkDIb4POjN4EiPqYgb0?=
 =?us-ascii?Q?NRQTSGTxaKb4HZOor/bo7Oz1EZXWjynArYiS+sG0AxhKXpBFKjH/YN38zFuJ?=
 =?us-ascii?Q?dsVWKl3wlvYajjALIZBXwHnYY2xtnDiDJFf1wTV/PTCgXJYZy3T1uskT+WGv?=
 =?us-ascii?Q?3N5wXr/aPf2pvn5FNdmT5xhtyCPZ4kwqJgmPinXOFXafUe0+xudDGJQlFH3v?=
 =?us-ascii?Q?VxjszEE3GzxsugE+EQ8vwM8ZhiBtuRfgUk9UaB8rpMyUU4i1Y9/45WVa1ueg?=
 =?us-ascii?Q?uaDa+iiX9NynxiZdthUF3N5HYJfa/ReBlFrQp4ZPqXWoMU/u4dh5AHqxPien?=
 =?us-ascii?Q?bbaYHCSMa2G5wULFJhIu4aAlVqyc5iAjH3GWrk2Nee4wf0fNmqtYfd2dObp6?=
 =?us-ascii?Q?jCRVQ5RFjS3XueLFVQWrhIARJHCQ3LSQn3ZReOOh+XU8OfkJ2rePKtUySCbN?=
 =?us-ascii?Q?1nvZ0VKL2GKHXOQ2yyjsd2ousEr98ipBXyMp+1qh3yiyhVhgcaY96I4YO65l?=
 =?us-ascii?Q?oe2n/QDy3JnJ2FraTYhv3W3zICHm7fIx25YQ6y81R/xK40EYpAPREU7rTTXE?=
 =?us-ascii?Q?Wfl5lakpdR3arIVxUthztevvWjP/eGwtdfwFviqfUnLSe8T2E+CtsP2lMibq?=
 =?us-ascii?Q?zl1onsQjHmNkuwjWA+u8kvuzWAnl3ZQF4jTR2FgyN5LGINEiOixqyOL9j2MI?=
 =?us-ascii?Q?Sc5LjDac0LxPG3cpjzhWg5wwQLt+h2vl/K/W2vHSuzo82uAonPtkGe1Vvu9g?=
 =?us-ascii?Q?gQ+htyLVB/RpA/akTn83YGb8KpbTMPD2C4uvth3B0f1tKitPupR0eRK5Vrd0?=
 =?us-ascii?Q?CjDBtlAVI2Cw/Nb+E4u8DbL3k2YP1ZUxjbQGKUw+tAUY3iBc/WQt1vyOsxXi?=
 =?us-ascii?Q?WQ=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR04MB3870.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31bc91fc-2c89-4af4-9222-08da969f82bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2022 22:21:46.3437
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 96SkHzRHADN6XzBtdDX6tJoNzKwsCbkw9f7KJGaFAwE/UwbD/PdexsL5lwRPvaNuR3fcwCbDnKEDgtLPxCGZQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4074
X-Proofpoint-GUID: sySELs6dBagpmZANGCONCuaqX_5BMziy
X-Proofpoint-ORIG-GUID: sySELs6dBagpmZANGCONCuaqX_5BMziy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-14_09,2022-09-14_04,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=30
 lowpriorityscore=0 suspectscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 clxscore=1011 phishscore=0 bulkscore=0 adultscore=0
 mlxlogscore=773 impostorscore=0 mlxscore=0 classifier=spam adjust=30
 reason=mlx scancount=1 engine=8.12.0-2208220000
 definitions=main-2209140108
Message-ID-Hash: BJ7KP57N2N7YVKSVVVJKKSA6NTQ5FW22
X-Message-ID-Hash: BJ7KP57N2N7YVKSVVVJKKSA6NTQ5FW22
X-MailFrom: prvs=6256b4402c=steven.koo@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.3.0.0 released!
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5UDAPWYDGN7RKOHLT5CRF2OR3IVCRPU2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8112208096490286917=="

--===============8112208096490286917==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR04MB3870C53A01D40869FAA91219E8469SN6PR04MB3870namp_"

--_000_SN6PR04MB3870C53A01D40869FAA91219E8469SN6PR04MB3870namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

UHD 4.3.0.0 is now available [1]! This release includes:

  *   Extension framework support
  *   FPGA builds using Xilinx Vivado 2021.1 (B2xx, E3xx, N3xx, X3xx, and X=
4xx devices)
  *   Bug fixes and improvements for USRP devices. See the changelog. [1]

We'd like to thank all the USRP users that have filed issues or directly co=
ntributed to
UHD and meta-ettus. You contributions have helped the continued improvement=
 of UHD.
As always, please file issues to our GitHub repo [2], by posting in the USR=
P-users mailing list, or
contacting support@ettus.com.

Thanks!
Steven

[1] https://github.com/EttusResearch/uhd/releases/tag/v4.3.0.0
[2] https://github.com/EttusResearch/uhd/issues/


--_000_SN6PR04MB3870C53A01D40869FAA91219E8469SN6PR04MB3870namp_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
	{mso-list-id:1665356004;
	mso-list-template-ids:150255980;}
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
	{mso-list-id:1994678530;
	mso-list-type:hybrid;
	mso-list-template-ids:1993907720 67698689 67698691 67698693 67698689 67698=
691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7 ;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7 ;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7 ;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:black">UHD 4.3.0.0 is now avail=
able [1]! This release includes:<o:p></o:p></span></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"color:black;margin-left:0in;mso-lis=
t:l1 level1 lfo3">
Extension framework support<o:p></o:p></li><li class=3D"MsoListParagraph" s=
tyle=3D"color:black;margin-left:0in;mso-list:l1 level1 lfo3">
FPGA builds using Xilinx Vivado 2021.1 (B2xx, E3xx, N3xx, X3xx, and X4xx de=
vices)<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"color:black;m=
argin-left:0in;mso-list:l1 level1 lfo3">
Bug fixes and improvements for USRP devices. See the changelog. [1]<o:p></o=
:p></li></ul>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:black">We'd like to thank all t=
he USRP users that have filed issues or directly contributed to<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"color:black">UHD and meta-ettus. You =
contributions have helped the continued improvement of UHD.<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:black">As always, please file i=
ssues to our GitHub repo [2], by posting in the USRP-users mailing list, or=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black">contacting support@ettus=
.com.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:black">Thanks!<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:black">Steven<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:black">[1] https://github.com/E=
ttusResearch/uhd/releases/tag/v4.3.0.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black">[2] https://github.com/E=
ttusResearch/uhd/issues/<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_SN6PR04MB3870C53A01D40869FAA91219E8469SN6PR04MB3870namp_--

--===============8112208096490286917==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8112208096490286917==--
