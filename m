Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 57560A36662
	for <lists+usrp-users@lfdr.de>; Fri, 14 Feb 2025 20:45:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E9E72385CFD
	for <lists+usrp-users@lfdr.de>; Fri, 14 Feb 2025 14:45:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739562330; bh=dUH567R1c/QPplaf8x2M+ak8K1oXcl6aovhmPzBqfqg=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=clVB44xLGnwEqz9cLOtYHMUOj7qfnHukq1nllUECuObPsafFk0wSWiDxXkZM5Mkpt
	 bRyRyskW1lFPS3CwKVS1vJ6wUzU0gBQWWq8JWQXhw36njTT5UrxN/qysET5oFYLcW8
	 RQYAASZqIueqBh/gw7B876EFpzhYAZQ/HE76peZz/IwliOqPB6QherO5CAC/t7NlBm
	 PnNLWb6B/ExsWq7Mf/8fYz0tWeKqdX9931zysQg9WjSzLAje3yG0J+g3cUVvsnFyaR
	 miz1iuVpdnXUqzoUKCQh7AEL1oNmnazI3LTOrkBKxwl0veeCejN8hPVGM2xtQuRbMK
	 0r1/MLsm4TcSQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 12B56385C11
	for <usrp-users@lists.ettus.com>; Fri, 14 Feb 2025 14:44:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739562281; bh=9gVyxaVf928UjV4/IzUel5SJMUjNKjKNc1BH4/zs1sc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=zzRiIGJKLmgEVCIyZ8fE7LR/lsXIEsjV+x5x+hEjzFMxpepwrLDTTFHnAygtBkPA+
	 yJEQ0ESVVQ4iwxRZtX/5QyO+yDRXEEWc4HDHVZ8whalNEiXtquZ2nE0pxz89B2z30h
	 B+PSCNw0wmto2xHSkZfcdOujxd7VPp6M5wt43ZrH+Y7colwJiPqBLw7jTycJWFEQNb
	 Wkyxdc+ISCh0PR61g7wYR1nWfc+0PnVzCI+ncULo5G5orCylV3M7U3rcSB/fmx4ASt
	 vIstdKGOfGLChKAjcbjuFYpT9MLbZv9lZdXT/RUnvjgCnjV2VPEtg3lvs1cBsiG950
	 Nzi72dTmpZ6EA==
Date: Fri, 14 Feb 2025 19:44:41 +0000
To: usrp-users@lists.ettus.com
From: dhpanchaai@gmail.com
Message-ID: <ctfvoAdubEoBmdAhw3jUOZ4EPLNeSHY5VFUu8fQezc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: FDTrRNxbTm47npzk0fHYOTcayhuiKC1GzrqOmIsL25A@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: O2Q3VT7XSDZFYIXAI7KRMNOQ47MGSNT7
X-Message-ID-Hash: O2Q3VT7XSDZFYIXAI7KRMNOQ47MGSNT7
X-MailFrom: dhpanchaai@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Build custom fpga image for x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O2Q3VT7XSDZFYIXAI7KRMNOQ47MGSNT7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3937789350618590273=="

This is a multi-part message in MIME format.

--===============3937789350618590273==
Content-Type: multipart/alternative;
 boundary="b1_ctfvoAdubEoBmdAhw3jUOZ4EPLNeSHY5VFUu8fQezc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ctfvoAdubEoBmdAhw3jUOZ4EPLNeSHY5VFUu8fQezc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

That worked for me. Thank you. However, I=E2=80=99m running into error at=
 the end when its generating the bitstream:=20

\[01:49:04\] Starting Write Bitstream Command\
ERROR: \[Common 17-69\] Command failed: This design contains one or more =
cells for which bitstream generation is not permitted:\
\[01:49:12\] Current task: Write Bitstream +++ Current Phase: Starting\
\[01:49:13\] Current task: Write Bitstream +++ Current Phase: Finished\
\[01:49:13\] Process terminated. Status: Failure

Is this a licensing issue? I=E2=80=99m using the nodelocked trial license=
 for Vivado_ML_Enterprise_Edition. Is there any other license I would nee=
d to download to generate the bitstream?

--b1_ctfvoAdubEoBmdAhw3jUOZ4EPLNeSHY5VFUu8fQezc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>That worked for me. Thank you. However, I=E2=80=99m running into error=
 at the end when its generating the bitstream: </p><p>[01:49:04] Starting=
 Write Bitstream Command<br>ERROR: [Common 17-69] Command failed: This de=
sign contains one or more cells for which bitstream generation is not per=
mitted:<br>[01:49:12] Current task: Write Bitstream +++ Current Phase: St=
arting<br>[01:49:13] Current task: Write Bitstream +++ Current Phase: Fin=
ished<br>[01:49:13] Process terminated. Status: Failure</p><p>Is this a l=
icensing issue? I=E2=80=99m using the nodelocked trial license for Vivado=
_ML_Enterprise_Edition. Is there any other license I would need to downlo=
ad to generate the bitstream?</p>


--b1_ctfvoAdubEoBmdAhw3jUOZ4EPLNeSHY5VFUu8fQezc--

--===============3937789350618590273==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3937789350618590273==--
