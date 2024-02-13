Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CB0852D92
	for <lists+usrp-users@lfdr.de>; Tue, 13 Feb 2024 11:12:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 41255384C76
	for <lists+usrp-users@lfdr.de>; Tue, 13 Feb 2024 05:12:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707819171; bh=d1PpHWFihrL3QjKPkzOOQY5fm1wNPC+QXtW9TmEZ43M=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vFaSsi4zbWafi3gzF+Age/RAxkBS1rqEHsazxRI7vzJYRl9OmXkhZc+3Y1btHLSRf
	 o1xXt9HvW2wSNzLHcNCcj/RByZ7ec+7vPtBYWZaMxZ2c2QIRy0PxQb63PNnkKAv/se
	 JqZlPdnlxbWexhuTxOdj51mNuyzzg9ZEkuPaM5oQI+mLsrQ66JlsT+bcXKVRER0l44
	 AqbX851CcQgG/EjgltSt9i0gBg4AFpDhLJM/dRwu7nNZ+ejxXV7LDPJmntUDYpkBc+
	 uauYk9GPebyBjBgFY7OHucVLyol4ZokjxoT2teroLw3bZM1LZa5Ykp6gcm8EunPQTw
	 IQu/g1hcgh+3A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A4C6B384436
	for <usrp-users@lists.ettus.com>; Tue, 13 Feb 2024 05:12:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707819153; bh=YUlm0n6f0cbWbooDJ3eBH/phMXZhGMlTuIW5M6mOcUc=;
	h=Date:To:From:Subject:From;
	b=CAiM+sJqFacZH5giSurgUr9IAwFWpWjDl4nFKoDdh8kr8MK59bNZNzkGlcA9+yp4V
	 hQHpkpF6FBoVclE77phNol+yClIqgkggIEskS8cXcvD+m1bjgGU5JZtluHhKPJ8s2E
	 WDCyu1R7shGiPmW/TYCJOeFsuIpvcBLYJ2+wDZAz+LG5/cTY/JGHknvc6hDy9DPg3q
	 AQ261zFyn2tbeNLaRTNwQyjH4eeSgD+ts94tIvR9MqcqoMRD6uMsPkNn3MBCkw34H0
	 OfTUp0V0WoaT2kzTl29zlgdFxX0IgnrvnVld2OepCuGqeGP7kVgVJ5d0o+6tKqUMcz
	 MSxKmUSTSR13w==
Date: Tue, 13 Feb 2024 10:12:33 +0000
To: usrp-users@lists.ettus.com
From: jnunez@cud.uvigo.es
Message-ID: <xekP5xJJacK0QGGkJFn8HbRPnzJsI1qFQLpO5sNXM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: WYHWWPZCE7P5OWYXVRBE6EO3HPBD77OL
X-Message-ID-Hash: WYHWWPZCE7P5OWYXVRBE6EO3HPBD77OL
X-MailFrom: jnunez@cud.uvigo.es
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Can't set gain on N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WYHWWPZCE7P5OWYXVRBE6EO3HPBD77OL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3394696773165278708=="

This is a multi-part message in MIME format.

--===============3394696773165278708==
Content-Type: multipart/alternative;
 boundary="b1_xekP5xJJacK0QGGkJFn8HbRPnzJsI1qFQLpO5sNXM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_xekP5xJJacK0QGGkJFn8HbRPnzJsI1qFQLpO5sNXM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99am trying to capture a signal file using *rx_samples_to_file* w=
hich feeds input RX2 on my N200 with this command:

rx_samples_to_file --duration 30 --rate 1000000 --freq 100000000 --stats =
--progress --ant RX2 --gain 30

Execution, throws following error:

*Error: LookupError: IndexError: multi_usrp: RX channel 18446744073709551=
615 out of range for configured RX frontends*

If I don=E2=80=99t add --gain 30, it works.

Has anyone an idea of what=E2=80=99s going on?

I=E2=80=99m using UHD 4.5.0.0 and Ubuntu.

--b1_xekP5xJJacK0QGGkJFn8HbRPnzJsI1qFQLpO5sNXM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I=E2=80=99am trying to capture a signal file using <em>rx_samples_to_f=
ile</em> which feeds input RX2 on my N200 with this command:</p><p>rx_sam=
ples_to_file --duration 30 --rate 1000000 --freq 100000000 --stats --prog=
ress --ant RX2 --gain 30</p><p>Execution, throws following error:</p><p><=
em>Error: LookupError: IndexError: multi_usrp: RX channel 184467440737095=
51615 out of range for configured RX frontends</em></p><p>If I don=E2=80=99=
t add --gain 30, it works.</p><p>Has anyone an idea of what=E2=80=99s goi=
ng on?</p><p>I=E2=80=99m using UHD 4.5.0.0 and Ubuntu.</p>


--b1_xekP5xJJacK0QGGkJFn8HbRPnzJsI1qFQLpO5sNXM--

--===============3394696773165278708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3394696773165278708==--
