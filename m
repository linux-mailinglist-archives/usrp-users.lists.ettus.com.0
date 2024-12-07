Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A639E8039
	for <lists+usrp-users@lfdr.de>; Sat,  7 Dec 2024 15:20:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4E291385990
	for <lists+usrp-users@lfdr.de>; Sat,  7 Dec 2024 09:20:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733581257; bh=tw8ZKgX2Lp9E5ZDInX9FK5ff7qHXA/V9SCtp81M3bLw=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=sv0fVmA9ElCd/hy216j0RF/46MZShhxJqk+BPDY0xpk9Yf5jpY6VPt8ccM6oGy2V1
	 P6ur47AQimZy//DzT9iS5QpCXH/ABgfh61Wg3FQCCyPH8vBss+4cwfsLxKc6as/id3
	 pZd9bIIua8OviKwxG67m/HxP1LYmfz8rLZNVOcjqeDejSVax2TJ1wQKeMMHWgFag4A
	 AEmI4VoB91GOKXAkNYAenskVluJ+UQCR4gnH6V6B7X1SOHJQqOcZVXN9f3F658111s
	 yum8fSc8ZUBvuTOHv73vMT5sfJum6WzBB6HB/dvRD1HEy0nX/IzpsbB48zVnX/Bt7U
	 /7vae5CgxRLlg==
Received: from mx0b-000c9b01.pphosted.com (mx0b-000c9b01.pphosted.com [205.220.178.177])
	by mm2.emwd.com (Postfix) with ESMTPS id F3CF73858E4
	for <usrp-users@lists.ettus.com>; Sat,  7 Dec 2024 09:20:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=fiu.edu header.i=@fiu.edu header.b="Um8cbU82";
	dkim-atps=neutral
Received: from pps.filterd (m0297016.ppops.net [127.0.0.1])
	by mx0a-000c9b01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B7AD8Wh014649;
	Sat, 7 Dec 2024 06:20:19 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fiu.edu; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=Nov2020; bh=ZjruDYwmOCXOR09vDf0l5ifPvM
	JO067sP6M2Y/gC6u0=; b=Um8cbU82uIkFjGzlY5atCAZeWCJLe3AzniqlnJl1qk
	E+k3DkHvxzeeeYpigysZA766cW6KdUCI/oPADOz9rP7ri+wCU5zMjzuSEvh3kR7a
	8dUXLCVLsyBcmDJKukU5AmlB/bgpXDGZE2n/Zt42u6QNSbKVdynzH4nwCfDpg+A+
	3qWuCm4EyuHREFTpZYYzRiWmVlsW5xyuALLXNzkvCPyXxt54zG6YYSOEk+cO7pi6
	t0auNRTognW4qBg9q7D8szGF+0E/Qx43gcngyUdM9msap9Glp9PslDTuFhunyvlR
	TQrTvio66Ixf/AO+Sc53ChatK7USDhvtHWTW31B25i9g==
Received: from bn1pr04cu002.outbound.protection.outlook.com (mail-eastus2azlp17010019.outbound.protection.outlook.com [40.93.12.19])
	by mx0a-000c9b01.pphosted.com (PPS) with ESMTPS id 43cjmev0r7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 07 Dec 2024 06:20:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oCQWA1OAUtqO5MguUQFQ2RySeRGQIa/bGHmM0JmTdyNozAtUM1WG1e4eqo+Fs2gRo+Rs0jjDxtWD4q65PLfCeqXtV6dgywefOUlwIsw+03U2bx5tag0tzoZ8lFDp8wcbPWDjqDYvNsGT+r8Fj+Jp/MBASsd8zjvNg85EsaoNyrunNklQNTcaNMoHNQNEncdYfiGO8CwPvttjzHYpzJd5Ets36D3wtu9IpwMpDqEeVoCFvgGJ/of1XRnvUlgmPkgUN05L+LymI2r/ValGXIHOWjBcaLNNKIxQhdnob6r5yETPGzTY6MhtrkAkyyOr6IliW91g/NYRNVfypL/dUbXF1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZjruDYwmOCXOR09vDf0l5ifPvMJO067sP6M2Y/gC6u0=;
 b=SdF8hdbfxqHqXz8oBEx+qL5WsHSwbW+tT5N7SwYN2eQ+SXHjiIQUuy5ODtK8x7zSU8Hkk4rYsvGn89nderu+3cfbJoXn0zgZOhFhZtc2rM3TZpJX+dJ77ze6jWbvxO0ZOG0IbqfTUN8pBbXbYdO9WUrWf2cN6sf0HhPPYxbr+9h8GCkoXHevtRoHvWHJ3flesNqEW7CxkTGkj0nMa7RRAc7/yUIvoeYAgihZQcJcpPxwDjOA7qKbs8K7UBFj0r61Dko5cG8IwyNn8Ins7pGNiM5AoWlTmio4i7pJHtroKpgMxD/AWLHXwg0j0Hz581bi8lu+XIWxZ2XHxjraQa0dzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fiu.edu; dmarc=pass action=none header.from=fiu.edu; dkim=pass
 header.d=fiu.edu; arc=none
