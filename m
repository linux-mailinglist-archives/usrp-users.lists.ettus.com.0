Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E04A78A079
	for <lists+usrp-users@lfdr.de>; Sun, 27 Aug 2023 19:20:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7AB5F384CD9
	for <lists+usrp-users@lfdr.de>; Sun, 27 Aug 2023 13:20:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693156821; bh=BeoHK1jjUOgvEBnbaKqPHOu1UzGCJZBv6onYBkDnhBc=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=omvlk9qi3CIQVmRnYWC+oDeb5hr+TvWJVFJBrfiRODIY9ehXn5Y2ynyR/ifyn5c4k
	 sCcySupng0w1l73cZ3T8ZtiIVCDL9nJSFLfeFfFagWi1ZffSWJJjXz1FC61S4UmXlm
	 5rfg1cs+CbI7enFYNVmq3A7ZfvlEHU6m9GkQXs5Tpb2IiuCrr+GsOuS6Ar/gp/jH3m
	 Jn3h/IiUwr1WPf5gr58zDtJ+gg81ezrZ+VVpgZGwds3r43/GWDpknA8Wg1u8F9/blf
	 EqojqPagcQK3nHbAEzdNoQJAVkxeDubPo6pqk9x1j2ySwbczbs8di2QahZa7LNSrG7
	 jnWxn+21Csgtw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D32023845B9
	for <usrp-users@lists.ettus.com>; Sun, 27 Aug 2023 13:19:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693156769; bh=KqL2yjpf9x+al60h1di1P7yczsSnKZvl2VPHuoJxpCw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=cCne+Pk6umENYYo1Tpk+rngSmPdc4S+qQr2vhFuEAB6M2gZ0puvFBO7hv0S+OE5Hr
	 ARZTK94bhYN9eaLIfDeOvbI8FkeecKmNGh6VCPmQE2cNLd6zNh6tTer0OHLn3scxSX
	 bdXHIxId0S/g+5rxzvKJl1+K/sYkLZSyMexA8Oa1YT/f/54wVAgyu7kR0Tq1j7vOfg
	 rA/LKxe2PvbVmB4ZYiBsrzmKTCyoh1oLJ2HkKnuTJ3307oqvzbcjkVPcDJ+jKOX61W
	 qGrSfmiee1qZWFptj0k5Kpe2WTiE2/oUjKrCbTV7f3XBZhNZkpmAx2w1/Eg4JiujEy
	 oCdaGqxB6Uitg==
Date: Sun, 27 Aug 2023 17:19:29 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <k8CufRcPP5NiNmSR3gB8a8wuD9nRWQ1Ad5Hdrpm9Ymc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=g=dox4p3UxbA+4As-cJCTrZtdkVvtQp70ZRqzmD_fh2A@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: GGDA52HU4ZBROTIREWDVREKCWQHZZTCI
X-Message-ID-Hash: GGDA52HU4ZBROTIREWDVREKCWQHZZTCI
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 FPGA build failure with UHD-4.4
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GGDA52HU4ZBROTIREWDVREKCWQHZZTCI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4272880737864613558=="

This is a multi-part message in MIME format.

--===============4272880737864613558==
Content-Type: multipart/alternative;
 boundary="b1_k8CufRcPP5NiNmSR3gB8a8wuD9nRWQ1Ad5Hdrpm9Ymc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_k8CufRcPP5NiNmSR3gB8a8wuD9nRWQ1Ad5Hdrpm9Ymc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Wade,

The key is that Ryan tried to run synthesis again via Vivado gui.\
From my experience this won=E2=80=99t work because some build parameters =
(like the mentioned macro definition) are passed together with synthesis =
command (synth_design).\
If there is another way to make it work other than running the synth_desi=
gn command with proper parameters manually - please tell how.

The project workflow with Vivado gui sometimes makes sense - i.e. when yo=
u want to experiment with modifications of block designs without having t=
o export them for each synthesis run.

I also remember now one way to obtain the command that I shown in the pre=
vious post: you can find it by looking for =E2=80=9CCommand: synth_design=
=E2=80=9C in build.log that is in build-X410_X4_200 directory.

Best Regards,\
Piotr Krysik

--b1_k8CufRcPP5NiNmSR3gB8a8wuD9nRWQ1Ad5Hdrpm9Ymc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello Wade,</p><p>The key is that Ryan tried to run synthesis again vi=
a Vivado gui.<br>From my experience this won=E2=80=99t work because some =
build parameters (like the mentioned macro definition) are passed togethe=
r with synthesis command (synth_design).<br>If there is another way to ma=
ke it work other than running the synth_design command with proper parame=
ters manually - please tell how.</p><p>The project workflow with Vivado g=
ui sometimes makes sense - i.e. when you want to experiment with modifica=
tions of block designs without having to export them for each synthesis r=
un.</p><p>I also remember now one way to obtain the command that I shown =
in the previous post: you can find it by looking for =E2=80=9CCommand: sy=
nth_design=E2=80=9C in build.log that is in build-X410_X4_200 directory.<=
/p><p>Best Regards,<br>Piotr Krysik</p>


--b1_k8CufRcPP5NiNmSR3gB8a8wuD9nRWQ1Ad5Hdrpm9Ymc--

--===============4272880737864613558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4272880737864613558==--
