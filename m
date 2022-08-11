Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0071F5906F3
	for <lists+usrp-users@lfdr.de>; Thu, 11 Aug 2022 21:30:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DEA64383C92
	for <lists+usrp-users@lfdr.de>; Thu, 11 Aug 2022 15:30:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660246215; bh=ONtQAhGt8WYeWjpQMgdyYVkV/I1qVwFCAXo02yhljcI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=s9FiHgZxr3+yAiz6sHoCEHliWB5+QKimjRmfr6CofutPG+bhsbCvpLGuGIcxhXzKI
	 R+GAqHVQWxLVCjJ775o/NMrt1DEIUxCY86Pbp7T3ywz32dZz340si2JX5G1Q7BC9Nt
	 O6KnIJ25+aiDbOj8Nduzh1YTBPtaawS8wogqJyf1A43TnWbGhk7sR7ZHjes3jFliuE
	 3EPNWo3x8VM3j1oOslbEXSFI1yTzfLeA2BjEuOhBvZaHxeMTcQw2Lg1jnQhfS2VbTI
	 4/iy/8V+aXHcjtNyVczseXBlucc6gc7zBrRm/vLU5iuJXNnfMaLBgWuP8Fp4VAKFki
	 TEquiWZ8tMa9g==
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 8FD4A383B62
	for <usrp-users@lists.ettus.com>; Thu, 11 Aug 2022 15:28:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="DxdzGK/I";
	dkim-atps=neutral
Received: by mail-qt1-f180.google.com with SMTP id a4so9571886qto.10
        for <usrp-users@lists.ettus.com>; Thu, 11 Aug 2022 12:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=QwxRbrF9XjK6jD8SP+/UH/1to9j+gKo0j2fNQ/B1Wuk=;
        b=DxdzGK/IcXK0V8oVYx6Q58Og32jzChWkoklJar3BeU0gLk0AL4GOm8VaR8bUUJNY4G
         F7pT2+YjNqQ4OCnAcnZqoPWAf5bmJBhLTR1qpFZ7mCJM/RfJZk7w50+4e59YolmiyUPd
         Zd+7SJ/iSX9JEe6MLDf0Eucm6CU8Wccqzxh/hd5mp5OYiyv2O+T83tz1MiIi/2o7M9Wg
         iMKnHjMN/O0dW5ucAsBV3914Go7HBAKE8GovDy9DUB7bkI/gFhZi3vXotWet356XpeI0
         1TQt7JZ4D1F4SyHQit/NZ6XMK5M0xvO6qw1Sl/eMGyK8G/5ncsee3io11pGNiVfQo863
         VHeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=QwxRbrF9XjK6jD8SP+/UH/1to9j+gKo0j2fNQ/B1Wuk=;
        b=eB0ZSQgE4EaqiUlMPEdzFQnO07eAJH4Jench/sUTRx95W8icV/6aWoDxeIaJm/BE0o
         dS6tA+/3zCC9+jc2IbqQdana2nj0XU5F36lwtAMg5U06uh+NuZ/tpn7IVx+op64zeWMm
         pOVQOwB51L/mMiRwkqym1dLe4hS5cwyMgGipIw42WooNhWMkaJvMzNu5EGZTkg+yYbjz
         AyxKue5KiuSfnzf4xvzVCxaD3VmAAlOEdkdOUSFNwjtj9Fgi9YmHGBpTcBjDWKzXWaQW
         3TwYlJGQO5eN8CFxS6QjCGxHg4lgv8SkBvcy8Mc6V9f1FpgX0rwqFdvn2RNCMY9SbZV9
         ilCw==
X-Gm-Message-State: ACgBeo3P0t3cjfnRveSRN7b3evx2EEEjNhdV555kizcE8JzgvNPI/0GQ
	+bbC+5g06sXc2f2rY7VhmTpLt7RzQ0jAAaS2DdG8mfH7zwREbgFD