Received: from BN8PR05MB5971.namprd05.prod.outlook.com (2603:10b6:408:45::22)
 by CO1PR05MB8506.namprd05.prod.outlook.com (2603:10b6:303:e9::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.20; Sat, 7 Dec
 2024 14:20:16 +0000
Received: from BN8PR05MB5971.namprd05.prod.outlook.com
 ([fe80::ba63:71ba:4088:16da]) by BN8PR05MB5971.namprd05.prod.outlook.com
 ([fe80::ba63:71ba:4088:16da%5]) with mapi id 15.20.8207.020; Sat, 7 Dec 2024
 14:19:30 +0000
From: Arnaldo Sans <asans008@fiu.edu>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] Under and Overflow Problems Very Regular
Thread-Index: AQHbR2mzmjskRDXq8US0esd+NfAVY7LYSymAgAHiRQCAAAePgIAAjsEf
Date: Sat, 7 Dec 2024 14:19:30 +0000
Message-ID: 
 <BN8PR05MB5971D6237E57FC6B506D9CB08C322@BN8PR05MB5971.namprd05.prod.outlook.com>
References: 
 <BN8PR05MB597100D6D2B55DCCC93EB0738C302@BN8PR05MB5971.namprd05.prod.outlook.com>
 <f278d6e3-9176-4475-901a-c27eed173907@gmail.com>
 <DM6PR05MB597767E8198447BEFD1250BF8C322@DM6PR05MB5977.namprd05.prod.outlook.com>
 <7d50459a-5155-462a-a743-939d52459829@gmail.com>
