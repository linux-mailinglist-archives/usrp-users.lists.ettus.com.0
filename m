Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA7798FE96
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2024 10:07:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3445738549D
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2024 04:07:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728029225; bh=+G+QMCigFBZK+lSKGYEaD+HUxvhRok/0cKUFm0BayW8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=KGNrZtFNpE3Lr58d1LezREyEDl4HZgxe1TBYwPi/ASA6Tj2z6QeDQ8cxpaPA19Mpc
	 bi7czNAjkEzzi80hZv6qTAWBul8lt3Pl85rYtXvc3ptRAV2G1gGnyrOJT1YhwLTugB
	 +lR9PPCV9jjvxK0JEbfCfTtPGjNL8Fu/cUL5LCFAv1bFFqE7voMZrxIKI4K2xcItk+
	 JcH31YeGC9Rj1PrmnQ5g4/eFUy0kDGJpORtMx5rAlUKEJMq0XhA71/UwNkJ1e1bPst
	 EnVGpC3oGq9DiSmYIRWu5q7innQ5JKoYZyLiUHS2nYxd4zIQnB/BVV0JZ+xlkiTLCZ
	 hfzRDSGK+AoVQ==
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 38107384FEC
	for <usrp-users@lists.ettus.com>; Fri,  4 Oct 2024 04:06:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="BgZ8ftG5";
	dkim-atps=neutral
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2fad5024b8dso22693161fa.1
        for <usrp-users@lists.ettus.com>; Fri, 04 Oct 2024 01:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1728029168; x=1728633968; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3C61C8ae9xtP/fAa5AtrPYDJep7sockEEW4wfvKSpq0=;
        b=BgZ8ftG5YbTBxmPAmJsPQtl/W5t/LEipDSzs6ZlGA6Aeh+uWj5QWoOuH4dwOqY8zrr
         mLckGRHmlQGoYxwxZNDWqgiLWw30/x4xFVO9KMe6fyZ2dzYFfXJF+0gthsGuKQLwmwDI
         bQJay6IiqcVYb+0zX6++N4VcbqgSYk2zETCpDxdG/WmTvMbZ4xDP+qVJBcqUL/4w2QWs
         dC/YpncZwlk2KTNhzG0JYZCvLM34eNN16YgT3mWuD9KkuWe+ki4fA9dFJFQGZ6cTqg45
         oi2WZYVQ2+zVFmJl9s0sG8CNt+WmdnDjZuwwFo6fnjlGzBa7JiT6EVaUFtu2mNjSbCer
         teVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728029168; x=1728633968;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3C61C8ae9xtP/fAa5AtrPYDJep7sockEEW4wfvKSpq0=;
        b=GyFpzsla6lobzYF6nZ9Hb5EMyqM1PFIdf/at2MYxwPgBy383yl405kM3s0nW/v5tTs
         XahFNQIfPOADhfwVuJeCtVFc1swNco1Udrb2eu5RvNf5L0dLTrsTIxdLNAwF/TtfrEWQ
         Az14jDprgfm2JUC+smQ/c+NVuoCzvHnImDdwPEBX1YzbEh0S2CeP8yfwDGXIl5bUG8gy
         YiIJj/VH/J4dZB0ilzgywVJQDCeKr1Efvv66A6R7KGRHEoNt8rdtFwe9DJ1lALoOMiIH
         SO4CgozX7T5mL3Iv6fDvN/xBAuGhyV/20Dm+PKDhGuoysrIJr8Kn0lXeEyQLhyPkBfZJ
         8bJQ==
X-Gm-Message-State: AOJu0YxY/BKyWpflwn/AVfMOKsUTEjLxeXYosdtUtW3aM0MycJGuhUx+
	169VcKUrpRpR55uKyifsS1kCFo1UjZNR9JkIEjlMNwUaS0zgXgGFdCte2HH9AhQVUv2+CA/oE/d
	gkhKrtpxVn6LWf/VnnoBvCTYr5M7k5SVWX5ImznX8
X-Google-Smtp-Source: AGHT+IFei0QiGJhYH2/1eIYx0OHCtsvyc9uo0vqxmp/i/2AHAy7Gp7ssoodrYkv1fUVBJKnMnFjbpLwg+3r8ix/V/5A=
X-Received: by 2002:a05:651c:b23:b0:2fa:de52:f03c with SMTP id
 38308e7fff4ca-2faf3bffecemr9666911fa.5.1728029167543; Fri, 04 Oct 2024
 01:06:07 -0700 (PDT)
MIME-Version: 1.0
References: <xzaQoHIu2CzfYQhv1k6dWjIyYNZTVnRgDFE7bbj8Dc@lists.ettus.com>
In-Reply-To: <xzaQoHIu2CzfYQhv1k6dWjIyYNZTVnRgDFE7bbj8Dc@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 4 Oct 2024 10:05:56 +0200
Message-ID: <CAFOi1A49Pvy8Mw7q=8r6ziQi-NR=mGEOf=cekyamJ7mjKJoNbg@mail.gmail.com>
To: mruane@silveredge-gs.com
Message-ID-Hash: HJZ5MI6KEL3SI2VCAMDJCBGDPXWD6DUH
X-Message-ID-Hash: HJZ5MI6KEL3SI2VCAMDJCBGDPXWD6DUH
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HJZ5MI6KEL3SI2VCAMDJCBGDPXWD6DUH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7726942366495932241=="

--===============7726942366495932241==
Content-Type: multipart/alternative; boundary="000000000000b18d030623a22475"

