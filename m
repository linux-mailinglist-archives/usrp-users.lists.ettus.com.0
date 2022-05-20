Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE4B52ECEC
	for <lists+usrp-users@lfdr.de>; Fri, 20 May 2022 15:15:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 98E0D384915
	for <lists+usrp-users@lfdr.de>; Fri, 20 May 2022 09:15:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653052547; bh=btNqkx7UKn8dr6TOem7Q/9yNLtLXAxgCRtYLLCHGW5s=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=mhitF/TkJrLwA7W6NhU25SLbclDGJGrIwzAxL2UpF4ms68Cexu+vVC+CmMfnFi72c
	 7v/IBo52EiMt6EbuU7scWrOWfHpgcobuDhpWu8/kUpBwrZ08WjSVJIxOr1gmB5sl9U
	 0v9v1yb0q5rKWCVLngo+rhXNYhCv+sDMstQOtO+u0fyHjegDcs8F+tusoHpTMCQT4s
	 YEMWsLHQ2gibvoRpMxI26yZm2f2Tpe53UqQvUUmYf/5ac3cICswRLjc8t7lRWnhD1Q
	 2XTe8qKPmBRFyHfVAiiyziVX8aP1qDY1olvXOnM/HlFLH9obccEOyFWhufMHPIK7n+
	 jSbouGJUbbjCw==
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-oln040092074081.outbound.protection.outlook.com [40.92.74.81])
	by mm2.emwd.com (Postfix) with ESMTPS id 2267D384AF9
	for <usrp-users@lists.ettus.com>; Fri, 20 May 2022 09:14:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="cTthEQT9";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nxrfGzjx7xWWdDU+rtf4Ff5+rMQj7PPm7fT+bLBmmae6+ohdskgUjVF1UK/s6r8SbYwQE5ij2o6XIf3bXfIe6BkUoMMB/xZ6GbYJF2EpqWShZ6BEZ2k5fKBkwuwSnNkpYoRhPGYLCzqiieOCxZi5Hz0RrwU6jaQO3h2fdNnPxxdwU6fn3PzAzp+L6sNxCP6K3RRJmFAxRbAMike42InPpGocagToWNlHclM9ZXVmM3+DlGW9iN+IlmzwISwRbLRT2CUUAiXtcrGMovasUv8GeP+tH4kUPOV35yW3fvjGJ2zgqp+UYNgbqVS6gr9006Yy90Qkab7t/TncBsgEs9Ak0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vU6Bzetk4x9bTpbiVO8/ZnbuEarRSB6VumBMgjBiDRI=;
 b=OQBf+VvhkhnYv8crxG2hda5aLaHO9Qz+AmcdU8mPOxvkL1dt6kb5ssYBf3qf5YtpQX+HPFPtSvK4HlZO6bqqGfmelNchgmGrG0JRMm60wrvyA/aur+HOTooBRf+wGXTk5eXupqfrRCldHLb/yg++Fnhns0gLePC9lV65s7QlFmfkmZ2Is4yG8swn8/1/nBEAxV+CdOMoV7jO+iY9OOBEBZrAeRxVzzJbKB002xkI2zf47WvHmA1KKBwKTHLf09gZ4IoESeAMupDhE2OdVor4qUG/3qaaVZXki3yy74G9cduiXV/vy9jVnlUYNV4NkJRUoOj5/whrMolVU34+kWCtTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vU6Bzetk4x9bTpbiVO8/ZnbuEarRSB6VumBMgjBiDRI=;
 b=cTthEQT9DWjIZD6FDxVjdzKZrLjTduJV01FGCLUUF3BHhQ/I8lKjxlqz0fkqBbxqZr7lZbGgtgEonESo5BB/5YTJYMLikR6m5mKmVhs6CDEX8DOHXp2IOl35nwbsSYZ9q/jeOAXeDPLu5VAfqrTIT7hV1jN7HU7IMFMD+QGsqnD2jGPqE+OP4ZtYeWMqoA0XbMBs6saYu6ZLhaFaTZB3pQyKuTS7U/AL/arNuE8W+HYygGSQYxluvDaye1DT5s1fZYhNYPsEOfHRAQ5x06UKLjmlh+7u8EgnXtiGLi14zGmQpXVLTWmdl6UYW2zPrBGdk2mjmFn/cpiDiNmXZwB1uQ==
Received: from AM8P191MB1155.EURP191.PROD.OUTLOOK.COM (2603:10a6:20b:1e0::24)
 by DB4P191MB2237.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:38e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.17; Fri, 20 May
 2022 13:14:34 +0000
