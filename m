Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 304E75FC2B6
	for <lists+usrp-users@lfdr.de>; Wed, 12 Oct 2022 11:10:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE923381924
	for <lists+usrp-users@lfdr.de>; Wed, 12 Oct 2022 05:10:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665565839; bh=09931lyADlOQLRidCAmdwDuykeCUM3VZw2eoSWcJxMw=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PsCJQfG645/GQheIQ7EUhLps1Z3jEzamlE2j2wd6lVMER+Sae4Q6rDD+gdefSBEYu
	 q1f7H1sD4814hhmKcYn1AwHuAUfqD+Y+Vi8N/AU4Z3TjTOtOG/AU+coFB7zo9ryJf8
	 xj7XslytFEguSuZW5XcstK37QBlqwQP9rt1UZh43HwwzgYPuLRvPGuFbOz1570vw/1
	 Ixmtu0Bsu+SjdywHRx7CHYS8b3ixWjqBMfaHjHCTkTYfnji+1+qTasFLCPoqekPEfU
	 +y4/JC9M50u7Z/7Rvv7tNDj5q269QspDsvOpd4OL6hvLvWqVZtf/mBihaYmGiFUKvZ
	 Pui6ScDYuvwig==
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	by mm2.emwd.com (Postfix) with ESMTPS id AF17C38009D
	for <usrp-users@lists.ettus.com>; Wed, 12 Oct 2022 05:08:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VY6QsQ57";
	dkim-atps=neutral
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-1321a1e94b3so18833585fac.1
        for <usrp-users@lists.ettus.com>; Wed, 12 Oct 2022 02:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5hg7bXET66j52igP9H1GzI4PyGoUUTMwWigUk+jTKIA=;
        b=VY6QsQ57Hxj9kz8l539i5cFeoCBUSXxNsvqU5FkcR99drdhg6nxeP8TicdkUTlpDn1
         T2jqcJrWvu8mpekgvn50alxLI+iuQgnwgsI0Uw3i5O7Y8iMWRa7xS1XGBCHbj+iBCTUf
         inh+urpi+bvXqjD9f9/xISRdlBLGo94hxIVOt2VEM7RNFV7qU6YwiIXwfiuFtW0mtoqP
         E3dgC/rNmjbNHjEq/4uAvCCQ30ol/nqIfvQt/yw5nWA7q3vKjExOdh4xMR5QJABzjNbW
         BJtwft0Wt8BngN9/sqBuaTtWpbfaFSzSIP4O4eEgqD/z93/kM32wJSkq1Ldx0l6xdvZv
         w5aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5hg7bXET66j52igP9H1GzI4PyGoUUTMwWigUk+jTKIA=;
        b=GALkToR25Fds/JFWZbmqpq8gVVtcwnGCIhXI5p3vRTgTIldxldU7sqYKTapqZvr+Eg
         O15mb2Ou0TksGFoHTkMzI8GD0UQ3Vev81Szdamb1VgHdQ3VZl71eAWz1lzpLulS/bJwq
         nw7nFAHvgqbUWtTbw4NOie4iSBwNQVR5VrBr1RFYJbGtw8Lnxvu254HjVTzImt6i6TIg
         XXQgT3yJ/v+Wa2GMjx3rM4dfVqxlrzqURjjrol6mK60LkjLZzSw+FZQ9TD274EbJKhho
         iCiFwjWcf4GUEo1myOhXxvN69lquKGYVs9u2xIn66v0aX1iEZaMw4lZLoUa8T52HrUCb
         Ll3g==
X-Gm-Message-State: ACrzQf2Ab6Qqi1XLqOtgKg9CJPt/W80TCL3TNvuirQwrHQIn3rsFVg5F
	FLFPMs/pvDGU7rc3sTTIiWCmzK1ElTM6wkUI4yrgpYQ=
X-Google-Smtp-Source: AMsMyM5cjxWYhS1Hje4Xh9DPvkpE+ZJuy5C4RNpIJDeacWD+U1+CKCgeXXZqk79B5IkTkOJkYOFyGH6fPb8jf+jdzP0=
X-Received: by 2002:a05:6870:b413:b0:136:8a4d:aac2 with SMTP id
 x19-20020a056870b41300b001368a4daac2mr1818372oap.9.1665565725700; Wed, 12 Oct
 2022 02:08:45 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Date: Wed, 12 Oct 2022 12:08:34 +0300
Message-ID: <CALooG38rDOuUuhD0axWa2F8Ck7RnwQbXoDB3Z3QgjezOQS+Ftg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: ACOM5BJBQBOAJWNPBW3HKURLJIHCECH4
X-Message-ID-Hash: ACOM5BJBQBOAJWNPBW3HKURLJIHCECH4
X-MailFrom: simultaneous11@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Continous ADC Acquisition Problem
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ACOM5BJBQBOAJWNPBW3HKURLJIHCECH4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4221122542239127514=="

--===============4221122542239127514==
Content-Type: multipart/alternative; boundary="0000000000006e373f05ead2bdcf"

--0000000000006e373f05ead2bdcf
Content-Type: text/plain; charset="UTF-8"

Hi everyone,
I am trying to take both ADC samples at the same time from E320. I have
used rfnoc-example as a starting point and added 2 block ram to save ADC
samples. I have a register which triggers saving process. If the trigger
comes, I save 8192 samples from both ADC to BRAMs. After that, I read back
from the host to analyze synchronization between ADC channels. The problem
is when I read the datas from BRAMS, I realized that some samples are zero.
I read all 8192 samples from both BRAMs and at least 5000 of them were
zeros. I guess ADCs are valid only part of the time. What can be the
problem? How can I take 2 ADC samples at the same time to host?

My setup is ;
Host OS : Ubuntu 20.04
UHD : 4.1.0
Device : E320
MTU : 10
Connection : 1G

Kind regards,
Yasir.

--0000000000006e373f05ead2bdcf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div>I am trying to take both ADC samples at t=
he same=C2=A0time from E320. I have used rfnoc-example as a starting point =
and added 2 block ram to save ADC samples. I have a register which=C2=A0tri=
ggers saving process. If the trigger comes, I save 8192 samples from both A=
DC to BRAMs. After that, I read back from the host to analyze synchronizati=
on between ADC channels. The problem is when I read the datas from BRAMS, I=
 realized that some samples are zero. I read all 8192 samples from both BRA=
Ms and at least 5000 of them were zeros. I guess ADCs are valid only part o=
f the time. What can be the problem? How can I take 2 ADC samples at the sa=
me time to host?</div><div><br></div><div>My setup is ;</div><div>Host OS :=
 Ubuntu 20.04</div><div>UHD : 4.1.0</div><div>Device : E320</div><div>MTU :=
 10</div><div>Connection : 1G</div><div><br></div><div>Kind regards,</div><=
div>Yasir.</div></div>

--0000000000006e373f05ead2bdcf--

--===============4221122542239127514==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4221122542239127514==--
