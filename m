Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5121B7F41CB
	for <lists+usrp-users@lfdr.de>; Wed, 22 Nov 2023 10:37:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1A902384B1A
	for <lists+usrp-users@lfdr.de>; Wed, 22 Nov 2023 04:37:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700645859; bh=wMm7ZWUCi0MvF7EZrLlW1vGrfkUf37DDZr4B7iG2hmM=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Nbl0Vhvap/HYtV2zRLgdn6jXS4l+jUc9sr22/7wbvcz+/B/4ErqzYG5p4NOI25TKF
	 WvVKWWgRSwxqGhrD2ydkmKxFdldIvqo+QfMPP1p6CAVAdhVk/fT7zsxJRMqe/yI8zJ
	 VY5AzR/6YDhXPLAvW+GOr1Brmu+e3V8n05Lqbec/1RLTX2V5HVzjhHBXVOluw+Mvm+
	 cQduLfqR5f3szDjaq6MsWIq+l32fbjy3YJKu+5QyxEIiJfqPQN+GcFfvyESb1lJal5
	 vjuUpJ0sLI6f/ubHfjf5E94LEpfagptoCsGT/h65JOL1rjux4NT+w8pNGWL+f808IH
	 cZMvS12vP9Cmg==
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (mail-am0eur02on2133.outbound.protection.outlook.com [40.107.247.133])
	by mm2.emwd.com (Postfix) with ESMTPS id D4C7F383F87
	for <usrp-users@lists.ettus.com>; Wed, 22 Nov 2023 04:37:23 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=TSATAS.onmicrosoft.com header.i=@TSATAS.onmicrosoft.com header.b="JD44GyRp";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VkDiAyDLYfY486aipaz/qBnkD8LXM1BsncJqFrgXTTpNRK2kAZTe5BvJg/jK3OIZnyngDF9DVw3z5tE0y8CnPYwfnKm7D28NtQ08cg5cL/UPcp3pL26KRouADQYdG4g7r1s00Y+3WFIvFgeTEl+8fHH5hFrEKVofEezvkvbPCqYjkzzrK5Vx8k2rJsSzo4p+RT1XLGhKqeOS2Oh5J3fXIcI5NDVSNwp9RA1UDy9b683BlcRumiXQLHDKMew2b5OKzxCYm8t1TDRfvY13Xc9ItKuYExuUtDLLz31EIW49DCNMgEElQjS5qoALHEepf0bq6tQOKfAAGUVbnZLbwVf+MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GLU5mK2ZsMXLfzi3SUdFmFkYKXCJ66BiCvgbjE+SJf8=;
 b=MlBCl4633OXE0eLn5e1G+eXeomHXGd5/mwGtGAtNBqGiK6N7xpgYreROqe16qGd6OtFXRZkSLenIGBjZp992JPB5jjP9QC3LgmFWbcLi5QbDYfpx5D+KKjpDYvaBhL794AzqqhFEZDf3EF6j0XEbppRvq/LG8KcIFaeFQlzVgjUW7JpNBX0K+M89hOR4z8MZboX22XkBiLHcGTJQXBKf893OWW9Zlysb6/uq1ZwN5N3MYdQttryGaCl3HqoQ+THbx81SyHwyAjJkJ8B51uFwfyS4jO0TBshnH2rf9VhTblO6FC8+b91sxxi9gCW2GRjhWb+vZcnBcorgTqCL2VcS9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tsat.net; dmarc=pass action=none header.from=tsat.net;
 dkim=pass header.d=tsat.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=TSATAS.onmicrosoft.com; s=selector2-TSATAS-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GLU5mK2ZsMXLfzi3SUdFmFkYKXCJ66BiCvgbjE+SJf8=;
 b=JD44GyRpW5osq5H5s7SAkZEN++hC4dy02sLAEyDWVAQnApEdAH1+PSh9BwIkP4tfr/qH6F221EoyJCeUVxfml384Kbct0ym0Y/OB4x+DRiPo5V9M0MQ07LsjbyA6ldzsMmUakgTkpskqOUtaMLxIbqr0b3LsZN9eMsKYrYx0a5Q=
