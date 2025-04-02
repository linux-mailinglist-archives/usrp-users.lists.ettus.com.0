Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B097A789C1
	for <lists+usrp-users@lfdr.de>; Wed,  2 Apr 2025 10:25:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 561F1385672
	for <lists+usrp-users@lfdr.de>; Wed,  2 Apr 2025 04:25:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743582348; bh=owMvioK2E0nWWZokREZ6Iajy4MtiYLy/9YXBiphCGmc=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=WlFaDF7gWxFpJJquNKivF97sBnNfB07lGwI2SnYlLj5NvrXikM1iFgt8E2c/bS0kq
	 u3HplYINsEb+KrVPtsSLwUSWVRLBLOtBzYpgXAS+KR7qjmCRMgx1Of1uz4BAyppcxR
	 SzBNZ1L//SJ2NMYDFCB8L7qsFJzrr3Zuc7zsxowJIkqtRhNI5JYEXSgPw1rt8GBkP3
	 3VI9k4zDGO/CTZ8muCr7/z9ILOA3kxe95EZFhwRUBuFAgZqJU0O4a2cnLBlAAO9J5I
	 d2nQ6/25R5E6+lOsPc60L4e3xf+9ulPE9zhODdrC0V1+X2tZksnaaZXNtzcbKTNOa3
	 ljiWwbLTxFnRg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1662D385672
	for <usrp-users@lists.ettus.com>; Wed,  2 Apr 2025 04:24:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743582293; bh=FULGzA6xewm6aVhSBUacAe8dsh+LS6eKJJioN8z5oVI=;
	h=Date:To:From:Subject:From;
	b=sYpInB0OtAEXq25R5YGVlcI3ihcfebSrsRZrTKEm46MAPUcB20jgH9Eoo53sTAL41
	 hkpYeT3zwZl6c5YYAuLibAAU7Ds+tf0yOCNS71hC2juQJOz3zeOi6TWRP3K7JCdVSr
	 67uudxlWt0Q/7yXd+5JFYn926cmMDUOWnG0sYuzj7f4WeVDZ4GVQNAi9bWCkX+R0aM
	 9mSfxj/9PeGb6S0VA3ziKgQfdvrPRWOtH9pR/jrYTzm13EaTcR+l3+AgwyJD2WYPDX
	 0WptcbI4p70SXh1a2Lw8lvyPPIMC4Js5QVqvfCg18iJrKSAz4mXZau+/c8mvzeGpr/
	 AynoChlD318Lw==
Date: Wed, 2 Apr 2025 08:24:53 +0000
To: usrp-users@lists.ettus.com
From: carmixdev@gmail.com
Message-ID: <PccxjLen4LJ6M3b31VIx3pt6bBpsg4pHOxYUeeeqA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: W7PW7BLVQNEB3UCYQRMUI3BWHWWOS2FT
X-Message-ID-Hash: W7PW7BLVQNEB3UCYQRMUI3BWHWWOS2FT
X-MailFrom: carmixdev@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Monitor X310 health status
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W7PW7BLVQNEB3UCYQRMUI3BWHWWOS2FT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3876077000067919079=="

This is a multi-part message in MIME format.

--===============3876077000067919079==
Content-Type: multipart/alternative;
 boundary="b1_PccxjLen4LJ6M3b31VIx3pt6bBpsg4pHOxYUeeeqA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_PccxjLen4LJ6M3b31VIx3pt6bBpsg4pHOxYUeeeqA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi, I would like to monitor the X310 radio health status, like temperatur=
e, fan speed etc=E2=80=A6

Is there any UHD API or command that allows me to get these parameters?

--b1_PccxjLen4LJ6M3b31VIx3pt6bBpsg4pHOxYUeeeqA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi, I would like to monitor the X310 radio health status, like tempera=
ture, fan speed etc=E2=80=A6</p><p>Is there any UHD API or command that a=
llows me to get these parameters?</p><p><br></p><p><br></p>


--b1_PccxjLen4LJ6M3b31VIx3pt6bBpsg4pHOxYUeeeqA--

--===============3876077000067919079==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3876077000067919079==--
