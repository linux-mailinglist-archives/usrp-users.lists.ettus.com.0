Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE2E3AB372
	for <lists+usrp-users@lfdr.de>; Thu, 17 Jun 2021 14:22:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1F0E9384471
	for <lists+usrp-users@lfdr.de>; Thu, 17 Jun 2021 08:22:36 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 957D0383F07
	for <usrp-users@lists.ettus.com>; Thu, 17 Jun 2021 08:21:44 -0400 (EDT)
Date: Thu, 17 Jun 2021 12:21:44 +0000
To: usrp-users@lists.ettus.com
From: paradis@kwesst.com
Message-ID: <SG7njKcub2AkVItwPUyTDMImoSUIF8HGbTOKHXHo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: F5B2665E-A971-4E4E-9979-90250859F723@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 7AUDJGT7ALZ5DNNTWYJLHUA6GAWHWOB3
X-Message-ID-Hash: 7AUDJGT7ALZ5DNNTWYJLHUA6GAWHWOB3
X-MailFrom: paradis@kwesst.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: is there a UHD v4.0.0.0 for Ubuntu 20.04 LTS?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7AUDJGT7ALZ5DNNTWYJLHUA6GAWHWOB3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8768974559903043674=="

This is a multi-part message in MIME format.

--===============8768974559903043674==
Content-Type: multipart/alternative;
 boundary="b1_SG7njKcub2AkVItwPUyTDMImoSUIF8HGbTOKHXHo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_SG7njKcub2AkVItwPUyTDMImoSUIF8HGbTOKHXHo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks for the help everyone. I=E2=80=99m still trying to build the UHD v=
4.0.0.0 on the SBC but it keeps dying at about 28%. I feel like it might =
be a storage and/or ram/memory issue. It=E2=80=99s a Newport GW6200 with =
1GB of RAM, but after installing Ubuntu and all the depencies for UHD and=
 clone the UHD repo, there=E2=80=99s only about 20% disk space left.

I=E2=80=99ll take a look at the bitbake stuff, but I don=E2=80=99t know i=
f that will help me right now, since I need this up and running by tomorr=
ow at the latest, otherwise there=E2=80=99s no point.

I had two different SBCs running builds overnight, and the build both fai=
led at the same spot: Trying to build =E2=80=98magnesium_radio_contro.ccp=
.o=E2=80=99 I get this error:

c++: fatal error: Killed signal terminated program cc1plus

compilation terminated.

make\[2\]: \*\*\* \[lib/CMakeFiles/uhd.dir/build.make:2010: lib/CMakeFile=
s/uhd.dir/usrp/dboard/magnesium/magnesium_radio_control.cpp.o\] Error 1

make\[1\]: \*\*\* \[CMakeFiles/Makefile2:961: lib/CMakeFiles/uhd.dir/all\=
] Error 2

make: \*\*\* \[Makefile:163: all\] Error 2

Does anyone know what the error or problem could be with that file?

--b1_SG7njKcub2AkVItwPUyTDMImoSUIF8HGbTOKHXHo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thanks for the help everyone. I=E2=80=99m still trying to build the UHD =
v4.0.0.0 on the SBC but it keeps dying at about 28%. I feel like it might b=
e a storage and/or ram/memory issue. It=E2=80=99s a Newport GW6200 with 1GB=
 of RAM, but after installing Ubuntu and all the depencies for UHD and clon=
e the UHD repo, there=E2=80=99s only about 20% disk space left.</p><p>I=
=E2=80=99ll take a look at the bitbake stuff, but I don=E2=80=99t know if t=
hat will help me right now, since I need this up and running by tomorrow at=
 the latest, otherwise there=E2=80=99s no point.</p><p>I had two different =
SBCs running builds overnight, and the build both failed at the same spot: =
Trying to build =E2=80=98magnesium_radio_contro.ccp.o=E2=80=99 I get this e=
rror:</p><p>c++: fatal error: Killed signal terminated program cc1plus</p><=
p>compilation terminated.</p><p>make[2]: *** [lib/CMakeFiles/uhd.dir/build.=
make:2010: lib/CMakeFiles/uhd.dir/usrp/dboard/magnesium/magnesium_radio_con=
trol.cpp.o] Error 1</p><p>make[1]: *** [CMakeFiles/Makefile2:961: lib/CMake=
Files/uhd.dir/all] Error 2</p><p>make: *** [Makefile:163: all] Error 2</p><=
p><br></p><p>Does anyone know what the error or problem could be with that =
file?</p>

--b1_SG7njKcub2AkVItwPUyTDMImoSUIF8HGbTOKHXHo--

--===============8768974559903043674==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8768974559903043674==--