Received: from AS4PR05MB9039.eurprd05.prod.outlook.com (2603:10a6:20b:4ea::11)
 by DB9PR05MB9125.eurprd05.prod.outlook.com (2603:10a6:10:36a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.28; Wed, 22 Nov
 2023 09:37:20 +0000
Received: from AS4PR05MB9039.eurprd05.prod.outlook.com
 ([fe80::7f85:3ed5:5f87:5d80]) by AS4PR05MB9039.eurprd05.prod.outlook.com
 ([fe80::7f85:3ed5:5f87:5d80%6]) with mapi id 15.20.7002.031; Wed, 22 Nov 2023
 09:37:20 +0000
From: =?iso-8859-2?Q?Patryk_Chamuczy=F1ski?= <patryk.chamuczynski@tsat.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: CRC errors in relayed stream
Thread-Index: AQHaHST9gUxJDFbeIUOI3OlGWVSfxQ==
Date: Wed, 22 Nov 2023 09:37:20 +0000
Message-ID: 
 <AS4PR05MB903990AF4C8CF2E2A0F1B8629FBAA@AS4PR05MB9039.eurprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=tsat.net;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS4PR05MB9039:EE_|DB9PR05MB9125:EE_
x-ms-office365-filtering-correlation-id: 8c502df7-083d-4d44-ef58-08dbeb3ea002
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 0jQMT4M/bn0+DYapPiPOB1abD5Y0AaqrI0Ki9hIKic/9mWi4QOJcGdwFIaYBBFnwUq4N6JiTEmOyQdybOp4h2sKmBV5x7K7ZNUFZOdCuHrscww1P7jljJRRNafFbtAeMWBss5kfQG8sTfI/JN9CVtwXnbRaoWkD6VSwcWXQikSV8ujqyOznjyKYERNxHpv3Pb+8sF4DmvW+jvuSzDmGRwl8QCo1kvDLmYzSqysSwusqBrOQLeJUoCq4tbfofv3cqXT/UGaX1s2cXIdKlSXBwECvLgd/isj59TyXN89cW/3Zy2S+JGBSgeIkcf2kKnrDaochvbrs42kZw+UV8aTL8NxZ+2yUo8W9weTVH+7whTNoE9BSG12WNi0iJk4FN73L/XefQtCuaaMyOcZAlij+6y3eNgSbFebkoGg7r6aw4gE7cf3Unm4wEHXKXDIN5YHMOHejSHt4+hTbCs+qvQvsMbnQC2iu/W/kPX8mRxZk4fSDBffNMVjQ7qQsiZbjJBnV/VkTaxiQedo3rtaj6NnfweZyy+sAevNaE2P2EPKFK/ont1gnHYXrt6xUVyY47wl5nb3h3rPjPdk3Hf/aXdQxktKWFZ11RnDhVko28aLuxXVzK7GBJBHXroFtF3TxjeKYV
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4PR05MB9039.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(396003)(376002)(366004)(346002)(39830400003)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(41300700001)(19627405001)(55016003)(38070700009)(2906002)(5660300002)(7696005)(52536014)(64756008)(66556008)(316002)(66476007)(66946007)(91956017)(6916009)(122000001)(86362001)(9686003)(8676002)(478600001)(8936002)(6506007)(66446008)(26005)(71200400001)(33656002)(38100700002)(76116006);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-2?Q?6vPsgAcQ7Cavz2QQ2zdt5SH57EgeOmPRsIoQzdyf4p7wed975lO3t3XBVj?=
 =?iso-8859-2?Q?/uIynT1giJm6Aj73pT1mwvrIRHoMVnSHbkPHlGvHSAWNPX75cNBAHktVv3?=
 =?iso-8859-2?Q?MbqXzcOsm0CnZ+CszQA1DcTo16+kR4xnbQwJGfROxURwQD3hEV18pV2b81?=
 =?iso-8859-2?Q?7gs1ky131hYs/ZZnB+uqK2692NLw08C6buTlGEyvfWDWTIsb6PoA1rnBfv?=
 =?iso-8859-2?Q?DDMPQWtytF2y/sKyp0GSO2OeivBhJHxAdL3TE82PVrfY/w+xeiC66sfm+B?=
 =?iso-8859-2?Q?BbqS/ACalXEUXmRD6uY04QtNnlGRsaBm2HD3rxijDBPP8g3Q2NTShrZmo8?=
 =?iso-8859-2?Q?SbYke2cdrMKFJhGdzxWOeEcQTGxm4l/8OOaRDcFjxBU3JqwdmM577vm8DZ?=
 =?iso-8859-2?Q?x5KLLb+z+A5Atn3odh8vilcN/sUAB3nnMF0WU6UhI/ThxIv5Knn95nfe5h?=
 =?iso-8859-2?Q?1ihKNpbrVJlTcRspV0z5vJy4kJ1+i3H7rkX73X0UZ5QB9OKEKzsFlq3/XG?=
 =?iso-8859-2?Q?N2NdvbLIOFgcQW9GfZQ/N51U8XjLzgFeyZuvNkRTiQhNCvbgQIHpy7FHHH?=
 =?iso-8859-2?Q?TWfzV3X3erNsM1lFAcrE1LxcKf9HxWVhD6OCwqmGuNftmxTXznumYgrZ6w?=
 =?iso-8859-2?Q?khIHl6yyIsDcaMNrZtpGG3DIMcCRRalxK/hvjv1/SlJuNGQdIWEm82p49+?=
 =?iso-8859-2?Q?vmFOYlhU9IDAsnXnDz7sNOpzu1RnspJ8aB0rMLFT32BBPNveX8Uhga6dI7?=
 =?iso-8859-2?Q?pnDqwk3Y7p3ZG7wODgP+od2GegQ7TUd51JvB0Qbo79DZ6wepY6f6hnoyf/?=
 =?iso-8859-2?Q?AvWk0WyFoTAJQ+joB8+ZMGP8ckciBOdQ5R3tTZfUYMn/KdHyahB1T8Aawy?=
 =?iso-8859-2?Q?qNyPhInelMADnV3aPyMPY58lBeEY9mAcA6OP9iiEWGeD8crzt0mY2qkr5E?=
 =?iso-8859-2?Q?hbr+rOp1Vn1kKYTCLUyqj9gSJxXBVMR8z9pKrg3NjrtqTRWlQdlzqYg6IW?=
 =?iso-8859-2?Q?kxnONF1VdVilQHnaHmSF0rROewr/Su8fQU8ow07hojUtXzI7qB9kPB7enz?=
 =?iso-8859-2?Q?vANpeXQuvC23oCQJfsiVn6H19J/yyRgjdRia1loXdePMoAE+onZPbK/wtL?=
 =?iso-8859-2?Q?iVJd6K4Rs6JkXOCs9l/DG2zaIoDYsS6I4Ex9k7Ie9OKahdYpttStdE1W62?=
 =?iso-8859-2?Q?KcovjlLahtUTyuCWRl9SLRLkG5Bgxx2DYmqHkzg/Ub//Vw+TpnsxMgEgO5?=
 =?iso-8859-2?Q?AmT7HcDfmFjUeoy/Q7nexMctMuAOkVeJB6O99w+WFvTLjG646RXz4nNv4H?=
 =?iso-8859-2?Q?HkGUpbUBBVVnCQD9YlKIiGIWbXatG3rFsLiM0NQMEL8rajx7zyCW6zKG4x?=
 =?iso-8859-2?Q?DMTB6m2bC1CgrN/9IS0c35aRlmG8fLn6qwZiPW2t1bUDtz1/aiOc/3i4ud?=
 =?iso-8859-2?Q?Laq3DZiHrSh0UvUjNrL1FRbbNBV14wEuI2IxNacGzf2taVDJb5ZPtIEv4Q?=
 =?iso-8859-2?Q?GST/wCG8kxbOuAhnzl+B0Ecx+Y7uuM7I8pmWXH50OK9TtwKVxRpQ7rirzL?=
 =?iso-8859-2?Q?qmK8hyrmhqpA+qLqP0Z2h9F8y7VsOUO0JzqCjb7D8PtM+gtBqJ3ZQKCwqE?=
 =?iso-8859-2?Q?G1g1Q18qNeDGKVKpXagJSjMTtSRF6IZZ+oVYLUDMlOXkT5CZMO1LZmKg?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: tsat.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS4PR05MB9039.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c502df7-083d-4d44-ef58-08dbeb3ea002
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2023 09:37:20.7648
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 289cc058-b3c6-4573-84b3-45c6f3292581
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: utR1jQb3dLaVj8p8YvhMyduEG3aDz21dAeH9l6XMAsi2O91KJRExyubKD2ie266BjKs3geNdzpDEKBNMRtwJh6u45zKOyeoPTws4cOrm/w0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR05MB9125
Message-ID-Hash: WSASUI7JQACVW3IRVWTBM53PP7TTXGAF
X-Message-ID-Hash: WSASUI7JQACVW3IRVWTBM53PP7TTXGAF
X-MailFrom: patryk.chamuczynski@tsat.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] CRC errors in relayed stream
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XQ3DD5NUH4HT5J7TF6UUK46WXMLFO2S3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2391121196323281574=="

