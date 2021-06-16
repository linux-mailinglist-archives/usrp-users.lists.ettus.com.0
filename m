Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9B73AA270
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 19:34:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 081C2384340
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 13:34:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TzKSPhvv";
	dkim-atps=neutral
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	by mm2.emwd.com (Postfix) with ESMTPS id C7698384285
	for <usrp-users@lists.ettus.com>; Wed, 16 Jun 2021 13:33:32 -0400 (EDT)
Received: by mail-lf1-f45.google.com with SMTP id q20so5634353lfo.2
        for <usrp-users@lists.ettus.com>; Wed, 16 Jun 2021 10:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=PoTd0nvwSCydVzTzoyrQ7SlTreWXQzzucHCnQNCwmWc=;
        b=TzKSPhvvZllEgb7e/xhsv++iluJXd+ggjL7mEHKCaMpc1xERu5wayyPbos5IL4mhoB
         HKlbowdG1cBmpgBtXqOpI1J/39vFYkUKzI3EVg2DcNwcH5WYpbaciIRb2WTNsojVYcL/
         fKQOcTgpFc8vhOz7cloMicSJcfnF/8fulonbciJCIRQBsVIGaiX7cGGJ2ql8n7kERhbE
         NC87RhwGB2obKIujZqoZKJCkCBhSykj3pxs1CNUFZhjIzMnvVAyVU28g+yo06OhZX4T5
         nDb3CCf89BsR2yCgIl/5Zv6IrLMdWTqNxJcWCUv/JQz6KWeL7YkrW65K+7fvbidSR3LU
         wJrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=PoTd0nvwSCydVzTzoyrQ7SlTreWXQzzucHCnQNCwmWc=;
        b=RgHlBBU1IaluWS8AMJep01TVRVX9+ghs51umrOR659dR8XhenkdHe8vjoT4AH7mMoR
         pn8TgtA4Hh4rRo/rr27T84cwZOhW0bu8cuyOxSwkVEt0ocRIfIvM5txjAnv9Z+krddG/
         8Ep58l/kYrYRkyLfemDpPVIX5U5XpKAIeV8Od3mj2al6PDTIDbveKdVTwtKncJC4CXdq
         w+7i5G8IHvqTqQyzDi0bqDzPrDxtXw7p/HxcfYd9JOaqvo/dJbripQwPKAYJIfZSGCA2
         ncKZfT3xeU9LWul2y2u2b/1zJtyaomGK8sj/B7u4sXSkQwSq3oeTL5mEr6OREYwg0uvD
         pxXA==
X-Gm-Message-State: AOAM5324WRQG6bxSgiCrOV6l2mU0QH9W4ywHfdCfWeHcey+EmHLYWDT6
	2y0H5UNnnAxnaAYVszNaDmJapu4NwFEILjc3xVPxcQyJ+k3fDw==
X-Google-Smtp-Source: ABdhPJy4+yM86QJuU4uJ+FYuT08Z+aVk9K7YFTTtLamjwBUcB8GsHmDpkHuoYcQDIwIAB0xNFz7X4YITpJnjG4+3NBs=
X-Received: by 2002:ac2:53b8:: with SMTP id j24mr617034lfh.292.1623864811031;
 Wed, 16 Jun 2021 10:33:31 -0700 (PDT)
MIME-Version: 1.0
From: Cameron Matson <ncmatson95@gmail.com>
Date: Wed, 16 Jun 2021 12:33:19 -0500
Message-ID: <CAGLr63sjiDtx3SpTzAP7vo1zQLaOOd8J9uLXgO9rbRcCXiY6hw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: PVTGQCGAWZ2J4WDEHPLRN2OD3QOZW4ZT
X-Message-ID-Hash: PVTGQCGAWZ2J4WDEHPLRN2OD3QOZW4ZT
X-MailFrom: ncmatson95@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] ettus e312 file system images and gnuradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PVTGQCGAWZ2J4WDEHPLRN2OD3QOZW4ZT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4740856825487246043=="

--===============4740856825487246043==
Content-Type: multipart/alternative; boundary="00000000000039907b05c4e57d48"

--00000000000039907b05c4e57d48
Content-Type: text/plain; charset="UTF-8"

Hello all,

I'd like to run gnuradio flowgraphs on an e312 in embedded mode.  My
understanding is that to do this the gnuradio and uhd versions that I build
the flowgraph with on my host machine must match that of the embedded
environment on the e312.

I'd like to use gnuradio 3.8 and uhd 3.15.  I've installed gnuradio and uhd
(in this case on mac via macports), but when I use the
uhd_images_downloader tool the .sdimg image I get has gnuradio 3.7.  I'd
like to avoid building a custom file system.  Is there an already built
image that meets my needs or am I out of luck?

Also I noticed the uhd docs say:

"7. E310 filesystem no longer contains GNURadio by default. Custom
filesystems are need to run GNURadio."


I'm a little confused what that exactly means as I have recent images with
gnuradio installed.  Does this mean literally the e310 (as opposed to e312)
or is this what I'm running into in the sense that there's only the much
older gnuradio 3.7?

In general what is the intended workflow for using the e312 in embedded
mode if not via gnuradio flowgraphs?

Thanks for your help,

Cameron

--00000000000039907b05c4e57d48
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello all,</div><div dir=3D"ltr"><br></di=
v><div dir=3D"ltr">I&#39;d like to run gnuradio flowgraphs on an e312 in em=
bedded mode.=C2=A0 My understanding is that to do this the gnuradio and uhd=
 versions that I build the flowgraph with on my host machine must match tha=
t of the embedded environment=C2=A0on the e312.<div><br></div><div>I&#39;d =
like to use gnuradio 3.8 and uhd 3.15.=C2=A0 I&#39;ve installed gnuradio an=
d uhd (in this case on mac via macports), but when I use the uhd_images_dow=
nloader tool the .sdimg image I get has gnuradio 3.7.=C2=A0 I&#39;d like to=
 avoid building a custom file system.=C2=A0 Is there an already built image=
 that meets my needs or am I out of luck?</div><div><br></div><div>Also I n=
oticed the uhd docs say:</div><blockquote style=3D"margin:0px 0px 0px 40px;=
border:none;padding:0px"><div>&quot;7. E310<span style=3D"color:rgb(0,0,0);=
font-family:Roboto,sans-serif;font-size:14px"> filesystem no longer contain=
s GNURadio by default. Custom filesystems are </span>need<span style=3D"col=
or:rgb(0,0,0);font-family:Roboto,sans-serif;font-size:14px"> to run GNURadi=
o.&quot;</span></div></blockquote></div><div dir=3D"ltr"><div><br></div><di=
v>I&#39;m a little confused what that exactly means as I have recent images=
 with gnuradio installed.=C2=A0 Does this mean literally the e310 (as oppos=
ed to e312) or is this what I&#39;m running into in the sense that there&#3=
9;s only the much older gnuradio 3.7?</div><div><br></div><div>In general w=
hat is the intended workflow for using the e312 in embedded mode if not via=
 gnuradio flowgraphs?</div><div><br></div><div>Thanks for your help,</div><=
div><br></div><div>Cameron</div></div></div>

--00000000000039907b05c4e57d48--

--===============4740856825487246043==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4740856825487246043==--