In-Reply-To: <7d50459a-5155-462a-a743-939d52459829@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN8PR05MB5971:EE_|CO1PR05MB8506:EE_
x-ms-office365-filtering-correlation-id: 5f0f7147-5d5a-40b1-b430-08dd16ca2a3d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|1800799024|376014|4022899009|8096899003|7053199007|38070700018;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?A2O93yJKbnO9Edsm54f3x0Hwu04UWzjGbkN4yZCGFHf2jB6itrBDbl0P?=
 =?Windows-1252?Q?hdQDkuIi+fEcBKIkYaGcgp1QRG+4lUsKHRYpZ3Do2q0zVUEfvZGRLLkd?=
 =?Windows-1252?Q?7eAjPwss9L9LcsSVz/wDz21+iV7ARYgeP+wYofuP2RJMSM3TUpkQC7W2?=
 =?Windows-1252?Q?6D1zJDkWJy8gyOS95J15gsuFjra6SnUon3cYLJbHWwljNjtwCgTSeQM3?=
 =?Windows-1252?Q?EP/uOonj+TBd3QJVCP3fl5lMQv6LCFtTFvMOOpgEhSgSmronyHvkzWr2?=
 =?Windows-1252?Q?7QithBcBdrNaUHjYjd80yMsgl7bVrDBOkDtn1ZOo56tblOdMacAv0REm?=
 =?Windows-1252?Q?fP6e/zK7xoJa9iUoHQwbtyzHu9RSnYx6HYHtrEwI5C3EbLnyW9Wn/esS?=
 =?Windows-1252?Q?FOxfwFQjFfSvxcVa5H0gnS1WOOdTQD0GUkHl/ftJh1Ps1fs6LfU214UD?=
 =?Windows-1252?Q?mF/REgvLi9hFBeuRZ7UjN9QHz1bO5KKbHfL2c9fA+QhwlWEPhQE3sxER?=
 =?Windows-1252?Q?Ulk14m46VOeXv/eMo6G+alYt8OScYA1LYiOmkVruhpEJQkxrgeO+xD5p?=
 =?Windows-1252?Q?EjGikla76+9CS6ycmcHdo/rjuShP4D3dEoVEPQCQ90LmkVVIpWwPURa+?=
 =?Windows-1252?Q?/oraiZT84Sx2Aq4p1LtST89ww2gtKJOKQHE7z8bWEQm4+ABRBZ6/n+uN?=
 =?Windows-1252?Q?dBVLFaoO3Bl/cjU/Db4GILhRZRMA7lDc0ZC/4GQ1mPyadji+uzZYA2RV?=
 =?Windows-1252?Q?lr2AKPqftGbMqJDrO/Awmuu4Avhsk7dDjvfMObLKw8laW+Yx+fWSeqM2?=
 =?Windows-1252?Q?dRPDP2Spl+zOfWu8w7meIubOFFDOx7ht9WJ9Vayb6OXfoI0rwPrmdP6r?=
 =?Windows-1252?Q?ETBLDWWIAk5wF+LZzdCZzmoeb2A1NfuP7olXnSTZgv2X1+M7PBJU02Jl?=
 =?Windows-1252?Q?D7hdwJAu1Hk8Kgykbh7wfBatoBda4IAdmFw6BtYNau3nYotM542TMTf6?=
 =?Windows-1252?Q?cuUiXxvF5m8TR4f1Ld8fcrbzWnDf7CKdX5ukcONSl8ubIxf9c7u5tfHS?=
 =?Windows-1252?Q?1tgp5HulUFHkcWAlQG+mx2eHbnrLRkm3UO7CnTOPBJucQTwQVQtdAh6Y?=
 =?Windows-1252?Q?gED0aozI0jxk4/ZCZMlgXSHm0Yi6l7KPTkBN7QgoSjW4EUbpx14wEc5h?=
 =?Windows-1252?Q?3HGNdzI4FU4IzwZhPYx/0UIkXaqNTRETBJPHyJurF/WYFiaweDg1MdZY?=
 =?Windows-1252?Q?TB18U61EQrlmfeFb1aBSUSMgBchxTAwP0MQ/e2HfyiK+QoXP4IaiuU91?=
 =?Windows-1252?Q?10UBNF9fAw02m7Tj4f6XxcrPr5L5r8coCH78fyheemewbex/3+6nK46s?=
 =?Windows-1252?Q?bU6RtWY+I+nUteieWbfemiDB+4sZ2BWOL0TlhZkzd2FUokfJBqJ/P5RI?=
 =?Windows-1252?Q?lji49UiKPDGoDSkAFlcTlSb3xoFzPPUJVR3Cq1mzc5A=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR05MB5971.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(4022899009)(8096899003)(7053199007)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?xIY4GfoLl1G26l3taDah/s+95Z8ZEUc6BWkTd671UTJr080i8tSN/+/z?=
 =?Windows-1252?Q?emunrKc4mISiMIUfNP7hkXckX4/1t4h81tgms4Xn1u5r0PjgRMo0eAd0?=
 =?Windows-1252?Q?tLCJvbLYo3P2sE+52RoNB/FbX84BQFWpZ00+MKvNraePoCIRfFiPXfBf?=
 =?Windows-1252?Q?1Cj4QyDeWlx892+xu1YJnVpWnDN/TA9jaXhOihdTyBNcSjNCAhxPMNVu?=
 =?Windows-1252?Q?FXLEnTzsETH7Uh/PvJPHuaoWwL/x2ORgOUZNoJx2Q7Xzmo25sXIhU3fT?=
 =?Windows-1252?Q?5dbRAghDOeVpwHDJSxO/4esc6I/3qczqTLm6gj6J5NUDKk8Op0pTnQxh?=
 =?Windows-1252?Q?kBL8wumVy8X5OP8M0hnVWagTYs/iwxDTwrrKZYC/pqfgCtgJX91EyfK1?=
 =?Windows-1252?Q?mKudur/oUcKFKpV+SXHu1MpxtGWJlnD5dP4YXDoQRzGvCCC8rdu8FBEe?=
 =?Windows-1252?Q?orwdWtiWJkbmDmS+bFdjPPRhtLOXusyY7/34L3SSHgN49BGkdLXV4rWS?=
 =?Windows-1252?Q?kCzrotKNaRe+v3A2efnG6Fb3qq77NNvnMY3GEinoqNV3ji8PP0/8zUb8?=
 =?Windows-1252?Q?Vn2aE9zd9HdNU5BNAcv8P1dLo3+VS/a9Jbu2OqXvux44m6xaI9KSqoFn?=
 =?Windows-1252?Q?ZijjL89E9nrWeA8OLfUkAp9cqhUYnZ/VlhLwy07llg3JcMMkpE27bv4U?=
 =?Windows-1252?Q?1Zf7mnZBsIT2RFfW/TsCI8zzGp0How4QZu3CT15gUzmpE4ffW8qLtqCo?=
 =?Windows-1252?Q?7i3ibG6uLUEA8cQsA36q7zimhePUWabPs45S7KEgHnOw4p8Y3DnhlLfw?=
 =?Windows-1252?Q?28EeDoNJxa11Ma40v4Gh6RQS0hup3LcWj/PGi2QpRLHjWUX0rEwlKW0V?=
 =?Windows-1252?Q?+SSwGE3eU/K9BoecfcsXuHOlNa+0MUgUtl1nNOQXayXi9P7vovHI6Jkx?=
 =?Windows-1252?Q?bc1juuioKsvT8FaURjAnGT3HkYdbm7RHR4mqbO3Y8kYRPdth3wKfXpnn?=
 =?Windows-1252?Q?HTncOCKipYXHk/tEiKnxM6VL9rxyGL56viFvYaDq5imC/4H8UMD85HYb?=
 =?Windows-1252?Q?m5KMXsuupBK0w0QjKoCqWO58j3lpHJqjjPVTnfV1FAoq/eD//7LSDRRr?=
 =?Windows-1252?Q?kjvQJC834pU7NIJCIkHtCBRY5j3uO/rgD62sNBX0QsdHETD5MmCCdZ+q?=
 =?Windows-1252?Q?7RxOuEsmsWOlCuvzv5jq8y3pJhsSgdemdofWS/kwK3LhSSw11IV2Au+W?=
 =?Windows-1252?Q?hSfRxc1VrvZnPy116oxy9fZWiptMH5GapMyMqcX0oi7F+5kKwSDPp/aw?=
 =?Windows-1252?Q?/okyDYtmQXqcHrnt8kFH7VumMENoKNpVB/Z8w/Bh1QLqhy1HDlvGvRz3?=
 =?Windows-1252?Q?qM76CPOpfWYwm/L64kk+e+Lqb0Pxaq/8Oiohbkm/bdbgdp9UlTdcxXnH?=
 =?Windows-1252?Q?BcByaITtHiPUXA8lHvZifqeqHLhgR4lc/n4Y36JM4FOSLtOfqR9/sz+X?=
 =?Windows-1252?Q?9F6XpxhWWt1p41OqCo1DfzZbyLSucA8OQDYcKdEjfIRhhEGdvduWq1Lh?=
 =?Windows-1252?Q?655ezgGToavEYdg+z9rvWrgWvG2tGBT5rh3A54Xqqf4MD3BNr3GxGroz?=
 =?Windows-1252?Q?+et1B3Y6JI8M3tsjlXnWqUqMBXJEywZ16nU44O7J5VNy6JBDCii+EDMF?=
 =?Windows-1252?Q?g/SCnqX+2Ts=3D?=
