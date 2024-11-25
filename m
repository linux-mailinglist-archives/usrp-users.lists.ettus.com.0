Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 930259D8526
	for <lists+usrp-users@lfdr.de>; Mon, 25 Nov 2024 13:13:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 42367385CE7
	for <lists+usrp-users@lfdr.de>; Mon, 25 Nov 2024 07:12:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732536764; bh=1W7bf/TNSjw/xFLGxZq4J2O+PRtA7KBrXzRzGzZdqyU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=pcf7EyiZJUjX+MUM9HBzkoBLUzH6iE0n/DBRnVGxZqoaStPTOF5EuvtUwIfBufqwu
	 b89P0GRZ9yJSbwYBhJCj3bDzliZXulfQRMaBqerBPhNGwj0BcIsQlRfRSoQv3zu1iL
	 ALEZntW9V3ADELrwY+dc8a8g7MAunTWHzwkYZuI14PzczgN7Apb4ERi/WAIyN7XblN
	 s0AR7t53JzX42bPfuRxx2oQGgT4mxPo6a26eDywWwJjy1dzUUIsCn4VJdEvp5CepMs
	 TLRuRwmCkHkKzV4x4KSnk+L2lTCNTBpLXj4JteMq330H93UbcXenHK5x6fb4dezoy6
	 ohK/nSgfSrNWA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5ABA338523E
	for <usrp-users@lists.ettus.com>; Mon, 25 Nov 2024 07:12:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732536744; bh=ja0xXSDJsJv5k8oSRNoDYEkCaa9dqcM3bHrcKJXEkew=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=LYfiUMwnhh9McWUeG3ELSIgKt7dOK/7qZrq1jgCkPaW2Q4T2V43hOrENkHgZJB8d2
	 NZPug8y8Z5Sb8bzZKjBdY9J/nO/+FpfftOA3/a+edTLgBef6saY+C4tzX5PeIiaQEO
	 WT5PwOZz0lapUyBuYuD/w4Dy6OCZyJgNWWIgVAPr6BZy5cY52fb/Fi8G4A381asAyW
	 +atmXTC0U00KUjCui5raTs/pMmz+ZCsFRSUyhhtNsmSMZqVUW2oAFB48saJmrW1z26
	 ryyDt7BNsVhnmKSEIhHPWUXDZLnKC9zqkRHbWrI+fntgOqSaIDR9EfFisqTkNLgrkX
	 MZRekM2a3rrcQ==
Date: Mon, 25 Nov 2024 12:12:24 +0000
To: usrp-users@lists.ettus.com
From: yibindeng66@outlook.com
Message-ID: <uNhyXyxxNRdT2GUXZF6G8AGP1ssxTC2lNBS1SIGE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 38edf3d1-8e5f-4747-88b7-71dbac43dd03@gmail.com
MIME-Version: 1.0
Message-ID-Hash: SJXYOTR53EDQ2MBWGNW3VBRUFI4JF5PE
X-Message-ID-Hash: SJXYOTR53EDQ2MBWGNW3VBRUFI4JF5PE
X-MailFrom: yibindeng66@outlook.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Signal Distortion and Phase Issues with USRP B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SJXYOTR53EDQ2MBWGNW3VBRUFI4JF5PE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8852173924768990876=="

This is a multi-part message in MIME format.

--===============8852173924768990876==
Content-Type: multipart/alternative;
 boundary="b1_uNhyXyxxNRdT2GUXZF6G8AGP1ssxTC2lNBS1SIGE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_uNhyXyxxNRdT2GUXZF6G8AGP1ssxTC2lNBS1SIGE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I think I=E2=80=99ve found the problem. My data was of type `np.complex12=
8`, and perhaps the USRP only used part of it or treated one sample as tw=
o? When I changed the data type to `np.complex64`, the issue seemed to be=
 resolved. Thanks again for your help!

--b1_uNhyXyxxNRdT2GUXZF6G8AGP1ssxTC2lNBS1SIGE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I think I=E2=80=99ve found the problem. My data was of type <code>np.c=
omplex128</code>, and perhaps the USRP only used part of it or treated on=
e sample as two? When I changed the data type to <code>np.complex64</code=
>, the issue seemed to be resolved. Thanks again for your help!</p>


--b1_uNhyXyxxNRdT2GUXZF6G8AGP1ssxTC2lNBS1SIGE--

--===============8852173924768990876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8852173924768990876==--
