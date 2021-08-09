Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 553633E4A95
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 19:12:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 538D73851DA
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 13:11:59 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F29DC383670
	for <usrp-users@lists.ettus.com>; Mon,  9 Aug 2021 13:11:08 -0400 (EDT)
Date: Mon, 9 Aug 2021 17:11:08 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <eVhTFPUXpDmDEU8HjFsuipmhPqapZaEfUysS0RKng@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 6QGAAJPROEFLP74E6I5Q2Y2W6YDVCRPE
X-Message-ID-Hash: 6QGAAJPROEFLP74E6I5Q2Y2W6YDVCRPE
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E320 External Reboot Signal
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6QGAAJPROEFLP74E6I5Q2Y2W6YDVCRPE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2025179873039161841=="

This is a multi-part message in MIME format.

--===============2025179873039161841==
Content-Type: multipart/alternative;
 boundary="b1_eVhTFPUXpDmDEU8HjFsuipmhPqapZaEfUysS0RKng"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_eVhTFPUXpDmDEU8HjFsuipmhPqapZaEfUysS0RKng
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I was just curious if there is a way to assert an external reboot signal =
on the E320. For example, if/when the embedded linux OS crashes hard and =
the system can=E2=80=99t right itself. Absent this, I was just going to m=
ake an external watchdog to power cycle the whole thing.

I noticed in the register mapping table there is something called PHY_CTR=
L_STATUS that by description is the =E2=80=9Cphy reset control.=E2=80=9D =
Is this something I can use for that purpose? I haven=E2=80=99t been able=
 to find much documentation on this register, or any of them in that tabl=
e.

--b1_eVhTFPUXpDmDEU8HjFsuipmhPqapZaEfUysS0RKng
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I was just curious if there is a way to assert an external reboot sign=
al on the E320. For example, if/when the embedded linux OS crashes hard a=
nd the system can=E2=80=99t right itself. Absent this, I was just going t=
o make an external watchdog to power cycle the whole thing.</p><p><br></p=
><p>I noticed in the register mapping table there is something called PHY=
_CTRL_STATUS that by description is the =E2=80=9Cphy reset control.=E2=80=
=9D Is this something I can use for that purpose? I haven=E2=80=99t been =
able to find much documentation on this register, or any of them in that =
table.</p>


--b1_eVhTFPUXpDmDEU8HjFsuipmhPqapZaEfUysS0RKng--

--===============2025179873039161841==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2025179873039161841==--
