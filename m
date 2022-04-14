Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D4F50067F
	for <lists+usrp-users@lfdr.de>; Thu, 14 Apr 2022 09:00:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AA403384C0F
	for <lists+usrp-users@lfdr.de>; Thu, 14 Apr 2022 03:00:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649919639; bh=Y2VxKohMesOy1orBCkXusJdzTtyUX6JrcqjUATaRaUY=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=w/gAn8nMpPzVfuYkjOFMLOJQ4zpHZ+CUZlHaSWDHVkcytgNkzAYCN04+C9DiVfNfI
	 Sw6exZqbHeZK9byweV0TkvoFxAw5uEdWO/IGR0D5LM5bufAuCDCq6c9O9+S5ES78Jh
	 EdYhJYhHiaCkJS+oD0FYKHDKMGC2HRqFArEUBQ1w/lzExPsSczSh+NFRlKn4mMpCLe
	 KS7ZTDRgvX5hbGshbr+c2INGpwEX2H3tUjc0d1OLgs1hgOlc5qrqyX7JyWM+LFuAWC
	 Tysqn8ubanCAJpGZFrKgTo1rlbABUL9j5apQtPAktsg9X5B/b4xr8Hnjr1K+TYdVhD
	 dH6aLQMvO7nLw==
Received: from EUR02-AM5-obe.outbound.protection.outlook.com (mail-eopbgr00128.outbound.protection.outlook.com [40.107.0.128])
	by mm2.emwd.com (Postfix) with ESMTPS id 871223844A5
	for <usrp-users@lists.ettus.com>; Thu, 14 Apr 2022 02:59:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=barkhauseninstitut.onmicrosoft.com header.i=@barkhauseninstitut.onmicrosoft.com header.b="dB9Xt5JR";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EaZ/fuvklAk7cJXcwQ1fFyixkYwnaPBvkFT73Fzl+27r0vKJ30QbkBbD6B1s2FhJED0i8IBhdhMiWcsz4oApyWAR98y2hmYd0snjmO22me73Bweeb9xYDzVfGVKXmCRf7cVe2rnLLGynpr8JqPshH8dIZmeteoEJOJvdN5fry7bOyrtZdVCR6ePruqr/LRMWyVWFlSMB9R1dbmzlBHkAiLZeRLaOM/O//bY4xBDLerIOcAG5tvPjUQK63BiiqkwVf1dOzcHlLrTXGknz85jvRz8M2YFXQOqd4ysEOR7GPOdSlYTPwY0Eh0nL/Slp/ONDqfdwNXSb7WcHUkOleuta+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TEAlHC5neqMJIZKphT+hlCgMFIThPmCKKFKrM2cDx7w=;
 b=FvVgd3N/u/vNNl54M8pShm2QMe0sU+9sAAaBDrAKeD1DrsyIQXMlO2XktLFaTjpxVgbdCQ7LRWEH6Jlpip8j+HuVzIn4GLiwegDKdG7lw3E2oJupIo8pgBIR+ravt6NgIi8tTAhLdsaZGrnAbFJ0IFhPmWJoZXqVpwgo18oIepYEPmOxukhamlbn+C1/TjXfBXtM1FAInhTujY5c/8xK1ZVPSsO2W5410p7wikcA+72hNo18rkBPXQ5P4G0ERuL9bX8LBUZ639aNBKgkKxlmakua3C5Qfi7u7s2tCSrtdVqD+GLkAMF+c6l7mXu7pGdGrfuq2HGRe/ANgNM6Tg7pRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=barkhauseninstitut.org; dmarc=pass action=none
 header.from=barkhauseninstitut.org; dkim=pass
 header.d=barkhauseninstitut.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=barkhauseninstitut.onmicrosoft.com;
 s=selector2-barkhauseninstitut-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TEAlHC5neqMJIZKphT+hlCgMFIThPmCKKFKrM2cDx7w=;
 b=dB9Xt5JRszT173PgiKa8+ni3RYLlsLPMSKaCN9YfG7D8F8cdvlNwOiUKJZc27V2NmIJ0KH8BwcGj+pyyQlLIOaYBYBjFuTjjONiZMYsQZH7vraJOnSO7IpxSqNEwEO6QoVAqdaFMZVPL6+oN9iLTgZPMyi6QgetAsG37RNhNqEg=
