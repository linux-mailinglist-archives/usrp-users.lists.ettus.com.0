Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA673EEE09
	for <lists+usrp-users@lfdr.de>; Tue, 17 Aug 2021 16:04:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EBF13383D60
	for <lists+usrp-users@lfdr.de>; Tue, 17 Aug 2021 10:04:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="VUTUWp5A";
	dkim-atps=neutral
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 0D802380E6F
	for <usrp-users@lists.ettus.com>; Tue, 17 Aug 2021 10:03:38 -0400 (EDT)
Received: by mail-il1-f174.google.com with SMTP id v16so11565488ilo.10
        for <usrp-users@lists.ettus.com>; Tue, 17 Aug 2021 07:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=xXAbcw+cPpigTsDPTwSqVs8NofU+0Huea9VcwohcAXA=;
        b=VUTUWp5AdWXR4i9nF+d0WILJ15C3KajKGq7cZixF2w5cTmXAv50cNdKUhSUYBgil4V
         wu1OabybF+tlF6QAs42p5tBM0yCFhQkRTm0CzFQLtMUBczbdMzs2KXBCItT7tEoVlduE
         usuExZ68XNu8XKwBkLGMeuOXmOdGSUILf+5cmrvFHTgrjidkLYns97rUjby/H4CKCb5z
         xNR3m1GC1KaP3B3s5JA9mMZZbdO/QJdy8C5fu/2q02B0g2E4ROOgX4fn0lmsbBNynO5K
         8R1pJrjLC2Qho0VNE+IfaUHbwkpHsrtDm+pLkSlHWki2GQfnD6AZRhCbYfUFVa8NccHF
         qtWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=xXAbcw+cPpigTsDPTwSqVs8NofU+0Huea9VcwohcAXA=;
        b=AvSNFeykvDvHKXjX5XNh9mLwPEjlBFdIByX6XOEwIBvqMSayesUFYRhop9FeYlJmeJ
         2Y7RQ01u+8DCa09qT5+LmilsSaPQGzss20MGF2ECut+WthznIqp+q6n+zj/tCDqMbzLp
         GCTGtANt3zMPvCebwKuyWmlaO2AYg9c0gWWMLiKeQO0goC8DAGoB7evxm07vn1h+N8sq
         qZXOJ66yHjp0gfZ5KumEpPECCmVHsxSbtO6xc9vMxHIG9oReDvhmnYF6DG2i0elWi8fF
         J0xVOHD4Xeznjk0DSiQWuTU+H3dqnmv7OGLJVkVZ6n8slx28joNJWwxvBU8iq2GCotDX
         0DXA==
X-Gm-Message-State: AOAM532/WVAve51w9pnFBxAX7/+CPHXtyoD3GgPjG8Dm13ukjm9G7NB1
	PcTQBUx975D7q/Sv7LrAq2EmKW+c64MvQl7WfaHS5vYfKZ7mlBM6
X-Google-Smtp-Source: ABdhPJy2YdqfAFXii9/0CJuELYZxB23sSCsPBnquOs2vDAcRAxk92xamou34rfb4H66N+CPyNuepgRLyKWbKEr9VWZY=
X-Received: by 2002:a92:d112:: with SMTP id a18mr2473508ilb.34.1629209018006;
 Tue, 17 Aug 2021 07:03:38 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Tue, 17 Aug 2021 09:03:02 -0500
Message-ID: <CACaXmv8QYVpr++jrRm6m7beLC5qz-CfHwi34WgHMPuN1wmPb1g@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: PCSGC3S5B7JD5PERKCOETELJK5NYBZ6L
X-Message-ID-Hash: PCSGC3S5B7JD5PERKCOETELJK5NYBZ6L
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Reminder -- NEWSDR 2021 -- This Friday August 20 (in three days!)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PCSGC3S5B7JD5PERKCOETELJK5NYBZ6L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5048217848953493327=="

--===============5048217848953493327==
Content-Type: multipart/alternative; boundary="000000000000c890e705c9c1c897"

--000000000000c890e705c9c1c897
Content-Type: text/plain; charset="UTF-8"

Reminder -- NEWSDR 2021 -- This Friday August 20 (in three days!)

NEWSDR will be running in three days on Friday August 20, from 9:00 AM to
5:30 PM EDT (Boston time).

Registration is now closed, but several segments of the event will be
livestreamed on YouTube.

Please see the links below for the event agenda and the livestream video.

https://newsdr.org/workshops/newsdr2021/

https://www.youtube.com/watch?v=ha1MGHAjhf0

--Neel Pandeya

--000000000000c890e705c9c1c897
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Reminder -- NEWSDR 2021 -- This Friday August 20 (in three days=
!)<br><br>NEWSDR will be running in three days on Friday August 20, from 9:=
00 AM to 5:30 PM EDT (Boston time).<br><br>Registration is now closed, but =
several segments=C2=A0of the event will be livestreamed on YouTube.<br><br>=
Please see the links below for the event agenda and the livestream video.<b=
r><br><a href=3D"https://newsdr.org/workshops/newsdr2021/">https://newsdr.o=
rg/workshops/newsdr2021/</a><br><br><a href=3D"https://www.youtube.com/watc=
h?v=3Dha1MGHAjhf0">https://www.youtube.com/watch?v=3Dha1MGHAjhf0</a><br><br=
>--Neel Pandeya<br></div><div class=3D"gmail_default" style=3D"font-family:=
verdana,sans-serif"><br></div></div>

--000000000000c890e705c9c1c897--

--===============5048217848953493327==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5048217848953493327==--