MIME-Version: 1.0
X-OriginatorOrg: fiu.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR05MB5971.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f0f7147-5d5a-40b1-b430-08dd16ca2a3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2024 14:19:30.4226
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ac79e5a8-e0e4-434b-a292-2c89b5c28366
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /7LOFvXbi1PVe2UAe8CAGFi6hYSinv6dnGUObirE33EPzryE4sP6XIM/Ygi1AVoeCGtYtwkVTNoT1YcRNcrEcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR05MB8506
X-Proofpoint-GUID: cMImbtqRrxXuk9wVmt_VgDqt9ro-ONRB
X-Proofpoint-ORIG-GUID: cMImbtqRrxXuk9wVmt_VgDqt9ro-ONRB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 phishscore=0
 mlxlogscore=999 suspectscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 clxscore=1015 impostorscore=0 mlxscore=0 priorityscore=1501 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412070119
X-Proofpoint-FIU-O365: True
Message-ID-Hash: XL3SUFXBFV527WWPHBV46F5V3L4S3JQ3
X-Message-ID-Hash: XL3SUFXBFV527WWPHBV46F5V3L4S3JQ3
X-MailFrom: asans008@fiu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Arnaldo Sans <asans008@fiu.edu>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Under and Overflow Problems Very Regular
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SLV52W7BVARBS6HYY67TLEFUY6H4V6UV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8308473346284485266=="

