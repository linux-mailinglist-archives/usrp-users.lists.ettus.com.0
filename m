Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 862E86EA5AA
	for <lists+usrp-users@lfdr.de>; Fri, 21 Apr 2023 10:17:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 15F3638151A
	for <lists+usrp-users@lfdr.de>; Fri, 21 Apr 2023 04:17:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682065055; bh=c7BR334ZTLx+60W4WKfh9vN5sH4irek0208g9jcXa/A=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=JdrlKEHv86V9SaktepfG/8u7J5fF7Q/AX+UN2qw6/m7IasQUtAYF+YzTZAznQYBSC
	 q0eZPEAL9KyYTwa6YufZKUIvv+6BK4jb8TaiSwVjmfh+BZw5lTcAQbOlYGKnSKLd64
	 /GqQWNaTRzUSl77t87vDznhn6jvp+NdGLdnIUBCgMRzvDrSFDHrkCvSvDanrkK7PCn
	 MfSCprfPJzTZUro8D+qFseGmue2fIRlQCH7t97F73oC+uRzq7gJQttESRkkeJZMPwk
	 RWw8I3Q/jgc76Xsld4oAjlGfbCpBufqStfSmoS0/CF6Nzcr3LW9Q6QQmb/vxIRdyqp
	 7h7khuxBYl22Q==
Received: from pta-smg3.csir.co.za (pta-smg3.csir.co.za [146.64.81.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 9BA81380CE5
	for <usrp-users@lists.ettus.com>; Fri, 21 Apr 2023 04:17:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=csircoza.onmicrosoft.com header.i=@csircoza.onmicrosoft.com header.b="m6hOcJ+g";
	dkim-atps=neutral
Received: from pta-smg3.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 71835250D8E0;
	Fri, 21 Apr 2023 08:17:10 +0000 (GMT)
Received: from ZAF01-JN2-obe.outbound.protection.outlook.com (mail-jn2zaf01lp2045.outbound.protection.outlook.com [104.47.19.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by pta-smg3.csir.co.za (Sophos Email Appliance) with ESMTPS id D784A2532978;
	Fri, 21 Apr 2023 08:17:09 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XKCN3ucZXpsjeUqcZfketCD/Z+22XnB7RCz7GKfXe4m6KX0P5yWX+x+DqtHJ2ZbxkYOPItqOS3OtUDUibP/ZVOlRdi8foz4w93AcLI64Ph8pOpDWyWNvVSivTrdYeVgCnSZwUO0mcKVcmr/gyo73uxFIV46cy+Cht2HZoa3IZrbK+32adghdzFYB127ocN4TbdR2WuZLJ3lPdnHY9JPGG7b1EVGMPw1G/Md+VnynCg92iPwCZkHdsy+ZLqLWFhjNFisNYxkTHNjju39ERR+j9FEsB4NuOdGj3sSvXO4cnAQF+ojJKFGj6K/wY1QaILLxRGZ6RGHqOKNpPjFakd7gGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kiSrnQTXbl8Zc7bN8ZAMz09R1snSkC6LitEyUociI68=;
 b=BWhkMj+f5p92+f2uoPSF3vKoDZwgVCqqVPDPboC03qNycAo/d7/GaHtL890snTCoQzLYcRZjt5TWvKnJCBMcXdssXl9zAVGp6qQC3D6kdco+MhZ24Nd6jLSpokQHO/t9GwX+YQesyNdc1N7jVnU4farWvjgqXSYyzFWy2ih/nVcnbB+XiwfbI+PVQKu04HkYmNNULysObLxH3LBoVBDTg8z1T91gIyw0tfHm01aZdCUPlugNhb92IHWh0aFF9Im3rCLb/tBTvCikh7967p0GicPGbktqo2TafSDf6oqd35aAhgXZlC2uaTNCDDhUNlXNcuRQgY4AjcWV3/8I7vpwxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=csir.co.za; dmarc=pass action=none header.from=csir.co.za;
 dkim=pass header.d=csir.co.za; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=csircoza.onmicrosoft.com; s=selector2-csircoza-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kiSrnQTXbl8Zc7bN8ZAMz09R1snSkC6LitEyUociI68=;
 b=m6hOcJ+gQ0ov1Rhp0wWszSKvvQFQKxk0mu8S7CTax4xWQm+1/shpY7FTXOEw5xkAX7khD699eWSJUtKCDVUPbJzJuhZGbaXsXYext3Q6fPKy/4uU2iXLM3d6tE4draS+qHYLtnd/llOM/fK7VcBQO192VjN6ciIyrturrUX+A6o=
Received: from JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:24::13) by
 CT2P275MB1114.ZAFP275.PROD.OUTLOOK.COM (2603:1086:100:2b::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6319.22; Fri, 21 Apr 2023 08:17:08 +0000
Received: from JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::dc42:fa67:2bcf:f1b8]) by JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::dc42:fa67:2bcf:f1b8%4]) with mapi id 15.20.6340.014; Fri, 21 Apr 2023
 08:17:08 +0000
