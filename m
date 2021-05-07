Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFBE375EE8
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 04:55:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 279F738489A
	for <lists+usrp-users@lfdr.de>; Thu,  6 May 2021 22:55:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="HuS7Noz5";
	dkim-atps=neutral
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 80EB4384231
	for <usrp-users@lists.ettus.com>; Thu,  6 May 2021 22:54:22 -0400 (EDT)
Received: by mail-ot1-f54.google.com with SMTP id n32-20020a9d1ea30000b02902a53d6ad4bdso6767020otn.3
        for <usrp-users@lists.ettus.com>; Thu, 06 May 2021 19:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MgGRX6YEL62ZH33o6qSmaNWakE85nA6wJh/PDVNJhUE=;
        b=HuS7Noz50BJ0jute+MzHo3k1NLJqXBzuQcff9csp4dvtPOQVacN4reCy7TDAYuCz3X
         wMapq1mcFuvYzjydSJ2+1JbX3Uh+fkEaiCuXGv4860P/KyvQRT2Vy19MSPr1dkjpWn98
         naCSKlV1vzPFTkdqVcQ85Lv6fc1//izO7+bM0q3IwSP3DQyXJcS9zkK9000O8nMB+BLO
         17+qmbdqt3sNnFMP5tRdRHediltSOgBJHE92SoF3+VoxN9w2zICoEsuRraFN0FqWLV8Z
         Y/FolGBp38Qzc9US12RNYOHTv703NkOnXOHMthyXiqwsuohGAEH2AYwgs1YkBBziRSNT
         cKZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MgGRX6YEL62ZH33o6qSmaNWakE85nA6wJh/PDVNJhUE=;
        b=j5Hwok4FzcJL8I6KHm/xMlF3Iah6TllSIEj8K9QUJCjzUUsSw8F3Z6ixmGH0GvSLoY
         vIO8fe9ja/Ee4yhLzlLVNIM2GDHGswFk2AzfLUa1JnzlV2M1jhh7dR58abh9pUQBb3iv
         ytSpB9BlYUPTJZDilc5SKH/9lDKZv4TEInuKJcvrNYu+uIQtnULEyK+hsUC+WGd+X7qK
         xeN/ZgwxjePo83iidEip4xyqefpR8OQZqc31JsHM55sVPhCdxeMszUpARrU77Pe3n7/u
         GY0K5wYC6KLbN6VoWotl1uAbAGdFIUsImXOm5uK1YCZ7HwVahIzRyWP4KXiFZ5ALn72V
         ptjQ==
X-Gm-Message-State: AOAM533XLxOhk9jpIKQ8Q0zgwi9pG0qJxQ3iyFQiecasgwSnr+wMWTN4
	g2q9HChE/bOcYDDNC4TN0OANHU91sol64ujtQFogpA==
X-Google-Smtp-Source: ABdhPJzIhNnupMNTkZbNqQMzlhITc7qnSaD1OBAMNq7jIA7XklaBG65YNqBG6Z1Qob3g/1EWd9WbUzSjrAxy1lrIfxg=
X-Received: by 2002:a05:6830:456:: with SMTP id d22mr3008463otc.301.1620356061614;
 Thu, 06 May 2021 19:54:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAL0m=NZBNAaqr2co+eqbwmy_nkYLr7ghdhG+ZBL+LiaO1FSC0Q@mail.gmail.com>
In-Reply-To: <CAL0m=NZBNAaqr2co+eqbwmy_nkYLr7ghdhG+ZBL+LiaO1FSC0Q@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 6 May 2021 22:54:10 -0400
Message-ID: <CAB__hTRvurEqBYw_dv=vJeZug3wrpFHM8MDyj3=amqJVy0qk-A@mail.gmail.com>
To: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
Message-ID-Hash: HDDSK4VDIIED7ALLBFHAKTU2ZB4SYRRD
X-Message-ID-Hash: HDDSK4VDIIED7ALLBFHAKTU2ZB4SYRRD
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 External LO source
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HDDSK4VDIIED7ALLBFHAKTU2ZB4SYRRD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2332919357527770090=="

--===============2332919357527770090==
Content-Type: multipart/alternative; boundary="00000000000076954905c1b48b99"

--00000000000076954905c1b48b99
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I use a b200 mini as lo source for the n310. This works well for my
application but I can=E2=80=99t say how this lo compares to a high fidelity=
 signal
generator.

On Thu, May 6, 2021 at 10:31 PM Zeng, Huacheng <huacheng.zeng@gmail.com>
wrote:

> Hello,
>
> I want to use an external LO for N310. I learned that a common case is to
> use a signal generator to produce the external LO and feed it to N310.
> Since I do not have a signal generator at the moment, I was wondering if =
it
> is okay to use an N210 to generate the external LO for N310. I will adjus=
t
> the Tx gain of N210 so that the output power is in the range of 0 to 6 dB=
m.
>
> Regards,
> Hua
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000076954905c1b48b99
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I use a b200 mini as lo source for the n310. This works w=
ell for my application but I can=E2=80=99t say how this lo compares to a hi=
gh fidelity signal generator.=C2=A0</div><div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 6, 2021 at 10:31 PM Zen=
g, Huacheng &lt;<a href=3D"mailto:huacheng.zeng@gmail.com">huacheng.zeng@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padd=
ing-left:1ex;border-left-color:rgb(204,204,204)"><div dir=3D"ltr">Hello,<di=
v><br></div><div>I want to use an external LO for N310. I learned that a co=
mmon case is to use a signal generator to produce the external LO and feed =
it to N310. Since I do not have a signal generator at=C2=A0the moment, I wa=
s wondering if it is okay to use an N210 to generate the external LO for N3=
10. I will adjust the Tx gain of N210 so that the output power is in the ra=
nge of 0 to 6 dBm.=C2=A0</div><div><br></div><div>Regards,</div><div>Hua</d=
iv></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000076954905c1b48b99--

--===============2332919357527770090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2332919357527770090==--
