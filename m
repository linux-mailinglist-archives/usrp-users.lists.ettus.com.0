Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 68129389755
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 22:03:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A3DA3386A3D
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 16:03:11 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C85D7385DE3
	for <usrp-users@lists.ettus.com>; Wed, 19 May 2021 16:02:22 -0400 (EDT)
Date: Wed, 19 May 2021 20:02:22 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <mD9dgYeu5Fq8eYmqKpRsiCcw3lYPJI5Cibpzm8HdoA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAP+KAYCaFKLxpMQ9vZWcss7M50ug5+W_YdKjpoaeWk=qQqdG0w@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: M5EJFIFD5IMQ5QFCCM7ETQ4R7SSYAZ7O
X-Message-ID-Hash: M5EJFIFD5IMQ5QFCCM7ETQ4R7SSYAZ7O
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Setting network configuration (MTU) on the N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M5EJFIFD5IMQ5QFCCM7ETQ4R7SSYAZ7O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2536350764592431447=="

This is a multi-part message in MIME format.

--===============2536350764592431447==
Content-Type: multipart/alternative;
 boundary="b1_mD9dgYeu5Fq8eYmqKpRsiCcw3lYPJI5Cibpzm8HdoA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_mD9dgYeu5Fq8eYmqKpRsiCcw3lYPJI5Cibpzm8HdoA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Did you ever get a solution to this? I ran into this issue today, and the=
 solutions I found after a search were somewhat convoluted. As a quick wo=
rkaround, I connected to the radio over a serial connection, brought down=
 the network iface, then brought it back up with my desired MTU. This isn=
=E2=80=99t ideal in any way, but I can=E2=80=99t get the MTU settings to =
stick either in the systemd config.

--b1_mD9dgYeu5Fq8eYmqKpRsiCcw3lYPJI5Cibpzm8HdoA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Did you ever get a solution to this? I ran into this issue today, and =
the solutions I found after a search were somewhat convoluted. As a quick=
 workaround, I connected to the radio over a serial connection, brought d=
own the network iface, then brought it back up with my desired MTU. This =
isn=E2=80=99t ideal in any way, but I can=E2=80=99t get the MTU settings =
to stick either in the systemd config.</p>


--b1_mD9dgYeu5Fq8eYmqKpRsiCcw3lYPJI5Cibpzm8HdoA--

--===============2536350764592431447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2536350764592431447==--
