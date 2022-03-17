Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C09F4DC3ED
	for <lists+usrp-users@lfdr.de>; Thu, 17 Mar 2022 11:25:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 492BC385259
	for <lists+usrp-users@lfdr.de>; Thu, 17 Mar 2022 06:25:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=barkhauseninstitut.onmicrosoft.com header.i=@barkhauseninstitut.onmicrosoft.com header.b="iucckw3z";
	dkim-atps=neutral
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (mail-eopbgr130109.outbound.protection.outlook.com [40.107.13.109])
	by mm2.emwd.com (Postfix) with ESMTPS id EBC7F3851E5
	for <usrp-users@lists.ettus.com>; Thu, 17 Mar 2022 06:24:35 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nrM9RAeT7OToc9hoZW3QEaFL2Ev7affGrmKeYUeNQHVsNlxcoXnK/wyAbiQXqPuR7xmlmV356XBmY5jG16lJLs8S8nv+BnaTzKIozN1vk5KILnaAIYy7ERaWgCIRViR7euzWVQDNpg2xz7sOQnBd5n4kVw5whrab170qrAJxuJKaUEMumfhPqboCEhuOIfdb47N7Sw4hrdIwpXOu7Dm3XGP6CtEe2HfDd5PNMXLty5AptObPXaqtZl49CAqex5OEREDBvUhT2JSR3gy8tzH/4UEW6zzr3iMZOCh4bcpsv7eg+TBgE/CUFE4XskSxlKyGs3FZ2ilXXwA7RcpjwBTD4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HLw0xr8MM3q635v1SLMWM2WuuYEHfz10/+VsEw/rfSs=;
 b=PIa3U+6/+62nJBFuOnZHWOB/9p+q+3oPsYmaa58FoVh2xQzlT4N8T4vqRCgRMsXn92C0O3IeF3fiOulp75XaIjzgiNwtqTtwI8bvWMRm817YluFi4pEGsJjzDBUtEl5MOxeLec1FZV21Y4Mrj05BIvyayAU0UHdgmU9Or/x1kZLTVFnZnHXy9BN2J795HSyLX8Za40rgiu0+BZp3ZAd3xB7nTbPA5yxnCS6jwEo7M/g2z9cUwynp7zflcsSsfEZRJyPq3wXPd9fUZrqRHjChiWnv+7lNz+jV5ynTRj/P18a5BLqNUvaRjTQ/he5nxJz4cRloW3UJd610XfHhkgstPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=barkhauseninstitut.org; dmarc=pass action=none
 header.from=barkhauseninstitut.org; dkim=pass
 header.d=barkhauseninstitut.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=barkhauseninstitut.onmicrosoft.com;
 s=selector2-barkhauseninstitut-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HLw0xr8MM3q635v1SLMWM2WuuYEHfz10/+VsEw/rfSs=;
 b=iucckw3zUwLX5Y4S9s57+SZ4X95r5ulZc4MXeQneiBFAwIfk0k9sivVRBvrRK+yV6X7YekqiJsu5UeZPhLamNX1vs/f9xONoqqu5H3iIyeE3pFoWT9Wcf0Qb6dpdKpFRUjtLHMJsJaZmeB0/GTEBKV48eOngbSvvNA1LN0rnWH0=
Received: from AM8P250MB0107.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:36e::5)
 by AS8P250MB0203.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:37a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.17; Thu, 17 Mar
 2022 10:24:33 +0000
Received: from AM8P250MB0107.EURP250.PROD.OUTLOOK.COM
 ([fe80::999a:3abe:8443:5658]) by AM8P250MB0107.EURP250.PROD.OUTLOOK.COM
 ([fe80::999a:3abe:8443:5658%8]) with mapi id 15.20.5081.017; Thu, 17 Mar 2022
 10:24:33 +0000