Received: from AM8P191MB1155.EURP191.PROD.OUTLOOK.COM
 ([fe80::7c92:aea8:6501:e0ea]) by AM8P191MB1155.EURP191.PROD.OUTLOOK.COM
 ([fe80::7c92:aea8:6501:e0ea%2]) with mapi id 15.20.5273.017; Fri, 20 May 2022
 13:14:34 +0000
From: =?iso-8859-9?Q?O=F0uzhan_Gedikli?= <ouzan_ts@hotmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Receiver and Transmitter at the same time
Thread-Index: AQHYbErgTZVLUoyYs0i5FQ2NuzAyhg==
Date: Fri, 20 May 2022 13:14:34 +0000
Message-ID: 
 <AM8P191MB1155991673B8AE1E1B597A30F8D39@AM8P191MB1155.EURP191.PROD.OUTLOOK.COM>
Accept-Language: tr-TR, en-US
Content-Language: tr-TR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [EY27JVxHYSRe+SAud6e/W7ThK7WfUdmy]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8e7db1ed-c883-42c7-97e2-08da3a62af3f
x-ms-traffictypediagnostic: DB4P191MB2237:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 sUU7UKYTNDym94M/LOF3VHdjNjqeA/3B5tkRt8xzTKzvpEqcwDAqlmYa8FIGSBOZtuEUHWYxTcoZoH/NAyCGVAGi1Sz00ZBcSw7UQT4VNqk/jy/zgm96iHpZbaTmFagdEZXD1fM/bJQEhZCZ3/6RGRxAEG3HbiP2DIab9WKkO1HqenhfoEbzcNYjQHrzv6y3AoKFqU6iJWK/7O+mpinuApbKiLc0dsjhBDvrTqLmUiLzbQxCKsJRSp29BTWveFltTM6Ea9SwvArBLwBF46xuyVU5Kew1vBphlfgp5dwGSM1lw8AEdpdfpbEkKhrGsAZ3aRmkQaPO6vjzsEzyOQuW6X3miegKsrYc2FXiMXiUONZacla6j2GZxLCiiTuJk0GWTYZ0NOHddL4RJezmL7CkxjRCJRv3TjnAFDFjQ7BC/oqyGZG0sXIK3Iw6OA1aBdIIQ2qJ9dkXF/jNsn1j3klVe1WeKUQN/rTGBfjxTZ0/AUmtfxSjBHS91u8Vq5+ZFl65dGL/acFT/42Xsl3nQYIsmYbcXojF8qsEdFrecu7u7s9GOzK/QO8h0r1Pz6IOW14ECI0H1bffIuF6w1mxHEPEQQ==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-9?Q?XkqqItgB0SvYpDilyukB0DtU/eznPQ009iq6dUiE2/D1a5QvHlCHUqix8h?=
 =?iso-8859-9?Q?kq3kWK2Izvevl/2g8iVeR24HdGLCxNIau3QJ/z7n9KCMQUav3vBeAkmKRv?=
 =?iso-8859-9?Q?uGuJ/CGoz57xrLem/GDvZ5MId/A20yiIailLb+NEpbmnYDNM91GRFP+c6E?=
 =?iso-8859-9?Q?g3cHoPhsYEApYxiSBp/N26FVolyjBz4bOSDf9n1XeYAKLr+LHtHgQKnnQT?=
 =?iso-8859-9?Q?WQrDydsXCX4cMyqy2Tw6tyU7cCMQPfrFgCnRe6yExY58IZGgFGhxvDSyX6?=
 =?iso-8859-9?Q?kqJUnN1sjycKaHCsRq/Hq3QtsSzABkF68tgqsMt83EF6Ys2dC0cyQvH3is?=
 =?iso-8859-9?Q?4QKSUjPvDyVGdnunwmLeXNmoHBdPZQkhVZAOk1AghDzRnpeW0v0DAzsp8R?=
 =?iso-8859-9?Q?D9OIV1rHh535634btaCP/t1ySdwHuMq+xl512tCe1watpAlkoBhCyxGWWX?=
 =?iso-8859-9?Q?6vrAaIZ7Z4QjynNoRkMuMJpYJcaHrJF2b7zdp2S5hyBvYLjNl80EJKIe24?=
 =?iso-8859-9?Q?lMBEksYFonnk8lU7Hm4IyzovvaeeTsqMxdPTlbbcCHxUVchOjaWnje5SiN?=
 =?iso-8859-9?Q?C2dHvamsSmODBAxwg0kYak5yxPD4B6X3T/b/M2UZb6ZCmFr0JwJIk7RC3H?=
 =?iso-8859-9?Q?eYNC/Yj+Wmbq/E8jEBzbkx8NSJnd5e8kW6Ci88TUspv96k8XZgiIw1fLCF?=
 =?iso-8859-9?Q?tM2Rf+n1NMKTqsSbLRBZGC8qD5KN3BKex8+Umu4Lu4cYkNTYmaaTRSD5W5?=
 =?iso-8859-9?Q?X0p5lhFMkOUep6lz4wp44LN88T8YUwCkrU0LIl2QnU8vh1eUqpNXh5AUjk?=
 =?iso-8859-9?Q?poEvMrvPObWFSpstzqVniAb7iM3F4Ung7VSKLDxZHxbnQ4HdxR7qYIjM3E?=
 =?iso-8859-9?Q?a3cSlxQcUdoG1N57TbkMSjZ/BId507iKzF0Z739vRbuezacNc2p1h6fNFk?=
 =?iso-8859-9?Q?107lQiv9/emsQGSka3oZShD4mHbbZRQE+sHwpYFpqupcZHJVw/EJKLTIlQ?=
 =?iso-8859-9?Q?wpwKOD0JaeyZXawgTPBUEKRpXbkfgRi4EhvaICW2rV9RSa2SgGhLh8zNZC?=
 =?iso-8859-9?Q?cgGUw7or18ny3noHg60tl5RnRRCmAbN8PeZy6bYcVusf6tDHUjIkwV0Dv8?=
 =?iso-8859-9?Q?Bqa/s4GDXx+ryMA3beD94Fbcue8zPFnAYOHasXtQMHJGB0HS03SoOWTWIV?=
 =?iso-8859-9?Q?q/OPXnhkbzrLTAwhUP6wF2Z2Eh3WKf6cw0UWJGeV77CBSieaxUtYCJWilw?=
 =?iso-8859-9?Q?wF6V7XWI8y7ziJKtzn/yN+PmHqtfQ2V2qC5uGGcTdyX06R9KbezwPbzWio?=
 =?iso-8859-9?Q?owetFWcve0YmFKU7Q3EmZ3P0054Nx+ShWKDHuUUFoDFk4C9h2nfIN7hLAO?=
 =?iso-8859-9?Q?IX3n/OH0CEYt2Cam0YW10puEg2HfAkpcxtR+RPx8TMOAitK5QQd2pZycjd?=
 =?iso-8859-9?Q?9Imrs1QSKVv8qFp/fIGxtR+YM5TeHdjLvrg2EwwVbgyFHWc/ZRyUCwnMLw?=
 =?iso-8859-9?Q?Q=3D?=
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-50200.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM8P191MB1155.EURP191.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e7db1ed-c883-42c7-97e2-08da3a62af3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2022 13:14:34.7576
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4P191MB2237
Message-ID-Hash: 4AHGFGZB45NYSIAZFPBU2EBVBJAGTJPZ
X-Message-ID-Hash: 4AHGFGZB45NYSIAZFPBU2EBVBJAGTJPZ
X-MailFrom: ouzan_ts@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Receiver and Transmitter at the same time
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CXUO6IERZRAMMFHBREO4KVEFLAS6ZAFF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8714274710096181951=="

