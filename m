Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 804864DB4F9
	for <lists+usrp-users@lfdr.de>; Wed, 16 Mar 2022 16:34:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6D4CC385298
	for <lists+usrp-users@lfdr.de>; Wed, 16 Mar 2022 11:34:01 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5867A384384
	for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 11:33:00 -0400 (EDT)
Date: Wed, 16 Mar 2022 15:33:00 +0000
To: usrp-users@lists.ettus.com
Message-ID: <B2fL7BbZRqF38fX3Wy2wmLyKSobTca02Bm1gug78nk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTSjEAyeqS=0tRJkggz2aXg4mkz4otzv4crbHSM7DttGPA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: YCYIAS4AL4PP7ZA5VZUUBUEESGEIUWZB
X-Message-ID-Hash: YCYIAS4AL4PP7ZA5VZUUBUEESGEIUWZB
X-MailFrom: tebetix672@tonaeto.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N32x - Signal amplitude distorted when NOT using coherent frontend ?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YCYIAS4AL4PP7ZA5VZUUBUEESGEIUWZB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: tebetix672--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: tebetix672@tonaeto.com
Content-Type: multipart/mixed; boundary="===============7175392617103925238=="

This is a multi-part message in MIME format.

--===============7175392617103925238==
Content-Type: multipart/alternative;
 boundary="b1_B2fL7BbZRqF38fX3Wy2wmLyKSobTca02Bm1gug78nk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_B2fL7BbZRqF38fX3Wy2wmLyKSobTca02Bm1gug78nk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Rob,

Thanks for your reply! Actually I was observing the same phenomenon, thou=
gh significantly less pronounced, with a sine wave. In the dsp-related fo=
rum they=E2=80=99ve pointed me to the fact that it could be due to the sa=
mpling phase (emitter and receivers do not share the LOs), I still have t=
o meditate a bit about this but it might be the cause=E2=80=A6 :S

Best,\
Rob

--b1_B2fL7BbZRqF38fX3Wy2wmLyKSobTca02Bm1gug78nk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello Rob,</p><p>Thanks for your reply! Actually I was observing the s=
ame phenomenon, though significantly less pronounced, with a sine wave. I=
n the dsp-related forum they=E2=80=99ve pointed me to the fact that it co=
uld be due to the sampling phase (emitter and receivers do not share the =
LOs), I still have to meditate a bit about this but it might be the cause=
=E2=80=A6 :S</p><p>Best,<br>Rob</p>


--b1_B2fL7BbZRqF38fX3Wy2wmLyKSobTca02Bm1gug78nk--

--===============7175392617103925238==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7175392617103925238==--