From: Leon Wabeke <LWabeke@csir.co.za>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: TwinRX phase synchronisation using different
 versions of UHD
Thread-Index: AQHZc1l3HiHM3aslT0mdg/sdj9faPa80SBAAgAEbZ4E=
Date: Fri, 21 Apr 2023 08:17:07 +0000
Message-ID: 
 <JN1P275MB053532A9CF83C0C50CA7585D95609@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
References: 
 <JN1P275MB053554638C3D2E4F1C0C67BD95639@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <9cbde8ad-08e9-c0d2-a010-edd4fbf64c26@gmail.com>
In-Reply-To: <9cbde8ad-08e9-c0d2-a010-edd4fbf64c26@gmail.com>
Accept-Language: en-ZA, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=csir.co.za;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: JN1P275MB0535:EE_|CT2P275MB1114:EE_
x-ms-office365-filtering-correlation-id: 8199473f-f504-4b1e-4abb-08db4240cc81
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 3fsBW+BsR/7U7tl2T67utoWddb2CYcFALzSUd2rGXRwV0HhUIlh3iM4anwUYRB6CKRTHBbIoADHVCcnXgZRgzS9wu4q8so7DOb6a1wL10Yqq+zglxHDbH1u3C6AgYK+PXMBIW/HrmD9ytjzpj3vxOlMedfZP/A0kMaCqtAaukw0QzwsSiRqNm1IzNUGE64hhATkWvUKLblT5YjKcbGId2WM9FF/0/O94fE5OuyQBq5P5dLVF+JEgp1uJoalfSCoJxsBde81N4yMxjZMSHlTPc5Xs29X3BEnBI5TxlRZwRpoYQhH8O87ZDcS7BAyraTQiiecAXjWjqi9Yh2pN4sZw9UTR0Cerx/t5uLQdq9gW/SBZbfQktxwt5+zyfnJi0t5Q1GqB32Qwg8c6HGLV8hOlSw5tAm+S9Et6t/vi6G/prM6gmYB32nIbBkDWko0oS5RI05Iyw5VwhX2eyUZ1gNoT86FawaqdZwVFDaLw/DidXqWUyCaFmOjoU7XhUbzY8cKhseWUExlV5T0armVuxyJHvYP6zcOQIUWE/gjrIzgzGHapkdI+QxkDTpODQXm+nsv25Yft8r4+9H7bqs+NhphpUn7v1IgHSpXzLfIQOP/3Ww8=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(366004)(376002)(136003)(39850400004)(396003)(346002)(279900001)(451199021)(66556008)(76116006)(66476007)(66946007)(66446008)(64756008)(41300700001)(166002)(55236004)(53546011)(26005)(9686003)(6506007)(186003)(316002)(71200400001)(8676002)(8936002)(5660300002)(86362001)(7696005)(83380400001)(38070700005)(2906002)(478600001)(110136005)(33656002)(52536014)(122000001)(38100700002)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?9KRwk+CS+F0j0BEMonEuVadzLn7RHRc9lBeavn3rGmmrfX8FRnAbUcnK?=
 =?Windows-1252?Q?NxdvwHiM71icfYYtWunXb3GwGLWsip4JX8DCy46OMiXqSfEDEriRjb8L?=
 =?Windows-1252?Q?W89lCxUd+5f7U1XBLfLhdPkH/LzDqYM6XRp5OKq/MvSYNBu6a60Og2T5?=
 =?Windows-1252?Q?nuUUs7N5bNv1uqmqJ8JjQyddmaFSv1pSz+IJ0JzEEc00NeR/5IuqNsHf?=
 =?Windows-1252?Q?kNpIhZ3JeJ9zxZt2Hm7IcPqQ5R/3iT7sjZ+DSgEk4J2Zn049bwPRYc7w?=
 =?Windows-1252?Q?DzCEeTSk4B/PHXoVhtt4neOrJVtaE8JkTkL/lcqqdbfzpOpgL/UYhQWF?=
 =?Windows-1252?Q?2xcans1CeMm8XFGDw2k3X0RfEZ93rr8bIsuS2A0OQ0TdiD45unoFP79Z?=
 =?Windows-1252?Q?5o07bjLForNZPKN72FCPOH6SWU+2VIl3XhEohYfNjfwYsl8q2a0Dcu1k?=
 =?Windows-1252?Q?X91Xs0OGvqmdwIKffS0xPWszjr0Zf/3sUBXXeqnOzxsiDM644pb5G+KL?=
 =?Windows-1252?Q?IYBMGHf31i6ounZFsQY1nu+F9Cvequd9R+IK/VJWx5fIzY4Ks2/NFqaS?=
 =?Windows-1252?Q?olWiwLwKFNlQaiMr9q6g8yd95SpNdi3ot2XzS/ajg5y92UDAtJoHjL9q?=
 =?Windows-1252?Q?NYrI0PGKAmrArNOVmMHTnpAhbdrNnfFAqZOlcAl8EUDCw73bB5XWLmvY?=
 =?Windows-1252?Q?/AUhDuGaXLvmSkdA4QFA8DuMDC63D5U3gKQKLrHeLuPVuAwHbQ0o624B?=
 =?Windows-1252?Q?lhuiOKlB87Ef8vVcT9NqcFj0Vr+wWt9MUda/lKibMMt1VayX168Y9NQu?=
 =?Windows-1252?Q?3ECDXiRazHnpRJOLPSv2eS9tsicNfSuyJ9gaxFjyIywalvoDXOJ3x/pf?=
 =?Windows-1252?Q?D1Lge+rziI9nvBlFYy/ji13Uw+HHKx0PRsKWRnDyJwhwIuZ6yfWwWvRw?=
 =?Windows-1252?Q?XPpvVuz6MbhDthZb4UbA/oKnuOWGtCQXG6NPFTEFP5RbS8wTctLIoVsR?=
 =?Windows-1252?Q?ZIB0OL8375b51RZ476bitE9TaUBp0wPukf2PK8v5+Ep5YjOKPkUngcsa?=
 =?Windows-1252?Q?sj+BjGNoZiqFogAoiMnab72FrMAAS4cCKIpm0MMz240tqVoXqY0HFK9u?=
 =?Windows-1252?Q?G5VOnwGzOT8NEqa8NYjIQoMCwT6AC+ex/xXpN18VHbqpR9vpsn/Z+eXg?=
 =?Windows-1252?Q?aqSlIjYkqanNUyoYqaNBlk7eevVQYNGQg/p0Qq+ZcArfyNILVqapm7qs?=
 =?Windows-1252?Q?v9zpJmyXnWaBNyZVo7Mmfyr6FPKwrotS8IOmL0Oc2eYr+8Z4LJb4LNec?=
 =?Windows-1252?Q?Lcy9amgjn0+zPNB1InzbH7pzhXYDqKiQ0WNx6vCOx3zcXNaiEH+Rp+xL?=
 =?Windows-1252?Q?rb4/UizLsmnbjjr6EzEG/o1+clAeD/2y+BkH8zWxNBFqzAd2brF4Ojnr?=
 =?Windows-1252?Q?4pgqni1OPgYDNI4d/u6Tf74MQrUXvi1Ud23wBwcVOXxuTkT1iQo2gidR?=
 =?Windows-1252?Q?D7e1vRXS+DDFhuUcODWqw9Z4SMpQzxEOdD0lI6YVVa7k4y4754IKKlm1?=
 =?Windows-1252?Q?vLMJVN9Br6u72beQh0bZUnojOzbEmTqT/SgtJ4dBV6selwrMiz5Rbeg6?=
 =?Windows-1252?Q?8FsGCpnaJ5O28gjClDr3n+5m+/6eAtgHmxmYE7g2/rdobLsFk93GunCM?=
 =?Windows-1252?Q?ujJd1NxhXRiHhB6xEe1TR5T7SGWcODXTQra7oZke7Z70uhurmPtX1w?=
 =?Windows-1252?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: csir.co.za
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 8199473f-f504-4b1e-4abb-08db4240cc81
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2023 08:17:07.9126
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2fd3c5d5-ddb2-4ed3-9803-f89675928df4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YwiBZN/1YquePTBfOlJ1tebdDRU2OV/zDBPl4Pg6YW03DvFSHOpnN4XwtoLPOc4277VuGtPqnT+WIgc7fFHzcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CT2P275MB1114
X-SASI-RCODE: 200
Message-ID-Hash: D4QOGAIINQBFCKJ2WIRXNUU4EYKGEDLL
X-Message-ID-Hash: D4QOGAIINQBFCKJ2WIRXNUU4EYKGEDLL
X-MailFrom: LWabeke@csir.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRX phase synchronisation using different versions of UHD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3DL3WJGWASE6J3S27FA2S4YAWQ3ZZL2Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6337115251880700580=="

