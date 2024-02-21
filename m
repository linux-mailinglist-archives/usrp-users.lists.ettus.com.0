Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2537685CCB8
	for <lists+usrp-users@lfdr.de>; Wed, 21 Feb 2024 01:30:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A2E70384BAB
	for <lists+usrp-users@lfdr.de>; Tue, 20 Feb 2024 19:30:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708475410; bh=Qv43wDr3GwX9+NStxl6Xa0IJmh4iNEOD5pR/5LRO3sM=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=k3xQv9r/zsG0Y/rK+gaYm0rvhhgHZwJnL1lxuThA0W11z8boOUNs18EG54EVxO4AB
	 XwGV0Rk5His3gbb8xoNq33J/yeuLRfU5nsbduzo/G7A41FfylFZ5LeAgmqeeAeJhqj
	 ERvi7AwXKANUPGYGlgf30Xsv02F+TzCFI6KDy2L3bRZyEGVuNDEe2SB4gIYP3XZx7g
	 X7WIoZz6fMT2CLgW0bwGjmGU0W7HfIKgtuveShMs+TBUJxoo6LFlbbe+H9/YDFVdm3
	 DvsYR5wG9gsKfXYINrks8o+LIH2lvGOMVRDjzTEff827EAcNwZAZ5DsSX2cwHbBiSb
	 0htX5sbeAansg==
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 03F8B384B3E
	for <usrp-users@lists.ettus.com>; Tue, 20 Feb 2024 19:29:51 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="nhYb9y/C";
	dkim-atps=neutral
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3c0467b94c6so3917347b6e.0
        for <usrp-users@lists.ettus.com>; Tue, 20 Feb 2024 16:29:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1708475391; x=1709080191; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2V1hzqg3Dnfj1rkr/tahRPoDvk+d+hZf9mbNnNdg/OE=;
        b=nhYb9y/CVFRzvgPERHQ3mW8k6R+4nBaFMRIvC1svkCWxp8cijl5vvIA88K6M8Y1cR0
         e7urt3kobKKTVVQ3TfEg5I8LiiTB8OjHnqI/ij6dLaxy2niN5Ety3wB05oBX6W6TAwgH
         iDpZ8iggXItWBB5wKjuOPYw69ziBw4+cPjCArVTgd/PvjX7BGHxpNGIP2ttFyc5azjMH
         1SpI2RQdFXBdjTWtH8r1EsVMQiWQme74EDyjaVJF0uaHY+VWgmkhN3oLNFSJhQPShBWi
         lirWLeQzcKVe5eN1hFMElP+Dk/36CHSxXvgok6SKH0gCkmI+lASBe6RaHFK+4uT5yKBl
         Sn3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708475391; x=1709080191;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2V1hzqg3Dnfj1rkr/tahRPoDvk+d+hZf9mbNnNdg/OE=;
        b=XCvJ4uP7qlbnreiyb4hHBFFZuxspYVdcx8tyQE3vFCec13qy1dvIxivHW6Xty2l7Uz
         S9RuwWLZ5tSrh0jn5CAD2bJLnARTPobjQ+BHUxvXKRc4YwEAto1rwL0kFlohjn+fdOKA
         9G0AXF7mB6AHZ2KXk+uBgfuFfCOq3d0nw9jNzPJ2K2pZSISOjEu0M501Pa7wGccujqak
         rdf8v9iyan7wVBgRS+bAlTWyFRkek82qlMEqizdk+V3AEe/3sTqni4rSWUGx0rIfolIZ
         f9CNxNmOUrHK1KognRET7uZGiL8ErJ0kygWZ4TjNq/vzOu7/AnN8PHRNqC4C5Jt7aIgi
         8CBg==
X-Gm-Message-State: AOJu0YxzmxzMJSwFEc6WHDnA5ba7xrfxJz0mJE210U6OZLEmnJ10/YsE
	e/Qs8MJKJbeOydUp+RL/Kj+QQKQ5giqD2f1DUjygJzcmAEBSViSOFAUQJcjPywP7bwIrv05IpiH
	5NfczoGFyPU16Hf2aTh75F7sI8cmYIby49H6/a5aPw5KfD2e++Vi0Q9Fq
X-Google-Smtp-Source: AGHT+IGBiRZF+Z6ugCIK6wge0r4KfppDSKSg5d8SaVSRtdUVdV7LKRuy7+cUJm4+8+G/oaBbhd+FAWrlSr//cVO5Qzc=
X-Received: by 2002:a54:4402:0:b0:3c1:34d9:87c4 with SMTP id
 k2-20020a544402000000b003c134d987c4mr13337526oiw.59.1708475390849; Tue, 20
 Feb 2024 16:29:50 -0800 (PST)
MIME-Version: 1.0
From: Ettus Research Technical Support <support@ettus.com>
Date: Tue, 20 Feb 2024 18:29:14 -0600
Message-ID: <CACSOXP2PPEuOzJ50=NTUz2Cn+Q0C6cVrsp3utpn1v3R0VKux8A@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: WBCAB3X5RFNHNVWQ27ZM3L34G2AMVKET
X-Message-ID-Hash: WBCAB3X5RFNHNVWQ27ZM3L34G2AMVKET
X-MailFrom: support@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Request for Feedback - USRP Survey
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WBCAB3X5RFNHNVWQ27ZM3L34G2AMVKET/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3382754213714370684=="

--===============3382754213714370684==
Content-Type: multipart/alternative; boundary="000000000000c786dc0611d96c67"

--000000000000c786dc0611d96c67
Content-Type: text/plain; charset="UTF-8"

Hello SDR Community:

We would like to ask for your feedback. We would like to collect
information about how people are using the USRP radios. This feedback will
help us guide the development of future USRP devices. Please use the link
below to fill out the survey.  Please feel free to forward this email to
any relevant people.

https://forms.office.com/r/hZQDhNYcps

Many thanks for your help and your time!
We greatly appreciate your feedback.

Sincerely,
Ettus Research
National Instruments

--000000000000c786dc0611d96c67
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif"><span style=3D"font-family:Arial,Helvetica,sans-serif">Hello SD=
R Community:</span></div><br>We would like to ask for your feedback. We wou=
ld like to collect information about how people are using the USRP radios. =
This feedback will help us guide the development of future USRP devices. Pl=
ease use the link below to fill out the survey.=C2=A0 Please feel free to f=
orward this email to any relevant <span class=3D"gmail_default" style=3D"fo=
nt-family:verdana,sans-serif"></span>p<span class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif">eople</span>.<br><br><span class=3D"gma=
il_default" style=3D"font-family:verdana,sans-serif"></span><a href=3D"http=
s://forms.office.com/r/hZQDhNYcps">https://forms.office.com/r/hZQDhNYcps</a=
><br><br><span class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif"></span>Many thanks for your help and your time!<br>We greatly apprecia=
te your feedback.<br><br>Sincerely,<br>Ettus Research<br>National Instrumen=
ts<br><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"=
><br clear=3D"all"></div></div>

--000000000000c786dc0611d96c67--

--===============3382754213714370684==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3382754213714370684==--
