Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2867EB24269
	for <lists+usrp-users@lfdr.de>; Wed, 13 Aug 2025 09:18:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D6AFC38665E
	for <lists+usrp-users@lfdr.de>; Wed, 13 Aug 2025 03:18:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755069518; bh=RFBdot8pCVEi67p09pio5YM2POKuFFHQ3+L/KTCXrFs=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ngsjDPzaNdI79sf9y4CRrU2J+St1dK4U1dq78X8EAElJXAFKh+ZKXgBEKnsCUPkoI
	 LvywKNwpVdkU0nB2bbsm7jIoLaTTXWe1nNwAyGQ61kojEU40vOC5JMHsxZEVe717B6
	 1U9499Ka5uVOr7kHmpKd06f2E5LrvvSz+kmVFcYtRxMSGa5t4UEkHYLO3ZzSWKOcQG
	 xvzBFUDTHc0AuS9KcZNAJ7mX7WXFqWWK778FeJBC3vI2s7I0TiuVnuppu1gB+Yk7u3
	 Tnt1vKP3qD8NM1UHbw/RSj5GV+YKa3P3/cSOfJm5ZufsMvrS3XtIwcUSWXp8SkQzWa
	 3SUYI8M+HZjwA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 21CB2386431
	for <usrp-users@lists.ettus.com>; Wed, 13 Aug 2025 03:17:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755069472; bh=Lr1rCjvIfjhhl5FvEfI3Yg7MIwb3WuKqmVqklsAOzi0=;
	h=Date:To:From:Subject:From;
	b=eKqSaVU50wP2l7H1cQrZ5IgQm1DH5IoeCfZ65ZSglfsgpE63XRvRsBwNQnd0WJtaC
	 u5+cIWD3ddCKW4ksFXvJucvnkRvXP5I/bj3jPwvDEVFOeqmY/7iCfUxopSYsesMPmw
	 mAkO+ELiicOUlHQGx02o3PKIpM/754Gp3vqKfYlCUWQFVUE7V0EETh0D/y459oXy0D
	 thsx7wZnToAk76sPaF7rPbsftlxgbVdvWVAkT5ztPSCZhKsD7Z3a6oD9qeuNtHBqFj
	 XR4Ye75SjtR9mWPlCmnlOBZ+CtHI91oSXRsJTLsxSBSN2QHd9NVYI739dOKn5ODJpq
	 FDJlTCs/I1iYg==
Date: Wed, 13 Aug 2025 07:17:52 +0000
To: usrp-users@lists.ettus.com
From: 285270@mail.muni.cz
Message-ID: <ONRZzpRpu8HUVXp6L06tdW7oGg1kRiDVrgb82K0R35s@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: SHA4QOO7QSWOQRMW57TYAUZEX4Z7AP4I
X-Message-ID-Hash: SHA4QOO7QSWOQRMW57TYAUZEX4Z7AP4I
X-MailFrom: 285270@mail.muni.cz
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] rfnoc block gain option IN_TREE_IP
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SHA4QOO7QSWOQRMW57TYAUZEX4Z7AP4I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1536190913909094238=="

This is a multi-part message in MIME format.

--===============1536190913909094238==
Content-Type: multipart/alternative;
 boundary="b1_ONRZzpRpu8HUVXp6L06tdW7oGg1kRiDVrgb82K0R35s"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ONRZzpRpu8HUVXp6L06tdW7oGg1kRiDVrgb82K0R35s
Content-Type: text/plain; charset=us-ascii

Hi,

I tried to build image for x310 with rfnoc block gain. In case of default parameter IP_OPTION "HDL_IP" everything went ok, but when I changed in second trial parameter IP_OPTION to "IN_TREE_IP", it led to this error:

ERROR: \[Route 35-9\] Router encountered a fatal exception of type 'N2rt13HDRTExceptionE' - 'Trying to tool lock on already tool locked arc

ERROR: \[Common 17-39\] 'route_design' failed due to earlier errors.

\[00:40:17\] Current task: Routing +++ Current Phase: 13.4.1 Update Timing

