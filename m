Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 52217416B4D
	for <lists+usrp-users@lfdr.de>; Fri, 24 Sep 2021 07:48:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2CFAA3844F7
	for <lists+usrp-users@lfdr.de>; Fri, 24 Sep 2021 01:48:12 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1CB33383DC0
	for <usrp-users@lists.ettus.com>; Fri, 24 Sep 2021 01:47:21 -0400 (EDT)
Date: Fri, 24 Sep 2021 05:47:21 +0000
To: usrp-users@lists.ettus.com
From: markus.freund@etit.tu-chemnitz.de
Message-ID: <yvihFszum0xbmZ1alvfvUJLHqDePaIDR6hXw7IPGiw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: eed428d705084c8eacc529f73d7a9f94@komro.net
MIME-Version: 1.0
Message-ID-Hash: KEOICPDAHXA52INAWIKXIMO7MC4VWSEH
X-Message-ID-Hash: KEOICPDAHXA52INAWIKXIMO7MC4VWSEH
X-MailFrom: markus.freund@etit.tu-chemnitz.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help_Failed to build UHD in Ubuntu 20.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KEOICPDAHXA52INAWIKXIMO7MC4VWSEH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7117951588297318290=="

This is a multi-part message in MIME format.

--===============7117951588297318290==
Content-Type: multipart/alternative;
 boundary="b1_yvihFszum0xbmZ1alvfvUJLHqDePaIDR6hXw7IPGiw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_yvihFszum0xbmZ1alvfvUJLHqDePaIDR6hXw7IPGiw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Thangaraj,

you need to check the=C2=A0 IP-Address of the virtual machine. There=E2=80=
=99s two different addresses for each SFP on the USRP device. They are de=
pending on both the port and the speed. On mine (X310) they are 192.168.1=
0.2 for the 1GBit/s and 192.168.30.2 or 192.168.40.2. =C2=A0I guess it is=
 the same with yours. You can first try to ping the device both on the ho=
st and the VM.

=C2=A0

Best Markus

--b1_yvihFszum0xbmZ1alvfvUJLHqDePaIDR6hXw7IPGiw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello Thangaraj,<br><br></p><p>you need to check the&nbsp; IP-Address =
of the virtual machine. There=E2=80=99s two different addresses for each =
SFP on the USRP device. They are depending on both the port and the speed=
. On mine (X310) they are 192.168.10.2 for the 1GBit/s and 192.168.30.2 o=
r 192.168.40.2. &nbsp;I guess it is the same with yours. You can first tr=
y to ping the device both on the host and the VM.</p><p>&nbsp;</p><p>Best=
 Markus</p>


--b1_yvihFszum0xbmZ1alvfvUJLHqDePaIDR6hXw7IPGiw--

--===============7117951588297318290==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7117951588297318290==--