--===============8714274710096181951==
Content-Language: tr-TR
Content-Type: multipart/alternative;
	boundary="_000_AM8P191MB1155991673B8AE1E1B597A30F8D39AM8P191MB1155EURP_"

--_000_AM8P191MB1155991673B8AE1E1B597A30F8D39AM8P191MB1155EURP_
Content-Type: text/plain; charset="iso-8859-9"
Content-Transfer-Encoding: quoted-printable

Hello, I have USRP B200 and i want to use my usrp as transmitter and receiv=
er at the same time. I mean one of the ports works as transmitter and the o=
ther one receiver. I have to transmit data from file and receive it to anot=
her file. Simply, I wonder, Is it possible on the same usrp. I am searching=
 for document or whatever else for learning. If you help me, I would be gra=
teful. Thanks.

--_000_AM8P191MB1155991673B8AE1E1B597A30F8D39AM8P191MB1155EURP_
Content-Type: text/html; charset="iso-8859-9"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
9">
</head>
<body>
<div>Hello, I have USRP B200 and i want to use my usrp as transmitter and r=
eceiver at the same time. I mean one of the ports works as transmitter and =
the other one receiver. I have to transmit data from file and receive it to=
 another file. Simply, I wonder,
 Is it possible on the same usrp. I am searching for document or whatever e=
lse for learning. If you help me, I would be grateful. Thanks.</div>
</body>
</html>

--_000_AM8P191MB1155991673B8AE1E1B597A30F8D39AM8P191MB1155EURP_--

--===============8714274710096181951==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8714274710096181951==--