From: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [X410] Change hostname
Thread-Index: AQHYOeij3PDN49hXmECqR9UdF3o/pg==
Date: Thu, 17 Mar 2022 10:24:33 +0000
Message-ID: 
 <AM8P250MB010739467356827A8617AFFB9B129@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-150, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 69b3aed5-3c87-5e80-1ce0-27cf343dffa8
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=barkhauseninstitut.org;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5be9c14f-714e-4a04-3188-08da08005441
x-ms-traffictypediagnostic: AS8P250MB0203:EE_
x-microsoft-antispam-prvs: 
 <AS8P250MB02031F3268E2D77EFB4C195E9B129@AS8P250MB0203.EURP250.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 V3JT/nzAs+Rlw46T7H5zplNUi2s5aq5hToWP2flNolFkS8YMDV7XdSGWSTFInQjgOwCalZ7XbPNmd4ANHuluXq5qQ4LM491AeCqCFAYrqwc8ULBDCaEqA/v4//H5hoyvbmI0vb3xUQmaGlMQB2UNTt6nvGF717cNsHY8ryr9EuOYkatiWIXWwydRtN1MTul5RnNMUkYN6OkGrl1yH/LwYdjJoCY7bh3LC7GKTGnbERJlGYHr+D39OEnCW4DasHmo+K0hSule5W115WIkQqM/VbeKg6ZI1uzyq6fGHWrutHYzMtRzOoirN1hC331gYM0sBFyjAnLAJAMujyGlHKOPKoUk5YZwReVRLDjAj5ISEAMceooIIVHe5dsTdt5YP0KKd7XSOIZG+NCIILY6NOquUe36BdrzKbx7pD8lfJIvBys6/48nEt882db9dwP9OST/3n51nuMhUnPA2qjoGEPMytsY2LSvlc4cpILKGc/26J2IStqZReYUi9xyuUlFbhPfoNV8xLhGtMUw8RruA8SwoQf0kqhfRhxOFMms4/y1g6tQ/2qOJbInKXtJzKYyAYoSMNXkFBvLleNWrwjZw4I2I6xpjfL9xxCdJYnIhJhkpXsUBkR/ypW00MBvBH0+3bCCvWRgUgjndy/w5rN9/XrXvaNCNpkIJkIW8eSUZrNZOCtL7livxiNrWTp0QJn3IgUhw8YeAPNmwaNpXO2xzKknMQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8P250MB0107.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(396003)(346002)(376002)(366004)(39830400003)(136003)(84040400005)(7696005)(6916009)(6506007)(38070700005)(316002)(66946007)(86362001)(55016003)(8676002)(66556008)(122000001)(66476007)(64756008)(9686003)(66446008)(33656002)(76116006)(91956017)(15974865002)(71200400001)(186003)(966005)(2906002)(26005)(8936002)(19627405001)(52536014)(44832011)(5660300002)(66574015)(83380400001)(508600001)(38100700002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?dyEjtvEkPlM9YHy48eG6KotxtA6vAeAo874PerekmPf9OS8nsX8tO7Ocvl?=
 =?iso-8859-1?Q?Y6lnnNYqpz2NXUKlW0Ns8G2+1hdMmqiY8WqMREPR/cR6CLshEp53bOaWba?=
 =?iso-8859-1?Q?gvpFIIWI1uzywDRM2USRaqjSb16c/8Tph/B+bg3R27BKZXz1A6go3cgHVP?=
 =?iso-8859-1?Q?rHBQ5ybiAtipSe/2gSL78MwslOu78NnSAwPgZ2StEmuUNITCE6ELN+qrz+?=
 =?iso-8859-1?Q?ThaDzzGOJLMKouxoThDi7iFGkAxcylV9wSE9zFCMODsXEv+L7YFmh3mMxD?=
 =?iso-8859-1?Q?NINRLWKbxz5ZYTdpYbKTq7+VGRdfiN80hxcDa5y7HvpsKsEQF2LGxZACUb?=
 =?iso-8859-1?Q?TcqhVkaK7sJzYPzOd5QGeiAS2W9ghfF1PhR9LBT+iaLgYEC6bHDlzn/Jah?=
 =?iso-8859-1?Q?rEnQUbkfgCcklFrbBWtfArT7Ph07ueG79dY7c8R0aEq3MrKRxI+VXh4Ijh?=
 =?iso-8859-1?Q?riiocZf1j4xbK7whzewh9lwTCiZxpu3gupczwwZReiRrt9cxJjYRNCAzzo?=
 =?iso-8859-1?Q?iCpYhrpXes55m6GxSpEczEPUrrzXRnwktVm7nFWLsGhSC9GIXfEFa8mBBA?=
 =?iso-8859-1?Q?3qpLbxpW0KibwlmbQ0mvCqXDDt5/kElRajPFEZY97wFNtw9CwadFWezzRM?=
 =?iso-8859-1?Q?mwqjrlthIkgcszYn0gwRMtlI3F92TPpaTGJsa0Jne7QJTk+qtoHglNASc3?=
 =?iso-8859-1?Q?P/uHKD2iBXHdAzVk0jZBhynPTfGRQq+m6flpDVgEDAPlAE/AYxbuSVLNY5?=
 =?iso-8859-1?Q?ZeoxlNAzb/lsYCEMNj4vlJQaD5uqFLanMaOdium19AKOPiwbBTphIDP2SF?=
 =?iso-8859-1?Q?Y4frr6pTy+oviBNFVNpmhrWjMUz9lYor3H+QHmJy8Rds8p0cCCNCntZxGV?=
 =?iso-8859-1?Q?G0lxKifx8PGd68MmsKcfR4fKDVziN5oPOD7rLmmBJIijN4PfXwPBiSHkYb?=
 =?iso-8859-1?Q?aTz3NerM1qKE+df7jZ6AbBW6vs2KGMrj1ETngMiX592kvt1ZswFgBGVtpd?=
 =?iso-8859-1?Q?4f3JfgVcp3MrqUp0jB577+gL7Z5BixxqvEVlAt5DVk2yv+ZdHb98DVfcl7?=
 =?iso-8859-1?Q?gua9QaHfUjuJhfh4eWUIKgKKL88sDDssKQztEU4GNbYkLN4Qx6GrhhASdx?=
 =?iso-8859-1?Q?lxd1hWTdBPCaj4PHTez4mQ6ZJAkPCTp1d+BJiy5Tm3s0zkzJg7kZUy0pI2?=
 =?iso-8859-1?Q?yVBXCLr0jsGqEKasxJHHavjQyp3lOGktfrd1v4e8AbNBsmCoLcWDkrabu4?=
 =?iso-8859-1?Q?yEwY8nqfHArpcsgStrUbEsvks7KmgQY11Bm5kji2CaBl/gQXveq6Hks1Xd?=
 =?iso-8859-1?Q?fwHmWmpO+u6zBgXRIJzvHc8LoDbj+m9X2/WO6W8Qj7ZcfFGZPrL7KyXRrf?=
 =?iso-8859-1?Q?sz6s0Hjc+ckdUCkn8G9bc5mQNeswKcDATCAsfLKDcD0ry4MW43cymTfJqC?=
 =?iso-8859-1?Q?suEJXeh9wCtp4Q/OBJPVzXsDJeCjCliphWPcJ84TwJt7za6C9hhqdKWVtq?=
 =?iso-8859-1?Q?L/S+5iyGy+YxrCZY1nwKDlAgNizLiUfcXHj7ieslCokSHaQSP/iOQ7v2uU?=
 =?iso-8859-1?Q?F/Kh9I0=3D?=
