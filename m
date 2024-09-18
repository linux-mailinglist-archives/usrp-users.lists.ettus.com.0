Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8746497B900
	for <lists+usrp-users@lfdr.de>; Wed, 18 Sep 2024 10:10:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3F3D938540C
	for <lists+usrp-users@lfdr.de>; Wed, 18 Sep 2024 04:10:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1726647015; bh=ED65nt1rB3+oPKa1YeAwhIAkfEsz8/MdDAunKq9cf38=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=zFZrBcHLBpJz+v8jE4p624ih6dL2/HxP+eJhv323Pa/muNX1pIyjgRVNeNf5G1pjt
	 mXSHe3i+wNKt5wtQLxr9UFP8R620YfMt1lYQQ6DG4tqZ0yyW0YcjEIk9ymk0Y/bGKU
	 3mQOKUEXvP4L1FgR1tAMNzwetForBDP8r2WLMzhipALInstHH7ANQzXPypflWOMk67
	 6L8K4JDsabzLmtJ5m8FSyZZLDbeR+qEbPJ8tJKPlrFVMGM/EtxsIioTxzqkTVt1KHg
	 hE3tRhHSZlqBGyZaTHT3ow8RppUggsOnvTKkkYV4e7cyO3YtKtil8gDCxMVpu8K4ZI
	 D3DJpwODpbuKg==
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by mm2.emwd.com (Postfix) with ESMTPS id F2A89384A05
	for <usrp-users@lists.ettus.com>; Wed, 18 Sep 2024 04:09:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fWXmQI2d";
	dkim-atps=neutral
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53654e2ed93so7164010e87.0
        for <usrp-users@lists.ettus.com>; Wed, 18 Sep 2024 01:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726646948; x=1727251748; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2Zi7CD5RTPTv5bOdKFp/Tzzd+e2/b9niS6+q9Pj+IFk=;
        b=fWXmQI2dEsYmPJsCDSmSt64DyKxttQLKqcgKescoEKknhzTdkm/taOoTg27lHAJ8d4
         PFST9tG4fDrGy3h7Lk3OnZcojcCVzHFhWl2mWTohQOpep0sCbqsPLtYtP4WS38OEgdPq
         e7xd3/uEEVJY7sFupighW4QRoOjp4WiqYK6tDAMlJk1m4DWv2jEnmc3H7GxDQirKbTBa
         AYZ7LSqmwRyDMU4BfNXmvhQZVOdGow3fJoRzGPw4Q+r0a1DgchArN//xmFVkmrLUvQS0
         aSHmysY3XgYikCtl4KTnzCq8VzU+Y5NBpzEKjPLL8Y1fiOtfybqCZ9nxr+3kr1JvHJft
         KxKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726646948; x=1727251748;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2Zi7CD5RTPTv5bOdKFp/Tzzd+e2/b9niS6+q9Pj+IFk=;
        b=IJSRBIug04AY2FPCqV5ISH8H98otkZ93wVVSJUSJ+VyQuvb2HzoKTsPG4Xlc34n79L
         kB42jL8gIaS/dSz91A8Y2/1MVinN8sllvKuGAiS/y1BoyPBj7mNhG80a4seSdw4+QzOV
         5Wc7QvYp7m5z9t9pChp0bV9R0HZhQbRsUHwxbkyZrlTWTHR7G5pOaW/uEz7h60HJwQ6L
         VaIRfCOdS0kSakFd4fAiFtP4ZVoD34S3y2ywRDyCtGFCi7cuacGNW/755E/IDCP+OROa
         baYSORHdMw+SMtHUo5/83bfuEjlxKTF14lVO4Bgy7cN2hOUfDa49RCwJgoXX/DRiTJn+
         Zbuw==
X-Gm-Message-State: AOJu0YxyPZrZeAs4g+FEUZRj644r+Kc7RJxkCnv3kv/r9HRyzLEaOs0M
	7ARm2JoRfumoAABZ9RnNpg+/CPy4lPTZcWz6Vi0bD5A1x6pL18X6kTdwnxkl8g2Sjud2BQdkzSC
	AtUcVtbTTMfRR5IHG9+9G97sWaW5PjA==
X-Google-Smtp-Source: AGHT+IGyjisHGW29avht/3PE/YnUdgllmOXiQ5Fgju9d3FAb5jbl6yeteVkr0JBcan7/ljnQ3zjfbUt89tdtsgNgIzA=
X-Received: by 2002:a05:6512:e94:b0:530:b871:eb9a with SMTP id
 2adb3069b0e04-53678feb5ffmr10623381e87.47.1726646948113; Wed, 18 Sep 2024
 01:09:08 -0700 (PDT)
MIME-Version: 1.0
From: Brajesh <brajesh153@gmail.com>
Date: Wed, 18 Sep 2024 13:38:56 +0530
Message-ID: <CAL4V06oPV8_5tqiGUjcbZr3QAmvd+DFxrNSE3QyudofKcefjOQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: MAYTTHIMXHMBL4SLC27BZBTBENFECF65
X-Message-ID-Hash: MAYTTHIMXHMBL4SLC27BZBTBENFECF65
X-MailFrom: brajesh153@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Reg. MSB (only) trasmission
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MAYTTHIMXHMBL4SLC27BZBTBENFECF65/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4415002391705187126=="

--===============4415002391705187126==
Content-Type: multipart/alternative; boundary="000000000000feb5e206226051f8"

--000000000000feb5e206226051f8
Content-Type: text/plain; charset="UTF-8"

I am able to program N210 FPGA using newly generated .bit file. I am trying
to transmit MSB (1-bit only ) from the N210 board and faithfully process
these MSBs at the receiver end.

Would appreciate some information on how it can be achieved. A pointer or
two is the need of hour.

--000000000000feb5e206226051f8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am able to program N210 FPGA using newly generated .bit =
file. I am trying to transmit MSB (1-bit only ) from the N210 board and fai=
thfully process these MSBs at the receiver end.=C2=A0<div><br></div><div>Wo=
uld appreciate some information on how it can be achieved. A pointer or two=
 is the need of hour.</div></div>

--000000000000feb5e206226051f8--

--===============4415002391705187126==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4415002391705187126==--
