Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE51D532299
	for <lists+usrp-users@lfdr.de>; Tue, 24 May 2022 07:48:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B88D2384422
	for <lists+usrp-users@lfdr.de>; Tue, 24 May 2022 01:48:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653371285; bh=VQ+NK33uJrwKDlWKrETNxMsT4L4A4GNXMi6MqLy5SqE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=LsY++xvvTbetbjyeoGp0jn5uf17hEZVgvmkx7Fjt1bzxdZl2JyqVLU3dzHpcqT42u
	 a+2PVGljVbgI6s39C971duZ1Qk9y9W7zh+P6q6PVSrzlNI3mtxHMc0We6iIP2gtRMa
	 66dpszcz1lK5VeldHGUPK39HnrdaPh8W7U53R2ATUlnYEZ/Tbh+2QA3lP+XlCv1JTD
	 HXsTeAM/9+Z/rbpeMp0eRDnuDOWxrq0U2DNTqI4bNZrOrRRZyD+GOc9qn8Nqw4Vv+x
	 9SdikC9vmMNSyTi3fb+vQA56g9uGJoEJ2Olu4wEg0rCepUSUQSQfroDIZm8VLTZVjC
	 UeqjTWdPARdhg==
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 32B0B384123
	for <usrp-users@lists.ettus.com>; Tue, 24 May 2022 01:47:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=eng.ucsd.edu header.i=@eng.ucsd.edu header.b="ZFJeKexD";
	dkim-atps=neutral
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-edeb6c3642so21070025fac.3
        for <usrp-users@lists.ettus.com>; Mon, 23 May 2022 22:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=eng.ucsd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ymaeaH00Joo/D9Y2ZXV1gvTS11VnN9XqtDta0NHlN6s=;
        b=ZFJeKexDwA8wSAEHMs55dskhKgSteNDoCGyDMQBI+2r+SS+RgqJI9UDBmJ6aPdO4gH
         Q6zjjhjuBcMcW32UdqdOY5Y+BXb35Q7eiHTnPA8vU5wPuQ8lK28Widan/LaSloW4rBcg
         6+MAq4ZV+AFvE5RO83WxBGt6R85uBrlHX5ays=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ymaeaH00Joo/D9Y2ZXV1gvTS11VnN9XqtDta0NHlN6s=;
        b=np1P+EFTNLjdUQmF0Uc+yn83EXqnT2gZJBOYqfZW2saANwO8ZArjvS9yue2cVqnyR8
         JU4OQNkBRixvAOESp3MC6rXlEmvFzhYX8mKzQe8po+ev7I35Di+jqSpIwXY6p4I0zRuE
         x7tpJs08Xbhk05a21NaanSrz+9BaaNnY/+LhyVh0b5KCXm/5lcNF45iyszSqR3Ms5lUN
         AaRxsbv0wqb7jRUemTlIbv3rt6YLGqklWmpSPyqvpruE0qTlNkZF5/lRPIHXN1+zKiWj
         5WOUtMAaFDd/X9Jrz3Hi//Vjybjd/Ieoab9aN1OFnLRnIptiSm4T4xZs2pkUSTOz34Bz
         jisQ==
X-Gm-Message-State: AOAM532vmUEhmOHYD8kC6AOjd939sKHpVJdr3YEYqzmojjZRL12tyEnT
	XEoYd9ZMxSjy44AyH/RFqjacH6IxzaggBEBYN/2mzA==
X-Google-Smtp-Source: ABdhPJx9m20bD226VjDZYJOuvFq2qpKJR0X36+JcIrl3n3yJZfFqEqoKgO4FEvPe3w+EZmzkENWEn2Hi0vd1KHl9Q/0=
X-Received: by 2002:a05:6871:87:b0:da:b3f:3208 with SMTP id
 u7-20020a056871008700b000da0b3f3208mr1547916oaa.184.1653371225397; Mon, 23
 May 2022 22:47:05 -0700 (PDT)
