Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5C6742BFF
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 20:42:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 92FA9384669
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 14:42:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688064174; bh=xFOseZ0OyLBXB0ZLrOTCTKf6woYwuqJ3ilhlUSikvaI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ofYV1EYvSmr0vQLvVqqkP3jnhiHJN+GIEkHV9hSz3EXndYSorgHRndfnTm1QQ97Pe
	 XMLCK5nOA3Zv9ocW82DdxwnEx3pzrIyNwdIKPG6pwJ4wtusv7fjCEPEcbwsPgVgoGz
	 z81TGugt+ch1UWgn21pUA97GtkwOiUfxXnK9WA2cTo5yNMsUj5J+2UMPpAdn3x+cBI
	 J8zPtmZq5YTKybvejW5hLZq/uZAozUmaxSvm1ywgEp8ev/UsxvtoE6dBno+42M6KgO
	 rpT9LwuASGyrWUYMroQi8iTnqeFIjy09OZTepjGAQbihOr5r2g5I6JAoFp5vIB+a76
	 vYfMPncqhxmqw==
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 8228A3810D5
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 14:42:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nWbIuf3r";
	dkim-atps=neutral
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-4fba1288bbdso474933e87.1
        for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 11:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688064119; x=1690656119;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OOHf2QSAhTTNFqUT083dEhfLLZ9s6aHx9vqlmceKHok=;
        b=nWbIuf3rZFjbz+BDH2fpDJnH/zzhY2zb2K8qv0yjFptAagDxXi9LUrQQXVxE0CLsC9
         gWzPX9S1TtHaQjCG/rXkmczkzbE2QKW6Vrur/EqLJT/1gWqOgH+Td0OZGI3hZk5q7OdD
         kCormIksVNpzoHkr03WKncqIC89jFBB8Y6mIi8uEB3b0cpJLAA7G64VZ6G2+1G6akvGa
         bVGZ2gjbAAqHEnHAK+6fgmLvXXKwgzddqz6CxtE0+Q0lrSRoiJTbYV7OsRZxJbzMC/nl
         Ur9aibrLGdzkYsoL67kZakF57FwjtDO3wUj1WUlkZNUVaDLpWtbJfw9o+Wq58sCthHET
         Y1mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688064119; x=1690656119;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OOHf2QSAhTTNFqUT083dEhfLLZ9s6aHx9vqlmceKHok=;
        b=ZX+0c/QEeldp/zA1Fpt1QumBVgGLtVGCGieujYZhOCFJbx/03/VeeIJZzkrOyHBs4f
         HrX1jZT2ihzv2+6HmFxOj4fx6o0dKGcdxE26c50+I1bCq5TkXxRyr1VEkp8YbnKHBgTM
         /o5eyZ1fn4x1lXFdCp4ry2L161nsn7EPmgNv0krKhGA1HDwTVoyyI24H8AFjTw0KJePE
         Lv3HuhJ+h8nrkX7fq99pzFAY4A91HGfWcO6Q/cT8ouPuk+pU4QWNBmS7NciE6LOAzR5x
         IZUiPbfqVQqmwZrr7VuMUk0r693mYetwzwCjtYTnafIuvnYWUllB2FplsbB+YEqru9fj
         EPEg==
X-Gm-Message-State: ABy/qLYpaYGDj+AoShU/BfsHiltRSj/H4plkJlzA6I52+D1XbYT3kSK7
	9HC/XjkRHpKcn1CWZXVim3pmdh8deLgZm/WSbSk=
X-Google-Smtp-Source: APBJJlEb+vPZYrkV8l3mm7iWqXE259mFaRsbtaussgZQr9p+MDuvHnnj1tjfwfzXtkgvc1YqofSCtPR4EQUxcFURVrE=
X-Received: by 2002:a05:6512:74f:b0:4f8:7124:6803 with SMTP id
 c15-20020a056512074f00b004f871246803mr569572lfs.35.1688064118554; Thu, 29 Jun
 2023 11:41:58 -0700 (PDT)