--===============6337115251880700580==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_JN1P275MB053532A9CF83C0C50CA7585D95609JN1P275MB0535ZAFP_"

--_000_JN1P275MB053532A9CF83C0C50CA7585D95609JN1P275MB0535ZAFP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Marcus



After stripping out the wrappers and replacing variables etc. it looks like=
 we are using the following lines to attempt to setup the code to share the=
 LO:

USRP->set_rx_lo_export_enabled(true, USRP->ALL_LOS, 0);

USRP->set_rx_lo_source(=93internal=94, USRP->ALL_LOS, 0);

USRP->set_rx_lo_export_enabled(true, USRP->ALL_LOS, 0);

USRP->set_rx_lo_source(=93companion=94, USRP->ALL_LOS, 1);

USRP->set_rx_lo_export_enabled(true, USRP->ALL_LOS, 0);

USRP->set_rx_lo_source(=93external=94, USRP->ALL_LOS, 2);

USRP->set_rx_lo_export_enabled(true, USRP->ALL_LOS, 0);

USRP->set_rx_lo_source(=93external=94, USRP->ALL_LOS, 3);



I did wonder about the fact that channel 2 and 3 use =93external=94 and whe=
ther that shouldn=92t somehow be =93reimport=94 or =93companion=94 to indic=
ate it should be sharing the LO, instead of getting an LO from external to =
the X310. Or should =93external=94 only be interpreted as external to the T=
winRX daughterboard?

