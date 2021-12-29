Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B46944815CD
	for <lists+usrp-users@lfdr.de>; Wed, 29 Dec 2021 18:31:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 530F63846AE
	for <lists+usrp-users@lfdr.de>; Wed, 29 Dec 2021 12:31:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KSM6CzaL";
	dkim-atps=neutral
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	by mm2.emwd.com (Postfix) with ESMTPS id ABC3138464B
	for <usrp-users@lists.ettus.com>; Wed, 29 Dec 2021 12:29:59 -0500 (EST)
Received: by mail-ot1-f54.google.com with SMTP id 45-20020a9d0a30000000b0058f1a6df088so29235784otg.4
        for <usrp-users@lists.ettus.com>; Wed, 29 Dec 2021 09:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=3qLsnV7h6Q9gl7JQQXErnGaZlaG6L87E+aUxNZperdE=;
        b=KSM6CzaL+W/ZwmTLxFd6zX17xTmNAOr/QVbznLlVI5grHvfv5O/Gv0dIGMUgkFNNhB
         QxPJQUwEbtSavPZEdmM8tyu+aWpS1ZmGoVDhjtSFgs5NUXr33epkZwhCe67Jts89Mj1Y
         4aYhvfZaJ76oaIpHiyHRhsdhRGHuer9NEDhM6voS+amjnSynUngyLmzBXn4wErl1gnex
         6fdzdYimAkFo3wMP18qExdZEIAF+e8VZ80hohiW+3XS4Qd31kPoQrg/encyp7VIwntDd
         yD1g/1Q9KsHJxZ6jPKILso0SbBYSF3Db1Hs2W1O385yXKEisjSpDGfRZvOE/c/NsvRVe
         hchA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=3qLsnV7h6Q9gl7JQQXErnGaZlaG6L87E+aUxNZperdE=;
        b=ZruK6gEQikjxvmsxwgN8OolYEOXmqq4ujdyDlAYNrjRkmLlNdJHCrnki2y5mcBRKz3
         7Ltsj/VxItPB8uX6i6d/SH2avF6D2mt2Q0eLGKSgxDzoxtC7hbSA26HUoC9fNXC8nL9R
         d5645kUdB4SXcGT4lqt8SBoxbJfUBw3dxsbZvItY9r8qKgeIseQtmeIAS1lbeto2hpXK
         MMgsAHQ/4QUw5xqKiSNQiM0g0PKspf8O4xFlPylxE4i+VCvh/pHHS4yVkNDYId+gtd8i
         8b0CPmaj4uBZY+K9NKqgm09VJ2Jjq4AHT4b+vgelV+vAVoj3HaTyI8ocV5MkF5XA9IDy
         qLzQ==
X-Gm-Message-State: AOAM531Zua8xkui10nwzGbxwB78+syTiiUGfTP3evJk/oaiRkGqg3iU0
	crUIV1Pn5B0OlpmX9ga8d4Fbb7JocLSprNg0+uuQxFEu
X-Google-Smtp-Source: ABdhPJz7GVfdoHtcZNchQhKnOsAif2cXNrpQVuQwpEzp8kihpL3D7LxHa7KrCzS/KBWyFZx7iuPd/kGhtjV5nayWcpE=
X-Received: by 2002:a05:6830:1285:: with SMTP id z5mr20190109otp.180.1640798998755;
 Wed, 29 Dec 2021 09:29:58 -0800 (PST)
MIME-Version: 1.0
From: Temir Karakurum <temirkarakurum@gmail.com>
Date: Wed, 29 Dec 2021 20:29:47 +0300
Message-ID: <CANP_axLR7UeZZ5sUCuaJXpr0fV+Yt5S_9nkLPU62h0tmzbbkpQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: KLIDQUBH2QMDV6E7GCW5MBUGVI2NR3ZN
X-Message-ID-Hash: KLIDQUBH2QMDV6E7GCW5MBUGVI2NR3ZN
X-MailFrom: temirkarakurum@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E330 and rx-only USRPs
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KLIDQUBH2QMDV6E7GCW5MBUGVI2NR3ZN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1458972869406540312=="

--===============1458972869406540312==
Content-Type: multipart/alternative; boundary="00000000000077fc2505d44c4957"

--00000000000077fc2505d44c4957
Content-Type: text/plain; charset="UTF-8"

Hi there,

I recently came across a presentation by Matt Ettus at grcon16
<https://youtu.be/kEAkIfWViQo?t=1254>, where he introduces E330 as a
receive-only alternative for E-series USRPs. I checked Ettus store as well
as googled for some info about E330 but could not find anything useful. Has
it ever been offered as a product by Ettus or NI?

As a general question, most of my applications are receive-only in nature
(spectrum monitoring etc.) and usually Tx channels of the USRPs end up
redundant. Is it possible to purchase rx-only devices?

Best regards,
Temir

--00000000000077fc2505d44c4957
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi there,<div><br></div><div>I recently came across a pres=
entation by Matt Ettus at <a href=3D"https://youtu.be/kEAkIfWViQo?t=3D1254"=
>grcon16</a>, where he introduces E330 as a receive-only alternative for E-=
series USRPs. I checked Ettus store as well as googled for some info about =
E330 but could not find anything useful. Has it ever been offered as a prod=
uct by Ettus or NI?</div><div><br></div><div>As a general question, most of=
 my applications are receive-only in nature (spectrum monitoring etc.) and =
usually Tx channels of the USRPs end up redundant. Is it possible to purcha=
se rx-only devices?</div><div><br></div><div>Best regards,</div><div>Temir<=
/div><div><br></div><div><br></div></div>

--00000000000077fc2505d44c4957--

--===============1458972869406540312==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1458972869406540312==--