--===============2391121196323281574==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AS4PR05MB903990AF4C8CF2E2A0F1B8629FBAAAS4PR05MB9039eurp_"

--_000_AS4PR05MB903990AF4C8CF2E2A0F1B8629FBAAAS4PR05MB9039eurp_
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Hi

I am writing a simple app that relays received samples with some delay.

What I do is I start reading from the rx stream in a continuous mode:

        stream_cmd =3D uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)
        stream_cmd.stream_now =3D True
        self.rx_streamer.issue_stream_cmd(stream_cmd)
        if(metadata.has_time_spec):
            timespec =3D metadata.time_spec


and then in another thread I restamp each sample and send it to a tx stream=
:

            tx_metadata =3D uhd.types.TXMetadata()
            tx_metadata.has_time_spec =3D True
            tx_metadata.start_of_burst =3D False
            tx_metadata.end_of_burst =3D False
            delay_spec =3D uhd.types.TimeSpec(self.delay_s)
            for timespec, buffer, real_length in queue:
                tx_timespec =3D timespec + delay_spec
                tx_metadata.time_spec =3D tx_timespec
                sent =3D self.tx_streamer.send(buffer, tx_metadata, real_le=
ngth)

Is it a right approach in general? My problem is that the receiver reports =
many CRC errors, so something must happen on the way. Is it possible that t=
he tx stream is not continuous and thus some samples are misinterpreted?

