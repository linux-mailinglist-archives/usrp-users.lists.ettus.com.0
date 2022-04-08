Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0857C4F976F
	for <lists+usrp-users@lfdr.de>; Fri,  8 Apr 2022 15:57:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E68423850CA
	for <lists+usrp-users@lfdr.de>; Fri,  8 Apr 2022 09:57:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649426267; bh=pvu2Azp1UNGoVZ9bRkOpv+u+Ztb4BIiUVPttxHPkJ1s=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=hystydEeooV8PMVbSMdiZAFkrHjHYmLAYLzo5oL2L8kXaKG66+TzDyTG1tqKZlXpH
	 kh4y/jbSSMhF8PjTy8E826X6pSbiy+GURYp671KotLRGGUFHazVj/6EgSqorVifnnw
	 I8tAcQBOBSUWOsAyqGYiQJYj7MjfdykY1ptzAiVtsm9apKOomddPGMcT/XUzi25dQ/
	 a4bO18e9KnjPPjMBmm0WTgBn+lu+eLboaQ1+fWtJ08jZU6bKgKAOUVs3wwIc9DfsIw
	 nJoFQPFhtAM4pK0egIRf/Ez58cWU9MjgFd9GJrM1d1svot8Rl8CzIn4E56KiitQYR6
	 QJ8mFGXyXqdvg==
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2108.outbound.protection.outlook.com [40.107.21.108])
	by mm2.emwd.com (Postfix) with ESMTPS id D4DD2384F02
	for <usrp-users@lists.ettus.com>; Fri,  8 Apr 2022 09:56:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=barkhauseninstitut.onmicrosoft.com header.i=@barkhauseninstitut.onmicrosoft.com header.b="T7Xl1uKi";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VeIUwgx2ivaPqmrXliW/9IPX8sqznZqTB7VMXRO2P5kYcATlfuqMik5RThDzAjnD62nifZ7O2ynvMOQwqPfIY4NYhJ92nLiYlC6/biVTxlqiv0a4u8+NuSz0GcnUuTAv4CHZBbvkWhqf19Xn1MalJOr2Fi0VKr2GeA/Naeiytl9/QZv67dF9iqewLuVALkMIXSX08L8ydZT58mZIzpYPLYDleUQ/3cMC+dxjYDkL2R48e0ET1ysKGfrvHVnp5rGTrkHSKqiMXVxOSmiH5qjKGfgH/U/2CuC8LWS1UUnL6dXnKWO2pYQJ2ZxfxT6VH3HKf1qnnQp5BMMqXWc8qelYtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/3itTNKHTAKWjCPObQCrZpBGD7ivPHhTtFzWsYM2Cio=;
 b=KEvAnrMF6fH6p/XG4HE6y03nKxdvtwL1bq3JJoFBRgWXi55XPtbBTzTe8R8mF2yt+zDBN8JFk16XOMW+La/ali0PMAhFonJsPLQR8IXU4FIegalinpZMhCZAixcmjbC14xEcKX86wmyyLoBgvpCrb62g73nxx1I4sJsayFOa79YcLfFgMgRCMMPZBcQmeaS+ku7GtEeFa4kIX1VxeKVXt+ro0LZUNa+UgXwka7/K8NdMURik9gSv0s3qRPI4qvzdYlt4U0J87SHuv8JWVznEDprEl+MrAgarqUtXd00jZ5w4nnDnRVELd2QVZtppwf+MI2QGyqy5GbF2swee/7O6kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=barkhauseninstitut.org; dmarc=pass action=none
 header.from=barkhauseninstitut.org; dkim=pass
 header.d=barkhauseninstitut.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=barkhauseninstitut.onmicrosoft.com;
 s=selector2-barkhauseninstitut-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/3itTNKHTAKWjCPObQCrZpBGD7ivPHhTtFzWsYM2Cio=;
 b=T7Xl1uKiUuH/Kfpn+jWgh4co+VRblMp2S5ejCTHcfJ7/rEG1hEpiFh3zBFwzjqiUOV4Hj/WLIrdAR3pp12egBIHn+qmBqElbcirFOr4lc1Opg9N2Li8SF6jnRbNo96PBBcGi7Rz4pb7E1+Z8cO/3CoD0n98Mlc9eeqQ2s6F9Pk4=
Received: from AS4P250MB0799.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:582::16)
 by DU0P250MB0436.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:348::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.22; Fri, 8 Apr
 2022 13:56:40 +0000
Received: from AS4P250MB0799.EURP250.PROD.OUTLOOK.COM
 ([fe80::5118:6034:9c0:d1f7]) by AS4P250MB0799.EURP250.PROD.OUTLOOK.COM
 ([fe80::5118:6034:9c0:d1f7%3]) with mapi id 15.20.5144.019; Fri, 8 Apr 2022
 13:56:40 +0000
From: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [x410] Frequency Selectivity?
Thread-Index: AQHYS1AgNREl8Hk8I0eEw09Qd1e9qg==
Date: Fri, 8 Apr 2022 13:56:40 +0000
Message-ID: 
 <AS4P250MB07996EB3B5E9CFB8EFBD4D969BE99@AS4P250MB0799.EURP250.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-150, en-US
