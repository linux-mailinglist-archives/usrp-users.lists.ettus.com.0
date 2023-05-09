Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D76496FC2A5
	for <lists+usrp-users@lfdr.de>; Tue,  9 May 2023 11:21:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 64D9E38091A
	for <lists+usrp-users@lfdr.de>; Tue,  9 May 2023 05:21:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683624081; bh=yYhi7W5arrJvbna0ILk7xtxmr7IlUFo+5RLgNstBpNY=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ct/xxSabcAZ10s7C7aX15tBi//qmLUcRaY6z8OulG56I27/zMZ9UCEsr2sjIWSVRS
	 ITefIBd0gtkvGJFD3YhdWLVXZT55dyZ3o+FKOYgn0urBmzNRTr/5DujGb6+EDeLpAx
	 lsRZDvm+t2OhCs3y9i5W4DgrrCkFqfhkoQJCXuYHNzGgLGN9t1C5o7ciHaU/ksicJz
	 O8eIWeJUOW3MqieE7Rb+6kPzcNWoMJuyFOzJOn0Glhv/xydEhTA/vykM6tpTicODEa
	 qr8WD0MsUtFyVXSK8BOKeQfJSEk+gn7YyP9PcRPpn/f6SqJZds7eqiDX2ae6c2w5Qy
	 tK8n/XgwMltTA==
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 3B53238401D
	for <usrp-users@lists.ettus.com>; Tue,  9 May 2023 05:20:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Xg/pDHyZ";
	dkim-atps=neutral
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-38e12d973bfso2862939b6e.0
        for <usrp-users@lists.ettus.com>; Tue, 09 May 2023 02:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683624040; x=1686216040;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XTZwnALzFudL7tUo2e0MdEuAl4LUllLA6hVNVdqSTXU=;
        b=Xg/pDHyZBiZgt5ZFDM1GE6wV/RO4oEoI7Ml1acyruYbwRs7NI/xKbuYQaCx3IjUMUj
         p3LMixKkfaV0YAwj61T4m3Co19VXL0u5+ufbPrFE9fN5KsMda3QE5DWisKh3OrOVwz/2
         KPyPeUhVsWL1ZO26nO5CW1WJytrSGE8Q6Vff/6/826QMD1lN+dx3xTgU1eueu7uy7iZ7
         rTvgilWQj9Ei+r1tgm3dsRfNdwFQUaqO6hgaWTvN0JoVMUNSG9tWPS2k4zA9coOCgWW9
         7KdfRz+PS8Ry+zrM2qQUjL0CBPPjVgSDFWKINbO+3rR6aLZS470SdEMpqUeIPzAkzFB2
         i2gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683624040; x=1686216040;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XTZwnALzFudL7tUo2e0MdEuAl4LUllLA6hVNVdqSTXU=;
        b=iQ4y1aQANIEgMQuf+uUdlTiOdGaOlZZh2kAsCDkV38Xw8kPMs7gr5MT55d/ej8EzKS
         Dd+h6U8s5cj/0/xM1YntXW6mtD/KOz2ft2o3aOojlysTo42JGMupQolCAS+5Phg9QFli
         boRi1AahnPvauegXw0TCSq5NnzQ+7Hmd3SjCSoKhfkY8OrBi7DKRMDnkDao+ijd4l+Wv
         7Jd+CDW55//p3mG7yR2kXNJ8DxHdl4jmk7xkNjO+eAEUichYw71YmvHYlWr76pkk42gl
         ROu8fmLbiDtX3EO3UXvyCPEY54YjAz4cVzs3C+1rcQkoqFoKhfRjBoxcHSQs1whFkEcD
         VRSw==
X-Gm-Message-State: AC+VfDz5HKwG6dv3Oj2UC8iypfD+i8cSS9SH8kn38W40cGpWbcZkcp3g
	7DdU9hq3VqYxQ4NZakeNY5VY2d9mY/p+56uy1CtIp0X8udo=
X-Google-Smtp-Source: ACHHUZ4sp1cS27fMnMMOiSbLATOzFbque4TBNfbRre/rBQNRHUjUO809hE+6Wqko8x/aCqH0tbJGqipQ3n/HL3TPX/k=
X-Received: by 2002:a05:6808:9b1:b0:38e:aa4:e4a4 with SMTP id
 e17-20020a05680809b100b0038e0aa4e4a4mr908971oig.8.1683624040031; Tue, 09 May
 2023 02:20:40 -0700 (PDT)
MIME-Version: 1.0
From: ali siddig <alisiddig12@gmail.com>
Date: Tue, 9 May 2023 05:20:29 -0400
Message-ID: <CAKacFEkkeKv68MSZqrVKPPzn5QLx4UL6zjDq0zBdn-1Wvz44hQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: WFMD7C3WGFVPGEPTDU7G2VGL6LYGIYJQ
X-Message-ID-Hash: WFMD7C3WGFVPGEPTDU7G2VGL6LYGIYJQ
X-MailFrom: alisiddig12@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] time division duplexing
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WFMD7C3WGFVPGEPTDU7G2VGL6LYGIYJQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1700744275366328484=="

--===============1700744275366328484==
Content-Type: multipart/alternative; boundary="000000000000d76c2805fb3f4428"

--000000000000d76c2805fb3f4428
Content-Type: text/plain; charset="UTF-8"

Dear all,
I am trying to design time division duplexing (TDD) transmission on USRP
B200 mini and gnuradio 3.10.5.1 . To achieve that, I tried to use the
Full-duplex mode and stopping the inactive mode (Tx/Rx) by multiplying with
constant=0. But, still the carrier appears on the spectrum analyzer. I have
read some stuff about burst transmission and the ability to enable/disable
transmission using "tx_sob" and "tx_eob" , but didn't succeed in stopping
USRP transmission.
Any suggestions for TDD design other than Full-duplex mode?
or some more information about enable/disable transmission or burst
transmission?

Best regards,
Ali Siddig

--000000000000d76c2805fb3f4428
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear all,</div><div>I am trying to design time divisi=
on duplexing (TDD) transmission on USRP B200 mini and gnuradio 3.10.5.1 . T=
o achieve that, I tried to use the Full-duplex mode and stopping the inacti=
ve mode (Tx/Rx) by multiplying with constant=3D0. But, still the carrier ap=
pears on the spectrum analyzer. I have read some stuff about burst transmis=
sion and the ability to enable/disable transmission using &quot;tx_sob&quot=
; and &quot;tx_eob&quot; , but didn&#39;t succeed in stopping USRP transmis=
sion. <br></div><div>Any suggestions for TDD design other than Full-duplex =
mode? <br></div><div>or some more information about enable/disable transmis=
sion or burst transmission?</div><div><br></div><div>Best regards,</div><di=
v>Ali Siddig<br></div></div>

--000000000000d76c2805fb3f4428--

--===============1700744275366328484==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1700744275366328484==--
