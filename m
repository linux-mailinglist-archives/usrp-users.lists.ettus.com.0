Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F0773D953
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jun 2023 10:14:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BCE42384A37
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jun 2023 04:14:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687767256; bh=XkLDTuYOoHd21aiQiHbJ9iIKm9UecjgotBp+CeRPQt4=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=aeNrUMEbc89PnRBFqVYpm8u9c8KbO6HUXbzJf3fZsRrqPZN+qjaGORt+wpk65K2au
	 0VLRjdOjPeN8sOyB5G1kENbHuxXQhl0JKp4ErgFK+D8vdeosIygID985WrkDsPNbtG
	 mj/GJGFvBR1kNv7lfWm/US07C4LK9bbH5iGyBkvViLI023jeBFy1m0Wf9GclYwbxLB
	 RtMkXqe1XU626qX5idLJ68liQBCoUMg/Y7HDMk/xfRikft2cMNfUCk1+j0bpk6nmOH
	 x0NrjYWmfqGvg2TmNVlJ5Wqx97Q9PxxRtRCBwMZh/PcjY2cJfOMUQUyWsAVo8GoFC2
	 2VI+7hm//PE2A==
Received: from mx0a-00164e01.pphosted.com (mx0a-00164e01.pphosted.com [67.231.148.85])
	by mm2.emwd.com (Postfix) with ESMTPS id 4D153383E26
	for <usrp-users@lists.ettus.com>; Mon, 26 Jun 2023 04:13:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=molex.com header.i=@molex.com header.b="E2NH2KG0";
	dkim-atps=neutral
Received: from pps.filterd (m0048131.ppops.net [127.0.0.1])
	by mx0a-00164e01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35PMxOli028477
	for <usrp-users@lists.ettus.com>; Mon, 26 Jun 2023 03:13:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=molex.com; h=from : to : subject :
 date : message-id : content-type : mime-version; s=00164e01;
 bh=YNx/zGSM74RctYbeWjeIopDwA4NtshKcNYypYus4EvM=;
 b=E2NH2KG08pEe5YDHOrw62BRbNkIBzpzzGpl0pJo7Gfsl1mA4eeKPX2sCc2Rpwb37MHS9
 pgE5ePzOZ8fZOgCFndpRqy4r09Rd1NutwrsPp9wX6oS0lP5nkyOMXLWbsFTHD5Pg+1bV
 ZgcvzHb5dXEQrkchp0fmYgylAzmeFovji0qA6R7qtoyXQ+5GMRm+muYAj5QeAudFOOJX
 yVKq5SoreBn9KXSer87JfWc8YpHntGmtsD8lw3n49L5hYkWxIivDjvB2y2E82gItOGPO
 QAULqRqww5Kv84j/ATlYkytTn9A3bUmbroUqDT5v4GL34TrZVd4WlkrgpbkRg/a+Wr13 wg==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169])
	by mx0a-00164e01.pphosted.com (PPS) with ESMTPS id 3rdv40drwg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Mon, 26 Jun 2023 03:13:34 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C+YYWydsy7yG7B5Ep8+jDjNlCKSbVUnF9b+oQ3FDxZej2+WaDl4kVghVTZ/14vBeK84w1+xHOHTnnzlkD78HsfwhfATVtzGA/yc7qu156+pdwGqMXhEx4gD9YRIx5b59G6WPTFzHb7iHw3NeP7fXqu7v/5MlrjbzerYkw887O5pE3MJc7SM4SskRLTWQ7a0caUgLqhMQyPQLlMbiA5fD9eY+07zlMG5Wau90HiGby415e6vBo1jbC7O8xrg22UBfUAm2bEuKoasMErIsEYIymrPGXduw6qT8mxN/fG5WVTmZjooH12FzZl+Fb3xhn/Ss2awEeiGP2pmMjXwx7KNVig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YNx/zGSM74RctYbeWjeIopDwA4NtshKcNYypYus4EvM=;
 b=Kg4hkNAi40Gyi7pkbSjw+Bijf2NQ1jLSv9/ZRO5mkCQb16w3SKbI1GtyHcdjtT1N4W7HXDPfBv7Qd3xOIispuHkQRuRQXDB31D587iJgvi7if7XObdzN2HkALDxgyzYVWeR/+LExEFGKpUq97i1uG7Yo4N74Au/29IYusRazC7N/Yajy4vQwHp3y553LzN/h5RxZt+MJlDGm3l8bnZjGUYCmtZaO5EQ3WiC2ezhJQUQNY4RPfsbL4xzT4qSU9OHd7k6os9ZyRWfEn3XDRDOZg9f/XIdiSthdGNGyCVxQ4jNa7b98A4ArHoKaCSAIktkACSiwzDeLTVeG7LON4NX8Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=molex.com; dmarc=pass action=none header.from=molex.com;
 dkim=pass header.d=molex.com; arc=none
