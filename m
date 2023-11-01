Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 017637DE6F3
	for <lists+usrp-users@lfdr.de>; Wed,  1 Nov 2023 21:49:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B059D3855FF
	for <lists+usrp-users@lfdr.de>; Wed,  1 Nov 2023 16:49:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1698871767; bh=7lEEnIrkKyZlX/X9qDyfURnIUAWRe4YzbPfmfnbF6iU=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=CRkp8zA2EoRIQvifa3C0zWOIm6cMI4MxNDTW9iQmT7e4M3Eo9wptdNhe2kifcTxNr
	 QyEtS7o8tt+2HYuGz19CmUJ7QCotBjUgk820lWslFc69ESWke2Czdt+Hl5hhwwV+qO
	 XAZClWofgnmNIyq2HBo5NlmH4qhx+Xmtd1oYCDJEpq1OYd216r1i8wE8hhIi5ikUKH
	 blqFUTQbKmjYcW602mgTMP2dTOKO/6zsu/hUmnsXk2WvzWRCVbpc0ERgOwwos/5Igz
	 pWWi9LC7WuNfgANOAqaqoJnik0lUOpo4DBxRerJgGd+FbSPGAe77mOdDCQLAvB9fOS
	 rTKFU7ljmhKdw==
Received: from mx0e-0020b901.pphosted.com (mx0e-0020b901.pphosted.com [67.231.147.103])
	by mm2.emwd.com (Postfix) with ESMTPS id 6DB3A3851B9
	for <usrp-users@lists.ettus.com>; Wed,  1 Nov 2023 16:48:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=jpl.nasa.gov header.i=@jpl.nasa.gov header.b="O7suMgwu";
	dkim=pass (1024-bit key; unprotected) header.d=JPL365PROD.onmicrosoft.com header.i=@JPL365PROD.onmicrosoft.com header.b="BQqYVeyb";
	dkim-atps=neutral
Received: from pps.filterd (m0196083.ppops.net [127.0.0.1])
	by mx0e-0020b901.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A1KFYHP015508
	for <usrp-users@lists.ettus.com>; Wed, 1 Nov 2023 20:48:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jpl.nasa.gov; h=from : to : subject
 : date : message-id : content-type : mime-version; s=InSight1906;
 bh=uUOxejrghBtdXIyjuk3ops5YZmeOBvRwy72PSpgke8M=;
 b=O7suMgwuX+iwTL3iQN4jI7gdYe31II2IsMMZlp1mHVfztgMWq7Oq8EYYGlG5s0aMQ+of
 s9akTdFJ+4ugiMV2keaIDRGoGJMHqeWhMsYhMvMMwTxZyWg9JUuYS0io3ZbT2oxwKOjc
 +AksXepZpBhfR9gwMQhc3mW6fdfeDYUAb3YnbKtLD8hkqqvDhQoOz5Wn+1ThDBpBFcOz
 ZEJz7tmW12RIJYLytiOjKhKJHSnphzC359LqH/QPqfydxKs3aprbVZygvN/XAw96CTm0
 gBy11swzvzNrO1K2ciNHq0jJdWnXbjkp9gvEWQMjLz3HEBw181IEyYUg02KtT2PET7Na Zg==
Received: from mail.jpl.nasa.gov (smtp.jpl.nasa.gov [128.149.137.103])
	by mx0e-0020b901.pphosted.com (PPS) with ESMTPS id 3u1c4rgvcn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Wed, 01 Nov 2023 20:48:50 +0000
Received: from ice-ex-mdc02.RES.AD.JPL (ice-ex-mdc02.jpl.nasa.gov [128.149.155.142])
	by smtp.jpl.nasa.gov (Sentrion-MTA-4.5.6/Sentrion-MTA-4.5.6) with ESMTPS id 3A1Kmn7q228316
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits) verified FAIL)
	for <usrp-users@lists.ettus.com>; Wed, 1 Nov 2023 20:48:50 GMT