What I am seeing here that is also bothering me is that we are calling set_=
rx_lo_export_enabled 4 times with the same settings, with the intention tha=
t it should be setting up each of the channels, to use channel 0. Should th=
at actually be 0 to 3 or should we be explicitly be disabling 1 to 3?



Oh, something possibly unrelated is that for the mode where the code change=
s frequency after running, I initially tried to do that using a timed tune =
request, however I found that after 48 such requests the firmware crashed a=
s stopped working, then I reverted to the mode of stopping the streaming an=
d using tune request without a command time. I know after initialisation we=
 do start at a specific time, but am not sure if the tune request during in=
itialisation is timed or not.



Leon




From: Marcus D. Leech <patchvonbraun@gmail.com>
Date: Thursday, 20 April 2023 at 16:51
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: TwinRX phase synchronisation using different vers=
ions of UHD
You don't often get email from patchvonbraun@gmail.com. Learn why this is i=
mportant<https://aka.ms/LearnAboutSenderIdentification>

[The e-mail server of the sender could not be verified (SPF Record)]
On 20/04/2023 10:42, Leon Wabeke wrote:
I am using code utilizing the UHD library to capture samples from a X310 wi=
th 2 TwinRX daughterboards. The sample rate is set to 25MSps. This is to ch=
aracterize the system to ultimately use it in for phase interferometry dire=
ction finding similar to AN-244 (https://kb.ettus.com/Direction_Finding_wit=
h_the_USRP%E2%84%A2_X-Series_and_TwinRX%E2%84%A2<http://pta-smg4.csir.co.za=
:32224/?dmVyPTEuMDAxJiZhNzg5YTc0YzlmOGY1ZTVkNj02NDQxNTE3Nl8xNjc3Ml81MjUyXzE=
mJjllNzFhZmQ2YTMwMzg1Mj0xMzMzJiZ1cmw9aHR0cHMlM0ElMkYlMkZrYiUyRWV0dHVzJTJFY2=
9tJTJGRGlyZWN0aW9uJTVGRmluZGluZyU1RndpdGglNUZ0aGUlNUZVU1JQJTI1RTIlMjU4NCUyN=
UEyJTVGWC1TZXJpZXMlNUZhbmQlNUZUd2luUlglMjVFMiUyNTg0JTI1QTI=3D>). (I tried i=
nstalling that, but still some compiling issues to try to resolve)

