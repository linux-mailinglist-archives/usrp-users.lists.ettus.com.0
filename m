Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2263E47B3BA
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 20:30:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F3DC83854A2
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 14:30:26 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 179F9384814
	for <usrp-users@lists.ettus.com>; Mon, 20 Dec 2021 14:29:27 -0500 (EST)
Date: Mon, 20 Dec 2021 19:29:27 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <15HIuV6KHu3003or7vBCZgs3tskRNSg0FMZQskf134@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 2YAZVFI53RJSWGN2CIJ3FFFDQMTWXDM5
X-Message-ID-Hash: 2YAZVFI53RJSWGN2CIJ3FFFDQMTWXDM5
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] GPIO on E320 not quite working as expected
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2YAZVFI53RJSWGN2CIJ3FFFDQMTWXDM5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8792490847483305962=="

This is a multi-part message in MIME format.

--===============8792490847483305962==
Content-Type: multipart/alternative;
 boundary="b1_15HIuV6KHu3003or7vBCZgs3tskRNSg0FMZQskf134"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_15HIuV6KHu3003or7vBCZgs3tskRNSg0FMZQskf134
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

To caveat this, I am attempting to modify the gr-ettus library to expose =
the gpio commands from the UHD driver. I am recently aware that gr-ettus =
doesn=E2=80=99t appear to be updated anymore, and the updates are going i=
nto gr-uhd. However, all of my code is using gr-ettus at the moment, so I=
 thought this might have been a quicker process. Maybe not.

My question is just, are there any known issues with GPIO on E320s in UHD=
 4.0.0.0? I haven=E2=80=99t updated because the newer versions don=E2=80=99=
t appear to work on my radios.

In any case, I=E2=80=99m following the information here to configure the =
GPIO: https://files.ettus.com/manual/page_gpio_api.html

First thing I notice is that get_gpio_banks() returns only =E2=80=9CFP0=E2=
=80=9D for me. (Guide says E3x0 should return =E2=80=9CINT0=E2=80=9D)

The main issue I have is that the only attribute that seems to create any=
 voltage at the pins is =E2=80=9CDDR.=E2=80=9D If I set DDR on a pin to 0=
 (input), I get 1.2V. If I set it to 1 (output), I get 0V. Setting the =E2=
=80=9COUT=E2=80=9D attribute to 0 or 1 for that pin has no effect. I=E2=80=
=99ve also configured =E2=80=9CCTRL=E2=80=9D to manual.=20

So I know my functions are doing something. I know that they=E2=80=99re g=
etting all the way =E2=80=9Cback=E2=80=9D to gpio_atr_3000. If I send non=
sense attributes, I get errors back, e.g.:

`ettus_rfnoc_rx_radio.get_gpio_attr("FP0","SRC")`

`RuntimeError: RuntimeError: Can't get GPIO source by GPIO ATR interface.=
`

Which is the error thrown in the switch structure in gpio_attr_3000.cpp. =
So I=E2=80=99m not convinced my implementation is wrong, but I=E2=80=99m =
probably missing a few steps.

--b1_15HIuV6KHu3003or7vBCZgs3tskRNSg0FMZQskf134
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>To caveat this, I am attempting to modify the gr-ettus library to expose=
 the gpio commands from the UHD driver. I am recently aware that gr-ettus d=
oesn=E2=80=99t appear to be updated anymore, and the updates are going into=
 gr-uhd. However, all of my code is using gr-ettus at the moment, so I thou=
ght this might have been a quicker process. Maybe not.</p><p>My question is=
 just, are there any known issues with GPIO on E320s in UHD 4.0.0.0? I have=
n=E2=80=99t updated because the newer versions don=E2=80=99t appear to work=
 on my radios.</p><p>In any case, I=E2=80=99m following the information her=
e to configure the GPIO: https://files.ettus.com/manual/page_gpio_api.html<=
/p><p>First thing I notice is that get_gpio_banks() returns only =E2=80=
=9CFP0=E2=80=9D for me. (Guide says E3x0 should return =E2=80=9CINT0=
=E2=80=9D)</p><p><br></p><p>The main issue I have is that the only attribut=
e that seems to create any voltage at the pins is =E2=80=9CDDR.=E2=80=9D If=
 I set DDR on a pin to 0 (input), I get 1.2V. If I set it to 1 (output), I =
get 0V. Setting the =E2=80=9COUT=E2=80=9D attribute to 0 or 1 for that pin =
has no effect. I=E2=80=99ve also configured =E2=80=9CCTRL=E2=80=9D to manua=
l. </p><p>So I know my functions are doing something. I know that they=
=E2=80=99re getting all the way =E2=80=9Cback=E2=80=9D to gpio_atr_3000. If=
 I send nonsense attributes, I get errors back, e.g.:</p><p><code>ettus_rfn=
oc_rx_radio.get_gpio_attr("FP0","SRC")</code></p><p><code>RuntimeError: Run=
timeError: Can't get GPIO source by GPIO ATR interface.</code></p><p>Which =
is the error thrown in the switch structure in gpio_attr_3000.cpp. So I=
=E2=80=99m not convinced my implementation is wrong, but I=E2=80=99m probab=
ly missing a few steps.</p><p><br></p>

--b1_15HIuV6KHu3003or7vBCZgs3tskRNSg0FMZQskf134--

--===============8792490847483305962==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8792490847483305962==--
