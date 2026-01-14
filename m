Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EBDD211D8
	for <lists+usrp-users@lfdr.de>; Wed, 14 Jan 2026 20:59:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1FBE4386647
	for <lists+usrp-users@lfdr.de>; Wed, 14 Jan 2026 14:59:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1768420740; bh=F88TfQT1h5HSgrrBvzKos2IwrqiWM5j6qftzzgmPjsI=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=DpdgX/v1TL+ZDCkp/QSGpnHNXHgUzTgM3qu4JWgKJoF2mC8ncWLjnVGVi5/vXd9nl
	 EHfq79bPkp+rqAt9spvVOTnopdZHSYqh5ERGzoboOdvhTrZ+0NPfklpCXPXLjIXsdl
	 LuVMDDJ3pcrGhd9BhKGwQYn0vIzBpLKezLTIbyC0W4GaVmeWbWOPi2lz/8qMuouDYS
	 /5TALb0u8WKtXcgRz8LtclyZtO884usvzNEfI5kVq5anBO7vChRIPX8WExmz8unA7h
	 IGE/TbljswIg1jrrIj3gLM3NrnAaYWoMDa0nLBSdhFxkvQYUSoauYCC1Ha4QqE+hhY
	 DOCs3ewRW7Gmg==
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0051.outbound.protection.office365.us [23.103.209.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 02BE43865D9
	for <usrp-users@lists.ettus.com>; Wed, 14 Jan 2026 14:57:51 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="O1MBtt/p";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=K0+RJYLOvkbu9p+Xzv0ObRC42d9IYUttByBWzxLTNArHLSTVySZhffspLuhzHxbdGvTS21QLdpRUPcbz/dCHCZAPcGkSmjBiRWqF6h/0J0miU3z+ZkBtJoLCArm0NY7pdw8/yuUhRZeFn/sd1CZ0tA5dynytVvsBSl0OkBS8IsZ4Z+E6cmJB7ubevlGOvI6W+WNgIM1gktDTifhHcmduuDKCF2XHQS4i2j0dvQ6p8W8nRCIb6eQv6w9ZxsyYCcYw8Mlb7f/7gAxcVYw9+GRJwlYI+umUZHiLjZWYum8po0wl6sJWl2ce0eyljtFrjUmxC9ybl1N+BdybfI2QOb9u1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K0wf4UTI3yr3lk3Zq22SgCp8ldoNjED8sOsODaBK+dY=;
 b=Q1FlYageWCUmA5HzSSyXqOPonvgUSNlWxh+FVITFRy9X3mC0/zh9o03Yz+yl/RFUu+9H2X6KPngmBx7lSas6ACe2r+raotaNTqWQzUF3XJiThOm6E/nTw73GorO+ZTeFTLxnxKMkHPYRPgSqDNXjWnGlANycVapym4bRzN0PI4GiUBh1kspSSQNhTZ3gZyqeGIFKBxhX7LvPGPKSs863jZFbgpkzu2ELZ40RNEmt5yE3atzmpUvJUIyPqU5HeDRVlBurgKOVl1ORdCNTGQZ7OEuka2jefPA3RIhgQzaQGCDr0RrlDzo1iJBHpu6htewSxsCwJtES8bBwiV0HGWW2ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K0wf4UTI3yr3lk3Zq22SgCp8ldoNjED8sOsODaBK+dY=;
 b=O1MBtt/pQbVG7Hu1+gG7PlJAgLjDlylZ8fZPCKInnontS1iRw61DG1EQzR5eFoLgqw4Urr9EzCzQGSPtFkwNeAhXXlDiGsoJNTSavcSMlaB4Rqe1EXRJQc4XfbPQ0ro1tNwFtm3BmInyEbMDyaFQCQ0V5yAgrFro2UwsHf19Am9JlZEQWSZ80Yb2FJHbQniQq8tZZ1I/4KBvUUzthW9ciyrTqnk6gXxAADCUtaJh/cFh1o35OUsniTUTcJ0VIImszxJowjkTmCtqBJ2N2RKiR7d6bXuwXigYq04NPhYFbFS0OofcBH7ih3BURpLwmwmGm9AyPmeK9o6YtfMCZNnboQ==
Received: from SA1P110MB1932.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:198::9)
 by PH1P110MB1539.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.9; Wed, 14 Jan
 2026 19:57:47 +0000
