Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF32536183D
	for <lists+usrp-users@lfdr.de>; Fri, 16 Apr 2021 05:33:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A8504384AF2
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 23:33:44 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A87DD384182
	for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 23:32:53 -0400 (EDT)
Date: Fri, 16 Apr 2021 03:32:53 +0000
To: usrp-users@lists.ettus.com
From: brendan.horsfield@vectalabs.com
Message-ID: <HwGoEH3FA4WMskJTpvqryBTIbOFEJVyHCQDGNoM21A@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAJrPtHmUMa7pwc+t4NuGmJwoiepYk9BeAPdWLBNWvm6OHNpwqQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: CGO5PJ4Q4DSMAHR2SKMMCA67BQFIKGXV
X-Message-ID-Hash: CGO5PJ4Q4DSMAHR2SKMMCA67BQFIKGXV
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Calling C++ UHD functions from Python
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CGO5PJ4Q4DSMAHR2SKMMCA67BQFIKGXV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2367790174200027144=="

This is a multi-part message in MIME format.

--===============2367790174200027144==
Content-Type: multipart/alternative;
 boundary="b1_HwGoEH3FA4WMskJTpvqryBTIbOFEJVyHCQDGNoM21A"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_HwGoEH3FA4WMskJTpvqryBTIbOFEJVyHCQDGNoM21A
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Christian,

I=E2=80=99m developing applications for two different platforms at the mo=
ment:

1. HP Omen laptop, Intel Core i7-8750H CPU @ 2.20GHz =C3=97 12, 32GB RAM,=
 512GB SSD

2. Raspberry Pi 4 Model B, 8GB RAM, 128GB SSD

In both cases the B210 is connected to the host via USB 3.0.  Each host h=
as a 1GB RAM disk.

My target sampling rates are as follows:

* 40 Msps (minimum) on one channel, wire rate =3D sc16

* 20 Msps (minimum) on two channels, wire rate =3D sc16

* Number of samples:  Currently 2,000 per channel.  Might be nice to incr=
ease this to around 50,000 in future.

(I realise the Raspberry Pi is woefully underpowered for this application=
, but I am interested to see how far I can push it.)

Note that I was actually getting OK results with the Ettus-provided Pytho=
n API, but unfortunately it has a bug whereby the metadata object that is=
 returned with each data packet doesn=E2=80=99t always accurately record =
overflow events when they occur.  This means I don=E2=80=99t have a relia=
ble way of checking the integrity of my received data packets.  (The C++ =
API does not appear to suffer from this problem.)=20

How does your python-uhd API perform in this regard?

Brendan.

--b1_HwGoEH3FA4WMskJTpvqryBTIbOFEJVyHCQDGNoM21A
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Christian,</p><p>I=E2=80=99m developing applications for two differen=
t platforms at the moment:</p><ol><li><p>HP Omen laptop, Intel Core i7-8750=
H CPU @ 2.20GHz =C3=97 12, 32GB RAM, 512GB SSD</p></li><li><p>Raspberry Pi =
4 Model B, 8GB RAM, 128GB SSD</p></li></ol><p>In both cases the B210 is con=
nected to the host via USB 3.0.  Each host has a 1GB RAM disk.</p><p>My tar=
get sampling rates are as follows:</p><ul><li><p>40 Msps (minimum) on one c=
hannel, wire rate =3D sc16</p></li><li><p>20 Msps (minimum) on two channels=
, wire rate =3D sc16</p></li><li><p>Number of samples:  Currently 2,000 per=
 channel.  Might be nice to increase this to around 50,000 in future.</p></=
li></ul><p>(I realise the Raspberry Pi is woefully underpowered for this ap=
plication, but I am interested to see how far I can push it.)</p><p>Note th=
at I was actually getting OK results with the Ettus-provided Python API, bu=
t unfortunately it has a bug whereby the metadata object that is returned w=
ith each data packet doesn=E2=80=99t always accurately record overflow even=
ts when they occur.  This means I don=E2=80=99t have a reliable way of chec=
king the integrity of my received data packets.  (The C++ API does not appe=
ar to suffer from this problem.) </p><p>How does your python-uhd API perfor=
m in this regard?</p><p>Brendan.</p><p><br></p>

--b1_HwGoEH3FA4WMskJTpvqryBTIbOFEJVyHCQDGNoM21A--

--===============2367790174200027144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2367790174200027144==--
