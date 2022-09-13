Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA555B647F
	for <lists+usrp-users@lfdr.de>; Tue, 13 Sep 2022 02:22:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D83A4380CD3
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 20:22:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663028529; bh=c9PnCL5I3B/2psAHXQ5hws4rMzqof0ljX3oXcejYjcQ=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=jyfFVcgL6JhyrVfh2kTid+hgpyRGTx4S6O3x0/kQ7wJltMqefNO4znPL+yCj6wZ2l
	 jCLxW6CA2QyZuYgV8yJKcyobfc0F4XivD26Huk2+n4l0zdJ/aJyJhof17gqdZmVz0f
	 kC/59Cf9V5t0DSYO57OaEIFztDRWL+M7l9V7TJGpASZ+/uX4wE0lGrbA7W8fsqlTHj
	 6Y+HF8Gx/ELKi6bvFpGSKgz69In8p5rxnVx2DFfapu0JVNnHfIeLROqu8+Mfi+Aa3n
	 gvat5CN+BsDgoWxE7FxvzhQHAOz1WmjopKLGHSrHvAskmYKOLYz2vJq1KEpFtiF+CF
	 ibhchaOcFwSxA==
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2040.outbound.protection.outlook.com [40.107.236.40])
	by mm2.emwd.com (Postfix) with ESMTPS id BA7D7380AF8
	for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 20:20:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=caltech.edu header.i=@caltech.edu header.b="Hs7ckkOj";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G4ItJvB384rNaMm+ZfMI7g9PuiPYTQzp5FFdeHDxIPuH1MCbIr6FOOtebGozubexhDENxxKQ8b5v9O1gdv4SE4q2c4aS/ykTWdwDUFoWj0XqwoSGjc+qyvc2UyoppRphl1roQQ+3s0PdYe946QVy3Ub+8qX1JcdF6YDmtrx0Ovs8s+XeQyq5tsPb4dsacvfoSARIBWHhG6MvZAocgdXrUOMSJ3y8w1tAeLhVpQBaozlyN3xi9282Pv2fnjEiNuB5/BLFniV5uIgG6rolZOJpAsuT/Z8hj6uZvFvJ8aav+qWTVn2wQBO27R8LjdLfpm7LALvUBYUeqZktrptgfMHrug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M5Xxz3B6amdbWluZ12OLyfu9piQKbjB1EkRmcdRR0tQ=;
 b=Z/AaRGLMQjw8c8alPEaNaSnvwqiCRCPB9W6nkAvm32ZegPRs6T70E6Nh5epAzJJaFH4bBSe2TuxRxNu8VWYi3gzbUsYkqK03zIj1TZSXg1fZJZy5OsT8haWx2D7gSN5f5WokdnYrWvoXameG/QcgtGK4uC3bKxEIGaAAfNzFsZt1ntCKvusyEBkCE7xFhiC2UMTAf1r9c93c8ScYHVHCujcjihOpBtngxBxF2nCgJWvXakqz1WWQ5Zuoirg5vrgXgnJcrVCqpZNsnYb3Q638BoTvTgwreWt+rywKrJ9lVSpwLHJz3jnoiCWBzxOseDGKTCa5bkmgeS899RVcUpL+Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caltech.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M5Xxz3B6amdbWluZ12OLyfu9piQKbjB1EkRmcdRR0tQ=;
 b=Hs7ckkOjH4Fp8ACILoYVGCBRtNs9dH4z51a5o7rZmn36tCPOeRRcb5r0E49Fyx5muj4IrX51vN0AS2xGzNCcSi5ZDtf8X1FgzSbOf8xQ08s386+bS9qurIme5gMpL2IEESZikAT2X3y2McNIDHR6v/tyWLNPdq9bOF6SX2ADvfx4axBjzcF5rK93z8ttAMBTGinG7gaTs+sU4WfAk7yj+zYoZYBQFuV/42LurIruZUTIaTYiUdWdti9/554qb5PQCxlzm1xxvAzLcgPzjDztZgqe0Vu4k3XJxIv3LSN9Dzld0nJ60fn94HuqLtkFKnrAWjKSR1drCeWyIM2L0d51eQ==
