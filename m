Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B116C6C5CBB
	for <lists+usrp-users@lfdr.de>; Thu, 23 Mar 2023 03:40:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 21644380B29
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 22:40:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679539251; bh=utu3Y5jM1aRLNGxzVQkRj7iuHOARrrx8IfsZQeJCabo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=lJXlGwg1GGb25zJltdm7Sn6x93wNiAEQHWYtT68+c4UWTEv2grlV0Mvkg8O+PILHM
	 fcT7PIirLcyguiiX1Z5cQmTWkhqzcoJhz22rs1CrM7b4h96z06N63KEP9Dnt8CewO5
	 VLNNsi0oMS5Tez0JU8KcQWYv5hVOJzKUIcFrhzBvnhjFfD+8AbVv1q0Tcxw7L+fcYG
	 zjlt9XDjuRw580PyHRa4cTS5fKBj4CDUHb7OP0tZorVkb9bwpwyO4tLt7f8ka27Ftq
	 YpPN/TrHFu9t5nTImm5NWLboDMGTkQRE153wdtN2FgEArExSFwOpfOqQHatoCZ86ie
	 Oy5/adXrwuHJg==
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 655F2380B0B
	for <usrp-users@lists.ettus.com>; Wed, 22 Mar 2023 22:40:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="xYjEe6Sl";
	dkim-atps=neutral
Received: by mail-ed1-f43.google.com with SMTP id o12so80830862edb.9
        for <usrp-users@lists.ettus.com>; Wed, 22 Mar 2023 19:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112; t=1679539213;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8z9/abaWl8ZjnmRhlsUNWQS4j5jAj6FPIYo8t73tM6g=;
        b=xYjEe6SlNQZtnIHjN8z1nc+9jhsS5VYTdrKrAbuAM3LkR/Dk9UDypnCE7sfD6z2erH
         mQ+Ntsv3zisVgx8cEeU4BSs9N+wRnClaphSvH26V1A4/usoUOAKEksSlXk8zp7gQJPiK
         SVFM1jPSDlVnTq2XJ0oMjG8mXfpGYUg9fBMEGlmBE3ssRSIm6WO2GKqW0rrt05fhzmdR
         XnTxk7J1FeWKzwG1rde1agAjMg++maUzBBv2EjNXyFmj0UeUYRCSRI9uxxqUIjWpAS5h
         ja4xJKpHodcPbrAEvbZHHu99Y6ZdZSPsgPdiD1HSKGZxDsyQEnXatHUSFSWR7R85EAJW
         tGtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679539213;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8z9/abaWl8ZjnmRhlsUNWQS4j5jAj6FPIYo8t73tM6g=;
        b=6JWb4IX3i1dzmvUTLctk+OuM2x8iuFZmpqd1h8t8qRJYcXtLVqGLopTf2UEnCiTc8M
         FLpghmk03uIY1K60s3b8N7+z3+ZNEXAINBLpuvgXhGAbrq6tR9K5B+xyuRzRvDrn6ZfB
         7D0LMvffEB39fgVWdq0jXgoA5Di0e6+dqUcdJ+qBuNeIc7tzlsuOS1AAgEzDM0wF2YNh
         rfqHwluOzaCXUPk6erCPALEeygdMsnPE2GKVYg/F5UcBVWyn+7QwVZ0kMgnzSojQhs3c
         YPZxpWCsDs4spGLWiTf/xPtzkW16NMhoaMuz5SgfVwtACSM+QyOsLTuqvKI31SCx5+zS
         9y8Q==
X-Gm-Message-State: AO0yUKWjpbdC/NvcQavHOC9CvwFwIqZSIENDNZi4roppgQ0YAA1O4k5q
	T8goJRPRjHEGBlfunpeJdh433nfqcFLzrYo2OPTG+n6V
X-Google-Smtp-Source: AK7set9m+kc8o28pqE61dlutwYwipjZd2VJ9Y87hQOKifn4L91WT3DL5lIg9Kl/nlNTCpr7qDXsgBpSp97sEndI1has=
X-Received: by 2002:a17:906:445:b0:932:da0d:9375 with SMTP id
 e5-20020a170906044500b00932da0d9375mr2362964eja.4.1679539213192; Wed, 22 Mar
 2023 19:40:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK4cuWzo5NfJRAsqKBeCdLZ=Un-X7NY=r0-aOGy=X3sSTA@mail.gmail.com>
In-Reply-To: <CAEXYVK4cuWzo5NfJRAsqKBeCdLZ=Un-X7NY=r0-aOGy=X3sSTA@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 22 Mar 2023 21:39:56 -0500
Message-ID: <CAFche=gS4BkrDn0SWJd3N_duQXgJ5qx5G=VsHwpFHQsi0s4r=w@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: LBLN3LE646MDTH5EENHEC6GISZUCYZ3H
X-Message-ID-Hash: LBLN3LE646MDTH5EENHEC6GISZUCYZ3H
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 Overflow with Custom FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LBLN3LE646MDTH5EENHEC6GISZUCYZ3H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2899745618720809628=="

