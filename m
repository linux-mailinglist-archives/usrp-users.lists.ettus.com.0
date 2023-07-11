Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E25C74F31A
	for <lists+usrp-users@lfdr.de>; Tue, 11 Jul 2023 17:14:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 25C0B383D90
	for <lists+usrp-users@lfdr.de>; Tue, 11 Jul 2023 11:14:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689088466; bh=ccSXPNPLW3Y9epNIqH1GSbkQo/UZtzFFYIjgwsubDxE=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=l8U19S/ApfSqWZTTOY5EKgeIkaMeWbrKAVcwDnhuasObzr7RgARXQtX/pA/olLWZf
	 ARQqxiChR+1uEr64g1YAyEPmiLKORBGN0CI+psEMBcxzFnBfW1UguD4acr8FIjirqy
	 JMCw5JnSyRLiPMVPpE+F3iAzk/8RP+Jrp6WG+SgsUW3H6GmL58e/QoNp4trcgGl1eB
	 Cw/42tWpNGceLuzQjBMS3W8Lh1NC/dRl5yu9hi5zfhBVW3R6HNdCTvNi0EnMfvLj1+
	 mUJa/dPrpzeQj98ml1PnaQp8eaRilWSus9lWXOylfBCtEdXKR905HckuYa7JFdVCcL
	 FLOo3CI2u+SjA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 66B613839DE
	for <usrp-users@lists.ettus.com>; Tue, 11 Jul 2023 11:14:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689088450; bh=3dYMGr1TboYwuBPVsmwy88prLJWAkJaHjlChY999HA4=;
	h=Date:To:From:Subject:From;
	b=YKJH86Kb9cvheiDR/K1bhEuuJ7SFgbD1LorcAOYXGU6h0WciVMFm/3NN8fS5O17X6
	 u0jipwj77mgEOba0DvehpijXwOXB8fQuuthkwDw3v6SdoomyJp0A1kwSolPvH6k7Mj
	 n5zOHjG7lTrNf8v+kgE0LR9IZluBi59hquiuxr+XdfBQdb1is5VWJdf1OgnC4T3Fyb
	 Yl33oleczQ0ZWqAKXBg/qBBYX0JyxiwsoRfOwsQa7V88Nm3xxdLG/9hHxNSvaI1Aac
	 bZe84PFzrJRYxoJF9WtWCHRwxDtar5vDMEQzkvvTgjVCJ8Zpvrb7LBVEuD/OuzJW+t
	 hQbafDcPUbV7A==
Date: Tue, 11 Jul 2023 15:14:10 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <vvx3jCG4mwwDEiHpuVEGcbQT0vuNDNxo3uz1MIAbeg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: GGRYO5U7DREG2USVQOTE7MJBZNYZUNXX
X-Message-ID-Hash: GGRYO5U7DREG2USVQOTE7MJBZNYZUNXX
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Voltage Specification of x4xx
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GGRYO5U7DREG2USVQOTE7MJBZNYZUNXX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6638024640430846253=="

This is a multi-part message in MIME format.

--===============6638024640430846253==
Content-Type: multipart/alternative;
 boundary="b1_vvx3jCG4mwwDEiHpuVEGcbQT0vuNDNxo3uz1MIAbeg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_vvx3jCG4mwwDEiHpuVEGcbQT0vuNDNxo3uz1MIAbeg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am curious about the maximum voltage that can be applied to the x4xx An=
tenna receive port. On the X410 Getting Started guide, it says

=E2=80=9CNever apply more than +14 dBm continuous <=3D3GHz, +17 dBm conti=
nuous >3GHz, or +20dBm more than 5 minutes >3GHz of power into any RF inp=
ut.=E2=80=9D

And

=E2=80=9CAlways use at least 30dB attenuation if operating in loopback co=
nfiguration=E2=80=9D

However, the daughterboard seems to support an adjustable =E2=80=9CGain=E2=
=80=9D.

Is this maximum dBm specs assuming a maximum Gain is used? Is the maximum=
 voltage that can be supplied determined by the DAC on the FPGA or a comp=
onent on the daughterboard.

Thanks

Joe

--b1_vvx3jCG4mwwDEiHpuVEGcbQT0vuNDNxo3uz1MIAbeg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p><br></p><p>I am curious about the maximum voltage that ca=
n be applied to the x4xx Antenna receive port. On the X410 Getting Starte=
d guide, it says</p><p>=E2=80=9CNever apply more than +14 dBm continuous =
&lt;=3D3GHz, +17 dBm continuous &gt;3GHz, or +20dBm more than 5 minutes &=
gt;3GHz of power into any RF input.=E2=80=9D</p><p>And</p><p>=E2=80=9CAlw=
ays use at least 30dB attenuation if operating in loopback configuration=E2=
=80=9D</p><p>However, the daughterboard seems to support an adjustable =E2=
=80=9CGain=E2=80=9D.</p><p>Is this maximum dBm specs assuming a maximum G=
ain is used? Is the maximum voltage that can be supplied determined by th=
e DAC on the FPGA or a component on the daughterboard.</p><p>Thanks</p><p=
>Joe</p>


--b1_vvx3jCG4mwwDEiHpuVEGcbQT0vuNDNxo3uz1MIAbeg--

--===============6638024640430846253==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6638024640430846253==--