Received: from AS4P250MB0799.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:582::16)
 by DU0P250MB0891.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:3ea::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Thu, 14 Apr
 2022 06:59:30 +0000
Received: from AS4P250MB0799.EURP250.PROD.OUTLOOK.COM
 ([fe80::5118:6034:9c0:d1f7]) by AS4P250MB0799.EURP250.PROD.OUTLOOK.COM
 ([fe80::5118:6034:9c0:d1f7%3]) with mapi id 15.20.5144.030; Thu, 14 Apr 2022
 06:59:30 +0000
From: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Thread-Topic: AW: [USRP-users] Re: [x410] Frequency Selectivity?
Thread-Index: AQHYS1AgNREl8Hk8I0eEw09Qd1e9qqzqkYwigAA8QYCABDVBpA==
Date: Thu, 14 Apr 2022 06:59:30 +0000
Message-ID: 
 <AS4P250MB0799797DD3F4BE36F492F29C9BEF9@AS4P250MB0799.EURP250.PROD.OUTLOOK.COM>
References: 
 <AS4P250MB07996EB3B5E9CFB8EFBD4D969BE99@AS4P250MB0799.EURP250.PROD.OUTLOOK.COM>
 <d9c10d82-d370-4834-7b5f-ccd7968fde10@gmail.com>
 <AS4P250MB0799C4E57A7437C20CFFED3D9BEA9@AS4P250MB0799.EURP250.PROD.OUTLOOK.COM>
 <d26108e4-71ac-adb4-cec2-a3e6eb51b60e@gmail.com>