Patryk


--_000_AS4PR05MB903990AF4C8CF2E2A0F1B8629FBAAAS4PR05MB9039eurp_
Content-Type: text/html; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
2">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);">I am writing a simple app that relays
</span><span style=3D"letter-spacing: normal; font-family: Aptos, Aptos_Emb=
eddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: =
16px; font-weight: 400; color: rgb(0, 0, 0); background-color: rgb(255, 255=
, 255);">received
</span><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontS=
ervice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0=
);">samples with some delay.&nbsp;</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);">What I do is I start reading from the rx stream =
in a continuous mode:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);"><br>
</span></div>
<div style=3D"background-color: rgb(31, 31, 31);">
<div style=3D"line-height: 19px;"><span style=3D"font-family: &quot;Droid S=
ans Mono&quot;, &quot;monospace&quot;, monospace; font-size: 14px; color: r=
gb(204, 204, 204);">&nbsp; &nbsp; &nbsp; &nbsp;
</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monos=
pace&quot;, monospace; font-size: 14px; color: rgb(156, 220, 254);">stream_=
cmd</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;mo=
nospace&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">&nbs=
p;</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;mon=
ospace&quot;, monospace; font-size: 14px; color: rgb(212, 212, 212);">=3D</=
span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospa=
ce&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">&nbsp;</s=
pan><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospac=
e&quot;, monospace; font-size: 14px; color: rgb(78, 201, 176);">uhd</span><=
span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quo=
t;, monospace; font-size: 14px; color: rgb(204, 204, 204);">.types.StreamCM=
D(</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;mon=
ospace&quot;, monospace; font-size: 14px; color: rgb(78, 201, 176);">uhd</s=
pan><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospac=
e&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">.types.Str=
eamMode.start_cont)</span></div>
<div style=3D"line-height: 19px;"><span style=3D"font-family: &quot;Droid S=
ans Mono&quot;, &quot;monospace&quot;, monospace; font-size: 14px; color: r=
gb(204, 204, 204);">&nbsp; &nbsp; &nbsp; &nbsp;
</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monos=
pace&quot;, monospace; font-size: 14px; color: rgb(156, 220, 254);">stream_=
cmd</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;mo=
nospace&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">.str=
eam_now
</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monos=
pace&quot;, monospace; font-size: 14px; color: rgb(212, 212, 212);">=3D</sp=
an><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace=
&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">&nbsp;</spa=
n><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&=
quot;, monospace; font-size: 14px; color: rgb(86, 156, 214);">True</span><s=
pan style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot=
;, monospace; font-size: 14px; color: rgb(204, 204, 204);">&nbsp;
 &nbsp;</span></div>