Received: from PH0PR15MB4704.namprd15.prod.outlook.com (2603:10b6:510:9a::7)
 by CH3PR15MB5563.namprd15.prod.outlook.com (2603:10b6:610:144::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Mon, 26 Jun
 2023 08:13:30 +0000
Received: from PH0PR15MB4704.namprd15.prod.outlook.com
 ([fe80::f6df:8c8b:a21c:3db]) by PH0PR15MB4704.namprd15.prod.outlook.com
 ([fe80::f6df:8c8b:a21c:3db%3]) with mapi id 15.20.6521.024; Mon, 26 Jun 2023
 08:13:30 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: What is the proper way to design an RFNOC module that takes sc16
 and outputs sc8?
Thread-Index: AQHZqAWnaicrxVX6KkWIkI1siVIWzg==
Date: Mon, 26 Jun 2023 08:13:30 +0000
Message-ID: 
 <PH0PR15MB4704BEFEF1D0C6B57A543622E326A@PH0PR15MB4704.namprd15.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR15MB4704:EE_|CH3PR15MB5563:EE_
x-ms-office365-filtering-correlation-id: 890dfa28-be4a-45ea-8529-08db761d3a53
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 xU8j+ItbUuH3KQwoHb8YQ02SHTWivg0Up9ZKwOL7pDVl4voe8trVHZfzB4s6Yz8vntoxJSrcM6gWAo5oJew5fTUNcqXpdYE8c8yIxAdoNn+zUZlZ5MLNhy5TixLE491EW+61WFCTIKc5Cl1bCuYC5V07mwzICf6Tvv1kqNXTcdwqDY8d786c2FeD5mchpnnX/p+AqINuhjyCy4JR5mWjH1FxyD0wrgusJr1Dg3KNndBHyVyVAfo3hjDUJN+sixfrfQR72JKXRcTIs8JzV6mBh64CHI9MCjmL83JAUf21UuXTbeA/G/JxtquTFX+2jg2HzIM3722VkJ0mXJh+iu8cRylrMKcXkLZ8GF0CjJmrkvmqPUMjJnxNt0nLtvW+2hQHiOQOOIUA4Z/9KmDaU110H/0SZDIKb54Fa3inS+McuTGuMmn5vSWyUy9DeoxoGQBsWmXaL7JiGfgoWnyAQakryjEomfv2UN2T41ACz4IHDdf06xHrbZa9Bx/PgSXa5Vx7a22J2kaY5/zKjwL+MLR+WC4AQ81wOdeT0ngluXm9ytooXSLYlDPmjnUEVjhtHbZgG9omHrAnn0+7JgUHx0Gua0j4IsI0KyFePRgfaiKJNCe3f8D1tdAaaRvEsJK/KqG6PVFUGUE0X3iOp1qny72GoQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR15MB4704.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(376002)(346002)(136003)(396003)(39860400002)(451199021)(2906002)(7696005)(71200400001)(38100700002)(122000001)(99936003)(82960400001)(83380400001)(66574015)(6506007)(9686003)(186003)(55016003)(41300700001)(86362001)(38070700005)(478600001)(316002)(91956017)(66556008)(15974865002)(76116006)(66946007)(66446008)(64756008)(6916009)(66476007)(33656002)(5660300002)(52536014)(8676002)(8936002)(19627405001)(43043002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?fOwdndmKst+wNOs6pzWP9TasQXuaUX8XpaF8ICMPeAMJ5f3nOWhNpWWsnG?=
 =?iso-8859-1?Q?IfOGcwsJ0OvTBFkYBQyFhrUorvtzXAYxyoevTc5R1t6IwIBLhRN+ZDR605?=
 =?iso-8859-1?Q?2EnS/8654n0MV5889DhD1RWjKpt86AyOLUm1VBRWoIJUATi+AliQ5vGauh?=
 =?iso-8859-1?Q?aYtGYmUyKCS28lz+Hu5MQMj6DOToGo0hwAOhBvMPJM9LOw3LyZSbYSVnij?=
 =?iso-8859-1?Q?HgNwMVLzobl/osdB9bdQKTxdv9hO18dgiR5tu6RsoRJRm7j3iewfsaSyNf?=
 =?iso-8859-1?Q?pxI0LemwAuHEj1GsH2B30CLnanOwkySmwvzzunE+R+QefOUx7T439RBOEU?=
 =?iso-8859-1?Q?dB4SHgVQuHQQfWpu8sWfp0hljYL0bA7WEwQ/Y6pHCYXKCTaHJZZlNYvkR8?=
 =?iso-8859-1?Q?Ja/WjWi78iv3I4JHpkrVe+ekBM+Sj/5zqjKmIRx8MYgO0M8vpedcSEEqIM?=
 =?iso-8859-1?Q?hoPvLH94wvBxhUmZLV0ZApDO94tpfT5xvMekzW5mAfmZ9z7ENLtQxjUviy?=
 =?iso-8859-1?Q?EIQgxGui8wK0BGkNvyKM06ABn5zcK/tP9vziM77DtoIvvtXYFchBvN2h+S?=
 =?iso-8859-1?Q?EP7thdy17wztV0RfrQiLKaZz/BCFHSbC5WhPexgUsTVVjpkVWfNYeSzvgn?=
 =?iso-8859-1?Q?1T3/U5M53RRx+FOgzpH5iQP3ekR3kWfK8IVqUBYQ7BUnwE1guwAYN/GmfK?=
 =?iso-8859-1?Q?gcPK6gNFV4qc2vUyD+A9dOagWtl4ImTkYH659wPge2hKeydaT3sP9L6VuH?=
 =?iso-8859-1?Q?TAQqHiEqR7mfeZj4VEY/Z2sETo+itbmhN4ztocx9yEgsM6ti2NyZmWEK/A?=
 =?iso-8859-1?Q?OFJpBUf3v/WxBFzcqv3h1yYKSW1EnX5KY33z5xKR0WVsdVCyUJPxxutm9z?=
 =?iso-8859-1?Q?HAL6BRlvGRTyPyPA6F2T8QqSNrh3YzG6j1SxuL5YWYcg6K3Dou1zYl+3mG?=
 =?iso-8859-1?Q?Tvoad+I3gv3WUSsrkIKciAI+ZkZscZAVSVINgaF5CtjrtX5VW3rz5YY8kV?=
 =?iso-8859-1?Q?/uqWSn9zL7Hw+EqV7+Z/E+MjO940VOfTUB0qSxLWqiIiz4+n2O+oz/Ym4i?=
 =?iso-8859-1?Q?lhYlAF1YLdISpVH8EqvV1JqHGv+f4tMRmCChmWuk5s3uplZOFXyjkF+nqc?=
 =?iso-8859-1?Q?3ZYn/wI+hojfyKgRIJ6Vqjh1ujsJK9o9WfpJMa5b8vfSLVVRadUD0l+tqK?=
 =?iso-8859-1?Q?QKbU8rmhMs5wly/gMRfvWPRrWZ0jOoPYQye0r4nw9KeOqiePDm3fep1g5M?=
 =?iso-8859-1?Q?MuB3Q27YbK5+/RnIO8k3pExb/xlCCTSIGCmYBvUPvmrFs0zMiA4ncldEeu?=
 =?iso-8859-1?Q?3qy2ovezHzNzGPclo5eksWl0x+FbMAPvoL2xb9J7pLZqj7mmGMGnCOs9Zm?=
 =?iso-8859-1?Q?BsT0wZ3kepppN8E/2PHdaNsacMGMgXfUZU8ZMsAdVqpzoU0kjpF6krOKvj?=
 =?iso-8859-1?Q?BCx/vH/Em6FHyVtq1VOhBOhuItA2lTyog7Ro78sVSZbijY+Pj2BIVLRDqA?=
 =?iso-8859-1?Q?c4hK1HltMgQee5COmy+ISToPBP0rdz+nujCHs+jDUoYYcJg2zvzc7bZPcU?=
 =?iso-8859-1?Q?MKghs2Ol4BxISqIzWxwGOfvZmQ0Ypc9hgmEgak9YcEE3hKOt8CH1q2rNa5?=
 =?iso-8859-1?Q?XCrtSqtijYzWL/LTvuZUscAqpXCg2SzveN?=
MIME-Version: 1.0
X-OriginatorOrg: molex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR15MB4704.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 890dfa28-be4a-45ea-8529-08db761d3a53
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2023 08:13:30.7561
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 101ce67d-13f2-447a-bb65-0989b89dfdb4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3e9p4Sm31IE029kGlTV0Hk5+nH4RSdwdNS47bySTkOp3Icjo1lVEhzHpiaXPbP/32PKvtPipG0blDGF+frv6JQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR15MB5563
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
X-OrganizationHeadersPreserved: CH3PR15MB5563.namprd15.prod.outlook.com
X-Proofpoint-ORIG-GUID: cXApRZuAx29LuZEl3tVNvcLv7WB3q3J5
X-Proofpoint-GUID: cXApRZuAx29LuZEl3tVNvcLv7WB3q3J5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-26_05,2023-06-22_02,2023-05-22_02
X-Proofpoint-Spam-Reason: safe
Message-ID-Hash: GER5DPUGBQ3L7AZ4PPIQ4VHEMC2KV6WA
X-Message-ID-Hash: GER5DPUGBQ3L7AZ4PPIQ4VHEMC2KV6WA
X-MailFrom: prvs=15413b0226=bas.vermeulen@molex.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] What is the proper way to design an RFNOC module that takes sc16 and outputs sc8?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CRSJ2K4OKF47RFAYKZE4XLWUTK74ZHKR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Vermeulen, Bas (Consultant) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Vermeulen, Bas (Consultant)" <Bas.Vermeulen@molex.com>
Content-Type: multipart/mixed; boundary="===============4368325584374457405=="

--===============4368325584374457405==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_PH0PR15MB4704BEFEF1D0C6B57A543622E326APH0PR15MB4704namp_";
	type="multipart/alternative"

--_004_PH0PR15MB4704BEFEF1D0C6B57A543622E326APH0PR15MB4704namp_
Content-Type: multipart/alternative;
	boundary="_000_PH0PR15MB4704BEFEF1D0C6B57A543622E326APH0PR15MB4704namp_"

--_000_PH0PR15MB4704BEFEF1D0C6B57A543622E326APH0PR15MB4704namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

We're working on an RFNOC module that receives sc16 from the radio, and dow=
n-scales it to sc8. Our current module does this
by doing the down-scaling for 2000 samples, and then divides the data in th=
e chdr header by two.

This doesn't work properly for use with srsRAN; what is the best way to mak=
e this work in the normal RX/TX chains?

Regards,


Bas Vermeulen

Consultant

Transportation Innovative Solutions Division

Molex CVS Bochum GmbH

Meesmannstr. 103, 44807 Bochum, Germany

Direct: +31 6 456 22 453

Bas.Vermeulen@molex.com



Molex CVS Bochum GmbH | Meesmannstr. 103 | 44807 Bochum | Germany | Amtsger=
icht Bochum | HRB 16588 | Umsatzsteueridentifikationsnummer: DE 310497723 |=
 Gesch=E4ftsf=FChrer: Bastian Jurczyk, Stephan Uerschels



[Text  Description automatically generated]

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

--_000_PH0PR15MB4704BEFEF1D0C6B57A543622E326APH0PR15MB4704namp_
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
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
We're working on an RFNOC module that receives sc16 from the radio, and dow=
n-scales it to sc8. Our current module does this<br>
by doing the down-scaling for 2000 samples, and then divides the data in th=
e chdr header by two.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
This doesn't work properly for use with srsRAN; what is the best way to mak=
e this work in the normal RX/TX chains?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Regards,</div>
<div class=3D"elementToProof">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<p style=3D"font-size:11pt;font-family:Calibri,sans-serif;margin:0;text-aut=
ospace:none">
<b><span style=3D"font-size: 18pt; color: rgb(0, 88, 124);" data-ogsc=3D"rg=
b(0, 88, 124)">Bas Vermeulen</span></b><span style=3D"font-size: 14pt; colo=
r: rgb(0, 88, 124);" data-ogsc=3D"rgb(0, 88, 124)"></span></p>
<p style=3D"font-size:11pt;font-family:Calibri,sans-serif;margin:0;text-aut=
ospace:none;line-height:12.05pt">
<span style=3D"font-size: 12pt; color: rgb(34, 30, 31);" data-ogsc=3D"rgb(3=
4, 30, 31)" lang=3D"en-US">Consultant</span></p>
<p style=3D"font-size:11pt;font-family:Calibri,sans-serif;margin:0">Transpo=
rtation Innovative Solutions Division<s><span style=3D"color: rgb(34, 30, 3=
1);" data-ogsc=3D"rgb(34, 30, 31)" lang=3D"en-US">
</span></s></p>
<p style=3D"font-size:11pt;font-family:Calibri,sans-serif;margin:0"><span s=
tyle=3D"color: rgb(34, 30, 31);" data-ogsc=3D"rgb(34, 30, 31)" lang=3D"en-U=
S">Molex CVS Bochum GmbH</span></p>
<p style=3D"font-size:11pt;font-family:Calibri,sans-serif;margin:0"><span s=
tyle=3D"color: rgb(34, 30, 31);" data-ogsc=3D"rgb(34, 30, 31)" lang=3D"en-U=
S">Meesmannstr. 103, 44807 Bochum, Germany</span><span style=3D"font-size:1=
2pt" lang=3D"en-US"></span></p>
<p style=3D"font-size:11pt;font-family:Calibri,sans-serif;margin:0;text-aut=
ospace:none;line-height:12.05pt">
<span style=3D"color: rgb(34, 30, 31);" data-ogsc=3D"rgb(34, 30, 31)" lang=
=3D"en-US">Direct: +31 6 456 22 453<br>
</span></p>
<p style=3D"font-size:11pt;font-family:Calibri,sans-serif;margin:0"><span><=
a target=3D"_blank" rel=3D"noopener noreferrer" data-auth=3D"NotApplicable"=
 data-safelink=3D"true" data-ogsc=3D"" data-linkindex=3D"0"><span style=3D"=
