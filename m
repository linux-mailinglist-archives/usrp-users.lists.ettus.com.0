Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E74076AABB1
	for <lists+usrp-users@lfdr.de>; Sat,  4 Mar 2023 18:53:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3477A3848F4
	for <lists+usrp-users@lfdr.de>; Sat,  4 Mar 2023 12:53:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677952384; bh=1RKv3DTGCY/3wsjZUPLXyth3PvCj9mIBepNLaiPH1xI=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Sl9UvwslsU41lys4fF4tvQdU/ipNWh/kTrKnpfxaWEyq47kMtmZSkQJqVCNBXqRma
	 0RpqunJ6n3EoGGroI1Cs5WyqACtZ53E3gYmh7CMYm4nZE8ULDiZEUWL6tI01EHbeMU
	 ipwaNFzjOkZhtIa6v8ujpr9yI5ZBmatqn8gFeozSLCb5d4Ub+LUzZh9+/ZWu4c804E
	 dDxLME1X3kMT5lrjgT9QFhWYGbnZn7IQ9rbCK226jN0w+N+aScRRtQW3lGZOB0xixE
	 3r9UWLeBFJRCL3pfxeuQmGoYPPurgpAoQ/Vbw4IJNjM+tNUzodG6xHxBJqLj6o18Ah
	 zqyrzBHezqQNw==
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com [148.163.156.75])
	by mm2.emwd.com (Postfix) with ESMTPS id 7E1BD3848F4
	for <usrp-users@lists.ettus.com>; Sat,  4 Mar 2023 12:52:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="UR1K/GXU";
	dkim=pass (1024-bit key; unprotected) header.d=nio365.onmicrosoft.com header.i=@nio365.onmicrosoft.com header.b="O/wApfrq";
	dkim-atps=neutral
Received: from pps.filterd (m0098780.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 324HclL9013017
	for <usrp-users@lists.ettus.com>; Sat, 4 Mar 2023 11:52:57 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=from : to : subject :
 date : message-id : content-type : mime-version; s=PPS11062020;
 bh=NREwQ2uqmOjTOI0Jpeph2GjJ9jHNXijLJ4ljkXwIuUc=;
 b=UR1K/GXUB9mB5QZV/hzfxxH3R92hS7Nc0z8DYaLsfduOtUk7JBqdfxk2SJSqhRTJjeet
 +C9XdVDn3FUDOQyuVGOalPe9TlrWdW1AsSpbtDBYxZROlWB4flj6yVcPjYfSviGVW+fY
 vOb+h6AkYfhUeVHqkWOUILY93p8LHIPH+19XGziYiKkFGZBKqA4a85pWRDkFedkhjYAT
 L0auk5u4uG5ykVHdy4H/BV+MpC7h11oPKzDO2dp9OXYMtoMu9MFEfyM5DIAm4J1xvYbU
 vc61esjirKYrTgLY1ZNN4DlV8SuCckwX9D7ErGfwp65dNd2UjjnirMSmV+k3KnaGC1kO Xw==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2173.outbound.protection.outlook.com [104.47.56.173])
	by mx0a-00010702.pphosted.com (PPS) with ESMTPS id 3p44cyra2r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Sat, 04 Mar 2023 11:52:57 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mlAm2IoUFc6V/Xvj2wKBW1rxKPBYBLfi8IXfnGB3cFWrPxpfakYaihzUrF+PAgE8uyuIu7DFG/n92xr7HW2KkItu041/ZOkgoczthf9oRNghx0UitxEW0/3P0YrVhrqrtI2GbVlqI+ihaDydqegpviG+s8NLplYWjYuvWHnbJQcSw0rNMT4zvj80lymqGbq0DOC1OE66bPR1dq90Us4e58BIVf8Q3P96vihrkvPjlDSJCmPizvAabTK1RAzUBvmoMNPjHiIFyu/c6AvwddA4vZHkK0xJcI6hrBhxMx7+0PXkIFc/x9whhUOdoZVzUUJN6jX4fzTnTkHIHuGsj0juyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NREwQ2uqmOjTOI0Jpeph2GjJ9jHNXijLJ4ljkXwIuUc=;
 b=i26VWpuZlqtn9qrQXxJlHaEItEhYQfp4Cm7/qiRfNq16+DMddEih953VmeYd1ipVchnVPw9XrGuYGtrvRavcuNQK0+zJWYoIL3U3MRL0FT1uR6Kre5hd4dCxR/xEn3Ga8QSf7VBecOdE8HPAmV4zTEM/1ygJCkDdBtu03gpvk5OVzJ/G3oyI60UXs21KO3f4P/7Ph8a0HwxBnqllP0DbLvzcaDLJrgkEqDefNPnrJ7+o34lA0i3kXXq/GbhsgRD4ijoZcv6kXTkMmuImueu2yrsc+A+6pdhiXnSIuovRfYSwssvHOQFHAEURa3LAI98JhdRR4OWkRZPAdkOWZaYG+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NREwQ2uqmOjTOI0Jpeph2GjJ9jHNXijLJ4ljkXwIuUc=;
 b=O/wApfrqfvixGlXohA6wxUPhejSTbJhvdODzx17YCggACgbqakO/JZI78l+Vq7eBcZADTN40n425J5JSyasrkAvtpT6f9uD6R9l1GS6GqfhRv2pT6DMy9eoDku6txTcr7lLiagW1H2xmufu9lhXK91cUibDcbb+4sTXPt6ub3kg=
