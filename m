Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FA94FBA81
	for <lists+usrp-users@lfdr.de>; Mon, 11 Apr 2022 13:08:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 89CE5384A18
	for <lists+usrp-users@lfdr.de>; Mon, 11 Apr 2022 07:08:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649675289; bh=VwO9ydDrgw1GKRZj2S7AyOgmXrMxYrqNH6sLgbzy9mQ=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=oKOZeFK6hWSoo1vtjkH+zWi55hR1/JmcHkNaKG78XITc5tR726nFiiIf5cDXU2emF
	 R5RqBDIbkvr1IAyvNQT6hSZ0FfOmWGModO0X+xWutze/GIY3bzpur1yIIPZ9pM33LW
	 rQ71T0+Au6DQvwQCeOQJEU6QS9yMDi3ib/KjZMR3KlRCizrdvIecLxNE9IwURVD40a
	 K79+lGI8vf7cwwwtP7bP8r/2ESSBl2o9nMDmwY1EnhL5E2TJWQuHMVVxID0pkIsuM1
	 YWYbduMzNCHRn4gd+uJEXQiqWOHu0awRTig1Ko9Gierq8FCCOrLqB2I40cMLCojBLo
	 De1YabPd5c33g==
Received: from EUR03-DB5-obe.outbound.protection.outlook.com (mail-eopbgr40116.outbound.protection.outlook.com [40.107.4.116])
	by mm2.emwd.com (Postfix) with ESMTPS id 62C0D38481C
	for <usrp-users@lists.ettus.com>; Mon, 11 Apr 2022 07:07:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=barkhauseninstitut.onmicrosoft.com header.i=@barkhauseninstitut.onmicrosoft.com header.b="gKTPzo3T";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MZomHBq1nRQMRgggAL0Qp248nMlVaUmTymPJ6y5xkz/a8IpP6ewvWcSx8MWVas3HuKN/D+w3lALj87t5XlydPUW0w8rCPeU2g/Ya+1BTAYQK/3WrnlOGlKcTbPCL65Qd9douinyw0AhWfFIsY8WK/fDFgkuAqQSC2NLxlNOu18zirBDdZZLWoRQC8Ar4F0rLNiOU7BDs/Z5pPWUKlZoU/2k4+aQD+DWihwmVigDMJq/6UiO8WKqzJaZhrms9CBad/T89iQ9XKkakFw9nKSRPFsRok00chfo1khwvcQhGSE07mjY270diJChU1k3jAhFuGNqlm+GkcM/PHKCdAU/O6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JFrRvk8JkGyjM404ZVLXj7OmsuqmDgTKeZr/DEjTfLM=;
 b=f2iQodrxt3dFrzVuF3nmdh4JOTAuZEFWmqhkV37IrhMcCn0hb1EMrzEbcSmLil1xfQJtrh9ubw0OrYhhl/jhEsRKhnukWOcpFk3XR9/g8Z1guQOGjUx4qQ00lz5skjz3piKXR9mqAB7VyFs8TR2CFsY42yuzmeEthIXZOD5nzerblmvYzdQvKegaEjzy1YzvCU02/HrQp959pAu/Mq7ic7KIBy92Zgx7Pw37LyDr5hUcF/F5hfQA9YRfUFR/I3NbqNounyAq+YpqIWvzm05aMnBGCDeIg56oB0SpLHXJesiSYQd7uYrxy9z3ehtmOuiTzg+GM4xibN4Q4+afXSRQ/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=barkhauseninstitut.org; dmarc=pass action=none
 header.from=barkhauseninstitut.org; dkim=pass
 header.d=barkhauseninstitut.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=barkhauseninstitut.onmicrosoft.com;
 s=selector2-barkhauseninstitut-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JFrRvk8JkGyjM404ZVLXj7OmsuqmDgTKeZr/DEjTfLM=;
 b=gKTPzo3TSSuPpY0yYniQxlDK41oTcIWo17d1efUqyU4oTo4AtrTVDik/c9QC4onYfhJkUzvbqiAINNBPgbqK+oXNk2S+WMudbxTl8645Yb15fNIQhjwNKz0NBchfGnhxghywKmMzFzyGoLaqdivTcnojRsO8jnKGwdu13aznZc4=
Received: from AS4P250MB0799.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:582::16)
 by DU2P250MB0175.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:274::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Mon, 11 Apr
 2022 11:07:01 +0000
Received: from AS4P250MB0799.EURP250.PROD.OUTLOOK.COM
 ([fe80::5118:6034:9c0:d1f7]) by AS4P250MB0799.EURP250.PROD.OUTLOOK.COM
 ([fe80::5118:6034:9c0:d1f7%3]) with mapi id 15.20.5144.019; Mon, 11 Apr 2022
 11:07:01 +0000
From: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] Re: [x410] Frequency Selectivity?
Thread-Index: AQHYS1AgNREl8Hk8I0eEw09Qd1e9qqzqkYwi
Date: Mon, 11 Apr 2022 11:07:01 +0000
Message-ID: 
 <AS4P250MB0799C4E57A7437C20CFFED3D9BEA9@AS4P250MB0799.EURP250.PROD.OUTLOOK.COM>
References: 
 <AS4P250MB07996EB3B5E9CFB8EFBD4D969BE99@AS4P250MB0799.EURP250.PROD.OUTLOOK.COM>
 <d9c10d82-d370-4834-7b5f-ccd7968fde10@gmail.com>
