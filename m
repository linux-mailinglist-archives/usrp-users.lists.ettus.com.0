Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4AD5BED29
	for <lists+usrp-users@lfdr.de>; Tue, 20 Sep 2022 20:51:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3F674384003
	for <lists+usrp-users@lfdr.de>; Tue, 20 Sep 2022 14:51:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663699882; bh=pwSXxLMiCje1wqki6+/oXv0ESRuUS5E7Uha6htEJbTM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ijejVKYNyPJWr6RDqtdfEHokF+XjEUDdHprv3S/tawjAFAmP0Te0ia28a1N0Mu4KV
	 Se0MUmaLCKi+CDbcbFjoZhWmYJLaOn5uPD/U+INTLuVev4mG+xZIDH79uABb7NoEmo
	 zHTEOyyf4RZIpl91bzkoOt6vM0lwLvdc+BQ4X1KqA+LW+aIMgZBv87dQ0X8DbXO5NB
	 go1ojE/7aAamGL0oowIGoYeyoff8CE63Ah8WYgaPArsXVUOYhg/mCt3c/lSqbd3+QU
	 3cNbpCIdcdjbZsqlurIWvRrVrrJqDKuPhCjqaPAjxU5vHUquLwwqzOr1EZPixnVuz1
	 bTSw2RDlJscMg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C7364384003
	for <usrp-users@lists.ettus.com>; Tue, 20 Sep 2022 14:49:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663699774; bh=w2jfTP1uOfxlGtuk/sb/lBCvKWYB4RPcn3VJjati2AQ=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=aqZ6S4eBT45wPVSPMqnpacBNW1Qun5tE1+xFDaIoUmqQFuff3+MKVf6ay10K4GScK
	 wfpAPI/4Dk6WyzwQFAjHTRD/8MA1vLyz8nEZlOfajBB3SskWVJwziBqJCjK5e0fM2W
	 kkK9QqDd8owJ39aNxtxMbWOKZkHfrMUbU0oYxcvHjxoOlvmcrRg3wB3m0zl7V0cADJ
	 cCmNbT6nSTnWjVXrHus9v00kb6Vr1RaLTv9X+W9o1F/DEtMi+TarHkVvf4L2jb8K7J
	 CvHzgpTL9oq0fDD/wvuvahoxkM8370WND1buQU961K4Nq1WzR2SYrA3NuFtXTUkRsC
	 WCynFGNKua8cw==
Date: Tue, 20 Sep 2022 18:49:34 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <rPXD4EuEfQO3iG9VPkr0EPGARSnSiC5yf0xwgeiPwU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 97625c6b-2b8b-61b6-290d-b572828b4462@gmail.com
MIME-Version: 1.0
Message-ID-Hash: UYTFXMU2TRO73VWLY5Z5G7LDBXR6QNTC
X-Message-ID-Hash: UYTFXMU2TRO73VWLY5Z5G7LDBXR6QNTC
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: set_command_time() question
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UYTFXMU2TRO73VWLY5Z5G7LDBXR6QNTC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7165787109883454795=="

This is a multi-part message in MIME format.

--===============7165787109883454795==
Content-Type: multipart/alternative;
 boundary="b1_rPXD4EuEfQO3iG9VPkr0EPGARSnSiC5yf0xwgeiPwU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_rPXD4EuEfQO3iG9VPkr0EPGARSnSiC5yf0xwgeiPwU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99m using a UBX-160 daughtercard. I=E2=80=99m also not tuning the=
 RF frequency, only the dsp frequency. I=E2=80=99ve managed to get Linux =
to keep up well enough it seems through thread pinning.

I have one remaining question. Is there a method for issuing set_command_=
time() to an individual daughterboard (say only the A side of the USRP), =
or does it have to be for the entire system?

--b1_rPXD4EuEfQO3iG9VPkr0EPGARSnSiC5yf0xwgeiPwU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I=E2=80=99m using a UBX-160 daughtercard. I=E2=80=99m also not tuning =
the RF frequency, only the dsp frequency. I=E2=80=99ve managed to get Lin=
ux to keep up well enough it seems through thread pinning.</p><p><br></p>=
<p>I have one remaining question. Is there a method for issuing set_comma=
nd_time() to an individual daughterboard (say only the A side of the USRP=
), or does it have to be for the entire system?</p><p><br></p><p><br></p>


--b1_rPXD4EuEfQO3iG9VPkr0EPGARSnSiC5yf0xwgeiPwU--

--===============7165787109883454795==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7165787109883454795==--
