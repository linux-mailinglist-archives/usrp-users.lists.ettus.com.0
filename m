Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AD74150C2
	for <lists+usrp-users@lfdr.de>; Wed, 22 Sep 2021 21:53:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F193D384363
	for <lists+usrp-users@lfdr.de>; Wed, 22 Sep 2021 15:52:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="k4BLoJX0";
	dkim-atps=neutral
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 59548384E4F
	for <usrp-users@lists.ettus.com>; Wed, 22 Sep 2021 15:52:16 -0400 (EDT)
Received: by mail-ua1-f53.google.com with SMTP id u11so2664568uaw.3
        for <usrp-users@lists.ettus.com>; Wed, 22 Sep 2021 12:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CMa/7vimwHlYHwWYvk//YY0iOAWoTWNGgguOnMDB6s4=;
        b=k4BLoJX0h9dq0ogCA7rEqHK4fwW5VLbbZK3Ienin+ekLVt/Bo7F8kDq3NzOQDhcEyi
         pE1vhTWIioUCNP7SLS9EbZRRWbxE8E+EkIPpmx041ATjwMvFjQDKyAeNyGnSTdrBzp7e
         7avAFOK1bdZyH8X4ZIM68eCtLaLzza9jFr8nR/HhOyiDe+FbRgp9IuQZSbWMHkcPlAZZ
         ftnj1GdUoiIvSBjx5qyUVK8lwW3hwZ9v5jUEbZY6W8xT/3MpGVAUANlE5ge8WEktcrzg
         hrZ5tNuEzVECFE98BIRjOmQ5WgPyPI8mj19cTZ2gGqwoVTVvANySmOWHxDwdKMzw0ioQ
         vubQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CMa/7vimwHlYHwWYvk//YY0iOAWoTWNGgguOnMDB6s4=;
        b=jBZEg9frAi+ageKBlJ9WHSTC8uvAYsChv2PYghD4sgaBd6tInS0ClOIUXKITZ1BAqG
         jfJDr7zc34NAdrEKSzts5/qXHn73ieEuzBiPZkwWoTw9Eec3nOsyarbVB+uzsLyW9R/a
         jg5bzTXH84mE+5JKu+HivamT/6B7dMdhytKkKHrIGDonGC6nk557yy4z/9TC2YjoOKwT
         bxbsGNHtPfya0YFvMV9T4fiA1WQIGt5LRrvWty9uRCbTkGPDrW/xT0BoD/O5Tyko+gCY
         N2Ac+MB3n32e1kxFhaBaqhCs8OgyeZgFy6jYpkRgag/HnbgfMLxL6tXLO2GjMMWlqRRz
         x3mQ==
X-Gm-Message-State: AOAM532PjyIvIvXr91IVmuBcqSwBVs99UsDEsAb76oHsNoTfNCCCpkvM
	lzE5gsfqE10kbdXI3OgRWvxtUvhjE3n6pL6uAqDmTbMm
X-Google-Smtp-Source: ABdhPJzwRO4yMVEhzdVgzCOlORF5K+YD6h2+7/4dd7Yk9WjCJmTUxvUqtKZww0aFFGdZpioZQvN7aLyis5+VQMSFcRo=
X-Received: by 2002:ab0:4a14:: with SMTP id q20mr1319898uae.91.1632340335609;
 Wed, 22 Sep 2021 12:52:15 -0700 (PDT)
MIME-Version: 1.0
References: <bNOcxPoNGjMRy6DnYKzsLiaR8A9M4ecOOxdi1YKcM@lists.ettus.com>
In-Reply-To: <bNOcxPoNGjMRy6DnYKzsLiaR8A9M4ecOOxdi1YKcM@lists.ettus.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Wed, 22 Sep 2021 15:51:39 -0400
Message-ID: <CAL7q81sxH9=p+mLaNGv4f8ks-tKUoVe-o9wEY-vfZvTfCTHEJg@mail.gmail.com>
To: thebouleoffools@gmail.com
Message-ID-Hash: ZLW7SQPHOGKDAEN73J2RZ24Y6XAJPJTC
X-Message-ID-Hash: ZLW7SQPHOGKDAEN73J2RZ24Y6XAJPJTC
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Radio loopback / "scaling@OUTPUT_EDGE:0" error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZLW7SQPHOGKDAEN73J2RZ24Y6XAJPJTC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6604999945918450089=="

--===============6604999945918450089==
Content-Type: multipart/alternative; boundary="000000000000db5ab805cc9ad95a"

--000000000000db5ab805cc9ad95a
Content-Type: text/plain; charset="UTF-8"

Are you compiling UHD locally on the E320 or cross-compiling? Either should
work, but I would suggest flashing the SD card release from here:
https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.1.0.2/e3xx_e320_sdimg_default-v4.1.0.2.zip
.

--000000000000db5ab805cc9ad95a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Are you compiling UHD locally on the E320 or cross-compili=
ng? Either should work, but I would suggest flashing the SD card release fr=
om here:=C2=A0<a href=3D"https://files.ettus.com/binaries/cache/e3xx/meta-e=
ttus-v4.1.0.2/e3xx_e320_sdimg_default-v4.1.0.2.zip">https://files.ettus.com=
/binaries/cache/e3xx/meta-ettus-v4.1.0.2/e3xx_e320_sdimg_default-v4.1.0.2.z=
ip</a>.</div>

--000000000000db5ab805cc9ad95a--

--===============6604999945918450089==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6604999945918450089==--