<div style=3D"line-height: 19px;"><span style=3D"font-family: &quot;Droid S=
ans Mono&quot;, &quot;monospace&quot;, monospace; font-size: 14px; color: r=
gb(204, 204, 204);">&nbsp; &nbsp; &nbsp; &nbsp;
</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monos=
pace&quot;, monospace; font-size: 14px; color: rgb(156, 220, 254);">self</s=
pan><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospac=
e&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">.</span><s=
pan style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot=
;, monospace; font-size: 14px; color: rgb(156, 220, 254);">rx_streamer</spa=
n><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&=
quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">.issue_strea=
m_cmd(</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot=
;monospace&quot;, monospace; font-size: 14px; color: rgb(156, 220, 254);">s=
tream_cmd</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &q=
uot;monospace&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);=
">)</span></div>
<div style=3D"background-color: rgb(31, 31, 31);">
<div style=3D"line-height: 19px;" class=3D"elementToProof"><span style=3D"f=
ont-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;, monospace; =
font-size: 14px; color: rgb(204, 204, 204);">&nbsp; &nbsp; &nbsp; &nbsp;&nb=
sp;</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;mo=
nospace&quot;, monospace; font-size: 14px; color: rgb(197, 134, 192);">if</=
span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospa=
ce&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">(</span><=
span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quo=
t;, monospace; font-size: 14px; color: rgb(156, 220, 254);">metadata</span>=
<span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&qu=
ot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">.has_time_spec=
):</span></div>
<div style=3D"line-height: 19px;" class=3D"elementToProof"><span style=3D"f=
ont-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;, monospace; =
font-size: 14px; color: rgb(204, 204, 204);">&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;&nbsp;</span><span style=3D"font-family: &quot;Droid Sans Mono&q=
uot;, &quot;monospace&quot;, monospace; font-size: 14px; color: rgb(156, 22=
0, 254);">timespec</span><span style=3D"font-family: &quot;Droid Sans Mono&=
quot;, &quot;monospace&quot;, monospace; font-size: 14px; color: rgb(204, 2=
04, 204);">&nbsp;</span><span style=3D"font-family: &quot;Droid Sans Mono&q=
uot;, &quot;monospace&quot;, monospace; font-size: 14px; color: rgb(212, 21=
2, 212);">=3D</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;=
, &quot;monospace&quot;, monospace; font-size: 14px; color: rgb(204, 204, 2=
04);">&nbsp;</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;,=
 &quot;monospace&quot;, monospace; font-size: 14px; color: rgb(156, 220, 25=
4);">metadata</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;=
, &quot;monospace&quot;, monospace; font-size: 14px; color: rgb(204, 204, 2=
04);">.time_spec</span></div>
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px;"><span style=3D"f=
ont-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;, monospace; =
font-size: 14px; color: rgb(204, 204, 204);"><br>
</span></div>
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);">and then in another thread I restamp each sample=
 and send it to a tx stream:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);"><br>
