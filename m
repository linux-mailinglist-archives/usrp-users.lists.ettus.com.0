Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3052A775311
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 08:45:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D071E384877
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 02:45:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691563523; bh=XS/XW8lld0GENoSEDGyQh3ZHU8MDPWtpk8aL8omYE+I=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=T9UdvxGFwrE0TY2lawmFJH19oHL31G0W29/KRZ54SATedCYrIoRucQ78s58m7YQlN
	 qVyGEb7UoyNuR32rX+Red+hu6vq6HRhm/l95de3G5YFJbWAmrRruMuKBu2Zjn1OXYA
	 72U0PHL+vdkJD/5xlUwZQtpXIdoxC9uhOS/iXlVYywtxnAmXIJcG567oYGu9cYZb5U
	 x7Rux8/LtwA9ytLePrb/YUWqsCn3tPMa3sPVVWYO5Zro97uRUziTTUbwqqVYan0XP6
	 mLbZWxpLJKXw8P1QMLLhZDTf5IzEdn+ViHUCSRx03y/RjXyFY2bdwN1daxvI5R0tZC
	 OTNWDBUc1xTew==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BB68E383F00
	for <usrp-users@lists.ettus.com>; Wed,  9 Aug 2023 02:44:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691563491; bh=4GD6kVeeImRdDN87AkoqeJMo0djge/4DwMSL/W+JnN0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=g9YZz/UicomhvnaZrdUGPwelVZG1hEC/T899TtrHvq85dhm4ysp9JFIqqP2FMqcZY
	 qMiMbHDA4hHQ2OXzIwbS9WL8hHeOkju+cnO3u/CnOACEV6KYlDshaIilgkEhthRNpE
	 EkhP+RqBMCRlumQaNYztIiCnvGpYtbt1AE3tDfqiSRV/44UtdWK8m05DEVEOB7NKSG
	 BnRz/9lHCiJuGsNZhLDoMHBB8HmR541HZDc7AhAsBSsy8BpO9moQYC8JTIi1fOa92c
	 FTgqOnL1d+MddownADtSdeRgg0X/R7yJtpCFSi0lVpomVGk8kpn+/GYt87oYV6MDKd
	 sA+PhgatIY+Ig==
Date: Wed, 9 Aug 2023 06:44:51 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <PafzuSD4XSAzjCTC0oW3mddujj5SAVju5FSjBlP9zIM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 5662b3fd-6aee-4484-0f8c-5817914152a5@gmail.com
MIME-Version: 1.0
Message-ID-Hash: T5RSRANPGHELZCISVZZOTQ32N3UDOBIE
X-Message-ID-Hash: T5RSRANPGHELZCISVZZOTQ32N3UDOBIE
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Advice on transmitting trigger signal before pulse frequency on ettus x310 and GNU radio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T5RSRANPGHELZCISVZZOTQ32N3UDOBIE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5618718297447014113=="

This is a multi-part message in MIME format.

--===============5618718297447014113==
Content-Type: multipart/alternative;
 boundary="b1_PafzuSD4XSAzjCTC0oW3mddujj5SAVju5FSjBlP9zIM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_PafzuSD4XSAzjCTC0oW3mddujj5SAVju5FSjBlP9zIM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Michelle,

If you can use burst transmission then UHD=E2=80=99s GPIO control interfa=
ce might be ok (you can use ATR for that).

If you need to have good control over phase difference between the pulses=
 then burst transmision adds additional problems and it=E2=80=99s easier =
to transmit signal constantly with zero samples filling the gaps between =
the pulses. Then to set GPIO you can use timed commands. But with rise of=
 pulse repetition frequency this gets quickly tedious (you have to send c=
ommands constantly for each pulse). Over some pulse repetition frequency =
this method no longer works.

In that case my a bit hackish solution is to spare LSB bit from I or Q of=
 each sample and use that to control GPIO output. This requires modificat=
ion of the FPGA. That modification was easy with X310 before RFNoC, as th=
ere was easy access to samples before DUC. With RFNoC it=E2=80=99s only e=
asy when you are transmitting with full speed of the device.

Otherwise it involves modification of RFNoC-automatically-generated-code =
what I haven=E2=80=99t done yet. Maybe it=E2=80=99s possibly to create RF=
NoC block that controls GPIO but I didn=E2=80=99t try that as this is not=
 the most straightforward way to do that.

Best Regards,\
Piotr Krysik

--b1_PafzuSD4XSAzjCTC0oW3mddujj5SAVju5FSjBlP9zIM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello Michelle,</p><p>If you can use burst transmission then UHD=
=E2=80=99s GPIO control interface might be ok (you can use ATR for that).</=
p><p>If you need to have good control over phase difference between the pul=
ses then burst transmision adds additional problems and it=E2=80=99s easier=
 to transmit signal constantly with zero samples filling the gaps between t=
he pulses. Then to set GPIO you can use timed commands. But with rise of pu=
lse repetition frequency this gets quickly tedious (you have to send comman=
ds constantly for each pulse). Over some pulse repetition frequency this me=
thod no longer works.</p><p>In that case my a bit hackish solution is to sp=
are LSB bit from I or Q of each sample and use that to control GPIO output.=
 This requires modification of the FPGA. That modification was easy with X3=
10 before RFNoC, as there was easy access to samples before DUC. With RFNoC=
 it=E2=80=99s only easy when you are transmitting with full speed of the de=
vice.</p><p>Otherwise it involves modification of RFNoC-automatically-gener=
ated-code what I haven=E2=80=99t done yet. Maybe it=E2=80=99s possibly to c=
reate RFNoC block that controls GPIO but I didn=E2=80=99t try that as this =
is not the most straightforward way to do that.</p><p>Best Regards,<br>Piot=
r Krysik</p>

--b1_PafzuSD4XSAzjCTC0oW3mddujj5SAVju5FSjBlP9zIM--

--===============5618718297447014113==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5618718297447014113==--