--===============8308473346284485266==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_BN8PR05MB5971D6237E57FC6B506D9CB08C322BN8PR05MB5971namp_";
	type="multipart/alternative"

--_004_BN8PR05MB5971D6237E57FC6B506D9CB08C322BN8PR05MB5971namp_
Content-Type: multipart/alternative;
	boundary="_000_BN8PR05MB5971D6237E57FC6B506D9CB08C322BN8PR05MB5971namp_"

--_000_BN8PR05MB5971D6237E57FC6B506D9CB08C322BN8PR05MB5971namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello,

The OS is Ubuntu Linux --- on "bare metal".  Thanks again

Regards,
AJ

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Friday, December 6, 2024 11:38 PM
To: Arnaldo Sans <asans008@fiu.edu>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Under and Overflow Problems Very Regular

On 06/12/2024 23:34, Arnaldo Sans wrote:
Hello Marcus,

Thank for looking into this... The computer is a NUC 13 Extream (i9).  As f=
or the ethernet interfase I am using the 10 Gigabit Ethernet  port on the x=
310 and the NUC support 10 GBe.

If you think of anything else... please reach-out.

Thank you,
AJ

You can use the "benchmark_rate" tool to see what the range of sample rates=
 are that your compute can support.

This doesn't do any processing at all, just moves samples into and out of t=
he radio.

An i9, assuming it's running in "performance" (or perhaps "OnDemand") shoul=
d be doing just fine at considerably more
  than 2.5Msps.

Something I forgot to clarify.  What OS?  If Linux, are you running it in a=
 VM, or on "bare metal"??




________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.=
com>
Sent: Thursday, December 5, 2024 6:25 PM
To: Arnaldo Sans <asans008@fiu.edu><mailto:asans008@fiu.edu>
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Under and Overflow Problems Very Regular


Note: This message originated from outside the FIU Faculty/Staff email syst=
em.

On 05/12/2024 18:15, Arnaldo Sans wrote:
Hello Team,

I am operating a set of X310 in communication link, and I seem to be encoun=
tering data under and overflow problems very regular while operating at 2.5=
Msps=85 my target is at least 100MSps.  Are there any suggestions you can o=
ffer?  My MCR is 200MHz.

Thank you, look forward to hearing from you.
If you're getting under/over-runs at 2.5Msps, then either your computer is =
*WOEFULLY* inadequate or you're doing
  WAY more processing per sample than perhaps you should be.

I run a dual-polarization radiometer based on an X310 and it can stream 2x2=
0Msps for hours at a time.

https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks<https://u=
rldefense.com/v3/__https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_a=
nd_Tricks__;!!FjuHKAHQs5udqho!JvFipqsg8DXqJqqNNWX1vhZHhXOhpOkIMAqvm5gx7wNTM=
JK9y6iWtnlqrJ39jjTZgjpoVe87gqRlcdBU4xK6Fxtq$>

Also, is your Ethernet interface a "real" Ethernet interface or 1GBit-over-=
USB?  Some of those have notoriously
  poor performance.




Regards,


AJ

Graduate Researcher

College of Electrical & Computing Engineering

Florida International University

10555 West Flagler Street

Room 3863B

Miami, FL 33174

