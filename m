Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A05903AA4CE
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 21:56:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9D40E384FA4
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 15:56:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qkIIs4KX";
	dkim-atps=neutral
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 2BBF238466B
	for <usrp-users@lists.ettus.com>; Wed, 16 Jun 2021 15:55:47 -0400 (EDT)
Received: by mail-il1-f179.google.com with SMTP id p14so3378499ilg.8
        for <usrp-users@lists.ettus.com>; Wed, 16 Jun 2021 12:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rNf0oafXzNABYyBhOEfjSbm4DjNm4M9TyEq/4ps0NZ0=;
        b=qkIIs4KXsgeuNYzecOzLUJybIwv/M/tJ0fHKnXkSE2bgiZXNGD6crsbj4An+ORB+oL
         LzbRivCRck0AI00YnGJ0BKRuogkF8ZQ1erZoufyUjMv63yCC8FeFpKfHVZXbAhjTiDim
         XqdeKXqI1cQrAV5LR/OzgARAcQelkoKTmP1/jK97VxiL+11SKAgACvz/m1HErlD+99U7
         /80AGyQEJE37r1vUIYCPR30QVcaEHVUnIaPz/pwEtdVNtoLSKF2WZjOBV5eM5X1KwHpv
         gscSdKzNr/8YLp+BSeatcmA+k0yvLKmb5TKt84koHo+ad5jqQXziChZTr9/dk3KVrEs6
         vTxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rNf0oafXzNABYyBhOEfjSbm4DjNm4M9TyEq/4ps0NZ0=;
        b=KW19omcm55LlSdXqiPE2dnqi46+OY30E3571WQkPGEJ8bv9hDQEJ9GqhPeD3aA+DJD
         uHC68EbjB86R4qyLtPUVqYRbJE7s2grg9yvM0vHpfSQiQwn4uEudg60IvOWRftKH5A8f
         0nVz2IWf6aPgQaaO74JCASRpRpY70hAxguZNOmQ7IIQV3P+j8sNF+9ApGgnu8igV6FVi
         UUJe/uPaZIivyly2GKVOwo0tpjRZVXcq3MyG7s0ufWqMyj9pcIzYRpcGN5XTMHk/8mMf
         zprCtgckP2Uvjht3cQb/J2TbNtH8QxW6fokORnl72+BeBpKkSBrGLn6nY61KqyEkmq2O
         dYcQ==
X-Gm-Message-State: AOAM530zFpquPo4RI1g3ukDMBcGb6xC+LOaUS2g44YrnSKK4zCudE5Wi
	nI0YyNlo8f506QmjZxtuRseC04JeCBFvsWivHu4=
X-Google-Smtp-Source: ABdhPJwQprPnX7lJ8+2pPKrDHRu8jZ9s8LU1YUifeco8vZyLx4HrOxXXRMaloEDuOQ8R8/7FxNrIK62k58zDrqUv6tE=
X-Received: by 2002:a92:d94c:: with SMTP id l12mr910092ilq.272.1623873347188;
 Wed, 16 Jun 2021 12:55:47 -0700 (PDT)
MIME-Version: 1.0
References: <grTKaFDyytdw5hl7xIThdrniDHpj648Hlo7Oa6rkj4@lists.ettus.com>
In-Reply-To: <grTKaFDyytdw5hl7xIThdrniDHpj648Hlo7Oa6rkj4@lists.ettus.com>
From: Nick Foster <bistromath@gmail.com>
Date: Wed, 16 Jun 2021 12:55:36 -0700
Message-ID: <CA+JMMq-Xd74mjxv6QDJceb5NqJ13naif7J5jrB-tZ49HiMajNw@mail.gmail.com>
To: paradis@kwesst.com
Message-ID-Hash: 3UKGVWUYKM4FUM7UNOAGN74QKROHMTHJ
X-Message-ID-Hash: 3UKGVWUYKM4FUM7UNOAGN74QKROHMTHJ
X-MailFrom: bistromath@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: is there a UHD v4.0.0.0 for Ubuntu 20.04 LTS?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3UKGVWUYKM4FUM7UNOAGN74QKROHMTHJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5650520114473742977=="

--===============5650520114473742977==
Content-Type: multipart/alternative; boundary="00000000000004fa0205c4e77a10"