\[00:40:17\] Current task: Routing +++ Current Phase: Finished

\[00:40:17\] Process terminated. Status: Failure

========================================================

Warnings:           1100

Critical Warnings:  68

Errors:             2

make\[5\]: \*\*\* \[Makefile.x300.inc:129: bin\] Error 1

make\[4\]: \*\*\* \[Makefile:135: X310_HG\] Error 2

Build finished with return code 512.

It was launched with the following settings:

 \* FPGA Directory: /home/oper/inst/uhd-UHD-4.8/fpga/usrp3/top/x300

 \* Build Artifacts Directory: /home/oper/rfnoc-gain/build/build-x310_rfnoc_image_core

 \* Build Output Directory: /home/oper/rfnoc-gain/build

 \* Build IP Directory: /home/oper/rfnoc-gain/build/build-ip

make\[3\]: \*\*\* \[icores/CMakeFiles/x310_rfnoc_image_core.dir/build.make:70: icores/CMakeFiles/x310_rfnoc_image_core\] Error 255

make\[2\]: \*\*\* \[CMakeFiles/Makefile2:354: icores/CMakeFiles/x310_rfnoc_image_core.dir/all\] Error 2

make\[1\]: \*\*\* \[CMakeFiles/Makefile2:361: icores/CMakeFiles/x310_rfnoc_image_core.dir/rule\] Error 2

make: \*\*\* \[Makefile:208: x310_rfnoc_image_core\] Error 2 

I'll appreciate any advice how to solve it.

\-Ludek

--b1_ONRZzpRpu8HUVXp6L06tdW7oGg1kRiDVrgb82K0R35s
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>I tried to build image for x310 with rfnoc block gain. In case=
 of default parameter IP_OPTION "HDL_IP" everything went ok, but when I cha=
nged in second trial parameter IP_OPTION to "IN_TREE_IP", it led to this er=
ror:</p><p>ERROR: [Route 35-9] Router encountered a fatal exception of type=
 'N2rt13HDRTExceptionE' - 'Trying to tool lock on already tool locked arc</=
p><p>ERROR: [Common 17-39] 'route_design' failed due to earlier errors.</p>=
<p>[00:40:17] Current task: Routing +++ Current Phase: 13.4.1 Update Timing=
</p><p>[00:40:17] Current task: Routing +++ Current Phase: Finished</p><p>[=
00:40:17] Process terminated. Status: Failure</p><p>=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p=
><p>Warnings:           1100</p><p>Critical Warnings:  68</p><p>Errors:    =
         2</p><p>make[5]: *** [Makefile.x300.inc:129: bin] Error 1</p><p>ma=
ke[4]: *** [Makefile:135: X310_HG] Error 2</p><p>Build finished with return=
 code 512.</p><p>It was launched with the following settings:</p><p> * FPGA=
 Directory: /home/oper/inst/uhd-UHD-4.8/fpga/usrp3/top/x300</p><p> * Build =
Artifacts Directory: /home/oper/rfnoc-gain/build/build-x310_rfnoc_image_cor=
e</p><p> * Build Output Directory: /home/oper/rfnoc-gain/build</p><p> * Bui=
ld IP Directory: /home/oper/rfnoc-gain/build/build-ip</p><p>make[3]: *** [i=
cores/CMakeFiles/x310_rfnoc_image_core.dir/build.make:70: icores/CMakeFiles=
/x310_rfnoc_image_core] Error 255</p><p>make[2]: *** [CMakeFiles/Makefile2:=
354: icores/CMakeFiles/x310_rfnoc_image_core.dir/all] Error 2</p><p>make[1]=
: *** [CMakeFiles/Makefile2:361: icores/CMakeFiles/x310_rfnoc_image_core.di=
r/rule] Error 2</p><p>make: *** [Makefile:208: x310_rfnoc_image_core] Error=
 2 </p><p>I'll appreciate any advice how to solve it.</p><p>-Ludek</p>

--b1_ONRZzpRpu8HUVXp6L06tdW7oGg1kRiDVrgb82K0R35s--

--===============1536190913909094238==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1536190913909094238==--
