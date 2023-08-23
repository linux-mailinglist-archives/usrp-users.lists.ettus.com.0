Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E24C7785CBD
	for <lists+usrp-users@lfdr.de>; Wed, 23 Aug 2023 17:55:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F8D93849CD
	for <lists+usrp-users@lfdr.de>; Wed, 23 Aug 2023 11:55:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692806134; bh=ylhz3d31FOE3VpF2uSullyFqvfN6AUEm3Shqmsd5BF4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=nwXPnuWb9om8DU9HQ2yYAVXooBokLe2E3lizZJIYGAIjnrEq4F2qK3ssOwNR5+qne
	 HKX3sWeZhQH7AQ7NKOLYwQUW3R5SzlojKS5fY7mr2ME6uAvhlM2jcfyIQFBYJauWUk
	 zwqeVHE86m6F/Mh8u1dC4Mi/IZheNl+/DwNsy/rac6Pa1vupSm4UJs1Zm2+hqlwPUn
	 toqTBAC379wjPvDlinm1XtG7o2TjI+0bmCS/aOAH2thG2GtLAv7hSQ6oBmP4iPIxV+
	 BpeMafJi2zgFyVfByfaLkH8um/vGvCe30ZoABLYo08+JWOTERVBcCWrD8pMGAA+w1G
	 2PYxdb+UG7g7A==
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	by mm2.emwd.com (Postfix) with ESMTPS id C7102380C11
	for <usrp-users@lists.ettus.com>; Wed, 23 Aug 2023 11:55:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="kjeTPYLp";
	dkim-atps=neutral
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2bb99fbaebdso89785171fa.0
        for <usrp-users@lists.ettus.com>; Wed, 23 Aug 2023 08:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1692806101; x=1693410901;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mHXEjvT0ztleenPkJ1KsnJPY1pupJggEAn2h6QSqWBI=;
        b=kjeTPYLpYKIpclqQSw/Iqrc8bz4w3g9MmfnT1o9HK+Qm94nKR6qb0ELOdDYTvoZ/Cl
         xHZ6Gaxkj0ojDMvSEi2URP7Py+sQH4dYrD8zdmkX9KXaCyn6Jq/lfllDR2o6eEleWnCJ
         5OBcukz/0vGrCoj1E1U0yAAWMP2oVVp/75pOSvXSIaS5y4LBvuW+c4WKiwh6OLNNGFwM
         kQh3pRUGo0FlxLHLTMyXogjujDubJp6TzXbKciBPkdqBbXXjW1qx57dOTOpq/R4uoEg6
         0MmDS2nJv2xhd2V3EjbCWGbdCCJoNgRhnHBa6r4ciOjBYWajssfoAae50BqlZ6y4XmLw
         MPgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692806101; x=1693410901;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mHXEjvT0ztleenPkJ1KsnJPY1pupJggEAn2h6QSqWBI=;
        b=c7CJ+gevFUWd2bWdwH4CzEZPxGaSF8q0J1fFgfCwTk4lXMrceZ4jadYWX6cTxb+NtV
         RPowk+BAQTv3xZMrqDRIFlQGhSOeH3lfXY0mQXLRyYAaVJB6JM3EqhLQa0hiKkehOEDy
         BP7ahH5Lf0608lSMoe2LbsS0/2U52kb4OJjRb9PkrgO4hP9jwNUwwPt728HJ73fMXwC/
         5jgKERdhPE/Lb/kMamvqjuuN2NJxANxBiOBOhHugFyb3SZQCLw8+/tJL/GXIB5di//Rz
         zemdW1em2Yhn0ZsmLWQr6Itrgqc+D9u59W+PTpa/5yeXxWyiOc1JrLkMPESVW9nHnlD5
         UmgA==
X-Gm-Message-State: AOJu0Ywk9R5S2TKGDsRg3QEjZOAoGBgVy+keVZOQTb/TR0TW/6S+I4VA
	XifMubpEw+1tqNRb5Wy6ccb0iC71e2n8SRY5Fjd2Cqtv
X-Google-Smtp-Source: AGHT+IFqNpUAJiSKXWzvoYOaFfvxKRh2v20adgmNSqH6nyqKjwcKSeVLtRbPDGu0f/cOh1vbb+RGy8CUvO04vqRTVj8=
X-Received: by 2002:a2e:9e17:0:b0:2b5:9778:7ce2 with SMTP id
 e23-20020a2e9e17000000b002b597787ce2mr9319747ljk.15.1692806101121; Wed, 23
 Aug 2023 08:55:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PsneXGUR8nuTNCc1-3UbuUBVzo33DQETBL_-JhSXFyMWQ@mail.gmail.com>