font-size:12pt">Bas.Vermeulen@molex.com</span></a></span><span style=3D"fon=
t-size:12pt"></span></p>
<p style=3D"font-size:11pt;font-family:Calibri,sans-serif;margin:0"><span s=
tyle=3D"font-size:12pt">&nbsp;</span></p>
<p style=3D"font-size:11pt;font-family:Calibri,sans-serif;margin:0"><span s=
tyle=3D"color: rgb(129, 135, 140);" data-ogsc=3D"rgb(129, 135, 140)"><span =
style=3D"color: rgb(129, 135, 140);" data-ogsc=3D"rgb(129, 135, 140)">Molex=
 CVS Bochum GmbH | Meesmannstr. 103 | 44807
 Bochum | Germany | Amtsgericht Bochum | HRB 16588 | Umsatzsteueridentifika=
tionsnummer: DE 310497723 | Gesch=E4ftsf=FChrer: Bastian Jurczyk, Stephan U=
erschels</span></span><span style=3D"font-size:12pt"></span></p>
<p style=3D"font-size:11pt;font-family:Calibri,sans-serif;margin:0"><span s=
tyle=3D"font-size: 13pt; font-family: Open Sans, sans-serif; color: rgb(34,=
 30, 31);" data-ogsc=3D"rgb(34, 30, 31)">&nbsp;</span></p>
