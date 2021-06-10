Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5F13A2233
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jun 2021 04:15:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7C5F03843C8
	for <lists+usrp-users@lfdr.de>; Wed,  9 Jun 2021 22:15:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Uon8PhzK";
	dkim-atps=neutral
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 8360D384153
	for <usrp-users@lists.ettus.com>; Wed,  9 Jun 2021 22:14:46 -0400 (EDT)
Received: by mail-yb1-f182.google.com with SMTP id g142so19061536ybf.9
        for <usrp-users@lists.ettus.com>; Wed, 09 Jun 2021 19:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=dl0ROeO1uT9N0sZw3sHtA4GEIiA7EqNteXiSaD4j2qI=;
        b=Uon8PhzKNHJ7Ap0FT5tckukmTZG8R4KWCGkJOQZLI+QDojUM3eKxKRLFxkJY6rL2bG
         FKvLoLPKKJ72kSWE4eRJNUrPCqSUq5vF6yV4nlsqJUdPVBbrAseLpwwkUNHyE34NzYBl
         IanDgBdvwuubWJtDNQvdrclnrUJo2B1o7vybAWzkihooCFatpMuSc5Zx7yGBPAvYjLAZ
         9/hau20KEaLU5iyoR+6Zh9VK6+ImxIMtj5Q2X79eNgYEqBEgBnfNQhHds9GKGJ6/B46q
         JA3D/XTfH9I88cr0qSyiRGEYUVKeYLgFyRhRJmW3GdX9BHXtWvovEB2GWzGiJ+a3X+ru
         S/7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=dl0ROeO1uT9N0sZw3sHtA4GEIiA7EqNteXiSaD4j2qI=;
        b=InfGBYvHpeLXjwjcEozj/nFXWgBd9Sbpbn+xCWsKTrMj4nAuJ8Bevo8bKaDzbUOJfx
         Ry45OIbk/zfehL5/18TtstKqkc942yw3hxb8FzY2V+YagpZTC48Gy6EaaXf/xKCdh34q
         fTUEVP5O4MnhQWdpwY0bExFMX0Kpy6dQYqwC8DP3pZ1ddSC61wbMmfuyb4wlIVk5TCl4
         nzgyhwMOXYzRucuE1Ne+HyL1FhzMt3jKLF1bLnW2b3GZBsSyOJh631TKprkj1ks/+yIS
         njxaWuSTpExXEstudRRXochM4tJ5NNKl7qwsjS8+Wwdv+qvhs3xfWWq5KGXtj3gm/W7u
         wySw==
X-Gm-Message-State: AOAM530AbGhbD/59n2wa2A+IyFiJP4LMl6SImrewsMqgM5A3QVII9JT9
	3Q9tjWPsX4spyHIgXkuk2fHHfRjY4y+maU/MYsv3p5ly
X-Google-Smtp-Source: ABdhPJzvAvJFD34MJ6ens+A9PhsM2yjhw4c19zvJl/3f9fPdhlAXYduiMbT1uo2+0STQCBEJ0dBs1I1halVSlKSR1ws=
X-Received: by 2002:a25:2e43:: with SMTP id b3mr4263007ybn.152.1623291285687;
 Wed, 09 Jun 2021 19:14:45 -0700 (PDT)
MIME-Version: 1.0
From: Kelvin Lok <kelvin.lok266@gmail.com>
Date: Thu, 10 Jun 2021 10:14:34 +0800
Message-ID: <CACSyVY3+ah-VOMt-tmLYV1L=WeD5bqwoqBdGZpukc+u3EDTYYw@mail.gmail.com>
To: "usrp-users (usrp-users@lists.ettus.com)" <usrp-users@lists.ettus.com>
Message-ID-Hash: UZZFGYZRLGKC5GF74XMQ24ABPNRUHME4
X-Message-ID-Hash: UZZFGYZRLGKC5GF74XMQ24ABPNRUHME4
X-MailFrom: kelvin.lok266@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [KeyError] for X310 on Windows 10, UHD 3.15
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UZZFGYZRLGKC5GF74XMQ24ABPNRUHME4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4210818123551168301=="

--===============4210818123551168301==
Content-Type: multipart/alternative; boundary="00000000000073518805c45ff460"

--00000000000073518805c45ff460
Content-Type: text/plain; charset="UTF-8"

I am having trouble with this error message. "*Error: LookupError:
KeyError: Unknown settings register name: DDS_FREQ*", on a X310 usrp.
I have 2 UHD installations of UHD on 2 different computers. Computer A has
internet access, Computer B does not have internet access. Both computers
use UHD 3.15 built from source (Github), running windows 10. On Computer A,
I am able to run uhd_usrp_probe.exe without any issues. On computer B I get
the DDS_Freq KeyError.

I initially thought it was an image issue, but the same x310 works on
Computer A but faces error on Computer B.

Even copying the same uhd binaries and images from A to B, and running on B
shows the same error. I also ran a cmd prompt session and reset the
environment variables for uhd_images_dir.

Any advice on what I could be doing wrong?

--00000000000073518805c45ff460
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am having trouble with this error message. &quot;<b><fon=
t face=3D"verdana, sans-serif">Error: LookupError: KeyError: Unknown settin=
gs register name: DDS_FREQ</font></b>&quot;, on a=C2=A0X310 usrp.<div>I hav=
e 2 UHD installations of UHD on 2 different computers. Computer A has inter=
net access, Computer B does not have internet access. Both computers use=C2=
=A0UHD 3.15 built from source (Github), running=C2=A0windows 10. On Compute=
r A, I am able to run uhd_usrp_probe.exe without any issues. On computer B =
I get the DDS_Freq KeyError.</div><div><br></div><div>I initially thought i=
t was an image issue, but the same x310 works on Computer A but faces error=
 on Computer B.</div><div><br></div><div>Even copying the same uhd binaries=
 and images from A to B, and running on B shows the same error. I also ran =
a cmd prompt session and reset the environment variables for uhd_images_dir=
.</div><div><br></div><div>Any advice on what I could be doing wrong?</div>=
</div>

--00000000000073518805c45ff460--

--===============4210818123551168301==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4210818123551168301==--