In-Reply-To: <d9c10d82-d370-4834-7b5f-ccd7968fde10@gmail.com>
Accept-Language: de-DE, en-150, en-US
Content-Language: de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 43eacdc3-7470-ea38-4ed2-5f28194aa90e
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=barkhauseninstitut.org;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9e23ce49-cb38-4e5a-4bfa-08da1bab6747
x-ms-traffictypediagnostic: DU2P250MB0175:EE_
x-microsoft-antispam-prvs: 
 <DU2P250MB01756508CBE60E201D81E04E9BEA9@DU2P250MB0175.EURP250.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 5PYVZevBJWwQ3GQW/NyHQ2l+MjPUOqV+NYukq4B0RWDdwMTsSuAs7P9HrIEYezfhRysZHZDe0iVXVnqLxF0/PpiZv5oFF40crEAgD1kvjIKi4rJGjfbFOHMI6QdvKI9ewDcUhl7dl26Sj8OFYgTEEcG3GIA8tk+j0Zg+Q2sdTWoxm2KTEGYz4WBaUqZNMG2KzHZ1TRv6IWq88zPtuIlvcKGCcSu29JIbzjZz76Dw0neMTYGanCCOsbKGN0geRB6tDGFi7kKmqxEIBYKK3C+t5lhqnSSv5IDJUOBGRMk6NL/NSixxpINE6b7NeQPyh7PDMCwddC8CogNbqwMo4vdXSV01y9mh+dtuNttMjAvx3DP/zaP2U74C7MFCsOckH+GuI3MouX8HmXcdml5NPzcWLmHFX3nJIt7RwBCh5X5JpDJ67U31RHSnMhtRQVTR8KXQ8BsSxd7p81t170w4Fo1nszCwxvMYrmKJ86f2oud8ANQ5P73Au8RdztvrygWovoWwMX9wIcuyngl+xQH8QwV8cS+saden265U2CGBurIHceEZi3PWXPjjXWfHC0AXhvnFkJJoFL9iYHlCR2iYCCA7BE/yCm6ee8+botKBOeHLlU/zF86fW7wwp1N/+L56IXFCnO25b5U6Hs3GEqJdKak3WwY/Sa4HODLPLj+o4ShOjR+Qa0gxhIzCLUUoLzYOvRImbERK7loUhY2lhwX8dRLSsQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4P250MB0799.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(366004)(136003)(376002)(39830400003)(346002)(396003)(84040400005)(15974865002)(2906002)(66946007)(8676002)(6916009)(5660300002)(99936003)(66446008)(66476007)(66556008)(76116006)(8936002)(55016003)(122000001)(44832011)(38070700005)(52536014)(316002)(86362001)(64756008)(4326008)(53546011)(7696005)(83380400001)(9686003)(6506007)(186003)(71200400001)(66574015)(966005)(38100700002)(91956017)(26005)(508600001)(33656002)(19627405001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?dxJIBnqXXT751T7QCCsIva3E69jgrIot3XDuSJabmR9bC/IhkxxhC03cDp?=
 =?iso-8859-1?Q?M0brNyT/aAy5zN6BRLCsW5pFt6fnyv2mGA3UJk+MGpLNnjM6MaP5kJGRQe?=
 =?iso-8859-1?Q?+Eb55Fkp4yvVqMp+HRNwj9/eudUijT6bdv7azjIVxy6BrKP8dxR92T7vDt?=
 =?iso-8859-1?Q?ke42Yh9VY4wtV1zuBGFKVaj+oJK01S9Zcrck3du7AcqCHt7PWloLqn9cMV?=
 =?iso-8859-1?Q?ABmkB3v+gCHMCMf2k4H/4dXyyc8H2ZRvVEkbxBF9dHwT90eTbADjxK04Hl?=
 =?iso-8859-1?Q?oVglpVonxAIVO58NS9VXNMKnpEjGb9jf9O2fkvMe5zUDzTPrrV0ZFDXvup?=
 =?iso-8859-1?Q?M73rff7h2MhBTUOdTQmzdqe03fNeOB0gKtfOJ8awWv1j/CmpJM8+YWQvRb?=
 =?iso-8859-1?Q?CxRtD7BrD0xN9uHNj+PzcBNjZUHk34o1C8vJcdf7nHdKlRF6ATHIUk2LKs?=
 =?iso-8859-1?Q?5EC/xA/sX+0BrBvmWnGByk35M5R5XDaTBXWsND+sK1nSQ8/1rDLhGYSfwe?=
 =?iso-8859-1?Q?hh6AU3GdHWfbetMbNP+mVP3O4q9xUjAs5PTaY1RL/KZRpVUniQtbz1/qNg?=
 =?iso-8859-1?Q?Td0fcCQFI8pbLxIB6ShH83OXKpdLL17mbMc2KoJzgHUOZMhmymIXN+LK7x?=
 =?iso-8859-1?Q?Qj8S9Uja7tD6tP1NXYmTaXuukifSCyc8YTGaBf50QgBeSmkJy1HiJ/aHr6?=
 =?iso-8859-1?Q?OltNtSV42MKtoORDExLU/KYhIf4XKnqKxwQYsKMVJp7htthKq9A4bKJbXG?=
 =?iso-8859-1?Q?r80RxIXLC776Wt5hgbFdU6FIDChpwe2IInxFqZ8HGOgq8zzYch0rCq0uWm?=
 =?iso-8859-1?Q?D2VAolB2dyAUHXBTxA0kT/ociBVo6A6pzsgDp6nfjQQubddz7b3fIFgCLB?=
 =?iso-8859-1?Q?4wlV6DXdaQbYhglZDH5qkEAUJRw7Rkp7nfgGc9MKLG60MmEkKEniHHP6RE?=
 =?iso-8859-1?Q?JPNM9o1fljmbp7oSaZN06xp+grb6IIz/TIBvHp8B6Wsrdqbw/seFa/SNHC?=
 =?iso-8859-1?Q?zCGpjGMZsmOqcR7Pt1n5LcmRvbZ8Zp207yp84smAVeEZFwie7WjfICvSS7?=
 =?iso-8859-1?Q?GIOFJ+JAGELi648d1l1MqGk3+Wgmdh3HiTXRIMTX78hnSUDgnskAiDk8sS?=
 =?iso-8859-1?Q?M5Hl5bHmyU6P10OSvlqfrQ3jgEhRmtYvkVPaEYXrzlEbx94oe3Fw+4by4x?=
 =?iso-8859-1?Q?aDgMeJyPeOpV037RYA5gDUDKUSjv9Qu0ULMnSu+RsKNIgLNS5TK/WoWzsA?=
 =?iso-8859-1?Q?pcoF4T4uXkrHSQk1rvijnMn9GA/WTMoTLVxglNx3YOFQHEPmgo5Qi/Gvbs?=
 =?iso-8859-1?Q?vMRILJgCIAL82TLzGw9vYG0ZvuTd4R/tHhtqMeEDdwCbHX8Ghhp+BRHIK8?=
 =?iso-8859-1?Q?IPwluNr4GxVvxCMRNN9N5gXSuH8IRM2/+u0+zz0SUVU9+foNZjWdD7+gfg?=
 =?iso-8859-1?Q?RrKfMWzf5BlhmVrjEEIyWsjR5FAULw9YKjc+666xSSH2TulB2G+x9Cuv/e?=
 =?iso-8859-1?Q?fQqrLuZ8tmQuuJRi02gB1S9gHBcWr+vE3wc80N6rDQF3QgGgwtCxcoxQA4?=
 =?iso-8859-1?Q?Y5JaDQu3DZ7vC8jRseifoP64/nQ2hCfUczyS+JSQERrNaiL11lxyVKOhuY?=
 =?iso-8859-1?Q?NVyREy3nRt2hv65c1eiCUYuD5qOywpnES5l+oFvw8vFCtaGwMuZ4fWKYhk?=
 =?iso-8859-1?Q?xpSMDgcyBjsdKKqyRU93xkF5ixTmN8cdyqImOPR/vvRle0eI8gg/nSPKoV?=
 =?iso-8859-1?Q?HI6CRoe8w/57/QwPoDB2OVK8mGz3hXIBFhv0RudluwrBYxj2n+u+65LfYH?=
 =?iso-8859-1?Q?IezmV73JSk5xQBn+rGrLujbQKdPKEcU71MWTNlrI3I1MB0+Npd1+?=
MIME-Version: 1.0
X-OriginatorOrg: barkhauseninstitut.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS4P250MB0799.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e23ce49-cb38-4e5a-4bfa-08da1bab6747
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2022 11:07:01.2117
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 00487172-018a-4fb0-b279-f756ac552ea7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gRQHFtuem5ZrZF95zz6kx5QJahmjIdeFKYsFe9UIKVd6oFCN4nAMOgj093Eg6SZh7ui9xJ+Ptg738L4p734hFOLf8RbTpEZWiFDcmD0MFyEc2L06KCsI15wyvpvtgvQH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2P250MB0175
Message-ID-Hash: DFRSRGHN3GATPLYO45HRXHDPYTWY7FJ5
X-Message-ID-Hash: DFRSRGHN3GATPLYO45HRXHDPYTWY7FJ5
X-MailFrom: tobias.kronauer@barkhauseninstitut.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [x410] Frequency Selectivity?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FC2MADYHB5KPZ6TF3F7YUM5SMFKJJKMW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6613743381510885884=="

--===============6613743381510885884==
Content-Language: de-DE
Content-Type: multipart/related;
	boundary="_005_AS4P250MB0799C4E57A7437C20CFFED3D9BEA9AS4P250MB0799EURP_";
	type="multipart/alternative"

--_005_AS4P250MB0799C4E57A7437C20CFFED3D9BEA9AS4P250MB0799EURP_
Content-Type: multipart/alternative;
	boundary="_000_AS4P250MB0799C4E57A7437C20CFFED3D9BEA9AS4P250MB0799EURP_"

--_000_AS4P250MB0799C4E57A7437C20CFFED3D9BEA9AS4P250MB0799EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

thanks for your prompt reply! Indeed, my description was lacking a bit of d=
etails.

In short:
- We transmit with 50MHz sample rate and 400MHZ analog bandwidth (according=
 to RF config setup)
- We generate a signal that consists of sections with pure (complex) tones =
of different frequencies with constant amplitude, ranging from -25MHz to +2=
5MHz frequency in baseband (-25, -19.5, -14, -8, -3, 3, 8, 14, 19.5, 25).
- We receive the signal on the same USRP and plot the time domain of the TX=
 and RX signal. (first figure row)
- As visible, already the 8MHz tone is attenuated by around 3dB compared to=
 the center frequency. Higher frequencies are more attenuated. This is also=
 visible in the spectrogramm.

We know and expect that the passband of the X410 is not totally flat. Howev=
er, we do not expect the passband to be as severely shaped as we measured. =
We know we cannot expect the edges to be not attenuated, but actually we wo=
uld have expected at least say -20..20MHz to be relatively flat (for 50MHz =
sampling rate). Hence we wonder:

- if the problem can be reproduced on your (or other's side)?
- if the seen behaviour is correct and more flatness cannot be expected?

Thank you.

I updated the plot as well.
[cid:e9618469-b75f-4752-bf4d-922b1ee94af6]

________________________________
Von: Marcus D. Leech <patchvonbraun@gmail.com>
Gesendet: Freitag, 8. April 2022 16:22
An: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Betreff: [USRP-users] Re: [x410] Frequency Selectivity?

On 2022-04-08 09:56, Tobias Kronauer wrote:
Hi all,

we use a X410 and send 60k samples via localhost. We increase the frequency=
 within the frame every 6k samples. We observe a frequency selectivity of t=
he USRP. Can you help us on that? In the attachment [0], you can find the M=
WE (we tried to keep it as small as possible). Let us explain the problem i=
n the following plot:

[cid:part1.FyWuFAmC.eHWa603R@gmail.com]
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


Your plots aren't particularly clear in what they're showing, neither is yo=
ur problem description.  Is your list of "frequencies" in terms of the base=
band?  In Hz?  Khz?  MHz?

ANY radio receiver (or transmitter) will have a passband response that is d=
ependent on the analog passband response of the various components in the s=
ystem.  With
  a DSP radio the passband response is conceptually the convolution of the =
 analog and digital responses.  The passband for any SDR will exhibit roll-=
off at the edges
  of your passband--that roll-off CANNOT be infinitely steep without the fi=
lters also being infinitely long.

I don't have an X410, so I don't know what the passband *should* look like,=
 but I imagine that there are both edge roll-off effects and the passband i=
s not
  perfectly "flat".

If you inject a laboratory noise source into the receiver, and just look at=
 the spectrum integrated over a few seconds, you will see the pass-band res=
ponse of the
  radio at the desired frequency, at the desired sample-rate.




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


--_000_AS4P250MB0799C4E57A7437C20CFFED3D9BEA9AS4P250MB0799EURP_
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
thanks for your prompt reply! Indeed, my description was lacking a bit of d=
etails.
<div><br>
</div>
<div>In short:</div>
<div>- We transmit with 50MHz sample rate and 400MHZ analog bandwidth (acco=
rding to RF config setup)</div>
<div>- We generate a signal that consists of sections with pure (complex) t=
ones of different frequencies with constant amplitude, ranging from -25MHz =
to +25MHz frequency in baseband (-25, -19.5, -14, -8, -3, 3, 8, 14, 19.5, 2=
5).</div>
<div>- We receive the signal on the same USRP and plot the time domain of t=
he TX and RX signal. (first figure row)</div>
<div>- As visible, already the 8MHz tone is attenuated by around 3dB compar=
ed to the center frequency. Higher frequencies are more attenuated. This is=
 also visible in the spectrogramm.</div>
<div><br>
</div>
<div>We know and expect that the passband of the X410 is not totally flat. =
However, we do not expect the passband to be as severely shaped as we measu=
red. We know we cannot expect the edges to be not attenuated, but actually =
we would have expected at least
 say -20..20MHz to be relatively flat (for 50MHz sampling rate). Hence we w=
onder:</div>
<div><br>
</div>
<div>- if the problem can be reproduced on your (or other's side)?</div>
<div>- if the seen behaviour is correct and more flatness cannot be expecte=
d?</div>
<div><br>
</div>
<span>Thank you</span>.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I updated the plot as well.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<img style=3D"max-width: 100%;" class=3D"w-1920 h-1158" size=3D"63203" cont=
enttype=3D"image/png" data-outlook-trace=3D"F:1|T:1" src=3D"cid:e9618469-b7=
5f-4752-bf4d-922b1ee94af6"><br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>Von:</b> Marcus D. Leech &lt;=
patchvonbraun@gmail.com&gt;<br>
<b>Gesendet:</b> Freitag, 8. April 2022 16:22<br>
<b>An:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Betreff:</b> [USRP-users] Re: [x410] Frequency Selectivity?</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 2022-04-08 09:56, Tobias Kronauer wrote=
:<br>
</div>
<blockquote type=3D"cite">
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Hi all,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
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
<div><img class=3D"x_w-836 x_h-964" size=3D"39830" style=3D"max-width:100%"=
 data-outlook-trace=3D"F:2|T:2" src=3D"cid:part1.FyWuFAmC.eHWa603R@gmail.co=
m"><br>
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
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Tobias</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Attachments:</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
[0]: usrp_mwe.cpp<br>
</div>
<div>
<p style=3D"margin-top: 0px; margin-bottom: 0px;font-size:11pt; font-family=
:Calibri,sans-serif,serif,&quot;EmojiFont&quot;; margin:0px">
<br>
</p>
</div>
</blockquote>
Your plots aren't particularly clear in what they're showing, neither is yo=
ur problem description.&nbsp; Is your list of &quot;frequencies&quot; in te=
rms of the baseband?&nbsp; In Hz?&nbsp; Khz?&nbsp; MHz?<br>
<br>
ANY radio receiver (or transmitter) will have a passband response that is d=
ependent on the analog passband response of the various components in the s=
ystem.&nbsp; With<br>
&nbsp; a DSP radio the passband response is conceptually the convolution of=
 the&nbsp; analog and digital responses.&nbsp; The passband for any SDR wil=
l exhibit roll-off at the edges<br>
&nbsp; of your passband--that roll-off CANNOT be infinitely steep without t=
he filters also being infinitely long.<br>
<br>
I don't have an X410, so I don't know what the passband *should* look like,=
 but I imagine that there are both edge roll-off effects and the passband i=
s not<br>
&nbsp; perfectly &quot;flat&quot;.<br>
<br>
If you inject a laboratory noise source into the receiver, and just look at=
 the spectrum integrated over a few seconds, you will see the pass-band res=
ponse of the<br>
&nbsp; radio at the desired frequency, at the desired sample-rate.<br>
<br>
<br>
</div>
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

--_000_AS4P250MB0799C4E57A7437C20CFFED3D9BEA9AS4P250MB0799EURP_--

--_005_AS4P250MB0799C4E57A7437C20CFFED3D9BEA9AS4P250MB0799EURP_
Content-Type: image/png; name="frequency_selectivity.png"
Content-Description: frequency_selectivity.png
Content-Disposition: inline; filename="frequency_selectivity.png"; size=39830;
	creation-date="Fri, 08 Apr 2022 14:22:30 GMT";
	modification-date="Mon, 11 Apr 2022 11:05:49 GMT"
Content-ID: <part1.FyWuFAmC.eHWa603R@gmail.com>
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

--_005_AS4P250MB0799C4E57A7437C20CFFED3D9BEA9AS4P250MB0799EURP_
Content-Type: image/png; name="frequency_selectivity.png"
Content-Description: frequency_selectivity.png
Content-Disposition: inline; filename="frequency_selectivity.png"; size=63203;
	creation-date="Mon, 11 Apr 2022 11:06:45 GMT";
	modification-date="Mon, 11 Apr 2022 11:06:45 GMT"
Content-ID: <e9618469-b75f-4752-bf4d-922b1ee94af6>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAB4AAAASGCAYAAADIE7NGAAAAOXRFWHRTb2Z0d2FyZQBNYXRwbG90
bGliIHZlcnNpb24zLjUuMSwgaHR0cHM6Ly9tYXRwbG90bGliLm9yZy/YYfK9AAAACXBIWXMAAA9h
AAAPYQGoP6dpAAD2UElEQVR4nOzdeZzVdb0/8NeZgZkBlE12RUHFheuC4RU1LVMSzEotb2rmQi6V
kXkpU8oFl8Jdb12N3O2XXjWzsroXNZRSI3fNPTVJUwEBYVhkBmbO7w9ycmRXmDNzeD4fj/OYcz7f
z/fzfX9PpudzXuf7+RaKxWIxAAAAAAAAALR5FaUuAAAAAAAAAIC1QwAMAAAAAAAAUCYEwAAAAAAA
AABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYE
wAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAA
AAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABl
QgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAA
AAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAA
UCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAM
AAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAA
AABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYE
wAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAA
AAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABl
QgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAA
AAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAA
UCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAM
AAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAA
AABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYE
wAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAA
AAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABl
QgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAA
AAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAA
UCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAM
AAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAAAAAAAABlQgAMAAAAAAAAUCYEwAAA68DU
qVNTKBRy/fXXl7oUAACAJpMnT06hUMjkyZNLXQoAsI4IgAGAteZPf/pTxo0blzlz5pS6FAAAAACA
9ZIAGABYa/70pz/lrLPOEgADAAAAAJSIABgAAAAAWO8sWLCg1CUAAKwTAmAAYK0YN25cTj755CTJ
wIEDUygUUigUMnXq1Fx33XUpFAq59tprm+3zgx/8IIVCIf/7v/+70rEfeeSRjBgxIj169EiHDh0y
cODAfPnLX27W56KLLsruu++ejTbaKB06dMjQoUNz2223LTNWoVDI6NGj8/Of/zyDBw9Ohw4dsttu
u+Wpp55KkvzkJz/JlltumZqamuy1116ZOnVqs/332muvbLfddnn00Uez++67N9UzYcKE1Xqfnn/+
+Rx88MHp3r17ampqsvPOO+eOO+5o1mfx4sU566yzMmjQoNTU1GSjjTbKHnvskbvvvnu1jgEAADQ3
bty4FAqFPPvss/niF7+Ybt26ZY899siZZ56ZioqKTJo0qVn/448/PlVVVXnyySdXOu7dd9+dPfbY
I127ds0GG2yQrbfeOt/97nebttfX1+eMM87I0KFD06VLl3Tq1Cl77rln7r333mbjTJ06NYVCIRdd
dFEuv/zybL755unYsWP23XffvPbaaykWiznnnHOyySabpEOHDjnggAMye/bsZmMMGDAgn/70p3PX
XXdlyJAhqampyeDBg3P77bev1nv04IMPZuTIkenSpUs6duyYj3/843nggQea9Zk3b15OOumkDBgw
INXV1enVq1c++clP5rHHHlutYwAALaNQLBaLpS4CAGj7/vKXv+S8887L//zP/+TSSy9Njx49kiQH
HXRQOnXqlM985jO577778tRTT6V///556qmnsvPOO+eII47I1VdfvcJxZ8yYkW222SY9e/bMcccd
l65du2bq1Km5/fbb8+yzzzb169+/fz772c9m8ODBqa+vz80335yHHnoov/3tb7P//vs39SsUCtlh
hx3y9ttv5+tf/3qSZPz48enSpUu+853v5IorrsgxxxyTt99+OxdccEE++tGP5p577mnaf6+99sqL
L76YJUuW5Atf+EK22mqr3Hrrrbn//vtzzTXXNAXTU6dOzcCBA3Pdddfl6KOPTpI888wz+ehHP5qN
N944Rx11VDp16pRbb7019913X37xi1/koIMOSpJ873vfy/jx43Psscdml112SW1tbR555JHsuOOO
OeWUU9bO/2AAALAeGTduXM4666wMHjw4gwYNyogRI1IsFnPcccdl2LBhmT17dp566qlsuOGGufPO
OzNy5Micc845Oe2001Y45jPPPJOPfOQj2WGHHXLEEUekuro6L730Uh566KH84Q9/SJLMnDkzO+yw
Qw477LAMGjQo8+bNyzXXXJO//e1veeihhzJkyJAk/5o/DBkyJPX19Tn22GMze/bsXHDBBfnIRz6S
vffeO5MnT86hhx6al156KT/60Y9y9NFHN/uR7buh7IwZM/LVr341vXr1ynXXXZdnnnkmEydOzCc/
+ckkyeTJk/OJT3wi9957b/baa68kyT333JP99tsvQ4cOzcEHH5yKiopcd911ef7553Pfffdll112
SZIcfvjhue222zJ69OgMHjw4s2bNyv33359DDjkkhx9++Dr4Xw4A+ECKAABryYUXXlhMUnzllVeW
2fbmm28Wu3fvXvzkJz9ZrKurK+60007FTTfdtDh37tyVjvnLX/6ymKT48MMPr7TfwoULm72ur68v
brfddsW99967WXuSYnV1dbMaf/KTnxSTFPv06VOsra1tah87duwy5/Pxj3+8mKR48cUXN7XV1dUV
hwwZUuzVq1exvr6+WCwWi6+88koxSfG6665r6rfPPvsUt99+++KiRYua2hobG4u77757cdCgQU1t
O+64Y3H//fdf6fkCAACr78wzzywmKR522GHLbHvqqaeKVVVVxWOPPbb49ttvFzfeeOPizjvvXFy8
ePFKx7z00kuLSYpvvfXWCvssWbKkWFdX16zt7bffLvbu3bv45S9/uant3flDz549i3PmzGlqf3dO
suOOOzar57DDDitWVVU1m1tsttlmxSTFX/ziF01tc+fOLfbt27e40047NbXde++9xSTFe++9t1gs
Lp2TDBo0qDhixIhiY2NjU7+FCxcWBw4cWPzkJz/Z1NalS5fi17/+9ZW+LwBA6VkCGgBoEX369Mnl
l1+eu+++O3vuuWeeeOKJXHvttencufNK9+vatWuS5Le//W0WL168wn4dOnRoev72229n7ty52XPP
PZe7FNk+++yTAQMGNL0eNmxYkuTzn/98Ntxww2Xa//a3vzXbv127dvnKV77S9Lqqqipf+cpXMmPG
jDz66KPLrW/27Nm555578oUvfCHz5s3LzJkzM3PmzMyaNSsjRozIiy++mNdff73pnJ955pm8+OKL
KzxfAABgzX31q19dpm277bbLWWedlauvvjojRozIzJkzc8MNN6Rdu3YrHevducqvf/3rNDY2LrdP
ZWVlqqqqkiSNjY2ZPXt2lixZkp133nm5c5X/+I//SJcuXZpevzsn+dKXvtSsnmHDhqW+vr5pDvGu
fv36Na0slCSdO3fOkUcemccffzzTpk1bbo1PPPFEXnzxxXzxi1/MrFmzmuYqCxYsyD777JM//vGP
TefXtWvXPPjgg3njjTdW+t4AAKUlAAYAWsyhhx6a/fffPw899FCOO+647LPPPqvc5+Mf/3g+//nP
56yzzkqPHj1ywAEH5LrrrktdXV2zfr/97W+z6667pqamJt27d0/Pnj3z4x//OHPnzl1mzE033bTZ
63e/YOnfv/9y299+++1m7f369UunTp2atW211VZJssw9g9/10ksvpVgs5vTTT0/Pnj2bPc4888wk
S5e7TpKzzz47c+bMyVZbbZXtt98+J598cv7yl7+s8D0CAABWz8CBA5fbfvLJJ2fHHXfMQw89lDPP
PDODBw9e5ViHHHJIPvrRj+bYY49N7969c+ihh+bWW29dJgy+4YYbssMOO6SmpiYbbbRRevbsmd/9
7nfrZK6y5ZZbplAoNGtb1Vzl3R+eHnXUUcvMVa6++urU1dU11XrBBRfk6aefTv/+/bPLLrtk3Lhx
y/xgFgAovZX/jA0AYC2aNWtWHnnkkSTJs88+m8bGxlRUrPz3aIVCIbfddlv+/Oc/5ze/+U3uvPPO
fPnLX87FF1+cP//5z9lggw1y33335bOf/Ww+9rGP5Yorrkjfvn3Tvn37XHfddbnpppuWGbOysnK5
x1pRe7FYXMMzXda7XwJ9+9vfzogRI5bbZ8stt0ySfOxjH8vLL7+cX//617nrrrty9dVX59JLL82E
CRNy7LHHfuhaAABgffXelYPe629/+1tTEPrUU0+t9lh//OMfc++99+Z3v/tdJk6cmFtuuSV77713
7rrrrlRWVuZnP/tZjj766Bx44IE5+eST06tXr1RWVmb8+PF5+eWXlxmzlHOVCy+8sOmexO+3wQYb
JEm+8IUvZM8998wvf/nL3HXXXbnwwgtz/vnn5/bbb89+++33oWsBANYOATAAsNa8/5fm7/f1r389
8+bNy/jx4zN27NhcdtllGTNmzGqNveuuu2bXXXfN97///dx00005/PDDc/PNN+fYY4/NL37xi9TU
1OTOO+9MdXV10z7XXXfdhzqfFXnjjTeyYMGCZlcB//Wvf02SZktLv9fmm2+eJGnfvn2GDx++ymN0
7949o0aNyqhRozJ//vx87GMfy7hx4wTAAACwljU2Nuboo49O586dc9JJJ+UHP/hBDj744Hzuc59b
5b4VFRXZZ599ss8+++SSSy7JD37wg3zve9/Lvffem+HDh+e2227L5ptvnttvv73ZfOndVYDWtndX
HnrvsVY1V9liiy2SLF0uenXmKn379s0JJ5yQE044ITNmzMhHPvKRfP/73xcAA0ArYgloAGCteTcQ
nTNnzjLbbrvtttxyyy0577zzcuqpp+bQQw/Naaed1vRlxIq8/fbby/yq/d1fpb+7DHRlZWUKhUIa
Ghqa+kydOjW/+tWvPvjJrMSSJUvyk5/8pOl1fX19fvKTn6Rnz54ZOnTocvfp1atX9tprr/zkJz/J
m2++ucz2t956q+n5rFmzmm3bYIMNsuWWWy6z7DUAAPDhXXLJJfnTn/6UK6+8Muecc0523333fO1r
X8vMmTNXut/s2bOXaVveXCVpfqXugw8+mClTpqyl6pt744038stf/rLpdW1tbX76059myJAh6dOn
z3L3GTp0aLbYYotcdNFFmT9//jLb352rNDQ0LLNsda9evdKvXz9zFQBoZVwBDACsNe+Gn9/73vdy
6KGHpn379vnMZz6TBQsW5Gtf+1o+8YlPZPTo0UmS//7v/869996bo48+Ovfff/8Kl4K+4YYbcsUV
V+Sggw7KFltskXnz5uWqq65K586d86lPfSpJsv/+++eSSy7JyJEj88UvfjEzZszI5Zdfni233HKd
3Du3X79+Of/88zN16tRstdVWueWWW/LEE0/kyiuvTPv27Ve43+WXX5499tgj22+/fY477rhsvvnm
mT59eqZMmZJ//OMfefLJJ5MkgwcPzl577ZWhQ4eme/fueeSRR3Lbbbc1vXcAAMDa8dxzz+X000/P
0Ucfnc985jNJkuuvvz5DhgzJCSeckFtvvXWF+5599tn54x//mP333z+bbbZZZsyYkSuuuCKbbLJJ
9thjjyTJpz/96dx+++056KCDsv/+++eVV17JhAkTMnjw4OWGrR/WVlttlWOOOSYPP/xwevfunWuv
vTbTp09f6epIFRUVufrqq7Pffvvl3/7t3zJq1KhsvPHGef3113Pvvfemc+fO+c1vfpN58+Zlk002
ycEHH5wdd9wxG2ywQX7/+9/n4YcfzsUXX7zWzwUA+OAEwADAWvPv//7vOeecczJhwoRMnDgxjY2N
eeWVV/Ktb30rdXV1ue6665qWIttoo41y5ZVX5oADDshFF12U73znO8sd8+Mf/3geeuih3HzzzZk+
fXq6dOmSXXbZJTfeeGMGDhyYJNl7771zzTXX5LzzzstJJ52UgQMHNgW06yIA7tatW2644YZ84xvf
yFVXXZXevXvnv//7v3PcccetdL/BgwfnkUceyVlnnZXrr78+s2bNSq9evbLTTjvljDPOaOp34okn
5o477shdd92Vurq6bLbZZjn33HNz8sknr/VzAQCA9VVDQ0OOOuqo9OjRI5dddllT+6BBgzJ+/Ph8
85vfzK233povfOELy93/s5/9bKZOnZprr702M2fOTI8ePfLxj388Z511Vrp06ZIkOfroozNt2rT8
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
ggULMmrUqCTJkUcemY033jjjx49PTU1Ntttuu2b7d+3aNUmWaQcAAKB1EgADwHqukGKpSwAA1qFD
Djkkb731Vs4444xMmzYtQ4YMycSJE9O7d+8kyauvvpqKiooSVwkAAMDaIgAGAACAMjd69OjlLvmc
JJMnT17pvtdff/3aLwgAAIB1xk98AQAASuyY//h0Lhg3ttRlAAAALGOvvfbKSSedVOoygDXgCmAA
AIASu+TK/5d27U3PAACA1uf2229P+/btS10GsAZ8wwAA6zn3AAYovS7dupW6BAAAgOXq3r17qUsA
1pAloAEAAErsvUtA77fbDrnyvy7K9076anbdepOM3HX7TL7rfzN71sx888tfzK5bb5KDP/nRPPPk
4037z3l7dg477LBsvPHG6dixY7bffvv8z//8T7NjzJs3L4cffng6deqUvn375tJLL7WUGwAAsErv
nTcMGDAg5557bo488shssMEG2WyzzXLHHXfkrbfeygEHHJANNtggO+ywQx555JGm/WfNmmW+Ai1M
AAwAANDK/OzqKzJk52G5ZeIfsufe++Z7J301p5301ez/uS/k5v+bnE02G5jT/vNrKRaXruJQt2hR
hg4dmt/97nd5+umnc/zxx+eII47IQw891DTmmDFj8sADD+SOO+7I3Xffnfvuuy+PPfZYqU4RAABo
oy699NJ89KMfzeOPP579998/RxxxRI488sh86UtfymOPPZYtttgiRx55ZNN8ZZH5CrQ4S0ADwHJY
FBmgTBSLKSx5pzSHbtchKRQ+0L577P3J/MeXRiVJvnLSd3Lr/7s2/7bjR7Lvpw9Mknz5hG/miAP2
zay3ZqRHr97p3bdfvv3tbzft/41vfCN33nlnbr311uyyyy6ZN29ebrjhhtx0003ZZ599kiTXXXdd
+vXr9+FOEgAA+OCKxWTxwtIcu33HDzxf+dSnPpWvfOUrSZIzzjgjP/7xj/Pv//7v+Y//+I8kySmn
nJLddtst06dPT58+fbLxxhubr0ALEwADwHIU88E+ALdF69O5AuufwpJ3sv0N25bk2E8d9VyK7Tt+
oH232vbfmp5v1LNXkmTQNoOb2rr3WNo2e9Zb6dGrdxoaGnLOOefk1ltvzeuvv576+vrU1dWlY8el
x//b3/6WxYsXZ5dddmkao0uXLtl6660/UH0AAMBasHhh8oMShZzffSOp6vSBdt1hhx2anvfu3TtJ
sv322y/TNmPGjPTp0ycNDQ35wQ9+YL4CLUgADADrOQEwQOvTrl37pueFf/4qf3ltjY1L16y4fsIP
c+NVl+eyyy7L9ttvn06dOuWkk05KfX19C1YNAACsD9q3X3Zusry2xsbGJMmFF16Y//qv/zJfgRYk
AAYAAMpWsV2HPHXUcyU7dkt54pEHc8ABB+RLX/pSkqVftPz1r3/N4MFLrxrefPPN0759+zz88MPZ
dNNNkyRz587NX//613zsYx9rsToBAID3aN9x6ZW4pTp2C3nggQfMV6CFCYABYDm+2u63+Wq735a6
DFhnptZ8sdQlQMsoFD7wMsxtyaYDtsjdd/4mf/rTn9KtW7dccsklmT59etMXKhtuuGGOOuqonHzy
yenevXt69eqVM888MxUVFU2/zgcAAFpYofCBl2FuSwYNGpTbbrvNfAVaUEWpCwDalmKxWOoSAABW
qjKNpS6hxR1/4rfzkY98JCNGjMhee+2VPn365MADD2zW55JLLsluu+2WT3/60xk+fHg++tGPZttt
t01NTU1pigYAANYLp512mvkKtDBXAAMAAJTYNT//16oT/zflL8tsf/K1t5u93rj/ps3aunTrll/9
6lcrPcaGG26YG2+8sen1ggULctZZZ+X444//gFUDAADrg8mTJzc9nzp16jLb33/R0IABA5q1de/e
3XwFWpgAGFgjltwAAGibHn/88Tz//PPZZZddMnfu3Jx99tlJkgMOOKDElQEAK7Wodum9Ohvqk8f/
X9KuJtlyeLJobrLRFkmhMik2JrWvJx26JoWK5JX7koUzk44bJTOeS7beL6npunS8Lpv8a+xX/pB0
3zzZoM/SMRYvTGq6JHNfWzpuklRvkLTrkEx7KnnxrmSrkUn3gUu3zXk16brp0n0Wv7O0raJd0r4m
WTg7WVK3dKyOGyXdBi49RorJgreSqg2W7lM/P5n+dNJz2+St55JtP7t0WVxgvWK+AmuXABgAAGA9
cdFFF+WFF15IVVVVhg4dmvvuuy89evQodVkAwMqc1//Dj3Hv9z/8GO/64wVrb6wVGTd33R8DaHXM
V2DtEQADAACsB3baaac8+uijpS4DAABgGeYrsHZVlLoAAAAAAAAAANYOATAAAAAAAABAmRAAAwAA
5aNYTDHFUldRNopF7yUAAKxNPmOvPd5LWDEBMAAAUDYqF89PY2Njig1LSl1KWaivr0+SVFZWlrgS
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
AACAVksADKthzJgxueqqq3LDDTfkueeey9e+9rUsWLAgo0aNSpIceeSRGTt2bFP/888/P6effnqu
vfbaDBgwINOmTcu0adMyf/78JMn8+fNz8skn589//nOmTp2aSZMm5YADDsiWW26ZESNGlOQcAQAA
AAAAaPvcAxhWwyGHHJK33norZ5xxRqZNm5YhQ4Zk4sSJ6d27d5Lk1VdfTUXFv35P8eMf/zj19fU5
+OCDm41z5plnZty4camsrMxf/vKX3HDDDZkzZ0769euXfffdN+ecc06qq6tb9NwAAAAAAAAoHwJg
WE2jR4/O6NGjl7tt8uTJzV5PnTp1pWN16NAhd95551qqDAAAAAAAAJayBDQAAFBmCqUuAAAAAKBk
BMDAmvF9KgAAAAAAQKslAAYAAAAAAAAoEwJgAAAAAAAAgDIhAAYAAMpMsdQFALDO+Xc9AACsiAAY
AAAAAAAAoEwIgAEAAAAAAADKhACYNuXll1/OaaedlsMOOywzZsxIkvzf//1fnnnmmRJXth6xyhYA
AHxg5jSwdhTNTQEAYIUEwLQZf/jDH7L99tvnwQcfzO2335758+cnSZ588smceeaZJa5u/VGUAAMA
wAdiTgMAAEBLEADTZpx66qk599xzc/fdd6eqqqqpfe+9986f//znElYGAACwauY0AAAAtAQBMG3G
U089lYMOOmiZ9l69emXmzJklqAgAgNapUOoCYLnMaQAAAGgJAmDajK5du+bNN99cpv3xxx/Pxhtv
XIKKAAAAVp85DW3Oe2+0u6qb7haLyfy31m09AADAamlX6gJgdR166KE55ZRT8vOf/zyFQiGNjY15
4IEH8u1vfztHHnlkqcsDAKDVWEVIASViTsO60jkL8pea45a+GFfSUlrMoFIXAAAArZgrgGkzfvCD
H2SbbbZJ//79M3/+/AwePDgf+9jHsvvuu+e0004rdXkAALQSBQEwrZQ5DevKLVXnlLoEAACgFXEF
MG1GVVVVrrrqqpx++ul5+umnM3/+/Oy0004ZNMjvfltSwT31AADgAzGnYV3ZtuLVUpcAAAC0IgJg
2pxNN900m266aanLAAAA+EDMaQAA/mlcl1JX0OIaT387FZUWZwXWLQEwrdqYMWNWu+8ll1yyDisB
AABYc+Y0AAC81x+u+14+cez4UpcBlDkBMK3a448/3uz1Y489liVLlmTrrbdOkvz1r39NZWVlhg4d
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
eeONN3LRRRdl8ODB+fvf/56vfvWreeONN3Lbbbc163vddddl5MiRTa+7du26Lk8FAAAAykix1AUA
AECrJQCGFXjuuecyceLEPPzww9l5552TJD/60Y/yqU99KhdddFH69eu3zD7bbbddfvGLXzS93mKL
LfL9738/X/rSl7JkyZK0a/ev/8t17do1ffr0WfcnAgAAAAAAwHrDEtCwAlOmTEnXrl2bwt8kGT58
eCoqKvLggw+u9jhz585N586dm4W/SfL1r389PXr0yC677JJrr702xWLb+PVyGykTAACAMmYBaAAA
WDFXAMMKTJs2Lb169WrW1q5du3Tv3j3Tpk1brTFmzpyZc845J8cff3yz9rPPPjt77713OnbsmLvu
uisnnHBC5s+fnxNPPHGFY9XV1aWurq7pdW1t7Rqczdoj/wUAWjufVwAAAID1mQCY9c6pp56a888/
f6V9nnvuuQ99nNra2uy///4ZPHhwxo0b12zb6aef3vR8p512yoIFC3LhhReuNAAeP358zjrrrA9d
FwAAALR1hYJrgAEAYEUEwKx3vvWtb+Xoo49eaZ/NN988ffr0yYwZM5q1L1myJLNnz17lvXvnzZuX
kSNHZsMNN8wvf/nLtG/ffqX9hw0blnPOOSd1dXWprq5ebp+xY8dmzJgxTa9ra2vTv3//lY4LAAAA
AADA+kUAzHqnZ8+e6dmz5yr77bbbbpkzZ04effTRDB06NElyzz33pLGxMcOGDVvhfrW1tRkxYkSq
q6tzxx13pKamZpXHeuKJJ9KtW7cVhr9JUl1dvdLtAAAAAAAAIACGFdh2220zcuTIHHfccZkwYUIW
L16c0aNH59BDD02/fv2SJK+//nr22Wef/PSnP80uu+yS2tra7Lvvvlm4cGF+9rOfpba2tulevT17
9kxlZWV+85vfZPr06dl1111TU1OTu+++Oz/4wQ/y7W9/u5SnCwBQNiwKClD+/LseAABWTAAMK3Hj
jTdm9OjR2WeffVJRUZHPf/7z+eEPf9i0ffHixXnhhReycOHCJMljjz2WBx98MEmy5ZZbNhvrlVde
yYABA9K+fftcfvnl+c///M8Ui8VsueWWueSSS3Lccce13IkBAAAAAABQlgTAsBLdu3fPTTfdtMLt
AwYMSLFYbHq91157NXu9PCNHjszIkSPXWo0AADS38k9jAAAAAOWtotQFAAAAAAAAALB2CICBNeI+
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
36d3794ZMmRIzjnnnJxyyikZN25cqqqq1sn5AACsL9wJknL3rW99K0cfffRK+2y++ebp06dPZsyY
0ax9yZIlmT179grnK++aN29eRo4cmQ033DC//OUv0759+5X2Hzt2bMaMGdP0ura2VggMAABQIq4A
hhX4MPfLuvHGG9OjR49st912GTt2bBYuXNhs3O233z69e/duahsxYkRqa2vzzDPPrP0TAQAAykrP
nj2zzTbbrPRRVVWV3XbbLXPmzMmjjz7atO8999yTxsbGDBs2bIXj19bWZt99901VVVXuuOOO1NTU
rLKm6urqdO7cudkD1qmCr7QAAGBFXAEMK/BB75f1xS9+MZtttln69euXv/zlLznllFPywgsv5Pbb
b28a973hb5Km1ysbt66uLnV1dU2v3VMLAGD5iqUuAFqJbbfdNiNHjsxxxx2XCRMmZPHixRk9enQO
PfTQphWNXn/99eyzzz756U9/ml122aUp/F24cGF+9rOfNbufb8+ePVNZWVnKU4J/6dQz2ebTS4Pg
Dt1KXQ0AALQqAmDWO6eeemrOP//8lfZ57rnnPvD4771H8Pbbb5++fftmn332ycsvv5wtttjiA487
fvz4nHXWWR94/7WlYE1FAABoM2688caMHj06++yzTyoqKvL5z38+P/zhD5u2L168OC+88ELTqkWP
PfZY04pHW265ZbOxXnnllQwYMKDFaoeVKhSSQ28sdRUAANAqCYBZ77TE/bLe692l1V566aVsscUW
6dOnTx566KFmfaZPn54kKx3XPbUAAIA11b1799x0000r3D5gwIAUi/+6bn6vvfZq9hoAAIC2RwDM
eqdnz57p2bPnKvu9935ZQ4cOTbJ698t6vyeeeCJJ0rdv36Zxv//972fGjBlNS0zffffd6dy5cwYP
HrzCcaqrq1NdXb3ax11XfBcEAAAAAADQelWUugBord57v6yHHnooDzzwwHLvl7XNNts0XdH78ssv
55xzzsmjjz6aqVOn5o477siRRx6Zj33sY9lhhx2SJPvuu28GDx6cI444Ik8++WTuvPPOnHbaafn6
17/eKgLeVXE1AAAAAAAAQOslAIaVuPHGG7PNNttkn332yac+9ansscceufLKK5u2v/9+WVVVVfn9
73+ffffdN9tss02+9a1v5fOf/3x+85vfNO1TWVmZ3/72t6msrMxuu+2WL33pSznyyCNz9tlnt/j5
AQAAAAAAUF4sAQ0rsab3y+rfv3/+8Ic/rHLczTbbLP/7v/+7VmoEAKC5QqkLAAAAACghVwADAAAA
AAAAlAkBMAAAUGaKq+4CAAAAUKYEwAAAAAAAAABlQgAMAACUGXcBBgAAANZfAmAAAAAAACilk/9W
6goAKCPtSl0AAAAAAAA0GTe31BX8S7GYFN63wkxj49K297cDQCshAAYAAAAAgOVZXshbYWFNAFo3
/6UC1kjBLxsBAAAAAABaLQEwAAAAAAAAQJkQAANrpFgslroEAAAAAAAAVkAADKwR8S8AAAAAAEDr
JQAGAADKjJ+sAQAAAOsvATAAAAAAAABAmRAAAwAAZaZQ6gIAAAAASkYADAAAAAAAAFAmBMAAAEBZ
cQdgAAAAYH0mAAYAAAAAAAAoEwJgAAAAAAAAgDIhAAYAAAAAAAAoEwJgAAAAAAAAgDIhAAYAAAAA
AAAoEwJgYI0USl0AAMAq+LwCAAAArM8EwMAaKZa6AAAAAAAAAFZIAAyskaIEGABo5XxcAQAAANZn
AmAAAAAAAACAMiEABgAAAAAAACgTAmAAAAAAAACAMiEABgAAAAAAACgTAmAAAAAAAACAMiEABgAA
AAAAACgTAmAAAKCsFEpdAAAAAEAJCYABAIAyUyx1AQAAAAAlIwAGAAAAAAAAKBMCYAAAoMxYBBoA
AABYfwmAgTVS8H0qAAAAAABAqyUAhpWYPXt2Dj/88HTu3Dldu3bNMccck/nz56+w/9SpU1MoFJb7
+PnPf97Ub3nbb7755pY4pQ+t6JZ6AAAAAAAArVa7UhcArdnhhx+eN998M3fffXcWL16cUaNG5fjj
j89NN9203P79+/fPm2++2aztyiuvzIUXXpj99tuvWft1112XkSNHNr3u2rXrWq9/XZD/AgAAAAAA
tF4CYFiB5557LhMnTszDDz+cnXfeOUnyox/9KJ/61Kdy0UUXpV+/fsvsU1lZmT59+jRr++Uvf5kv
fOEL2WCDDZq1d+3adZm+AAAAAAAA8GFYAhpWYMqUKenatWtT+Jskw4cPT0VFRR588MHVGuPRRx/N
E088kWOOOWaZbV//+tfTo0eP7LLLLrn22mtTtLYyAAAAAAAAH5IrgGEFpk2bll69ejVra9euXbp3
755p06at1hjXXHNNtt122+y+++7N2s8+++zsvffe6dixY+66666ccMIJmT9/fk488cQVjlVXV5e6
urqm17W1tWtwNgAAAEBb95m6c/Ob6tNKXQYAAK2cK4BZ75x66qkpFAorfTz//PMf+jjvvPNObrrp
puVe/Xv66afnox/9aHbaaaeccsop+c53vpMLL7xwpeONHz8+Xbp0aXr079//Q9cIAAAAtB1PFTfP
gEU3NT1W5eTFx+fyJZ9drbF3WHRl0/P96sZnwKKbsvWi6z9QnX9rXP1bXg2vuyA7vufYe9T9V7Ze
dH2uXTLyAx0bAABXALMe+ta3vpWjjz56pX0233zz9OnTJzNmzGjWvmTJksyePXu17t172223ZeHC
hTnyyCNX2XfYsGE555xzUldXl+rq6uX2GTt2bMaMGdP0ura2VggMALBcbq0BwPphwKKb0i5LsnPF
X/NQ4zZpXMG1HhcuOTRJ0iez8s12t+e7S45JMYVUpNhsn/eHynWpysBFP8vwiscypXFw5qfj+0Yu
Jilkp8KL6VmYkz807pi6VC1z/PZZku0Kr+Tx4pbZMO/kwMr780qxb55s3CLz/jnm+4999pIjc/aS
I9Mrb+ehmq+v4TsDALB+EwCz3unZs2d69uy5yn677bZb5syZk0cffTRDhw5Nktxzzz1pbGzMsGHD
Vrn/Nddck89+9rOrdawnnngi3bp1W2H4myTV1dUr3Q4AAAD8f/buPE6Ous4f/6t6rtwJgRwEAoRD
OeUUDIKgRBBcFsT1PiLyRUXABWQVfip4guKFeAC6CLqr67WK14KyCKiIICguIKIICALhJoGEHDNd
vz8mmcwkk4vMpHp6ns/Hox/prqqufndVZqbe9a7Pu4afzrTmt/Ud12rZOdk4p3ce2/O6nmKN7ylT
yxX1vVYxt/v9fyi3W+31V0vS2r1MkqcyKv/RdfBaxQsAwLOjAAyrsMMOO+RlL3tZjj322FxwwQVZ
smRJTjjhhLz2ta/NtGnTkiT3339/DjrooHz961/P3nvv3fPeO++8M7/85S/zP//zPyut98c//nEe
euihvOAFL8iIESNyxRVX5Kyzzsqpp566wb4bAEBzW/PJbAAAAIBmpQAMq/GNb3wjJ5xwQg466KDU
arW88pWvzHnnndczf8mSJbnjjjuyYMGCPu/76le/ms033zwHH7zyFa1tbW354he/mJNPPjllWWbb
bbfNZz7zmRx77LErLQsAAAAAAADrQgEYVmPixIn55je/ucr5W221Vcpy5R5HZ511Vs4666x+3/Oy
l70sL3vZywYsRgAAAAAAAFimVnUAAAAAAAAAAAwMI4ABAAAAYAi4/cMvyw5nXN5n2lWnHphNx49I
R2stRVH0TL/rkafz98cXZMbGo7PZRiPTWiv6zE+SJV31LFjUlZvufTz7brNJyjKp1ZLP/PwvufCX
dyVJ9t9uk3z9rXunKIosXNLV8zkLl3RlRFtLn/XV62WKInn4qUV5csGSPHfq2MxbuCRjO1pTFEUW
d9bTUivSUuuO48G5z2Tm2b9IkuwzY2I++S+75kWfvCq7TZ+Q9718h8xdsCQvnLI4+fyAb0oAgKam
AAysk/5aXgMAAACDb2R7S+75+MvXatmtJ43J1pPGrHaZtpZaxo+q5SXbT+kz/fTDdsjph+2w0vK9
C74rFn+TpLa0sDtl3IhMGTciSTJuRFvP/PbWvs0INx0/cqXvs+LrzifvX+13AABgZVpAAwAATcXl
agAAAMBwpgAMAAAAAAAA0CQUgAEAgKZSrHkRAAAAgKalAAwAAAAAAADQJBSAAQCApuIewAAAAMBw
pgAMAAAAAAAA0CQUgAEAAAAAAACahAIwAAAAANCYSjd3AABYVwrAAAAAAAAAAE2iteoAAAAAAAD6
U9SMX0mSHPHF5J5fJy3tyUZbJeM3T7Z4QdI6IrnzyuTW7yW7vi4p68mT9yYTtkwm75Dc8t1k7NRk
6i5J+5jkqTnJDRcmoycnf7822eft3escMzmZsksy7/5k0bzkuS9P7vllcs+1ybWfS6bsmOx5dDJ6
UrJkQbLoqWS7g5NHbk86xnWva/H8ZOym3ctsumty11VJ15LuUdyP/TXZ/PnJFjOTOf+X1DuTyTsl
t/8oGTEumbZ78pWXJK0jk5Nvq3prA8CQpwAMAAAAANCoPji3+9/d39j//N1e1/3oz9SdV5723Jet
+rM22Xb5860P7H685H2rXn78Zt3/Tt975Xl7vqX/90yYvvz5/qcsf77sewIA680ldAAAAAAAAABN
QgEYAABoKn8ot6s6BAAAAIDKKAADAABN5fFybNUhAAAAAFTGPYABoB9vWHx6rq3vUnUYG8QRtV/n
c+1fqjoMNrCtFn6z6hA2mHtGvL7qENjAyqoDAAAAAKiQEcAAAAAAAAAATUIBGAD6UVQdAAAAAAAA
PAsKwAAwzCl2AwAAjUvGAgCwrhSAAQAAAAAAAJqEAjAAAAAAAABAk1AABgAAAAAaVFl1AAAAQ44C
MAAMc06nAAAAAAA0DwVgAAAAAAAAgCahAAwAAAAAAADQJBSAAQCAplKmqDoEaBiPP/543vCGN2Tc
uHGZMGFCjjnmmDz99NNr9d6yLHPooYemKIpceumlgxsoAAAAA0YBGFgnpZuFMkwU7owLADSBN7zh
DbnttttyxRVX5Cc/+Ul++ctf5m1ve9tavffcc89NUbigAgAAYKhprToAAAAAYODdfvvtufzyy/O7
3/0ue+21V5Lk85//fA477LB86lOfyrRp01b53ptvvjmf/vSnc+ONN2bTTTfdUCED9MOFKAAA68oI
YAAAAGhC1113XSZMmNBT/E2SWbNmpVar5frrr1/l+xYsWJDXv/71+eIXv5ipU6duiFABAAAYQEYA
AwAAQBOaM2dOJk+e3Gdaa2trJk6cmDlz5qzyfSeffHL23XffHHHEEWv9WYsWLcqiRYt6Xs+bN2/d
AwYAAGBAGAEMAAAAQ8hpp52WoihW+/jzn//8rNb9ox/9KL/4xS9y7rnnrtP7zj777IwfP77nMX36
9Gf1+QAr0gAaAGDdGQEMAAAAQ8i73/3uvOUtb1ntMltvvXWmTp2ahx9+uM/0zs7OPP7446ts7fyL
X/wif/vb3zJhwoQ+01/5yldm//33z9VXX93v+04//fSccsopPa/nzZunCAwAAFARBWAAAAAYQiZN
mpRJkyatcbmZM2fmySefzE033ZQ999wzSXeBt16vZ5999un3Paeddlr+3//7f32m7bLLLvnsZz+b
ww8/fJWf1dHRkY6OjnX4FgAAAAwWLaBhNT72sY9l3333zahRo1a6An5VyrLMGWeckU033TQjR47M
rFmz8te//rXPMo8//nje8IY3ZNy4cZkwYUKOOeaYPP3004PwDQAAgOFqhx12yMte9rIce+yxueGG
G3LttdfmhBNOyGtf+9pMmzYtSXL//fdn++23zw033JAkmTp1anbeeec+jyTZYostMmPGjMq+CzB8
FXpAAwCsMwVgWI3FixfnVa96VY477ri1fs8555yT8847LxdccEGuv/76jB49OoccckgWLlzYs8wb
3vCG3Hbbbbniiivyk5/8JL/85S/ztre9bTC+AgAAMIx94xvfyPbbb5+DDjoohx12WPbbb798+ctf
7pm/ZMmS3HHHHVmwYEGFUQKsRqvuAgAA60oLaFiND33oQ0mSSy65ZK2WL8sy5557bt7//vfniCOO
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
97znZdy4cRk3blxmzpyZyy67rGe+/dIYPv7xj6coipx00kk90+ybDe+DH/xgiqLo89h+++175tsn
1br//vvzxje+MRtvvHFGjhyZXXbZJTfeeGPPfMcAIF9pBPKVxiRfaUxylaFBrtI45CuNS64CjUcB
GFhr3/72t3PKKafkzDPPzO9///vsuuuuOeSQQ/Lwww9XHdqwMn/+/Oy666754he/2O/8c845J+ed
d14uuOCCXH/99Rk9enQOOeSQLFy4cANHOrxcc801Of744/Pb3/42V1xxRZYsWZKDDz448+fP71nm
5JNPzo9//ON897vfzTXXXJMHHnggRx11VIVRDw+bb755Pv7xj+emm27KjTfemJe85CU54ogjcttt
tyWxXxrB7373u1x44YV53vOe12e6fVONnXbaKQ8++GDP49e//nXPPPukOk888URe+MIXpq2tLZdd
dln+9Kc/5dOf/nQ22mijnmUcAzDcyVcag3ylMclXGpNcpfHJVRqPfKXxyFWgQZUAa2nvvfcujz/+
+J7XXV1d5bRp08qzzz67wqiGtyTlD37wg57X9Xq9nDp1avnJT36yZ9qTTz5ZdnR0lP/1X/9VQYTD
18MPP1wmKa+55pqyLLv3Q1tbW/nd7363Z5nbb7+9TFJed911VYU5bG200Ublv//7v9svDeCpp54q
t9tuu/KKK64oDzjggPJf//Vfy7L0M1OVM888s9x11137nWefVOu9731vud9++61yvmMAkK80IvlK
45KvNC65SuOQqzQe+UpjkqtAYzICGFgrixcvzk033ZRZs2b1TKvVapk1a1auu+66CiOjt7vvvjtz
5szps5/Gjx+fffbZx37awObOnZskmThxYpLkpptuypIlS/rsm+233z5bbLGFfbMBdXV15Vvf+lbm
z5+fmTNn2i8N4Pjjj8/LX/7yPvsg8TNTpb/+9a+ZNm1att5667zhDW/Ivffem8Q+qdqPfvSj7LXX
XnnVq16VyZMnZ/fdd89XvvKVnvmOARju5CtDg99VjUO+0njkKo1HrtKY5CuNR64CjUkBGFgrjz76
aLq6ujJlypQ+06dMmZI5c+ZUFBUrWrYv7Kdq1ev1nHTSSXnhC1+YnXfeOUn3vmlvb8+ECRP6LGvf
bBi33HJLxowZk46OjrzjHe/ID37wg+y44472S8W+9a1v5fe//33OPvvslebZN9XYZ599cskll+Ty
yy/P+eefn7vvvjv7779/nnrqKfukYnfddVfOP//8bLfddvnZz36W4447Lu9617vyta99LYljAJCv
DA1+VzUG+Upjkas0JrlKY5KvNCa5CjSm1qoDAIBmc/zxx+fWW2/tcx8aqvXc5z43N998c+bOnZvv
fe97mT17dq655pqqwxrW7rvvvvzrv/5rrrjiiowYMaLqcFjq0EMP7Xn+vOc9L/vss0+23HLLfOc7
38nIkSMrjIx6vZ699torZ511VpJk9913z6233poLLrggs2fPrjg6AIYS+Upjkas0HrlK45KvNCa5
CjQmI4CBtbLJJpukpaUlDz30UJ/pDz30UKZOnVpRVKxo2b6wn6pzwgkn5Cc/+UmuuuqqbL755j3T
p06dmsWLF+fJJ5/ss7x9s2G0t7dn2223zZ577pmzzz47u+66az73uc/ZLxW66aab8vDDD2ePPfZI
a2trWltbc8011+S8885La2trpkyZYt80gAkTJuQ5z3lO7rzzTj8vFdt0002z44479pm2ww479LS8
cwzAcCdfGRr8rqqefKXxyFUaj1xl6JCvNAa5CjQmBWBgrbS3t2fPPffMlVde2TOtXq/nyiuvzMyZ
MyuMjN5mzJiRqVOn9tlP8+bNy/XXX28/DbKyLHPCCSfkBz/4QX7xi19kxowZfebvueeeaWtr67Nv
7rjjjtx77732TQXq9XoWLVpkv1TooIMOyi233JKbb76557HXXnvlDW94Q89z+6Z6Tz/9dP72t79l
00039fNSsRe+8IW54447+kz7y1/+ki233DKJYwCQrwwNfldVR74ydMhVqidXGTrkK41BrgKNSQto
YK2dcsopmT17dvbaa6/svffeOffcczN//vwcffTRVYc2rDz99NO58847e17ffffdufnmmzNx4sRs
scUWOemkk/LRj3402223XWbMmJEPfOADmTZtWo488sjqgh4Gjj/++Hzzm9/MD3/4w4wdO7bnHibj
x4/PyJEjM378+BxzzDE55ZRTMnHixIwbNy4nnnhiZs6cmRe84AUVR9/cTj/99Bx66KHZYost8tRT
T+Wb3/xmrr766vzsZz+zXyo0duzYnnvOLTN69OhsvPHGPdPtmw3v1FNPzeGHH54tt9wyDzzwQM48
88y0tLTkda97nZ+Xip188snZd999c9ZZZ+XVr351brjhhnz5y1/Ol7/85SRJURSOARj25CuNQb7S
mOQrjUmu0pjkKo1LvtKY5CrQoEqAdfD5z3++3GKLLcr29vZy7733Ln/7299WHdKwc9VVV5VJVnrM
nj27LMuyrNfr5Qc+8IFyypQpZUdHR3nQQQeVd9xxR7VBDwP97ZMk5cUXX9yzzDPPPFO+853vLDfa
aKNy1KhR5Ste8YrywQcfrC7oYeKtb31rueWWW5bt7e3lpEmTyoMOOqj8+c9/3jPffmkcBxxwQPmv
//qvPa/tmw3vNa95TbnpppuW7e3t5WabbVa+5jWvKe+8886e+fZJtX784x+XO++8c9nR0VFuv/32
5Ze//OU+8x0DgHylEchXGpN8pTHJVYYOuUpjkK80LrkKNJ6iLMtyQxacAQAAAAAAABgc7gEMAAAA
AAAA0CQUgAEAAAAAAACahAIwAAAAAAAAQJNQAAYAAAAAAABoEgrAAAAAAAAAAE1CARgAAAAAAACg
SSgAAwAAAAAAADQJBWAAAAAAAACAJqEADAA8a295y1ty5JFHbvDPveSSS1IURYqiyEknndQzfaut
tsq55567weNZXwO9HZdtmwkTJgzYOgEAYCiRqwwMuQoADE2tVQcAADSmoihWO//MM8/M5z73uZRl
uYEi6mvcuHG54447Mnr06Eo+v5E9+OCD+fa3v50zzzyz6lAAAGDAyVWGLrkKAGwYCsAAQL8efPDB
nuff/va3c8YZZ+SOO+7omTZmzJiMGTOmitCSdJ/0mTp1amWf38imTp2a8ePHVx0GAAAMCrnK0CVX
AYANQwtoAKBfU6dO7XmMHz++5yTGsseYMWNWagd24IEH5sQTT8xJJ52UjTbaKFOmTMlXvvKVzJ8/
P0cffXTGjh2bbbfdNpdddlmfz7r11ltz6KGHZsyYMZkyZUre9KY35dFHH13v7/Dv//7vmTBhQq68
8sokyfe+973ssssuGTlyZDbeeOPMmjUr8+fPT5L87ne/y0tf+tJssskmGT9+fA444ID8/ve/77O+
oihy4YUX5p/+6Z8yatSo7LDDDrnuuuty55135sADD8zo0aOz77775m9/+1vPez74wQ9mt912y4UX
Xpjp06dn1KhRefWrX525c+euMu56vZ6zzz47M2bMyMiRI7Prrrvme9/7Xs/8J554Im94wxsyadKk
jBw5Mtttt10uvvji9d5eAAAwFMhV5CoAwOopAAMAA+prX/taNtlkk9xwww058cQTc9xxx+VVr3pV
9t133/z+97/PwQcfnDe96U1ZsGBBkuTJJ5/MS17ykuy+++658cYbc/nll+ehhx7Kq1/96vWK45xz
zslpp52Wn//85znooIPy4IMP5nWve13e+ta35vbbb8/VV1+do446qqct3FNPPZXZs2fn17/+dX77
299mu+22y2GHHZannnqqz3o/8pGP5M1vfnNuvvnmbL/99nn961+ft7/97Tn99NNz4403pizLnHDC
CX3ec+edd+Y73/lOfvzjH+fyyy/PH/7wh7zzne9cZexnn312vv71r+eCCy7IbbfdlpNPPjlvfOMb
c8011yRJPvCBD+RPf/pTLrvsstx+++05//zzs8kmm6zX9gIAgGYnV5GrAMCwUQIArMHFF19cjh8/
fqXps2fPLo844oie1wcccEC533779bzu7OwsR48eXb7pTW/qmfbggw+WScrrrruuLMuy/MhHPlIe
fPDBfdZ73333lUnKO+64Y53i2XLLLcvPfvaz5Xve855y0003LW+99daeeTfddFOZpLznnnvW5iuX
XV1d5dixY8sf//jHPdOSlO9///t7Xl933XVlkvKiiy7qmfZf//Vf5YgRI3pen3nmmWVLS0v5j3/8
o2faZZddVtZqtfLBBx8sy7Lvdly4cGE5atSo8je/+U2feI455pjyda97XVmWZXn44YeXRx999Grj
X9U2AgCAZiJX6SZXAQB6cw9gAGBAPe95z+t53tLSko033ji77LJLz7QpU6YkSR5++OEkyR//+Mdc
ddVV/d6j629/+1ue85znrNPnf/rTn878+fNz4403Zuutt+6Zvuuuu+aggw7KLrvskkMOOSQHH3xw
/uVf/iUbbbRRkuShhx7K+9///lx99dV5+OGH09XVlQULFuTee+9d5fdb9l1W/H4LFy7MvHnzMm7c
uCTJFltskc0226xnmZkzZ6Zer+eOO+5Y6d5gd955ZxYsWJCXvvSlfaYvXrw4u+++e5LkuOOOyytf
+cqeUQpHHnlk9t1333XaTgAAMNzIVeQqADBcaAENAAyotra2Pq+LougzrSiKJN33jkqSp59+Oocf
fnhuvvnmPo+//vWvedGLXrTOn7///vunq6sr3/nOd/pMb2lpyRVXXJHLLrssO+64Yz7/+c/nuc99
bu6+++4kyezZs3PzzTfnc5/7XH7zm9/k5ptvzsYbb5zFixev8vst+y6r+37r6umnn06S/PSnP+2z
Pf70pz/13Fvr0EMPzd///vecfPLJeeCBB3LQQQfl1FNPfVafBwAAw4VcRa4CAMOFAjAAUKk99tgj
t912W7baaqtsu+22fR6jR49e5/Xtvffeueyyy3LWWWflU5/6VJ95RVHkhS98YT70oQ/lD3/4Q9rb
2/ODH/wgSXLttdfmXe96Vw477LDstNNO6ejoyKOPPjog3/Hee+/NAw880PP6t7/9bWq1Wp773Oeu
tOyOO+6Yjo6O3HvvvSttj+nTp/csN2nSpMyePTv/+Z//mXPPPTdf/vKXByRWAACgm1ylL7kKAAwd
WkADAJU6/vjj85WvfCWve93r8p73vCcTJ07MnXfemW9961v593//97S0tKzzOvfdd9/8z//8Tw49
9NC0trbmpJNOyvXXX58rr7wyBx98cCZPnpzrr78+jzzySHbYYYckyXbbbZf/+I//yF577ZV58+bl
3/7t3zJy5MgB+Y4jRozI7Nmz86lPfSrz5s3Lu971rrz61a9eqaVakowdOzannnpqTj755NTr9ey3
336ZO3durr322owbNy6zZ8/OGWeckT333DM77bRTFi1alJ/85Cc93wMAABgYcpW+5CoAMHQoAAMA
lZo2bVquvfbavPe9783BBx+cRYsWZcstt8zLXvay1GrPvlnJfvvtl5/+9Kc57LDD0tLSklmzZuWX
v/xlzj333MybNy9bbrllPv3pT+fQQw9Nklx00UV529velj322CPTp0/PWWedNWCtyrbddtscddRR
Oeyww/L444/nn/7pn/KlL31plct/5CMfyaRJk3L22WfnrrvuyoQJE7LHHnvk//v//r8kSXt7e04/
/fTcc889GTlyZPbff/9861vfGpBYAQCAbnKVlclVAGBoKMqyLKsOAgBgXVxyySU56aST8uSTT1Yd
yhp98IMfzKWXXpqbb755g37uUNpGAADQLIbScbhcBQCal3sAAwBD0ty5czNmzJi8973vrTqUhjNm
zJi84x3vqDoMAAAYluQqqyZXAYANQwtoAGDIeeUrX5n99tsvSTJhwoRqg2lAy67gfzb3JAMAAJ49
ucrqyVUAYMPQAhoAAAAAAACgSWgBDQAAAAAAANAkFIABAAAAAAAAmoQCMAAAAAAAAECTUAAGAAAA
AAAAaBIKwAAAAAAAAABNQgEYAAAAAAAAoEkoAAMAAAAAAAA0CQVgAAAAAAAAgCahAAwAAAAAAADQ
JBSAAQAAAAAAAJqEAjAAAAAAAABAk1AABgAAAAAAAGgSCsAAAAAAAAAATUIBGAAAAAAAAKBJKAAD
AAAAAAAANAkFYACgoX3pS1/KJZdcUnUYDeub3/xmzj333KrDAACAYUeuAgA0qqIsy7LqIAAAVmXn
nXfOJptskquvvrrqUBrSP/3TP+XWW2/NPffcU3UoAAAwrMhVAIBGZQQwANA05s+fv8E+a+HChanX
6xvs8wAAgKFLrtJtwYIFVYcAAMOCAjAAkKeeeionnXRSttpqq3R0dGTy5Ml56Utfmt///vc9yxx4
4IHZeeedc9NNN2XffffNyJEjM2PGjFxwwQUrrW/RokU588wzs+2226ajoyPTp0/Pe97znixatGil
Zf/zP/8ze++9d0aNGpWNNtooL3rRi/Lzn/88SbLVVlvltttuyzXXXJOiKFIURQ488MAkySWXXJKi
KHLNNdfkne98ZyZPnpzNN9+8Z71f+tKXstNOO6WjoyPTpk3L8ccfnyeffHKlz//iF7+YrbfeOiNH
jszee++dX/3qVznwwAN7PidJrr766hRFkW9961t5//vfn8022yyjRo3KvHnz8vjjj+fUU0/NLrvs
kjFjxmTcuHE59NBD88c//rHP5yxbx3e+85186EMfymabbZaxY8fmX/7lXzJ37twsWrQoJ510UiZP
npwxY8bk6KOP7nd79XbggQfmpz/9af7+97/3bJ+tttoqSTJ79uyMGDEit99+e5/3HHLIIdloo43y
wAMPrHbdAADQCOQqQzNXWXG/vOhFL8qoUaNy+umn58UvfnEmTZqUhx9+uGfZxYsXZ5dddsk222yz
QYvlANCsWqsOAACo3jve8Y5873vfywknnJAdd9wxjz32WH7961/n9ttvzx577NGz3BNPPJHDDjss
r371q/O6170u3/nOd3Lcccelvb09b33rW5Mk9Xo9//zP/5xf//rXedvb3pYddtght9xySz772c/m
L3/5Sy699NKe9X3oQx/KBz/4wey777758Ic/nPb29lx//fX5xS9+kYMPPjjnnntuTjzxxIwZMybv
e9/7kiRTpkzpE/s73/nOTJo0KWeccUbPiYIPfvCD+dCHPpRZs2bluOOOyx133JHzzz8/v/vd73Lt
tdemra0tSXL++efnhBNOyP7775+TTz4599xzT4488shstNFGfU7QLPORj3wk7e3tOfXUU7No0aK0
t7fnT3/6Uy699NK86lWvyowZM/LQQw/lwgsvzAEHHJA//elPmTZtWp91nH322Rk5cmROO+203Hnn
nfn85z+ftra21Gq1PPHEE/ngBz+Y3/72t7nkkksyY8aMnHHGGavcb+973/syd+7c/OMf/8hnP/vZ
JMmYMWOSJJ/73Ofyi1/8IrNnz851112XlpaWXHjhhfn5z3+e//iP/1gpLgAAaERylaGZqyzz2GOP
5dBDD81rX/vavPGNb8yUKVNy0kkn5XnPe17e8Y535Pvf/36S5Mwzz8xtt92Wq6++OqNHj17jegGA
NSgBgGFv/Pjx5fHHH7/aZQ444IAySfnpT3+6Z9qiRYvK3XbbrZw8eXK5ePHisizL8j/+4z/KWq1W
/upXv+rz/gsuuKBMUl577bVlWZblX//617JWq5WveMUryq6urj7L1uv1nuc77bRTecABB6wUz8UX
X1wmKffbb7+ys7OzZ/rDDz9ctre3lwcffHCf9X7hC18ok5Rf/epXe2LfeOONy+c///nlkiVLepa7
5JJLyiR9PvOqq64qk5Rbb711uWDBgj5xLFy4cKX477777rKjo6P88Ic/vNI6dt55555tVZZl+brX
va4siqI89NBD+6xj5syZ5ZZbbrnS917Ry1/+8lUu97Of/axMUn70ox8t77rrrnLMmDHlkUceucZ1
AgBAo5CrDN1cZdl+ueCCC1aad+GFF5ZJyv/8z/8sf/vb35YtLS3lSSedtMZ1AgBrRwtoACATJkzI
9ddfv8a2wK2trXn729/e87q9vT1vf/vb8/DDD+emm25Kknz3u9/NDjvskO233z6PPvpoz+MlL3lJ
kuSqq65Kklx66aWp1+s544wzUqv1PSQpimKtYz/22GPT0tLS8/p///d/s3jx4px00kl91nvsscdm
3Lhx+elPf5okufHGG/PYY4/l2GOPTWvr8qYob3jDG7LRRhv1+1mzZ8/OyJEj+0zr6Ojo+Zyurq48
9thjGTNmTJ773Of2aUu3zJvf/Oaeq/qTZJ999klZlj2jEnpPv++++9LZ2bm2m2IlBx98cN7+9rfn
wx/+cI466qiMGDEiF1544bNeHwAAbGhylaGdq3R0dOToo49eafrb3va2HHLIITnxxBPzpje9Kdts
s03OOuusNa4PAFg7CsAAQM4555zceuutmT59evbee+988IMfzF133bXSctOmTVupHddznvOcJMk9
99yTJPnrX/+a2267LZMmTerzWLbcsvs8/e1vf0utVsuOO+64XrHPmDGjz+u///3vSZLnPve5faa3
t7dn66237pm/7N9tt922z3Ktra0999Fd02cl3W3kPvvZz2a77bZLR0dHNtlkk0yaNCn/93//l7lz
5660/BZbbNHn9fjx45Mk06dPX2l6vV7vdx3r4lOf+lQmTpyYm2++Oeedd14mT568XusDAIANSa6y
3FDMVTbbbLO0t7f3O++iiy7KggUL8te//jWXXHLJSgVsAODZcw9gACCvfvWrs//+++cHP/hBfv7z
n+eTn/xkPvGJT+T73/9+Dj300HVaV71ezy677JLPfOYz/c5f8eTB+tqQJwn6+6yzzjorH/jAB/LW
t741H/nIRzJx4sTUarWcdNJJqdfrKy3fewTA2kwvy3K9Yv7DH/7QcyLrlltuyete97r1Wh8AAGxI
cpVn/1mNkKusbhtcffXVWbRoUZLuXGXmzJlrXB8AsHYUgAGAJMmmm26ad77znXnnO9+Zhx9+OHvs
sUc+9rGP9Tmp8sADD2T+/Pl9rqz/y1/+kiQ9V6Jvs802+eMf/5iDDjpote3Rttlmm9Tr9fzpT3/K
brvttsrl1qXFWpJsueWWSZI77rgjW2+9dc/0xYsX5+67786sWbP6LHfnnXfmxS9+cc9ynZ2dueee
e/K85z1vrT7ve9/7Xl784hfnoosu6jP9ySefzCabbLJOsT8bq9s+8+fPz9FHH50dd9wx++67b845
55y84hWvyPOf//xBjwsAAAaKXKXbUMtVVufBBx/MiSeemIMPPjjt7e059dRTc8ghh/R8dwBg/WgB
DQDDXFdX10qtuyZPnpxp06b1XI29TGdnZ597yC5evDgXXnhhJk2alD333DNJ9xX6999/f77yla+s
9FnPPPNM5s+fnyQ58sgjU6vV8uEPf3ilq897X0k+evToPPnkk2v9fWbNmpX29vacd955fdZz0UUX
Ze7cuXn5y1+eJNlrr72y8cYb5ytf+Uqfe1d94xvfyBNPPLHWn9fS0rLSle/f/e53c//996/1OtbH
6NGjV9l67b3vfW/uvffefO1rX8tnPvOZbLXVVpk9e/ZK+xUAABqRXGVo5yqrc+yxx6Zer+eiiy7K
l7/85bS2tuaYY45Z7w5IAEA3I4ABYJh76qmnsvnmm+df/uVfsuuuu2bMmDH53//93/zud7/Lpz/9
6T7LTps2LZ/4xCdyzz335DnPeU6+/e1v5+abb86Xv/zltLW1JUne9KY35Tvf+U7e8Y535KqrrsoL
X/jCdHV15c9//nO+853v5Gc/+1n22muvbLvttnnf+96Xj3zkI9l///1z1FFHpaOjI7/73e8ybdq0
nH322UmSPffcM+eff34++tGPZtttt83kyZPzkpe8ZJXfZ9KkSTn99NPzoQ99KC972cvyz//8z7nj
jjvypS99Kc9//vPzxje+MUn3fbY++MEP5sQTT8xLXvKSvPrVr84999yTSy65JNtss81aX83/T//0
T/nwhz+co48+Ovvuu29uueWWfOMb3+hzRf9g2nPPPfPtb387p5xySp7//OdnzJgxOfzww/OLX/wi
X/rSl3LmmWdmjz32SJJcfPHFOfDAA/OBD3wg55xzzgaJDwAAni25ytDOVVbl4osvzk9/+tNccskl
2XzzzZMkn//85/PGN74x559/ft75zndWGh8ANIUSABjWFi1aVP7bv/1bueuuu5Zjx44tR48eXe66
667ll770pT7LHXDAAeVOO+1U3njjjeXMmTPLESNGlFtuuWX5hS98YaV1Ll68uPzEJz5R7rTTTmVH
R0e50UYblXvuuWf5oQ99qJw7d26fZb/61a+Wu+++e89yBxxwQHnFFVf0zJ8zZ0758pe/vBw7dmyZ
pDzggAPKsizLiy++uExS/u53v+v3e33hC18ot99++7Ktra2cMmVKedxxx5VPPPHESsudd9555ZZb
bll2dHSUe++9d3nttdeWe+65Z/myl72sZ5mrrrqqTFJ+97vfXen9CxcuLN/97neXm266aTly5Mjy
hS98YXndddeVBxxwQE+sq1vHqr7HmWeeWSYpH3nkkX6/3zJPP/10+frXv76cMGFCmaTccssty3nz
5pVbbrlluccee5RLlizps/zJJ59c1mq18rrrrlvtegEAoGpylaGdqyzbL73dd9995fjx48vDDz98
peVf8YpXlKNHjy7vuuuu1a4XAFizoiz11QAA1uzAAw/Mo48+mltvvbXqUAZVvV7PpEmTctRRR/Xb
Gg4AAGgschUAgL7cAxgAGLYWLly40j2mvv71r+fxxx/PgQceWE1QAADAsCdXAQDWh3sAAwDD1m9/
+9ucfPLJedWrXpWNN944v//973PRRRdl5513zqte9aqqwwMAAIYpuQoAsD4UgAGAYWurrbbK9OnT
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
780HPvCBbLrppikKB87NrOzsrDqExlAubSXYtXJLQQCAAVPUkjgRuz7kKwCslr8LrE7pvA8Aq6cA
TNP69a9/nV/96lfZbbfdqg4FAACgD/kKAAAAg0UBmKY1ffr0ldqo0cSWGAHc27BvhQ0Ag6CoFSn9
iWWAyFcAWB0tj1dgRDQArBNHEjStc889N6eddlruueeeqkMBAADoQ74CAADAYDECmKay0UYb9bl3
1vz587PNNttk1KhRaWtr67Ps448/vqHDYzAZPZEkKetLt4MRwAAADUe+AsBaM+K1R1ErEiOiAWCd
KADTVM4999yqQ6AiWh6vQEEcAKDhyFcA1qCoJZHfJ0laWqqOoLG0KAADwLpQAKapzJ49u+oQAAAA
+iVfAQAAYENQAKbpPfzww3n44YdTr9f7TH/e855XUUQMiroRr72VK/x/BwCgMclXAOhP0ea0bY+i
lsKIaABYJ44kaFo33XRTZs+endtvvz3lCu1wi6JIl5bBAABAReQrAKzWCveGT9LdIrusr/y8v9dr
mj5QVrf+Ymnb5tXFubq4e54WSavT2ACwLvzlpGm99a1vzXOe85xcdNFFmTJlSoqiqDokAACAJPIV
AAAABo8CME3rrrvuyn//939n2223rToUNoTBvJp1KCq1xAYABk9RK1KUCpbrQ74CwGq1tydJP62P
W1bxvL/Xa5o+UNa0/jXFuYb3F7Vk9Kh1jAkAhrfamheBoemggw7KH//4x6rDAAAAWIl8BQAAgMFi
BDBN69///d8ze/bs3Hrrrdl5553TtsK9U/75n/+5osgAABiSiloS92VlYMhXAFidZ547OUky4sm5
fWfUenXgqJd9p6/4uvdyy16vapne6it0Feu97hWfr/i+/uLrb7n+rCrmJF0TR/f/HoY3HQEBVkkB
mKZ13XXX5dprr81ll1220ryiKNLV5eRdMylXlTwMV7YHAEBDk68AsDr3HdR92rb+hq37X6BIUibl
0lsyFMUazgMsraWW9eVF1aLW6z29n5ZF3/UVK8/v+cxe8/q8b4X39F5XWV++XL+ftTTO3vHNuKQY
9EbWANBMtICmaZ144ol54xvfmAcffDD1er3Pw8kUAACgSvIVAAAABosRwDStxx57LCeffHKmTJlS
dSgAAAB9yFcAWJ2uyUuSJKc///J0LR3D05J6z/NlWtLdArcrtZ7ny173Xqb3OvpbZsV19l7f6j6z
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
8847M3v27EaHAgAAu5xapbzUKgDw/tAABgC2a+XKlfXbd955Zy6//PIsXbq0Pq9v377p27dvI0JL
svVLn+HDhzfs+buy4cOHp62trdFhAADAbqFWKS+1CgC8P5wCGgDYruHDh9entra2+pcY26a+ffu+
6XRgxx13XM4777zMmjUrAwcOzLBhw3LzzTdnw4YNOeuss9KvX78ccMABmTdvXqfnevLJJzN9+vT0
7ds3w4YNy5lnnpmXX375Pb+GW265JQMGDMgDDzyQJLn77rtz6KGHprW1NYMHD87UqVOzYcOGJMkv
f/nLfPSjH82QIUPS1taWY489Nk888USnx6vVarnpppvy8Y9/PL17987BBx+chQsXZtmyZTnuuOPS
p0+fTJo0Kc8++2z9/1xxxRX5sz/7s9x0003ZZ5990rt375x22mlZs2bNDuPu6OjInDlzst9++6W1
tTXjxo3L3XffXV/+yiuv5IwzzsjQoUPT2tqaMWPG5LbbbnvP2wsAAMpAraJWAQB2TgMYANilvv3t
b2fIkCF57LHHct555+Wcc87JqaeemkmTJuWJJ57ItGnTcuaZZ+a1115Lkrz66qv5yEc+ksMPPzyP
P/547rvvvqxatSqnnXbae4rj61//er7yla/k/vvvz5QpU7Jy5cqcfvrp+exnP5unn346Dz30UE4+
+eT6aeHWrVuXGTNm5Oc//3keeeSRjBkzJieccELWrVvX6XGvvPLK/M3f/E0WL16cgw46KJ/61Kfy
+c9/Ppdeemkef/zxFEWRc889t9P/WbZsWe66667ce++9ue+++/KrX/0qX/ziF3cY+5w5c/Kd73wn
N954Y5566qlceOGF+fSnP50FCxYkSS677LIsWbIk8+bNy9NPP50bbrghQ4YMeU/bCwAAqk6tolYB
gG6jAAB4C7fddlvR1tb2pvkzZswoPvGJT9TvH3vsscXkyZPr919//fWiT58+xZlnnlmft3LlyiJJ
sXDhwqIoiuLKK68spk2b1ulxn3/++SJJsXTp0ncUz+jRo4tvfOMbxZe//OVixIgRxZNPPllftmjR
oiJJ8dvf/vbtvOSivb296NevX3HvvffW5yUpvvrVr9bvL1y4sEhS3HrrrfV53/ve94o99tijfn/2
7NlFc3Nz8b//+7/1efPmzSuampqKlStXFkXReTtu3Lix6N27d/GLX/yiUzxnn312cfrppxdFURQn
nnhicdZZZ+00/h1tIwAAqBK1ylZqFQDgjVwDGADYpQ477LD67ebm5gwePDiHHnpofd6wYcOSJKtX
r06S/Nd//VcefPDB7V6j69lnn80HPvCBd/T811xzTTZs2JDHH388+++/f33+uHHjMmXKlBx66KE5
/vjjM23atPz1X/91Bg4cmCRZtWpVvvrVr+ahhx7K6tWr097entdeey3Lly/f4evb9lr+9PVt3Lgx
a9euTf/+/ZMko0aNyl577VVfZ+LEieno6MjSpUvfdG2wZcuW5bXXXstHP/rRTvM3b96cww8/PEly
zjnn5JRTTqmPUjjppJMyadKkd7SdAACgu1GrqFUAoLtwCmgAYJfq2bNnp/u1Wq3TvFqtlmTrtaOS
ZP369TnxxBOzePHiTtMzzzyTD33oQ+/4+Y855pi0t7fnrrvu6jS/ubk58+fPz7x58zJ27Nhcf/31
OfDAA/Pcc88lSWbMmJHFixfnuuuuyy9+8YssXrw4gwcPzubNm3f4+ra9lp29vndq/fr1SZIf//jH
nbbHkiVL6tfWmj59ev7nf/4nF154YVasWJEpU6bk4osvflfPBwAA3YVaRa0CAN2FBjAA0FBHHHFE
nnrqqey777454IADOk19+vR5x4935JFHZt68ebnqqqty9dVXd1pWq9Vy9NFH5x//8R/zq1/9Kr16
9co999yTJHn44Ydz/vnn54QTTsghhxySlpaWvPzyy7vkNS5fvjwrVqyo33/kkUfS1NSUAw888E3r
jh07Ni0tLVm+fPmbtsc+++xTX2/o0KGZMWNG/v3f/z3XXntt5s6du0tiBQAAtlKrdKZWAYDycApo
AKChZs6cmZtvvjmnn356vvzlL2fQoEFZtmxZ7rjjjtxyyy1pbm5+x485adKk/OQnP8n06dPTo0eP
zJo1K48++mgeeOCBTJs2LXvuuWceffTRvPTSSzn44IOTJGPGjMm//du/ZcKECVm7dm2+9KUvpbW1
dZe8xj322CMzZszI1VdfnbVr1+b888/Paaed9qZTqiVJv379cvHFF+fCCy9MR0dHJk+enDVr1uTh
hx9O//79M2PGjFx++eUZP358DjnkkGzatCk/+tGP6q8DAADYNdQqnalVAKA8NIABgIYaOXJkHn74
4VxyySWZNm1aNm3alNGjR+djH/tYmpre/clKJk+enB//+Mc54YQT0tzcnKlTp+ZnP/tZrr322qxd
uzajR4/ONddck+nTpydJbr311nzuc5/LEUcckX322SdXXXXVLjtV2QEHHJCTTz45J5xwQn73u9/l
4x//eP71X/91h+tfeeWVGTp0aObMmZPf/OY3GTBgQI444oj8/d//fZKkV69eufTSS/Pb3/42ra2t
OeaYY3LHHXfsklgBAICt1CpvplYBgHKoFUVRNDoIAIB34vbbb8+sWbPy6quvNjqUt3TFFVfkBz/4
QRYvXvy+Pm+ZthEAAFRFmY7D1SoAUF2uAQwAlNKaNWvSt2/fXHLJJY0Opcvp27dvvvCFLzQ6DAAA
6JbUKjumVgGA94dTQAMApXPKKadk8uTJSZIBAwY0NpguaNsv+N/NNckAAIB3T62yc2oVAHh/OAU0
AAAAAAAAQEU4BTQAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAA
AABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSE
BjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAA
AAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABA
RWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAA
AAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAA
AFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgA
AwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAA
AABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSE
BjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAA
AAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABA
RWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAA
AAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAA
AFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgA
AwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAAAABARWgAAwAAAAAAAFSEBjAAAAAA
AABARWgAAwAAAAAAAFSEBjAAAAAAAABARfx/DKeLbI/PYG4AAAAASUVORK5CYII=

--_005_AS4P250MB0799C4E57A7437C20CFFED3D9BEA9AS4P250MB0799EURP_--

--===============6613743381510885884==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6613743381510885884==--
