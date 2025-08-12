Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A486B239EF
	for <lists+usrp-users@lfdr.de>; Tue, 12 Aug 2025 22:28:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B36F638660E
	for <lists+usrp-users@lfdr.de>; Tue, 12 Aug 2025 16:28:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755030496; bh=PG8GHAzBW6HZUDFc3QYCC0K4g2hWztcXml29Inh+ERs=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=mYPgM5UlafP6sZHMDN2XRYuupRDKnmyx/a9VDzj8vkoHCIbrvMF7OGgMtXNODWEeG
	 Yj9DvcBBJenIePbzlnxTCK+xpnep3BSD83YC6DEOFQHpSiPnn0+kVdYOZlDs/D1ssp
	 wO+KN0JRaV7MATdzVkT3nR30gJjJqk82EdNwvr1Nq7SkiYYCPzE0y/5YBnQeKNh196
	 b2bI20obqIJcpp2BFOqOwYL/gpcxatx5rHr9wIrBrKP5Y6JC9hck+eIfGkoqBQwBY3
	 /Ic2vzOfIvgSuNgjiVCCGOCbeZR4/60M+fRuYV5dprjm6GbPqnObpCg7xR0rHk3bF+
	 dNr8VkTzLuJ+A==
Received: from CAN01-YT3-obe.outbound.protection.outlook.com (mail-yt3can01on2052.outbound.protection.outlook.com [40.107.115.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 6D9383865F8
	for <usrp-users@lists.ettus.com>; Tue, 12 Aug 2025 16:27:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=asc-csa.gc.ca header.i=@asc-csa.gc.ca header.b="KczHfcoQ";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UGxkFh68OEToSq5G/OUDfvpXJbVgBdrR2xxsfNzEF8WFOYideqIFpPS9xFxwXZQRqOsTOFpwhKf81PTwD8IJXzG85NkXYexxVhSMiLVN1bXfc8ma3DrDooFfWXUj7AGnbw9bVkVf4WsXpz4t0Gv6Cxav6rKykTT4CSw2MAELmvTyAVH/uNYMZnj2UEDpYlhS4ExnrjahDRJnIhUqwAbr7MW8VgeAD0Cbni5OVKS2EJSz9p3nvFoyWPy/poElOwE46JrOqME6/lc2ebwSAkMZ6SHJwrv7O6Zy9AszbTfPxnTw6JLmBivyuHzl/7BWeljf5mffiFCCgNxrelUuSe+BAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/G5uMc+W0SWGBPPDPffAU8hjO4XYtjqJeEjyY87BCCg=;
 b=D29Md6kN+ghHqh7GWU33zDTnkv0TWNN4mWQFSybkto4u79ao0qfbiEc3uUoKcxdE1Rw8BHvnDMqbXMsaej7Z34u0c/2iFZUkKg/nL7W7albVEwfREz8JeHKCuK7GdJzkdz56V0UuUh2bnpQUUFK9NcOnJYamLqEwZGkfwoEpkfZhpfFTnYw7iDt6FoYtiE/bdJdCbWGVlmu/XuWXXC7JBeKpe8ock4ywCJUg/yYO6hv4fgM1xNA4JUEIE84Vd+DwX+0IvJKPs+gGGdiU/hjDOvs2WsNp6ehZfa1P9CkNDCQcKv+PY5b3/xU7qDfz3qrSFwDl4EjsRdLosA2j2Sx0fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=asc-csa.gc.ca; dmarc=pass action=none
 header.from=asc-csa.gc.ca; dkim=pass header.d=asc-csa.gc.ca; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asc-csa.gc.ca;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/G5uMc+W0SWGBPPDPffAU8hjO4XYtjqJeEjyY87BCCg=;
 b=KczHfcoQ7ds6+uDp089BejGbfAAxcfF3uhnAUFu67/HJTrS12G8OGwN4FVg9W9G0z6vWydxNQcaGB/+It46iJ+9vSO7LbbuyD6UUzu4ymjIKbWlnei//CwPxgJ5oh7+4vs5frnwxGpEblIEPiTPwECsX999VEispZxBblDm2PEIteLeIl4FpPoGkg3XnFm3mapNL6IzqRZjfjcdo8YxIyR1WQi8Pe0myjYO59JwWxJihRJqPByBOsYwrjXYx8KEPOV/+J7lHzLPuzfA/CvU75k4PFvYzZZ2aVpE/s6X3SRNv48Zpy6VBb7hOfLpelQmpc4Cbq+UBb+H2OseA2KbN2Q==
Received: from YQBPR0101MB9856.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:7c::22) by YQBPR01MB10593.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:7f::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.14; Tue, 12 Aug
 2025 20:27:22 +0000
Received: from YQBPR0101MB9856.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::e6b5:f963:ca73:5b69]) by YQBPR0101MB9856.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::e6b5:f963:ca73:5b69%3]) with mapi id 15.20.9031.012; Tue, 12 Aug 2025
 20:27:22 +0000