MIME-Version: 1.0
References: <HvKzjIPrreuUfG44SMIycq2AdphCt6gpAlsXc8mg@lists.ettus.com> <fcaec8dc-d2af-254a-22f0-90be8e09cd13@gmail.com>
In-Reply-To: <fcaec8dc-d2af-254a-22f0-90be8e09cd13@gmail.com>
From: Raghav Subbaraman <rsubbaraman@eng.ucsd.edu>
Date: Mon, 23 May 2022 22:46:54 -0700
Message-ID: <CAA9CoE3zL5xG0eeAgO4O-2Ao4oXm6NJ_fFz3ViHiNjX+V9ZvcQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: SA765P5BKVDCGSLJM32QDHU72CBW3OQL
X-Message-ID-Hash: SA765P5BKVDCGSLJM32QDHU72CBW3OQL
X-MailFrom: rsubbaraman@eng.ucsd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed command gain changes on TwinRX + X300
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SA765P5BKVDCGSLJM32QDHU72CBW3OQL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4669592795625612014=="

--===============4669592795625612014==
Content-Type: multipart/alternative; boundary="00000000000092745705dfbb7c7c"

--00000000000092745705dfbb7c7c
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,

We were using the UHD 4.2 release and had difficulties with getting the
timed commands to work on GNURadio as well as the UHD C++ API.

We reverted back to UHD 3.15 and it works now! Thanks for the vote of
confidence on the feature.

If we have time, we will try to reproduce the bug and share our results
here.

Best,
Raghav

On Mon, May 23, 2022 at 5:09 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-05-23 20:05, Raghav Subbaraman via USRP-users wrote:
> >
> > Hi,
> >
> > Is it possible to set the gains using timed commands on the TwinRX on
> > any version of UHD? This is possible on other daughtercards like the
> > SBX and CBX.
> >
> > Best,
> >
> > Raghav
> >
> >
> >
> Should be possible, although it depends a bit on what your total
> command-depth would be for setting both frequency and gain at the same
> time.
>    Each register transaction occupies a "slot" in the timed-command
> queue.  I don't know off the top of my head how complex gain-setting is
>    on the TwinRX, so if you're setting gain and frequency at the same
> time, you may run out of slots.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>


-- 
Raghav Subbaraman
PhD Student, ECE
University of California San Diego
wcsng.ucsd.edu

--00000000000092745705dfbb7c7c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marcus,<div><br></div><div>We were using the UHD 4.2 re=
lease and had difficulties with getting the timed commands to work on GNURa=
dio as well as the UHD C++ API.</div><div><br></div><div>We reverted back t=
o UHD 3.15 and it works now! Thanks for the vote of confidence on the featu=
re.</div><div><br></div><div>If we have time, we will try to reproduce the =
bug and share our results here.</div><div><br></div><div>Best,</div><div>Ra=
ghav</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Mon, May 23, 2022 at 5:09 PM Marcus D. Leech &lt;<a href=3D"ma=
ilto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">On 2022-05-23 20:05, R=
aghav Subbaraman via USRP-users wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; Is it possible to set the gains using timed commands on the TwinRX on =
<br>
&gt; any version of UHD? This is possible on other daughtercards like the <=
br>
&gt; SBX and CBX.<br>
&gt;<br>
&gt; Best,<br>
&gt;<br>
&gt; Raghav<br>
&gt;<br>
&gt;<br>
&gt;<br>
Should be possible, although it depends a bit on what your total <br>
command-depth would be for setting both frequency and gain at the same time=
.<br>
=C2=A0=C2=A0 Each register transaction occupies a &quot;slot&quot; in the t=
imed-command <br>
queue.=C2=A0 I don&#39;t know off the top of my head how complex gain-setti=
ng is<br>
=C2=A0=C2=A0 on the TwinRX, so if you&#39;re setting gain and frequency at =
the same <br>
time, you may run out of slots.<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div=
 dir=3D"ltr">Raghav Subbaraman</div></div><div>PhD Student, ECE</div><div>U=
niversity of California San Diego</div><div><a href=3D"http://wcsng.ucsd.ed=
u" target=3D"_blank">wcsng.ucsd.edu</a></div></div></div></div></div>

--00000000000092745705dfbb7c7c--

--===============4669592795625612014==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4669592795625612014==--