Phone: 305-336-2541 | Email: asans008@FIU.edu<mailto:asans008@FIU.edu>


[cid:part1.gnqfkIxk.6IkkDFMV@gmail.com]



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>




--_000_BN8PR05MB5971D6237E57FC6B506D9CB08C322BN8PR05MB5971namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Hello,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
The OS is Ubuntu&nbsp;Linux --- on &quot;bare metal&quot;.&nbsp; Thanks aga=
in</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Regards,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
AJ</div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<hr style=3D"display: inline-block; width: 98%;">
<div dir=3D"ltr" id=3D"divRplyFwdMsg"><span style=3D"font-family: Calibri, =
sans-serif; font-size: 11pt; color: rgb(0, 0, 0);"><b>From:</b>&nbsp;Marcus=
 D. Leech &lt;patchvonbraun@gmail.com&gt;<br>
<b>Sent:</b>&nbsp;Friday, December 6, 2024 11:38 PM<br>
<b>To:</b>&nbsp;Arnaldo Sans &lt;asans008@fiu.edu&gt;<br>
<b>Cc:</b>&nbsp;usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&g=
t;<br>
<b>Subject:</b>&nbsp;Re: [USRP-users] Under and Overflow Problems Very Regu=
lar</span>
<div>&nbsp;</div>
</div>
<div>On 06/12/2024 23:34, Arnaldo Sans wrote:</div>
<blockquote>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
Hello Marcus,&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
Thank for looking into this... The computer is a NUC 13 Extream (i9).&nbsp;=
 As for the ethernet interfase I am using the 10 Gigabit Ethernet&nbsp; por=
t on the x310 and the NUC support 10 GBe.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
If you think of anything else... please reach-out.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
Thank you,</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
AJ</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
</blockquote>
You can use the &quot;benchmark_rate&quot; tool to see what the range of sa=
mple rates are that your compute can support.<br>
<br>
This doesn't do any processing at all, just moves samples into and out of t=
he radio.<br>
<br>
An i9, assuming it's running in &quot;performance&quot; (or perhaps &quot;O=
nDemand&quot;) should be doing just fine at considerably more<br>
&nbsp; than 2.5Msps.<br>
<br>
Something I forgot to clarify.&nbsp; What OS?&nbsp; If Linux, are you runni=
ng it in a VM, or on &quot;bare metal&quot;??<br>
<br>
<br>
<blockquote>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<hr style=3D"display: inline-block; width: 98%;">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><span style=3D"font-family: Calibri=
, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);"><b>From:</b>&nbsp;Marc=
us D. Leech
<a href=3D"mailto:patchvonbraun@gmail.com" id=3D"OWA7709108d-c987-b2a8-0147=
-fb86a016565a" class=3D"x_moz-txt-link-rfc2396E OWAAutoLink">
&lt;patchvonbraun@gmail.com&gt;</a><br>
<b>Sent:</b>&nbsp;Thursday, December 5, 2024 6:25 PM<br>
<b>To:</b>&nbsp;Arnaldo Sans <a href=3D"mailto:asans008@fiu.edu" id=3D"OWA1=
a687d2e-15f3-8f6f-750d-d2a45ab925ec" class=3D"x_moz-txt-link-rfc2396E OWAAu=
toLink">
&lt;asans008@fiu.edu&gt;</a><br>
<b>Cc:</b>&nbsp;<a href=3D"mailto:usrp-users@lists.ettus.com" id=3D"OWA9daa=
7fbb-dc2e-d39b-3c5c-e3bf966a8659" class=3D"x_moz-txt-link-abbreviated OWAAu=
toLink">usrp-users@lists.ettus.com</a>
<a href=3D"mailto:usrp-users@lists.ettus.com" id=3D"OWA2328b345-aca3-f0b9-5=
1d3-fe3b4473ceca" class=3D"x_moz-txt-link-rfc2396E OWAAutoLink">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b>&nbsp;Re: [USRP-users] Under and Overflow Problems Very Regu=
lar</span>
<div>&nbsp;</div>
</div>
<p style=3D"text-align: center; margin: 0px auto; padding: 5px; border-widt=
h: 1px; border-style: solid; border-color: black; color: red;">
<b>Note: This message originated from outside the FIU Faculty/Staff email s=
ystem.</b></p>
<br>
<div>On 05/12/2024 18:15, Arnaldo Sans wrote:</div>
<blockquote><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MS=
FontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0,=
 0, 0);">Hello Team,</span>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
