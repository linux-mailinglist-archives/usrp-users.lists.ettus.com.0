Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DDC6AD976
	for <lists+usrp-users@lfdr.de>; Tue,  7 Mar 2023 09:44:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 905A1384C49
	for <lists+usrp-users@lfdr.de>; Tue,  7 Mar 2023 03:44:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678178652; bh=9gD2e7dGL1+2KTnu9pTl64mcMjDk/HZRIE5Ecq9d0XQ=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=mGy4kTZQvn1MKC8kwn4+38Rbc387tNw7hFNf3+UfUg6QWPRI8T26sW+yQcf+0Cjsi
	 yvfVoW9xs1s3nevZZDHqmvFTOdxuXQxsql3wpBkV+Nc+zjcNQ2T1pCJic7/3i80Mu9
	 V8AWuxVPMWPT+e0ZkKA4rEM5B71MJ0CR5k1q0Y8aAwGQyK7Ex2TBnMDi/tFeUhcpcV
	 fmKf3fTI9xkFoaFcpl/GevLQNWxbusI4JXOBFYeMLjekKK33eWrl2UlJdYJlc0oT0n
	 4J8B/4k5/jVRvKHVRnu/Shs9oaz/sr/HV88KQb2po4yNEgj9ukhoudYpGl99H1y5T2
	 Kb1hzDXZPvGVw==
Received: from mx0a-00164e01.pphosted.com (mx0a-00164e01.pphosted.com [67.231.148.85])
	by mm2.emwd.com (Postfix) with ESMTPS id 1BEAA384C49
	for <usrp-users@lists.ettus.com>; Tue,  7 Mar 2023 03:44:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=molex.com header.i=@molex.com header.b="k1D4nspq";
	dkim-atps=neutral
Received: from pps.filterd (m0048128.ppops.net [127.0.0.1])
	by mx0a-00164e01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3273s6LI009742
	for <usrp-users@lists.ettus.com>; Tue, 7 Mar 2023 02:44:04 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=molex.com; h=from : to : subject :
 date : message-id : content-type : mime-version; s=00164e01;
 bh=Eyf8RdpNsSZerJXQaYcl9//lb3R1lZyepAPoQ/MEbcQ=;
 b=k1D4nspqT9fJDeHIVVO8hM+qmBHfeeQ1wklJ74FxkqRi5CEKfRkvCb6jo3+TOlN8C0PA
 0ogjPsbEWo3IOwxWJQKZHYYnwBOZUJ9ZQFamFjxUUr4pnKIMF8n24os5bvnpf/jSp6fL
 yU5X9JCRs1KpIStcqcfOhKFd8EKO8IX/kYQqaDUwUxWfmTsQsOaU5PzJcZUx2ZSYKgPw
 FKYFvHTZrqUNUoprJ1r2ftMPogjCmsJPbe+txPiwV0mgYHP55i58VmfORcpSL7ZmR+lm
 UvXR401fQtAT09L/O8OADAL3SXbCV63kShZ/091E0o2GWx+K5R3/r2TKRranlsBsZM+I tA==
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2171.outbound.protection.outlook.com [104.47.55.171])
	by mx0a-00164e01.pphosted.com (PPS) with ESMTPS id 3p5far00xu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Tue, 07 Mar 2023 02:44:04 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hRs4bXc4aP4eqEo0Sk2uIOAd/aRg6S2WY5tnoKmGv3/N/nXdU2Me3aVy8RdyG6YTOblQmKEu8+7YNDbjED4cm7eF8ZcQW6Zb8LAK1W/zJHkPNLjkOGP52+jFv9Lb8miinTZjYXPwLwibXsBgePkHBAw4uefdz7MHKj1XIa7kHQD1QXiubQa82mYF/dhsKSorEpKlWvZYmBB79QYCMIwXmgBFvvM8XlEhipXAlRkVAaDouEj6EAdysFTar+RLA1RDq7o+PPZ9mwLsBijb/kQQ0z9xvvr1PfCN3jvz+DieaOvtlhbevNrvHI6yVLj/ZkRbhN+HOXSBFiwR54+4SNU+eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Eyf8RdpNsSZerJXQaYcl9//lb3R1lZyepAPoQ/MEbcQ=;
 b=H7gK+OS3YPChZCml/8rBjeEhnMlX5DAjpSk4SthAKQBLrYEn00OWzP+8hJqYHQ23hNycpYHAWYkUVLBRXZSvEKNg6uMFbbBxJZM/yuPOf/DiDNr4jGBrQisbi4/RiayQ3Db1kZbw7KaWTc+Q+bX+kgN6MJxwpwVSzzW3mQ+mDGsltYr2HA53r0QUL+khzk+qnazZeWhMWeoKrfk/+TiyTDMfE0u9mvIXw1UL5Gnjqdo+YDFlaiMKlmX6pHNOZVVwGidrs4DY/FFne+Cbdqu2fBnA51Mgtq7JX7QyEcdUE1nkkHwy2sUqYaCKyLcXmAOBoYW8fMHHqUCDoOIkBy26eQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=molex.com; dmarc=pass action=none header.from=molex.com;
 dkim=pass header.d=molex.com; arc=none