In-Reply-To: <d26108e4-71ac-adb4-cec2-a3e6eb51b60e@gmail.com>
Accept-Language: de-DE, en-150, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 101d6c44-6dcd-16a5-10a2-d0796133b795
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=barkhauseninstitut.org;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9bf14875-12dd-42ff-4ad6-08da1de452ad
x-ms-traffictypediagnostic: DU0P250MB0891:EE_
x-microsoft-antispam-prvs: 
 <DU0P250MB08913736E5F48C2A0A3ADD0D9BEF9@DU0P250MB0891.EURP250.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 qXfNYugiswBS4VY+30YQuHpxMgiPCgld04EzbJ22jdYdq5/DvDcBYIud9mOZDiJ+DVCXn5QxIP/RDWBv48QlF+iZMsXc/nInqEz9tulBy+VKLd4lp9XhIN8gmQIvF8do9IZi11n9A0subb9sxFfqPgNWGVEemfwhYfGSuSFhgKyWmJ8EZmFKVf/R3+RTvcmsNtMXOhTceq5A/A4fILp6S8Djl7B8MK31Mzh8AdXCnJ1km/M6W0kbSD7CL9IdaucJ5itgOmmf6guqGVkjjs0BDm/HFSEVEaLwl63qSCOHa5Sm1kkJsUv5boyZjG9VOMfNs0v44aSJWuBYrWvZ1Iqimk35Y1e2j+mZGr50Imql3nLD0DHckbeF8nrWb1l71Z9fx/FvjqBgDSiDhhMB/5n4RB7yHB5qwfl7n7I3mPdaJAaq+FXGQFK3sggBas8OEPNjx8g9lq0fGa/FxIbZvO1/LJeBkrjvBt6QoVF68MpI2N1myPsJloZtQu0O7f3NTN89m4JNXcmjBQU3YY3k0gCnSRQq/ly51EeqxERTPI+bAVNO8AQzw7j2qkn5+vFV3oqPU/Y8oJT793Qhx1OsGaiy2DDYW0ycKsk1huAAqZoj4ETFcg4uUpE3gijD2Ftjyk8b8pAPiibxggpWujR+TTMC962wRiOF1V4LSfXoZmNUUfCLvCFpannMGzkoVmvkknt7kYs+5iopxRKJsnxQeQFtNw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4P250MB0799.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(346002)(366004)(39830400003)(136003)(376002)(396003)(55016003)(6916009)(38100700002)(19627405001)(966005)(316002)(38070700005)(83380400001)(66574015)(122000001)(9686003)(33656002)(52536014)(5660300002)(15974865002)(71200400001)(91956017)(8936002)(8676002)(76116006)(7696005)(53546011)(66556008)(66476007)(66446008)(6506007)(64756008)(66946007)(4326008)(26005)(508600001)(86362001)(44832011)(186003)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?qQtVWJpenULBr9SGLac2fheDJpBOxhW8Po8VIi8BR9wW0yYblRSVyp2jkBgS?=
 =?us-ascii?Q?7g5em0X8o5aFKPPXuGN8kD7g3yWBgmgl8ef0CdeMHOWaP+5DNYy6PL3c8dCA?=
 =?us-ascii?Q?dSMgRGpbT2kPeie7l8ClbB4ttXGF02nEy1vutWtqGpz/hoZ0JmVeNAU1l0Bc?=
 =?us-ascii?Q?44dAFFAxtiqv5QFBhKLmEEQ7TlENAdySFvy8CiaXjJMDOAMr3on/e4TFIlSl?=
 =?us-ascii?Q?vTfPylKvFi07G/5Gz4WbOf/b9U2ZnqnTwZHbymfaDsjII0sQR+mEFLGYwm9i?=
 =?us-ascii?Q?YnZHjV5ut49n+vqAEFd9jWSGLUx6dvAeFCCO/S8O/w4MUEA8LpaxRYJPKx8G?=
 =?us-ascii?Q?Z9P8tRw2X4U0OfZj5Lkee97kcTsi0papehw9MfnSfHCbbi5rE9TqQICqoJpJ?=
 =?us-ascii?Q?avfqJYNvIgoj3k/YKSoF2KoRulGjO0oYC8us9CyPuItvF71o7IzFf0bO5zY8?=
 =?us-ascii?Q?TEyekVV5kA7LR2SA6JJFQdI+XugUNm+aQTpmvDz/hQA2ZQzLYP1cWOL+Hiv9?=
 =?us-ascii?Q?K+GWGTT8doEMwnO55o+A2df1Eeo+W4O2NIbB93NK22d/XBqvUULOaaA9DCOz?=
 =?us-ascii?Q?m9PvcW4gAqifRlT9D5HoFM0Lb2WCzgte96neNIvVrCXwksK0g6/3x7oLU5MR?=
 =?us-ascii?Q?Gl94i3vG9JKLHWHNWxu6xiDcWM05drMbWCCEd+t8p50WkqaXTN0GH8CJ/W3n?=
 =?us-ascii?Q?JwiB4vSvXM8eCCOsZEyzN6ApxNDis5Hv0Mewsdb2NqxEaMPwm1/SH1XtHHz5?=
 =?us-ascii?Q?UzMCUoCG6IM79Lxfgeq7TVOYrJEzQ0EmRyJY10UZT8cKOHwc4y76ZS3TXiRG?=
 =?us-ascii?Q?DR4VjJ0VOguOh7MqdPaJmc9Nyu6aOJmojctclCwzbE78Bca4UQyG3vpO/whS?=
 =?us-ascii?Q?ocrNuGjxlusMA1xZzqhIXyUTEoBjYErKElZg8HUFTfXzl7M7P7YV3FtKbZK+?=
 =?us-ascii?Q?WvPFer62Q+lh5tcY1wldMbhxzcqMiwuPcu7cpvqJvJUwRxR4tqLmhh4f0fVE?=
 =?us-ascii?Q?vaYm0CDGQ4PmBRtlNZp7KX7lmrhFIgDR2WgMDGMqHrACEBZaO7NFNe/NeppE?=
 =?us-ascii?Q?tQ6EQcnqxS4NXFNdRnTmpzga1eTVB88B6P+YN2MILqI9b++ejUEeG2A7/25e?=
 =?us-ascii?Q?Yqj9wSoggv2PLybuJtwI8LNceXnBlVKImNsUFHls6jhFh/KDv93eVFpmk5Sa?=
 =?us-ascii?Q?6My5UfztBsceF4lkFTmuS5BEVETLj75Gh5Gt8RrxTEn/SJFimKCQRu13SAKr?=
 =?us-ascii?Q?NuBCEnKL3X78sZh0aQnCozVuVDwSHn2G8LXeEd6ku8RMOqmE5FmmmXP1xBFB?=
 =?us-ascii?Q?Idld6XkBbVKup6O8VrEaURSmNop+OJharxHsdFwJrZiiva3PvjW8yVZ0/PEQ?=
 =?us-ascii?Q?+CVvlycY7GibSqaI9qLgeRKA4cb9dsiIub3FIll6O8KpalnWJfLXsRny09Tb?=
 =?us-ascii?Q?cUGER92lq/Pz5hC+xKN6/D+793gjazqqLd5dtLN8Ka6Ko78ne5QgDpyNjq3e?=
 =?us-ascii?Q?GatuBExRCY2hyXaMHwo21t5yc0GmMJ5sqPvZHws8Fhgnsdc1hAaJNfeNQjaF?=
 =?us-ascii?Q?oeHrwu/25P2UEJkpepb3qQFMy728YVG9Gc4wDc7yJgLitnPp3rouhNlDR/Ls?=
 =?us-ascii?Q?/uv0F7A7lUqrsuSPkH8qnfQFP5UYk6QypeBkoo5Hy/LPe+quMZV87JiPCG3v?=
 =?us-ascii?Q?SLGsPhailq4cmqiqOAIPJc7IKCMVgvYHr3WYvzMP+xk2lxm1g2S05LDGlVGE?=
 =?us-ascii?Q?iZjnXItyk7tppEex03vrByGL07hMS7rralWaI54HyIS4kUW04YRw?=
