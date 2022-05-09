Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D09525203C7
	for <lists+usrp-users@lfdr.de>; Mon,  9 May 2022 19:48:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B7DC83846C8
	for <lists+usrp-users@lfdr.de>; Mon,  9 May 2022 13:48:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652118536; bh=Nf/FkZuzJaAipHgljeNoM2mZrBeBFyJvenLwy2RNfaQ=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=HmIFf+/IMp2y8t/mZylZSd47UqeylNn1wWOqKK0m9SPc7LpgbNq446kta9jiMW9YK
	 FfVRD2LoD4GU+LA2v1JLWYxpBcpwq3GjwQqOPtflWHo9LuvsBEOhjYrIvUTbjOCRQ+
	 TFHC7Ym6vnzYA/CiFwjSI2rJD6nap4RgB4jiW4go3cPD5H8S98iF7qCz03v8jKi5T7
	 +caFCvFmUPcoM/z0uZgGvZOMfzrr8mW3AYRPgrFKP2epVmoox5iZCjfE0uFlNubZBG
	 +Rh6WBe08XR3+sDfSm0TYgbqVfB/nawyrpz3UEQof1jw7xb/I3bzETQd43se9XsgnB
	 lcxjLRRikKMMA==
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 863693845BA
	for <usrp-users@lists.ettus.com>; Mon,  9 May 2022 13:47:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="oO1V8H0k";
	dkim-atps=neutral
Received: by mail-yb1-f175.google.com with SMTP id r11so26310708ybg.6
        for <usrp-users@lists.ettus.com>; Mon, 09 May 2022 10:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=JdrDRuZWDYo82zy6U3oYHfMb+CFc7n1+F0qe7wKSEm4=;
        b=oO1V8H0kNEsWq/1S/o46Bmexogo3ImQFkD6qW4WaO+MzggCkOpRAsXzUV0kOHLirBl
         Crf6vUuzO1/2LprM/pIuGhEFEjJCDQF4raU5S2D15OCSz/Hu+HgrzQ/it4ZKmq8o8qEb
         sviLDohpwwa2WUa+9syR7QSCi85HuMb5/Kh/gBR05JGRAEeOa1vr2YqOztk8MH1MnRXb
         VxZR41b9mbCJQhX10mnz29jNsl8Ps5IOCDMX8MyBJ3VTa+nDUyVR8GVYNH0SkHaXJJ43
         ajts99uUPC4Pmwy2Kw1m1TukL1FGOYU9+0MxZZx+BNgCh4fjyzl36e9qB3KL3MtxnulN
         6UBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=JdrDRuZWDYo82zy6U3oYHfMb+CFc7n1+F0qe7wKSEm4=;
        b=v1vtJQVvDEP8ftW0BQfY87wchhm618kQziRPhfK8vHPxDhRiMMWLTuxxN4E+gRy6EZ
         TUgtvN+0ZLIL6bakI4Rb6ZEsiJ5KLWfQ/HnpDZJrkLEceDob/TpE1GlRHtGTfEqHU8sh
         ZMvOLB0icOMzGBqSAZqXrrsbv4Vtet9AA0JOv9oxuRfR56aw6KikhvBZLmo9RjbyRm1a
         eDFsAu2Z+h6FBiALTYSqWJI1c4b2iLv7u9Z96YTg40gmv0O9LevQKCGXiSYo1KwjDWe0
         T9nBbvWJ4jbxa1ld2mDksLc7QnJpmGiro6AtYScGPcYTnVZU9SDQ9VVrIcek2ildMmpL
         m0Xw==
X-Gm-Message-State: AOAM530mU2eD0VBse83hqUeXF6ST43XjWfVH2/yggdZ7YTW/aAF5KvhI
	fBB5ZrsVPsNuu4qCh40NK1H/XtqYMcivDoy5kxdFD8OKbeshrY32
X-Google-Smtp-Source: ABdhPJwku6oZLG54iTJHUefpWcdjr8eTUcPCtAdh40gOaPYOs7G+U1zI9b6LWIEtlkUqlxai9SZcI6bgd8EjqFL2rS8=
X-Received: by 2002:a05:6902:389:b0:633:31c1:d0f7 with SMTP id
 f9-20020a056902038900b0063331c1d0f7mr13728311ybs.543.1652118471586; Mon, 09
 May 2022 10:47:51 -0700 (PDT)
MIME-Version: 1.0
From: Dario Pennisi <dario@iptronix.com>
Date: Mon, 9 May 2022 19:47:40 +0200
Message-ID: <CAKHaR3mBss-wbZwXS0gCAkQb_rBJQgpCAOba=mcPQ5ZEOGRvsQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 3ZYTPP4VAP5P2J4UDTMWRXTOGSXTRGLS
X-Message-ID-Hash: 3ZYTPP4VAP5P2J4UDTMWRXTOGSXTRGLS
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] issue with x4xx build with kas
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3ZYTPP4VAP5P2J4UDTMWRXTOGSXTRGLS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1756668891614842612=="

--===============1756668891614842612==
Content-Type: multipart/alternative; boundary="000000000000a04a8f05de97ce93"

--000000000000a04a8f05de97ce93
Content-Type: text/plain; charset="UTF-8"