As a test setup, I am using another X310 with UBX to generate a test signal=
, passing through a 4 way splitter to the 4 channels of the TwinRX. In soft=
ware I correlate with the transmitted signal and extract the phase of the p=
eak. I then plot it relative to ch0=92s phase. Theory says that if I do it =
for different frequencies, the slope of the phase over frequency correspond=
s to path length differences of the cables (and the splitter/receiver respo=
nse).

Using an application developed a few years ago using UHD v3.13.0.0 directly=
 (and UHD v3.15.0.0), I am able to successfully capture data. The process i=
s script driven, launch the custom app to initialize the SDR on a specific =
frequency and capture data to a file. Then close and quit the app and repea=
t this over 60 frequencies.
The application also supported a mode where instead of quitting completely,=
 it could stop streaming, change frequency and start capturing again. I onl=
y tested this mode using UHD-3.13, however in that case, I saw that after t=
he frequency change, there was a random multiple of 90 degrees phase offset=
 present on some of the channels. This implies there was some nuance in the=
 process of stopping, changing frequency and restarting streaming that was =
different from my process of initializing (during which a frequency is sele=
cted). Testing seemed to indicate that if I stopped and restarted on the sa=
me frequency, these phase jumps did not occur.
When I tried upgrading to UHD v4.2.0.0 or UHD v4.4.0.0, I found that this r=
andom frequency offset was also present if I captured just using the initia=
lize process.
The attached figure shows the phase in the frequency range 5.25GHz, with th=
e solid lines from the capturing using UHD 3.13 while the dots are from the=
 capture using UHD 4.4. The change in the lines between 5.21-53GHz and 5.51=