</span></div>
<div style=3D"background-color: rgb(31, 31, 31);">
<div style=3D"background-color: rgb(31, 31, 31);">
<div style=3D"line-height: 19px;"><span style=3D"font-family: &quot;Droid S=
ans Mono&quot;, &quot;monospace&quot;, monospace; font-size: 14px; color: r=
gb(204, 204, 204);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monos=
pace&quot;, monospace; font-size: 14px; color: rgb(156, 220, 254);">tx_meta=
data</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;m=
onospace&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">&nb=
sp;</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;mo=
nospace&quot;, monospace; font-size: 14px; color: rgb(212, 212, 212);">=3D<=
/span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monosp=
ace&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">&nbsp;</=
span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospa=
ce&quot;, monospace; font-size: 14px; color: rgb(78, 201, 176);">uhd</span>=
<span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&qu=
ot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">.types.TXMetad=
ata()</span></div>
<div style=3D"line-height: 19px;"><span style=3D"font-family: &quot;Droid S=
ans Mono&quot;, &quot;monospace&quot;, monospace; font-size: 14px; color: r=
gb(204, 204, 204);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monos=
pace&quot;, monospace; font-size: 14px; color: rgb(156, 220, 254);">tx_meta=
data</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;m=
onospace&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">.ha=
s_time_spec
</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monos=
pace&quot;, monospace; font-size: 14px; color: rgb(212, 212, 212);">=3D</sp=
an><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace=
&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">&nbsp;</spa=
n><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&=
quot;, monospace; font-size: 14px; color: rgb(86, 156, 214);">True</span></=
div>
<div style=3D"line-height: 19px;"><span style=3D"font-family: &quot;Droid S=
ans Mono&quot;, &quot;monospace&quot;, monospace; font-size: 14px; color: r=
gb(204, 204, 204);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monos=
pace&quot;, monospace; font-size: 14px; color: rgb(156, 220, 254);">tx_meta=
data</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;m=
onospace&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">.st=
art_of_burst
</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monos=
pace&quot;, monospace; font-size: 14px; color: rgb(212, 212, 212);">=3D</sp=
an><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace=
&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">&nbsp;</spa=
n><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&=
quot;, monospace; font-size: 14px; color: rgb(86, 156, 214);">False</span><=
/div>
<div class=3D"elementToProof" style=3D"line-height: 19px;"><span style=3D"f=
ont-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;, monospace; =
font-size: 14px; color: rgb(204, 204, 204);">&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;
</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monos=
pace&quot;, monospace; font-size: 14px; color: rgb(156, 220, 254);">tx_meta=
data</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;m=
onospace&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">.en=
d_of_burst
</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monos=
pace&quot;, monospace; font-size: 14px; color: rgb(212, 212, 212);">=3D</sp=
an><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace=
&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">&nbsp;</spa=
n><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&=
quot;, monospace; font-size: 14px; color: rgb(86, 156, 214);">False</span><=
/div>
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px;"><span style=3D"f=
ont-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;, monospace; =
font-size: 14px; color: rgb(204, 204, 204);">&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;
</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monos=
pace&quot;, monospace; font-size: 14px; color: rgb(156, 220, 254);">delay_s=
pec</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;mo=
nospace&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">&nbs=
p;</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;mon=
ospace&quot;, monospace; font-size: 14px; color: rgb(212, 212, 212);">=3D</=
span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospa=
ce&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">&nbsp;</s=
pan><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospac=
e&quot;, monospace; font-size: 14px; color: rgb(78, 201, 176);">uhd</span><=
span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quo=
t;, monospace; font-size: 14px; color: rgb(204, 204, 204);">.types.TimeSpec=
(</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;mono=
space&quot;, monospace; font-size: 14px; color: rgb(156, 220, 254);">self</=
span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospa=
ce&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">.</span><=
span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quo=
t;, monospace; font-size: 14px; color: rgb(156, 220, 254);">delay_s</span><=
span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quo=
t;, monospace; font-size: 14px; color: rgb(204, 204, 204);">)</span></div>
<div class=3D"elementToProof" style=3D"line-height: 19px;"><span style=3D"f=
ont-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;, monospace; =
font-size: 14px; color: rgb(204, 204, 204);">&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;
</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monos=
pace&quot;, monospace; font-size: 14px; color: rgb(197, 134, 192);">for</sp=
an><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace=
&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">&nbsp;</spa=
n><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&=
quot;, monospace; font-size: 14px; color: rgb(156, 220, 254);">timespec</sp=
an><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace=
&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">,
</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monos=
pace&quot;, monospace; font-size: 14px; color: rgb(156, 220, 254);">buffer<=
/span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monosp=
ace&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">,
</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monos=
pace&quot;, monospace; font-size: 14px; color: rgb(156, 220, 254);">real_le=
ngth</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;m=
onospace&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">&nb=
sp;</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;mo=
nospace&quot;, monospace; font-size: 14px; color: rgb(197, 134, 192);">in</=
span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospa=
ce&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">&nbsp;</s=
pan><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospac=
e&quot;, monospace; font-size: 14px; color: rgb(156, 220, 254);">queue</spa=
n><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&=
quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">:</span></di=
v>
<div class=3D"elementToProof" style=3D"line-height: 19px;"><span style=3D"f=
ont-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;, monospace; =
font-size: 14px; color: rgb(204, 204, 204);">&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;
</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monos=
pace&quot;, monospace; font-size: 14px; color: rgb(156, 220, 254);">tx_time=
spec</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;m=
onospace&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">&nb=
sp;</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;mo=
nospace&quot;, monospace; font-size: 14px; color: rgb(212, 212, 212);">=3D<=
/span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monosp=
ace&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">&nbsp;</=
span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospa=
ce&quot;, monospace; font-size: 14px; color: rgb(156, 220, 254);">timespec<=
/span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monosp=
ace&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">&nbsp;</=
span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospa=
ce&quot;, monospace; font-size: 14px; color: rgb(212, 212, 212);">+</span><=
span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quo=
t;, monospace; font-size: 14px; color: rgb(204, 204, 204);">&nbsp;</span><s=
pan style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot=
;, monospace; font-size: 14px; color: rgb(156, 220, 254);">delay_spec</span=
></div>
<div class=3D"elementToProof" style=3D"line-height: 19px;"><span style=3D"f=
ont-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;, monospace; =
font-size: 14px; color: rgb(204, 204, 204);">&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;
</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monos=
pace&quot;, monospace; font-size: 14px; color: rgb(156, 220, 254);">tx_meta=
data</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;m=
onospace&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">.ti=
me_spec
</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monos=
pace&quot;, monospace; font-size: 14px; color: rgb(212, 212, 212);">=3D</sp=
an><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace=
&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">&nbsp;</spa=
n><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&=
quot;, monospace; font-size: 14px; color: rgb(156, 220, 254);">tx_timespec<=
/span></div>
</div>
<div style=3D"background-color: rgb(31, 31, 31);">
<div class=3D"elementToProof" style=3D"line-height: 19px;"><span style=3D"f=
ont-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;, monospace; =
font-size: 14px; color: rgb(204, 204, 204);">&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;
</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monos=
pace&quot;, monospace; font-size: 14px; color: rgb(156, 220, 254);">sent</s=
pan><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospac=
e&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">&nbsp;</sp=
an><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace=
&quot;, monospace; font-size: 14px; color: rgb(212, 212, 212);">=3D</span><=
span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quo=
t;, monospace; font-size: 14px; color: rgb(204, 204, 204);">&nbsp;</span><s=
pan style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot=
;, monospace; font-size: 14px; color: rgb(156, 220, 254);">self</span><span=
 style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;, =
monospace; font-size: 14px; color: rgb(204, 204, 204);">.</span><span style=
=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;, monosp=
ace; font-size: 14px; color: rgb(156, 220, 254);">tx_streamer</span><span s=
tyle=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;, mo=
nospace; font-size: 14px; color: rgb(204, 204, 204);">.send(</span><span st=
yle=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;, mon=
ospace; font-size: 14px; color: rgb(156, 220, 254);">buffer</span><span sty=
le=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;, mono=
space; font-size: 14px; color: rgb(204, 204, 204);">,
</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monos=
pace&quot;, monospace; font-size: 14px; color: rgb(156, 220, 254);">tx_meta=
data</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;m=
onospace&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">,
</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monos=
pace&quot;, monospace; font-size: 14px; color: rgb(156, 220, 254);">real_le=
ngth</span><span style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;m=
onospace&quot;, monospace; font-size: 14px; color: rgb(204, 204, 204);">)</=
span></div>
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);"><br>
</span></div>
<div style=3D"background-color: rgb(31, 31, 31);"></div>
<div style=3D"background-color: rgb(31, 31, 31);"></div>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);">Is it a right approach in general? My problem is=
 that the receiver reports many CRC
 errors, so something must happen on the way. Is it possible that the tx st=
ream is not continuous and thus some samples are misinterpreted?</span></di=
v>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);">Patryk</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);"><br>
</span></div>
</body>
</html>

--_000_AS4PR05MB903990AF4C8CF2E2A0F1B8629FBAAAS4PR05MB9039eurp_--

--===============2391121196323281574==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2391121196323281574==--