Received: from SA1P110MB1932.NAMP110.PROD.OUTLOOK.COM
 ([fe80::6905:cffb:f7d5:9517]) by SA1P110MB1932.NAMP110.PROD.OUTLOOK.COM
 ([fe80::6905:cffb:f7d5:9517%6]) with mapi id 15.20.9456.008; Wed, 14 Jan 2026
 19:57:47 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Using USRP B206mini with Octoclock 10MHz+PPS 
Thread-Index: AdyFj2UmKxVSbu83RYa9OfsH3BriAA==
Date: Wed, 14 Jan 2026 19:57:47 +0000
Message-ID: 
 <SA1P110MB19324582F1B8CFDD8469BBA6B78FA@SA1P110MB1932.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1P110MB1932:EE_|PH1P110MB1539:EE_
x-ms-office365-filtering-correlation-id: 7f9cb387-68cd-4dcd-62ed-08de53a730a4
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: 
 BCL:0;ARA:13230040|41320700013|1800799024|366016|8096899003|38070700021;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?z/axjVRTMmywr3XF+bjCzsg9vTG34i6uzk5NqCZ1jPoF6tPAMLPAhHYE88yx?=
 =?us-ascii?Q?UQm3UKJDpyXXLtL+o94BxIo7N88InQC+6Dop7ixa59P0S7lIpx3W7lfwShgI?=
 =?us-ascii?Q?m41PTbfrykeLRQScetwVeSXiYPAGxBPQzYeDhuV2OE7atpwnUTfuz/Y7pULG?=
 =?us-ascii?Q?OYUZ1lLDoyBsFOpe8eMmO9W9J7jv8neHeLPv5Yo+EJTZ32yIEHEl+7QnDWm7?=
 =?us-ascii?Q?SWNTiMRo4iiKQZ5Ox4td+IrdKCIPHt2gEiX84mGKbsNGVJqVRcFHD8kVpbSk?=
 =?us-ascii?Q?/YG5WvGVnPd9bNeTSq+xI7kn75HV4lGhXRt30enlBnyAv3G5rGHMn/FTewkD?=
 =?us-ascii?Q?1Rd06B6ey2FrS3qI7YEEdsHvOHv/ieBIM2TSJtuuufKRC2OrM8BYoevY6gcl?=
 =?us-ascii?Q?WRsgdF/UNiU82w8SEq5YOJeGaSzRZrIfjAywVClUErSEayi3jwHCutOkJhJu?=
 =?us-ascii?Q?U96KPskcs4r+fQsqEVjqtOXI7pGHYRPhLlZxZStnF6CMIt02WQ61BhS30Mdr?=
 =?us-ascii?Q?r2Jb3VMZF8WS3c86rWGoGOZqF0prq0UhCU1bO2h3AeREswoP6jcc3tc3agGU?=
 =?us-ascii?Q?2a+PhcxOU1iG87EKLVKITyYWrV3gFyIitk9bXxCjvd28cC5os7BFmX1bWAG/?=
 =?us-ascii?Q?GC8eFF2TEXH8PUFuZAJl8BJq4rJGmguuAvAguQZN0qtgsh5Np8+MBTs8GolX?=
 =?us-ascii?Q?YAeKVVIAUrKDEQ0u9mJmBCCB3Vz/50ZFFjaOnTvVe84Rk+e8ZDLcWW+a//1f?=
 =?us-ascii?Q?WUHmTtnEEnTB/6irlaFVBb7P/88dVKN2oUJUeqT3L5v4IRu/8T5h/4e3T+N2?=
 =?us-ascii?Q?H+MZ0vpSms+tQrIGy4MdvmM2f5ZVgfjJ+UIvu9PhyR/HIEBB+sHocwRRWSUh?=
 =?us-ascii?Q?ods1nh2NEnAi8J6MlyqLNr/43XSYN3qAPHOYCML291EyC3CKGDr7xL60f34X?=
 =?us-ascii?Q?KH77u++YByoztqg5tRX6v6Q85BTEhaLss2Bn6RYfYI2ixbIg6JzaQilBML+W?=
 =?us-ascii?Q?BNcbVKvAE0IX1HNI6BfOrw/1CSOfurFXMIvHiBEEJfEA4nYsy10Pqw+rmrdh?=
 =?us-ascii?Q?JqbjV7qFBN7IgWvbroaLiItSKy62OJntYD8Ven4Ns2sFTyswgLg7uu02MW04?=
 =?us-ascii?Q?2dHT5TES7uu9lyMFJd1gARIB6F4Q+qHnHFL+hPpGLQd9GD6Az8bzdlTbgOQk?=
 =?us-ascii?Q?YJBbAuG5gZuJ12j/2euA6Ee+NAQ/wlYYsyigUu6MWIaTDLA5EFGBxcfXB7DM?=
 =?us-ascii?Q?KClDKEgYvH1ppp9ziLIl+HqBXNJfsqk3BMGT8Pqy2btYbQUusNFtCbGJH+QP?=
 =?us-ascii?Q?5aPr1zm8Q5nulKGGvo3K54lChSzhC1h2CgxbiwsmcGXw2HZGCbFX3xXus4mf?=
 =?us-ascii?Q?93U9wD/E/24W47knvT9gA29TnaDXTRHBsqfDB1s8g4lKWUz1H8gFXFjuFJRJ?=
 =?us-ascii?Q?AU1o5DCOGHoTntEtmwrBU0nIWimN1AlmSaZlvBJeJx/23WY8lwV8vBcqhgWB?=
 =?us-ascii?Q?QUeBXrBkh/HDIeSue9C9Cse4QQ7D7E4S/mMxSPkV3A67QO+nYHBAWPD2JMtq?=
 =?us-ascii?Q?/ktXxpTTOG+wu+MzDt+2joVDyTSTJdKAaS+frTO7PHBjE5aHoutwy1hVvieV?=
 =?us-ascii?Q?9kMwkyl/mzFfiJGcnWEPekI=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1P110MB1932.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(1800799024)(366016)(8096899003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?YYzNOgSl6aJHaF5bQKPIE4dU+dk9ovLE8bobkbvscvL64KhrHB+kB/djH1dq?=
 =?us-ascii?Q?Qf0MrYXZPN3z6zVEF6nqOz+p8CqS3iAA1gG97+uqqDBe3Xro8hB+UHBqEjE+?=
 =?us-ascii?Q?LxrFVK/h97RALa+cNkOji+VRC6K9UEc/o9nQ7JkJR2d3zVjA3bzG75TaXyVj?=
 =?us-ascii?Q?1dt9Xh6hwKE/vbEIXrycKAOxXJPeYlvOuq4TgnL7FSJuxGZvGYRByF9/yMOX?=
 =?us-ascii?Q?NYucB5MNqfFM2l3qs9Hw/W9ZnUDy/7aEY3FlIB0Vyg9hK2TebZHF65BGCslM?=
 =?us-ascii?Q?+G7Sql1b6ylP5g0KPNXTUJ9VzDrxk+2HTcYwj03PN2bQmoghVVGYdEWlujjb?=
 =?us-ascii?Q?uRP2pvbofyoa9GVrOI+z46kGkRYroxy4PwkKgPlaHqk8V0Qmh/t3R2ajx44+?=
 =?us-ascii?Q?s6xkzuNp8V8zg/OME2zckAvDuz6dmcIGv/wes6iE6KKZb9vyAGn/JuPluuzL?=
 =?us-ascii?Q?CTijOUtHgQoqD0m+QfEJ190sVWt7hwtCPO3jPCjkmaDr/a5QCck38eI6/jnP?=
 =?us-ascii?Q?RXXVsYXdEUDPTF3VB5Icb4sBwYKGCnhk7TjmzVVa+ZEOXuy0vu8WZ+WtFG84?=
 =?us-ascii?Q?OK/T0sWtyuVwHWCXgU69bq4FlrRWY3Lvq0BhBCaX+b4uNKCCiIeK9kBAMyto?=
 =?us-ascii?Q?D5gSTKqrGi5FMoI1dUGhHSWgoB1b5Msq6GNuMJygxfL2Ia4t0Q7AKwCrV137?=
 =?us-ascii?Q?IZCSH8+CMpJKXEIDfdYr5Kk4crA4S9V6BLi9s+2x050bo93BTZYbqnQac28Z?=
 =?us-ascii?Q?o5jEV14VJ6xj0yUK2No/moX4rLNYQjshUq7nfzjL01RA5jp11LkbkVj2clua?=
 =?us-ascii?Q?tOk7Rg9zms0W0F05/q6D3AuGIlcMqmlPHkX6HEBNha5bX8S9qp9gYeuS39L/?=
 =?us-ascii?Q?8Uhm+ZWYHKIGgoyu1rIDBEG6W8zLwUbHP9tmCwUrfvk1g9UWWZGu8prLdmTL?=
 =?us-ascii?Q?RY/IBjm1hAg7wn86ROA15aXoEeo6SIAcWNvlQjjr4DGzpdTAQN6otVOfb8wr?=
 =?us-ascii?Q?CDnYL8mQvKq2vpYV29XotI4FXcGFOT8T6TEijRLv1iWdjaaaOlv5SUekk3OM?=
 =?us-ascii?Q?fMIeIpcVh6/kWwii9BO1IXqAgo9Sy7w4R9dwhGAJVNk+aDcFvldwr4g3bhHT?=
 =?us-ascii?Q?4CQqbgbhQN1l3n2xpadQLji7ZfAjmCwGXh75QTNrDCa6ON//OeRlL9/LIqBt?=
 =?us-ascii?Q?SEzJU1zJYfnfnrev4ja+yR6+YOg4z3sh0/gzA38JRAz3ldvsRfhIC+TeizlS?=
 =?us-ascii?Q?sThoHR2aT8L/iGEO6QYzBAedEbj+zLeKeDdslnJ85tINGz0dcWeD+HnIsDb4?=
 =?us-ascii?Q?mt0V28WUtPrkkFyScFtkr949ww91yf5yoQm47b8Jo5nUWdnsVR/tUmOURWwF?=
 =?us-ascii?Q?+WJsl5AtjN+yO9w+DBwU0JhpiBNgjkwzQHKVjcN8ekLQzY+Xk5i+1wIHKHEC?=
 =?us-ascii?Q?rEahhIcR5+mFL5bzPHBRoOcVN9MLjSePEAXB4OYd7FAirtAoDajoaR6oV4qJ?=
 =?us-ascii?Q?E7ieTQFcyAEDg8AHNUIBXRUo5uMKxDIl9hv/?=
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1P110MB1932.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f9cb387-68cd-4dcd-62ed-08de53a730a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2026 19:57:47.3823
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1539
Message-ID-Hash: HL46J2EY3JD3PGVL2KKJBVZF4UZXD2TE
X-Message-ID-Hash: HL46J2EY3JD3PGVL2KKJBVZF4UZXD2TE
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Using USRP B206mini with Octoclock 10MHz+PPS 
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N7X4CX7HPH5IJYV7BBEYPHKSMOLI6GII/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: David Raeman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Raeman <david@SynopticEngineering.com>
Content-Type: multipart/mixed; boundary="===============4590488594412820261=="

--===============4590488594412820261==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA1P110MB19324582F1B8CFDD8469BBA6B78FASA1P110MB1932NAMP_"

--_000_SA1P110MB19324582F1B8CFDD8469BBA6B78FASA1P110MB1932NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I have a project currently hosted on a USRP E320 that involves distributed =
signal coherence. During development I sometimes do over-the-wire testing u=
sing an Octoclock's 10MHz and PPS outputs to synchronize multiple radios on=
 the bench.

I'm starting to investigate the viability of rehosting this application on =
a USRP B206mini to reduce size and cost. As far as I can discern, this radi=
o only has a single port that can accept either a 10MHz reference input or =
a PPS input. Is it possible to somehow use the radio with both clock and PP=
S outputs from an Octoclock with out-of-the-box UHD? If not, would it be vi=
able for me to add a bit of FPGA logic and UHD tweaks such that software ca=
n specify a GPIO pin as the PPS input while using the SMA as the 10MHz inpu=
t? Or are there hardware or systems constraints that would preclude that ap=
proach?

Thanks!
David Raeman
Synoptic Engineering

--_000_SA1P110MB19324582F1B8CFDD8469BBA6B78FASA1P110MB1932NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hello,<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I have a project cu=
rrently hosted on a USRP E320 that involves distributed signal coherence. D=
uring development I sometimes do over-the-wire testing using an Octoclock&#=
8217;s 10MHz and PPS outputs to synchronize
 multiple radios on the bench.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I&#8217;m starting =
to investigate the viability of rehosting this application on a USRP B206mi=
ni to reduce size and cost. As far as I can discern, this radio only has a =
single port that can accept either a 10MHz
 reference input or a PPS input. Is it possible to somehow use the radio wi=
th both clock and PPS outputs from an Octoclock with out-of-the-box UHD? If=
 not, would it be viable for me to add a bit of FPGA logic and UHD tweaks s=
uch that software can specify a
 GPIO pin as the PPS input while using the SMA as the 10MHz input? Or are t=
here hardware or systems constraints that would preclude that approach?<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thanks!<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">David Raeman<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Synoptic Engineerin=
g<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_SA1P110MB19324582F1B8CFDD8469BBA6B78FASA1P110MB1932NAMP_--

--===============4590488594412820261==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4590488594412820261==--
