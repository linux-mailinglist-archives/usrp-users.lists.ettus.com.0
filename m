Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 202427B1033
	for <lists+usrp-users@lfdr.de>; Thu, 28 Sep 2023 02:59:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F082A3846CA
	for <lists+usrp-users@lfdr.de>; Wed, 27 Sep 2023 20:59:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695862740; bh=V/tIM3+D+VVIKcZa/JFF17PRNLtNb4WTiNnb9ruGXzs=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=ToMtZRXBR2I/i2d7jfG7IvgBENsV3BITH/iIhtMF2nAhZVdzIa1dkhF9Cs2qPIJa1
	 T3AsPSeeguK8OmyJJdI9byCkY5qDjvB/KfkeW8vWb5frWxTAeH2IQr1Z8EgoocerNL
	 8qsD2qquuynim3uWf0l5VPuabAVcpjeSOd0PaTeCXprCRVUkFKBsvonAQYgYpCNRQ8
	 b/U4plb0HL/qZSuWzOh5VdnRHtUzRiy6fhlL0HU+sGE3SB+sLBBPhXwI2Jt8osS1jv
	 Bwb8q6yf70ksxwoXApt2DRM6RtTsEuBhXwyuO4SRqfzMaAHaiuL+w518EqcRCvKP4j
	 4JfWTLF0k6LSA==
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id B91AC38468F
	for <usrp-users@lists.ettus.com>; Wed, 27 Sep 2023 20:58:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="kZitXRKr";
	dkim-atps=neutral
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-530bc7c5bc3so15208798a12.1
        for <usrp-users@lists.ettus.com>; Wed, 27 Sep 2023 17:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1695862735; x=1696467535; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wIVjm/xIQMzoAhgVJFjQHxi7/rQUOrTbowTnZvG2gR8=;
        b=kZitXRKrvxI5mH04WPidNvysLTgi0qH3E6+WhwjIANthP3L34YaZho/iOVSsq2/SF3
         yE+xR9CHmzhc0vBWQ+sarQBG3cOnJgirRyICqmW30A+bN+ER44WtLS74M300nMOtiX/w
         MgOMvqMGvdZT0tkwwoYfIyXXBjh85HxeiGkAWWDA+MXgfPABd6edzIvXSr9+xZPrI0bg
         xBOdVEYPGWkvU4mggf+9mEcfFzYbFxDVWIR2d3zR6KawlJ7kvGGyF8+7sbFNOqqAHP0E
         OdiO1m0Rm2EWEq1aSk6ey9ir/qTj3Oiw+w9lU+0wnp5IlVb2r1jaPGDXkh9wdVxxWDup
         mdeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695862735; x=1696467535;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wIVjm/xIQMzoAhgVJFjQHxi7/rQUOrTbowTnZvG2gR8=;
        b=Bv+DTRiBx5oB6tSJ4tYVK937ZH6J2OjFLLwhM/JydlW7HcksuoiQmH9rfPGYRyeLoR
         DY01BxD9r6zWeVolnzsmBSSvtMhbACuWgjYpxHfP99GvDqkFV8dKLm8YeQOtJ8Lzk7XI
         xNBjgTtpvqpjq2VAnUId5RHaQg2Vo3rE+uyDbyp8g8e8uRgSt0CVs5AgFuT9t6JkLCq3
         ORtzze0LWqpflNlQIHEM0ACf0cXqCBBaiHjy83oAFuENM5fsZNNih9Ngr1PMA8iG08zG
         332O8/mb2KjzTqDJ3jiOCXwfdQ9NMJrcZXIxGBDI8X4O7YlznRl2bzcyDsefMlKX4yWf
         mOhQ==
X-Gm-Message-State: AOJu0YzpmglxjgJXH5Berlxq3dGIEIH2CH+AGEslsKhGODME9gZFnTcz
	ddibLLkGo05p3z+liEV47OiI0SsWPpItgyK68JjiVRnBYS8oSwhQ
X-Google-Smtp-Source: AGHT+IEr1DkRVQPCl3jXOaIZWhjHJmTuGKFi+itJvZVo1XzMgG5JC/QSBq9malUs93l6yv5gbvYLMpaODZdF2hX0JGg=
X-Received: by 2002:aa7:d498:0:b0:533:87c9:4a81 with SMTP id
 b24-20020aa7d498000000b0053387c94a81mr3320018edr.29.1695862734873; Wed, 27
 Sep 2023 17:58:54 -0700 (PDT)
MIME-Version: 1.0
References: <zP5lDefL4PI9LPxwTGSK8UXVw3M0v1GMJGaTNXYu0icvrj4DczzMUJDcogRl9IrqJ4x2_oQRfHftMRAaL-PmItJupVbQlvjBYz213OUciJU=@protonmail.com>
 <c777ab9b-0284-af3a-8de4-12f607649082@gmail.com>
In-Reply-To: <c777ab9b-0284-af3a-8de4-12f607649082@gmail.com>
Date: Wed, 27 Sep 2023 20:58:43 -0400
Message-ID: <CAB__hTTbaXGNPp1X3tqPao+7rKEZDC2DotvK50m8765s3KV6kg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: YC3GXX7FVLCAH6IAB3OVNXIV32SADQFL
X-Message-ID-Hash: YC3GXX7FVLCAH6IAB3OVNXIV32SADQFL
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 10Gb Eth to X310 via PCIe Card Expansion Systems
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YC3GXX7FVLCAH6IAB3OVNXIV32SADQFL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4893307168098440784=="