Received: from PH0PR15MB4704.namprd15.prod.outlook.com (2603:10b6:510:9a::7)
 by CY8PR15MB5578.namprd15.prod.outlook.com (2603:10b6:930:99::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Tue, 7 Mar
 2023 08:44:00 +0000
Received: from PH0PR15MB4704.namprd15.prod.outlook.com
 ([fe80::b5cd:b5ea:7d0c:921d]) by PH0PR15MB4704.namprd15.prod.outlook.com
 ([fe80::b5cd:b5ea:7d0c:921d%8]) with mapi id 15.20.6156.026; Tue, 7 Mar 2023
 08:43:59 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNOC module sending back (or receiving) data in the wrong order
Thread-Index: AQHZUM5ne2Bbrc92YUuDt8a5p1JwOg==
Date: Tue, 7 Mar 2023 08:43:59 +0000
Message-ID: 
 <PH0PR15MB4704C1D70796EEDE9A062100E3B79@PH0PR15MB4704.namprd15.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR15MB4704:EE_|CY8PR15MB5578:EE_
x-ms-office365-filtering-correlation-id: e9f23608-b350-44ec-c40e-08db1ee818b3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 9bJyMaXOCio7syiUMthLg9Jt3QiEBoODenhwVpsC7JXNWfiEFMhg0p8zsEYpUYQCIEjsKJyYcE/ynI4wivaUyP51fZrKz3oxDDV7j8s35m9zfnu16bDKimsUEET81PzDlT7Y5bJAHRIshFm4OjcqnvYTUuAFFIk21WeSLGNfP50y0/B4IhfFFaWVoP2aic57gbssum7hLaI4YsJk1l9La+IFYe8ujvCz/XY4ePWd1W8adAlqZOOyy0voJNjIisEA+8EMojKQRZKJFPvaN3S3h5UkbiTR38jssSUFRggCt3datUItPwTuq1Z/gZ+To6hWlo0cIX/sqiqrXxIM/8q4J7cudc/WnGVUK5q3eb4BOK6XKoB6cejkDw0isSv9fqMQeXTTp1TU4/j16eMQoxzlEfPv6xO8RYUfkwm8Un193PYHWfX0ZwjH8wZT8MXjlh5WU42Iv2hQoe8jkAl8lSOVbo/hNeapERol6OqPMHLft6eptD9LtmfA8HSx6nNd1go3m0Ch/qyWuSihlWNJuhT4I4Y4mF7DCJFrgIjgAALy6IWIzVp/4G0vZWL9cMbY+BLqIWQnSyhptdIM/LXIaoRuiPoXJeBOcwDCifKDYqsRdzQW4PaNAWqzDtUaunCmZmIfy4cxTcS9u8r2g590g6gL84ae6CS3+mxLBU7i2UmFQ/yHh/7AzTZWskZTeS4GSGpXJ/E1IiuZHIeLtoT2nqq/YA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR15MB4704.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(366004)(376002)(39860400002)(396003)(136003)(451199018)(71200400001)(5660300002)(19627405001)(7696005)(478600001)(33656002)(8936002)(122000001)(38070700005)(9686003)(83380400001)(186003)(15974865002)(55016003)(41300700001)(2906002)(38100700002)(6506007)(316002)(66946007)(64756008)(66446008)(66476007)(66556008)(52536014)(82960400001)(86362001)(8676002)(6916009)(91956017)(76116006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?kbtTgOwOqXsK/LNoEe4mwzdTmH+vBgXvOngZugs9e+diQiZqML5qovkdar?=
 =?iso-8859-1?Q?0Ll1uuhl1LJkTjxEQce2w9EPgHmKx8yj0ijxI6qGB9fB0s42FUvXwVBK6p?=
 =?iso-8859-1?Q?JBchumvEsDoaGl43KUZZWv59DNqwJ2cg2AiB7tUZYiIC2lDOGvElA+OS/i?=
 =?iso-8859-1?Q?aUl3Y+3iLfHWWwvik3XEowCEtn7TBRWX+rEXaiY7hJRx3a2MBSbCQQOkuj?=
 =?iso-8859-1?Q?Ed9oN5Ee1mLMEWfyzBEo9ImeM3C4APoFFjMeLDhZ+vMSfbjrZX5J481yps?=
 =?iso-8859-1?Q?IzoaPv7Z7+2SaEj+mKaknXTadvIEMXIBLgltrkMj3D4pheuirVJOv79aRj?=
 =?iso-8859-1?Q?ziugvlVUaLAzhVTlLv6gUylLBd0wv7ArkEsYAN5fpniDOUGU3sj5pbk9Sq?=
 =?iso-8859-1?Q?V4vEa+gOamPPIO9/+2DGvbuJXFSvq5zkwFijchoFmvf4Se6lIKoLq9cb4c?=
 =?iso-8859-1?Q?l1rNhC9kGkp1wOU5RQNIMMQRQSN9zcwzr4I6npeE1aHpvf4sZIRfwzJnLw?=
 =?iso-8859-1?Q?gyp6zgbKIW8PFKd3oD40OQHIIPh9SPfVIZeKgfR/Rp5gjLKV4Hr8feNBzq?=
 =?iso-8859-1?Q?eolrUDWU5dkcPQ0NqHn6ILHStr9Y9idVxqrN/bduUB6CZtWsiChEDli8e2?=
 =?iso-8859-1?Q?pGO+cVaX4lXuOYC7506HbB9UUpphK/5ymiPXlf2Ggyo/0KUm80gBDJAr4R?=
 =?iso-8859-1?Q?d8Ls9MeHfENnpjokGMOgsmz6nIDMPmpiL7bugTBmFFewkg25dQFNSnPnS4?=
 =?iso-8859-1?Q?RB8Yjnf6VR/lm7IsQpjP/2AqF0YozGF1f+k36crkT3i7sxC+FMRY+BCoOV?=
 =?iso-8859-1?Q?A+jQ8DcFC3t+/mm29eoTN0zVxvUJvRU0QNYLkY0NnTvGV25usbx1bPOKrC?=
 =?iso-8859-1?Q?AFSiFqXkK6khGimwEQUvN7UpFdwc4rYEADcB4We+g6GPz71a+2RY7pBqVC?=
 =?iso-8859-1?Q?lme/wMHXCy87DhTbERiJYJMOg3ADA17IvNTQ2IBgo6YvYVYuZd0opvsi0o?=
 =?iso-8859-1?Q?IOc9HaEe5Ven6R5wEbsghvWJszI5j7VZDFIPjut6IfzsXuSXPtrXZpiGif?=
 =?iso-8859-1?Q?5zxknOqDTd5NZ0SoXGKF4E9OHw8xI4bXr9P31YEDtCOlT1ovsB4xC7OQ3y?=
 =?iso-8859-1?Q?7RSTt+19vFHEVjl3BFMu49mot2fYoQ3W7qPr0rcyPvD4FFp9c8onv9hDmK?=
 =?iso-8859-1?Q?KRjijb6G16EoeLFDMoISegs9pHl1tUP+fM83mtiltjX4i+H1dIZgJ7Fh+p?=
 =?iso-8859-1?Q?o/IodB2U9SrrzPq9obneV3JIn2o0UcAUFag9TUOqcmC6aGieBV7ZLen4WC?=
 =?iso-8859-1?Q?kje0SnOMwFrMx7xe89b2CJoO7DiQle9HWpNkmjnkCWnlSGy/v5AEdqU9ei?=
 =?iso-8859-1?Q?jH6vetW4tCOwGyZXmpxqT9lWnTs8toeIW9hByvj22slFjj5qYNf0sVlUy2?=
 =?iso-8859-1?Q?o6v88WSUuKy2o115HI1tzpZNkROt6mlurdypf8dV6oL3DkdCgHMnAChByN?=
 =?iso-8859-1?Q?BdYHb/A6sfSQXTKlaNGBmXwP9WoAju1qKomo0n/J0Aco19+n9Clwbw/SVC?=
 =?iso-8859-1?Q?d9s3YbtU2XGxDlIo8UOXlZHXZ+RXRnuw8eo47QloL7raAIbmKA3jAc+YKF?=
 =?iso-8859-1?Q?znkjiybmBmdbSAwQKISvpVRf1AgV+8djit7zEI9VPGd38D1X+COotNcg?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: molex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR15MB4704.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9f23608-b350-44ec-c40e-08db1ee818b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2023 08:43:59.8581
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 101ce67d-13f2-447a-bb65-0989b89dfdb4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QeUAnb7QjM714s24YXz2nhZJ3ipMixZ5f6hYKbkK5SApMO+7TGLFQt5AywIo5gz2PI5t6Pg9/QUM9QjX0XNCBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR15MB5578
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 04
X-MS-Exchange-CrossPremises-AuthSource: PH0PR15MB4704.namprd15.prod.outlook.com
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-messagesource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-originalclientipaddress: 2a10:3781:1f::465
X-MS-Exchange-CrossPremises-transporttraffictype: Email
X-MS-Exchange-CrossPremises-disclaimer-hash: 0c6d048b2a9fb806923cec0a756adc963e7cd1169c28b6f2f2da544dd13766d1
X-MS-Exchange-CrossPremises-antispam-scancontext: DIR:Originating;SFV:NSPM;SKIP:0;
X-MS-Exchange-CrossPremises-processed-by-journaling: Journal Agent
X-OrganizationHeadersPreserved: CY8PR15MB5578.namprd15.prod.outlook.com
X-Proofpoint-ORIG-GUID: TAX0JgVDdBa--n7FxsN6F6sAJnORwwfw
X-Proofpoint-GUID: TAX0JgVDdBa--n7FxsN6F6sAJnORwwfw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-07_02,2023-03-06_01,2023-02-09_01
X-Proofpoint-Spam-Reason: safe
Message-ID-Hash: 7JXFMG5OT6KYXPKSZDN73ODYDJ3CTJKG
X-Message-ID-Hash: 7JXFMG5OT6KYXPKSZDN73ODYDJ3CTJKG
X-MailFrom: prvs=8430bf9b64=bas.vermeulen@molex.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNOC module sending back (or receiving) data in the wrong order
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H5AC3XTL2AW33HBKWBAQTFAVZRTBQGSX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Vermeulen, Bas (Consultant) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Vermeulen, Bas (Consultant)" <Bas.Vermeulen@molex.com>
Content-Type: multipart/mixed; boundary="===============6114710709955524641=="

--===============6114710709955524641==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH0PR15MB4704C1D70796EEDE9A062100E3B79PH0PR15MB4704namp_"

--_000_PH0PR15MB4704C1D70796EEDE9A062100E3B79PH0PR15MB4704namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

We are developing an RFNOC module that takes I/Q data, and turns that into =
two 8 bit values.
I have a test program that sends data to the RFNOC module, and receives the=
 modified data.

The RFNOC module treats the two 8 bit values as one signed 16 bit value.
When I read the data from the test program, I get it in the wrong order:

Send: Re0 Im0 Re1 Im1 Re2 Im2 Re3 Im3
Receive: Val1 Val0 Val3 Val2

Does anyone have any idea how to fix the order of the received values?

Regards,

Bas Vermeulen

________________________________



CONFIDENTIALITY NOTICE: This message (including any attachments) may contai=
n Molex confidential information, protected by law. If this message is conf=
idential, forwarding it to individuals, other than those with a need to kno=
w, without the permission of the sender, is prohibited.

This message is also intended for a specific individual. If you are not the=
 intended recipient, you should delete this message and are hereby notified=
 that any disclosure, copying, or distribution of this message or taking of=
 any action based upon it, is strictly prohibited.

English | Chinese | Japanese
www.molex.com/confidentiality.html

--_000_PH0PR15MB4704C1D70796EEDE9A062100E3B79PH0PR15MB4704namp_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
We are developing an RFNOC module that takes I/Q data, and turns that into =
two 8 bit values.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
I have a test program that sends data to the RFNOC module, and receives the=
 modified data.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
The RFNOC module treats the two 8 bit values as one signed 16 bit value.</d=
iv>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
When I read the data from the test program, I get it in the wrong order:<br=
>
<br>
Send: Re0 Im0 Re1 Im1 Re2 Im2 Re3 Im3 <br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Receive: Val1 Val0 Val3 Val2</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Does anyone have any idea how to fix the order of the received values?</div=
>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Bas Vermeulen<br>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
<br>
<br>
CONFIDENTIALITY NOTICE: This message (including any attachments) may contai=
n Molex confidential information, protected by law. If this message is conf=
idential, forwarding it to individuals, other than those with a need to kno=
w, without the permission of the
 sender, is prohibited.<br>
<br>
This message is also intended for a specific individual. If you are not the=
 intended recipient, you should delete this message and are hereby notified=
 that any disclosure, copying, or distribution of this message or taking of=
 any action based upon it, is strictly
 prohibited.<br>
<br>
English | Chinese | Japanese<br>
www.molex.com/confidentiality.html<br>
</font>
</body>
</html>

--_000_PH0PR15MB4704C1D70796EEDE9A062100E3B79PH0PR15MB4704namp_--

--===============6114710709955524641==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6114710709955524641==--
