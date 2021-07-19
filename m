Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B023CCD27
	for <lists+usrp-users@lfdr.de>; Mon, 19 Jul 2021 06:38:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 86DA5383E74
	for <lists+usrp-users@lfdr.de>; Mon, 19 Jul 2021 00:38:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FrE3l21J";
	dkim-atps=neutral
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	by mm2.emwd.com (Postfix) with ESMTPS id E5810383D91
	for <usrp-users@lists.ettus.com>; Mon, 19 Jul 2021 00:37:42 -0400 (EDT)
Received: by mail-il1-f170.google.com with SMTP id s5so7821548ild.5
        for <usrp-users@lists.ettus.com>; Sun, 18 Jul 2021 21:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=S1MLPzDFpvsA8+rdCDTzYD9iN0eh6yxKYwPWLavFjHM=;
        b=FrE3l21JfVyG+WgBkuVW9DO9Tb52ngh8grnYJBiwqgo7BT8+LrtiyVIarfYnLdsoB0
         oHH1UZMHwhmO54Gll3v6mOHrlBKLuqnGj6Tu7l84fFEEFJMICCnSPUxzFg5yeW1RF2/x
         R6hlyvkCHljs5WzqvMYuUsYZ+23zqGKz4H+gD0oUyv6y+x11P62RlKk6rDefI4/fEdCA
         l6OmGYdp7lXWL3+N7yZuyRGlYL1hUApIdcoYBcfgWa0CwRR+dq7yvCAXQfS0IVuP1gUf
         nsbpVFRt28L+02B+8gu7SH1BIOOPtad2/0jUxb1a59Rqt2F6c8lRlukHUbP6sadamnWq
         +ftw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=S1MLPzDFpvsA8+rdCDTzYD9iN0eh6yxKYwPWLavFjHM=;
        b=CEc54GQCI6otlmZiIWSgzgAdg0udNXwQxuQMzqiNOWsEZD2RGLjRZaQvd95Xu79RJE
         OHtUYrhrGwteL3LXTu5hqA6gmxZ5Y7bFI6FgZn6jYGkgSGJ/w4wU/WrUF9nXFakDKAEe
         5kVw9BkZmt8DVKXSG6XQEYj+1PpY65AamTz7okEhcMYcWlChDxQlJQSb+RvXv9UIDwf5
         zYa0mEOUy9Q8WvbKB8D8ggvnJLBlLkIKS9EzHsg8tAxRQODJzQyVFKqTzTbYmJzO/UOa
         HFJFoSaWXVkN2JOHQkLXEhr1qMMk0axkTW753CP96sYqxuiGSK7Cv5Os84vz4m7/M0iF
         sfsA==
X-Gm-Message-State: AOAM530x1vucyqf5/9I9jJsL9WiKoeW9DXo8a/PFS7FhsMAmAQj5OzLA
	pWIKo62OhZxQia0OiXAXJvWY8PyOBq5fl3J+WJaAjGoK4zU=
X-Google-Smtp-Source: ABdhPJyTCewm+8Zbuzfw6BWbacp4KZNvlWReq2/jWIvAZxOoZ/I8f7M3GmaZaQxs9wEkNpd88QwnjkqkU/jOCul1eAc=
X-Received: by 2002:a92:7f0f:: with SMTP id a15mr4104203ild.245.1626669462073;
 Sun, 18 Jul 2021 21:37:42 -0700 (PDT)
MIME-Version: 1.0
From: wan <liuwsdr@gmail.com>
Date: Mon, 19 Jul 2021 00:37:31 -0400
Message-ID: <CABNzRJkKcuoxoUJ3HULOM5o6sLC4Nw2+xnz+LdNwEh3t_Fcs8g@mail.gmail.com>
To: Ettus Mail List <usrp-users@lists.ettus.com>
Message-ID-Hash: YXLEQZCSSSVLC7CLWUHEDTTIIGRXPBT2
X-Message-ID-Hash: YXLEQZCSSSVLC7CLWUHEDTTIIGRXPBT2
X-MailFrom: liuwsdr@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Is UHD supposed to keep running after detecting overrun?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YXLEQZCSSSVLC7CLWUHEDTTIIGRXPBT2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1430879448255766480=="

--===============1430879448255766480==
Content-Type: multipart/alternative; boundary="00000000000074374405c7727f5b"

--00000000000074374405c7727f5b
Content-Type: text/plain; charset="UTF-8"

Hello,

When UHD detects an overrun, is it supposed to keep going or freeze? I'm
using an USRP B200mini. I tested it with the rx_ascii_dft and the uhd_fft
GRC example using different versions of UHD on Ubuntu 20.04. When using UHD
3.15.0, an overrun is detected, the application keeps running and prints a
sequence of "O" to the terminal. However, when I use UHD 4.0.0.0 and
4.1.0.1, as soon as an overrun is detected, the ascii or gnuradio QT
displays stop updating.

Regards,

Wan

--00000000000074374405c7727f5b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br><br></div>When UHD detects an overrun,=
 is it supposed to keep going or freeze? I&#39;m using an USRP B200mini. I =
tested it with the rx_ascii_dft and the uhd_fft GRC example using different=
 versions of UHD on Ubuntu 20.04. When using UHD 3.15.0, an overrun is dete=
cted, the application keeps running and prints a sequence of &quot;O&quot; =
to the terminal. However, when I use UHD 4.0.0.0 and 4.1.0.1, as soon as an=
 overrun is detected, the ascii or gnuradio QT displays stop updating.<br><=
br></div><div>Regards,<br><br></div><div>Wan<br></div></div>

--00000000000074374405c7727f5b--

--===============1430879448255766480==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1430879448255766480==--