Received: from SJ0PR04MB8328.namprd04.prod.outlook.com (2603:10b6:a03:3e0::13)
 by DM6PR04MB6512.namprd04.prod.outlook.com (2603:10b6:5:1b8::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.22; Sat, 4 Mar
 2023 17:52:55 +0000
Received: from SJ0PR04MB8328.namprd04.prod.outlook.com
 ([fe80::3611:ae0b:8239:9a02]) by SJ0PR04MB8328.namprd04.prod.outlook.com
 ([fe80::3611:ae0b:8239:9a02%4]) with mapi id 15.20.6156.023; Sat, 4 Mar 2023
 17:52:55 +0000
From: Abhay Samant <abhay.samant@ni.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Error updating fpga image on n320
Thread-Index: AQHZTsHAFwusvPsMVU2mraHkjplXaA==
Date: Sat, 4 Mar 2023 17:52:55 +0000
Message-ID: 
 <SJ0PR04MB832815197030088DB1468B6CEBB09@SJ0PR04MB8328.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Enabled=True;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SetDate=2023-03-04T17:52:55.176Z;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Name=Internal;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ContentBits=0;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Method=Standard;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR04MB8328:EE_|DM6PR04MB6512:EE_
x-ms-office365-filtering-correlation-id: 54624ef2-7146-43c5-c064-08db1cd94885
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 qmlpN24dHzMx4ckphBnV8HZGy8noAnHv4pudgMSL9wyMAh0jS+XWLCQ2w1DK33vRnsiusiuPPK8ftFxXK5O6TcH+VJO8utO4rdFnXAoDd6JbKGMBGHT70hr9caHgK4257agGZgFnO0G01Iid7HO1kIWKMArpTOhWW2oMbdZhC+eKQOxC9X1RoAnbuV5XrMQLGDidq0pe0Atx6Dea7+ziV8nYzvR4cbcyBcSfAOUHzWwuVNDPUljDklUVlBkiGnkly2KYO6I2xjyIxEQC9FGi0xP76IUb/P7RktklvzEwzfwMYQA0OK1obJDncVSNKwxq4iL444snZzsSZnOAOEwT7UHZ0cPUJpkdge32QWifRtGSdfjvfMb4rmfAJnsoCtQXIVksUdgYheRfigFyaDBKOrrcT6wxUdwwveBqwMMcaHBVUr32BSdporlSU5gK2gKJSX1ZtWdCHkXDjF4vNFn248GeKfwbz5cblhlwpEgW+FoNqtNXmoWu8pAVo1RaieB6od7+96BlL2d5qKTjtwWmQ8U1npwgZ95t6jju6QPtNC2aCxNCRmYdB38AzUd3L3HVxLuyoz4Hy82Sk6lo5CughtLHcZDLMXP4RTHoDYPisry1R/fuw3JVNaUgJwDFFHOCZNMuJqhetK6MpYeCAKAU8t5XjO54YGgW+qnuQGu/03ZS9aQ49g6fsB1PSjzXvtADzmAUzF4wrJmkVN1gP0xpUQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR04MB8328.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(346002)(136003)(396003)(39850400004)(366004)(376002)(451199018)(52536014)(5660300002)(8936002)(8676002)(91956017)(66556008)(6916009)(55016003)(66446008)(64756008)(66946007)(66476007)(76116006)(86362001)(83380400001)(478600001)(7696005)(71200400001)(316002)(33656002)(41300700001)(19627405001)(2906002)(26005)(38100700002)(9686003)(186003)(122000001)(44832011)(6506007)(4744005)(38070700005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?DifTeWYIOn5JRdxIrA4VICZ1NOq6bxDE5A7JID8MwwajXUynmtB0z0sv?=
 =?Windows-1252?Q?j48k3s5tystSLtR3sFixVgbBRo1NV8EmhFB5N+zMFwtx4c/aBkPo8JTG?=
 =?Windows-1252?Q?Yq6ktmOJqnxBDoVaZgUfchr/1RBOM1mDU3Ifm8x4UhWO9ry7Z4fXJGl7?=
 =?Windows-1252?Q?m94pI7/pKD8zPYAqv9w/UBjBXGtxZC/YIP6sCxWt2qvveway6nawrLAA?=
 =?Windows-1252?Q?XV2zTxCkwJwT0fnh/DNePc7wJrnek8tA+5+xSauAC4xlAGvclLPIg6Q9?=
 =?Windows-1252?Q?xW+nZW3LQTGJ/fcCRxSyfqxcaFqJ+vT9755kbr+zBJsn4A0zm0rte2sz?=
 =?Windows-1252?Q?OS7CbNhUmazDvyCEuwzV1wDAXg+fq9MQA4NNx8DBYKjRSbtJnp5NnQHp?=
 =?Windows-1252?Q?FK7MpJZTX76Qx01jUMLwIMxCTw7ItzUmumKyAST4OqLLIPOqYtV6SRCR?=
 =?Windows-1252?Q?iE7FnpdGfex6YB6Y9A3OoS3Mmdh7ll0ol0CuU2zT/KzZabFGrZrVaB98?=
 =?Windows-1252?Q?QzJFU4gYOKiI41eHxsxgH8qruji6GNr9Pk73qfOhXbQjCWTWLgomMmh3?=
 =?Windows-1252?Q?GQIrEFcr4Yk2POvYhwECM0YL735bgRxvQTakfaCImGCCy/ABMYCo5ljZ?=
 =?Windows-1252?Q?xqok0BmxxeYj7pyY9Q7h/Uq017DvIT1gW7GwV/aV5sXGSv1JPas3aZb+?=
 =?Windows-1252?Q?asW4khqT5KOQqsM6ov+9+vYwPtDmPwG1ap88uJz7WsWFvhtlSO6O1jAR?=
 =?Windows-1252?Q?BAbYged/DLc0UOFqOPsno62xOiNtF3zzzh/6ORQQEjyqWjujEviNrGwW?=
 =?Windows-1252?Q?TgVdhkML2FqTQknHnaq9GRzCQG00mgTJTm0Zg1dcvxKlKXkN//tN+7Xa?=
 =?Windows-1252?Q?o68UCF7crz0pl4ugGANtFXCp3M/DoAOFTcXDOieIdGwMvoEUo4eYCWsg?=
 =?Windows-1252?Q?i7KKWNvyBBEZG/AC6doTcryHX3sRErJdhcS/Q9Edv4W4ueS3HYU2Mlnh?=
 =?Windows-1252?Q?aRJiSnw/29mGRiC/DAMc2r3PGvUKEiku9vIFdKsCgeNC0huIf46+pY0S?=
 =?Windows-1252?Q?uZ61PjAT19WtENpaViBTlvwmRyrBMjPUoMJxxbgt+8X8DaqkfmxDV8sM?=
 =?Windows-1252?Q?W1BE+X6zn1aEaPjvCxz7j4s381qtoxM6SN0SvKWILSFjv3czIeshD2Wq?=
 =?Windows-1252?Q?wUrZ5tduwaOzLwCEojGuTIqtdU9ZKDQToezg8rAhdBkFtmf5Nhar8f3x?=
 =?Windows-1252?Q?bQehD2D0rslLa5NCzTphKu58uU9YH9Tx0M1gdMihFKdkPPofeG9hN/Vl?=
 =?Windows-1252?Q?KJoJb4ttaMIEJyR1qLLGxW09MBwOeJDCHyinfpPv7B6jb6OT3/Dcto2t?=
 =?Windows-1252?Q?QjvsCZRIvwHVZVRuytI25hpBlzRuJ6FeI86x8uUkIWhjg8+Vy0aE1vY2?=
 =?Windows-1252?Q?TWFtgGILKgueeKU30sIpj31YMZK+7nnvzNjb1cYki4NKTcgcUj1o8GZu?=
 =?Windows-1252?Q?u0P4KZJU+EdvvcCB2+NmPm6UgTgBFwey4Me8slhH2zCqP7QkLJMhMvqj?=
 =?Windows-1252?Q?SNqp82cK01Fs8tC8fRNH6W9+GJV3J3RsSIsfs7pDa7VAlgv18434ipED?=
 =?Windows-1252?Q?KO7k8Ld4CX3+8j/qBgtHAjgzzsz/XqhKWwXfzluvWkQGN64PBjss18Ja?=
 =?Windows-1252?Q?ppukN6GA8V5M0BsyqzYzDRXhHmOawJ5J?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR04MB8328.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54624ef2-7146-43c5-c064-08db1cd94885
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2023 17:52:55.2950
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HwkLVRgnqJSsV80JAk9LNc1Z2pbfQE0wSnIkVrkzfIq3G5O5yG9XQxzEmN5ZKkJQqL+88C7VIGNDYFCxmoz2Qg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6512
X-Proofpoint-ORIG-GUID: VEACaXfSQuvoTV2DvgL0PpAPY6rR0EPv
X-Proofpoint-GUID: VEACaXfSQuvoTV2DvgL0PpAPY6rR0EPv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-04_09,2023-03-03_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=30
 priorityscore=1501 impostorscore=0 bulkscore=0 malwarescore=0 spamscore=0
 mlxscore=0 clxscore=1011 mlxlogscore=714 suspectscore=0 lowpriorityscore=0
 phishscore=0 adultscore=0 classifier=spam adjust=30 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303040153
Message-ID-Hash: S2YYTNZ5DBAFG3PCTC2XOV63RS7T5W26
X-Message-ID-Hash: S2YYTNZ5DBAFG3PCTC2XOV63RS7T5W26
X-MailFrom: prvs=24275ad269=abhay.samant@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Error updating fpga image on n320
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V7SCGNIMJQ2EJPTYPH32OTMQDCUJQ6TH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3678263915251526174=="

--===============3678263915251526174==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR04MB832815197030088DB1468B6CEBB09SJ0PR04MB8328namp_"

--_000_SJ0PR04MB832815197030088DB1468B6CEBB09SJ0PR04MB8328namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,
I am trying to update fpga image on my n320 on an Ubuntu 20.04 machine and =
I get the following error

$ uhd_image_loader --args "type=3Dn3xx,addr=3D192.168.10.1,fpga=3DHG"
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.=
2.0.1-0-g321295fb
No applicable UHD devices found
[ERROR] [MPMD IMAGE LOADER] mpmd_image_loader only supports a single device=
.

I have downloaded all the images using uhd_image_downloader command.

Has anyone else run into the loader only supports a single device error.



Abhay Samant, PhD

Chief Software Engineer =96 Aerospace/Defense/Government Business

NI
abhay.samant@ni.com



INTERNAL - NI CONFIDENTIAL

--_000_SJ0PR04MB832815197030088DB1468B6CEBB09SJ0PR04MB8328namp_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
I am trying to update fpga image on my n320 on an Ubuntu 20.04 machine and =
I get the following error<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
$ uhd_image_loader --args &quot;type=3Dn3xx,addr=3D192.168.10.1,fpga=3DHG&q=
uot;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<div class=3D"ContentPasted0">[INFO] [UHD] linux; GNU C++ version 9.4.0; Bo=
ost_107100; DPDK_19.11; UHD_4.2.0.1-0-g321295fb</div>
<div class=3D"ContentPasted0">No applicable UHD devices found</div>
<div class=3D"ContentPasted0">[ERROR] [MPMD IMAGE LOADER] mpmd_image_loader=
 only supports a single device.</div>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
I have downloaded all the images using uhd_image_downloader command.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Has anyone else run into the loader only supports a single device error.<br=
>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div class=3D"elementToProof">
<div id=3D"Signature">
<div>
<div></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<p style=3D"margin:0in 0in 0.0001pt; font-size:11pt; font-family:Calibri,sa=
ns-serif; color:rgb(32,31,30); text-align:start; background-color:rgb(255,2=
55,255)">
Abhay Samant, PhD</p>
<p style=3D"margin:0in 0in 0.0001pt; font-size:11pt; font-family:Calibri,sa=
ns-serif; color:rgb(32,31,30); text-align:start; background-color:rgb(255,2=
55,255)">
Chief Software Engineer =96 Aerospace/Defense/Government Business</p>
<p style=3D"margin:0in 0in 0.0001pt; font-size:11pt; font-family:Calibri,sa=
ns-serif; color:rgb(32,31,30); text-align:start; background-color:rgb(255,2=
55,255)">
NI<br>
<span style=3D"margin:0px; color:blue; text-decoration:underline">abhay.sam=
ant@ni.com</span></p>
<br>
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

--_000_SJ0PR04MB832815197030088DB1468B6CEBB09SJ0PR04MB8328namp_--

--===============3678263915251526174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3678263915251526174==--