--00000000000004fa0205c4e77a10
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I haven't seen PPA updates
<https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd> from Ettus since
4.0 was released, and nothing has been upstreamed into Ubuntu Focal. Looks
like you're going to have to build it. Ettus has bitbake recipes here:

https://github.com/EttusResearch/meta-ettus/tree/zeus/meta-ettus-core/recip=
es-support/uhd

...but that will involve replacing your whole root filesystem (and
wrestling with Bitbake, which should not be underestimated).

If your SBC has significant horsepower and already has dev tools installed,
you could consider compiling it locally instead. If it takes a day to
compile, it will probably be several days less than the time you'll take
setting up and using Bitbake. =3D)

You could also get real weird: One Neat Trick (TM) to get fast compiles on
existing embedded filesystems is to remotely mount the lib directories
(/lib, /usr/lib, and /usr/local/lib, at least) you'll be linking against
(sshfs is good for this), and then do the same with include directories
(local versions of the same headers are fine, if your remote system is
space constrained). Then write a CMake toolchain file which tells CMake to
look for those libraries and headers, and to use the ARM cross-compiler.
This does work, although it takes a lot of setup.

Nick

On Wed, Jun 16, 2021 at 12:27 PM <paradis@kwesst.com> wrote:

> It=E2=80=99s an ARM SBC. I completely didn=E2=80=99t think about that whe=
n I was copying
> files over, and you=E2=80=99re right, the libs on my laptop will definite=
ly not
> work on the SBC.
>
> So back to my original question=E2=80=A6Is there a binary package for UHD=
 v4.0.0.0
> for ARM that I can just install on this SBC and not have to build from
> source? Or do i have to build from source on the SBC to get the proper UH=
D
> v4.0.0.0 libs?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000004fa0205c4e77a10
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I haven&#39;t seen <a href=3D"https://launchpad.net/~=
ettusresearch/+archive/ubuntu/uhd">PPA updates</a> from Ettus since 4.0 was=
 released, and nothing has been upstreamed into Ubuntu Focal. Looks like yo=
u&#39;re going to have to build it. Ettus has bitbake recipes here:</div><d=
iv><br></div><div><a href=3D"https://github.com/EttusResearch/meta-ettus/tr=
ee/zeus/meta-ettus-core/recipes-support/uhd" target=3D"_blank">https://gith=
ub.com/EttusResearch/meta-ettus/tree/zeus/meta-ettus-core/recipes-support/u=
hd</a></div><div><br></div><div>...but that will involve replacing your who=
le root filesystem (and wrestling with Bitbake, which should not be underes=
timated).<br></div><div><br></div><div>If your SBC has significant horsepow=
er and already has dev tools installed, you could consider compiling it loc=
ally instead. If it takes a day to compile, it will probably be several day=
s less than the time you&#39;ll take setting up and using Bitbake. =3D)<br>=
</div><div><br></div><div>You could also get real weird: One Neat Trick (TM=
) to get fast compiles on existing embedded filesystems is to remotely moun=
t the lib directories (/lib, /usr/lib, and /usr/local/lib, at least) you&#3=
9;ll be linking against (sshfs is good for this), and then do the same with=
 include directories (local versions of the same headers are fine, if your =
remote system is space constrained). Then write a CMake toolchain file whic=
h tells CMake to look for those libraries and headers, and to use the ARM c=
ross-compiler. This does work, although it takes a lot of setup.<br></div><=
div><br></div><div>Nick<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 16, 2021 at 12:27 PM &lt;<a hr=
ef=3D"mailto:paradis@kwesst.com" target=3D"_blank">paradis@kwesst.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>It=
=E2=80=99s an ARM SBC. I completely didn=E2=80=99t think about that when I =
was copying files over, and you=E2=80=99re right, the libs on my laptop wil=
l definitely not work on the SBC.</p><p>So back to my original question=E2=
=80=A6Is there a binary package for UHD v4.0.0.0 for ARM that I can just in=
stall on this SBC and not have to build from source? Or do i have to build =
from source on the SBC to get the proper UHD v4.0.0.0 libs?</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000004fa0205c4e77a10--

--===============5650520114473742977==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5650520114473742977==--