--===============4893307168098440784==
Content-Type: multipart/alternative; boundary="000000000000e6955b060660cf7e"

--000000000000e6955b060660cf7e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 27, 2023 at 5:47=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 27/09/2023 05:15, Olo via USRP-users wrote:
>
> Hello,
> I want to connect X310 with my laptop through 10Gb eth connection and I
> want to ask:
>
>    1. If *Intel* *X710* (Dual 10Gb card) with *Sonnttech Echo Express SE
>    I* (PCIe Card Expansion Systems) (
>    https://www.sonnettech.com/product/echo-express-se1-tb3/overview.html)
>    will work (or if you have any experience with it).
>    2. Which card do you recommend me to use? (In documentation for 10G
>    eth connection (https://files.ettus.com/manual/page_usrp_x3x0.html) it
>    is recommended to use *Intel* *X520-DA2* card but you only sell on
>    your website *X710-DA2 card* ).
>
>
> Thank you for your answear.
> Olo
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> There are a large number of Intel X520-DA1 and DA2 cards available on
> Amazon--with SFP interfaces.  ANY of those should work.
>   I picked one up a couple of years ago and it worked out of the box.
> Might have been a 10GTek card, but I can't precisely recall.
>

I have successfully used several Intel 10Gbe (and even a Mellanox 25Gbe)
NICs with a Sonnet Echo Express SEL (half height, half length) chassis.
Even though the Intel cards such as the X520-DA2 and XL710 are not listed
on the compatibility list, they seem to work fine as far as I can tell. One
limiting factor is the number of lanes.  Thunderbolt 3 is Gen3x4 (4
lanes).  Some Intel cards (e.g., X520-DA2) are Gen2x8.  Thus, this will
connect to your laptop as Gen2x4 with the corresponding data rate limits
<https://en.wikipedia.org/wiki/PCI_Express#History_and_revisions> (16Gbps).
If you are using only a single 10Gbe link, this is not an issue.  So, you
may want to opt for a NIC with Gen3 capability.
Rob

--000000000000e6955b060660cf7e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 27, 2023 at 5:47=E2=80=AF=
PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonb=
raun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 27/09/2023 05:15, Olo via USRP-users
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div style=3D"font-family:Arial,sans-serif;font-size:14px">Hello,</di=
v>
      <div style=3D"font-family:Arial,sans-serif;font-size:14px">I
        want to connect X310 with my laptop through 10Gb eth connection
        and I want to ask:</div>
      <div style=3D"font-family:Arial,sans-serif;font-size:14px">
        <ol>
          <li>If <b>Intel</b> <b>X710</b>=C2=A0(Dual 10Gb card) with <b>Son=
nttech
              Echo Express SE I</b>=C2=A0(<span>PCIe Card Expansion Systems=
</span>)
            (<span><a rel=3D"noreferrer nofollow noopener" href=3D"https://=
www.sonnettech.com/product/echo-express-se1-tb3/overview.html" target=3D"_b=
lank">https://www.sonnettech.com/product/echo-express-se1-tb3/overview.html=
</a></span>)
            will work (or if you have any experience with it).</li>
          <li>Which card do you recommend me to use? (In documentation
            for 10G eth connection (<span><a rel=3D"noreferrer nofollow noo=
pener" href=3D"https://files.ettus.com/manual/page_usrp_x3x0.html" target=
=3D"_blank">https://files.ettus.com/manual/page_usrp_x3x0.html</a></span>)
            it is recommended to use <b>Intel</b>=C2=A0<b>X520<span style=
=3D"background-color:rgb(255,255,255);display:inline">-DA2</span></b> card =
but you=C2=A0<span style=3D"background-color:rgb(255,255,255);display:inlin=
e">only<span>=C2=A0</span></span>sell on your
            website=C2=A0<b>X710-DA2 card</b> ).</li>
        </ol>
        <div><br>
        </div>
        <div><span>Thank you for your answear.=C2=A0</span></div>
        <div><span>Olo</span></div>
      </div>
      <div style=3D"font-family:Arial,sans-serif;font-size:14px">
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    There are a large number of Intel X520-DA1 and DA2 cards available
    on Amazon--with SFP interfaces.=C2=A0 ANY of those should work.<br>
    =C2=A0 I picked one up a couple of years ago and it worked out of the
    box.=C2=A0 Might have been a 10GTek card, but I can&#39;t precisely rec=
all.<br></div></blockquote><div><br></div><div>I have successfully used sev=
eral Intel 10Gbe (and even a Mellanox 25Gbe) NICs with a Sonnet Echo Expres=
s=C2=A0SEL (half height, half length) chassis. Even though the Intel cards =
such as the X520-DA2 and XL710 are not listed on the compatibility list, th=
ey seem to work fine as far as I can tell. One limiting factor is the numbe=
r of lanes.=C2=A0 Thunderbolt 3 is Gen3x4 (4 lanes).=C2=A0 Some Intel cards=
 (e.g., X520-DA2) are Gen2x8.=C2=A0 Thus, this will connect to your laptop =
as Gen2x4 with the corresponding <a href=3D"https://en.wikipedia.org/wiki/P=
CI_Express#History_and_revisions">data rate limits</a>=C2=A0(16Gbps).=C2=A0=
 If you are using only a single 10Gbe link, this is not an issue.=C2=A0 So,=
 you may want to opt for a NIC with Gen3 capability.</div><div>Rob</div></d=
iv></div>

--000000000000e6955b060660cf7e--

--===============4893307168098440784==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4893307168098440784==--
