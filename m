Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E477E99D3
	for <lists+usrp-users@lfdr.de>; Mon, 13 Nov 2023 11:08:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EA09C384013
	for <lists+usrp-users@lfdr.de>; Mon, 13 Nov 2023 05:08:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699870137; bh=3dPfrxQD2N+VWpuDJCPoedjeTAZpWPOT9EC1xd9iRxk=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RXelU8vv+NqEh5uA2LzPrdvN9Af8rotvANrxH6XBReuWrATSd6DquQeNNtyup9fNB
	 07jYyelZ8YR7ggtkDfZFV6GO1Dquuik+4tYLnrY6oJIfEXRWWEQF9aoRQFf3hWDQJ3
	 PR6O4K6JBChk9vMOQ9SensgRK0oYQrRQ+PoMLQeOS44u+6XcUoJscVTp0CJvhB6EB5
	 3IUi1ZAqU9h7bvRAu9jbWBZ6LFU4lzP6IqF06dBi0yAX0AyuBEgtobGbiqtYCuiFMj
	 siw8RHk6kt3HV6ZcL2pBlmKPV9dPCk38jjabowJoZsXXSMhS7pmI7wdUNW1jCFxTPa
	 hjYg/m/hjIWTg==
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	by mm2.emwd.com (Postfix) with ESMTPS id A0055383D2D
	for <usrp-users@lists.ettus.com>; Mon, 13 Nov 2023 05:08:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YPY59C9C";
	dkim-atps=neutral
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-27ddc1b1652so3724299a91.2
        for <usrp-users@lists.ettus.com>; Mon, 13 Nov 2023 02:08:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699870101; x=1700474901; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=g0DlnytKMdjH0FD0sFazPYwvdKkwK62Jo0dBGfHyWM4=;
        b=YPY59C9C1bUK87IV1M1zeDMO+kuqdTJFrnHus/9dqfF0Ua2SSTHACajFPSAOl5xCjU
         AUBmS3uOtwTlewpJP3SIGj/gXFS+DTdI4SgbxW4/PMb/T4z8jiwAxsW0GlEMnmy18bPd
         bHXaQYHKicVN4msuPzl4hOnv9POcrDk32JkTUJT8Rhlc5/UE0FGgbJqrZzFL2wQmx4Wo
         jUNc3sCgcGIxOjTH33RxOoh/GxXGGdEnOMSXZOIPw0vi2+fQ4UvZmBnDhsiXtomeMxxX
         67DRfFWku5wDOO2I6ogh1w83IYWhjTJJdLc+aWIAojKLnWH0RvLwbe9OVqsM9laJtkkr
         3Tmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699870101; x=1700474901;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g0DlnytKMdjH0FD0sFazPYwvdKkwK62Jo0dBGfHyWM4=;
        b=C1IWHjR0F3pHQ4B/7bakU6lPpan2Z1dZcZ2LYBrJ/oXz3AIehNVU+QLd8VbnOwYQhb
         E0Q8v2i/Jl36KwDWsFVqOR8vBii5YrAiLaz5jjIthto/tZPaeC6OqW0L7Fa+vHpIPvOV
         N3f/Uj/OiUSSqbQZiqO8lvwSKiQwMp/LhSI8KCYUOZGCsQA9nB5D+tcbjYft3u/j1JCX
         cZsS8Z+qFL2OuWC5YUUQwcz54LCBIXeUWln5o8st1QccSgNSf7wO7oH5UcWZ7YkxFPDi
         z/QPu0puKbn0PgHPvmcUNO1t/XedlAA+Wn3no9bSggsyMlPY9XE+ZpFCM9yfghaCrPMo
         7SnA==
X-Gm-Message-State: AOJu0YwQ7XGOyCZNWpOykLIquNHFEgeBmBM0CE/NY/WIIDXCtRwE8al0
	i09H9n0H0pS13DxDDYpzrPsgBPO1pOF5rPCV0SsyKJbiVY8=
X-Google-Smtp-Source: AGHT+IEWaffvDZyDAahPgAqR9/Hn4uxgJsRS6VC25CA5wB5+7QqlP331UVZAmmkUYfSve3kg2iNN13GWyickHc1UEmU=
X-Received: by 2002:a17:90b:1bc3:b0:281:e1:af1d with SMTP id
 oa3-20020a17090b1bc300b0028100e1af1dmr215301pjb.18.1699870100995; Mon, 13 Nov
 2023 02:08:20 -0800 (PST)
MIME-Version: 1.0
From: Steve Hamn <stevehamn311@gmail.com>
Date: Mon, 13 Nov 2023 02:08:09 -0800
Message-ID: <CAOYGa73uEs_dg2Tb8O8VHpVkyY-HJ3+r2e690zoJvgoT4=h=CA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: ZZFZK4UGXH7K56VS7V5IPWNNBM3U6DDM
X-Message-ID-Hash: ZZFZK4UGXH7K56VS7V5IPWNNBM3U6DDM
X-MailFrom: stevehamn311@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N320 AGC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZZFZK4UGXH7K56VS7V5IPWNNBM3U6DDM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1399042319275384134=="

--===============1399042319275384134==
Content-Type: multipart/alternative; boundary="00000000000088c571060a05d969"

--00000000000088c571060a05d969
Content-Type: text/plain; charset="UTF-8"

Hello,

Does the Ettus N320 employ any type of AGC? If so is there a detailed
description of it anywhere? Or can it be disabled?

I notice that if I send in a strong signal the digital output from the SDR
is approx +/-1. If I send in a weak signal it's also +/-1 just noisier.
I've been experimenting with sending in amplitude modulated pulses. Seems
like over 'long' timescales there is some sort of automatic adjustment
going on that is corrupting my measurements. What am I missing here?

Conversely it appears I am able to control the TX signal by just sending
out smaller numbers, and I don't see this (or am I just missing it)?

Thanks in advance for any help or insight you can provide!

Thanks,

Steve

--00000000000088c571060a05d969
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,<div dir=3D"auto"><br></div><div dir=3D"auto">Does =
the Ettus N320 employ any type of AGC? If so is there a detailed descriptio=
n of it anywhere? Or can it be disabled?</div><div dir=3D"auto"><br></div><=
div dir=3D"auto">I notice that if I send in a strong signal the digital out=
put from the SDR is approx +/-1. If I send in a weak signal it&#39;s also +=
/-1 just noisier. I&#39;ve been experimenting with sending in amplitude mod=
ulated pulses. Seems like over &#39;long&#39; timescales there is some sort=
 of automatic adjustment going on that is corrupting my measurements. What =
am I missing here?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Conve=
rsely it appears I am able to control the TX signal by just sending out sma=
ller numbers, and I don&#39;t see this (or am I just missing it)?</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">Thanks in advance for any=C2=A0he=
lp or insight you can provide!</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">Thanks,</div><div dir=3D"auto"><br></div><div dir=3D"auto">Steve</di=
v></div>

--00000000000088c571060a05d969--

--===============1399042319275384134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1399042319275384134==--