<p style=3D"font-size:11pt;font-family:Calibri,sans-serif;margin:0"><span><=
img alt=3D"Text=0A=
=0A=
Description automatically generated" style=3D"width:196.79pt;height:69.59pt=
;cursor:pointer;min-height:auto;min-width:auto" data-outlook-trace=3D"F:1|T=
:1" src=3D"cid:fce62cd9-d806-45ab-9ef9-53574d20448f"></span></p>
</div>
</div>
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

--_000_PH0PR15MB4704BEFEF1D0C6B57A543622E326APH0PR15MB4704namp_--

--_004_PH0PR15MB4704BEFEF1D0C6B57A543622E326APH0PR15MB4704namp_
Content-Type: image/png; name="=?iso-8859-1?Q?Outlook-Text=0A=0ADesc.png?="
Content-Description: =?iso-8859-1?Q?Outlook-Text=0A=0ADesc.png?=
Content-Disposition: inline;
	filename="=?iso-8859-1?Q?Outlook-Text=0A=0ADesc.png?="; size=18412;
	creation-date="Mon, 26 Jun 2023 08:13:30 GMT";
	modification-date="Mon, 26 Jun 2023 08:13:30 GMT"
Content-ID: <fce62cd9-d806-45ab-9ef9-53574d20448f>
Content-Transfer-Encoding: base64

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
gg==

--_004_PH0PR15MB4704BEFEF1D0C6B57A543622E326APH0PR15MB4704namp_--

--===============4368325584374457405==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4368325584374457405==--