Content-Language: de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 7ca5b95e-8587-b74c-8079-f69392ad3201
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=barkhauseninstitut.org;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f8f94aa8-f87f-4570-7479-08da19679b6c
x-ms-traffictypediagnostic: DU0P250MB0436:EE_
x-microsoft-antispam-prvs: 
 <DU0P250MB04369DEF0AFC5BCEA5A444E09BE99@DU0P250MB0436.EURP250.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 pr5X6FHJzBAgb/2w3YhkjOPq5rc4eORu7i7WF2WphTvrmgGU050reXmBaocfOvu8CJkXfxgPbyC+R7cXQ+f8o73rcotYcdKNSoxZ5rXhIapVzvz0lWijoB47PVFMoLcZb8uvdyWGU2sf7d/8jK23K+WfitEi6CLsJhJ3NjvdepzL2MmXW4KYmsAUWRRoplY4zFwvAlZv8B+iNeglXHKeuCZo2GjSxas0ymguLO+dYAftv+Y3/nBouvYdCec6TTSPp9Br23joh/PjHaw/omg7GrhIH22R9vkvAT1UYGhVLD+fbxTHFXowkYLcz03plnFG+GsZ7LCYsjtIK3/TKuf3OHSHzzCMx6ri4ocdOXOzTMxH+/u3Wz5RKEQ3ADTNM82/0Z0Kbb5OqNt7vbqHNMplF5LqOR4ruHRPrIM7MS09h7CasLA/FQWqG4Z5kerIlPbns2BZbem67pcAT8sqqC67knMWbCEQ513dYTdD/UrFhpArWZ9BpnARvZQXXl2LbmHdYKmM6GBLSQZWgj+5n5bru0buSR8PQv8ZJHoK/UfWXdKq1+EUFu240coWnQg8okEQeylTWDIpwDhWHZ1pRUG0if2mcj9J0eOPq5APbPmUjtQo5qYzUt18F7DMHOvjixNwLu5IHzCz66IekhxNHMt7bnyFlhZ/2EzMsTFqOWFicYtspuKXpl7JL95U8J6U/dMw4/6DPCpUiMDlVhlBrVX9Zw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4P250MB0799.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(396003)(136003)(39830400003)(346002)(366004)(376002)(84040400005)(2906002)(91956017)(76116006)(15974865002)(55016003)(508600001)(966005)(6916009)(99936003)(122000001)(44832011)(8676002)(66946007)(38070700005)(66556008)(64756008)(66446008)(38100700002)(66476007)(8936002)(5660300002)(52536014)(83380400001)(66574015)(9686003)(19627405001)(316002)(6506007)(7696005)(26005)(186003)(71200400001)(86362001)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?u5J/CUQBXwAaYAgn00SDjwo55hQAcj+vmRe2HsKTZJBJyDJO7vEiqYmyYD?=
 =?iso-8859-1?Q?Qjjk66WBW3gF358XU0T/mOb/1RGVEAKYzXOz07eue1hOlerOOPYRjj9o2s?=
 =?iso-8859-1?Q?057BtKI3v/zkbjwn5KnD0RzLHVUGwp+XNwHfUIdqvVifL1QBcYWTfY54KS?=
 =?iso-8859-1?Q?31dccWO1zziYNx7QHzwkrR+kdo3YWCMeqVUZtvua1awFStGv/an4P6O2yY?=
 =?iso-8859-1?Q?6OmtjTq3+tvljD1Ky8TrMfmbF9HDC0Ohpf2YeH0qYl0WGBlw/uWABJe2kX?=
 =?iso-8859-1?Q?82p0a1crrFTvCxiNLeAHM+5h/VbFra8fdWWVAAJ/OrHJasY82OwFjIVRWX?=
 =?iso-8859-1?Q?5Pe5pg06i+9/FXenEmA9qEgKZ6tltzGJ5uDx7XOmnQyZEMeeCK21CdP9MB?=
 =?iso-8859-1?Q?Rhn96Bn7uFc7stU4cJzZxrBhkTiG9tYckMJfQr2Pju2W3Yecn6YZvh5Ahz?=
 =?iso-8859-1?Q?XRnJIC7qnpkB3MD5FsfJk14It8dle9W93C7j+Lpe3geYMnvd6cZcHvTA6g?=
 =?iso-8859-1?Q?ln77MxbV5TxxtEFOM21Wy22+XQFfP6IRpT6mTzviUkI4kjLpoVi4WlnsMG?=
 =?iso-8859-1?Q?L4YfuU+A9AqQQlaCojEjbNebjvyXWAq6F75sHCkOhdQvDUsJYNkc1t9ZK2?=
 =?iso-8859-1?Q?JdHs5pw+2wHqoHSEZRcyVS4g2GmjUiQ3aDBgjBnunrHBXPSgnQbeIh/tpr?=
 =?iso-8859-1?Q?a/8AtOH1XEW0J5SEw37jCYY1Eq4g7KITsLmKh6EpA2MFBaMC+oBzSonwjD?=
 =?iso-8859-1?Q?001HME51Hd4ER1JlTNv48Cai4KKYsoqr+b/KxEvLn/smF3y3acofq7hSdF?=
 =?iso-8859-1?Q?QjIfjUmfQRocnxMESYq6Gh0LY9HHGuGx07tXPk1sR+wU5pV08w4n6SBgvv?=
 =?iso-8859-1?Q?DGKsVPKgpGmRbutjEULP+4rywvFo32N8iKAM4PaxJeCxS5xVbKE/h3aIAj?=
 =?iso-8859-1?Q?xlCb700O7CZw1w4/8VDGQJSG+QNgfDrvEEZiK6tn37NVjXx2I/sjhuH9SO?=
 =?iso-8859-1?Q?ck96l2+Jn8j3/USK2AEpYmoOApAb3ca60/eBZrzDTT/laaPR8kJjIBXpVv?=
 =?iso-8859-1?Q?5VVFgDn72cLXTlG7Tcj4H3LPja+1C4BeXYwP9aJpubtg5/ZGLA9Ld98RM+?=
 =?iso-8859-1?Q?/qBQLxLffzgcNMNNxt5vvbwsRDzpZx7vpGD8Db6wZSKT0FWXh0iQ3bRsBD?=
 =?iso-8859-1?Q?/ZfouGgwTvm/UcTnfZkH5DzBjLVYk17rGJwGObDMKKbTsbuPVUVVZokkox?=
 =?iso-8859-1?Q?Xqd/11JcFQEboPx99G3jyjCqsRVat5+o+PW0+xBYTEv3vIt0O32Lszazhr?=
 =?iso-8859-1?Q?J9+KWZrxE4fOmugoDoxAZh6DT8JWDLFQQk3c8PqYZuxC5RCfAQueQHRGCb?=
 =?iso-8859-1?Q?PJv98XHv2xpJcsCJ4Kh1XKHQcc2UKQkuNCT8e0HR9q3CXqQnu5sr9R9/t4?=
 =?iso-8859-1?Q?WWGfFUhABnaRaY8mIW1GBl/iCH/nWWDqPd9e080o6LIHCLbEzB23KjxJdm?=
 =?iso-8859-1?Q?TDk7Ov9v36L5ekTT/dE8TToPIxkPbVcmm8wOBaLBPPZlDwlijPmlnYj6zh?=
 =?iso-8859-1?Q?OPZQHzpHtSajwrU97l7tfHndfjgo8UHA9CShTPn7apqQOFntEdbmUscrMw?=
 =?iso-8859-1?Q?Iple0lOl6KgcfjKFXk2AhdF9E14JXcvbDz3aYcPCwKA0mMPjigguoXaBys?=
 =?iso-8859-1?Q?l48V33m7SwJdI4jvPoiZ44Naz1AvegYkjSbPkeIsKkkGmeB7DEqih85n3H?=
 =?iso-8859-1?Q?qeyPF9+VTx7EBGhzggpw6jvd/XKIzDrcgzWELJygRIZDmiqncKC1jpOlzA?=
 =?iso-8859-1?Q?dFmGypT1UUuzFe1VXuRcduq5aHHzbJ/ctZlj5KYx0J+uUCGK6hVi?=
Content-Type: multipart/mixed;
	boundary="_006_AS4P250MB07996EB3B5E9CFB8EFBD4D969BE99AS4P250MB0799EURP_"
MIME-Version: 1.0
X-OriginatorOrg: barkhauseninstitut.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS4P250MB0799.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f8f94aa8-f87f-4570-7479-08da19679b6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2022 13:56:40.5779
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 00487172-018a-4fb0-b279-f756ac552ea7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IfenV0NiNlBhAQogKUqdTuVTY5lIhovrDzqFT/fKuGx1MthRClsMu8meQqqxxs8Gd/Q7KR9cuDnNQaW76y2fO1FEcu4RIKDeMPRnL+6N7JLyBgSxP99lYPIGmexar8X8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0P250MB0436
Message-ID-Hash: LOFHTESBCWZY4FTA3SKHCCIMYVKM6BRW
X-Message-ID-Hash: LOFHTESBCWZY4FTA3SKHCCIMYVKM6BRW
X-MailFrom: tobias.kronauer@barkhauseninstitut.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [x410] Frequency Selectivity?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ABDGAYQH27YLHYVFNLAFR3R7DHJ7P2AH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--_006_AS4P250MB07996EB3B5E9CFB8EFBD4D969BE99AS4P250MB0799EURP_
Content-Type: multipart/related;
	boundary="_005_AS4P250MB07996EB3B5E9CFB8EFBD4D969BE99AS4P250MB0799EURP_";
	type="multipart/alternative"

--_005_AS4P250MB07996EB3B5E9CFB8EFBD4D969BE99AS4P250MB0799EURP_
Content-Type: multipart/alternative;
	boundary="_000_AS4P250MB07996EB3B5E9CFB8EFBD4D969BE99AS4P250MB0799EURP_"

--_000_AS4P250MB07996EB3B5E9CFB8EFBD4D969BE99AS4P250MB0799EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

we use a X410 and send 60k samples via localhost. We increase the frequency=
 within the frame every 6k samples. We observe a frequency selectivity of t=
he USRP. Can you help us on that? In the attachment [0], you can find the M=
WE (we tried to keep it as small as possible). Let us explain the problem i=
n the following plot:

[cid:8da814dd-5c1c-40b6-b1c3-5b63bbe2ae97]
In the left column, you can find the transmitted signal, in the right colum=
n the received signal. In the lower row, you see the spectrogram. One can c=
learly see that the signal gets attenuated, depending on the frequency. One=
 would expect the amplitude to remain constant.

