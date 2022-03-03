Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F08A4CB82E
	for <lists+usrp-users@lfdr.de>; Thu,  3 Mar 2022 08:54:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 46D24384B58
	for <lists+usrp-users@lfdr.de>; Thu,  3 Mar 2022 02:54:43 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="E5lIWxBh";
	dkim-atps=neutral
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 9C5E8384541
	for <usrp-users@lists.ettus.com>; Thu,  3 Mar 2022 02:53:39 -0500 (EST)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-2d07ae0b1c0so46038187b3.2
        for <usrp-users@lists.ettus.com>; Wed, 02 Mar 2022 23:53:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=CvRhlKWpSUeHPxFpBq6TXoBl59Ku8fbbrhT+SseTrvY=;
        b=E5lIWxBhgP8Biksx28A+ssKaDuKCXHCzS0r3Sa1IqNd/XeeseToRgguQcfY4+l65eB
         Hfp31y4Po9AWOHL3hVoRnM3WVDmaVYAEtTobenpJF/1UfrMiSgkTCCVfv7in5ElZ7o7k
         DioJTbqxDKtJKcK7GG6Bsu5m3nX9RKVAw2gREiPV6Cmk4wRupzsiGLTfa/kP+3ep/4kQ
         94g9UXx9WNqhV39GeP8wKB7ipTeSgXtKMIsYOfojvxHFwqi7FhPCeBz5+qYRluYdznkA
         ggNmPYalAbcKe6oTYcI3MSKXp1TgHJF6DdZsEej0Dxc/DcGE9fbfvWU8vsg1D45b0gmE
         xQHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=CvRhlKWpSUeHPxFpBq6TXoBl59Ku8fbbrhT+SseTrvY=;
        b=0ludzQPG7NiWX+oO47VfhZmNTeBU1hKeOshN/M4UxbzCYRZfoDmmfuEokm9yJRcnfC
         CU/7cXg8x9Lqot5LvC+Rvs4ryduHWXhA3rpb6APPv6uoiWBqTFTTZowoNLxCo9bFkc26
         svM7eMZ4SqN0QwUv09Vt13PrA5LZhwltn0uqP7rKs7qIeERsG7bPuE5a9OHHTxXVaW73
         VtrN8e54j3c683oA2PkFPjTsEt41xs2M/7pDiU1OHz4eU8FP4ZUl5J8sSOfib3z6hYQN
         iwbuwHo8l5Cl8RJVfj1llPW1OD3MS3UrrXD9cYdRbsrYBAPIhlhZ1E/aNkZwCvx6uMmm
         iEtQ==
X-Gm-Message-State: AOAM533BmNcYMfAgiOUDzIkGRjboZrsCdld/QWIDECMRPwZqyK6YQfIY
	8I3D8pONrjHyjAENU436cwzCavmKhP+Bg4xIUr/cWGj4
X-Google-Smtp-Source: ABdhPJxijufrnBuYIoZI28eJYyyo5wl7xEp75DG382j2GGXbPKGHOxEgGBDNs1PjEvr+mh7IsoxAFy+1DbkdeTqZHjg=
X-Received: by 2002:a81:1947:0:b0:2db:79bf:9663 with SMTP id
 68-20020a811947000000b002db79bf9663mr19786504ywz.259.1646294018861; Wed, 02
 Mar 2022 23:53:38 -0800 (PST)
MIME-Version: 1.0
From: rouba zeitoun <roubazeitoun@gmail.com>
Date: Thu, 3 Mar 2022 09:53:27 +0200
Message-ID: <CAHqKquzTK=JtmcEXrBJy_dDODYvYHnf_Y-XXGimrDhv87ompLg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: EQGO7YG7TTSLMISZW2EX4XPEKSL3LDGM
X-Message-ID-Hash: EQGO7YG7TTSLMISZW2EX4XPEKSL3LDGM
X-MailFrom: roubazeitoun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Transmission problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EQGO7YG7TTSLMISZW2EX4XPEKSL3LDGM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0077057471670873014=="

--===============0077057471670873014==
Content-Type: multipart/alternative; boundary="00000000000030ae9705d94bb2a3"