-5.6GHz I assume is due to changes in internal mixing strategy chosen by th=
e expert mode tuner to avoid mixing products? While that is not nice, it at=
least is repeatable while the offsets in the dots are random multiples of 9=
0.
I assume that the 90 degrees originate either from mixing up I and Q somewh=
ere in the data stream or what I suspect has to do with the decimation proc=
ess to reduce the sample rate down to 25MSps. Years ago I worked with anoth=
er sampler, where the clocks were not constrained properly and it also exhi=
bited this behaviour due to clocks locking on one of 4 clock edges.
Any ideas where I can further dig to locate the problem? For the 3.13 the f=
act that it seemed consistent on initialization, while being problematic on=
 freq change hinted I need to carefully study the sequence of events during=
 those activities, but the fact that the initialization sequence no longer =
gives consistent results in >=3D4.2, makes me wonder that even if I chase t=
hat difference, it might only be of historic value. Can someone confirm tha=
t they have either seen this 90 degree random phase and/or that they are ge=
tting consistent phases (under what conditions?)
Thanks
Leon


Are you LO-sharing across channels, or relying on synthesizer phase-reset a=
nd timed tuning?



--_000_JN1P275MB053532A9CF83C0C50CA7585D95609JN1P275MB0535ZAFP_
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
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:Menlo;
	panose-1:2 11 6 9 3 8 4 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Courier New";
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Consolas",serif;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
p.p1, li.p1, div.p1
	{mso-style-name:p1;
	margin:0cm;
	font-size:8.5pt;
	font-family:Menlo;
	color:black;}
span.s1
	{mso-style-name:s1;}
span.s2
	{mso-style-name:s2;
	color:#B42419;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-ZA" link=3D"#0563C1" vlink=3D"purple" style=3D"word-wrap:b=
reak-word">
<div class=3D"WordSection1">
<p class=3D"p1"><span class=3D"s1">Hi Marcus<o:p></o:p></span></p>
<p class=3D"p1"><span class=3D"s1"><o:p>&nbsp;</o:p></span></p>
<p class=3D"p1"><span class=3D"s1">After stripping out the wrappers and rep=
lacing variables etc. it looks like we are using the following lines to att=
empt to setup the code to share the LO:<o:p></o:p></span></p>
<p class=3D"p1"><span class=3D"s1">USRP-&gt;set_rx_lo_export_enabled(</span=
><span class=3D"s2">true</span><span class=3D"s1">, USRP-&gt;ALL_LOS, 0);</=
span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">USRP-&gt;set_rx_lo_source(=93internal=94=
, USRP-&gt;ALL_LOS, 0);</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">USRP-&gt;set_rx_lo_export_enabled(</span=
><span class=3D"s2">true</span><span class=3D"s1">, USRP-&gt;ALL_LOS, 0);</=
span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">USRP-&gt;set_rx_lo_source(=93companion=
=94, USRP-&gt;ALL_LOS, 1);
</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">USRP-&gt;set_rx_lo_export_enabled(</span=
><span class=3D"s2">true</span><span class=3D"s1">, USRP-&gt;ALL_LOS, 0);</=
span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">USRP-&gt;set_rx_lo_source(=93external=94=
, USRP-&gt;ALL_LOS, 2); &nbsp;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">USRP-&gt;set_rx_lo_export_enabled(</span=
><span class=3D"s2">true</span><span class=3D"s1">, USRP-&gt;ALL_LOS, 0);</=
span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">USRP-&gt;set_rx_lo_source(=93external=94=
, USRP-&gt;ALL_LOS, 3);
<o:p></o:p></span></p>
<p class=3D"p1"><span class=3D"s1"><o:p>&nbsp;</o:p></span></p>
<p class=3D"p1"><span class=3D"s1">I did wonder about the fact that channel=
 2 and 3 use =93external=94 and whether that shouldn=92t somehow be =93reim=