--===============2899745618720809628==
Content-Type: multipart/alternative; boundary="0000000000003064e305f7883233"

--0000000000003064e305f7883233
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Brian,

Unfortunately, the DSP inside the current RFNoC DDC block processes one
sample per clock cycle. So the maximum sample rate through the DDC is the
same as the rate of the clock you provide to the ce clock input. With the
400 MHz bitstreams, radio_2x is 245.76 MHz. Because this is below the
491.52 Msps input rate, you're getting overflows.

Wade

On Wed, Mar 22, 2023 at 10:29=E2=80=AFAM Brian Padalino <bpadalino@gmail.co=
m> wrote:

> I've built up a custom FPGA based on the 400 MHz image, and I have a bit
> of an asymmetric scenario going on here.  The TX side of things has a
> custom block and it feeds the TX port at 491.52 MHz.
>
> The RX side I only need to receive at 30.72 Msps, so I instantiate a
> 2-channel DDC and connect it statically:
>
>   - radio0/out_0 -> ddc0/in_0, ddc0/out_0 -> ep0/in0
>   - radio0/out_1 -> ddc0/in_1, ddc0/out_1 -> ep1/in0
>
> When I set up my clock domains, I noticed there was a mix between the
> different setups, so I went with radio_2x for the DDC:
>
>   - srcport: radio, dstblk: radio0, dstport: radio
>   - srcport: raio_2x, dstblk: ddc0, dstport: ce
>
> This is how the X410_200 image seems to do it, so I figured it'd be fine.
>
> When I try to receive at the sample rate, I immediately get an overflow.
> To test it's just the FPGA being problematic, I set the program to receiv=
e
> from radio 1 which doesn't use the DDC and I receive the appropriate 491.=
52
> Msps with no overflows.
>
> So my question is why is adding the DDC problematic?  The only other
> difference I can see is the CHDR_WIDTH is 512 for my image and 64 for the
> X410_100 and X410_200 images?
>
> Any insight would be useful and welcome.
>
> Thanks,
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003064e305f7883233
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Brian,</div><div><br></div><div>Unfortunately, the=
 DSP inside the current RFNoC DDC block processes one sample per clock cycl=
e. So the maximum sample rate through the DDC is the same as the rate of th=
e clock you provide to the ce clock input. With the 400 MHz bitstreams, rad=
io_2x is 245.76 MHz. Because this is below the 491.52 Msps input rate, you&=
#39;re getting overflows.</div><div><br></div><div>Wade<br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Ma=
r 22, 2023 at 10:29=E2=80=AFAM Brian Padalino &lt;<a href=3D"mailto:bpadali=
no@gmail.com">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">I&#39;ve built up a custo=
m FPGA based on the 400 MHz image, and I have a bit of an asymmetric scenar=
io going on here.=C2=A0 The TX side of things has a custom block and it fee=
ds the TX port at 491.52 MHz.<div><br></div><div>The RX side I only need to=
 receive at 30.72 Msps, so I instantiate a 2-channel DDC and connect it sta=
tically:</div><div><br></div><div>=C2=A0 - radio0/out_0 -&gt; ddc0/in_0, dd=
c0/out_0 -&gt; ep0/in0</div><div>=C2=A0 - radio0/out_1 -&gt; ddc0/in_1, ddc=
0/out_1 -&gt; ep1/in0</div><div><br></div><div>When I set up my clock domai=
ns, I noticed there was a mix between the different setups, so I went with =
radio_2x for the DDC:</div><div><br></div><div>=C2=A0 - srcport: radio, dst=
blk: radio0, dstport: radio</div><div>=C2=A0 - srcport: raio_2x, dstblk: dd=
c0, dstport: ce</div><div><br></div><div>This is how the X410_200 image see=
ms to do it, so I figured it&#39;d be fine.</div><div><br></div><div>When I=
 try to receive at the sample rate, I immediately=C2=A0get an overflow.=C2=
=A0 To test it&#39;s just the FPGA being problematic, I set the program to =
receive from radio 1 which doesn&#39;t use the DDC and I receive the approp=
riate 491.52 Msps with no overflows.</div><div><br></div><div>So my questio=
n is why is adding the DDC problematic?=C2=A0 The only other difference I c=
an see is the CHDR_WIDTH is 512 for my image and 64 for the X410_100 and X4=
10_200 images?</div><div><br></div><div>Any insight would be useful and wel=
come.</div><div><br></div><div>Thanks,</div><div>Brian</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000003064e305f7883233--

--===============2899745618720809628==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2899745618720809628==--
