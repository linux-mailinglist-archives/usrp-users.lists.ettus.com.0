Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EE084C03B
	for <lists+usrp-users@lfdr.de>; Tue,  6 Feb 2024 23:50:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C97BA385035
	for <lists+usrp-users@lfdr.de>; Tue,  6 Feb 2024 17:50:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707259857; bh=CBPTy3qz997WLKycPmjoVEhc4HdM4bWMttExmWxIx5Y=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=GkeX7YAINh7T2NcIx1gKDEFGSnXOF+6Q0JHFYq3wH2P2w6/+NBVZOVyQ1Wag/+ua6
	 F/9JTxVLbOA3I+mfbvPY8iS/kSWGJfd5I0Qn0w7sNnCAJt5+YlADfW10mX84SFxi+Q
	 B8wURCo7H2EJuTwSaW2zlCiiAY0gVvDssFpmgvklIMeXhObg3Gkg5D6bJxFIURsUcN
	 Rv/QqyEXla4XnDuM+zBZOgvY9jRmQfolaVeE0oijEKtJQUyIjX722crEjJNCAmOn0B
	 lZd62UPyc5jp4E3oxqDNepeT1MfqvfaKPCCa6t6hzbIHA4dUa/T8jM8WV/EQjW/CLY
	 n6wvw8E7qty+Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C1880384E80
	for <usrp-users@lists.ettus.com>; Tue,  6 Feb 2024 17:50:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707259845; bh=AIFSXodQmKv8xvFbip9DhxF1XHuQqqeADk75IZkZxxE=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=jOWhHV8PWQ2RcuTSi6/X7u2iIviConw5MbaFCK9/WxRf9nnujswJVdI5yDcJyC6gY
	 5W2V1J3w+fC4mWzysIAPtxk8X/g4Kgl8eRLgUETd8SUG+C0u7MKWeDSexECefhawBS
	 Mogh4nbG+och0r84lMjm89sTnssGMmTGCWIGjsBm94EIT2ErKc9Hg8Z65amuk524dC
	 EvMk5F0KOTPuEpgW1p3APuQsLAUh8l0lvlyH/ZexkyLJFYjCY79rkVHMuKQJolF7Oi
	 AxUWgBTgmefa7KJNvqXL62abA0rX/TXqucPpV3e/yl7TPKJ95sPx3NyQ77lzEJmwV1
	 iYKsGL713IUxA==
Date: Tue, 6 Feb 2024 22:50:45 +0000
To: usrp-users@lists.ettus.com
From: zackkomo@utexas.edu
Message-ID: <nhhrO4yTCt4uU7nbXCpKfX4P1iSsXnboub5CsnrmIA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTSBp1qfHpGLTd4RgYsk_Tp8qHF3F5-suChDfW+rJTh4xQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: TZ7NXS6AUP7N3ZCW2QYEKHNS6LVLXVF6
X-Message-ID-Hash: TZ7NXS6AUP7N3ZCW2QYEKHNS6LVLXVF6
X-MailFrom: zackkomo@utexas.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Align multi-channel captures with different rx_stremers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TZ7NXS6AUP7N3ZCW2QYEKHNS6LVLXVF6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3222140316885980786=="

This is a multi-part message in MIME format.

--===============3222140316885980786==
Content-Type: multipart/alternative;
 boundary="b1_nhhrO4yTCt4uU7nbXCpKfX4P1iSsXnboub5CsnrmIA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_nhhrO4yTCt4uU7nbXCpKfX4P1iSsXnboub5CsnrmIA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

It=E2=80=99s an estimated difference using a GPS SDR I have access to, no=
t the timestamps in the metadata.\
\
I just tired choosing different sampling rates, it seems like when I use =
pairs of sampling rates corresponding to odd divisions of the master cloc=
k rate, it works fine. Similarly when I choose even pairs. Choosing a sam=
pling rates corresponding to odd and even though causes a mismatch.

--b1_nhhrO4yTCt4uU7nbXCpKfX4P1iSsXnboub5CsnrmIA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>It=E2=80=99s an estimated difference using a GPS SDR I have access to,=
 not the timestamps in the metadata.<br><br>I just tired choosing differe=
nt sampling rates, it seems like when I use pairs of sampling rates corre=
sponding to odd divisions of the master clock rate, it works fine. Simila=
rly when I choose even pairs. Choosing a sampling rates corresponding to =
odd and even though causes a mismatch. </p>


--b1_nhhrO4yTCt4uU7nbXCpKfX4P1iSsXnboub5CsnrmIA--

--===============3222140316885980786==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3222140316885980786==--
