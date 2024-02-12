Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B6E851F4C
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 22:14:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 40DC7384D55
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 16:13:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707772439; bh=zNCVXZXCkGwlUXezrmaC3SzzYHWo4XQddcp1WL0s0vc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=q/o49DfMorBRLOrH02bXglQ5IuE8v0VONWRZWLuCUNf04kV99vYxp1lA1hV92S7Ps
	 UOKuYrZBcH9NN4YavnXVrRJOioEdoQsWRol2Tvj9uBEQ2Dn7zi4VAaB04s0xyflPcv
	 QikbyJgPFCgp/dPxBfmVb/mAGLTw5v0opj8ZZcQF+3L5B5mrzaNz9dIPe8P8xiguyI
	 w9gFJrReb4k9VZ1BjnpTNXnR787MhRCAHBdE+KC8Gdn3/j8q4vUHTiHmx9m+6TPmOm
	 mPZdm3HRf2VywiSOsSLMdTDVtCvUTR7Mm/w5ck8p/7U7MjaNhN3av1kEB3onG7Fi+p
	 017JLZAoAhUAg==
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 34D91384A61
	for <usrp-users@lists.ettus.com>; Mon, 12 Feb 2024 16:13:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="IlXl0/7F";
	dkim-atps=neutral
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2d0cdbd67f0so53270031fa.3
        for <usrp-users@lists.ettus.com>; Mon, 12 Feb 2024 13:13:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google; t=1707772399; x=1708377199; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pL8fLxl77P1xu7xadP0gHY33OHuk3AwL6N0CdNP+InE=;
        b=IlXl0/7FospnuXy9VA4jSoz3e3bBuwuYzvmus4epKb7grbT3M4XaCgJ8fcncrNh0+o
         cy8reVMeN6EMsq7/SLx5qRG6Hsl/3fZP4HJuujGtlIMNsXwYAdjvJHazdtS0x2rA9mLY
         a1gGOHq3+E5b2+fUMnVnAURrX60MKjnjgItrnhUpMTv6KCeq5F5Jl0R9yyT/xOCB91WX
         mffxF4dC4MapA7nQTPVRQ+iORROXRI7nTg0Q4vrFeM8J+yIgOtjh9nEEqDVe2GIBuojL
         fbc+veSjEtkSs5RMsR5ZgJWCiOJ0/p3YotgzaP5k/IKuIA0ZuUZjcjk9zFsNZLMMoQhp
         ireg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707772399; x=1708377199;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pL8fLxl77P1xu7xadP0gHY33OHuk3AwL6N0CdNP+InE=;
        b=R/gLgnkl7c7eVTxiog4WGwCSy7D37m1wPaFpzaOh5YuIHLlkAfrUO4weh11B9eBpba
         6Kryh423LdA+xEko2aWyjaF8hlLyDL84fSjGlRSP5i9hI03+mf1HItP0Isl0Uqy/kZHt
         I47Y81z3l7GuXBu27y4kxBqFj/zhXXE5u0tdTgYyheb/nEopOkg+MUo06zotad38Of1z
         9MJtbVwBM9DadlSpL+NDDGGPYjyQ3+csQji9YF5nhGDx5M8p86G+BGVLNVue2tlkUPsh
         HqLErsJgw8zHmvWlIRJNjY+cimYggLu9foJwJjwX1odDMJTDuBqDhmTBmArEdJzqv4oe
         KznQ==
X-Gm-Message-State: AOJu0YxpNtbkqCujIlqTeeW+c+DoOGZTZi49N1YhKmYEqIDHVqrx6mOk
	4bbTXzObKgy9f5bBaAEoK2+VndWVB0kEeeh3zT7bH/PMgGyey2hL06DEllLjcpNmvBjDB9Gcfgz
	AipTBw9EKfSLjryi91ZIlVQvwpa/AWWWPZu53yQ==