--00000000000030ae9705d94bb2a3
Content-Type: text/plain; charset="UTF-8"

Dear USRP experts


I am currently working on a project that consists of sending live stream
video from one SDR to another with GNURadio (on the transmitter side I am
using USRP N210 and on the receiver i am using hackrf). I am also using
Gstreamer to create a pipeline between 2 computers.

Unfortunately, I am repetitively facing the same problem where after 30 sec
a message pops up

*" WARNING debug information: gstbasesink.c(2902):
gst_base_sink_is_too_late ():
/GstPlayBin:playbin/GstPlaySink:playsink/GstBin:vbin/GstXvImageSink:xvimagesink0:*

*There may be a timestamping problem, or this computer is too slow "*

and the receiver stops receiving the video. I tried decreasing the bitrate
which allowed longer sending time but it still stops after a while.

What advice can you give me to solve this problem?

the commands i used on terminals are:

*for Tx:* gst-launch-1.0 -v v4l2src device="/dev/video0" ! videoconvert !
x264enc tune=zerolatency bitrate=300 ! mpegtsmux ! filesink
location=video1.ts

*for Rx:* gst-play-1.0 video3.ts


Thank you in advance !

--00000000000030ae9705d94bb2a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div style=3D"font-size:12.8px" dir=3D"auto"><div style=
=3D"width:380.19px;margin:16px 0px"><div><div dir=3D"rtl"><p dir=3D"ltr" st=
yle=3D"margin-bottom:0in;line-height:16.512px">Dear USRP experts</p><p dir=
=3D"ltr" style=3D"margin-bottom:0in;line-height:16.512px"><br></p><p dir=3D=
"ltr" style=3D"margin-bottom:0in;line-height:16.512px">I am currently worki=
ng on a project that consists of sending live stream video from one SDR to =
another with GNURadio (on the transmitter side I am using USRP N210 and on =
the receiver i am using hackrf). I am also using Gstreamer to create a pipe=
line between 2 computers.</p><p dir=3D"ltr" style=3D"margin-bottom:0in;line=
-height:16.512px">Unfortunately, I am repetitively facing the same problem =
where after 30 sec a message pops up</p><p dir=3D"ltr" style=3D"margin-bott=
om:0in;line-height:16.512px"><b>&quot; WARNING debug information: gstbasesi=
nk.c(2902): gst_base_sink_is_too_late (): /GstPlayBin:playbin/GstPlaySink:p=
laysink/GstBin:vbin/GstXvImageSink:xvimagesink0:</b></p><p dir=3D"ltr" styl=
e=3D"margin-bottom:0in;line-height:16.512px"><b>There may be a timestamping=
 problem, or this computer is too slow &quot;</b></p><p dir=3D"ltr" style=
=3D"margin-bottom:0in;line-height:16.512px">and the receiver stops receivin=
g the video. I tried decreasing the bitrate which allowed longer sending ti=
me but it still stops after a while.</p><p dir=3D"ltr" style=3D"margin-bott=
om:0in;line-height:16.512px">What advice can you give me to solve this prob=
lem?</p><p dir=3D"ltr" style=3D"margin-bottom:0in;line-height:16.512px">the=
 commands i used on terminals are:</p><p dir=3D"ltr" style=3D"margin-bottom=
:0in;line-height:16.512px"><b>for Tx:</b>=C2=A0gst-launch-1.0 -v v4l2src de=
vice=3D&quot;/dev/video0&quot; ! videoconvert ! x264enc tune=3Dzerolatency =
bitrate=3D300 ! mpegtsmux ! filesink location=3Dvideo1.ts</p><p dir=3D"ltr"=
 style=3D"margin-bottom:0in;line-height:16.512px"><b>for Rx:</b>=C2=A0gst-p=
lay-1.0 video3.ts<br></p><p dir=3D"ltr" style=3D"margin-bottom:0in;line-hei=
ght:16.512px"><br></p><p dir=3D"ltr" style=3D"margin-bottom:0in;line-height=
:16.512px">Thank you in advance !<br></p></div></div></div><div style=3D"he=
ight:0px"></div></div><br></div>

--00000000000030ae9705d94bb2a3--

--===============0077057471670873014==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0077057471670873014==--