MIME-Version: 1.0
X-OriginatorOrg: barkhauseninstitut.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS4P250MB0799.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bf14875-12dd-42ff-4ad6-08da1de452ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2022 06:59:30.2246
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 00487172-018a-4fb0-b279-f756ac552ea7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bXanwbPOWrnHjEMa7Ax0dSSoAUJzTHps1wz3xGl5KdfvZQRP9dLdbo/ibgUaXqwFoEYo9Gtj07vbda5sRf+YZ25S23K8QhRwvDP2pRcC8EdPOnutDcJ8WmLORO16/Ybl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0P250MB0891
Message-ID-Hash: M5YLKEM5MW2O2BRWJD2C35GK6DHDU5J6
X-Message-ID-Hash: M5YLKEM5MW2O2BRWJD2C35GK6DHDU5J6
X-MailFrom: tobias.kronauer@barkhauseninstitut.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [x410] Frequency Selectivity?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VJML7MC744YU2SLSTVXSRP3GQXCW54EN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2276932229946677673=="

--===============2276932229946677673==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AS4P250MB0799797DD3F4BE36F492F29C9BEF9AS4P250MB0799EURP_"

--_000_AS4P250MB0799797DD3F4BE36F492F29C9BEF9AS4P250MB0799EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I sincerely apologize for the inconvenience... Reading the warning prompt, =
it is specifically pointed out that the bandwidth requires an even ratio...=
. Setting it to, e.g., masterClockRate/4 does not cause a "hump".... Once a=
gain, I apologize for stealing your time.

Kind regards,
Tobias
________________________________
Von: Marcus D. Leech <patchvonbraun@gmail.com>
Gesendet: Montag, 11. April 2022 16:41
An: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Betreff: Re: AW: [USRP-users] Re: [x410] Frequency Selectivity?