port=94 or =93companion=94 to indicate it should be sharing the LO, instead=
 of getting an LO from external to the X310. Or should
 =93external=94 only be interpreted as external to the TwinRX daughterboard=
? <o:p></o:p></span></p>
<p class=3D"p1"><span class=3D"s1">What I am seeing here that is also bothe=
ring me is that we are calling set_rx_lo_export_enabled 4 times with the sa=
me settings, with the intention that it should be setting up each of the ch=
annels, to use channel 0. Should that
 actually be 0 to 3 or should we be explicitly be disabling 1 to 3?<o:p></o=
:p></span></p>
<p class=3D"p1"><span class=3D"s1"><o:p>&nbsp;</o:p></span></p>
<p class=3D"p1"><span class=3D"s1">Oh, something possibly unrelated is that=
 for the mode where the code changes frequency after running, I initially t=
ried to do that using a timed tune request, however I found that after 48 s=
uch requests the firmware crashed as
 stopped working, then I reverted to the mode of stopping the streaming and=
 using tune request without a command time. I know after initialisation we =
do start at a specific time, but am not sure if the tune request during ini=
tialisation is timed or not.<o:p></o:p></span></p>
<p class=3D"p1"><span class=3D"s1"><o:p>&nbsp;</o:p></span></p>
<p class=3D"p1"><span class=3D"s1">Leon &nbsp;<o:p></o:p></span></p>
<p class=3D"p1"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">Marcus D. Leech &lt=
;patchvonbraun@gmail.com&gt;<br>
<b>Date: </b>Thursday, 20 April 2023 at 16:51<br>
<b>To: </b>usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject: </b>[USRP-users] Re: TwinRX phase synchronisation using differe=
nt versions of UHD</span><span style=3D"font-size:12.0pt;color:black;mso-li=
gatures:none;mso-fareast-language:EN-GB"><o:p></o:p></span></p>
</div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" align=3D"left" width=3D"100%" style=3D"width:100.0%;cellpadding:0;ce=
llspacing:0;display:table;border-collapse:seperate;float:none">
<tbody>
<tr>
<td style=3D"background:#A6A6A6;padding:5.25pt 1.5pt 5.25pt 1.5pt;valign:mi=
ddle"></td>
<td width=3D"100%" style=3D"width:100.0%;background:#EAEAEA;padding:5.25pt =
3.75pt 5.25pt 11.25pt">
<div>
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
2.25pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-el=
ement-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.0pt;font-family:&quot;Segoe UI&quot;,sans-serif;=
color:#212121">You don't often get email from patchvonbraun@gmail.com.
<a href=3D"https://aka.ms/LearnAboutSenderIdentification">Learn why this is=
 important</a><o:p></o:p></span></p>
</div>
</td>
<td width=3D"75" style=3D"width:56.25pt;background:#EAEAEA;padding:5.25pt 3=
.75pt 5.25pt 3.75pt;align:left">
</td>
</tr>
</tbody>
</table>
<div>
<pre>[The e-mail server of the sender could not be verified (SPF Record)]<o=
:p></o:p></pre>
<div>
<p class=3D"MsoNormal">On 20/04/2023 10:42, Leon Wabeke wrote:<o:p></o:p></=
p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am using code utilizing the U=
HD library to capture samples from a X310 with 2 TwinRX daughterboards. The=
 sample rate is set to 25MSps. This is to characterize the system to ultima=