MIME-Version: 1.0
X-OriginatorOrg: barkhauseninstitut.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM8P250MB0107.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 5be9c14f-714e-4a04-3188-08da08005441
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2022 10:24:33.2614
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 00487172-018a-4fb0-b279-f756ac552ea7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2rC5s59I6Uy75m7Wl1PX9X7NK/VJ/+vIWe/67leqPcmmr6wD/o7IzEXXtUmAH7f9DZZKppN3zErZN3gwVYOGWU1lkP3BviMAmxY9iwRfU1q6mvE1UtavxqnxHG5CxxTG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P250MB0203
Message-ID-Hash: IDICUXL77M7D2GB6C55KABZQ3JZTDYQT
X-Message-ID-Hash: IDICUXL77M7D2GB6C55KABZQ3JZTDYQT
X-MailFrom: tobias.kronauer@barkhauseninstitut.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [X410] Change hostname
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UJSGAK6WL47CK4JTBM4OIESDE22NZ56U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1322740945140782188=="

--===============1322740945140782188==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM8P250MB010739467356827A8617AFFB9B129AM8P250MB0107EURP_"

--_000_AM8P250MB010739467356827A8617AFFB9B129AM8P250MB0107EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi altogether,

I have a rather dumb question: how can I change the hostname of the USRP? A=
ccording to the docs (being the standard way of changing host names in gene=
ral), I changed the file /etc/hostname and rebooted. However, after rebooti=
ng, the content of /etc/hostname is changed to its defaults.... Using hostn=
ame or hostnamectl in the command line does not work either. Can you help m=
e on that?

I am using a X410.

Thanks in advance,
Tobias


Barkhausen Institut
www.barkhauseninstitut.org


Barkhausen Institut gGmbH | Sitz: W=FCrzburger Stra=DFe 46, 01187 Dresden, =
Germany | Registergericht: Amtsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FC=
hrer: Prof. Dr. Gerhard Fettweis, Dr. Tim Hentschel | Vorsitzender der Gese=
llschafterdelegation: Dr. Andreas Handschuh

Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system. Information on data protection and =
processing of your personal information: https://barkhauseninstitut.org/dat=
a-privacy


--_000_AM8P250MB010739467356827A8617AFFB9B129AM8P250MB0107EURP_
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
Hi altogether,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I have a rather dumb question: how can I change the hostname of the USRP? A=
ccording to the docs (being the standard way of changing host names in gene=
ral), I changed the file /etc/hostname and rebooted. However, after rebooti=
ng, the content of /etc/hostname
 is changed to its defaults.... Using hostname or hostnamectl in the comman=
d line does not work either. Can you help me on that?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I am using a X410.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Thanks in advance,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Tobias<br>
</div>
<div>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<br>
<br>
<b>Barkhausen Institut</b> <br>
www.barkhauseninstitut.org <br>
<br>
</p>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<span style=3D"font-size:9pt;" lang=3D"de-DE">Barkhausen Institut gGmbH | S=
itz: W=FCrzburger Stra=DFe 46, 01187 Dresden, Germany | Registergericht: Am=
tsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FChrer: Prof. Dr. Gerhard Fettw=
eis, Dr. Tim Hentschel | Vorsitzender der Gesellschafterdelegation:
 Dr. Andreas Handschuh <br>
<br>
Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy
<br>
<br>
</span><span style=3D"font-size:9pt;" lang=3D"en-US">This email and any att=
achments are intended only for the person to whom this email is addressed a=
nd may contain confidential and/or privileged information. If you received =
this email in error, please do not disclose
 the contents to anyone, but notify the sender by return email and delete t=
his email (and any attachments) from your system. Information on data prote=
ction and processing of your personal information: https://barkhauseninstit=
ut.org/data-privacy
<br>
<br>
</span></p>
</div>
</body>
</html>

--_000_AM8P250MB010739467356827A8617AFFB9B129AM8P250MB0107EURP_--

--===============1322740945140782188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1322740945140782188==--