The transmitted signal changes every 6k signal its frequency. Within these =
6k samples, we simply send complex exponentials. The frequencies are: [-25,=
 -19.44 -13.9,  -8.3, - 2.78   2.78   8.3  13.9, 19.4  25].
Rf config:
```cpp
     const double FS =3D 50e6;
    Config conf;
    conf.txAnalogFilterBw =3D 400e6;
    conf.rxAnalogFilterBw =3D 400e6;
    conf.txGain =3D 35;
    conf.rxGain =3D 35;
    conf.txCarrierFrequency =3D 2e9;
    conf.rxCarrierFrequency =3D 2e9;
    conf.txSamplingRate =3D FS;
    conf.rxSamplingRate =3D FS;
```
For different RfConfigs, the results are less distinct.

Kind regards,

Tobias

Attachments:

[0]: usrp_mwe.cpp


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


--_000_AS4P250MB07996EB3B5E9CFB8EFBD4D969BE99AS4P250MB0799EURP_
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
Hi all,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<div><br>
</div>
<div>we use a X410 and send 60k samples via localhost. We increase the freq=
uency within the frame every 6k samples. We observe a frequency selectivity=
 of the USRP. Can you help us on that? In the attachment [0], you can find =
the MWE (we tried to keep it as
 small as possible). Let us explain the problem in the following plot:</div=
>
<div><br>
</div>
<div><img style=3D"max-width: 100%;" class=3D"w-836 h-964" size=3D"39830" c=
ontenttype=3D"image/png" data-outlook-trace=3D"F:1|T:1" src=3D"cid:8da814dd=
-5c1c-40b6-b1c3-5b63bbe2ae97"><br>
</div>
<div>In the left column, you can find the transmitted signal, in the right =
column the received signal. In the lower row, you see the spectrogram. One =
can clearly see that the signal gets attenuated, depending on the frequency=
. One would expect the amplitude
 to remain constant.</div>
<div><br>
</div>
<div>The transmitted signal changes every 6k signal its frequency. Within t=
hese 6k samples, we simply send complex exponentials. The frequencies are: =
[-25, -19.44 -13.9, &nbsp;-8.3, - 2.78 &nbsp; 2.78 &nbsp; 8.3 &nbsp;13.9, 1=
9.4 &nbsp;25].</div>
<div>Rf config:</div>
<div>```cpp</div>
<div>&nbsp; &nbsp; &nbsp;const double FS =3D 50e6; </div>
<div>&nbsp; &nbsp; Config conf;</div>
<div>&nbsp; &nbsp; conf.txAnalogFilterBw =3D 400e6;</div>
<div>&nbsp; &nbsp; conf.rxAnalogFilterBw =3D 400e6;</div>
<div>&nbsp; &nbsp; conf.txGain =3D 35;</div>
<div>&nbsp; &nbsp; conf.rxGain =3D 35;</div>
<div>&nbsp; &nbsp; conf.txCarrierFrequency =3D 2e9;</div>
<div>&nbsp; &nbsp; conf.rxCarrierFrequency =3D 2e9;</div>
<div>&nbsp; &nbsp; conf.txSamplingRate =3D FS;</div>
<div>&nbsp; &nbsp; conf.rxSamplingRate =3D FS;</div>
<div>```</div>
<div>For different RfConfigs, the results are less distinct.</div>
<div><br>
</div>
Kind regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Tobias</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Attachments:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
[0]: usrp_mwe.cpp<br>
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

--_000_AS4P250MB07996EB3B5E9CFB8EFBD4D969BE99AS4P250MB0799EURP_--

--_005_AS4P250MB07996EB3B5E9CFB8EFBD4D969BE99AS4P250MB0799EURP_
Content-Type: image/png; name="frequency_selectivity.png"
Content-Description: frequency_selectivity.png
Content-Disposition: inline; filename="frequency_selectivity.png"; size=39830;
	creation-date="Fri, 08 Apr 2022 13:54:53 GMT";
	modification-date="Fri, 08 Apr 2022 13:54:53 GMT"
