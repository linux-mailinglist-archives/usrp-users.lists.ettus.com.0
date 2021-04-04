Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D12C835361C
	for <lists+usrp-users@lfdr.de>; Sun,  4 Apr 2021 03:55:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C7E75384408
	for <lists+usrp-users@lfdr.de>; Sat,  3 Apr 2021 21:54:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="SgEpBktX";
	dkim-atps=neutral
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 84E42384168
	for <usrp-users@lists.ettus.com>; Sat,  3 Apr 2021 21:54:10 -0400 (EDT)
Received: by mail-vs1-f49.google.com with SMTP id d65so407973vsd.6
        for <usrp-users@lists.ettus.com>; Sat, 03 Apr 2021 18:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xTM5VSN/8kLkAa2KnpjfeP7CSWsxjVAwSE8z+yPNVIc=;
        b=SgEpBktXtKdzgx34V+y2MWJbXbboSiQ1kRDm1xJFfb6lRmvUaogrFRP9rhhMTmn1oc
         8DKWdg7IfyRvL5q3fV6yN6/A6IRkov0N2+UW/gypKzVrDgaNTA7tkhY6gYo0NHQHSwfm
         E05UzUXgPv6BJgiDJH4/P0CUGuuGBQFtH9c5g5xV93Nwu8suSy5PnWpOzSclN1KeeoDZ
         uTlSFt1vadP4kvG3qRttJldJheokyVJMMc++FcI0AshneQKW4sAPSSXTGYzq6COx8lJE
         HyvKpBdWdPX7p68Asz7bRqXwnbU0dh4OkNQ/VXnW0l7c81VMdqsqHuWtVCM0zQIdX50x
         sJ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xTM5VSN/8kLkAa2KnpjfeP7CSWsxjVAwSE8z+yPNVIc=;
        b=thTDOi/U/k1dbFcPWAc7kQ8/fDVPtpVWd2NXpwkOXMKKje7iUww29RcDdemhwKBwg4
         ZNvi5nRUXKbJ5ksPqiiTswF06r6LiaN7J5pS1Imem/p+IjmcP8vNfNllbqDqA4XFTTkJ
         1b+CmLE95P/W9LxvdqrxrKB4idj97I5EDksx2vl2cwaxBIN+rp+5FX5lmECD325aGoB4
         uYhkzV1uKk3Gflb0aFlBoi4fP2emB+Hx3D6S4DikUkIxc6YxNawk2iQaeEsOD8YNMd1W
         N2dXvjivaAdnHxKSW+40bJV3NALC2ycT8o8P4RFHAIMZWAHuOU662BETqyZ6NW2cQRyI
         LY4w==
X-Gm-Message-State: AOAM531unZ7fVgX15dAFihvd1dz2ejxZmbryxPG7vYzRkawDuBtYK+rT
	PAbTYuBnCUIVYkpcMqDiFf2lTcjIXPMZdfWImbrTLw==
X-Google-Smtp-Source: ABdhPJwdHSTPUels6HxQ930HIzXORUj1OpQKl8OxJ5r0Tqw2JrmMBj0XlJngOzjZv1yktFhvEn8Hb4tCb3tQx/DvygY=
X-Received: by 2002:a67:6916:: with SMTP id e22mr12398943vsc.32.1617501249889;
 Sat, 03 Apr 2021 18:54:09 -0700 (PDT)
MIME-Version: 1.0
References: <VzOXFcDgpLQrzie4B8oLBWdmeURHe7Je39ATuwbCJvM@lists.ettus.com>
In-Reply-To: <VzOXFcDgpLQrzie4B8oLBWdmeURHe7Je39ATuwbCJvM@lists.ettus.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Sun, 4 Apr 2021 11:53:58 +1000
Message-ID: <CALNMZ8UoxaHVy2PCTWQUHb2L_k9MTD-v-vczwkwhMZrpeYt-wg@mail.gmail.com>
To: pageheller@gmail.com
Message-ID-Hash: VHPPFCKZ36P6EAUHAPWS6JVOAOUBWXIV
X-Message-ID-Hash: VHPPFCKZ36P6EAUHAPWS6JVOAOUBWXIV
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem with interfacing Raspberry Pi 4 to USRP B210 with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VHPPFCKZ36P6EAUHAPWS6JVOAOUBWXIV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1922631424501684631=="

--===============1922631424501684631==
Content-Type: multipart/alternative; boundary="0000000000006c794005bf1bdb47"

--0000000000006c794005bf1bdb47
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Page,

Yes, working with Linux can certainly be "character building" sometimes!

I would be very grateful if you could share your install instructions with
me.  I have made some progress today using Ken's suggestion -- I can detect
the USRP using the "uhd_usrp_probe" utility -- but I am still struggling to
get the Python API to work.

Regards,
Brendan.


On Sat, Apr 3, 2021 at 11:59 PM <pageheller@gmail.com> wrote:

> Ken and Branden, I have UHD running on a Raspberry Pi 4 B 8Gb. It was a
> quite tedious install. It wasn=E2=80=99t missing 4-5 dependencies, but 20=
-30. It
> took me 2 weeks, 8-hours a day to figure this out. I am operating on the
> Raspberry Pi OS (formerly called Raspian). And, of course, as they upgrad=
e
> the OS, this process will only be good for a short period of time.
>
> One caveat; the pi USB 3.0 interface can=E2=80=99t quite keep up with the=
 B-210
> and I get an overflow when capturing 20MSPS on 2 channels at about 500k
> samples. I don=E2=80=99t know if this is hardware or software, but if any=
one knows
> of a solution, I=E2=80=99m all ears. Having said that, I can consistently=
 and
> reliably capture 400-500k samples sized files.
>
> I=E2=80=99d be happy to share the install instructions. They are lengthy.=
 -page
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006c794005bf1bdb47
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Page,<div><br></div><div>Yes, working with Linux can ce=
rtainly be &quot;character building&quot; sometimes!</div><div><br></div><d=
iv>I would be very grateful if you could share your install instructions wi=
th me.=C2=A0 I have made some progress today using Ken&#39;s suggestion -- =
I can detect the USRP using the &quot;uhd_usrp_probe&quot; utility -- but I=
 am still struggling to get the Python API to work.</div><div><br></div><di=
v>Regards,</div><div>Brendan.=C2=A0</div><div><br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr 3, 2021=
 at 11:59 PM &lt;<a href=3D"mailto:pageheller@gmail.com">pageheller@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><p>Ken and Branden, I have UHD running on a Raspberry Pi 4 B 8Gb. It was =
a quite tedious install. It wasn=E2=80=99t missing 4-5 dependencies, but 20=
-30. It took me 2 weeks, 8-hours a day to figure this out. I am operating o=
n the Raspberry Pi OS (formerly called Raspian). And, of course, as they up=
grade the OS, this process will only be good for a short period of time.</p=
><p>One caveat; the pi USB 3.0 interface can=E2=80=99t quite keep up with t=
he B-210 and I get an overflow when capturing 20MSPS on 2 channels at about=
 500k samples. I don=E2=80=99t know if this is hardware or software, but if=
 anyone knows of a solution, I=E2=80=99m all ears. Having said that, I can =
consistently and reliably capture 400-500k samples sized files.</p><p>I=E2=
=80=99d be happy to share the install instructions. They are lengthy.  -pag=
e</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006c794005bf1bdb47--

--===============1922631424501684631==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1922631424501684631==--
