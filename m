Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B693751181F
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 15:10:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9ABBA3848BA
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 09:10:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651065028; bh=USKotOxejHQB2cz00cCEQUtfpMiOA2bNp10xBLZbXQE=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ymesY63gSAnmYceg9+PSaROw8gxmV9l75al8A5FFm3RnmlbmfvHTDMMOfnUDWiKhq
	 q39Fi5bJuVgL2p7rKS1a3YhsyzTWUWp8UtNGFpS8fkj5QduCd661aE8jQRAk+1DRJu
	 owFUl/+tzI0gu4+OtR1XppLDwE5PWw+fcbpjT129F9Hj375RP7U95HUKB9UqgZq6A8
	 0wWsIqYK5C+N/PxdUFRDfTa3Z+V5Zn1ag0HT2BN3pzN02GRVidB8QyVTEu8TUnS9cw
	 7zKXDZYjV+LhS+4WFUxTZ8fJXUpHRcsUoByanl2ODeVPzTDn9GIz9GgEUqxoDf8umB
	 0BgyB4TUbusmA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 13CF4384713
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 09:09:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651064957; bh=xmanvZx6C5LXRwvjMStpEdGQhsDVr3ou+JO0foonTu4=;
	h=Date:To:From:Subject:From;
	b=X8dbyfXcWCu3Vb8VeB9G0774xnrlO/VIPYxb6VV1UfBHykK3RYglTwWBdBRmVmnNZ
	 5Af47JjX7bUzL0Yi/yl+7pUua5/ZApDnnigOQYl6g8395w+IPbT3cOpjLe/h5BIZkP
	 5d632uWboqp30eD7ieir0xk3c1LW8Xivwd0/UtMhw+pblt8UmqL41Z5zHWamCodyj9
	 CCwNXGoQ0l7WCjg2wNhdJn8OkbV3KGwFixA/4WSLfd5pAfJyEE0uFHfy6L38+zD/KL
	 Vm0vB/cWMugy8To+lKSuekcNBcS/NJljM7bc3OYjgLIfsWQe9SDASlU/BtHuULdeQZ
	 vk6HSRolgkedw==
Date: Wed, 27 Apr 2022 13:09:17 +0000
To: usrp-users@lists.ettus.com
From: emanuele.tolomei@intecs.it
Message-ID: <MXBxN3qxdsXpsZGoldHPO27XrGF7JgNZkOstJBpeMM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: UN273V6OWQVGJZ43HTRHMTA2KUNO3CBU
X-Message-ID-Hash: UN273V6OWQVGJZ43HTRHMTA2KUNO3CBU
X-MailFrom: emanuele.tolomei@intecs.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X300 with TwinRX - Overflow errors after some time
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UN273V6OWQVGJZ43HTRHMTA2KUNO3CBU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1207263349844776700=="

This is a multi-part message in MIME format.

--===============1207263349844776700==
Content-Type: multipart/alternative;
 boundary="b1_MXBxN3qxdsXpsZGoldHPO27XrGF7JgNZkOstJBpeMM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_MXBxN3qxdsXpsZGoldHPO27XrGF7JgNZkOstJBpeMM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I have an USRP X300 configured with two TwinRX sharing the same LO. My ap=
plication uses all four RX channels of the SDR, with a sampling rate of 5=
 MSps each, continuously receiving samples.

The problem is that the application starts to output overflow errors, fol=
lowed by late command errors, after running smooth for a variable period =
of time (usually between 15 minutes - 1 hour).

The SDR is connected to the host PC with a 1 Gigabit Ethernet connection,=
 and I=E2=80=99m using UHD v3.13.1.0.

Do you know what could cause these overflow errors?

Thank you in advance

Emanuele

--b1_MXBxN3qxdsXpsZGoldHPO27XrGF7JgNZkOstJBpeMM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I have an USRP X300 configured with two TwinRX sharing th=
e same LO. My application uses all four RX channels of the SDR, with a sa=
mpling rate of 5 MSps each, continuously receiving samples.</p><p>The pro=
blem is that the application starts to output overflow errors, followed b=
y late command errors, after running smooth for a variable period of time=
 (usually between 15 minutes - 1 hour).</p><p>The SDR is connected to the=
 host PC with a 1 Gigabit Ethernet connection, and I=E2=80=99m using UHD =
v3.13.1.0.</p><p>Do you know what could cause these overflow errors?</p><=
p>Thank you in advance</p><p>Emanuele</p>


--b1_MXBxN3qxdsXpsZGoldHPO27XrGF7JgNZkOstJBpeMM--

--===============1207263349844776700==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1207263349844776700==--
