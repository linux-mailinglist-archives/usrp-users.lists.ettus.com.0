Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MKaMeTi8WlZlAEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 29 Apr 2026 12:52:20 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6162A4932D6
	for <lists+usrp-users@lfdr.de>; Wed, 29 Apr 2026 12:52:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DC75438A642
	for <lists+usrp-users@lfdr.de>; Wed, 29 Apr 2026 06:52:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1777459934; bh=iEQ+FMkY8yt49l5jO3GjDYyobii1RA/7esanoloxsT0=;
	h=To:Date:References:In-Reply-To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=WoTd14NW771o4A+38vS43chiKz+TByHI3OS1nNYn0CskS02RkA6imA0s3V497dPLS
	 OUAX9xFDHl4+/t9kjt70nEDN3OxhYWmty+FpinjO0USXDd86tgJ1vPuV3NUJly5Ncu
	 dG6TyE0P0nK3AGHiDwb4mvTYiltxSZrXdSSz0NurRum9oogcvWK/9RQHdV09XpWFpf
	 MJeRvzHlycs8eKaRu4Uh1dZYRQLKsyF7Zqw1B+FxHxXSL/w1Myf/z47S6mraSnzx3R
	 uJ9ipBoVekuTCpnzr1INVkpR+D1TnFM+ZR1xEMXNcBMsA9Zeggtpv0HRcHXLdK16Qq
	 C8P+9MDffs1xw==
Received: from mx0b-00300601.pphosted.com (mx0b-00300601.pphosted.com [148.163.142.35])
	by mm2.emwd.com (Postfix) with ESMTPS id 4B7AF38A642
	for <usrp-users@lists.ettus.com>; Wed, 29 Apr 2026 06:50:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=emerson.com header.i=@emerson.com header.b="zhvuxRGo";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=Emerson.com header.i=@Emerson.com header.b="ONetoP6y";
	dkim-atps=neutral