Received: from ice-ex-sn01.RES.AD.JPL (137.79.100.48) by
 ice-ex-mdc02.RES.AD.JPL (128.149.155.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.6; Wed, 1 Nov 2023 13:48:49 -0700
Received: from ice-ex-sn01.RES.AD.JPL (137.79.100.48) by
 ice-ex-sn01.RES.AD.JPL (137.79.100.48) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 1 Nov 2023 13:48:49 -0700
Received: from GCC02-BL0-obe.outbound.protection.outlook.com (137.78.153.23)
 by ice-ex-sn01.RES.AD.JPL (137.79.100.48) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32 via Frontend Transport; Wed, 1 Nov 2023 13:48:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZgMm1WqCBVNWAyhg05h7iBBAzAjvgTkLFqclP2TQwzGIZLz8t730EwuksPuCWhc5WRnTa7nbz+fqiJqpWdTZpl3t/vKB133mfd38/cvw0JpkZktdaCfNIbG5TBZwgjS9M215nVsCYg4yNZfN5EKAxon+e/g9Q5258/QwRTUoUN8unVlwhjMVBzQSGHTmaeBuuVwovWNx/VHwt8pQ9wuc9D3BNTC7r0azJwYpgPZpUNCp2mcTRyD8ufkNoN+QqgJpmRd2C+YKITyPg5iNyz7yYOKlWFKLl4wFRoOnieoCx2D/0THX5u6rJL7VfT2o+w3MlovSThsduogV6adhVwvqaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uUOxejrghBtdXIyjuk3ops5YZmeOBvRwy72PSpgke8M=;
 b=gkJfIA5l5kF5425UOP55Fras84bLfCDrHgTF24qj9R+XPcSiBL/f0gQ7rWiyjXV/C41efbomSfumMa0HmhXjO6j2ntZpFf58J8Z8S6HYbJLsL+kI24EknpeCU19vW/Aw5rtKLSZhmm3Q1GZjAopsOJa4QzYewJqNbHFhNCa/DU/9OKYpYK1Bc0GlDcWnNrWW4jZ8JVqn2Q2WmQ5Wn1U/iZNGw8/EYoYKQQ7IWAJdKlur96l253Pz/Pd6BgfP3cB9XZWzDZNQimChgu4QZ80MtO0I3ck/LUMMwLNkRpdXivsH6+Nj3aV+4COuIT+dH1dCe4dyT2fLnemoyaM3WmtHbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=jpl.nasa.gov; dmarc=pass action=none header.from=jpl.nasa.gov;
 dkim=pass header.d=jpl.nasa.gov; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=JPL365PROD.onmicrosoft.com; s=selector1-JPL365PROD-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uUOxejrghBtdXIyjuk3ops5YZmeOBvRwy72PSpgke8M=;
 b=BQqYVeybA7FJemdAQSysBQl15MjZtlkGTebgy9Ixxzw3Hc88aej483KArt6/Nzcc1f41uYK6vslQ/Lf2bitXsfmI6AafXIHkEBOBrUXGwi3RfsyElj2DOPgkwozGDZ8zualcYfZKILWtGF4wadKFG2QpRLRLxy9SNJ6YEHdXhw4=
Received: from SA1PR09MB9275.namprd09.prod.outlook.com (2603:10b6:806:282::21)
 by SJ0PR09MB6478.namprd09.prod.outlook.com (2603:10b6:a03:262::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.19; Wed, 1 Nov
 2023 20:48:44 +0000
Received: from SA1PR09MB9275.namprd09.prod.outlook.com
 ([fe80::eae2:ab27:615c:2fa6]) by SA1PR09MB9275.namprd09.prod.outlook.com
 ([fe80::eae2:ab27:615c:2fa6%6]) with mapi id 15.20.6954.019; Wed, 1 Nov 2023
 20:48:44 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC/MPM: No valid clock index given (63)
Thread-Index: AQHaDQMsvdW4LwIoPE6Mw90rjbyaFw==
Date: Wed, 1 Nov 2023 20:48:15 +0000
Message-ID: <SA1PR09MB92757C9D9BC4C0FE1C24AFB792A7A@SA1PR09MB9275.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR09MB9275:EE_|SJ0PR09MB6478:EE_
x-ms-office365-filtering-correlation-id: b026c727-9e44-4761-97aa-08dbdb1bf053
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k+EupyJv5LFU+9DJXz+IpReSdyou7j/2VAYQwk6iBfpMl+cMD3/4yyH/Zxv4aYfiwF5xs3S0RXPH0UZlF17SqGCAc007xXhCx9e7PbgvyE+ySFWmKIkcJtu6cijZdoiENer1rJ030INeqZP3S5mKN1Os2dZcOdERpA+FcnJkiCkVM5SWh9GIOY9ktpQqVHiD51z/TQ2UD1eSML72T81FHP9uPqEMzX7X7Wn8S6uSrPZpBegmh16Zs0knvJdu+0FoRfe9xDzDhyOAhUvn2ilXUKyoU140m4Pr5gchxibpa2tW+E/edyomBUA/kwkwhmomBE/iitrtsKmepfPeCy4+q+q5225yx9dWPDS/BqC4wvUe+Fu5YAlgdgr1/yQJAhD0J3YB6HOAVwZPUNA1S3N/mKN0j2ghvuQ4GQTALldIyOTAZ4tVTjGzX1ZF9tqUud7Nf1FLOXyP4bo21rdu00q6/F4cE0iUUMmR1wKw3strc4bCI2TylYPr8l6Z+3B+j6UUpz1jZsToUr+WiQCcrjMeDEZ+WdNKRU1s7NozstlG64Pzeyxamx/zcVH+x2duUtEwMzTUH2SsoteHQYGn3cXiMsHDE6/gtj3VsBuyaTBFbfU=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR09MB9275.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(230922051799003)(1800799009)(451199024)(186009)(122000001)(38100700002)(6506007)(7696005)(498600001)(9686003)(66556008)(76116006)(66946007)(66446008)(52536014)(966005)(5660300002)(8936002)(6666004)(8676002)(71200400001)(33656002)(55016003)(86362001)(166002)(6916009)(26005)(64756008)(83380400001)(2906002)(66476007)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?8KHQAXTTCzkPQcfRBaOBpkEG17HtUrW9Obg6LLus7sN1a3ZAOShj9j+a?=
 =?Windows-1252?Q?pr9kGFhMDUMQLXr99PdVxkpKNg3dxIyTBP8GnujHcq37AEK1TF9R+QFE?=
 =?Windows-1252?Q?JrFOPQ/7FUKt3Bmf+l1jHL7GWYYnVHVYfHM8NFa8mbV94MwmH6UD6ROB?=
 =?Windows-1252?Q?oY/jb9BLOFLarcYARb3BeC8JWyjF+K/JPLTWTAdCyoje1cJbhxcLFuAI?=
 =?Windows-1252?Q?EJ6DjlU725HStGR/60fEIQSslhfpUrmzN3zWSw0jkjSqnGngX9SeJilQ?=
 =?Windows-1252?Q?yy6cQHRvy3dGJIbfKXv5GqAtKYf7hXidJDDAb8toP7pMMaf/W2PHoo/L?=
 =?Windows-1252?Q?DM+VXLvtKdG3Dlin43llOzQU6o+r4INkgScDjR9T/IE0WoTU/u/JyiBX?=
 =?Windows-1252?Q?Q2dGFzL18B1L++NJmEx0fELJKtMnKVZpjsFmZxcDZagfkq+gPUVbtYE3?=
 =?Windows-1252?Q?HJdFprpHdXeZ8PxkaGT6ld+oNXjEYZ1rUAYDaVfe6+r2mYS8XMrHi4DV?=
 =?Windows-1252?Q?X8j9+h66TrfxLtAJvlstx1vs/9vEQi1yZVLaVxOsI7Q2zcMUIUIVs1zG?=
 =?Windows-1252?Q?gDnr5+RDxMjc6Rz94AymjjMUWiWCu4QPI34nF5vgGHBIbQ25AVrF5JSM?=
 =?Windows-1252?Q?SYuo1poO2ZTyLouhzkC4UHjNU+jFjDiuvhO3YA/IK4p5OPIq4N/1BcWH?=
 =?Windows-1252?Q?7S2DuQOScJYjvdKQ/bvqOE+RDmRgeQOb3FPnv/Ca2eql7vySBs+iYOOC?=
 =?Windows-1252?Q?4auzVX+jasuBl1NqnB4nL5JOaQuMgENBYeGQ/9jdD5MMLUvzJ1JncK4Z?=
 =?Windows-1252?Q?7dJ7rNobfzhfwqch4cYJM9HWFI6WOM/6x7NiSvlXj2SCrMRHVT9GNTQY?=
 =?Windows-1252?Q?EHg4dJjgrMY/I8JJZhsbJp5JllfOf5GDLm40nfuxrjlykJcU7Ivx89sd?=
 =?Windows-1252?Q?lqpXwyHAb+cEg/U7W/rwu8h1YzgVdOumejMpmmI+dxWja6c2uf3PNnmK?=
 =?Windows-1252?Q?wK3t8Wrj2dZRSmp7lwJQ+EId0nKNJKJhLTMSA8QaeWxNLanzs+borEU/?=
 =?Windows-1252?Q?6mgLm3aOy8YUORCxcukxAKro7SRnkWvgT8jzHqJggRdLDVx4yJnhe/Xn?=
 =?Windows-1252?Q?JLVOEaHvJQCxwUgGSHv35qwFril6w3TIRthkyYtahdi81uMf6asDpiVI?=
 =?Windows-1252?Q?wjJOqjJomT8JbG+KK0slo1lfCvLgX5LY8Mbvj/n40g+sropfTpbvt2+T?=
 =?Windows-1252?Q?sdWf6Z/UWdKLkwQmr6GTqVEBCEjQJu4XaNTiNdU3TV7wUTy2HoJF5L1W?=
 =?Windows-1252?Q?r9Ky5MKLUEJJrFV/G08+m/n8AXO5JKODpSFMcmOeAmaZuZGzYpgME7lj?=
 =?Windows-1252?Q?W/wuHSDd877VBI43GozYmstGyCwd4QNgEzySgF+GIJiaQHNg2BKxnaKS?=
 =?Windows-1252?Q?/+tjY421GnHTjvje41aBwGkpxa2+zeK1R/CzyDKHDzUOu0PTGxqPoBRa?=
 =?Windows-1252?Q?8lIPrhV3cypkPBHcxXWgJqeq0fb3LCOLOicRmCvvbGHzycVpPm9bsfAf?=
 =?Windows-1252?Q?krfOEDmLXynB93NaXx7sIyPQ/b4CTnS/ah61U1VM4nSG0glqmjSYCOPf?=
 =?Windows-1252?Q?h251wji6n2FwMJs536HuI6J3dOiR1YVxjluNwr4ZEQSghGiPaSoINUOK?=
 =?Windows-1252?Q?qVLOtJknNAp/mYjzr3cFpIedC4ZloKcvbNBvEvNsHMRpMDoqC4hiDg?=
 =?Windows-1252?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR09MB9275.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b026c727-9e44-4761-97aa-08dbdb1bf053
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2023 20:48:44.5062
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 545921e0-10ef-4398-8713-9832ac563dad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR09MB6478
X-OriginatorOrg: jpl.nasa.gov
X-Source-IP: ice-ex-mdc02.jpl.nasa.gov [128.149.155.142]
X-Source-Sender: zachary.s.rohde@jpl.nasa.gov
X-AUTH: Authorized
X-Proofpoint-GUID: p2qsraMvz3Efllcquv6lwF2Tia1L6Hho
X-Proofpoint-ORIG-GUID: p2qsraMvz3Efllcquv6lwF2Tia1L6Hho
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-01_19,2023-11-01_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 spamscore=0
 phishscore=0 impostorscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0
 adultscore=0 mlxlogscore=999 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2310240000
 definitions=main-2311010154
Message-ID-Hash: PR3ZINHCOWKTV5W22SRE7TI32J22FYTV
X-Message-ID-Hash: PR3ZINHCOWKTV5W22SRE7TI32J22FYTV
X-MailFrom: zachary.s.rohde@jpl.nasa.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC/MPM: No valid clock index given (63)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PR3ZINHCOWKTV5W22SRE7TI32J22FYTV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Rohde, Zach (US 333G) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Rohde, Zach (US 333G)" <zachary.s.rohde@jpl.nasa.gov>
Content-Type: multipart/mixed; boundary="===============4784962388941037044=="

--===============4784962388941037044==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA1PR09MB92757C9D9BC4C0FE1C24AFB792A7ASA1PR09MB9275namp_"

--_000_SA1PR09MB92757C9D9BC4C0FE1C24AFB792A7ASA1PR09MB9275namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I am trying the new UHD 4.6 X440 X4_200 image and I am running into this er=
ror after updating the host UHD and flashing the USRP FPGA and FW:

[ERROR] [MPMD::MB_IFACE] Automatic clock detection requested, but no valid =
clock index given (63). Make sure FPGA bitfile is up to date!
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RuntimeEr=
ror: NotImplementedError: Automatic clock detection requested, but no valid=
 clock index given (63). Make sure FPGA bitfile is up to date!

This only happens on the X4_200 image in UHD 4.6, it does not happen with t=
he X4_400 image.

My best guess after scanning through the changes is this is the offending c=
ommit:
https://github.com/EttusResearch/uhd/commit/f215af2ccde6420b685b4ca493c8bd7=
1d28781cb
Looks like x440_200_rfnoc_image_core.yml<https://github.com/EttusResearch/u=
hd/blob/UHD-4.6/fpga/usrp3/top/x400/x440_200_rfnoc_image_core.yml> was not =
updated with the new =93ctrl_clock: _device_.rfnoc_ctrl=94 and =93timebase_=
clock: _device_.radio=94 parameters for some reason. This makes the generat=
ed Verilog not possess the =93.CTRL_CLK_IDX        (1)=94 and =93.TB_CLK_ID=
X          (4)=94 variables. I believe that is what then causes mpmd_mb_ifa=
ce.cpp<https://github.com/EttusResearch/uhd/blob/c2dd6c1d9989289fc78820d6a7=
0994c3a3a73dc1/host/lib/usrp/mpmd/mpmd_mb_iface.cpp#L178> to error during r=
untime.

Thanks,
Zach

--_000_SA1PR09MB92757C9D9BC4C0FE1C24AFB792A7ASA1PR09MB9275namp_
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
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.truncate
	{mso-style-name:truncate;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I am trying the new UHD 4.6 X440 X4_200 image and I =
am running into this error after updating the host UHD and flashing the USR=
P FPGA and FW:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[ERROR] [MPMD::MB_IFACE] Automatic clock detection r=
equested, but no valid clock index given (63). Make sure FPGA bitfile is up=
 to date!</p>
<p class=3D"MsoNormal">[ERROR] [RFNOC::GRAPH] Caught exception while initia=
lizing graph: RuntimeError: NotImplementedError: Automatic clock detection =
requested, but no valid clock index given (63). Make sure FPGA bitfile is u=
p to date!</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This only happens on the X4_200 image in UHD 4.6, it=
 does not happen with the X4_400 image.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My best guess after scanning through the changes is =
this is the offending commit:</p>
<p class=3D"MsoNormal"><a href=3D"https://github.com/EttusResearch/uhd/comm=
it/f215af2ccde6420b685b4ca493c8bd71d28781cb">https://github.com/EttusResear=
ch/uhd/commit/f215af2ccde6420b685b4ca493c8bd71d28781cb</a></p>
<p class=3D"MsoNormal">Looks like <a href=3D"https://github.com/EttusResear=
ch/uhd/blob/UHD-4.6/fpga/usrp3/top/x400/x440_200_rfnoc_image_core.yml">
x440_200_rfnoc_image_core.yml</a> was not updated with the new =93ctrl_cloc=
k: _device_.rfnoc_ctrl=94 and =93timebase_clock: _device_.radio=94 paramete=
rs for some reason. This makes the generated Verilog not possess the =93.CT=
RL_CLK_IDX&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (1)=94 and =93.TB_CLK_=
IDX&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 (4)=94 variables. I believe that is what then causes <span class=3D"trunca=
te"><a href=3D"https://github.com/EttusResearch/uhd/blob/c2dd6c1d9989289fc7=
8820d6a70994c3a3a73dc1/host/lib/usrp/mpmd/mpmd_mb_iface.cpp#L178" title=3D"=
host/lib/usrp/mpmd/mpmd_mb_iface.cpp">mpmd_mb_iface.cpp</a>
 to error during runtime.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span class=3D"truncate"><o:p>&nbsp;</o:p></span></p=
>
<p class=3D"MsoNormal"><span class=3D"truncate">Thanks,<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span class=3D"truncate">Zach</span></p>
</div>
</body>
</html>

--_000_SA1PR09MB92757C9D9BC4C0FE1C24AFB792A7ASA1PR09MB9275namp_--

--===============4784962388941037044==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4784962388941037044==--
