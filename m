Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3506DB172CB
	for <lists+usrp-users@lfdr.de>; Thu, 31 Jul 2025 16:05:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6A9FC38664C
	for <lists+usrp-users@lfdr.de>; Thu, 31 Jul 2025 10:05:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753970731; bh=OAMSzLFzTe+lV0EY82sy4PGFqJQHsute+XbA3MWWuSQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Rj6qZMlowxMMwDoHgHFyaMJ2EmZtOeWzcwmF9RQGSRLm+F3QT0idr+kEEt5OT3/mi
	 sg5nvCYvQdW67WkaO/DidSN91jB8iZcmEy1i05zNokktLbw0tB7ZE+5W+omZ0pkwsL
	 7u9rkd+LaazfOn3TemmDygejuU5vuoADBiUeBV7L5wGdOxwV5ePWklgDdLTN2BAStQ
	 EVb8LGCfP9/NKC8FbN45t7be+HpkejLD8Wp8YyUBHKJtvALgHB+NC8Uk6abN0lqrPD
	 xf6TghgLmhrhQPtrrYbyq1EVfuXBc7Azr/fP64x0EDThMC09ZUZy/gbTAMHXab+Vrm
	 W3+MoSbWnBoHg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6F635385FBA
	for <usrp-users@lists.ettus.com>; Thu, 31 Jul 2025 10:05:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753970704; bh=OipvCh+k360ADEImvqUsOfE15mb1v72Akq54g/jVaIo=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=b9GvmzFqsN+Ho2m3HG8jvy/8JpkRTERHR8tcIbJ6OCCMVKucNDQU2QpEWG2TE5Y5m
	 rn6SlnwJcuscAkg8sG9dQdczmUnHyI4FTnhH5s7/665/GOFHAxt1BJPqNU3G18kyCF
	 LqpaQ2fUvq8EIgvD0lAPDHYGnVhHdi8Xe9kfGtBCB7Jckm7Jd7Fm05LsD3LO3U0BVB
	 EiAfDWULI+LgL98qKpoP9LTJWTdIjv6uzZNP9Av1IAXjIn7xn6HOEqmKFl+Vi84kKi
	 Gk7iJUhgTzwihhypoLSjZJAHL4hwDfN4ScRxyFhB5EGhshX1J4ugdsXCa28h/7V5YP
	 A6taafGGrNU6A==
Date: Thu, 31 Jul 2025 14:05:04 +0000
To: usrp-users@lists.ettus.com
From: gechb21@gmail.com
Message-ID: <fWj6MRI5rIJLRu5Z8SjLUqE2poC1Ckawlvp0SQtY0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 8bfcBosbB017m5zcThlx6kskuX0KxhL1QpyK1VWHOo@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: SEDPYOIFCHKSFQG3ZPI35O2CR4KUXWMI
X-Message-ID-Hash: SEDPYOIFCHKSFQG3ZPI35O2CR4KUXWMI
X-MailFrom: gechb21@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Underflow Issue During Transmission and Reception with USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SEDPYOIFCHKSFQG3ZPI35O2CR4KUXWMI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4201790543616133372=="

This is a multi-part message in MIME format.

--===============4201790543616133372==
Content-Type: multipart/alternative;
 boundary="b1_fWj6MRI5rIJLRu5Z8SjLUqE2poC1Ckawlvp0SQtY0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_fWj6MRI5rIJLRu5Z8SjLUqE2poC1Ckawlvp0SQtY0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

When I run the following command:

/usr/lib/uhd/examples/tx_samples_from_file --freq 2484e6 --rate 3e6 --gai=
n 10 --wirefmt sc16 --ref=3Dinternal --file /home/ubuntutx/uhd/examples/t=
x_transmit_data.dat --repeat=20

UHD generates this warning:

=E2=80=9CThe requested interpolation is odd; the user should expect CIC=C2=
=A0rolloff.=C2=A0Select an even interpolation to ensure that a halfband f=
ilter is=C2=A0enabled.=E2=80=9D

The transmission appears to run without errors, but I don=E2=80=99t see a=
ny signal on the spectrum analyzer. Could you please clarify what this wa=
rning means and if it might be related to why the signal isn=E2=80=99t sh=
owing up?

Thanks.

--b1_fWj6MRI5rIJLRu5Z8SjLUqE2poC1Ckawlvp0SQtY0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p><br></p><p>When I run the following command:</p><p>/usr/lib/uhd/exampl=
es/tx_samples_from_file --freq 2484e6 --rate 3e6 --gain 10 --wirefmt sc16=
 --ref=3Dinternal --file /home/ubuntutx/uhd/examples/tx_transmit_data.dat=
 --repeat </p><p>UHD generates this warning:</p><p>=E2=80=9CThe requested=
 interpolation is odd; the user should expect CIC&nbsp;rolloff.&nbsp;Sele=
ct an even interpolation to ensure that a halfband filter is&nbsp;enabled=
.=E2=80=9D</p><p>The transmission appears to run without errors, but I do=
n=E2=80=99t see any signal on the spectrum analyzer. Could you please cla=
rify what this warning means and if it might be related to why the signal=
 isn=E2=80=99t showing up?</p><p>Thanks.</p>


--b1_fWj6MRI5rIJLRu5Z8SjLUqE2poC1Ckawlvp0SQtY0--

--===============4201790543616133372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4201790543616133372==--
