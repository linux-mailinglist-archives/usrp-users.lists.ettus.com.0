Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 463D6AAC78C
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 16:13:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DA2B03862AF
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 10:13:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746540822; bh=iwluYxFwMpDbaK/GAEuZ4QA+fsAITC7hMjTF5SgH8SM=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=L64Kt7JqjEromeKtTThyXEIjji9lPBRrUlQ42ij8lFgx0PgqOEElCZj5oNSaNOvc2
	 sr64Tg9e8r0emP7ggwp3d8fw8uDgWWxoNaGA5CHC3rdzhuxhxrvfKbDeKcCvlfTsl6
	 NisSkgZcwfhK6Wu6E3Zbuj2haysbMd7vG2+D/MDHU0TKuhD4P6u2cXZwPzM1H/hI/9
	 vinqsDo1pxiIf+MT15saugtwJx73Ad/hFXZ3oBPCGuX/ErqJ2pPRW1gPe41+kAdbry
	 z3WMDYV76wcY3T72v1UoB8VVEEVma23+nI9e0qQZnEKkhCHqcw6p1uj4Jhh2uevfjn
	 FI/jAUMtgeuWw==
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 60B50385C06
	for <usrp-users@lists.ettus.com>; Tue,  6 May 2025 10:12:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Lpa7yPv7";
	dkim-atps=neutral
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-5240a432462so3597744e0c.1
        for <usrp-users@lists.ettus.com>; Tue, 06 May 2025 07:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746540771; x=1747145571; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=E96nxSmmymcojjg2oE6ezFSzMa8keVZoUoqPpXQRnmU=;
        b=Lpa7yPv7xbcmSAu13SH3sFlGrDvW+UFjYEmajJzm2znZh7y9HicZuSjLO1SYayEoeM
         qvJbaj+vfC+pwr1aHwk3UJ4AV+UQsUypAS7Lsy2HrSp1NfbJQbIrFqUSomkIzXAmV11p
         aP0mBLzQBX7svL5H+Szp+01BV6lzLs1eY6TTeRuP9+ouI/bqBY7YfZB2GD9lTLGExcbN
         54d33hGVrXpmaPDX9h0lAhOZU5X3vGpQHexP+4jKlQ9a0J6L8s4msbkhIurkiOhh371b
         PWGueLZoUroI+7p8cEotyef9b1tjdh3JPAJ2CaIOyXEz3EOqhuHPEyVnuGbPCcbvH88N
         q2jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746540771; x=1747145571;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E96nxSmmymcojjg2oE6ezFSzMa8keVZoUoqPpXQRnmU=;
        b=o64i+nq64bCWqJT3iKJvh+HyGNoL9afjv+dEFM9Acblq90PtKAStuhm0arhjFgvXMu
         wGhGzR2nqHig6KPKqNoO4NDhXeOvfGKt+gfroYWox2GtIzw28L8U0I2fH+UQ9Uwf6Ugp
         w9K7M+aBXkrBHeYTDNDYfqRiN6wgCMd9lfhFYtxXB8QS0MnTAwloose2OULhzKeUKDNC
         Y+4MNjpLkkawwNZzm/tw3VJ/qUaJkBi6SLIZKlVG0BaVP1LX8bCWzfCvquceBT+mQxoF
         pnwJGFxwwaONfZHr8nxSyNXzUH7mHRHrV1ObDuHr6zhF0E1gFPkfDZwxr/HqTYHNeKYP
         6ZrQ==
X-Gm-Message-State: AOJu0Yz4gXVIloUcFW/T7isXHsb8XzYWRi7Unl+7x/ZjdN9Erix7YA70
	oVraV4me35Rn1jxOaBs56Xg5toGPHdgrh40mv3cxc5EYjFSgMq8NCYARvvnSxJr6dMhza2p9WCg
	1LKnTZ6OyOPxjiPax7vhFI6f7MIDQ2LzxuHk=
X-Gm-Gg: ASbGncu3rDD68fXfKtwEKUvnN95i3Q50lFaC8ekwtEhEh++ldqgW/r73X4TAiNpzeMD
	4ADdt7t+XLPWk7k/XqBiNfaP2k6WSKeYC+eGUYYncgXV+Zjpt56KOP+vVE4LGhLyd1k6t+LUgwY
	1FrRLv7u8zjY2n1ob3I8oPLbKxfkHY+ww=
X-Google-Smtp-Source: AGHT+IHRu1PsXDwT3EhRIvN1+NAvvpX93uxTs4Q/Xc/LDs1hC1sAnWS3LxWnm7Zy8IbduVfieL9Dlzj00z9qWz9HtrU=
X-Received: by 2002:a05:6122:3663:b0:521:b3ee:4970 with SMTP id
 71dfb90a1353d-52b2637e2edmr1961287e0c.2.1746540771221; Tue, 06 May 2025
 07:12:51 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Tue, 6 May 2025 16:12:39 +0200
X-Gm-Features: ATxdqUHSxV2RS6PjE7WAgZ2Cbyg8ArBuFLgxPuq3vy0nLpibLN7nlon_313cdUk
Message-ID: <CAG16vQVXsvOTdQfO-RpNO74hqXK+D7vXqeyh=SW8cWsd=ABq+Q@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 6OLVIV5X2UT4QF7ZNSSUZLWG4SC5X4QG
X-Message-ID-Hash: 6OLVIV5X2UT4QF7ZNSSUZLWG4SC5X4QG
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Sampling rate in E320 with RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6OLVIV5X2UT4QF7ZNSSUZLWG4SC5X4QG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0949001525964629867=="

--===============0949001525964629867==
Content-Type: multipart/alternative; boundary="0000000000004126f70634783606"

--0000000000004126f70634783606
Content-Type: text/plain; charset="UTF-8"

Hi all,

We observe different behaviour using the E320 radio with the UHD:
USRP_SOURCE block and the RFNoC Radio block with a low sampling rate.
We are attempting to set the sampling rate to 25 kHz for both blocks. In
the UHD block, we achieve this by configuring the sampling rate to 25 kHz.
Similarly, in the RFNoC block, we set the sampling rate of the RFNoC radio
block to 25 kHz and the output rate of the DDC to 25 kHz.
When we look at the output of the blocks, we effectively observe a signal
of 25 kHz in the UHD block, while in the RFNoC radio block, we observe a
larger bandwidth of approximately 250 kHz.
How can we correctly configure both the Radio and DDC blocks in RFNoC to
have an output of 25 KHz? Is it possible?

Kind Regards,

Maria

--0000000000004126f70634783606
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><div><br></div><div>We observe different behavi=
our using the E320 radio with the UHD: USRP_SOURCE block and the RFNoC Radi=
o block with a low sampling rate.</div><div>We are attempting to set the sa=
mpling rate to 25 kHz for both blocks. In the UHD block, we achieve this by=
 configuring the sampling rate to 25 kHz. Similarly, in the RFNoC block, we=
 set the sampling rate of the RFNoC radio block to 25 kHz and the output ra=
te of the DDC to 25 kHz.=C2=A0</div><div>When we look at the output of the =
blocks, we effectively observe a signal of 25 kHz in the UHD block, while i=
n the RFNoC radio block, we observe a larger bandwidth of approximately 250=
 kHz.</div><div>How can we correctly configure both the Radio and DDC block=
s in RFNoC to have an output of 25 KHz? Is it possible?</div><div><br></div=
><div>Kind Regards,</div><div><br></div><div>Maria</div></div>

--0000000000004126f70634783606--

--===============0949001525964629867==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0949001525964629867==--
