Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 834A96A0F55
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 19:17:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 05C403818C8
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 13:17:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677176250; bh=s6wztmvMLAi12X67Z2Z9bb+L5JOunAn6kz9FJnd31S8=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=oMGIREaLvSSAOeWNSTInNlCYlBGk7AjS/OPFunS1bXCwT7SVeDPWUbmZJTQ867+7w
	 W0m7i6p567gV8jKNjlWKIeSPSzINUD1x4+sdydDEvdTnJKtklUzOs/0Eo4dnRTTzEw
	 an6aqn0ewdARBMsff9ITNUh+hxdmgoQmRnAHQZcUUfMpdG79Tg1n4ALhVROZH9/gU8
	 edKaJ9ecy66WbkXvSntJLTeU6+XgtkgUVl5dA8qCzueMQpJzUfXCxVAFRiueqGQDG6
	 uHOsiCC8OkA2soPEU0DW+vRr9s/39VHy8ObGuYavN5u4KtJphxiA8B38NU6QimfoZK
	 0ic/O3/Jm8Bpg==
Received: from mx0a-00272701.pphosted.com (mx0a-00272701.pphosted.com [67.231.145.144])
	by mm2.emwd.com (Postfix) with ESMTPS id 2E20B3818C8
	for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 13:17:23 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ou.edu header.i=@ou.edu header.b="Svxd9Yb9";
	dkim-atps=neutral
Received: from pps.filterd (m0282639.ppops.net [127.0.0.1])
	by mx0a-00272701.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31NHnJmR020381
	for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 12:17:22 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ou.edu; h=from : to : subject :
 date : message-id : content-type : mime-version; s=domainkey;
 bh=R+Y7zoZR1SMPpQYwLoqQjJBaBIPqywWJyZAVO2Ns7lk=;
 b=Svxd9Yb9FOAlOAc1R3e74KHUi5H05VFlvDX2YtvXTrQEp5YujUdEetH9kuHP7Zu2Q4S1
 FFPH6w897K7XfjbO1hGZXoA5+CBDYIUSNqcJu9bgQcur9DoKVYZEHhm8PhFShZAeomGT
 AM+yyfEW0ewhWku46+SFZrGgeLsFilzf5VYCc0bbicN9gNArHMScUnQ33iHxqvHn10R1
 IndnnTP3ZMMHBtbeqBopNA2S6xlm6MGVZt8WLkxdfRrAMDBQZuSytvZdEUv+uydX492H
 bu8XVa7zYSEA1t6Kp67jVNZwSlh7hIglLfKGtwiH4x+MGXqs4FZuQvtHAAEr/2HPORDk Mw==
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2174.outbound.protection.outlook.com [104.47.59.174])
	by mx0a-00272701.pphosted.com (PPS) with ESMTPS id 3nxamxrhmc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 12:17:22 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RwpZlxWe3TqVxLwpPGw9AfJUC/anhtVcaIRTIj0OKQTOFbq/XMzYQFclzcXNeQfUV18zCY8MB9mb7jYUaD4dwRqXMmaiBqSDM8xxCn4tLHNxp0slQqFtAMbXRltAiaezWVzgJ4KnObrALvtr5njpg0Ad9104SaQZgPGK2dOiw2ctbjTmIEWZENlvK2+Wb65NoO2UtrRRDRrvC4//Vy91LNGqlA4WwlyzTINx7rTsLKAydikBMbEdKfIc+1xKx4jY+RJCLdMJhae4Wm0Rc0Dw2adiMA9biENdH50rE0FATeTX1YXvz6QAI6stG2PNjNfWEYdiWPPibQlsntcbmi20fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R+Y7zoZR1SMPpQYwLoqQjJBaBIPqywWJyZAVO2Ns7lk=;
 b=NBKoQG7rYbXLQxgPlOL3b7ltte9YKhHOR5+pwU1l5XhgmIW/Wl9i/LC3WQj9FrL3d0u7iJubb5EzxUMEntWCm4tAWDeZ9U1HeW+8Gcl0Iidoek1rdHd3nriTMr+SiLK1dXi9GjjqCsPA/WcU7n7yYDf6HrvakljWzJYZWO7jJBaZ/sdMzJibfnTObZxsTNAp46EqexpaTiY5dsiH3bUZzhpR5xS1/yTgfX3RJzEFZySpvL3ME0GvVWB4jq/B8hDM2ewa0efxL17eKA/Y8uieqhncY242xIGnHjGKpPXfiozHd5BFDoM5eKFYGlhkWHWdiEZBs+rV7I0xbXqtTwrw/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ou.edu; dmarc=pass action=none header.from=ou.edu; dkim=pass
 header.d=ou.edu; arc=none