MIME-Version: 1.0
References: <e4210d55-383f-d271-0788-4dedf32b71bf@gmail.com> <C6A57FB3-CB76-4F3B-AC3B-9C3FF871CEDA@gmail.com>
In-Reply-To: <C6A57FB3-CB76-4F3B-AC3B-9C3FF871CEDA@gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 29 Jun 2023 14:41:47 -0400
Message-ID: <CAEXYVK4DVph5nc1prtZmy5nyJLF_UcxLDysyEhW7O-tdGb+Spg@mail.gmail.com>
To: Paul Atreides <maud.dib1984@gmail.com>
Message-ID-Hash: H3DYKMIXRMR6SUUA44ZLCSCIGEW4HCTX
X-Message-ID-Hash: H3DYKMIXRMR6SUUA44ZLCSCIGEW4HCTX
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_image_builder
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H3DYKMIXRMR6SUUA44ZLCSCIGEW4HCTX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1221319981281537879=="

--===============1221319981281537879==
Content-Type: multipart/alternative; boundary="00000000000025033505ff490e70"

--00000000000025033505ff490e70
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

UHD seems to want to install to local/lib/python3.10-dist-packages/uhd - do
you have that as part of your installation?

I have an imgbuilder directory and image_builder.py inside there.

You have an issue with, specifically, from uhd.imgbuilder import
image_builder?

Brian

On Thu, Jun 29, 2023 at 2:34=E2=80=AFPM Paul Atreides <maud.dib1984@gmail.c=
om>
wrote:

> Yea, I=E2=80=99m an intermittent RFNoC user.  no issues building UHD, jus=
t
> wondering if the image builder module isn=E2=80=99t getting included in t=
he source
> build.
>
> <end transmission>
>
> > On Jun 29, 2023, at 11:51, Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
> >
> > =EF=BB=BFOn 29/06/2023 11:44, jmaloyan@umass.edu wrote:
> >>
> >> In my experience, getting UHD to run on Ubuntu 22 is a huge hassle. If
> you can, I recommend downgrading to 20.04(but no lower) and it should
> install fairly easily.
> >>
> >>
> > I built UHD 4.4.0.0 on 22.04 just the other night, and installed it
> alongside the version that comes with Ubuntu 22.04
> >   (UHD 4.1.0.5).  I haven't tested it extensively (because the issue wa=
s
> about building it).
> >
> > Now, I'm not an RFNOC guy, so I didn't exercise any of that stuff...
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000025033505ff490e70
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">UHD seems to want to install to local/lib/python3.10-dist-=
packages/uhd - do you have that as part of your installation?<div><br></div=
><div>I have an imgbuilder directory and image_builder.py inside there.</di=
v><div><br></div><div>You have an issue with, specifically, from uhd.imgbui=
lder import image_builder?</div><div><br></div><div>Brian</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun =
29, 2023 at 2:34=E2=80=AFPM Paul Atreides &lt;<a href=3D"mailto:maud.dib198=
4@gmail.com">maud.dib1984@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">Yea, I=E2=80=99m an intermittent RFNoC u=
ser.=C2=A0 no issues building UHD, just wondering if the image builder modu=
le isn=E2=80=99t getting included in the source build. <br>
<br>
&lt;end transmission&gt;<br>
<br>
&gt; On Jun 29, 2023, at 11:51, Marcus D. Leech &lt;<a href=3D"mailto:patch=
vonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote=
:<br>
&gt; <br>
&gt; =EF=BB=BFOn 29/06/2023 11:44, <a href=3D"mailto:jmaloyan@umass.edu" ta=
rget=3D"_blank">jmaloyan@umass.edu</a> wrote:<br>
&gt;&gt; <br>
&gt;&gt; In my experience, getting UHD to run on Ubuntu 22 is a huge hassle=
. If you can, I recommend downgrading to 20.04(but no lower) and it should =
install fairly easily.<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt; I built UHD 4.4.0.0 on 22.04 just the other night, and installed it al=
ongside the version that comes with Ubuntu 22.04<br>
&gt;=C2=A0 =C2=A0(UHD 4.1.0.5).=C2=A0 I haven&#39;t tested it extensively (=
because the issue was about building it).<br>
&gt; <br>
&gt; Now, I&#39;m not an RFNOC guy, so I didn&#39;t exercise any of that st=
uff...<br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000025033505ff490e70--

--===============1221319981281537879==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1221319981281537879==--
