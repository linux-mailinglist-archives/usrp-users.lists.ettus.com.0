Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C55640E44D
	for <lists+usrp-users@lfdr.de>; Thu, 16 Sep 2021 19:23:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CFFDE384B8E
	for <lists+usrp-users@lfdr.de>; Thu, 16 Sep 2021 13:23:52 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0377D3843B6
	for <usrp-users@lists.ettus.com>; Thu, 16 Sep 2021 13:23:02 -0400 (EDT)
Date: Thu, 16 Sep 2021 17:23:02 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <tJVYPT2ujlItsctGnpS20Bowmr4IbLmcGPzK7dF7E@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: FOSXNRYDYGFP7PSOW5G4CXJCOQXJIEWQ
X-Message-ID-Hash: FOSXNRYDYGFP7PSOW5G4CXJCOQXJIEWQ
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Building MPM, UHD 4.1 for E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FOSXNRYDYGFP7PSOW5G4CXJCOQXJIEWQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6788808679070277545=="

This is a multi-part message in MIME format.

--===============6788808679070277545==
Content-Type: multipart/alternative;
 boundary="b1_tJVYPT2ujlItsctGnpS20Bowmr4IbLmcGPzK7dF7E"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_tJVYPT2ujlItsctGnpS20Bowmr4IbLmcGPzK7dF7E
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99m attempting to upgrade my UHD driver on my E320 to 4.1.0.2. UH=
D compilation went fine, but when trying to use it, I got timeout errors.=
 I read in another thread that MPM also needs to be built. So I did that,=
 thinking I=E2=80=99m enabling E320 support:

cmake -DCMAKE_INSTALL_PREFIX=3D/usr -DENABLE_E320=3DON -DMPM_DEVICE=3De32=
0 ..

=E2=80=A6..

=E2=80=94 Building for device: e320

But, it appears to keep building for the n3xx. This is confirmed when I l=
oad it to my device, and it fails to start because x4xx_periphs.py can=E2=
=80=99t find the gpiod module. It also keeps building n3xx_bist instead o=
f e320_bist. Is this a bug or am I using the wrong cmake flags?

--b1_tJVYPT2ujlItsctGnpS20Bowmr4IbLmcGPzK7dF7E
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I=E2=80=99m attempting to upgrade my UHD driver on my E320 to 4.1.0.2.=
 UHD compilation went fine, but when trying to use it, I got timeout erro=
rs. I read in another thread that MPM also needs to be built. So I did th=
at, thinking I=E2=80=99m enabling E320 support:</p><p>cmake -DCMAKE_INSTA=
LL_PREFIX=3D/usr -DENABLE_E320=3DON -DMPM_DEVICE=3De320 ..</p><p>=E2=80=A6=
..</p><p>=E2=80=94 Building for device: e320</p><p><br></p><p>But, it app=
ears to keep building for the n3xx. This is confirmed when I load it to m=
y device, and it fails to start because x4xx_periphs.py can=E2=80=99t fin=
d the gpiod module. It also keeps building n3xx_bist instead of e320_bist=
. Is this a bug or am I using the wrong cmake flags?</p><p><br></p>


--b1_tJVYPT2ujlItsctGnpS20Bowmr4IbLmcGPzK7dF7E--

--===============6788808679070277545==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6788808679070277545==--
