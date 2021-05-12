Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AB437BEEF
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 15:54:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 68A103849AD
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 09:54:08 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1D30D384352
	for <usrp-users@lists.ettus.com>; Wed, 12 May 2021 09:53:12 -0400 (EDT)
Date: Wed, 12 May 2021 13:53:12 +0000
To: usrp-users@lists.ettus.com
From: hex98@email.de
Message-ID: <LkrzwD7H2sDUp9f6bUFvB7ARmHBpfVmNd5nCDufFys@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: G2KEKBDAX47G6OT7WL3T7MJ5X5HJU35S
X-Message-ID-Hash: G2KEKBDAX47G6OT7WL3T7MJ5X5HJU35S
X-MailFrom: hex98@email.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Timed transmissions and recovery from underflow with X300
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G2KEKBDAX47G6OT7WL3T7MJ5X5HJU35S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1376142061274159702=="

This is a multi-part message in MIME format.

--===============1376142061274159702==
Content-Type: multipart/alternative;
 boundary="b1_LkrzwD7H2sDUp9f6bUFvB7ARmHBpfVmNd5nCDufFys"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_LkrzwD7H2sDUp9f6bUFvB7ARmHBpfVmNd5nCDufFys
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello everyone

In my scenario I do continuous transmissions with one X300 USRP at a rate=
 of 184.32 MSPS (UHD 3.15). Initially I used a timestamp only for the fir=
st transmission to align data with PPS, but now I want to re-align also a=
fter some rarely occurring underflows.

My approach was to add a time_spec to each tx_streamer::send() call: Each=
 send() transmits 10ms of data, and accordingly for each call the time_sp=
ec is incremented by 0.01s.

What I now see is that eventually an underflow will happen, and afterward=
s all further transmissions lead to =E2=80=9CL=E2=80=9D events; the trans=
mission never recovers. I also tried to set the transmission time further=
 in the future to allow recovery when the event_code shows an underflow, =
but this doesn=E2=80=99t solve the issue.

I could image that I need to work with start_of_burst / end_of_burst flag=
s, timeout settings, etc., but tbh the documentation isn=E2=80=99t very c=
lear on that topic.

Further observation:

I=E2=80=99ve added time measurement to my tx loop and noticed that also t=
he time_spec set for the first transmission doesn=E2=80=99t seem to work.=
 The first transmission gets a time_spec 2 seconds in the future, subsequ=
ent transmission increment this time_spec by 10ms. But on execution the f=
irst four transmissions take about 10ms, the fifth transmission takes abo=
ut 1.5 seconds and all subsequent 10ms again. What I expect is a 2 second=
 delay for the first transmission.

So I really seem to have some serious issues with timed transmission. Any=
 help, explanation of the mechanism or hint in the right direction is wel=
come.

Max

--b1_LkrzwD7H2sDUp9f6bUFvB7ARmHBpfVmNd5nCDufFys
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello everyone</p><p><br></p><p>In my scenario I do continuous transmiss=
ions with one X300 USRP at a rate of 184.32 MSPS (UHD 3.15). Initially I us=
ed a timestamp only for the first transmission to align data with PPS, but =
now I want to re-align also after some rarely occurring underflows.</p><p>M=
y approach was to add a time_spec to each tx_streamer::send() call: Each se=
nd() transmits 10ms of data, and accordingly for each call the time_spec is=
 incremented by 0.01s.</p><p>What I now see is that eventually an underflow=
 will happen, and afterwards all further transmissions lead to =E2=80=9CL=
=E2=80=9D events; the transmission never recovers. I also tried to set the =
transmission time further in the future to allow recovery when the event_co=
de shows an underflow, but this doesn=E2=80=99t solve the issue.</p><p>I co=
uld image that I need to work with start_of_burst / end_of_burst flags, tim=
eout settings, etc., but tbh the documentation isn=E2=80=99t very clear on =
that topic.</p><p><br></p><p>Further observation:</p><p>I=E2=80=99ve added =
time measurement to my tx loop and noticed that also the time_spec set for =
the first transmission doesn=E2=80=99t seem to work. The first transmission=
 gets a time_spec 2 seconds in the future, subsequent transmission incremen=
t this time_spec by 10ms. But on execution the first four transmissions tak=
e about 10ms, the fifth transmission takes about 1.5 seconds and all subseq=
uent 10ms again. What I expect is a 2 second delay for the first transmissi=
on.</p><p>So I really seem to have some serious issues with timed transmiss=
ion. Any help, explanation of the mechanism or hint in the right direction =
is welcome.</p><p>Max</p>

--b1_LkrzwD7H2sDUp9f6bUFvB7ARmHBpfVmNd5nCDufFys--

--===============1376142061274159702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1376142061274159702==--