Content-ID: <8da814dd-5c1c-40b6-b1c3-5b63bbe2ae97>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAA0QAAAPECAYAAACOqfv2AAAAOXRFWHRTb2Z0d2FyZQBNYXRwbG90
bGliIHZlcnNpb24zLjUuMSwgaHR0cHM6Ly9tYXRwbG90bGliLm9yZy/YYfK9AAAACXBIWXMAAA9h
AAAPYQGoP6dpAACbA0lEQVR4nOzdd3hUVeL/8c+dlEkoSUBSCAZCU0SagsSgCC5ZgrIqVnBRyiKs
BXcxNthV6mpEsayKYqHoT10sK/YvihRrBAFZARFRQRRIQk0gSNqc3x+YMUMKSUim3ffreeYhc++5
95xJmJN85p5zrmWMMQIAAAAAG3L4ugEAAAAA4CsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAA
YFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSAC
AAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2
RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAA
AAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsE
IgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAA
YFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSAC
AAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2
RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAA
AAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsE
IgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAA
YFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSAC
AAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACcMK2bdsmy7K0YMECXzcFAGxpxYoVsixLK1as
8HVTgIBDIALq6PPPP9fUqVN14MABXzcFAAAAdUQgAuro888/17Rp0whEAAAAAYxABAAAgkZBQYGv
mwAgwBCIgDqYOnWqbr/9dklS27ZtZVmWLMvStm3bNH/+fFmWpXnz5nkcc++998qyLL333nvVnnv1
6tVKT09XixYtFBkZqbZt2+ovf/mLR5lZs2apT58+OumkkxQZGamePXvqtddeq3Auy7I0fvx4vfrq
q+rcubMiIyOVmpqq9evXS5KeeuopdejQQREREerfv7+2bdvmcXz//v3VpUsXrVmzRn369HG3Z86c
OTX6Pn377be64oor1Lx5c0VERKhXr1566623PMoUFxdr2rRp6tixoyIiInTSSSfp3HPP1ZIlS2pU
BwD7mjp1qizL0jfffKM///nPatasmc4991xNmTJFDodDS5cu9Sg/btw4hYeH63//+1+1512yZInO
PfdcxcTEqEmTJjr11FP1j3/8w72/qKhIkydPVs+ePRUdHa3GjRurb9++Wr58ucd5yuZXzpo1S7Nn
z1a7du3UqFEjDRw4UD///LOMMZoxY4ZOPvlkRUZG6pJLLtG+ffs8zpGcnKw//elP+uCDD9SjRw9F
RESoc+fOev3112v0PVq5cqUGDRqk6OhoNWrUSP369dNnn33mUebgwYOaMGGCkpOT5XQ6FRcXpz/+
8Y9au3ZtjeoAAp1ljDG+bgQQaL7++mvdd999+s9//qOHH35YLVq0kCRdeumlaty4sS666CJ98skn
Wr9+vZKSkrR+/Xr16tVL1157rZ599tkqz5ubm6tOnTopNjZWY8eOVUxMjLZt26bXX39d33zzjbtc
UlKSLr74YnXu3FlFRUVauHChVq1apXfeeUeDBw92l7MsS926ddP+/ft10003SZIyMzMVHR2tO+64
Q0888YTGjBmj/fv36/7779c555yjZcuWuY/v37+/tmzZopKSEl111VU65ZRT9Morr+jTTz/V3Llz
3UFt27Ztatu2rebPn69Ro0ZJkjZu3KhzzjlHrVq10siRI9W4cWO98sor+uSTT/Tf//5Xl156qSTp
n//8pzIzM3Xdddepd+/eys/P1+rVq9W9e3fdeeed9fMDAxCUpk6dqmnTpqlz587q2LGj0tPTZYzR
2LFjlZKSon379mn9+vVq2rSp3n//fQ0aNEgzZszQXXfdVeU5N27cqDPPPFPdunXTtddeK6fTqe+/
/16rVq3SRx99JEnas2ePunXrpquvvlodO3bUwYMHNXfuXP34449atWqVevToIen3vrFHjx4qKirS
ddddp3379un+++/XmWeeqT/84Q9asWKFhg0bpu+//16PPfaYRo0a5fGBWllIyc3N1fXXX6+4uDjN
nz9fGzdu1OLFi/XHP/5R0tFFFc4//3wtX75c/fv3lyQtW7ZMF1xwgXr27KkrrrhCDodD8+fP17ff
fqtPPvlEvXv3liQNHz5cr732msaPH6/OnTtr7969+vTTTzV06FANHz68AX5ygJ8xAOrkgQceMJLM
1q1bK+zbtWuXad68ufnjH/9oCgsLzRlnnGFat25t8vLyqj3nokWLjCTz5ZdfVlvu8OHDHs+LiopM
ly5dzB/+8AeP7ZKM0+n0aONTTz1lJJmEhASTn5/v3j5p0qQKr6dfv35GknnwwQfd2woLC02PHj1M
XFycKSoqMsYYs3XrViPJzJ8/311uwIABpmvXrubIkSPubS6Xy/Tp08d07NjRva179+5m8ODB1b5e
AKjMlClTjCRz9dVXV9i3fv16Ex4ebq677jqzf/9+06pVK9OrVy9TXFxc7TkffvhhI8ns3r27yjIl
JSWmsLDQY9v+/ftNfHy8+ctf/uLeVtY3xsbGmgMHDri3l/W33bt392jP1VdfbcLDwz36zTZt2hhJ
5r///a97W15enmnZsqU544wz3NuWL19uJJnly5cbY472tx07djTp6enG5XK5yx0+fNi0bdvW/PGP
f3Rvi46ONjfddFO13xcgmDFkDmgACQkJmj17tpYsWaK+fftq3bp1mjdvnqKioqo9LiYmRpL0zjvv
qLi4uMpykZGR7q/379+vvLw89e3bt9LhDQMGDFBycrL7eUpKiiTp8ssvV9OmTSts//HHHz2ODw0N
1V//+lf38/DwcP31r39Vbm6u1qxZU2n79u3bp2XLlumqq67SwYMHtWfPHu3Zs0d79+5Venq6tmzZ
oh07drhf88aNG7Vly5YqXy8AVOf666+vsK1Lly6aNm2ann32WaWnp2vPnj167rnnFBoaWu25yvrh
N998Uy6Xq9IyISEhCg8PlyS5XC7t27dPJSUl6tWrV6X98JVXXqno6Gj387L+9pprrvFoT0pKioqK
itz9Y5nExET3VXVJioqK0ogRI/TVV18pOzu70jauW7dOW7Zs0Z///Gft3bvX3Q8XFBRowIAB+vjj
j92vLyYmRitXrtTOnTur/d4AwYpABDSQYcOGafDgwVq1apXGjh2rAQMGHPeYfv366fLLL9e0adPU
okULXXLJJZo/f74KCws9yr3zzjs6++yzFRERoebNmys2NlZPPvmk8vLyKpyzdevWHs/LfiknJSVV
un3//v0e2xMTE9W4cWOPbaeccookVZhzVOb777+XMUZ33323YmNjPR5TpkyRdHR4oCRNnz5dBw4c
0CmnnKKuXbvq9ttv19dff13l9wgAjtW2bdtKt99+++3q3r27Vq1apSlTpqhz587HPdfQoUN1zjnn
6LrrrlN8fLyGDRumV155pUI4eu6559StWzf33MfY2Fi9++67DdIPd+jQQZZleWw7Xj9c9iHTyJEj
K/TDzz77rAoLC91tvf/++7VhwwYlJSWpd+/emjp1aoUPx4BgVv3HJADqbO/evVq9erUk6ZtvvpHL
5ZLDUf1nEJZl6bXXXtMXX3yht99+W++//77+8pe/6MEHH9QXX3yhJk2a6JNPPtHFF1+s8847T088
8YRatmypsLAwzZ8/Xy+99FKFc4aEhFRaV1XbTT1MKyz7w+G2225Tenp6pWU6dOggSTrvvPP0ww8/
6M0339QHH3ygZ599Vg8//LDmzJmj66677oTbAiD4lb9qXt6PP/7oDgZli8nU5Fwff/yxli9frnff
fVeLFy/Wyy+/rD/84Q/64IMPFBISohdeeEGjRo3SkCFDdPvttysuLk4hISHKzMzUDz/8UOGcvuyH
H3jgAfecpmM1adJEknTVVVepb9++WrRokT744AM98MADmjlzpl5//XVdcMEFJ9wWwN8RiIA6OvbT
umPddNNNOnjwoDIzMzVp0iQ98sgjysjIqNG5zz77bJ199tm655579NJLL2n48OFauHChrrvuOv33
v/9VRESE3n//fTmdTvcx8+fPP6HXU5WdO3eqoKDA4yrRd999J0keQ/HKa9eunSQpLCxMaWlpx62j
efPmGj16tEaPHq1Dhw7pvPPO09SpUwlEAOrM5XJp1KhRioqK0oQJE3Tvvffqiiuu0GWXXXbcYx0O
hwYMGKABAwbooYce0r333qt//vOfWr58udLS0vTaa6+pXbt2ev311z1+F5RdAa9vZVfdy9d1vH64
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
kQoPSs6mvn6lQPD7YZnUOPbo19u/kBLPlA7ulI7kSfFdjv4bGiFFRB0tu/cHKfkcqXGcFBImbXpb
atNHCm8s5f0i7VgrtU49er7EMySHQ4pJPvovfIZABABAfXrvtqP/bv1YeuxMz30/Lvd+ewDU3f+7
tPbHrJ7r+Tzr8er3S9LEn4+GKvgEcRQAAADwpUO5vm6BrRGIAAAAAF+yLF+3wNYIRAAAAIAvEYh8
ikAEAAAA+JLFn+S+xHc/yLDIKwAAQICxQnzdAlsjEJUze/ZsJScnKyIiQikpKVq1alW15V999VV1
6tRJERER6tq1q9577z2P/cYYTZ48WS1btlRkZKTS0tK0ZcuWhnwJABDU6rufBgC/wBUin+K7/5uX
X35ZGRkZmjJlitauXavu3bsrPT1dubmVr/rx+eef6+qrr9aYMWP01VdfaciQIRoyZIg2bNjgLnP/
/ffr0Ucf1Zw5c7Ry5Uo1btxY6enpOnLkiLdeFgAEjYbopwHALzi4QuRLljHcSluSUlJSdNZZZ+nx
x4+uFe9yuZSUlKSbb75ZEydOrFB+6NChKigo0DvvvOPedvbZZ6tHjx6aM2eOjDFKTEzUrbfeqttu
O3pPiry8PMXHx2vBggUaNmxYjdqVn5+v6Oho5eXlKSrq+OvT5+QfUcq9S2t07hO1LeLPXqkHsKvk
Iy95ra5t9w2ucdna9kv1pb776Zqo02udGl2zcgDwG3PbFllN4mpU1ld9cDDjxqySioqKtGbNGk2a
NMm9zeFwKC0tTVlZWZUek5WVpYyMDI9t6enpeuONNyRJW7duVXZ2ttLS0tz7o6OjlZKSoqysrCoD
UWFhoQoLC93P8/Pza/VaHAd36fGwR2t1DAD/5K338hpXR0k1D0S+0BD9dGVOtA8GgLooNRZ/lPsQ
33tJe/bsUWlpqeLj4z22x8fH69tvv630mOzs7ErLZ2dnu/eXbauqTGUyMzM1bdq0Wr+GMlbxIf0p
5Is6Hw/Af3jrvRwIwwQaop+uzIn2wUeKSxVR56MB2FWpCES+xPfez0yaNMnjE838/HwlJSXV+HhX
o1hNLh7ZEE2rYHrYc16pB7Arb72Xt5kEXeSVmvzfifbBEWHMAwBQey7DtH5fIhBJatGihUJCQpST
k+OxPScnRwkJCZUek5CQUG35sn9zcnLUsmVLjzI9evSosi1Op1NOp7MuL0OSZCJi9Hxpep2Prw0C
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
Uebrr79W3759FRERoaSkJN1///0V2vLqq6+qU6dOioiIUNeuXfXee+9VKJOZmamzzjpLTZs2VVxc
nIYMGaLNmzd7lDly5IhuuukmnXTSSWrSpIkuv/xy5eTkeJTZvn27Bg8erEaNGikuLk633367SkpK
PMqsWLFCZ555ppxOpzp06KAFCxZUaE9Nfk5PPvmkunXr5r5ZW2pqqv7v//7Pb9t7rPvuu0+WZWnC
hAl+2+apU6fKsiyPR6dOnfy2vWV27Niha665RieddJIiIyPVtWtXrV692r3f395/dkM/HBz9cKD3
wRL9cEO0V6IPDkoGQWPhwoUmPDzczJs3z2zcuNGMHTvWxMTEmJycnHqv67333jP//Oc/zeuvv24k
mUWLFnnsv++++0x0dLR54403zP/+9z9z8cUXm7Zt25pff/3VXWbQoEGme/fu5osvvjCffPKJ6dCh
g7n66qvd+/Py8kx8fLwZPny42bBhg/nPf/5jIiMjzVNPPeUu89lnn5mQkBBz//33m2+++cbcdddd
JiwszKxfv96jPenp6Wb+/Plmw4YNZt26debCCy80rVu3NocOHXKXuf76601SUpJZunSpWb16tTn7
7LNNnz593PtLSkpMly5dTFpamvnqq6/Me++9Z1q0aGEmTZrkLvPjjz+aRo0amYyMDPPNN9+Yxx57
zISEhJjFixe7y9T05/TWW2+Zd99913z33Xdm8+bN5h//+IcJCwszGzZs8Mv2lrdq1SqTnJxsunXr
Zv7+97/77fd4ypQp5vTTTze7du1yP3bv3u237TXGmH379pk2bdqYUaNGmZUrV5off/zRvP/+++b7
7793l/G395+d0A8HTz8cyH2wMfTDDdVe+uDgRCAKIr179zY33XST+3lpaalJTEw0mZmZDVrvsb+I
XS6XSUhIMA888IB724EDB4zT6TT/+c9/jDHGfPPNN0aS+fLLL91l/u///s9YlmV27NhhjDHmiSee
MM2aNTOFhYXuMnfeeac59dRT3c+vuuoqM3jwYI/2pKSkmL/+9a/Vtjk3N9dIMh999JG7fWFhYebV
V191l9m0aZORZLKysowxR//4cDgcJjs7213mySefNFFRUe423nHHHeb000/3qGvo0KEmPT3d/fxE
fk7NmjUzzz77rF+39+DBg6Zjx45myZIlpl+/fu5fxP7Y5ilTppju3btX+jr8sb3GHH0PnHvuuZW2
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
eLjatWvn3l/2b4cOHTzKhYaGuufhHK8u6ejQlIcfflgdO3aU0+lUixYtFBsbq6+//lp5eXkVyrdu
3drjeXR0tCQpKSmpwnaXy1XpOWpj1qxZat68udatW6dHH31UcXFxJ3Q+AA2Dfvh3gdgPt2rVSuHh
4ZXumzt3rg4fPqwtW7ZowYIFFQId4I+YQwTbueqqq9S3b18tWrRIH3zwgR544AHNnDlTr7/+ui64
4IJancvlcqlr16566KGHKt1/7C+cE+XNXyyV1XXvvffq7rvv1l/+8hfNmDFDzZs3l8Ph0IQJEypd
/aj8p6g12W5O8C4AX331lfuPn/Xr1+vqq68+ofMBaBj0w3Wvyx/64eq+BytWrHAvzrB+/XqlpqYe
93yArxGIYEstW7bUjTfeqBtvvFG5ubk688wzdc8993j8It65c6cKCgo8Pp387rvvJMn9aV779u31
v//9TwMGDKh2yEX79u3lcrn0zTffqEePHlWWq82wDUlq06aNJGnz5s1q166de3tRUZG2bt2qtLQ0
j3Lff/+9zj//fHe5kpISbdu2Td26datRfa+99prOP/98zZ0712P7gQMH1KJFi1q1vS6q+/4UFBRo
9OjR6ty5s/r06aP7779fl156qc4666wGbxeA2qMfPirQ+uHq7Nq1SzfffLMGDhzoXgwiPT3d/doB
f8WQOdhKaWlpheEAcXFxSkxMrLDcaElJiccclKKiIj311FOKjY1Vz549JR39lHPHjh165plnKtT1
66+/ulcgGjJkiBwOh6ZPn17hE7zyn8Y1bty40mVaq5KWlqbw8HA9+uijHueZO3eu8vLyNHjwYElS
r169dNJJJ+mZZ57xGB/+4osvav/+/TWuLyQkpMKnh6+++qp27NhR43OciMaNG1c5nOPOO+/U9u3b
9dxzz+mhhx5ScnKyRo4cWaNlZAF4D/1wYPfD1Rk7dqxcLpfmzp2rp59+WqGhoRozZswJX/0HGhpX
iGArBw8e1Mknn6wrrrhC3bt3V5MmTfThhx/qyy+/1IMPPuhRNjExUTNnztS2bdt0yimn6OWXX9a6
dev09NNPuyeoXnvttXrllVd0/fXXa/ny5TrnnHNUWlqqb7/9Vq+88oref/999erVSx06dNA///lP
zZgxQ3379tVll10mp9OpL7/8UomJicrMzJQk9ezZU08++aT+9a9/qUOHDoqLi3NPDK5MbGysJk2a
pGnTpmnQoEG6+OKLtXnzZj3xxBM666yzdM0110g6OpZ96tSpuvnmm/WHP/xBV111lbZt26YFCxao
ffv2Nf5E9E9/+pOmT5+u0aNHq0+fPlq/fr1efPFFj09FG1LPnj318ssvKyMjQ2eddZaaNGmiiy66
SMuWLdMTTzyhKVOmuJfsnT9/vvr376+7775b999/v1faB+D46IcDux+uyvz58/Xuu+9qwYIF7iXE
H3vsMV1zzTV68skndeONN/q0fUC1fLS6HeAThYWF5vbbbzfdu3c3TZs2NY0bNzbdu3c3TzzxhEe5
fv36mdNPP92sXr3apKammoiICNOmTRvz+OOPVzhnUVGRmTlzpjn99NON0+k0zZo1Mz179jTTpk0z
eXl5HmXnzZtnzjjjDHe5fv36mSVLlrj3Z2dnm8GDB5umTZt6LMNattzrl19+Wenrevzxx02nTp1M
WFiYiY+PNzfccIPZv39/hXKPPvqoadOmjXE6naZ3797ms88+Mz179jSDBg1ylylbqvXVV1+tcPyR
I0fMrbfealq2bGkiIyPNOeecY7Kysky/fv0qXTL22HNU9TqmTJliJJndu3dX+vrKHDp0yPz5z382
MTExRpJp06aNyc/PN23atDFnnnmmx1K2xhhzyy23GIfDYbKysqo9LwDvoR8O7H647OdS3s8//2yi
o6PNRRddVKH8pZdeaho3bmx+/PHHas8L+JJlDNcxgWP1799fe/bs0YYNG3zdlAblcrkUGxuryy67
rNLhJgDgK/TDALyFOUSATRw5cqTCOO7nn39e+/btU//+/X3TKACwEfphwD8xhwiwiS+++EK33HKL
rrzySp100klau3at5s6dqy5duujKK6/0dfMAIOjRDwP+iUAE2ERycrKSkpL06KOPat++fWrevLlG
jBih++67r8ob7AEA6g/9MOCfmEMEAAAAwLaYQwQAAADAtghEAAAAAGyLQAQAAADAtlhUwc+5XC7t
3LlTTZs2rfFdrAGgIRljdPDgQSUmJsrhCO7P1eiDAfgbO/XB3kIg8nM7d+5UUlKSr5sBABX8/PPP
Ovnkk33djAZFHwzAX9mhD/YWApGfa9q0qSTpXF2oUIV5p1LLIRmXd+ryh3q9zBEeLldRkfcr9sH3
1woJkSkt9WqdPmOT/7+SVKJifar33P1TMPNJHwwA1Sh1uPSJ621b9MHeQiDyc2VDNEIVplDLi4FI
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
YCwCEQAAAABjEYgAAAAAGItABAAAAMBYBCIAAAAAxiIQAQAAADAWgQgAAACAsQhEAAAAAIxFIAIA
AABgLAIRAAAAAGMRiAAAAAAYi0AEAAAAwFgEIgAAAADGIhABAAAAMBaBCAAAAICxCEQAAAAAjEUg
AgAAAGAsAhEAAAAAYxGIAAAAABiLQAQAAADAWAQiAAAAAMYiEAEAAAAwFoEIAAAAgLEIRAAAAACM
RSACAAAAYCwCEQAAAABjEYgAAAAAGItABAAAAMBYBCIAAAAAxiIQAQAAADAWgQgAAACAsQhEAAAA
AIxFIAIAAABgLAIRAAAAAGMRiAAAAAAYi0AEAAAAwFgEIgAAAADGIhABAAAAMBaBCAAAAICxCEQA
AAAAjEUgAgAAAGAsAhEAAAAAYxGIAAAAABiLQAQAAADAWAQiAAAAAMYiEAEAAAAwFoEIAAAAgLEI
RAAAAACMRSACAAAAYCwCEQAAAABjEYgAAAAAGItABAAAAMBYBCIAAAAAxiIQAQAAADAWgQgAAACA
sQhEAAAAAIxFIAIAAABgLAIRAAAAAGMRiAAAAAAYi0AEAAAAwFgEIgAAAADGIhABAAAAMBaBCAAA
AICxCEQAAAAAjEUgAgAAAGAsAhEAAAAAYxGIAAAAABiLQAQAAADAWAQiAAAAAMYiEAEAAAAwFoEI
AAAAgLEIRAAAAACMRSACAAAAYCwCEQAAAABjEYgAAAAAGItABAAAAMBYBCIAAAAAxiIQAQAAADAW
gQgAAACAsQhEAAAAAIxFIAIAAABgrP8HU+WAbzMC5TgAAAAASUVORK5CYII=