Received: from BYAPR03MB4678.namprd03.prod.outlook.com (2603:10b6:a03:137::21)
 by SJ0PR03MB5582.namprd03.prod.outlook.com (2603:10b6:a03:281::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.12; Tue, 13 Sep
 2022 00:20:19 +0000
Received: from BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::ebd5:115e:465b:f692]) by BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::ebd5:115e:465b:f692%3]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 00:20:19 +0000
From: "Minutolo, Lorenzo" <minutolo@caltech.edu>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNOC4, FFT Block, Python
Thread-Index: AQHYxwT+eGu9EQU6FEy301ESNYYr1w==
Date: Tue, 13 Sep 2022 00:20:18 +0000
Message-ID: 
 <BYAPR03MB46780CFCA3FB71E223471337D3479@BYAPR03MB4678.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=caltech.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR03MB4678:EE_|SJ0PR03MB5582:EE_
x-ms-office365-filtering-correlation-id: d28c08a4-5d75-4ff6-cbdb-08da951dbd5b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 cF20vUfT5lGrU81kS4ABKPmY4fUEQ1bO+SY6uiQQnSU5xN9YkZRklk65iSOMCiy0AJ/0qEcBVELkG/Z1RT/q8yhoI3eobUkLYPR7PE3zOb4p/wgmEzCRBm4Forzm1nc19CQyBsM5/wOt7Y88Y1s+G6JBgl0avE1JSYX8tWJUoVIRYs2HoK1uedMOCGqhisNujPMUZLUoJkJFrFVBLXKdWuX8tEEe5zKBqr0ZSaNkPNuxqkBeNKaFjMpsjMycrlSSttV8wkTi7SbN/UtjcffmzjQWxBnwYT2NOhgPMFTzkGtIe6RCFBisW81IyO8WIYYJhAl+Vtu7FBirLmk0J1QVEbLa63Bz8jD2PHJfwiR6mxbt/23B6+E4ScaYDvHys+XWZcNK+uhpURZbtj8nS4ia2F3ZuH3vxNgL5izdZe5MwcAQaUyk3ua9MhHAcqS8+pmvl7nY71kxjHX6uXxBwgoC/d5LSuyH4z4pqpEjsiznLz19jKCo3dv8jcFIBTrs+uWNUJIG1MmrTVbfzr6rfKX2KOe8NDQNo7AAdpgYkr/MbjPphkMior2x8CuanTZimyNJdPbf2aldK0vGtFHhLEcFKI5RYtXn2L0kukcslH33FbKlWw8he/isqyzmgHOaJiJwcniPCElakxbCvMld0hAyPJwqFR2OfSju6pP49OgBvFBmOlXDfHzqZKnloDdtp8jEjhcDr4rjV8tqgTie52JXdFXjp+hXD3RxIjhX9ht5XBugxqPsvSKtpyzeA1QNX38fs9nwuRSdyC8Lh0kx9uK4DQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB4678.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(39860400002)(376002)(346002)(136003)(366004)(451199015)(86362001)(41320700001)(75432002)(41300700001)(478600001)(55016003)(9686003)(71200400001)(33656002)(64756008)(5660300002)(52536014)(91956017)(786003)(38070700005)(6506007)(66446008)(8936002)(19627405001)(66946007)(66556008)(122000001)(76116006)(316002)(66476007)(6916009)(7696005)(2906002)(8676002)(38100700002)(83380400001)(186003)(26005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?tUsm2LzDiYdbZTgSaSLxUoc6vY5dcnqrRzeMsRH3j+RtpzSmmg21wy060c?=
 =?iso-8859-1?Q?qbxsEtsItIZCO0oh1cjNAECm+bfdhw2DjfX2EpXKA1nI34cYZbmYRwbGOh?=
 =?iso-8859-1?Q?4AeWLrmjkioMKBtRzEEW0RUMZQClkb5y0kBodO9MThZMDiRKIT1vjY0F1p?=
 =?iso-8859-1?Q?FqQsBOeeAl61jaI5n2ssHgjDyNHbKIhKKdhtYrYlcfFdR1FW1CZjXhGwWC?=
 =?iso-8859-1?Q?REBVl7TPY8x8Vp/E9TTdjA5JjP2AwFGRvFSdYcUMtZkCKAHp9xmRZLvLJ9?=
 =?iso-8859-1?Q?j+16F7Kgml07SUF+9pEk4pA+MJNO98Fa7/ENmLJfsZdhzRUrA1s8n7LEbR?=
 =?iso-8859-1?Q?czoEPvBrrK1o5B3leM//MuMzxf6TU5gX+lZKye3Gr++noDeWuaVcznuHrq?=
 =?iso-8859-1?Q?lMJ+Uj/SyVITEW/29kWAxwJtZkMU1gHE6mzc2NQpMAahFe4q+cqoiEOTac?=
 =?iso-8859-1?Q?6oQD+SqLEye7uqkDlddBr78zgGd04/09P0kxXDgyDlD16UWln7+2set3Da?=
 =?iso-8859-1?Q?AaPIOVV2XktDoeculGza87/lNMLMXNMKEiXG0EDIDHog40wKDiou8hMI6O?=
 =?iso-8859-1?Q?dDld6J1VhyiFk4QzPPEC4ril6r35WX0MQP0d1hcJ6+ixEP7Z8iMm/FYxEu?=
 =?iso-8859-1?Q?ldeMrZGiiE0Lt5baxoxTLEtr43s0IZArj7mWLuxBhA4jgmEcljVNoMdT/s?=
 =?iso-8859-1?Q?E3hPYoelwr2cw0i5MhEsMxtpUWPo5mxNBLYvZlQJHClvU4qQpJd9AGDR07?=
 =?iso-8859-1?Q?cGYAfjoWsL7q8Sk57Qw1jeSN2+++8DTyro0kkX4auVO175al9Gb+fyxkI7?=
 =?iso-8859-1?Q?gRxUrmFPk+FCs+Ok5vMqANuptpbcbIiUqO72CKT8bPV3Pa4sBugHFEdiz/?=
 =?iso-8859-1?Q?OzgRFmTMSW9jFHFNcRcGH2cARy18waQ97uRk3Rrqvj3E7WwpqGDuFhgQeb?=
 =?iso-8859-1?Q?k+W9sOKBuZ0SnMAH4dXREQ6xOCjAfICyOLNoBq7ydVvQmTgIDHRQYU1Uhp?=
 =?iso-8859-1?Q?ynR6L/AFk22qqKzZliLwGdiW6nhfOqFgGa/RsX/1OAk+ZLq0GhPIs6Sekv?=
 =?iso-8859-1?Q?/xOmsWAcGARs0nWenXmJV1NHGtUvnn4gIzvDUBaPZDceSUQUnvG/lZ+nM2?=
 =?iso-8859-1?Q?ZcQzzgwWJ3vgCVkFo0y+srhMdcwxqzHkqEjZs9RPiS/yMF3vKjDibWc3Tj?=
 =?iso-8859-1?Q?bKHnS4p188X32GQqGn/lQTpy/1PvoT17ixvsthGR/FcUv56nTlHL0I46S6?=
 =?iso-8859-1?Q?MPndwADB1Yt/7QvbRLgduMMvsqnRWzGw0YLl8oVCOwjliRVZaEoX8KeRYU?=
 =?iso-8859-1?Q?/PSITW8x1d7KzpYHveq37AE1yxOmsj3xsTAINezdBjG5dIDrdnhIng20dp?=
 =?iso-8859-1?Q?DiL1CnP4FkFQ9MjjpqdFXBciQJAcdChMP5zLW1t1Ojn3v0FC/wc2gLpj+z?=
 =?iso-8859-1?Q?seF51mGMDdP/yxjGRBA9qzFX6HCv0qYXnvkKEq5UpXd8+iqYYPMCDx925C?=
 =?iso-8859-1?Q?QRbSXumnfHIaNv8t3ZgCMdMPgBaoH6ySy0e1Vz8PTWWYqLfqXOJ44dXDc8?=
 =?iso-8859-1?Q?uOvzmH23H3ZWnpZF0tAJcFMlv6LM6za8kBXojBpXRa8C5DYP6zih11ZT/5?=
 =?iso-8859-1?Q?Mefho2Z5W9GPaxW+O6HXpqve0GJ8j0/Rx3?=
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB4678.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d28c08a4-5d75-4ff6-cbdb-08da951dbd5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2022 00:20:18.9221
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hItZ/Th/qfTI93Plbfu93ndieqVoLl3+COfyBjPidHqiHFWHW2+hFU2IBOZNYmIdacBfOebSyY9QPmJHqBkV7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR03MB5582
Message-ID-Hash: UMLM6TA7WIHQ3ZFVJWNVVF6E2ZFFRB5O
X-Message-ID-Hash: UMLM6TA7WIHQ3ZFVJWNVVF6E2ZFFRB5O
X-MailFrom: minutolo@caltech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNOC4, FFT Block, Python
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3L2UJ5TRUHIYZPHYHEHRFAUT3VUTRC2J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8338561499386614337=="

--===============8338561499386614337==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB46780CFCA3FB71E223471337D3479BYAPR03MB4678namp_"

--_000_BYAPR03MB46780CFCA3FB71E223471337D3479BYAPR03MB4678namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,
I'm using UHD 4.2 to play around with RFNOC4. I successfully added an FFT b=
lock to the XG image of an X300, no static connections. uhd_usrp_probe retu=
rns as expected. I use the attached code to test it out.
When I commit the graph I get the following error:

Traceback (most recent call last):
  File "/home/lorenzo/test_rfnoc_fft.py", line 71, in <module>
    graph.commit()
RuntimeError: ValueError: samples per package must not be smaller than atom=
ic item size

Digging a bit in the libraries I see that it originates from rfnoc_streamer=
.cpp, specifically:
[...]
  if (ais.is_valid()) {
                const auto spp =3D this->rx_streamer_impl::get_max_num_samp=
s();
                if (spp < ais.get()) {
                    throw uhd::value_error("samples per package must not be=
 smaller than atomic item size");
                }
[...]

Has someone encountered this error before?

Thenks,
Lorenzo





Attached code:

    args =3D "addr=3D192.168.30.2"
    graph =3D uhd.rfnoc.RfnocGraph(args)

    radio_ID_A =3D uhd.rfnoc.BlockID(0, "Radio", 0);
    radio_block_A =3D graph.get_block(radio_ID_A);
    radio_ctrl_A =3D uhd.rfnoc.RadioControl(radio_block_A)

    set_freq =3D 300e6
    spp =3D 512
    radio_ctrl_A.set_tx_frequency(set_freq, 0)
    tx_freq =3D radio_ctrl_A.get_tx_frequency(0)
    radio_ctrl_A.set_rx_frequency(set_freq, 0)
    rx_freq =3D radio_ctrl_A.get_rx_frequency(0)
    print("Tuning is TX %.1f, RX: %.1f MHz" % (tx_freq/1e6,rx_freq/1e6 ) )

    radio_ctrl_A.set_properties(f'spp=3D{spp}', 0)
    radio_ctrl_A.set_rx_antenna('RX2',0)
    radio_ctrl_A.set_rate(200e6)


    DDC_ID =3D graph.find_blocks("DDC")[0]
    DDC_block =3D graph.get_block(DDC_ID)
    DDC_control =3D uhd.rfnoc.DdcBlockControl(DDC_block)
    DDC_control.set_input_rate(200e6, 0)
    DDC_control.set_output_rate(5e6, 0)

    FFT_ID =3D graph.find_blocks("FFT")[0]
    FFT_block =3D graph.get_block(FFT_ID)
    FFT_control =3D uhd.rfnoc.FftBlockControl(FFT_block)
    FFT_control.set_length(spp)
    FFT_control.set_magnitude(uhd.libpyuhd.rfnoc.fft_magnitude.COMPLEX)
    FFT_control.set_direction(uhd.libpyuhd.rfnoc.fft_direction.FORWARD)
    FFT_control.set_shift_config(uhd.libpyuhd.rfnoc.fft_shift.REVERSE)

    stream_args =3D uhd.usrp.StreamArgs('fc32','sc16')
    stream_args.args =3D 'spp=3D'+str(spp)
    rx_stream =3D graph.create_rx_streamer(1, stream_args)

    graph.connect(
        radio_ID_A,0,
        DDC_ID,0,
        False
    )
    graph.connect(
        DDC_ID,0,
        FFT_ID,0,
        False
    )

    graph.connect(
        FFT_ID,0,
        rx_stream,0
    )

    graph.commit()


--_000_BYAPR03MB46780CFCA3FB71E223471337D3479BYAPR03MB4678namp_
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
Hi All,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I'm using UHD 4.2 to play around with RFNOC4. I successfully added an FFT b=
lock to the XG image of an X300, no static connections. uhd_usrp_probe retu=
rns as expected. I use the attached code to test it out.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
When I commit the graph I get the following error:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Traceback (most recent call last):
<div>&nbsp; File &quot;/home/lorenzo/test_rfnoc_fft.py&quot;, line 71, in &=
lt;module&gt;</div>
<div>&nbsp; &nbsp; graph.commit()</div>
<div>RuntimeError: ValueError: samples per package must not be smaller than=
 atomic item size</div>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Digging a bit in the libraries I see that it originates from rfnoc_streamer=
.cpp, specifically:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
[...]</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
&nbsp; if (ais.is_valid()) {
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; const auto spp=
 =3D this-&gt;rx_streamer_impl::get_max_num_samps();</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (spp &lt; a=
is.get()) {</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
throw uhd::value_error(&quot;samples per package must not be smaller than a=
tomic item size&quot;);</div>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
[...]</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Has someone encountered this error before?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Thenks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Lorenzo</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Attached code:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
&nbsp; &nbsp; args =3D &quot;addr=3D192.168.30.2&quot;
<div>&nbsp; &nbsp; graph =3D uhd.rfnoc.RfnocGraph(args)</div>
<div><br>
</div>
<div>&nbsp; &nbsp; radio_ID_A =3D uhd.rfnoc.BlockID(0, &quot;Radio&quot;, 0=
);</div>
<div>&nbsp; &nbsp; radio_block_A =3D graph.get_block(radio_ID_A);</div>
<div>&nbsp; &nbsp; radio_ctrl_A =3D uhd.rfnoc.RadioControl(radio_block_A)</=
div>
<div><br>
</div>
<div>&nbsp; &nbsp; set_freq =3D 300e6</div>
<div>&nbsp; &nbsp; spp =3D 512</div>
<div>&nbsp; &nbsp; radio_ctrl_A.set_tx_frequency(set_freq, 0)</div>
<div>&nbsp; &nbsp; tx_freq =3D radio_ctrl_A.get_tx_frequency(0)</div>
<div>&nbsp; &nbsp; radio_ctrl_A.set_rx_frequency(set_freq, 0)</div>
<div>&nbsp; &nbsp; rx_freq =3D radio_ctrl_A.get_rx_frequency(0)</div>
<div>&nbsp; &nbsp; print(&quot;Tuning is TX %.1f, RX: %.1f MHz&quot; % (tx_=
freq/1e6,rx_freq/1e6 ) )</div>
<div><br>
</div>
<div>&nbsp; &nbsp; radio_ctrl_A.set_properties(f'spp=3D{spp}', 0)</div>
<div>&nbsp; &nbsp; radio_ctrl_A.set_rx_antenna('RX2',0)</div>
<div>&nbsp; &nbsp; radio_ctrl_A.set_rate(200e6)</div>
<div><br>
</div>
<div><br>
</div>
<div>&nbsp; &nbsp; DDC_ID =3D graph.find_blocks(&quot;DDC&quot;)[0]</div>
<div>&nbsp; &nbsp; DDC_block =3D graph.get_block(DDC_ID)</div>
<div>&nbsp; &nbsp; DDC_control =3D uhd.rfnoc.DdcBlockControl(DDC_block)</di=
v>
<div>&nbsp; &nbsp; DDC_control.set_input_rate(200e6, 0)</div>
<div>&nbsp; &nbsp; DDC_control.set_output_rate(5e6, 0)</div>
<div><br>
</div>
<div>&nbsp; &nbsp; FFT_ID =3D graph.find_blocks(&quot;FFT&quot;)[0]</div>
<div>&nbsp; &nbsp; FFT_block =3D graph.get_block(FFT_ID)</div>
<div>&nbsp; &nbsp; FFT_control =3D uhd.rfnoc.FftBlockControl(FFT_block)</di=
v>
<div>&nbsp; &nbsp; FFT_control.set_length(spp)</div>
<div>&nbsp; &nbsp; FFT_control.set_magnitude(uhd.libpyuhd.rfnoc.fft_magnitu=
de.COMPLEX)</div>
<div>&nbsp; &nbsp; FFT_control.set_direction(uhd.libpyuhd.rfnoc.fft_directi=
on.FORWARD)</div>
<div>&nbsp; &nbsp; FFT_control.set_shift_config(uhd.libpyuhd.rfnoc.fft_shif=
t.REVERSE)</div>
<div><br>
</div>
<div>&nbsp; &nbsp; stream_args =3D uhd.usrp.StreamArgs('fc32','sc16')</div>
<div>&nbsp; &nbsp; stream_args.args =3D 'spp=3D'+str(spp)</div>
<div>&nbsp; &nbsp; rx_stream =3D graph.create_rx_streamer(1, stream_args)</=
div>
<div><br>
</div>
<div>&nbsp; &nbsp; graph.connect(</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; radio_ID_A,0,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; DDC_ID,0,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; False</div>
<div>&nbsp; &nbsp; )</div>
<div>&nbsp; &nbsp; graph.connect(</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; DDC_ID,0,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; FFT_ID,0,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; False</div>
<div>&nbsp; &nbsp; )</div>
<div><br>
</div>
<div>&nbsp; &nbsp; graph.connect(</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; FFT_ID,0,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; rx_stream,0</div>
<div>&nbsp; &nbsp; )</div>
<div><br>
</div>
<div>&nbsp; &nbsp; graph.commit()</div>
<div><br>
</div>
</div>
</body>
</html>

--_000_BYAPR03MB46780CFCA3FB71E223471337D3479BYAPR03MB4678namp_--

--===============8338561499386614337==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8338561499386614337==--
