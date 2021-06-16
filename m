Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B08253AA1F3
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 19:00:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A90B73848CE
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 13:00:07 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 855A6383D8E
	for <usrp-users@lists.ettus.com>; Wed, 16 Jun 2021 12:58:54 -0400 (EDT)
Date: Wed, 16 Jun 2021 16:58:54 +0000
To: usrp-users@lists.ettus.com
From: paradis@kwesst.com
Message-ID: <NtjmANHyQsfQc4DmyHKy3d3WOM83De97HMnMg2BxQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 27LLPAIQFMQDVPADZQ5TYGEVON2GJ55A
X-Message-ID-Hash: 27LLPAIQFMQDVPADZQ5TYGEVON2GJ55A
X-MailFrom: paradis@kwesst.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] is there a UHD v4.0.0.0 for Ubuntu 20.04 LTS?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/27LLPAIQFMQDVPADZQ5TYGEVON2GJ55A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8029799980281073968=="

This is a multi-part message in MIME format.

--===============8029799980281073968==
Content-Type: multipart/alternative;
 boundary="b1_NtjmANHyQsfQc4DmyHKy3d3WOM83De97HMnMg2BxQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_NtjmANHyQsfQc4DmyHKy3d3WOM83De97HMnMg2BxQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi everyone,=20

In ubuntu=E2=80=99s package manager, the latest version of UHD is 3.15.

For background, I=E2=80=99m running a laptop with Ubuntu 20.04 LTS, and b=
uild UHD v4.0.0.0 from source and everything works find with my B210s.

Now I=E2=80=99m trying to migrate to a Single-Board Computer, which is al=
so running Ubuntu 20.04 LTS, and build UHD from source isn=E2=80=99t real=
ly feasible.

I tried following the instructions here:

<https://files.ettus.com/manual/page_install.html#install_linux>

To install from binaries, but it keeps giving an error about "libuhd003 p=
ackage not found", and when it installs libuhd-dev, it's installing the 3=
.15 versions, not the 4.0 versions.

I'm kind of dead in the water until I can get the UHD v4.0.0.0 on this SB=
C, but other than building from source there doesn't seem to be any way o=
f doing it, is that correct?

Also, I tried just copying the uhd libs from my laptop to the SBC, but wh=
en I try to build and link my app, it says the libuhd.so is not compatibl=
e and fails.

Any help or information would be appreciated, thanks!

--b1_NtjmANHyQsfQc4DmyHKy3d3WOM83De97HMnMg2BxQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi everyone, </p><p>In ubuntu=E2=80=99s package manager, the latest vers=
ion of UHD is 3.15.</p><p>For background, I=E2=80=99m running a laptop with=
 Ubuntu 20.04 LTS, and build UHD v4.0.0.0 from source and everything works =
find with my B210s.</p><p>Now I=E2=80=99m trying to migrate to a Single-Boa=
rd Computer, which is also running Ubuntu 20.04 LTS, and build UHD from sou=
rce isn=E2=80=99t really feasible.</p><p>I tried following the instructions=
 here:</p><p><a href=3D"https://files.ettus.com/manual/page_install.html#in=
stall_linux">https://files.ettus.com/manual/page_install.html#install_linux=
</a></p><p>To install from binaries, but it keeps giving an error about "li=
buhd003 package not found", and when it installs libuhd-dev, it's installin=
g the 3.15 versions, not the 4.0 versions.</p><p>I'm kind of dead in the wa=
ter until I can get the UHD v4.0.0.0 on this SBC, but other than building f=
rom source there doesn't seem to be any way of doing it, is that correct?</=
p><p>Also, I tried just copying the uhd libs from my laptop to the SBC, but=
 when I try to build and link my app, it says the libuhd.so is not compatib=
le and fails.</p><p>Any help or information would be appreciated, thanks!</=
p>

--b1_NtjmANHyQsfQc4DmyHKy3d3WOM83De97HMnMg2BxQ--

--===============8029799980281073968==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8029799980281073968==--