X-Google-Smtp-Source: AGHT+IGQ1XEyJeQDsnEFrhUph3Itlz3uNQPIRmPx+YAkJrj4R2OTx8jyriq3QRgre9KUP/Nr9n3DvS5SOcg1PLgpuUE=
X-Received: by 2002:a2e:b00d:0:b0:2d0:a4e8:afb9 with SMTP id
 y13-20020a2eb00d000000b002d0a4e8afb9mr5293154ljk.24.1707772398527; Mon, 12
 Feb 2024 13:13:18 -0800 (PST)
MIME-Version: 1.0
References: <ydTJtYzwSbHTPd2X7O9RMzkCGwqAlfBUIAKOjVf6RQ@lists.ettus.com>
 <CAKHaR3k90Bn3oXPCckYiNqToGKUmCrfW6GZPNrM+7f0JOx7SoQ@mail.gmail.com> <CAEXYVK7XetC__b5vjnoqHAsVqVU1XH-wX2LWEW4mQTJemVbniA@mail.gmail.com>
In-Reply-To: <CAEXYVK7XetC__b5vjnoqHAsVqVU1XH-wX2LWEW4mQTJemVbniA@mail.gmail.com>
From: Dario Pennisi <dario@iptronix.com>
Date: Mon, 12 Feb 2024 22:13:07 +0100
Message-ID: <CAKHaR3m81BUmSvJbh-Z3Ob6havhcq8+JNvZc=Q5sTna1_WeV1Q@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: GTCMKSIDTDTKWCPHKP3V3J4JEWMKS4QO
X-Message-ID-Hash: GTCMKSIDTDTKWCPHKP3V3J4JEWMKS4QO
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: gaytanc4@gmail.com, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adding existing RFNOC blocks in GNU Radio GUI
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GTCMKSIDTDTKWCPHKP3V3J4JEWMKS4QO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6396932922958180121=="

--===============6396932922958180121==
Content-Type: multipart/alternative; boundary="0000000000002bf69d061135bf70"

--0000000000002bf69d061135bf70
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Brian,
The issue with not using gr-ettus is the lack of rfnocmodtool which is very
handy. Also, it is my understanding that unless you move to gnuradio 3.10
even with uhd4.6 you still need gr-ettus. Am I wrong?

Dario Pennisi


Il Lun 12 Feb 2024, 20:21 Brian Padalino <bpadalino@gmail.com> ha scritto:

> On Mon, Feb 12, 2024 at 2:15=E2=80=AFPM Dario Pennisi <dario@iptronix.com=
> wrote:
>
>> You have to install gr-ettus which contains what's needed for compiling
>> OOT blocks and also installs rfnock blocks
>>
>
> My recommendation is to not start here and to start with newer software.
> Use the latest UHD and the latest GNU radio.
>
> You're starting at a dead-end path if you continue with the versions you
> currently have and require gr-ettus.
>
> Brian
>

--0000000000002bf69d061135bf70
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi Brian,</div><div dir=3D"auto">The issue with not =
using gr-ettus is the lack of rfnocmodtool which is very handy. Also, it is=
 my understanding that unless you move to gnuradio 3.10 even with uhd4.6 yo=
u still need gr-ettus. Am I wrong?</div><div><br></div><div data-smartmail=
=3D"gmail_signature">Dario Pennisi<br><br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il Lun 12 Feb 2024, 20:21 B=
rian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.co=
m</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"l=
tr"><div dir=3D"ltr">On Mon, Feb 12, 2024 at 2:15=E2=80=AFPM Dario Pennisi =
&lt;<a href=3D"mailto:dario@iptronix.com" target=3D"_blank" rel=3D"noreferr=
er">dario@iptronix.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto"><div>You=
 have to install gr-ettus which contains what&#39;s needed for compiling OO=
T blocks and also installs rfnock blocks=C2=A0</div></div></blockquote><div=
><br></div><div>My recommendation is to not start here and to start with ne=
wer software.=C2=A0 Use the latest UHD and the latest GNU radio.</div><div>=
<br></div><div>You&#39;re starting at a dead-end path if you continue with =
the versions you currently have and require gr-ettus.</div><div><br></div><=
div>Brian</div></div></div>
</blockquote></div>

--0000000000002bf69d061135bf70--

--===============6396932922958180121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6396932922958180121==--
