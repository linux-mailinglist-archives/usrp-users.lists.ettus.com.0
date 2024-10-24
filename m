Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3199AE65F
	for <lists+usrp-users@lfdr.de>; Thu, 24 Oct 2024 15:29:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0A90A38097E
	for <lists+usrp-users@lfdr.de>; Thu, 24 Oct 2024 09:29:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729776584; bh=hxMRZqO5dRVU7x8EG19gnqoKFAIvG5K7fY3XD1ZbZHc=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=k7mKo0c06O71CD4E/W4nttBvSCQTiGtdsDYpOKoN7mCMzEI3lX5F3NdXPVvtZDPO6
	 pZ5b+Q+PGtpHFErWy8WUkkDQPWowHI3oK05Q6kj/e/OvqHC1qBgRifMj7CPiq0+Av8
	 WtPEeKZwxS6OWpAOjFL6trwXE0rdW2W++pTw4yicR2Zpxth18RfXNrp0Ve7sEM4riX
	 TtbL3jVFZ/dJoPqKDBA8vQyJStvM3ckqRVqboSbz+9wVcDubdzM95Z5aONRpbmOC/y
	 uF8X0fuKCA0VUe+Lxc2gH444wENynqshltzrurAj1oXSPUR+agHNaiLvCqNrOtdDCN
	 QAr2Osq+j7r6g==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id C04863854CB
	for <usrp-users@lists.ettus.com>; Thu, 24 Oct 2024 09:28:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BfA6xxsT";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-460c2418e37so5797951cf.0
        for <usrp-users@lists.ettus.com>; Thu, 24 Oct 2024 06:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729776526; x=1730381326; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1b0ID84mzGubVC5wvWebyE2edtN3ILuIYblANKmkxMI=;
        b=BfA6xxsTl35EkrVPA2k1+ntfuKFyiYInkeqwBI5lTwX/OsUjrWav2FGedsqbhzTcD/
         gWoOJ9GhUaVT08WGD4I5RczjAAy6OWQawTHi/a9E+l/By4XYodHZu8tM2rKYt9U/ZFns
         BLzPyVK5sMGVtq6a9QE5fQbuwUCkX6ZiOekSTnBFjjYyaD4BJVSUBOrGFfcPadG749E5
         cOg7eSyx3BvrOGV/oAes+7xz5AbEDZzR0UW88QjBvr+Xtxh8dXJg2/b3APbg+YTWjUV3
         TriVXj3tWtuB9kG7SnOd1ySjPkHU1voMlvyJhTZi9kldhcEwwZ8vr0Ymj18HCjXTPU0I
         qTqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729776526; x=1730381326;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1b0ID84mzGubVC5wvWebyE2edtN3ILuIYblANKmkxMI=;
        b=sNXazYg2uP4ZmfFBJyGQQN2PcnrnbCCjeA5jJTOUzRV1YYV8a8K1uJY/7Zvvocvkcp
         /0Cles+hU49rI3qtC0j7/bUOS0ytI3casDXBIUqpe6BwpoG05jZ8cZtNUEoIIs1/ocAD
         uwwpfH2XPhRumat8Z3G4ZtdKOAeSkyVp+Mife68cPNXOz1OZG2/h94jdQ0nKq4Gsw5Qk
         P+ixKB2IfTWlCCxErfsmtQfZ3v+TDZHO2RTMu/F7pcYzQN9erF2uDCTs6TT+VlYdbQ7d
         uwcBjW5BwN6MbUhrgSe4x117UyaaAKYyMY4RynuBjiWCFzYUzvXCtzMH3+pAh/QUtEh9
         AX8g==
X-Gm-Message-State: AOJu0YyKvE39tXWRDrh3wpmO/6vd5Hpj+JSwo5l3UyLRlx9OFF4xdWvk
	0EWsrwG/2pEMpWYQlbu3uu2dH2liIFVgkah4KXJlhAUG+G9U+8xDlL/DOuOnTtTbZeuQFYr4cda
	glVcIHgCTQDCuwNZ6p/MROb+gE2xUNUZWCBo=