Received: from pps.filterd (m0484885.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63T7PC7s2439869;
	Wed, 29 Apr 2026 10:50:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=email; bh=RDyHQojzDwSQwk6aLVabE7lThRhC
	H3VYr47C+CD0OeM=; b=zhvuxRGo7iRnwcH9jg6EJeVvBzZj+rjkasFcYe85L3YK
	o7HDJjpaahv1lgYtyvkZTBKYz1vgOxY4YnX7+aughpLOrMXMUMd7vngALOl37PjN
	v86JF2rkGf+J2VdO3yqGcJE+yqqOzaiSkdQ2l4PgJeY20Y94ILcfOdTNxABOHsu8
	z6MNHizXeITtM1jkSRhf63s8iLpjk0gitYJSgskFhrZPuoTGgYejpS1KpwmYZxRJ
	w1VPHut69S0/iZpzk98JhgKQepjTRCXz14gqydGhNJJJucoCEiSXafFI8do7/kaB
	Xw/aFKm+lQZnSFVHwrW44WfM1CAljNu35owFunETzg==
Received: from dm1pr04cu001.outbound.protection.outlook.com (mail-centralusazon11010031.outbound.protection.outlook.com [52.101.61.31])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 4dudk5hhq1-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 29 Apr 2026 10:50:53 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=khpFFuJqhMxhsroFAMMa1bRi7BY1LJubKtacttxytIr18yaDAo4htNCtBU1509M9KSk/UKTN2/QRPjzmkNshe9MLrJSc1fN0QgG8lPTC4slLi7qg/6Hwm1cYSHZ4WojdOBBv9Y+a3UlDHvnZYCSbE+zhSlTMAFX+7Oje6tlVgNgQ3tycgR6N79bdblyUat4K54EIGEf3oxwl0YSpLn+pFx987YT6FJW0udOGX/B+cTYoWochxVdqwUb+5bzbSmjIDjKjfvx8thR8BGFlbs6n4IK6M2Bc09gf7Yqv39F3B807GUnHbNJTSWezPye8415kuQJjR3VdnLE85Vl+8xyDVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X3Rz9qXsHHwGuFDx08LKZw2Zk/Euof5FrUpknGWu/5M=;
 b=SMIZn94cgL8QqgyxeiZvZASoUO1dYkRD5fqUG4HaoL0MNk+zAXUieAvTMQiIhDK7hUzPRjcsZQfZ8dtcBc3MXyTW/ko+PRDWfraNeCboE8YXOaqy6yQiBjPsNsNpBcb71jJgC4h/Hd98AJzqlsgBVjp/+eQHpQo/6aLLARhKZDZe0oqSgKyi8KLdijOhirHTrcy6w5/xNa49hWJRaIhAITYSxT7N0/7tAEq847+4kt98Cw6d+1G/sIwvMoOlzJ/nuzDRPaef/jGH3Sm1a8gSlaUoqdyU/WEOH4qUAUgAbU2sOncqJot1/6/0stOj95Z1viytJHVuqXNJYpk8xsdVlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X3Rz9qXsHHwGuFDx08LKZw2Zk/Euof5FrUpknGWu/5M=;
 b=ONetoP6ynL5lMUa7bRanVKR7/AebgJZLHJ0xAnXvgXWYiXCt7fWswyHCI9ZOm3Dgvv1mRiDYx0ZDJUBAPlOZlFVGku+qrYFxM27ztogLZTZeUxDBbCn2l7zpBV45hLfIlJTod3x5mnh/N15yiX0G6rdPF0VVLKkWIjFNAbp99ro7ViTbt24ZCYupSFNFOnzMmb/YP6mKmRk1w9mlc1emGAEz14aEIIJzEE7QfdJdRNgBFThFPntblTqwe4Q4fY4RiDOFZjtzBn5G7OLg6q0qvv3gOsFbEGzHn1gf5STwMDJTvZowR17zN4F9v7bbQD2jMUFr8tsiUasSh54PzpnVzA==
Received: from IA1PR10MB6781.namprd10.prod.outlook.com (2603:10b6:208:42b::9)
 by DS0PR10MB7127.namprd10.prod.outlook.com (2603:10b6:8:df::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Wed, 29 Apr
 2026 10:50:51 +0000
Received: from IA1PR10MB6781.namprd10.prod.outlook.com
 ([fe80::bdba:6cbe:1a15:fe40]) by IA1PR10MB6781.namprd10.prod.outlook.com
 ([fe80::bdba:6cbe:1a15:fe40%4]) with mapi id 15.20.9870.016; Wed, 29 Apr 2026
 10:50:50 +0000
To: "Jurk, Dennis" <dennis.jurk@hhi.fraunhofer.de>,
        "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP X410 TRIG LabView
Thread-Index: AdzW/IbukQ14JROXRXuMEmxRA866pAAyEPhA
Date: Wed, 29 Apr 2026 10:50:50 +0000
Message-ID: 
 <IA1PR10MB67817078046DEAD82E551D2F8C342@IA1PR10MB6781.namprd10.prod.outlook.com>
References: <2886c174218f45de8fb1b100e4b3c6d0@hhi.fraunhofer.de>
In-Reply-To: <2886c174218f45de8fb1b100e4b3c6d0@hhi.fraunhofer.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ActionId=2857418b-4c4a-4388-ba20-4a030beb1e61;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ContentBits=0;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Enabled=true;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Method=Standard;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Name=Internal
 - No
 Label;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SetDate=2026-04-29T10:41:53Z;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR10MB6781:EE_|DS0PR10MB7127:EE_
x-ms-office365-filtering-correlation-id: 07f62694-88d8-498b-0561-08dea5dd2dda
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|376014|366016|22082099003|18002099003|38070700021|8096899003|56012099003|13003099007;
x-microsoft-antispam-message-info: 
 wSPrNZ+nzTVbAW7FtQg1mhfuNtq670V6Ajslcvjiyrb+GRo4KGv2QBIKF1Nai485lC3Bph0YxLb4dDIlB+nXwx3dFz+x4R0ORyb5holcgn1tqwLq5QdIFkE/FWA+8aQpGw9sDBBxGw/QHglQn/JAJMo9GeXa8xWvXr0TEEOK49r91OIVS55bhPA+X7wT2KHP1ShuRKDMHwtPoF5iA3J6jHA2BuC15LTONscvuarcdgYR1SXcWlNvm2JEKpgroN1S/hs1Pjovl1+1+bwInZA1fHLSJeB0ri2/8BXnXZNOlqJ8pjohba/D1mwg7Ojt+pGEvC2I2BnfGx0pSJ7zuMLZtf05eDdFjMlURKj3q7Lvsrf8ZnMsKGWoGmt/RD46mkh5SX8KHMoJIVntQns/Vn8hJt0Bwq1Wni4eCyMwI6BZgMF1Wewv4gezHPDnQ5ty6/Mm0pOGcbDgOPkq7UTuBjdz2QVYlU+7L4Iczco4JpQO87K/NGytZvUev0WKQNpdra7Oxt3lGO4op/zVGXyFg155vGAVed+ejvJVXREDHu9CllCxwlJ/j4M86HFdbn5HOLKlijUmFdo6Bv6rNg43/hgEkazI8SOJDsvl90Fou7mYDSJ4qgXHw+bxHzI/u3HuCy69x9i8jr+TRtipma3Rban0w1D8IIC+wqgctDLOooKqR3wxO5g/vdfcQnPAbaeqyqvjZJtugFJWBUGBCOJ9fHyYTf9MXmeGAqsTcgrBSLsL4TPSMFcbzLPW2OlX6zz1N7Fq
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR10MB6781.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(38070700021)(8096899003)(56012099003)(13003099007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?bGg4dUNDcFc2VUhMYkFUYjVPRTYwdENsSlZRaS9Bdkw5YkF4eDFkNnRNM2l0?=
 =?utf-8?B?dmhyNm5OcVRNT3hKR20yZUtJN0xzTitZZGNIbEN0TTVkc2s4YWIxY2ZKWTZG?=
 =?utf-8?B?a3IybmlESzQySDI1UDJKNk1rZUNGVmpoaTZ4RHJEYUc0SFpIQ1JGcS9Mdk1Z?=
 =?utf-8?B?K1BuM1BBTHZtR29USlkvRjRUQk96QUdsZnpERmVDTU9DaWdaRnVMUndHZDgr?=
 =?utf-8?B?QzZFamp1UnViOHdEalEzTmY0aEsxTXAzeDhEb1RKb0ZFQ3JseTVnZ2lvS3Bm?=
 =?utf-8?B?VUpLWEkrUi9YdFZBSnVDdjh2b2ZvWkoyQjNXa2NSZmRrb3Rwa0ozS0dpcW5m?=
 =?utf-8?B?TXFNTlUzVC9CYWFMSUdzQTlNaDRmOUd4dEEyUXRueDE0Z2tWdUlXVDBOaUx0?=
 =?utf-8?B?Tnp4MTBQNmtEOUJYWHFKOWRJRjNFVDJjSzFKNkNyWCt4cHRiamk3YU1EWjVH?=
 =?utf-8?B?MzdZRHcvREpMUmlkU3lNZHRMaUdtcE1tckhFWHBHSHU1aHdqZlJXWHBjcTBX?=
 =?utf-8?B?WTZkT0ZIZnN3RE9iOWpiai9sOExuMStKbVR0emQ2UHlwYUNWTnZtUG1SYllo?=
 =?utf-8?B?VXRMZ05ob0paTzFORzAxK0Jxd2F3MFRSL2tXOVp3RUlSdWxpZHZuMUV4d2Vx?=
 =?utf-8?B?Z08wbzBlOWxjYS9OM1JYY3NZQVA3MmlhSWl5TFR2WHU0cmo4am51M3p5Qmlu?=
 =?utf-8?B?TnVwcUJjUE1uMHdLaTIzd3ZvRG1Kb0VBbzE2bGRKVlQ0aE5aWVhzVWdYZmht?=
 =?utf-8?B?SEgwQ2t2Y1FJNXV5OVFTVjhwSDlKTlkxdklWcFUxWEpxcVNkVEpMK0ZjNllW?=
 =?utf-8?B?WmpiZ0JYUENYVmF5R1U2TldiVHNRdzN6Tk0yaXc5ZlVJQjhhZkdrdEJEeWNI?=
 =?utf-8?B?SXNBOGpqNXI2VlNyUGRiSjQwcGFxUVpJLzMrS3RRbXJVMXovT0V6VjNEMktS?=
 =?utf-8?B?MnNzWC8rTHVEOXFsVWtoNDNhU0k0aWhWM05Vcm9iYzBKSmFxd0FUT0cxZ0gx?=
 =?utf-8?B?YWNOdTdVZS9nQ1RLTENGWWh5YkljYnI4Tm9SR0xiQktWdm4xSm5jUnV4Ylo0?=
 =?utf-8?B?R2pCc3hZWFdmS1VoVFJSeUFLY0tNbkFjT0JpTzFWVjczakhiUlFHbXYyamFi?=
 =?utf-8?B?c2JKMnB6c0R3cEFZbXpQNGV0TG1jbzhRUnFwWGp6WUpPbnJkNWtmQk42ZTZN?=
 =?utf-8?B?dGlNQzNSV05YdFBIVXVoT1ZaY0JiY0Z1T05GOXVXMVYyQVFhYXQ0QXZERUJS?=
 =?utf-8?B?N1NUMkhLMFUxRTE4b1BseTFURnpXN1FXK1M1b09KOTdVQ21nbWdvV1J3UmlT?=
 =?utf-8?B?dTVTdVh3U0VDUEZjU3ZCQkxKeFdsM2xVdG5SZzRsam5KbURhanArRDIxTDJY?=
 =?utf-8?B?NEhqakVhQVdLM2hUc2tyUnBCZURDZjNvY1dIN2JZOURQMzdCam03U285S0Q3?=
 =?utf-8?B?Z1ljZlgwQnpUQXo0bUF3OEVMcExKS3g0eEpHT3BCVFdDbEZFWlVyZjJZYVNu?=
 =?utf-8?B?d0t5Wlp6dldwblBLRkwvZWtBQUFmZ2JyTUZJNXY4NVkwZHpWTFVWUDI0NUV0?=
 =?utf-8?B?Z05oK0JmYjVEcE8yNkkrTCtoSFdBbmN2eWdGVWZqRDk4eHhZMUk3ZnZmWVdk?=
 =?utf-8?B?UitIcE5SYUUyZ3NpMEpFREF1OTFxK0NndVNtQzJoU3Z3T1VOV0hMRVlaL0VZ?=
 =?utf-8?B?WWRIN2piZ3FLb0VKTEttT3ZwTS91bUZKTm9YTy9EaWJuS2lqR3d1THh2bUpo?=
 =?utf-8?B?M1JuLzBsZ0FCQkswM08rRU9sSWJ2MGNIZ05aOUVKTlRRakowZ2lxWXVRWUxW?=
 =?utf-8?B?Sk5iQklhbVpKdWwreG1LeU02bEp1S3RvcEVPM0Z6Mi9yMjhYQmFhUWNWNGJL?=
 =?utf-8?B?dkF0TjIvRUx4M3JFVVYwY1U5MVNDSkljeUdIaEpmMUJtQzZYZVYyQ0p0a2tB?=
 =?utf-8?B?ejhZZSthTTNIN2p3c0FuY2JLNm5NQ1dNQVUxdUNuOG03SEE2V1FjQTNFQjRT?=
 =?utf-8?B?T0dNVlgvd0NxSklqNUxwTkdYUjUxRVJJNkxvbmxkRGU5S3YyUzNaOFNMekl4?=
 =?utf-8?B?bGxWK0RTdWUvTUlRb3EwN0FXM25FK002cDAwbW5wOFlpZ2pjK0NHYkZxNWJH?=
 =?utf-8?B?bjFiMGpCcW9QaEpSWnBVWVQvSnV3RWsvVE1ybXVzMERFYzVmQUN3ZGhkU09E?=
 =?utf-8?B?enZvMGRLQUUwUlB4NStTcUlFckx4cGZTZXNLWE1UdVhCK2w5RmpVWlpCU2Vu?=
 =?utf-8?B?bEppb2ZobGRGVUpWL25QRmNJMmVCcXJ6N29kRTFtVHM2WDdWQU5OSUtUSm1B?=
 =?utf-8?B?S0tlTzRyQjc3dmhMMFpNdEFnMDhtM0ZoMlUxRkliU1ZjZE1XZjU2dz09?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	U/169R4NQu5dRpqsT88u8MkCNfQHP1eD/b/pBVeFN5cL/BUE4M4doGuKXxoDJGBn5l94Z83fWdmoS0EdP+CsWCdLMZG4ex6Dr+VHjyyVc7tifzWMNpAc7ntkPcwsKPnPGJnqAfy5SGEFhxj+wq4P0aMhbKvLY0gXPnBlynzT/cfQ36iU9IDZ/5CTbWtWoeCbJKOgqGCySg5PenHh8dAbRsFV3oz/RUlYpDRdAcEb2TwtirObXkX8zNpn2tzENf8qa4KOcD+9IQcn4x84r+GXqrp8NOH8V6JQbfyG/CjM8uRhuqfd6HbBSFErefAJAjD7r4xHtdZqzquWo5c5hVaOJQ==
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR10MB6781.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07f62694-88d8-498b-0561-08dea5dd2dda
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2026 10:50:50.8342
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pb6j12xQmmWqp+cE7KqJNaa/9zOelJiO3YJUisig6sAN9qKz9p8WBlxqhLFf/DDX9f1q6iPaXbaXro4QKHIWQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7127
X-Proofpoint-ORIG-GUID: Hykhdyd0CQq01tX7Sy5jDBABnIhbegee
X-Authority-Analysis: v=2.4 cv=Ye2NIQRf c=1 sm=1 tr=0 ts=69f1e28d cx=c_pps
 a=AR2WfxoYHs0IzVfHT2lLEw==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=A5OVakUREuEA:10
 a=ZPWZ4rD8_x8A:10 a=VkNPw1HP01LnGYTKEx00:22 a=Ps6gwBxKFAOpZu8f3VnT:22
 a=GhS-NIbOczwsjVVHtiwp:22 a=gVGD3344AAAA:8 a=RpNjiQI2AAAA:8 a=etiEgX_XAAAA:8
 a=tFdSZQYWK_iqVsu7EWAA:9 a=QEXdDO2ut3YA:10 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8
 a=BGZnU-dMvnmlJ1JThucA:9 a=tp_cEaBglJnQR8B0:21 a=gKO2Hq4RSVkA:10
 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10
 a=xQEvYfgLW3QvObN0DhJi:22 a=MLbIUA-Bjd6y1alW9qBG:22
X-Proofpoint-GUID: Hykhdyd0CQq01tX7Sy5jDBABnIhbegee
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI5MDEwOSBTYWx0ZWRfX3OHcgZEBzjqA
 pBjbsCWtzVy0SFbFFAesgaQRZC2w7Xm1e4nsK1HYJtN74wdhIF5i9vaISnYRw8YcNp0Y/gsEHlb
 HsgJFopHc8y6V5j3YsLF333Vo/PSIu/Ii4Fsvi1SNIY0TOeJ/q2EqAZVzq1wtQjD8qyjtWliOu3
 Fj53RIW5R6a4qLd7c3JAq97fKYzvl9lQwLxayyKS2EGUsuFP5ZbKDNyw609MfpldwuiNXO0hYb3
 51kX2h6p4hRKGQR3p3d12MwJs+0l6jDsDPfoM83gs+nrjckyUKcvFFmuEbThs//MCCWIv8wWt+7
 IY8nxqEVFC+0ZR4pE4EAYmGz39n2Ar/IWO8JKYGJGhQA7dM6Foo08CcxuNhQVNmRJOy77DzCg1G
 RlBGxMLFJi7tXvbpRIZ2WaNth7nTERyqxL8l3mMDKTGI6kcAeMzEsbqS9vDEnYi9R7ybfMhHuK3
 p5m/+GS3DXOSpkThouQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-28_05,2026-04-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 spamscore=0 suspectscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1011 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604290109
Message-ID-Hash: K6ME6INYYVRYHXCSMMZQ6U56BZL4QOCN
X-Message-ID-Hash: K6ME6INYYVRYHXCSMMZQ6U56BZL4QOCN
X-MailFrom: prvs=6579798030=lars.amsel@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Kaya, Altug" <altug.kaya@hhi.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X410 TRIG LabView
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QJVQ3PIPDWOFASW65GQXAM63Q5OIOPXL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Amsel, Lars via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Amsel, Lars" <lars.amsel@emerson.com>
Content-Type: multipart/mixed; boundary="===============1194883244673570567=="
X-Rspamd-Queue-Id: 6162A4932D6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.09 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[emerson.com:s=email,Emerson.com:s=selector1];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[lars.amsel@emerson.com];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,emerson.com:-,Emerson.com:-];
	TAGGED_RCPT(0.00)[usrp-users];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,ettus.com:email,emerson.com:replyto,fraunhofer.de:email,mm2.emwd.com:helo,mm2.emwd.com:rdns]

--===============1194883244673570567==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_IA1PR10MB67817078046DEAD82E551D2F8C342IA1PR10MB6781namp_"

--_000_IA1PR10MB67817078046DEAD82E551D2F8C342IA1PR10MB6781namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dennis,

According to the documentation https://www.ni.com/docs/de-DE/bundle/usrp-x4=
10/page/signal-routing.html you should use niUSRP property node on the host=
 and wire an input to it. In the reference FPGA you have to modify the TRIG=
 OUT VI on the top right.  The default wiring ist PPS -> Trig OUT and you h=
ave to change that to match your design. You have to remove the existing wi=
ring as you want to use trigger as output.

Regards

Lars

From: Jurk, Dennis <dennis.jurk@hhi.fraunhofer.de>
Sent: Tuesday, 28 April 2026 12:49
To: usrp-users@lists.ettus.com
Cc: Kaya, Altug <altug.kaya@hhi.fraunhofer.de>; Jurk, Dennis <dennis.jurk@h=
hi.fraunhofer.de>
Subject: [EXTERNAL] [USRP-users] USRP X410 TRIG LabView



Hello everyone,

I would like to use the TRIG IN functionality of the X410 to start the rece=
iving of data on a trigger.

How do I implement this/modify the Reference FPGA image to achieve this? I =
would love to get some guidance regarding this issue.

Thank you in advance!

Best regards
Dennis Jurk


--_000_IA1PR10MB67817078046DEAD82E551D2F8C342IA1PR10MB6781namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:10.0pt;
	font-family:"Aptos",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"en-DE" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"en-DE" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US">Dennis,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"en-DE" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"en-DE" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US">According to the documentation
<a href=3D"https://www.ni.com/docs/de-DE/bundle/usrp-x410/page/signal-routi=
ng.html">
https://www.ni.com/docs/de-DE/bundle/usrp-x410/page/signal-routing.html</a>=
 you should use niUSRP property node on the host and wire an input to it. I=
n the reference FPGA you have to modify the TRIG OUT VI on the top right. &=
nbsp;The default wiring ist PPS -&gt; Trig
 OUT and you have to change that to match your design. You have to remove t=
he existing wiring as you want to use trigger as output.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"en-DE" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"en-DE" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US">Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"en-DE" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"en-DE" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US">Lars<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"en-DE" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span lang=3D"EN-=
US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> =
Jurk, Dennis &lt;dennis.jurk@hhi.fraunhofer.de&gt;
<br>
<b>Sent:</b> Tuesday, 28 April 2026 12:49<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Cc:</b> Kaya, Altug &lt;altug.kaya@hhi.fraunhofer.de&gt;; Jurk, Dennis &=
lt;dennis.jurk@hhi.fraunhofer.de&gt;<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] USRP X410 TRIG LabView<o:p></o:p></=
span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><span style=3D"f=
ont-size:1.0pt;font-family:&quot;Arial&quot;,sans-serif;color:white"><o:p><=
/o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><span style=3D"f=
ont-size:1.0pt;color:white"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;mso-l=
igatures:standardcontextual;mso-fareast-language:EN-US">Hello everyone,<br>
<br>
I would like to use the TRIG IN functionality of the X410 to start the rece=
iving of data on a trigger.<br>
<br>
How do I implement this/modify the Reference FPGA image to achieve this? I =
would love to get some guidance regarding this issue.<br>
<br>
Thank you in advance!<br>
<br>
Best regards<br>
Dennis Jurk<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:12.0pt;mso-liga=
tures:standardcontextual;mso-fareast-language:EN-US"><o:p>&nbsp;</o:p></spa=
n></p>
</div>
</body>
</html>

--_000_IA1PR10MB67817078046DEAD82E551D2F8C342IA1PR10MB6781namp_--

--===============1194883244673570567==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1194883244673570567==--