I am operating a set of X310 in communication link, and I seem to be encoun=
tering data under and overflow problems very regular while operating at 2.5=
Msps=85 my target is at least 100MSps. &nbsp;Are there any suggestions you =
can offer? &nbsp;My MCR is 200MHz.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
Thank you, look forward to hearing from you.</div>
</blockquote>
If you're getting under/over-runs at 2.5Msps, then either your computer is =
*WOEFULLY* inadequate or you're doing<br>
&nbsp; WAY more processing per sample than perhaps you should be.<br>
<br>
I run a dual-polarization radiometer based on an X310 and it can stream 2x2=
0Msps for hours at a time.<br>
<br>
<a href=3D"https://urldefense.com/v3/__https://kb.ettus.com/USRP_Host_Perfo=
rmance_Tuning_Tips_and_Tricks__;!!FjuHKAHQs5udqho!JvFipqsg8DXqJqqNNWX1vhZHh=
XOhpOkIMAqvm5gx7wNTMJK9y6iWtnlqrJ39jjTZgjpoVe87gqRlcdBU4xK6Fxtq$" id=3D"OWA=
4a4ba1a9-cffd-efae-239e-dd7c76fe237d" class=3D"x_x_moz-txt-link-freetext x_=
OWAAutoLink" data-auth=3D"NotApplicable">https://kb.ettus.com/USRP_Host_Per=
formance_Tuning_Tips_and_Tricks</a><br>
<br>
Also, is your Ethernet interface&nbsp;a &quot;real&quot; Ethernet interface=
 or 1GBit-over-USB?&nbsp; Some of those have notoriously<br>
&nbsp; poor performance.<br>
<br>
<br>
<blockquote>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"x_x_Signature">
<p style=3D"text-align: left; background-color: rgb(255, 255, 255); margin:=
 0in;"><span style=3D"font-family: &quot;Book Antiqua&quot;, serif; font-si=
ze: 12pt; color: rgb(31, 78, 121);"><i>Regards,</i></span><span style=3D"fo=
nt-family: Calibri, sans-serif; font-size: 12pt; color: rgb(31, 78, 121);">=
<i><br>
<br>
</i></span></p>
<p style=3D"background-color: white; margin: 0in;"><span style=3D"font-fami=
ly: &quot;Book Antiqua&quot;, serif; font-size: 12pt; color: rgb(31, 78, 12=
1);"><b><i>AJ</i></b></span></p>
<p style=3D"background-color: white; margin: 0in;"><span style=3D"font-fami=
ly: &quot;Book Antiqua&quot;, serif; font-size: 12pt; color: rgb(31, 78, 12=
1);"><b><i>Grad</i></b></span><span style=3D"font-family: &quot;Book Antiqu=
a&quot;, serif; font-size: 12pt; color: rgb(31, 78, 121); background-color:=
 white;"><b><i>uate
 Researcher</i></b></span></p>
