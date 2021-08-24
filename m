Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBBE3F68EE
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 20:16:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 950CC3847BC
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 14:16:53 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DC9A238423A
	for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 14:16:04 -0400 (EDT)
Date: Tue, 24 Aug 2021 18:16:04 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <0PsGUOgpZFlGZZ0QnTAZ3K1lOSZkZUXTi40xILdNI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 09yEFYtXNBDTdh9UbmHCHYVmMR72vH4YhENY1fgdw@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: B7BJRQEDL5QLGP3FJZPRD2J5GO5FORF4
X-Message-ID-Hash: B7BJRQEDL5QLGP3FJZPRD2J5GO5FORF4
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Python documentation / interfacing with GPSDO
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B7BJRQEDL5QLGP3FJZPRD2J5GO5FORF4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5199903765154453592=="

This is a multi-part message in MIME format.

--===============5199903765154453592==
Content-Type: multipart/alternative;
 boundary="b1_0PsGUOgpZFlGZZ0QnTAZ3K1lOSZkZUXTi40xILdNI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_0PsGUOgpZFlGZZ0QnTAZ3K1lOSZkZUXTi40xILdNI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This is maybe a dumber question, but is there a way to use those function=
s if I=E2=80=99m using gnuradio / gr-ettus? The rfnoc graph is created by=
:=20

rfnoc_graph =3D ettus.rfnoc_graph(uhd.device_addr(=E2=80=9C,=E2=80=9D.joi=
n((=E2=80=98=E2=80=98,=E2=80=99=E2=80=99))))

Where uhd in this context is from the gnuradio library. I=E2=80=99ve been=
 digging through the gr-ettus source code to figure out where it eventual=
ly gets back to the real uhd library, which appears to be in ettus_swig.p=
y, but then I=E2=80=99m not sure where to go from there. Is there a way t=
o use the real uhd library with an rfnoc_graph that=E2=80=99s already bee=
n created by gr-ettus?

--b1_0PsGUOgpZFlGZZ0QnTAZ3K1lOSZkZUXTi40xILdNI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>This is maybe a dumber question, but is there a way to use those funct=
ions if I=E2=80=99m using gnuradio / gr-ettus? The rfnoc graph is created=
 by: </p><p>rfnoc_graph =3D ettus.rfnoc_graph(uhd.device_addr(=E2=80=9C,=E2=
=80=9D.join((=E2=80=98=E2=80=98,=E2=80=99=E2=80=99))))</p><p>Where uhd in=
 this context is from the gnuradio library. I=E2=80=99ve been digging thr=
ough the gr-ettus source code to figure out where it eventually gets back=
 to the real uhd library, which appears to be in ettus_swig.py, but then =
I=E2=80=99m not sure where to go from there. Is there a way to use the re=
al uhd library with an rfnoc_graph that=E2=80=99s already been created by=
 gr-ettus?</p>


--b1_0PsGUOgpZFlGZZ0QnTAZ3K1lOSZkZUXTi40xILdNI--

--===============5199903765154453592==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5199903765154453592==--