X-Google-Smtp-Source: AA6agR7amyxTJiAV3Cs5ZUwqijPOAXeMD/sB9iuvUmTRAQFGZt3aC7kwezu4NSIp95zC0shj6bFYar9maYC0erasOrs=
X-Received: by 2002:ac8:580a:0:b0:342:e5f6:705c with SMTP id
 g10-20020ac8580a000000b00342e5f6705cmr596167qtg.181.1660246088987; Thu, 11
 Aug 2022 12:28:08 -0700 (PDT)
MIME-Version: 1.0
References: <mtr81IbAxeWOaSum8S1wMmtW4TQZJ0Wju7QPxw2RQ@lists.ettus.com>
In-Reply-To: <mtr81IbAxeWOaSum8S1wMmtW4TQZJ0Wju7QPxw2RQ@lists.ettus.com>
From: Wan Liu <wan.liu@ettus.com>
Date: Thu, 11 Aug 2022 15:27:58 -0400
Message-ID: <CAOcXSJw18ykwzXXEBGVA=GSz037=mij1t+VF0M9wPDjZXMr7oA@mail.gmail.com>
To: skyung@nrel.gov
Message-ID-Hash: OR65UCNATF6IV5GX72TX7OIPKWVGOAZJ
X-Message-ID-Hash: OR65UCNATF6IV5GX72TX7OIPKWVGOAZJ
X-MailFrom: wan.liu@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TDD with N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OR65UCNATF6IV5GX72TX7OIPKWVGOAZJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3185218978440560084=="

--===============3185218978440560084==
Content-Type: multipart/alternative; boundary="0000000000005fc88e05e5fc2aa7"

--0000000000005fc88e05e5fc2aa7
Content-Type: text/plain; charset="UTF-8"

Hello Skyung,

Can you please explain what each N310 is doing in this set up?

The reason you would sync two N310s using external sources like 10 MHz
clock ref, PPS, or GPSDO is to ensure that baseband samples are aligned, or
use cases like MIMO or TDOA. I am not sure about time source sync using
NTP...
N310 also has ethernet-based sync using the White Rabbit protocol over
optical cables, see this app note
https://kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the_USRP%E2%84%A2_N3xx_Devices.
However, I'm not aware that sync over NTP is a feature.

Internally, there are two AD9371 transceivers, which can be synchronized
using the built-in clock system for MIMO operation.

Regards,

Wan

On Thu, Aug 11, 2022 at 3:03 PM skyung--- via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
>
> I am deploying Open Air Interface 5G with USRP n310s and just want to
> verify something.
>
> So the question is - for the communication using FDD between a base
> station and UE, two n310s should be synced through an external time source
> (such as NTP), right?
>
> Or should the internal clock source suffice?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005fc88e05e5fc2aa7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello Skyung,<br><br></div>Can you please explai=
n what each N310 is doing in this set up?<br><br></div><div>The
 reason you would sync two N310s using external sources like 10 MHz=20
clock ref, PPS, or GPSDO is to ensure that baseband samples are aligned,
 or use cases like MIMO or TDOA. I am not sure about time source sync=20
using NTP...<br></div><div>N310 also has ethernet-based sync using the Whit=
e Rabbit protocol over optical cables, see this app note <a href=3D"https:/=
/kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the_USRP%E2%84%A2_N3x=
x_Devices" target=3D"_blank">https://kb.ettus.com/Using_Ethernet-Based_Sync=
hronization_on_the_USRP%E2%84%A2_N3xx_Devices</a>. However, I&#39;m not awa=
re that sync over NTP is a feature.<br><br></div><div>Internally, there are=
 two AD9371 transceivers, which can be synchronized using the built-in cloc=
k system for MIMO operation.<br><br></div><div>Regards,<br><br></div><div>W=
an</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Thu, Aug 11, 2022 at 3:03 PM skyung--- via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi all=
,</p><p><br></p><p>I am deploying Open Air Interface 5G with USRP n310s and=
 just want to verify something.</p><p>So the question is - for the communic=
ation using FDD between a base station and UE, two n310s should be synced t=
hrough an external time source (such as NTP), right?</p><p>Or should the in=
ternal clock source suffice?</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005fc88e05e5fc2aa7--

--===============3185218978440560084==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3185218978440560084==--