<p style=3D"background-color: white; margin: 0in;"><span style=3D"font-fami=
ly: &quot;Book Antiqua&quot;, serif; font-size: 12pt; color: rgb(31, 78, 12=
1);"><i>College of Electrical &amp;
</i></span><span style=3D"font-family: &quot;Times New Roman&quot;, serif; =
font-size: 12pt; color: rgb(31, 78, 121); background-color: white;"><i>Comp=
uting</i></span><span style=3D"font-family: &quot;Times New Roman&quot;, se=
rif; font-size: 12pt; color: rgb(31, 78, 121);"><i>&nbsp;Engineering&nbsp;<=
/i></span></p>
<p style=3D"background-color: white; margin: 0in;"><span style=3D"font-fami=
ly: &quot;Book Antiqua&quot;, serif; font-size: 12pt; color: rgb(31, 78, 12=
1);"><i>Florida International University</i></span></p>
<p style=3D"background-color: white; margin: 0in;"><span style=3D"font-fami=
ly: &quot;Book Antiqua&quot;, serif; font-size: 12pt; color: rgb(31, 78, 12=
1);"><i>10555 West Flagler Street</i></span></p>
<p style=3D"background-color: white; margin: 0in;"><span style=3D"font-fami=
ly: &quot;Book Antiqua&quot;, serif; font-size: 12pt; color: rgb(31, 78, 12=
1); background-color: white;"><i>Room 3863B</i></span></p>
<p style=3D"background-color: white; margin: 0in;"><span style=3D"font-fami=
ly: &quot;Book Antiqua&quot;, serif; font-size: 12pt; color: rgb(31, 78, 12=
1);"><i>Miami, FL 33174</i></span></p>
<div style=3D"font-size: 12pt;"><span style=3D"font-family: &quot;Book Anti=
qua&quot;, serif; color: rgb(31, 78, 121); line-height: 107%;"><i>Phone: 30=
5-336-2541 | Email:</i></span><span style=3D"font-family: frank-new, serif;=
 color: rgb(51, 51, 51); background-color: white; line-height: 107%;"><i>
</i></span><span style=3D"font-family: &quot;Book Antiqua&quot;, serif; col=
or: rgb(5, 99, 193); background-color: white; line-height: 107%;"><i><u><a =
href=3D"mailto:asans008@FIU.edu" id=3D"OWAd8b98a3d-698f-9202-ea63-d3f1c4a6d=
ed3" class=3D"x_x_OWAAutoLink x_x_moz-txt-link-freetext x_moz-txt-link-free=
text">asans008@FIU.edu</a></u></i></span></div>
<p style=3D"text-align: left; background-color: rgb(255, 255, 255); margin:=
 0in;"><span style=3D"font-family: &quot;Book Antiqua&quot;, serif; font-si=
ze: 11pt; color: blue;"><u><br>
</u></span></p>
<p style=3D"text-align: left; background-color: rgb(255, 255, 255); margin:=
 0in;"><span style=3D"font-family: Calibri, sans-serif; font-size: 11pt; co=
lor: black;"><img width=3D"264" height=3D"49" size=3D"15528" contenttype=3D=
"image/png" style=3D"width: 2.75in; height: 0.5208in; max-width: 800px; min=
-width: auto; min-height: auto; margin: 0px;" data-outlook-trace=3D"F:3|T:3=
" src=3D"cid:part1.gnqfkIxk.6IkkDFMV@gmail.com"></span></p>
</div>
<br>
<fieldset class=3D"x_x_moz-mime-attachment-header"></fieldset>
<pre><div>_______________________________________________=0A=
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" id=
=3D"OWAd2260a92-bf62-87f3-d124-7ab52b2f5d31" class=3D"x_x_moz-txt-link-abbr=
eviated x_OWAAutoLink x_moz-txt-link-freetext">usrp-users@lists.ettus.com</=
a>=0A=
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" id=3D"OWAd613528b-920c-7444-9ea9-439e7f181012" class=3D"x_x_moz-tx=
t-link-abbreviated x_OWAAutoLink x_moz-txt-link-freetext">usrp-users-leave@=
lists.ettus.com</a>=0A=
</div></pre>
</blockquote>
<br>
</blockquote>
<br>
</body>
</html>

--_000_BN8PR05MB5971D6237E57FC6B506D9CB08C322BN8PR05MB5971namp_--

--_004_BN8PR05MB5971D6237E57FC6B506D9CB08C322BN8PR05MB5971namp_
Content-Type: image/png; name="Outlook-zraod0fo.png"
Content-Description: Outlook-zraod0fo.png
Content-Disposition: inline; filename="Outlook-zraod0fo.png"; size=15242;
	creation-date="Sat, 07 Dec 2024 04:39:09 GMT";
	modification-date="Sat, 07 Dec 2024 13:09:44 GMT"
Content-ID: <part1.gnqfkIxk.6IkkDFMV@gmail.com>
Content-Transfer-Encoding: base64

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
8P8A7fsDInY/0Y8AAAAASUVORK5CYII=

--_004_BN8PR05MB5971D6237E57FC6B506D9CB08C322BN8PR05MB5971namp_--

--===============8308473346284485266==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8308473346284485266==--