On 2022-04-11 07:07, Tobias Kronauer wrote:
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

How are you connecting your TX and RX?  Antenna or direct-wired?  If direct=
-wired, make sure that your cable has at least 30dB of attenuation in it an=
d that your TX
  power levels aren't producing more than about 0dBm at the output.

With a master clock rate of 250MHz, 50Mhz delivered bandwidth requires an o=
dd decimation rate.  This has historically caused a passband response with =
a half-band
  "shape" that is like a "hump" as you describe.  I don't know whether this=
 applies to X410 or not.

It REALLY would be helpful for you to plot the RX response using a normal F=
FT plot--with the gain turned up and a terminator on the RX input, you shou=
ld be able to see
  the instrumental response of the device.    The "uhd_fft" example code wi=
th Gnu Radio produces nice plots for this sort of thing.




Barkhausen Institut
www.barkhauseninstitut.org


Barkhausen Institut gGmbH | Sitz: W?rzburger Stra?e 46, 01187 Dresden, Germ=
any | Registergericht: Amtsgericht Dresden, HRB 37267 | Gesch?ftsf?hrer: Pr=
of. Dr. Gerhard Fettweis, Dr. Tim Hentschel | Vorsitzender der Gesellschaft=
erdelegation: Dr. Andreas Handschuh

Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system. Information on data protection and =
processing of your personal information: https://barkhauseninstitut.org/dat=
a-privacy


--_000_AS4P250MB0799797DD3F4BE36F492F29C9BEF9AS4P250MB0799EURP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I sincerely apologize for the inconvenience... Reading the warning prompt, =
it is specifically pointed out that the bandwidth requires an
<b>even</b> ratio.... Setting it to, e.g., masterClockRate/4 does not cause=
 a &quot;hump&quot;.... Once again, I apologize for stealing your time.</di=
v>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Kind regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Tobias<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>Von:</b> Marcus D. Leech &lt;pa=
tchvonbraun@gmail.com&gt;<br>
<b>Gesendet:</b> Montag, 11. April 2022 16:41<br>
<b>An:</b> Tobias Kronauer &lt;tobias.kronauer@barkhauseninstitut.org&gt;<b=
r>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Betreff:</b> Re: AW: [USRP-users] Re: [x410] Frequency Selectivity?</fon=
t>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 2022-04-11 07:07, Tobias Kronauer wrote=
:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
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
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
I updated the plot as well.</div>
<br>
</blockquote>
How are you connecting your TX and RX?&nbsp; Antenna or direct-wired?&nbsp;=
 If direct-wired, make sure that your cable has at least 30dB of attenuatio=
n in it and that your TX<br>
&nbsp; power levels aren't producing more than about 0dBm at the output.<br=
>
<br>
With a master clock rate of 250MHz, 50Mhz delivered bandwidth requires an o=
dd decimation rate.&nbsp; This has historically caused a passband response =
with a half-band<br>
&nbsp; &quot;shape&quot; that is like a &quot;hump&quot; as you describe.&n=
bsp; I don't know whether this applies to X410 or not.<br>
<br>
It REALLY would be helpful for you to plot the RX response using a normal F=
FT plot--with the gain turned up and a terminator on the RX input, you shou=
ld be able to see<br>
&nbsp; the instrumental response of the device.&nbsp;&nbsp;&nbsp; The &quot=
;uhd_fft&quot; example code with Gnu Radio produces nice plots for this sor=
t of thing.<br>
<br>
<br>
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
itz: W&uuml;rzburger Stra&szlig;e 46, 01187 Dresden, Germany | Registergeri=
cht: Amtsgericht Dresden, HRB 37267 | Gesch&auml;ftsf&uuml;hrer: Prof. Dr. =
Gerhard Fettweis, Dr. Tim Hentschel | Vorsitzender der Gesellschafterdelega=
tion:
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

--_000_AS4P250MB0799797DD3F4BE36F492F29C9BEF9AS4P250MB0799EURP_--

--===============2276932229946677673==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2276932229946677673==--