In-Reply-To: <CAA=S3PsneXGUR8nuTNCc1-3UbuUBVzo33DQETBL_-JhSXFyMWQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 23 Aug 2023 10:54:44 -0500
Message-ID: <CAFche=hFoZGbufE37mr_EWq2XMT-ANeH9aJwCO7qs_Yyx+R3sA@mail.gmail.com>
To: sp <stackprogramer@gmail.com>
Message-ID-Hash: Z7DXWL67LKKWQTYJIB4ZA43UQVHRLHYT
X-Message-ID-Hash: Z7DXWL67LKKWQTYJIB4ZA43UQVHRLHYT
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fatal: Timeout: Test "Test passing through samples" time limit exceeded
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z7DXWL67LKKWQTYJIB4ZA43UQVHRLHYT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3109815400333787247=="

--===============3109815400333787247==
Content-Type: multipart/alternative; boundary="00000000000054d61b0603992250"

--00000000000054d61b0603992250
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A testbench timeout is intended to prevent the test from waiting forever
for something that's not working. So if it's timing out, it's either
because the timeout is too short or because the thing it's waiting for is
not happening. Try searching for the timeout message text to see where the
timeout is created and why. You can of course remove the timeout, but that
won't necessarily fix the problem.

Wade

On Tue, Aug 22, 2023 at 12:55=E2=80=AFAM sp <stackprogramer@gmail.com> wrot=
e:

> I write a custom block when i run test bench on it i faced with strange
> error,How can solve it i shared the custom rfnoc blocks
> Thanks in advance
>
> TESTBENCH STARTED: rfnoc_block_gain_tb
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> [TEST CASE   1] (t =3D         0 ns) BEGIN: Flush block then reset it...
> [TEST CASE   1] (t =3D      6400 ns) DONE... Passed
> [TEST CASE   2] (t =3D      6400 ns) BEGIN: Verify Block Info...
> [TEST CASE   2] (t =3D      6400 ns) DONE... Passed
> [TEST CASE   3] (t =3D      6400 ns) BEGIN: Verify user register...
> [TEST CASE   3] (t =3D      7725 ns) DONE... Passed
> [TEST CASE   4] (t =3D      7725 ns) BEGIN: Test passing through samples.=
..
> Fatal: Timeout: Test "Test passing through samples" time limit exceeded
> Time: 17725 ns  Iteration: 0  Process:
> /PkgTestExec/TestExec::start_timeout/Block260_9/timeout  File:
> /home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/sim/rfnoc/PkgTestExec.sv
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000054d61b0603992250
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">A testbench timeout is intended to prevent the test from w=
aiting forever for something that&#39;s not working. So if it&#39;s timing =
out, it&#39;s either because=C2=A0the timeout is too short or because the t=
hing it&#39;s waiting for is not happening. Try searching for the timeout m=
essage text to see where the timeout is created and why. You can of course =
remove the timeout, but that won&#39;t necessarily=C2=A0fix the problem.<di=
v><br></div><div>Wade</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Tue, Aug 22, 2023 at 12:55=E2=80=AFAM sp &lt;=
<a href=3D"mailto:stackprogramer@gmail.com">stackprogramer@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr">I write a custom block when i run test bench on it i faced with s=
trange error,How can solve it i shared the custom rfnoc blocks=C2=A0<div>Th=
anks in advance<br><div><br></div><div>TESTBENCH STARTED: rfnoc_block_gain_=
tb<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>[TEST CASE =C2=A0 1] (t =3D =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 0 ns) BEGIN: Flush block then reset it...<br>[TEST CASE =C2=A0 1=
] (t =3D =C2=A0 =C2=A0 =C2=A06400 ns) DONE... Passed<br>[TEST CASE =C2=A0 2=
] (t =3D =C2=A0 =C2=A0 =C2=A06400 ns) BEGIN: Verify Block Info...<br>[TEST =
CASE =C2=A0 2] (t =3D =C2=A0 =C2=A0 =C2=A06400 ns) DONE... Passed<br>[TEST =
CASE =C2=A0 3] (t =3D =C2=A0 =C2=A0 =C2=A06400 ns) BEGIN: Verify user regis=
ter...<br>[TEST CASE =C2=A0 3] (t =3D =C2=A0 =C2=A0 =C2=A07725 ns) DONE... =
Passed<br>[TEST CASE =C2=A0 4] (t =3D =C2=A0 =C2=A0 =C2=A07725 ns) BEGIN: T=
est passing through samples...<br>Fatal: Timeout: Test &quot;Test passing t=
hrough samples&quot; time limit exceeded<br>Time: 17725 ns =C2=A0Iteration:=
 0 =C2=A0Process: /PkgTestExec/TestExec::start_timeout/Block260_9/timeout =
=C2=A0File: /home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/sim/rfnoc/PkgTestExec=
.sv<br></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000054d61b0603992250--

--===============3109815400333787247==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3109815400333787247==--