--000000000000b18d030623a22475
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Be advised that bad configurations of kernel and/or FPGA (or device tree
info) can lead to boot loops which are pretty annoying to auto-fix.

--M

On Thu, Oct 3, 2024 at 6:21=E2=80=AFPM mruane--- via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Piotr,
>
> This was especially important when dealing with kernel and bootloader. As
> I didn=E2=80=99t have much experience with editing kernel and u-boot sour=
ces, it
> was indispensable to be able to check my changes and applied patches
> quickly (the additional difficulty was that I didn=E2=80=99t have a X410 =
to see in
> action how things should work).
>
> I have ZERO experience modifying the bootloader. I=E2=80=99ve used TFTPBo=
ot
> before, for bootloader, kernel, and rootfs, and it worked well. I=E2=80=
=99ve never
> mounted a remote rootfs over NFS, or loaded the bootloader over JTAG. I s=
aw
> some places in the code where you made some NFS- and JTAG-related changes=
.
> I was thinking I would not use that stuff because I have a board on my
> desk, but=E2=80=A6mounting the eMMC over USB, unzipping the ext4.tar.gz, =
and
> overwriting the correct partition on the eMMC is a REAL pain. And it=E2=
=80=99s only
> a matter of time before I brick the device because I was rushing through
> the steps.
>
> My setup consisted of NFS server hosting rootfs and TFTP server for
> kernel. The bootloader was loaded through JTAG. This way I for example wa=
s
> able to make a script that: compiled and installed new kernel with the
> board turned off or in not working state, tried to boot it, check if syst=
em
> started correctly and return the result to git bisect. This way (after so=
me
> fine-tuning) I was able to run =E2=80=98git bisect=E2=80=99 and wait for =
it to find a
> commit where the board started to work. If you are interested how to
> configure what I=E2=80=99ve described - ask.
>
> Ok=E2=80=A6THAT is a great idea. I=E2=80=99ve been avoiding =E2=80=98git =
bisect=E2=80=99 all this time.
> Hahaha I=E2=80=99ll feel guilty for asking how you set that up, but I thi=
nk I will
> be too curious not to.
>
> You know, with a little scripting, it might be possible to remotely
> monitor something on the board that gives an indication of whether it
> successfully booted, like RESET BOARD, WAIT FOR N SECONDS, PING BOARD=E2=
=80=A6, and
> then automatically tell =E2=80=98git bisect=E2=80=99 to keep going or not=
. If you were only
> looking for a successful boot, and you weren=E2=80=99t worried about what=
 the exact
> failures were, you could just launch it and work on something else. Hahah=
a
> Sometimes being lazy can be a lot of work for me.
>
> Mike
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b18d030623a22475
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Be advised that bad configurations of kernel and/or F=
PGA (or device tree info) can lead to boot loops which are pretty annoying =
to auto-fix.</div><div><br></div><div>--M<br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 3, 2024 at 6=
:21=E2=80=AFPM mruane--- via USRP-users &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><p>Hi Piotr,</p><blockquote><p>Thi=
s was especially important when dealing with kernel and bootloader. As I di=
dn=E2=80=99t have much experience with editing kernel and u-boot sources, i=
t was indispensable to be able to check my changes and applied patches quic=
kly (the additional difficulty was that I didn=E2=80=99t have a X410 to see=
 in action how things should work).</p></blockquote><p>I have ZERO experien=
ce modifying the bootloader.   I=E2=80=99ve used TFTPBoot before, for bootl=
oader, kernel, and rootfs, and it worked well.   I=E2=80=99ve never mounted=
 a remote rootfs over NFS, or loaded the bootloader over JTAG.   I saw some=
 places in the code where you made some NFS- and JTAG-related changes.   I =
was thinking I would not use that stuff because I have a board on my desk, =
but=E2=80=A6mounting the eMMC over USB, unzipping the ext4.tar.gz, and over=
writing the correct partition on the eMMC is a REAL pain.   And it=E2=80=99=
s only a matter of time before I brick the device because I was rushing thr=
ough the steps.</p><blockquote><p>My setup consisted of NFS server hosting =
rootfs and TFTP server for kernel. The bootloader was loaded through JTAG. =
This way I for example was able to make a script that: compiled and install=
ed new kernel with the board turned off or in not working state, tried to b=
oot it, check if system started correctly and return the result to git bise=
ct. This way (after some fine-tuning) I was able to run =E2=80=98git bisect=
=E2=80=99 and wait for it to find a commit where the board started to work.=
 If you are interested how to configure what I=E2=80=99ve described - ask.<=
/p></blockquote><p>Ok=E2=80=A6THAT is a great idea.   I=E2=80=99ve been avo=
iding =E2=80=98git bisect=E2=80=99 all this time.   Hahaha   I=E2=80=99ll f=
eel guilty for asking how you set that up, but I think I will be too curiou=
s not to.</p><p>You know, with a little scripting, it might be possible to =
remotely monitor something on the board that gives an indication of whether=
 it successfully booted, like RESET BOARD, WAIT FOR N SECONDS, PING BOARD=
=E2=80=A6, and then automatically tell =E2=80=98git bisect=E2=80=99 to keep=
 going or not.   If you were only looking for a successful boot, and you we=
ren=E2=80=99t worried about what the exact failures were, you could just la=
unch it and work on something else.   Hahaha   Sometimes being lazy can be =
a lot of work for me.</p><p>Mike</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b18d030623a22475--

--===============7726942366495932241==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7726942366495932241==--