Hi,
i'm trying to build x4xx system image with kas. first of all let me flag
that recent kas versions moved to an incompatible gcc version so nothing
would build. after reverting to kas 2.6.3 i can build successfully for n310
however building for x410 would result in the following error:

| install: cannot stat
'/build/tmp-stm32-baremetal/deploy/images/ni-titanium-ec-rev5/ec-titanium-rev*.bin':
No such file or directory
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of
'/build/tmp-glibc/work/all-oe-linux/linux-firmware/1_20190815-r0/temp/run.do_install.1106'
failed with exit code 1:
| install: cannot stat
'/build/tmp-stm32-baremetal/deploy/images/ni-titanium-ec-rev5/ec-titanium-rev*.bin':
No such file or directory
| WARNING: exit code 1 from a shell command.
|
ERROR: Task
(/work/oe-core/meta/recipes-kernel/linux-firmware/linux-firmware_20190815.bb:do_install)
failed with exit code '1'

i tried building ni-titanium-ec from source with bitbake ni-titanium-ec but
that doesn't work. also i see that in the repo there's bbappend that copies
rev4 files straight to the filesystem so i wonder why the recipe is looking
for them as compiled artifacts.
 the recipe looking for these is actually in oe-core and the hash checked
out is forced in base.yml so i doubt that is the issue... can you please
shed some light?
thanks,

Dario

--000000000000a04a8f05de97ce93
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<br clear=3D"all"><div><div dir=3D"ltr=
" class=3D"gmail_signature"><div><font color=3D"#000000" face=3D"Calibri, s=
ans-serif"><span style=3D"font-size:13.3333px">i&#39;m trying to build x4xx=
 system image with kas. first of all let me flag that recent kas versions m=
oved to an incompatible gcc version so nothing would build. after reverting=
 to kas 2.6.3 i can build successfully for n310 however building for x410 w=
ould result in the following error:</span></font></div><div><font color=3D"=
#000000" face=3D"Calibri, sans-serif"><span style=3D"font-size:13.3333px"><=
br></span></font></div><div><font color=3D"#000000" face=3D"Calibri, sans-s=
erif"><span style=3D"font-size:13.3333px">| install: cannot stat &#39;/buil=
d/tmp-stm32-baremetal/deploy/images/ni-titanium-ec-rev5/ec-titanium-rev*.bi=
n&#39;: No such file or directory</span></font></div><div><font color=3D"#0=
00000" face=3D"Calibri, sans-serif"><span style=3D"font-size:13.3333px">| W=
ARNING: exit code 1 from a shell command.</span></font></div><div><font col=
or=3D"#000000" face=3D"Calibri, sans-serif"><span style=3D"font-size:13.333=
3px">| ERROR: Execution of &#39;/build/tmp-glibc/work/all-oe-linux/linux-fi=
rmware/1_20190815-r0/temp/run.do_install.1106&#39; failed with exit code 1:=
</span></font></div><div><font color=3D"#000000" face=3D"Calibri, sans-seri=
f"><span style=3D"font-size:13.3333px">| install: cannot stat &#39;/build/t=
mp-stm32-baremetal/deploy/images/ni-titanium-ec-rev5/ec-titanium-rev*.bin&#=
39;: No such file or directory</span></font></div><div><font color=3D"#0000=
00" face=3D"Calibri, sans-serif"><span style=3D"font-size:13.3333px">| WARN=
ING: exit code 1 from a shell command.</span></font></div><div><font color=
=3D"#000000" face=3D"Calibri, sans-serif"><span style=3D"font-size:13.3333p=
x">|=C2=A0</span></font></div><div><font color=3D"#000000" face=3D"Calibri,=
 sans-serif"><span style=3D"font-size:13.3333px">ERROR: Task (/work/oe-core=
/meta/recipes-kernel/linux-firmware/linux-firmware_20190815.bb:do_install) =
failed with exit code &#39;1&#39;</span></font></div><div><font color=3D"#0=
00000" face=3D"Calibri, sans-serif"><span style=3D"font-size:13.3333px"><br=
></span></font></div><div><font color=3D"#000000" face=3D"Calibri, sans-ser=
if"><span style=3D"font-size:13.3333px">i tried building ni-titanium-ec fro=
m source with bitbake ni-titanium-ec but that doesn&#39;t work. also i see =
that in the repo there&#39;s bbappend that copies rev4 files straight to th=
e filesystem so i wonder why the recipe is looking for them as compiled art=
ifacts.</span></font></div><div><font color=3D"#000000" face=3D"Calibri, sa=
ns-serif"><span style=3D"font-size:13.3333px">=C2=A0the recipe looking for =
these is actually in oe-core and the hash checked out is forced in base.yml=
 so i doubt that is the issue... can you please shed some light?</span></fo=
nt></div><div><font color=3D"#000000" face=3D"Calibri, sans-serif"><span st=
yle=3D"font-size:13.3333px">thanks,</span></font></div><div><font color=3D"=
#000000" face=3D"Calibri, sans-serif"><span style=3D"font-size:13.3333px"><=
br></span></font></div><div><font color=3D"#000000" face=3D"Calibri, sans-s=
erif"><span style=3D"font-size:13.3333px">Dario</span></font></div></div></=
div></div></div>

--000000000000a04a8f05de97ce93--

--===============1756668891614842612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1756668891614842612==--
