Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E71E3D045B
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jul 2021 00:15:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CEA133849D1
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jul 2021 18:15:18 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 14A783845E5
	for <usrp-users@lists.ettus.com>; Tue, 20 Jul 2021 18:14:30 -0400 (EDT)
Date: Tue, 20 Jul 2021 22:14:30 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <DCyjcdGRCSGZBKhfjKzj4bq3XVMNwePBV5mzMVquI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: HBABGJ77AYJMANUUTADBTUXKSF3SFIKS
X-Message-ID-Hash: HBABGJ77AYJMANUUTADBTUXKSF3SFIKS
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Understanding RFNoC DDC in Gnuradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HBABGJ77AYJMANUUTADBTUXKSF3SFIKS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1471266601708961156=="

This is a multi-part message in MIME format.

--===============1471266601708961156==
Content-Type: multipart/alternative;
 boundary="b1_DCyjcdGRCSGZBKhfjKzj4bq3XVMNwePBV5mzMVquI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_DCyjcdGRCSGZBKhfjKzj4bq3XVMNwePBV5mzMVquI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99m trying to understand what the DDC block is doing, because it =
doesn=E2=80=99t appear to be working like I would expect. I=E2=80=99m som=
ewhat new to DSP in general, so it=E2=80=99s possible I have a fundamenta=
l misconception here.

Let=E2=80=99s say I have an RFNoC radio rx block connected to a DDC, a st=
reamer, and then out to a QT Frequency Sink. My radio is running at 16 MS=
/sec, and I want the DDC to output at 400 KS/sec, a decimation factor of =
40. My understanding here is that my 16 MHz bandwidth should then be repr=
esented as a 400 kHz bandwidth in my FFT plot - this is the behavior I wo=
uld get if I used, say the rational resampler block in gnuradio. So if I =
shifted my frequency center by 4 MHz at the receiver, that would show up =
as a 4 MHz/40 =3D 100 kHz shift in my FFT if I originally had a peak at t=
he center.

This doesn=E2=80=99t seem to be happening with the DDC block. It looks mo=
re like it=E2=80=99s truncating, rather than downsampling. For example, I=
 apply a 100 kHz shift to my receiver, and I get a 100 kHz shift in my pe=
ak in my FFT.

Diving into the code, I see that there is a fair amount of difference in =
the front facing functions using the gnuradio libraries than what I see i=
n in the USRP hardware manual. For example, get_ and set_input_rate() are=
 not available. When I call =E2=80=9Cettus_rfnoc_ddc_0.get_int_property(=E2=
=80=98decim=E2=80=99)=E2=80=9D, it always returns a rate of 1 regardless =
of what my input/output rates are set to. Changing this value with set_in=
t_property() doesn=E2=80=99t appear to have any effect, other than changi=
ng the number returned by the above function. What=E2=80=99s going on her=
e?

--b1_DCyjcdGRCSGZBKhfjKzj4bq3XVMNwePBV5mzMVquI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I=E2=80=99m trying to understand what the DDC block is doing, because it=
 doesn=E2=80=99t appear to be working like I would expect. I=E2=80=99m some=
what new to DSP in general, so it=E2=80=99s possible I have a fundamental m=
isconception here.</p><p><br></p><p>Let=E2=80=99s say I have an RFNoC radio=
 rx block connected to a DDC, a streamer, and then out to a QT Frequency Si=
nk. My radio is running at 16 MS/sec, and I want the DDC to output at 400 K=
S/sec, a decimation factor of 40. My understanding here is that my 16 MHz b=
andwidth should then be represented as a 400 kHz bandwidth in my FFT plot -=
 this is the behavior I would get if I used, say the rational resampler blo=
ck in gnuradio. So if I shifted my frequency center by 4 MHz at the receive=
r, that would show up as a 4 MHz/40 =3D 100 kHz shift in my FFT if I origin=
ally had a peak at the center.</p><p><br></p><p>This doesn=E2=80=99t seem t=
o be happening with the DDC block. It looks more like it=E2=80=99s truncati=
ng, rather than downsampling. For example, I apply a 100 kHz shift to my re=
ceiver, and I get a 100 kHz shift in my peak in my FFT.</p><p><br></p><p>Di=
ving into the code, I see that there is a fair amount of difference in the =
front facing functions using the gnuradio libraries than what I see in in t=
he USRP hardware manual. For example, get_ and set_input_rate() are not ava=
ilable. When I call =E2=80=9Cettus_rfnoc_ddc_0.get_int_property(=E2=80=
=98decim=E2=80=99)=E2=80=9D, it always returns a rate of 1 regardless of wh=
at my input/output rates are set to. Changing this value with set_int_prope=
rty() doesn=E2=80=99t appear to have any effect, other than changing the nu=
mber returned by the above function. What=E2=80=99s going on here?</p>

--b1_DCyjcdGRCSGZBKhfjKzj4bq3XVMNwePBV5mzMVquI--

--===============1471266601708961156==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1471266601708961156==--
