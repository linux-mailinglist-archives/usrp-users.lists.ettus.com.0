Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 313C833EC30
	for <lists+usrp-users@lfdr.de>; Wed, 17 Mar 2021 10:07:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B7D5F383851
	for <lists+usrp-users@lfdr.de>; Wed, 17 Mar 2021 05:07:42 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9289C3837AB
	for <usrp-users@lists.ettus.com>; Wed, 17 Mar 2021 05:07:34 -0400 (EDT)
Date: Wed, 17 Mar 2021 09:07:34 +0000
To: usrp-users@lists.ettus.com
Message-ID: <rPTjYX5eDBKsFbIIEcn1Bu778QS8zohNgdIWMHvSxA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: Z5UBNX4ZDEBWIBSU23PID3KCAUW2QG5C
X-Message-ID-Hash: Z5UBNX4ZDEBWIBSU23PID3KCAUW2QG5C
X-MailFrom: serge.manigault@ingenico.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [NI 2910] and [USB3] connexion problem (Windows 10 environnement)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z5UBNX4ZDEBWIBSU23PID3KCAUW2QG5C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Serge Manigault via USRP-users <usrp-users@lists.ettus.com>
Reply-To: serge.manigault@ingenico.com
Content-Type: multipart/mixed; boundary="===============6180403773411647864=="

This is a multi-part message in MIME format.

--===============6180403773411647864==
Content-Type: multipart/alternative;
 boundary="b1_rPTjYX5eDBKsFbIIEcn1Bu778QS8zohNgdIWMHvSxA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_rPTjYX5eDBKsFbIIEcn1Bu778QS8zohNgdIWMHvSxA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello usrp-user,

I am facing a problem with USB3. I have read a few threads on the subject=
 and I cant figure out if the status has been solve today.

I am using uhd 3.9.2.0 and uhd 4.0.0.0. but the problem is the same.

On my computers (2 DELL latops) and with different USB 3 hubs I don=E2=80=
=99t have any problems to communicate with the NI 2910 usrp box. (my usb3=
 cable is a usb3 cable super speed DELL reference "5K1FN13501JH1731").=20

But for my colleague who have the same computers and set of hubs and disp=
ose of 2 NI 2910 usrp boxes of same Part Number =E2=80=9C156229B -11L=E2=80=
=9D it is impossible to communicate in USB3.

The connection hangs when he tries the uhd_find_device.exe or the uhd_usr=
p_prob.exe

I can=E2=80=99t believe that the problem comes from the cable (on his sid=
e he have the official NI cable provided by NI). We could cross check the=
 hardware if we were closer but I am 150 km away from him.

Do you have any suggestion on what we could test?

Best regards,

Serge

--b1_rPTjYX5eDBKsFbIIEcn1Bu778QS8zohNgdIWMHvSxA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello usrp-user,</p><p>I am facing a problem with USB3. I have read a fe=
w threads on the subject and I cant figure out if the status has been solve=
 today.</p><p>I am using uhd 3.9.2.0 and uhd 4.0.0.0. but the problem is th=
e same.</p><p>On my computers (2 DELL latops) and with different USB 3 hubs=
 I don=E2=80=99t have any problems to communicate with the NI 2910 usrp box=
. (my usb3 cable is a usb3 cable super speed DELL reference "5K1FN13501JH17=
31"). </p><p>But for my colleague who have the same computers and set of hu=
bs and dispose of 2 NI 2910 usrp boxes of same Part Number =E2=80=9C156229B=
 -11L=E2=80=9D it is impossible to communicate in USB3.</p><p>The connectio=
n hangs when he tries the uhd_find_device.exe or the uhd_usrp_prob.exe</p><=
p>I can=E2=80=99t believe that the problem comes from the cable (on his sid=
e he have the official NI cable provided by NI). We could cross check the h=
ardware if we were closer but I am 150 km away from him.</p><p>Do you have =
any suggestion on what we could test?</p><p>Best regards,</p><p>Serge</p>

--b1_rPTjYX5eDBKsFbIIEcn1Bu778QS8zohNgdIWMHvSxA--

--===============6180403773411647864==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6180403773411647864==--