Received: from SJ0PR03MB6795.namprd03.prod.outlook.com (2603:10b6:a03:40e::10)
 by BY5PR03MB5332.namprd03.prod.outlook.com (2603:10b6:a03:22f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.20; Thu, 23 Feb
 2023 18:17:20 +0000
Received: from SJ0PR03MB6795.namprd03.prod.outlook.com
 ([fe80::578:61b9:e4f3:6558]) by SJ0PR03MB6795.namprd03.prod.outlook.com
 ([fe80::578:61b9:e4f3:6558%4]) with mapi id 15.20.6134.019; Thu, 23 Feb 2023
 18:17:20 +0000
From: "Mattingly, Rylee" <rmattingly@ou.edu>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC OOT Module w/ GNURadio 3.10.5
Thread-Index: AQHZR7EtnAVZCffthUa6v2UQHbYjaw==
Date: Thu, 23 Feb 2023 18:17:20 +0000
Message-ID: 
 <SJ0PR03MB6795356C657CD2B74974DC1EB1AB9@SJ0PR03MB6795.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR03MB6795:EE_|BY5PR03MB5332:EE_
x-ms-office365-filtering-correlation-id: 01e75733-5354-4326-8677-08db15ca3417
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 FGP7uXUhSBQ0SAfTI9ca5Dp6JcG8fUne0mIIsLahT5Iek0BG4l8TztDdpXnBQN+mBIvlO3AfL1xHUxLMm7wZX0/UOhOEXPqkEpjLU90olRyL85Y94d76suyknYZpRYe1+bPOMRcsutUCRqUNtrojuyFIN8p1y5XqStjmyexja6gEjpmZvlIyUH9lA16d4Ugr2nM4mnP/kjpVNBr6K1pHHE5SUTX4YedDSfV9neGIsjdQdNcbwmgZXtzV5olGpSK7qmhVXUAdNgUnXfJ+rFfidNvEEHQSaA+Rr+joArjx1kDK9SUsp5vTIVoUf4RNaBbJ7GgXSMka2KR2I1psua2k4ysE6mYnEzuCE1hCaXPFt0eDqUcTY4tO4IntpD7BlHizA1iyR/+hLDaIaqhg89zO//qHhh/MP75998u8E8IDv97o7hyfB8heWIYQ1FbDxLknJhFof5SCoNRqFS3G8TQKlgZRnvn/HWCf5fyeIvHVcwzJMnvCao4WKutI5Aed4xiBsgiDrh+8rB5Em4smXnDqxtpk78a/V3yEuZjz8bHlOUaCywPuHRt+vQWZb5M4t/VkFw7l3iKb58scVeBBtCmi4aMdaYV6w7ktHein7G/TeKqU629eDsb6NOwwCBDCzqFUmR4sOBpmCvuNHzdTbqMCKuocQF2zJ8uOzQza4KTtyZh7RAH6+9feq8Gwxhs2gTip+LhukFknPMYHUqmW2GcX9O+eWiUwULwz67a+CL57l0I=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB6795.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(376002)(39860400002)(346002)(366004)(136003)(451199018)(5660300002)(4744005)(8936002)(41300700001)(55016003)(52536014)(75432002)(38070700005)(33656002)(166002)(86362001)(41320700001)(2906002)(38100700002)(9686003)(122000001)(66476007)(478600001)(71200400001)(7696005)(26005)(186003)(66556008)(19627405001)(76116006)(66946007)(66446008)(64756008)(6506007)(91956017)(316002)(83380400001)(786003)(6916009)(8676002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?pMyVCq1T+jJhiJb4I+FbpE6rKYF21Fzo1B8bIB8BEjUQhSBMFfZiWVyZXd?=
 =?iso-8859-1?Q?GRhNNzrjstgwj9/fc1iSNYjAQLxVnaGEdzQR6H8e2la/IkI6X6SLFkreBq?=
 =?iso-8859-1?Q?IhjJxA8DhJmUCPw835QF7dimnhYPO3YmaVjK/645v2j7j9myOzzfQu9zbU?=
 =?iso-8859-1?Q?E+qHv+H/44iXu60Q7OpeYt312Wfg6kmWdL83nJtIP3S417IfnuXbBq6kwH?=
 =?iso-8859-1?Q?DFQ8ycqaAeWVMHYCPb5lNJvKvO5HESoOTuZ2Umm9JYlkBoTFU5yMbpGSdo?=
 =?iso-8859-1?Q?70AziT8+uyPkSJSc8xIrzWFpDMR/s6FlOKPx6aBMlFEpVCr8B18NJEgtNT?=
 =?iso-8859-1?Q?pFOIrta/zBRqSZAVwCReGjhKdfbOhgYn090PJjV6EiyTp5GWbat17qvxjy?=
 =?iso-8859-1?Q?D0hdn7mhNluoqn58LLpxE7FgU2ybTwr/Pk/zUoyoSfMZi8rFPIc+ah0ZfV?=
 =?iso-8859-1?Q?c4aOhv19wPIP2iPvXxnLvtT0g3ANf3fHLVQV1VeEHk3S/xKBuTAoY3nDfG?=
 =?iso-8859-1?Q?RUnN0sCsxzZ/hFB8RKX/wgRsMXoaZoNsKXv1/yteshXZ53ERDiOsODvYMI?=
 =?iso-8859-1?Q?dbAA1ay9gsucXfbx5Y2esdhtefPVlU2uT+izQ4eiA3qOT4e3IkbT8nctp8?=
 =?iso-8859-1?Q?lDfGCh5PTpNIy9m9VVvGFLr//dgZvP2cgFk8tuvocGxl01k7qJ1iEux/IX?=
 =?iso-8859-1?Q?gxvbTD8dBwlfnhZYf4EesRbcucTmei1LiKeLsJWyRotKiZjWACcdmqUque?=
 =?iso-8859-1?Q?85T4UO6/ZpDsZBUDqpVkRl6vhEwmo9zOlUApUhAUOdrB5dB93lmdt4zt4S?=
 =?iso-8859-1?Q?mK06MoLUxU+zWYaEl51IU8ff4p/hvKyoudYIlWHYwoPRth+pb+uWdWEEPH?=
 =?iso-8859-1?Q?fHobirh/KRuuKhwR6HIayk9oS0XNsvSxyVrwpIVw7cd9+/+o5DBClwvxHF?=
 =?iso-8859-1?Q?NPILXt//cGQhSlmatx32FGErhyCzypDikVMVkiu6WJl8cH4j+a6Lr9lXMm?=
 =?iso-8859-1?Q?rWbYMKGzU5fYhy3Q3GAERJ2kcjdGBTjtF4OEw/SJeSRcdotEOTpWgm1hUU?=
 =?iso-8859-1?Q?7fzxL1LhKLHrJI9NzEqjWWuLAfnkEf8qeg2Z4ouUlSECiZ1jKgOhnvss9D?=
 =?iso-8859-1?Q?AJQG9zVQjMnnndshNNNuK3VYq0AKYtAXCZb21SslhRqLFOqV3ewLOf5mRp?=
 =?iso-8859-1?Q?XN5zQCeTMyCjX7Amc/xZKE5p1vUvoRqwuX6uIuscddIWiKCpMQBCCjNQur?=
 =?iso-8859-1?Q?vQq56G3S+a5J83/aUbfbVZmdaKGRt5Xozu96msdmPD9Ff1zsJnjuQc4aMm?=
 =?iso-8859-1?Q?6lqgE9AjyAT2PddM3Z2Y/c/yvPKcpbQ64HuxxhDPHYvs2widYJD2qtA4m8?=
 =?iso-8859-1?Q?tjjZp9CfGv2FpYtC2vBoQv5Hu6HCAsA61RaMJwcZD3wM3WAkA3DLRFm/uK?=
 =?iso-8859-1?Q?DiFGpJ8+Ov8jBlh9CNcZz9SvJ6rvugvPcuQHrGTfb7GV918l4hb9COWidC?=
 =?iso-8859-1?Q?vHHD4rcBFnp74rgV2/2dkchKPgzmEPx/z832lQhFxJWYGwu02xSLosXd+d?=
 =?iso-8859-1?Q?Rtov2mKRWeIyX+TEkV/DRKndCxWZ/GNarwpvR8YEp5cYxQ4UWcsw/qNWh+?=
 =?iso-8859-1?Q?wgsEeEkBuIv8w=3D?=
MIME-Version: 1.0
X-OriginatorOrg: ou.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB6795.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01e75733-5354-4326-8677-08db15ca3417
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2023 18:17:20.4122
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9c7de09d-9034-44c1-b462-c464fece204a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /EPrjZLKNzSIjYyNNGpd2Ec+KWYcAJ41HI9zQMMLrNqt4INHay6VMmrfcbZklcYOKtuBiQLo6gWxjQAkHXBBrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR03MB5332
X-Proofpoint-ORIG-GUID: DZ-oDJ4Wo8ELWxD0n5ymkIqYFCBUd20J
X-Proofpoint-GUID: DZ-oDJ4Wo8ELWxD0n5ymkIqYFCBUd20J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-23_11,2023-02-23_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 impostorscore=0 spamscore=0 adultscore=0 malwarescore=0 suspectscore=0
 phishscore=0 clxscore=1011 mlxscore=0 priorityscore=1501 mlxlogscore=444
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302230151
Message-ID-Hash: D25BM2CAT6QTPASPDGV4AIYW3C2AAU3Z
X-Message-ID-Hash: D25BM2CAT6QTPASPDGV4AIYW3C2AAU3Z
X-MailFrom: prvs=3418c2e3ee=rmattingly@ou.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC OOT Module w/ GNURadio 3.10.5
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GQGFI2LBKPVT7KQFOKWKHET6XJRNZOE7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7159804265276427846=="

--===============7159804265276427846==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR03MB6795356C657CD2B74974DC1EB1AB9SJ0PR03MB6795namp_"

--_000_SJ0PR03MB6795356C657CD2B74974DC1EB1AB9SJ0PR03MB6795namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Is there currently a way to create custom OOT RFNoC blocks that work with G=
NURadio 3.10?

I am currently using UHD 4.4.0.0 and GNURadio 3.10.5.1 and I am looking for=
 an alternative to build RFNoC blocks that function with GNURadio. I have b=
een using gr-ettus to build OOT blocks for GNURadio 3.8 but it has been mad=
e clear in issues #60<https://github.com/EttusResearch/gr-ettus/issues/60> =
and #66<https://github.com/EttusResearch/gr-ettus/pull/66> that gr-ettus wi=
ll not be upgraded for GR 3.10 and all of that functionality will be ported=
 to gr-uhd.

I have noticed that there is no rfnocmodtool replacement in UHD and the exa=
mple RFNoC  project in UHD does not support GNURadio.  So has the GNURadio =
functionality for OOT blocks already been ported over or is that still in t=
he works?

Thank you,

Rylee Mattingly
Graduate Research Assistant
School of Electrical and Computer Engineering
The University of Oklahoma


--_000_SJ0PR03MB6795356C657CD2B74974DC1EB1AB9SJ0PR03MB6795namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Is there currently a way to create custom OOT RFNoC blocks that work with G=
NURadio 3.10?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
I am currently using UHD 4.4.0.0 and GNURadio 3.10.5.1 and I am looking for=
 an alternative to build RFNoC blocks that function with GNURadio. I have b=
een using gr-ettus to build OOT blocks for GNURadio 3.8 but it has been mad=
e clear in issues
<a href=3D"https://github.com/EttusResearch/gr-ettus/issues/60" title=3D"ht=
tps://github.com/EttusResearch/gr-ettus/issues/60" data-loopstyle=3D"link" =
id=3D"LPNoLPOWALinkPreview">
#60</a> and <a href=3D"https://github.com/EttusResearch/gr-ettus/pull/66" t=
itle=3D"https://github.com/EttusResearch/gr-ettus/pull/66" data-loopstyle=
=3D"link" id=3D"LPNoLPOWALinkPreview_1">
#66</a> that gr-ettus will not be upgraded for GR 3.10 and all of that func=
tionality will be ported to gr-uhd.
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
I have noticed that there is no rfnocmodtool replacement in UHD and the exa=
mple RFNoC&nbsp; project in UHD does not support GNURadio.&nbsp; So has the=
 GNURadio functionality for OOT blocks already been ported over or is that =
still in the works?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Thank you,<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div id=3D"Signature">
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
</div>
Rylee Mattingly
<div class=3D"ContentPasted0">Graduate Research Assistant</div>
<div class=3D"ContentPasted0">School of Electrical and Computer Engineering=
</div>
The University of Oklahoma
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica, sans-serif;">
<p style=3D"margin-top:0px; margin-bottom:0px; font-family:Calibri,Arial,He=
lvetica,sans-serif,EmojiFont,'Apple Color Emoji','Segoe UI Emoji',NotoColor=
Emoji,'Segoe UI Symbol','Android Emoji',EmojiSymbols">
<br>
</p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_SJ0PR03MB6795356C657CD2B74974DC1EB1AB9SJ0PR03MB6795namp_--

--===============7159804265276427846==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7159804265276427846==--
