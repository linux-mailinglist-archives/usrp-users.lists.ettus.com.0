Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BCA77C7FD
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 08:44:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 926D63849D1
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 02:44:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692081864; bh=iHWi3AJCzpIY/Q41MU8/cgQtO+aPDFX8qnUtCJJYsbQ=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=kzn+cI9nqgPbcSnwNKpXx+1vn0YOjmd9mOH2gLo0L8gAizCanU1kwrvtUEyiP9Hfd
	 DpjPv/ryVDJyzIuG7q4x72MabTceLHwXw4uUWQPap+X7tueMFwcWOepkpNv/ZdAc0Q
	 C0TR/YIOESU7Oq7oCfd/6vlBRSqRKMqci9+RPsRa7R2G86Yv0lbJUpSs3lWXjC/f2W
	 1JZmW0qIrfJuVXHEnIljHlXi0arnFsoMEaXlHY74iBfnJt2/j70yHLRxcBHhrZaNex
	 4+RdiWkhKAsOWLWAsaU7cwGyoq0rVQ9+2KSdJt8sTnN/QCAjQOLg+xm4gkKj1yG9wd
	 NUJf/FaZwveWw==
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by mm2.emwd.com (Postfix) with ESMTPS id F1C4D383E9E
	for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 02:43:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gSb1HYsQ";
	dkim-atps=neutral
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3197b461bb5so1172689f8f.3
        for <usrp-users@lists.ettus.com>; Mon, 14 Aug 2023 23:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692081832; x=1692686632;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bV1FjBhZOPnlIrfBCuh1cndSR4G5G6xnGPXjKcuGQsg=;
        b=gSb1HYsQxwiOHV3Oq1l2VK1PDB5uG90OnXe6lOJba/AvPtoK2z6mK4xsl/XqmW3Dv/
         FEmUgDk8x5SZdK0Zn9ZdEXE/+KCE7tMl0tzbtIeGyO9VVpOkA5S6Bm2tsD7YQ5wIKAsY
         jlQu8GwGig+yyg0T8NWopB9xedAOfpNQ8ht5FQt5eK5GymqBO3UTaoiM5+kMJ0KuCUxY
         zOm37ZOcvCvRFPEd10DETC/BxLUPQSsjmBVl7/tyCIJJKOIOcZrNDIqnZYb2XukRCaEw
         7xmVAyiw4w4e8jzsLcTvIxqGdP/U9V/rIwG9H5iiGzAEWYjQb5cG1zBnIndK9N/7XzqN
         LM7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692081832; x=1692686632;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bV1FjBhZOPnlIrfBCuh1cndSR4G5G6xnGPXjKcuGQsg=;
        b=UFU9I8Kc6zvvH6kIKoGbRfzSP9NdEwiEXAjGMmcO2O7benVsRkbQJzz1NT/bD5mEkr
         CoE7q9ngetIamdJ1mcS6DcT2Is/tq87SzTurwKK4She6UJGeMIQEjWWgMFea9iRAb13N
         1loTnF52tcBTwnLg3cLphKRvacwFcbrxoGuNrTCmXMCo9pJkq/m+/a2RLz9NlZUTKsCN
         UnJt6xlewYTnSUigNLWE7imml3n57SpSiRb1nGhncRTD/SR+jdpb3vAnbHr0FjFWx6Eu
         JVnuaDSmvwJlIMmGxPqeCvj4LVTN1At+qlA+NWN7VrAjX3A/zJXR3YynwX8wTJAx69WZ
         bmmA==
X-Gm-Message-State: AOJu0YyIWKtxY5OeMMC58eq5vWYoV9tXr1AD+rz6oASvHr+frH8Ka+qY
	rZa0zxdhO/65zrIiIYxSmwGBIBP+Z0wzoITzLo1T8CP9R/DtwQ==
X-Google-Smtp-Source: AGHT+IEjrt1ahklX1o7l7yFnXFW/WqpM6dGBMfx3CftSyMTkCmqCsE5UOdJi3R7IB1l25VBBphnf/+vMBZAc/Gen3LE=
X-Received: by 2002:adf:e891:0:b0:313:f395:f5a3 with SMTP id
 d17-20020adfe891000000b00313f395f5a3mr8685498wrm.38.1692081832326; Mon, 14
 Aug 2023 23:43:52 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Francisco_Gallardo_l=C3=B3pez?= <f.gallardo.lopez@gmail.com>
Date: Tue, 15 Aug 2023 08:43:41 +0200
Message-ID: <CAEtk-vU2oUedb9wutZLcQhJBSXJN0Gob6WAxmUtVTs-66sa3Cg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: SX6HZONUDSQTUJKBXDG4GMNRLVFVK5E5
X-Message-ID-Hash: SX6HZONUDSQTUJKBXDG4GMNRLVFVK5E5
X-MailFrom: f.gallardo.lopez@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP B210 not found and power cycle needed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SX6HZONUDSQTUJKBXDG4GMNRLVFVK5E5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3875680692326357993=="

--===============3875680692326357993==
Content-Type: multipart/alternative; boundary="0000000000008bfb2b0602f08090"

--0000000000008bfb2b0602f08090
Content-Type: text/plain; charset="UTF-8"

Hi,

We have a remote station with an USRP B210.

We observed that sometimes the remote machine cannot find the USRP B210 (I
think it has to do with uncontrolled power cycles, but I am not 100% sure
about the root cause. The point is that sometimes it happens).

The only way to sort it out is to disconnect the power supply and the USB
cable from the USRP, and then the remote machine can detect it again. i.e.
doing a complete power reboot to the USRP.

It is not a killer because the problem is not always happening, but it is
annoying because it implies sending somebody to disconnect and connect the
USRP B210 cables.

Is anybody experiencing a similar issue? Any idea how to fix it?

The remote machine uses Ubuntu 22.04.3 LTS and the UHD drivers.

Thanks!
Fran

--0000000000008bfb2b0602f08090
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<div><br></div><div>We have a remote s=
tation with an USRP B210.=C2=A0</div><div><br></div><div>We observed that s=
ometimes the remote machine cannot find the USRP B210 (I think it has to do=
 with uncontrolled power cycles, but I am not 100% sure about the root caus=
e. The point is that sometimes it happens).</div><div><br></div><div>The on=
ly way to sort it out is to disconnect the power supply and the USB cable f=
rom the USRP, and then the remote machine can detect it again. i.e. doing a=
 complete power reboot to the USRP.</div><div><br></div><div>It is not a ki=
ller because the problem is not always happening, but it is annoying becaus=
e it implies sending somebody to disconnect and connect the USRP B210 cable=
s.</div><div><br></div><div>Is anybody experiencing a similar issue? Any id=
ea how to fix it?</div><div><br></div><div>The remote machine uses Ubuntu 2=
2.04.3 LTS and the UHD drivers.</div><div><br></div><div>Thanks!</div><div>=
Fran</div><div><br></div><div><br></div><div><br></div></div></div>

--0000000000008bfb2b0602f08090--

--===============3875680692326357993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3875680692326357993==--
