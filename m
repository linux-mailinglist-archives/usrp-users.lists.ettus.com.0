Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B14A53987C4
	for <lists+usrp-users@lfdr.de>; Wed,  2 Jun 2021 13:15:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 86DC03846D1
	for <lists+usrp-users@lfdr.de>; Wed,  2 Jun 2021 07:15:32 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 704FB3840BB
	for <usrp-users@lists.ettus.com>; Wed,  2 Jun 2021 07:14:36 -0400 (EDT)
Date: Wed, 2 Jun 2021 11:14:36 +0000
To: usrp-users@lists.ettus.com
From: mamuki92@gmail.com
Message-ID: <4ZSr61pKqJXTkpGq7tBmW9Ee92pryuxJbUQWMPVgM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CABeprjwo_rjNRpZ9rXpLzB6gO00-knyP8gdTDaSzZsRj+Ymqag@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: A3HI4WPO3WNSAK2UPPIGVR3BIA2WP3DZ
X-Message-ID-Hash: A3HI4WPO3WNSAK2UPPIGVR3BIA2WP3DZ
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Question about an OOT : NOC ID doesn't match
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A3HI4WPO3WNSAK2UPPIGVR3BIA2WP3DZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0203418193446140127=="

This is a multi-part message in MIME format.

--===============0203418193446140127==
Content-Type: multipart/alternative;
 boundary="b1_4ZSr61pKqJXTkpGq7tBmW9Ee92pryuxJbUQWMPVgM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_4ZSr61pKqJXTkpGq7tBmW9Ee92pryuxJbUQWMPVgM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I have the same problem. Have you solved it? =20

I have tried other OOT blocks generated with rfnocmodtool and they work, =
the only differences I found between them are in the block/yml file where=
 control interfaces are axis_ctrl in the splitstream case and ctrlport in=
 other modules. I=E2=80=99ll try to change the interface just in case thi=
s could be the problem (I do not think that this could explain the uhd_us=
rp_probe behavior taking the older controller but just to discard it)

Kind Regards,

Maria

--b1_4ZSr61pKqJXTkpGq7tBmW9Ee92pryuxJbUQWMPVgM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>I have the same problem. Have you solved it?  </p><p>I have =
tried other OOT blocks generated with rfnocmodtool and they work, the onl=
y differences I found between them are in the block/yml file where contro=
l interfaces are axis_ctrl in the splitstream case and ctrlport in other =
modules. I=E2=80=99ll try to change the interface just in case this could=
 be the problem (I do not think that this could explain the uhd_usrp_prob=
e behavior taking the older controller but just to discard it)</p><p>Kind=
 Regards,</p><p>Maria</p>


--b1_4ZSr61pKqJXTkpGq7tBmW9Ee92pryuxJbUQWMPVgM--

--===============0203418193446140127==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0203418193446140127==--
