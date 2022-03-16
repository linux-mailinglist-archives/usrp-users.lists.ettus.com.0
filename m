Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 633344DAFC4
	for <lists+usrp-users@lfdr.de>; Wed, 16 Mar 2022 13:28:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 32DAF38519D
	for <lists+usrp-users@lfdr.de>; Wed, 16 Mar 2022 08:28:51 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A46433844A0
	for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 08:27:53 -0400 (EDT)
Date: Wed, 16 Mar 2022 12:27:53 +0000
To: usrp-users@lists.ettus.com
Message-ID: <X5kiR6Ez6KgQT6x3lYaoamvHB3GovMDfLoEteNGBXVw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: AHTZHDZA5EG2ZQJQDFTCVLTTJNEILIP2
X-Message-ID-Hash: AHTZHDZA5EG2ZQJQDFTCVLTTJNEILIP2
X-MailFrom: tebetix672@tonaeto.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N32x - Signal amplitude distorted when NOT using coherent frontend ?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AHTZHDZA5EG2ZQJQDFTCVLTTJNEILIP2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: tebetix672--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: tebetix672@tonaeto.com
Content-Type: multipart/mixed; boundary="===============9155286387302011221=="

This is a multi-part message in MIME format.

--===============9155286387302011221==
Content-Type: multipart/alternative;
 boundary="b1_X5kiR6Ez6KgQT6x3lYaoamvHB3GovMDfLoEteNGBXVw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_X5kiR6Ez6KgQT6x3lYaoamvHB3GovMDfLoEteNGBXVw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello!

I have been doing a simple test where an impulse (with a rather small dut=
y cycle) is sent over a (short) wire and then captured by two N32x boards=
 synchronized with White Rabbit. The B210 has a sampling rate of 4 Msps, =
while I=E2=80=99ve tried using both 10 Msps and 5 Msps for the N32x (with=
 the bandwidths adjusted correspondingly).

To my surprise, the amplitudes of the signals seem to be =E2=80=9Cmodulat=
ed=E2=80=9D =E2=80=94 see, for instance, a plot of the absolute value of =
the signals here: https://ibb.co/PggyT06

This effect =E2=80=9Cmagically=E2=80=9D disappears if I configure the two=
 boards to have a coherent frontend =E2=80=94 by connecting =E2=80=9Cout0=
=E2=80=9D of the N321 board to the LO input on the N320, and =E2=80=9Cout=
1=E2=80=9D to =E2=80=9Cin1=E2=80=9D, where I do the latter despite using =
only the first channel of each board. Even weirder, if I just configure t=
he N321 board to use the coherent frontend (thus being a timing source an=
d destination), while I leave the N320 as it is, the signal on the N321 i=
s just fine while the other gets largely distorted: https://ibb.co/Q9qqKc=
q

My guess is that I=E2=80=99ve misconfigured something=E2=80=A6. but what?=
\
The only differences are the commands:

`usrp->set_rx_lo_source("external", "lo1", 0);`\
`usrp->set_rx_lo_source("external", "lo1", 1);`\
`usrp->set_rx_lo_export_enabled(true, "lo1", 0);`\
`usrp->get_device()->get_tree()->access<bool>("/blocks/0/Radio#0/dboard/r=
x_frontends/0/los/lo1/lo_distribution/LO_OUT_0/export").set(true);`\
`usrp->get_device()->get_tree()->access<bool>("/blocks/0/Radio#0/dboard/r=
x_frontends/0/los/lo1/lo_distribution/LO_OUT_1/export").set(true);`

on the N321, with just the first two lines for the N320 =E2=80=94 but I c=
annot see how this could affect the acquired signals=E2=80=A6

Thanks a lot in advance for any help!

Best,\
Rob

(note: I=E2=80=99ve also asked help on this on dsp-related, thinking this=
 was an issue with my understanding of SDRs, but the last test mentioned =
above made me wonder whether this was an issue due to a misconfiguration =
of the N32x boards=E2=80=A6)

--b1_X5kiR6Ez6KgQT6x3lYaoamvHB3GovMDfLoEteNGBXVw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello!</p><p>I have been doing a simple test where an impulse (with a ra=
ther small duty cycle) is sent over a (short) wire and then captured by two=
 N32x boards synchronized with White Rabbit. The B210 has a sampling rate o=
f 4 Msps, while I=E2=80=99ve tried using both 10 Msps and 5 Msps for the N3=
2x (with the bandwidths adjusted correspondingly).</p><p>To my surprise, th=
e amplitudes of the signals seem to be =E2=80=9Cmodulated=E2=80=9D =
=E2=80=94 see, for instance, a plot of the absolute value of the signals he=
re: https://ibb.co/PggyT06</p><p>This effect =E2=80=9Cmagically=E2=80=9D di=
sappears if I configure the two boards to have a coherent frontend =
=E2=80=94 by connecting =E2=80=9Cout0=E2=80=9D of the N321 board to the LO =
input on the N320, and =E2=80=9Cout1=E2=80=9D to =E2=80=9Cin1=E2=80=9D, whe=
re I do the latter despite using only the first channel of each board. Even=
 weirder, if I just configure the N321 board to use the coherent frontend (=
thus being a timing source and destination), while I leave the N320 as it i=
s, the signal on the N321 is just fine while the other gets largely distort=
ed: https://ibb.co/Q9qqKcq</p><p>My guess is that I=E2=80=99ve misconfigure=
d something=E2=80=A6. but what?<br>The only differences are the commands:</=
p><p><code>usrp-&gt;set_rx_lo_source("external", "lo1", 0);<br>usrp-&gt;set=
_rx_lo_source("external", "lo1", 1);<br>usrp-&gt;set_rx_lo_export_enabled(t=
rue, "lo1", 0);<br>usrp-&gt;get_device()-&gt;get_tree()-&gt;access&lt;bool&=
gt;("/blocks/0/Radio#0/dboard/rx_frontends/0/los/lo1/lo_distribution/LO_OUT=
_0/export").set(true);<br>usrp-&gt;get_device()-&gt;get_tree()-&gt;access&l=
t;bool&gt;("/blocks/0/Radio#0/dboard/rx_frontends/0/los/lo1/lo_distribution=
/LO_OUT_1/export").set(true);</code></p><p>on the N321, with just the first=
 two lines for the N320 =E2=80=94 but I cannot see how this could affect th=
e acquired signals=E2=80=A6</p><p>Thanks a lot in advance for any help!</p>=
<p>Best,<br>Rob</p><p>(note: I=E2=80=99ve also asked help on this on dsp-re=
lated, thinking this was an issue with my understanding of SDRs, but the la=
st test mentioned above made me wonder whether this was an issue due to a m=
isconfiguration of the N32x boards=E2=80=A6)</p>

--b1_X5kiR6Ez6KgQT6x3lYaoamvHB3GovMDfLoEteNGBXVw--

--===============9155286387302011221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9155286387302011221==--