X-Google-Smtp-Source: AGHT+IEQoGbthUCVKKA9M7hipHeT7nYJITbPh/EGEWGUCRyRXYN+QZiIc/pzcMA8wP02cFwjo+wMRIps5PXuyej9ud8=
X-Received: by 2002:ac8:57d3:0:b0:460:9bea:d74d with SMTP id
 d75a77b69052e-46114740518mr73478661cf.59.1729776525992; Thu, 24 Oct 2024
 06:28:45 -0700 (PDT)
MIME-Version: 1.0
From: Tim Vancauwenbergh <tim.vancauwenbergh13@gmail.com>
Date: Thu, 24 Oct 2024 15:28:35 +0200
Message-ID: <CAAc7u9rOm4TBx=DhsEyPSLvqRb=UEcm_pj-uDCwovfortsRFPg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: XLGPCIEKL2EIMSMKBWZWBBVZXJLZLL7W
X-Message-ID-Hash: XLGPCIEKL2EIMSMKBWZWBBVZXJLZLL7W
X-MailFrom: tim.vancauwenbergh13@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Toggle GPIO above sample level
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XLGPCIEKL2EIMSMKBWZWBBVZXJLZLL7W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6650841813553965890=="

--===============6650841813553965890==
Content-Type: multipart/alternative; boundary="0000000000005f6dfe062538fb5a"

--0000000000005f6dfe062538fb5a
Content-Type: text/plain; charset="UTF-8"

Hello,

I have a GRC flow which generates a series of pulses. To suppress the LO
leakage from the transmitter being on while sending samples with value '0'
I want to use a method in GNU Radio Companion to Toggle a GPIO pin.
The pulses are always the same, but I cannot use repetition using RFNoC as
the *B200 mini *which is used for this project does not support that.
Whenever the sample values for transmission are greater than 0, the GPIO
pin should be high, otherwise it should be low.

Question being:
*How can I synchronize the flow of samples with the triggering of the GPIO
in GRC?*

I have a script using UHD to toggle the GPIO pins using timed commands,
which works great. However, when using GNU Radio Companion, I am obliged to
use the USRP sink block. It does have a command input port, but I don't
know how to sync the commands with the sample flow. If there are other,
more straight forward methods I am happy to know.
I should maintain the functionality of transmitting the samples from GRC,
as I compare them later on with a second stream of samples.

Thank you for your time.

Best regards,

Tim Vancauwenbergh

--0000000000005f6dfe062538fb5a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I have a GRC flow which generate=
s a series of pulses. To suppress the LO leakage from the transmitter being=
 on while sending samples with value &#39;0&#39; I want to use a method in =
GNU Radio Companion to Toggle a GPIO pin.</div><div>The pulses are always t=
he same, but I cannot use repetition using RFNoC as the <b>B200 mini </b>wh=
ich is used for this project does not support that.</div><div>Whenever the =
sample values for transmission are greater than 0, the GPIO pin should be h=
igh, otherwise it should be low.</div><div><br></div><div>Question being:</=
div><div><b>How can I synchronize the flow of samples with the triggering o=
f the GPIO in GRC?</b></div><div><br></div><div>I have a script using UHD t=
o toggle the GPIO pins using timed commands, which works great. However, wh=
en using GNU Radio Companion, I am obliged to use the USRP sink block. It d=
oes have a command input port, but I don&#39;t know how to sync the command=
s with the sample flow. If there are other, more straight forward methods I=
 am happy=C2=A0to know.</div><div>I should maintain the functionality of tr=
ansmitting the samples from GRC, as I compare them later on with a second s=
tream of samples.</div><div><br></div><div>Thank you for your time.</div><d=
iv><br></div><div>Best regards,</div><div><br></div><div>Tim Vancauwenbergh=
</div></div>

--0000000000005f6dfe062538fb5a--

--===============6650841813553965890==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6650841813553965890==--