tely use it in for phase interferometry
 direction finding similar to AN-244 (<a href=3D"http://pta-smg4.csir.co.za=
:32224/?dmVyPTEuMDAxJiZhNzg5YTc0YzlmOGY1ZTVkNj02NDQxNTE3Nl8xNjc3Ml81MjUyXzE=
mJjllNzFhZmQ2YTMwMzg1Mj0xMzMzJiZ1cmw9aHR0cHMlM0ElMkYlMkZrYiUyRWV0dHVzJTJFY2=
9tJTJGRGlyZWN0aW9uJTVGRmluZGluZyU1RndpdGglNUZ0aGUlNUZVU1JQJTI1RTIlMjU4NCUyN=
UEyJTVGWC1TZXJpZXMlNUZhbmQlNUZUd2luUlglMjVFMiUyNTg0JTI1QTI=3D">https://kb.e=
ttus.com/Direction_Finding_with_the_USRP%E2%84%A2_X-Series_and_TwinRX%E2%84=
%A2</a>).
 (I tried installing that, but still some compiling issues to try to resolv=
e)</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">As a test setup, I am using ano=
ther X310 with UBX to generate a test signal, passing through a 4 way split=
ter to the 4 channels of the TwinRX. In software I correlate with the trans=
mitted signal and extract the phase
 of the peak. I then plot it relative to ch0=92s phase. Theory says that if=
 I do it for different frequencies, the slope of the phase over frequency c=
orresponds to path length differences of the cables (and the splitter/recei=
ver response).
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Using an application developed =
a few years ago using UHD v3.13.0.0 directly (and UHD v3.15.0.0), I am able=
 to successfully capture data. The process is script driven, launch the cus=
tom app to initialize the SDR on a specific
 frequency and capture data to a file. Then close and quit the app and repe=
at this over 60 frequencies.
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The application also supported =
a mode where instead of quitting completely, it could stop streaming, chang=
e frequency and start capturing again. I only tested this mode using UHD-3.=
13, however in that case, I saw that
 after the frequency change, there was a random multiple of 90 degrees phas=
e offset present on some of the channels. This implies there was some nuanc=
e in the process of stopping, changing frequency and restarting streaming t=
hat was different from my process
 of initializing (during which a frequency is selected). Testing seemed to =
indicate that if I stopped and restarted on the same frequency, these phase=
 jumps did not occur.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When I tried upgrading to UHD v=
4.2.0.0 or UHD v4.4.0.0, I found that this random frequency offset was also=
 present if I captured just using the initialize process.</span><o:p></o:p>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The attached figure shows the p=
hase in the frequency range 5.25GHz, with the solid lines from the capturin=
g using UHD 3.13 while the dots are from the capture using UHD 4.4. The cha=
nge in the lines between 5.21-53GHz
 and 5.51-5.6GHz I assume is due to changes in internal mixing strategy cho=
sen by the expert mode tuner to avoid mixing products? While that is not ni=
ce, it atleast is repeatable while the offsets in the dots are random multi=
ples of 90.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I assume that the 90 degrees or=
iginate either from mixing up I and Q somewhere in the data stream or what =
I suspect has to do with the decimation process to reduce the sample rate d=
own to 25MSps. Years ago I worked with
 another sampler, where the clocks were not constrained properly and it als=
o exhibited this behaviour due to clocks locking on one of 4 clock edges.</=
span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Any ideas where I can further d=
ig to locate the problem? For the 3.13 the fact that it seemed consistent o=
n initialization, while being problematic on freq change hinted I need to c=
arefully study the sequence of events
 during those activities, but the fact that the initialization sequence no =
longer gives consistent results in &gt;=3D4.2, makes me wonder that even if=
 I chase that difference, it might only be of historic value. Can someone c=
onfirm that they have either seen this
 90 degree random phase and/or that they are getting consistent phases (und=
er what conditions?)</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Leon &nbsp;</span><o:p></o:p></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"mso-ligatures:none;mso-fareast-langua=
ge:EN-GB"><o:p>&nbsp;</o:p></span></p>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"mso-li=
gatures:none;mso-fareast-language:EN-GB">Are you LO-sharing across channels=
, or relying on synthesizer phase-reset and timed tuning?<br>
<br>
<br>
<o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_JN1P275MB053532A9CF83C0C50CA7585D95609JN1P275MB0535ZAFP_--

--===============6337115251880700580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6337115251880700580==--