--_005_AS4P250MB07996EB3B5E9CFB8EFBD4D969BE99AS4P250MB0799EURP_--

--_006_AS4P250MB07996EB3B5E9CFB8EFBD4D969BE99AS4P250MB0799EURP_
Content-Type: text/x-c++src; name="usrp_mwe.cpp"
Content-Description: usrp_mwe.cpp
Content-Disposition: attachment; filename="usrp_mwe.cpp"; size=6202;
	creation-date="Fri, 08 Apr 2022 13:54:30 GMT";
	modification-date="Fri, 08 Apr 2022 13:55:03 GMT"
Content-Transfer-Encoding: base64

I2luY2x1ZGUgPGNocm9ubz4KI2luY2x1ZGUgPGNvbXBsZXg+CiNpbmNsdWRlIDxmc3RyZWFtPgoj
aW5jbHVkZSA8dGhyZWFkPgojaW5jbHVkZSA8dmVjdG9yPgoKI2luY2x1ZGUgInVoZC91c3JwL211
bHRpX3VzcnAuaHBwIgp0eXBlZGVmIHN0ZDo6Y29tcGxleDxmbG9hdD4gc2FtcGxlOwp0eXBlZGVm
IHN0ZDo6dmVjdG9yPHNhbXBsZT4gc2FtcGxlc192ZWM7CnVzaW5nIG5hbWVzcGFjZSBzdGQ6OmNo
cm9ubzsKCmNvbnN0IHNpemVfdCBTUEIgPSAyZTM7CmNvbnN0IHNpemVfdCBOT19TQU1QTEVTID0g
NjBlMzsKY29uc3Qgc2l6ZV90IE5PX1BBQ0tBR0VTID0gTk9fU0FNUExFUyAvIFNQQjsKY29uc3Qg
ZG91YmxlIFBJID0gc3RkOjphY29zKC0xKTsKY29uc3Qgc3RkOjpjb21wbGV4PGRvdWJsZT4gSiA9
IHNhbXBsZSgwLCAxKTsKZG91YmxlIFNFTkRfVElNRSA9IDQuZjsKCnN0cnVjdCBDb25maWcgewog
ICAgZmxvYXQgdHhTYW1wbGluZ1JhdGUsIHJ4U2FtcGxpbmdSYXRlOwogICAgZmxvYXQgdHhDYXJy
aWVyRnJlcXVlbmN5LCByeENhcnJpZXJGcmVxdWVuY3k7CiAgICBmbG9hdCB0eEFuYWxvZ0ZpbHRl
ckJ3LCByeEFuYWxvZ0ZpbHRlckJ3OwogICAgZmxvYXQgdHhHYWluLCByeEdhaW47Cn07CnN0ZDo6
b2ZzdHJlYW0gY3JlYXRlQ3N2KGNvbnN0IHN0ZDo6c3RyaW5nICZmaWxlbmFtZSkgewogICAgc3Rk
Ojpjb3V0IDw8ICJTdG9yaW5nIHNhbXBsZXMgdG8gIiA8PCBmaWxlbmFtZSA8PCBzdGQ6OmVuZGw7
CiAgICBzdGQ6Om9mc3RyZWFtIGNzdlN0cmVhbShmaWxlbmFtZSk7CiAgICBjc3ZTdHJlYW0gPDwg
InJlYWwsaW1hZyIgPDwgc3RkOjplbmRsOwogICAgcmV0dXJuIGNzdlN0cmVhbTsKfQoKdm9pZCBk
dW1wU2FtcGxlcyhjb25zdCBzdGQ6OnZlY3RvcjxzYW1wbGVzX3ZlYz4gJnNhbXBsZXMsCiAgICAg
ICAgICAgICAgICAgc3RkOjpvZnN0cmVhbSAmc3RyZWFtKSB7CiAgICBjb25zdCBzYW1wbGVzX3Zl
YyAmc2FtcGxlc0ZpcnN0Q2hhbm5lbCA9IHNhbXBsZXNbMF07CiAgICBmb3IgKHNpemVfdCBzYW1w
bGVJZHggPSAwOyBzYW1wbGVJZHggPCBOT19TQU1QTEVTOyBzYW1wbGVJZHgrKykgewogICAgICAg
IGNvbnN0IHN0ZDo6Y29tcGxleDxmbG9hdD4gJnNhbXBsZSA9IHNhbXBsZXNGaXJzdENoYW5uZWxb
c2FtcGxlSWR4XTsKICAgICAgICBzdHJlYW0gPDwgc2FtcGxlLnJlYWwoKSA8PCAiLCIgPDwgc2Ft
cGxlLmltYWcoKSA8PCBzdGQ6OmVuZGw7CiAgICB9Cn0KCnN0ZDo6dmVjdG9yPHNhbXBsZXNfdmVj
PiBjcmVhdGVXYXZlZm9ybShjb25zdCBpbnQgbm9TaWduYWxzLAogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgY29uc3QgZG91YmxlIGZTdGFydCwgY29uc3QgZG91YmxlIGZT
dG9wLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3QgZG91Ymxl
IGZTYW1wbGluZykgewogICAgc3RkOjp2ZWN0b3I8c2FtcGxlc192ZWM+IHNhbXBsZXM7CiAgICBz
YW1wbGVzX3ZlYyBzYW1wbGVzRmlyc3RDaGFubmVsKE5PX1NBTVBMRVMsIHNhbXBsZSgwLCAwKSk7
CiAgICBkb3VibGUgc3RlcFNpemUgPSAoZlN0b3AgLSBmU3RhcnQpIC8gKG5vU2lnbmFscyAtIDEp
OwogICAgaW50IHpvaExlbmd0aCA9IE5PX1NBTVBMRVMgLyBub1NpZ25hbHM7CiAgICBpbnQgZklk
eCA9IDA7CiAgICBkb3VibGUgZiA9IDA7CiAgICBkb3VibGUgdCA9IDA7CiAgICBmb3IgKHNpemVf
dCBzYW1wbGVJZHggPSAwOyBzYW1wbGVJZHggPCBOT19TQU1QTEVTOyBzYW1wbGVJZHgrKykgewog
ICAgICAgIGlmIChzYW1wbGVJZHggPiAwICYmIHNhbXBsZUlkeCAlIHpvaExlbmd0aCA9PSAwKSBm
SWR4Kys7CiAgICAgICAgZiA9IGZTdGFydCArIGZJZHggKiBzdGVwU2l6ZTsKICAgICAgICB0ID0g
c2FtcGxlSWR4IC8gZlNhbXBsaW5nOwogICAgICAgIHNhbXBsZXNGaXJzdENoYW5uZWxbc2FtcGxl
SWR4XSA9IHN0ZDo6ZXhwKEogKiAyLjAgKiBQSSAqIGYgKiB0KTsKICAgIH0KICAgIHNhbXBsZXMu
ZW1wbGFjZV9iYWNrKHNhbXBsZXNGaXJzdENoYW5uZWwpOwogICAgcmV0dXJuIHNhbXBsZXM7Cn0K
dm9pZCBzZXRSZkNvbmZpZyhjb25zdCBDb25maWcgJmNvbmYsIHVoZDo6dXNycDo6bXVsdGlfdXNy
cDo6c3B0ciB1c3JwRGV2aWNlKSB7CiAgICAvLyBjb25maWd1cmUgdHJhbnNtaXR0ZXIKICAgIHVz
cnBEZXZpY2UtPnNldF90eF9yYXRlKGNvbmYudHhTYW1wbGluZ1JhdGUpOwogICAgdXNycERldmlj
ZS0+c2V0X3R4X3N1YmRldl9zcGVjKHVoZDo6dXNycDo6c3ViZGV2X3NwZWNfdCgiQTowIiksIDAp
OwogICAgdWhkOjp0dW5lX3JlcXVlc3RfdCB0eFR1bmVSZXF1ZXN0KGNvbmYudHhDYXJyaWVyRnJl
cXVlbmN5KTsKICAgIHVzcnBEZXZpY2UtPnNldF90eF9mcmVxKHR4VHVuZVJlcXVlc3QsIDApOwog
ICAgdXNycERldmljZS0+c2V0X3R4X2dhaW4oY29uZi50eEdhaW4sIDApOwogICAgdXNycERldmlj
ZS0+c2V0X3R4X2JhbmR3aWR0aChjb25mLnR4QW5hbG9nRmlsdGVyQncsIDApOwoKICAgIC8vIGNv
bmZpZ3VyZSByZWNlaXZlcgogICAgdXNycERldmljZS0+c2V0X3J4X3JhdGUoY29uZi5yeFNhbXBs
aW5nUmF0ZSk7CiAgICB1c3JwRGV2aWNlLT5zZXRfcnhfc3ViZGV2X3NwZWModWhkOjp1c3JwOjpz
dWJkZXZfc3BlY190KCJBOjAiKSwgMCk7CiAgICB1aGQ6OnR1bmVfcmVxdWVzdF90IHJ4VHVuZVJl
cXVlc3QoY29uZi5yeENhcnJpZXJGcmVxdWVuY3kpOwogICAgdXNycERldmljZS0+c2V0X3J4X2Zy
ZXEocnhUdW5lUmVxdWVzdCwgMCk7CiAgICB1c3JwRGV2aWNlLT5zZXRfcnhfZ2Fpbihjb25mLnJ4
R2FpbiwgMCk7CiAgICB1c3JwRGV2aWNlLT5zZXRfcnhfYmFuZHdpZHRoKGNvbmYucnhBbmFsb2dG
aWx0ZXJCdywgMCk7CgogICAgdXNycERldmljZS0+c2V0X3N5bmNfc291cmNlKCJpbnRlcm5hbCIs
ICJpbnRlcm5hbCIpOwp9Cgp2b2lkIHNldFRpbWVUb1plcm9OZXh0UHBzKHVoZDo6dXNycDo6bXVs
dGlfdXNycDo6c3B0ciB1c3JwRGV2aWNlKSB7CiAgICB1c3JwRGV2aWNlLT5zZXRfdGltZV9uZXh0
X3Bwcyh1aGQ6OnRpbWVfc3BlY190KDAuZikpOwogICAgLy8gd2FpdCBmb3IgbmV4dCBwcHMKICAg
IGNvbnN0IHVoZDo6dGltZV9zcGVjX3QgbGFzdFBwc1RpbWUgPSB1c3JwRGV2aWNlLT5nZXRfdGlt
ZV9sYXN0X3BwcygpOwogICAgd2hpbGUgKGxhc3RQcHNUaW1lID09IHVzcnBEZXZpY2UtPmdldF90
aW1lX2xhc3RfcHBzKCkpIHsKICAgIH0KfQoKdm9pZCByZWNlaXZlKHN0ZDo6dmVjdG9yPHNhbXBs
ZXNfdmVjPiAmYnVmZmVyLAogICAgICAgICAgICAgdWhkOjpyeF9zdHJlYW1lcjo6c3B0ciByeFN0
cmVhbWVyKSB7CiAgICB1aGQ6OnN0cmVhbV9jbWRfdCBzdHJlYW1DbWQgPQogICAgICAgIHVoZDo6
c3RyZWFtX2NtZF90OjpTVFJFQU1fTU9ERV9OVU1fU0FNUFNfQU5EX0RPTkU7CiAgICBzdHJlYW1D
bWQudGltZV9zcGVjID0gdWhkOjp0aW1lX3NwZWNfdChTRU5EX1RJTUUpOwogICAgc3RyZWFtQ21k
Lm51bV9zYW1wcyA9IE5PX1NBTVBMRVM7CiAgICBzdHJlYW1DbWQuc3RyZWFtX25vdyA9IGZhbHNl
OwogICAgcnhTdHJlYW1lci0+aXNzdWVfc3RyZWFtX2NtZChzdHJlYW1DbWQpOwoKICAgIHVoZDo6
cnhfbWV0YWRhdGFfdCBtZFJ4OwogICAgZG91YmxlIHRpbWVvdXQgPSBTRU5EX1RJTUU7CiAgICBm
b3IgKHNpemVfdCBwYWNrYWdlSWR4ID0gMDsgcGFja2FnZUlkeCA8IE5PX1BBQ0tBR0VTOyBwYWNr
YWdlSWR4KyspIHsKICAgICAgICByeFN0cmVhbWVyLT5yZWN2KHtidWZmZXJbMF0uZGF0YSgpICsg
cGFja2FnZUlkeCAqIFNQQn0sIFNQQiwgbWRSeCwKICAgICAgICAgICAgICAgICAgICAgICAgIHRp
bWVvdXQpOwogICAgICAgIHRpbWVvdXQgPSAwLjFmOwogICAgfQp9Cgp2b2lkIHRyYW5zbWl0KHVo
ZDo6dHhfc3RyZWFtZXI6OnNwdHIgdHhTdHJlYW1lciwKICAgICAgICAgICAgICB1aGQ6OnVzcnA6
Om11bHRpX3VzcnA6OnNwdHIgdXNycERldmljZSwKICAgICAgICAgICAgICBzdGQ6OnZlY3Rvcjxz
YW1wbGVzX3ZlYz4gJmJ1ZmZlcikgewogICAgLy8gc3BlY2lmaXkgb24gc3BlY2lmaWNhdGlvbnMg
b2YgaG93IHRvIHN0cmVhbSB0aGUgY29tbWFuZAogICAgdWhkOjp0eF9tZXRhZGF0YV90IG1kVHg7
CiAgICBtZFR4LnN0YXJ0X29mX2J1cnN0ID0gdHJ1ZTsKICAgIG1kVHguZW5kX29mX2J1cnN0ID0g
ZmFsc2U7CiAgICBtZFR4Lmhhc190aW1lX3NwZWMgPSB0cnVlOwoKICAgIG1kVHgudGltZV9zcGVj
ID0gdWhkOjp0aW1lX3NwZWNfdChTRU5EX1RJTUUpOwoKICAgIGZvciAoc2l6ZV90IHBhY2thZ2VJ
ZHggPSAwOyBwYWNrYWdlSWR4IDwgTk9fUEFDS0FHRVM7IHBhY2thZ2VJZHgrKykgewogICAgICAg
IHR4U3RyZWFtZXItPnNlbmQoe2J1ZmZlclswXS5kYXRhKCkgKyBwYWNrYWdlSWR4ICogU1BCfSwg
U1BCLCBtZFR4LAogICAgICAgICAgICAgICAgICAgICAgICAgMC4xZik7CiAgICAgICAgbWRUeC5z
dGFydF9vZl9idXJzdCA9IGZhbHNlOwogICAgfQogICAgbWRUeC5lbmRfb2ZfYnVyc3QgPSB0cnVl
OwogICAgdHhTdHJlYW1lci0+c2VuZCgiIiwgMCwgbWRUeCk7CiAgICBzdGQ6OnRoaXNfdGhyZWFk
OjpzbGVlcF9mb3IoCiAgICAgICAgc3RkOjpjaHJvbm86OnNlY29uZHMoc3RhdGljX2Nhc3Q8aW50
PihTRU5EX1RJTUUpICsgMikpOwp9CgppbnQgbWFpbigpIHsKICAgIGNvbnN0IGRvdWJsZSBGUyA9
IDUwZTY7CiAgICBDb25maWcgY29uZjsKICAgIGNvbmYudHhBbmFsb2dGaWx0ZXJCdyA9IDQwMGU2
OwogICAgY29uZi5yeEFuYWxvZ0ZpbHRlckJ3ID0gNDAwZTY7CiAgICBjb25mLnR4R2FpbiA9IDM1
OwogICAgY29uZi5yeEdhaW4gPSAzNTsKICAgIGNvbmYudHhDYXJyaWVyRnJlcXVlbmN5ID0gMmU5
OwogICAgY29uZi5yeENhcnJpZXJGcmVxdWVuY3kgPSAyZTk7CiAgICBjb25mLnR4U2FtcGxpbmdS
YXRlID0gRlM7CiAgICBjb25mLnJ4U2FtcGxpbmdSYXRlID0gRlM7CgogICAgdWhkOjp1c3JwOjpt
dWx0aV91c3JwOjpzcHRyIHVzcnBEZXZpY2UgPQogICAgICAgIHVoZDo6dXNycDo6bXVsdGlfdXNy
cDo6bWFrZSh1aGQ6OmRldmljZV9hZGRyX3QoImFkZHI9bG9jYWxob3N0IikpOwoKICAgIHNldFJm
Q29uZmlnKGNvbmYsIHVzcnBEZXZpY2UpOwogICAgLy8gY3JlYXRlIHN0cmVhbWVyCiAgICB1aGQ6
OnN0cmVhbV9hcmdzX3QgdHhTdHJlYW1BcmdzKCJmYzMyIiwgInNjMTYiKTsKICAgIHR4U3RyZWFt
QXJncy5jaGFubmVscyA9IHN0ZDo6dmVjdG9yPHNpemVfdD4oezB9KTsKICAgIGF1dG8gdHhTdHJl
YW1lciA9IHVzcnBEZXZpY2UtPmdldF90eF9zdHJlYW0odHhTdHJlYW1BcmdzKTsKICAgIHVoZDo6
c3RyZWFtX2FyZ3NfdCByeFN0cmVhbUFyZ3MoImZjMzIiLCAic2MxNiIpOwogICAgcnhTdHJlYW1B
cmdzLmNoYW5uZWxzID0gc3RkOjp2ZWN0b3I8c2l6ZV90Pih7MH0pOwogICAgYXV0byByeFN0cmVh
bWVyID0gdXNycERldmljZS0+Z2V0X3J4X3N0cmVhbShyeFN0cmVhbUFyZ3MpOwogICAgLy8gY3Jl
YXRlIGJ1ZmZlcnMgZm9yIHNpZ25hbHMKICAgIHN0ZDo6dmVjdG9yPHNhbXBsZXNfdmVjPiB0cmFu
c21pdHRlZFNhbXBsZXMgPQogICAgICAgIGNyZWF0ZVdhdmVmb3JtKDEwLCAtRlMgLyAyLCBGUyAv
IDIsIEZTKTsKICAgIHN0ZDo6dmVjdG9yPHNhbXBsZXNfdmVjPiByZWNlaXZlZFNhbXBsZXMoCiAg
ICAgICAge3NhbXBsZXNfdmVjKE5PX1NBTVBMRVMsIHNhbXBsZSgwLCAwKSl9KTsKICAgIHNldFRp
bWVUb1plcm9OZXh0UHBzKHVzcnBEZXZpY2UpOwoKICAgIHN0ZDo6dGhyZWFkIHRyYW5zbWl0VGhy
ZWFkKHRyYW5zbWl0LCB0eFN0cmVhbWVyLCB1c3JwRGV2aWNlLAogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgc3RkOjpyZWYodHJhbnNtaXR0ZWRTYW1wbGVzKSk7CiAgICBzdGQ6OnRocmVh
ZCByZWNlaXZlVGhyZWFkKHJlY2VpdmUsIHN0ZDo6cmVmKHJlY2VpdmVkU2FtcGxlcyksIHJ4U3Ry
ZWFtZXIpOwoKICAgIHRyYW5zbWl0VGhyZWFkLmpvaW4oKTsKICAgIHJlY2VpdmVUaHJlYWQuam9p
bigpOwoKICAgIHN0ZDo6b2ZzdHJlYW0gcnhDc3ZGaWxlID0gY3JlYXRlQ3N2KCJyeFNhbXBsZXMu
Y3N2Iik7CiAgICBzdGQ6Om9mc3RyZWFtIHR4Q3N2RmlsZSA9IGNyZWF0ZUNzdigidHhTYW1wbGVz
LmNzdiIpOwogICAgZHVtcFNhbXBsZXMocmVjZWl2ZWRTYW1wbGVzLCByeENzdkZpbGUpOwogICAg
ZHVtcFNhbXBsZXModHJhbnNtaXR0ZWRTYW1wbGVzLCB0eENzdkZpbGUpOwp9Cg==

--_006_AS4P250MB07996EB3B5E9CFB8EFBD4D969BE99AS4P250MB0799EURP_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_006_AS4P250MB07996EB3B5E9CFB8EFBD4D969BE99AS4P250MB0799EURP_--