From: "Kazakoff, Peter (ASC/CSA)" <peter.kazakoff@asc-csa.gc.ca>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP B210 10 MHz Reference Input - Minimum Power
Thread-Index: AdwLxrgp1nVqAkOWSNCX5in0AbHmPw==
Date: Tue, 12 Aug 2025 20:27:22 +0000
Message-ID: 
 <YQBPR0101MB98563BD5A9EFA5F51624A02D9C2BA@YQBPR0101MB9856.CANPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_d878c0fb-d9d0-4b0a-b557-795ff6d8f755_Enabled=True;MSIP_Label_d878c0fb-d9d0-4b0a-b557-795ff6d8f755_SiteId=ea59922f-ea3d-4e45-ba97-caf826fb9335;MSIP_Label_d878c0fb-d9d0-4b0a-b557-795ff6d8f755_SetDate=2025-08-12T20:27:19.0000000Z;MSIP_Label_d878c0fb-d9d0-4b0a-b557-795ff6d8f755_Name=NON-CLASSIFI;MSIP_Label_d878c0fb-d9d0-4b0a-b557-795ff6d8f755_ContentBits=3;MSIP_Label_d878c0fb-d9d0-4b0a-b557-795ff6d8f755_Method=Privileged
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=asc-csa.gc.ca;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: YQBPR0101MB9856:EE_|YQBPR01MB10593:EE_
x-ms-office365-filtering-correlation-id: da156ef8-9797-4b1e-9ffe-08ddd9dea480
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?+wTkdnh0kmrfqpk/FSSvtIJN8tzReVqTVruXWfQ6WrwvCHRT+9dRacJ0Rj?=
 =?iso-8859-1?Q?QAGk+GKTSjBl0tQHz81lqGvGMfcPnIPFgaWVDfpQgvFtIT4gebo/fpRJO8?=
 =?iso-8859-1?Q?ZBl0loUz2nLvZljbTPQlgKhZ731MnNIfmfcTFp9uXbvvVm2vsJGXPE3rSV?=
 =?iso-8859-1?Q?UhiUqE7EIxzj6X1MUEFnC/tqWvA8rKcG/Or+KjwgN0bsUk3p0SV9aFW4p5?=
 =?iso-8859-1?Q?axnHp2AIrpEosoJPA/ph9BvA3lxL6eV8ujT0zOYW8vS/mXF+79ZKS5Ssx+?=
 =?iso-8859-1?Q?IcqnfnWtjxOKy8W032w2ufW8kVjvEAcyFXgQDdIq1GgNOsqbPmKX0eUtR6?=
 =?iso-8859-1?Q?9zbIfdDGTd8W7HfnuUwtvrCf+sgyna9BuEqmPal+6GJGLwdPYNa+JDzY6U?=
 =?iso-8859-1?Q?vNmUIMi9/CuTnEZcU0X513MGSmrOMQk+O/zGghqbBSQ3FwHlBbRUYUFoo5?=
 =?iso-8859-1?Q?rnunQPH09wzu7peXKXXlF6uEwtPlp8+LsN6oDc1dYGuX955g08VuQz45R9?=
 =?iso-8859-1?Q?j0eSGckKE14Pm5IdayREeSbrB/GEIYSvx0tdr+0cXNmUxtFrigDS+udpCj?=
 =?iso-8859-1?Q?hjeZuQ1FzcWWFraKYKtSt2wapogM3uzz/nR+/e3q7/zl3btWk/DdVq7NXn?=
 =?iso-8859-1?Q?6y2PiTc5MVTS0COmUl2VCINcWyhofGrK07nKDhYO9DmxY8YV7jgtINwglp?=
 =?iso-8859-1?Q?f7jzL+BUWe8ASkGhdr2eWe0F/SaN+yI8iRVYR4BfFrqdy1r3WE5kp1HhPr?=
 =?iso-8859-1?Q?qAtHngnsC8kaZ+WJsD34VMyEFmcEfM5dUQ8O4e8dXEQTGnU4RjwYqjYOcw?=
 =?iso-8859-1?Q?23WZ8jqJwtM7U4JFnd1hS8go747cl0JRGvg8SHd4ZWz3Symgl2jHEPMPAC?=
 =?iso-8859-1?Q?lN12w0Je8+FKEYR81wmoRptT3aIJ6JnQx88+w/Xmsspvy0CW8kFa068aBA?=
 =?iso-8859-1?Q?eFHnGv3F40c3IeF0wxjWUI+7nxDSEJQMZEM56+O3De9lpr7jWaowi6WLBt?=
 =?iso-8859-1?Q?xBKscCFq/B56eBfJilOz0Ata8j9+5VGYSnZPttK2mpQHJEDdliaMGg6GY9?=
 =?iso-8859-1?Q?LM9tQg9q2DFKSWMgOAmPEsTAVGNW4dKGj8thqCciYB/esx3yqJcUIho701?=
 =?iso-8859-1?Q?6WmP/jSXzh1P2UmAh1OxtD2GHU2wKp6gL9LFT9wLEGe1zziP5CrE5zrEfH?=
 =?iso-8859-1?Q?hh1ImNiVe/wilCSo5zzvWB7F0XwvV/pXvsjXKIwWqDvMCeC/Om/ilpWvEg?=
 =?iso-8859-1?Q?RK621GbzyI5o7jCcKXSRhmF7kxQbZs9LFFFriYhFayiomDqaxtJuU3750u?=
 =?iso-8859-1?Q?F8n+PQwiI4+/mhh2J7mFC+0fevr/aJ70PRYDuD40t1PQ/DN+4ePQa6MpmG?=
 =?iso-8859-1?Q?lPYl86z4zuikIsVa8msB2RWSgbvTo/fYUmrEVrIwuiidg/zz3mXYidwSGN?=
 =?iso-8859-1?Q?KKawu6/tzQWhpFt5OP6GJvxLd4K/yN+HufZoV8+EDJCnY8h5HA9HXvDlM2?=
 =?iso-8859-1?Q?A=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:YQBPR0101MB9856.CANPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?D+yaNIERKbAmMagL1xzn2qRLEcuHvuMXEiTiQ/huQUTf/1+UB6eAJMjMyc?=
 =?iso-8859-1?Q?K+EEXdZlXGMjxL8uqhaxCtwHrQnzoQu7D5UdvkVJrRNCBZ9b6ci0/62lFQ?=
 =?iso-8859-1?Q?9lXDhtiMpk0AaqbHT9PQTzxjLDiri6s9TE161vzFa9eMN8r/YH0skNfMrv?=
 =?iso-8859-1?Q?7S35PPmHmdFj+VcmwV233TWzZENv4RySw+1KcSDwcBy6f1YztEPwgVPwXF?=
 =?iso-8859-1?Q?m6B52zkdy2fxsDx23TxFl60yZvYwzjwUEIZDt/NTVLZBfaShZVNvbL5OKo?=
 =?iso-8859-1?Q?sL727NE/0zmuU8NH88YIDiNKqJoXUcWPMHvok9RgxdR3R/AgOQHhplL/Vn?=
 =?iso-8859-1?Q?10tjKZkxXmoPt5CKMyhspJSi07O/iOgDy8tcAU4NfHfHCeLpZx2/Tiq/KQ?=
 =?iso-8859-1?Q?zxeUeDZzWFpJhedrGyNQs1Tsd2IApICTjy9qkdoQvYUK6kygBbhlO0DRp7?=
 =?iso-8859-1?Q?axFTbPjOAwI8Aywt4gnoy31nJ8fbm8tHd/UzEW5QVZGpu0eAlND/L32iW4?=
 =?iso-8859-1?Q?qseBnjuyVcynOC+GJXD+X3ScNOGLsCRH88NO5usr9X+t5ga+dCmJ2Amjr0?=
 =?iso-8859-1?Q?GFNqC/suhbsCv+wSooFrWuLcNMsEFiNcVZVMlY5IND+d+XLINKWXsCQL7C?=
 =?iso-8859-1?Q?JVuCRnSlLI3yuha9b/iOv3TPo1YcAzgWIbFN6Ghj/p/MNaEzIdktVvwnEh?=
 =?iso-8859-1?Q?0AgGChGW8aL0xlzLnYn4BSedTApgJ/L9R6RkQ5Bw/d+Z5I8CQ1j6VmnNVF?=
 =?iso-8859-1?Q?PWbx1EXzL4QsUon9cezJzLymINSOeY7FZaalouolmNzbV36JXioU0wUtn2?=
 =?iso-8859-1?Q?okLBodMmPCqc2Yt9M4FxpsVIPiZuCoduL090+vXUk9BT272E1AzdAVpKYD?=
 =?iso-8859-1?Q?IqFjGWO8tHT8ltACj33bVD2LgAAU1GKqME8in3acATrClXvzvI3DQVedie?=
 =?iso-8859-1?Q?+7x9J+KiZMnrMN/psWnEjWfKsZ+rq4ris8TRr4oK8tlGBIX+AIYd3M4mTk?=
 =?iso-8859-1?Q?yqdaZzuwTxBWdPr9u5BqoPDlSomPqx11geBXDJaSh7QVcJcZ6yRnmWjw7G?=
 =?iso-8859-1?Q?184pVROA3yknLHXB7IiPIXKnKGUuYtdV34V8uHkg3oLhQeRqX1+5EGBKxP?=
 =?iso-8859-1?Q?6aZDMRH8i12meJismkqtGdFJzM2/Q4qPMtva/Lc8DaSuhpgqs+52V+vqpn?=
 =?iso-8859-1?Q?odVeAmZeMd37RhrwL2SszmwR+wlhNONfn9MLytGIQSDykbzoeOszLJtcBf?=
 =?iso-8859-1?Q?YrWJ4JgWB9f9HTbvYaH4L8rJpMpj2pH855De7bLPzfO3EfYluZyz63hE9F?=
 =?iso-8859-1?Q?dDgS/C+zCX9SmepIUbHqTKcKCc7LizZhkfba0nJI2kfFH1FV0pfQ9zUGqj?=
 =?iso-8859-1?Q?ywhhvHtOZwoJYBCSsTPmOBytRKGskyB8u3FCBdQ5hEhENfb8azNwvHBTs4?=
 =?iso-8859-1?Q?1Hsw+GFjbPa6nzzP3hAbOH7zKDz05yC4eanRSVGXqclF0QOr+qGGHKr25y?=
 =?iso-8859-1?Q?Kue3J/LNrERZIgZ/p/ghcpHoUsRJ9o3RbzGternSdC1mPen7RRkZQIMTFu?=
 =?iso-8859-1?Q?qYlCqh1N92VF8tILhWyM8a5WhiEE7xW5FgTrwV9r1rv7517Nx4jJgYg/zM?=
 =?iso-8859-1?Q?3CZMWXQLbWh9wF6SSgbk4m1T+1TfT9nawU?=
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
X-OriginatorOrg: asc-csa.gc.ca
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: YQBPR0101MB9856.CANPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: da156ef8-9797-4b1e-9ffe-08ddd9dea480
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2025 20:27:22.2291
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ea59922f-ea3d-4e45-ba97-caf826fb9335
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +MwKl9HekS6VpqVkkZ8qyyzhOT9X69Yzbbm9nQx8TfxjwAvYfU9ZwXQkbjLvIemYcVOJuRW3PgA46HwDWZtpTzy+aN9zKETohDbT1xDCdB8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YQBPR01MB10593
Message-ID-Hash: SLWMNR4XNEZ5TDAQ3M6ZZWA6PKIRGAWG
X-Message-ID-Hash: SLWMNR4XNEZ5TDAQ3M6ZZWA6PKIRGAWG
X-MailFrom: peter.kazakoff@asc-csa.gc.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP B210 10 MHz Reference Input - Minimum Power
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HXNBDM3ZU6DUXYROW4DZVOOZOTZUT3KU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: quoted-printable

NON CLASSIFI=C9 / UNCLASSIFIED

I am putting together a parts list for a test station, and I am currently p=
lanning the reference clock distribution scheme. What is the minimum power =
for the B210 10 MHz reference clock input? The knowledge base indicates +15=
 dBm maximum, but provides no minimum: https://files.ettus.com/manual/page_=
usrp_b200.html

I was planning on distributing a 0 dBm sinusoidal 10 MHz reference clock to=
 all the test equipment. Any problems with this approach with a B210?

-Peter
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
