Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B128AB2DA8
	for <lists+usrp-users@lfdr.de>; Mon, 12 May 2025 04:54:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 46A433860F2
	for <lists+usrp-users@lfdr.de>; Sun, 11 May 2025 22:54:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747018457; bh=o2aGvZ9hIuwcaqTz3rQG73HMcNkuEr8erZUiPHh+BYQ=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=H2xaHIgCfDkUaQXMORFqGt28vpcWl0g0YTCGMITnV7N40JcKsomqJf5YnkxHaOEUK
	 anp4gxWjHlLmhoB+uVleFoA22ZFoGUfCngWw3Hs6ijkQipDKH3IExBydmvNymQPkxX
	 iJ1mCuxsbCKNiTVDzNuWb5JMXeQ3bGQr0Zga8nhAJCtPFAqkFFenRUfVf6Wk5KM9im
	 F9lRC3W9TSN8nllsxZ5OwOKE9Z7Zmyk4/15sjQWpMofDa2xSu8PStyMalklKzodIu1
	 BTadqyBPfKKY48VdGY3jvD5MmycLR86m+xMfsnCbpERfAtANzOT3AlVvg4/SAh1ldi
	 BawFwG5Z44Csg==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 159DE3840C0
	for <usrp-users@lists.ettus.com>; Sun, 11 May 2025 22:53:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="k2hUs8OK";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-476f4e9cf92so33158221cf.3
        for <usrp-users@lists.ettus.com>; Sun, 11 May 2025 19:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747018415; x=1747623215; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R7hWOeG1JudqbVtXaONywzF7u1rIw3zGeHH7sHmofbw=;
        b=k2hUs8OKdi3LkbXpnXoKewOdlC75JtsFg4mlv7A+ynCwLtNrEQrs2ArEPKNEsbIEsQ
         fPli8zvG1hUaBudolCfQwjcZGNfwTcVRYkNXnOLDHMQU0kRp9XuItarLN71cqoCqO5NF
         YpuD2yv+7rftQj42oQAvFdRgIM3jPndJioyeQvU4eoSOOkzZRzWPwaYXT/X/YmbCzRiv
         0PzugBwbuSNe3+zSxl5HwcP54EzuTBMMGW0Hg8/FmVqzd6r6aNJspkYfa1WoSCIWJOw/
         eBmHeoMignh0zwZtwgk/aJayohnJJQ0LYRqAc5M4ylnCu1xC3uO6QWnlKZ2orCyI37fk
         m5FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747018415; x=1747623215;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=R7hWOeG1JudqbVtXaONywzF7u1rIw3zGeHH7sHmofbw=;
        b=CLIJ4CTd2FE/6GEyVkZxZLrBG4l9GY6GxmbloaloZA9A2J+jBT7lXqW9yF46+ZN+kc
         aKm/Z4I363Ns9PqQ7PsZb0rLLyJ2aqGbtJ1qu32Nwub6S8zmUjASQraJYit/N5+vBgkM
         r6Mw1vKah0xnfaaq8qEz/G4OBHugHREmrtzyURfeY2JwoUu3XZDveyee5eVsZnM3ATxt
         6D1aSRTkIG3cvxX3kT6BvtfO8+yudZ0lkwLUoceAqM/twxWwFLh0/nI+REkx9WK18oHf
         e4ROwFc03ocd0HDFZSOm4oo5DjO4FP+LOiUeF3Z83U6BKAMGMQYQJwCSQFc2sHmu2shS
         ABbQ==
X-Gm-Message-State: AOJu0Yyf9NbSxsbAb49TrGFtzzDtN5qPnRqRQQHgyYGGWs7wvNheuQHv
	tP+V9K346ldAdi4MLb4+T1VlPkd75cQFXrfPQvjx+iWkQ+OxNOaQq45xt1t5
X-Gm-Gg: ASbGncvop7RKoB7sIZblX5e+yA3bHuGpz3uI2d3aJmtHKUsZHKXuf1u2c0C0BGz04ZQ
	9Zq/YnXzSI1XnGS9yK2eG7CtePT2bcCPLZPoHcglAwwr0h+hLV8o8OsohB9UCMzQ0XqyDRxCWz4
	uGcRMn9n7gjEzMyyid2MOM/mZ9PRJuVqEm4xdAugQ4bh3hiEYwkIUyxOmnriShLK2JOXEwEyUaO
	agSerB6ktsDAz/vY8vxVrlWt9OwdDmUgJh6pZ/FxBHMcGXvbDAkM+dQ2y5THqw1HTkxucmTeSUY
	m2QiGY2A6PBKcJ0SKcd6eOzKhc+qtpzYOMWD5D+2fRgRuLcw/pHCGXiGOI7T
X-Google-Smtp-Source: AGHT+IFjXTgw3Gqa3+q0BEi8OsBYzTX8EXuU/4szcdrQNy/9GcrVcgE5EsSSbn7D5szigHzR8ajlrQ==
X-Received: by 2002:a05:622a:5a10:b0:494:7cdf:4d23 with SMTP id d75a77b69052e-4947cdf4d57mr13647751cf.27.1747018415154;
        Sun, 11 May 2025 19:53:35 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-4945248d0b3sm44798781cf.19.2025.05.11.19.53.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 May 2025 19:53:34 -0700 (PDT)
Message-ID: <c159cdd4-9260-449a-a28d-9234b0b14fb3@gmail.com>
Date: Sun, 11 May 2025 22:53:23 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nikos Balkanas <nbalkanas@gmail.com>
References: <CAAxXO2FTNui2gby9j+mRDx3bFHGzRjUpWAoB1Q086_DwghEZmA@mail.gmail.com>
 <CAAxXO2GhNJx4AB4-m7vVAsnhBdkHCjDHqRsFze1BqLvZswYcYQ@mail.gmail.com>
 <db5bfa88-bfe7-44bd-ac75-4981ef55c831@gmail.com>
 <CAAxXO2EaNs1mwLx5BK67qdKG9=833_KonYG4GHRPbeNOhvG0QQ@mail.gmail.com>
 <592e1d32-2e85-4b8a-9c04-afc8628c0805@gmail.com>
 <CAAxXO2Gv4bUOUJ6cGW_wpB4nw4UuFVNY==JXuS2UQZek6w3=vg@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2Gv4bUOUJ6cGW_wpB4nw4UuFVNY==JXuS2UQZek6w3=vg@mail.gmail.com>
Message-ID-Hash: M4JVHXFMGCGRJ4QHZSMLIK3VWY3NVT7H
X-Message-ID-Hash: M4JVHXFMGCGRJ4QHZSMLIK3VWY3NVT7H
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: fc64 help needed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M4JVHXFMGCGRJ4QHZSMLIK3VWY3NVT7H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2778831185651147094=="

This is a multi-part message in MIME format.
--===============2778831185651147094==
Content-Type: multipart/alternative;
 boundary="------------0otaQDfoIvMes0CSicjcjnVF"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0otaQDfoIvMes0CSicjcjnVF
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 11/05/2025 22:45, Nikos Balkanas wrote:
> Yes it is, But input is always double:(
>
> BR
> Nikos
Nope.

https://www.fftw.org/fftw3_doc/Precision.html

The FFTW3F routines used in Gnu Radio take in single-precision (32-bit)=20
and output single-precision (32-bit).=C2=A0 In most CPUs,
 =C2=A0 the 64-bit floating-point pathways are slower than 32-bit pathway=
s,=20
which is why FFTW3 has a version of the libraries that
 =C2=A0 process single-precision floating-point exclusively.=C2=A0 This h=
as been=20
true literally for at least two decades of FFTW3, since I
 =C2=A0 started using and contributing to Gnu Radio in 2004.

Anyway, it's entirely up to you, but there's really no reason to use=20
double-precision floats to process data that on the
 =C2=A0 wire are only 16 bits.


>
> On Mon, May 12, 2025 at 5:38=E2=80=AFAM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 11/05/2025 22:27, Nikos Balkanas wrote:
>>     Thx Marcus,
>>
>>     I worked it out 2 days ago. Just my memory allocation.
>>     I am passing input buffer with a global pointer.
>>     I was using global stack allocation. When I switched to
>>     malloc, it just works fine:)
>>     Here is what happened: Input buffs didn't reach
>>     the=C2=A0_recv_one_packet() where
>>     b was evaluated to nil and therefore out_buffs were allocated to
>>     nil. It would be helpful
>>     to check allocations like these and issue a warning.
>>     Input, however, still reached the=C2=A0convert_chdr_1_to_fc64_1_gu=
ts but
>>     outputs and therefore output were evaluated to NULL.
>>     With NULL output it was sent through the guts function.
>>     Even commenting out the switch and sending it through
>>     the generic chdr_sc16_to_xx crashed it with no output buffers:(
>>     I am not quite sure why b is not evaluated in _recv_one_packet()
>>     and is available downstream in convert_chdr_1_to_fc64_1_guts
>>     with a global stack allocation. Unstable code?
>>
>>     Anyway, I need the complex double for libfftw3. Its
>>     input data is (fftw_complex) aka 16 B, no matter
>>     what precision I use. It comes out in float, long double
>>     and quad flavors, but input is the same.
>>     And it blows Opencl fft I was using by 10x!
>>     on the filesystem, less with live signals,
>>     but still faster:) And signal power is hotter:)
>>
>>     BR
>>     Nikos
>     FFTW3 is available in a single-precision instance -- Gnu Radio
>     uses it.=C2=A0=C2=A0 FFTW3F.
>
>
>>
>>     On Mon, May 12, 2025 at 4:24=E2=80=AFAM Marcus D. Leech
>>     <patchvonbraun@gmail.com> wrote:
>>
>>         On 10/05/2025 07:17, Nikos Balkanas wrote:
>>>         It turns out that the problem is not just bypassing the sse2
>>>         code:(
>>>         After commenting it out, uhd still crashes. The conversion
>>>         output
>>>         buffers are not created in=C2=A0_recv_one_packet()
>>>         Any ideas why they don't?
>>>
>>>         TIA
>>>         Nikos
>>         This should *Just work*.
>>
>>         What happens if you use rx_samples_to_file and specify:
>>
>>         --type double
>>
>>         This should write out double-precision (64-bit) complex
>>         floats to the output file. You should be able to use that exam=
ple
>>         =C2=A0 code as a bit of a template.
>>
>>         Also, I have to ask, why double precision?=C2=A0 Even
>>         single-precision float has more precision and dynamic range
>>         than is
>>         =C2=A0 actually represented by the 16-bit values on the wire,
>>         coming from the ADCs.=C2=A0=C2=A0=C2=A0 By moving to double-pr=
ecision,
>>         unless you
>>         =C2=A0 have a library that only supports double-precision math=
,
>>         you're just slowing down your computations for no good reason.
>>
>>
>>
>>>
>>>         On Sat, May 10, 2025 at 7:56=E2=80=AFAM Nikos Balkanas
>>>         <nbalkanas@gmail.com> wrote:
>>>
>>>             Hi all,
>>>
>>>             I recently changed my host application to complex
>>>             double. I had to change my stream_args to
>>>             fc64. I pass my void pointer to uhd_rx_streamer_recv
>>>             same as before:
>>>             ptr =3D (void **)&zin;
>>>             Unfortunately, the=C2=A0=C2=A0convert_chdr_1_to_fc64_1_gu=
ts
>>>             doesn't like it, I have only 1196 maxsamples, and
>>>             crashes. I don't need the sse2 code for my conversion. I
>>>             only use 1024 complex
>>>             =C2=A0samples/packet for fft. I am very happy with the
>>>             generic=C2=A0chdr_sc16_to_xx.
>>>             Does anyone have any fc64 experience and how one can
>>>             pass the void buffer pointer to
>>>             skip the sse2 code?
>>>
>>>             TIA
>>>             Nikos
>>>
>>>
>>>         _______________________________________________
>>>         USRP-users mailing list --usrp-users@lists.ettus.com
>>>         To unsubscribe send an email tousrp-users-leave@lists.ettus.c=
om
>>
>>         _______________________________________________
>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>         To unsubscribe send an email to usrp-users-leave@lists.ettus.c=
om
>>
>

--------------0otaQDfoIvMes0CSicjcjnVF
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 11/05/2025 22:45, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAAxXO2Gv4bUOUJ6cGW_wpB4nw4UuFVNY=3D=3DJXuS2UQZek6w3=3Dvg@mai=
l.gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small">Yes it is,
          But input is always double:(</div>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">BR</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Nikos</div=
>
      </div>
    </blockquote>
    Nope.<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://www.fftw.org/fftw3=
_doc/Precision.html">https://www.fftw.org/fftw3_doc/Precision.html</a><br=
>
    <br>
    The FFTW3F routines used in Gnu Radio take in single-precision
    (32-bit) and output single-precision (32-bit).=C2=A0 In most CPUs,<br=
>
    =C2=A0 the 64-bit floating-point pathways are slower than 32-bit
    pathways, which is why FFTW3 has a version of the libraries that<br>
    =C2=A0 process single-precision floating-point exclusively.=C2=A0 Thi=
s has
    been true literally for at least two decades of FFTW3, since I<br>
    =C2=A0 started using and contributing to Gnu Radio in 2004.<br>
    <br>
    Anyway, it's entirely up to you, but there's really no reason to use
    double-precision floats to process data that on the<br>
    =C2=A0 wire are only 16 bits.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAAxXO2Gv4bUOUJ6cGW_wpB4nw4UuFVNY=3D=3DJXuS2UQZek6w3=3Dvg@mai=
l.gmail.com"><br>
      <div class=3D"gmail_quote gmail_quote_container">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 12, 2025 at
          5:38=E2=80=AFAM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div>
            <div>On 11/05/2025 22:27, Nikos Balkanas wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div class=3D"gmail_default" style=3D"font-size:small">Th=
x
                  Marcus,</div>
                <div class=3D"gmail_default" style=3D"font-size:small"><b=
r>
                </div>
                <div class=3D"gmail_default" style=3D"font-size:small">I
                  worked it out 2 days ago. Just my memory allocation.</d=
iv>
                <div class=3D"gmail_default" style=3D"font-size:small">I =
am
                  passing input buffer with a global pointer.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">I =
was
                  using global stack allocation. When I switched to=C2=A0=
</div>
                <div class=3D"gmail_default" style=3D"font-size:small">ma=
lloc,
                  it just works fine:)</div>
                <div class=3D"gmail_default" style=3D"font-size:small">He=
re
                  is what happened: Input buffs didn't reach
                  the=C2=A0_recv_one_packet() where</div>
                <div class=3D"gmail_default" style=3D"font-size:small">b =
was
                  evaluated to nil and therefore out_buffs were
                  allocated to nil. It would be helpful</div>
                <div class=3D"gmail_default" style=3D"font-size:small">to
                  check allocations like these and issue a warning.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">In=
put,
                  however, still reached
                  the=C2=A0convert_chdr_1_to_fc64_1_guts but</div>
                <div class=3D"gmail_default" style=3D"font-size:small">ou=
tputs
                  and therefore output were evaluated to NULL.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">Wi=
th
                  NULL output it was sent through the guts function.</div=
>
                <div class=3D"gmail_default" style=3D"font-size:small">Ev=
en
                  commenting out the switch and sending it through</div>
                <div class=3D"gmail_default" style=3D"font-size:small">th=
e
                  generic=C2=A0<span style=3D"color:rgb(80,0,80)">chdr_sc=
16_to_xx
                    crashed it with no output buffers:(</span></div>
                <div class=3D"gmail_default" style=3D"font-size:small"><s=
pan
                    style=3D"color:rgb(80,0,80)">I am not quite sure why =
b
                    is not evaluated in=C2=A0</span>_recv_one_packet()</d=
iv>
                <div class=3D"gmail_default" style=3D"font-size:small">an=
d
                  is available downstream in
                  convert_chdr_1_to_fc64_1_guts</div>
                <div class=3D"gmail_default" style=3D"font-size:small">wi=
th
                  a global stack allocation. Unstable code?</div>
                <div class=3D"gmail_default" style=3D"font-size:small"><b=
r>
                </div>
                <div class=3D"gmail_default" style=3D"font-size:small">An=
yway,
                  I need the complex double for libfftw3. Its=C2=A0</div>
                <div class=3D"gmail_default" style=3D"font-size:small">in=
put
                  data is (fftw_complex) aka 16 B, no matter=C2=A0</div>
                <div class=3D"gmail_default" style=3D"font-size:small">wh=
at
                  precision I use. It comes out in float, long double</di=
v>
                <div class=3D"gmail_default" style=3D"font-size:small">an=
d
                  quad flavors, but input is the same.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">An=
d
                  it blows Opencl fft I was using by 10x!</div>
                <div class=3D"gmail_default" style=3D"font-size:small">on
                  the filesystem, less with live signals,</div>
                <div class=3D"gmail_default" style=3D"font-size:small">bu=
t
                  still faster:) And signal power is hotter:)</div>
                <div class=3D"gmail_default" style=3D"font-size:small"><b=
r>
                </div>
                <div class=3D"gmail_default" style=3D"font-size:small">BR=
</div>
                <div class=3D"gmail_default" style=3D"font-size:small">Ni=
kos</div>
              </div>
            </blockquote>
            FFTW3 is available in a single-precision instance -- Gnu
            Radio uses it.=C2=A0=C2=A0 FFTW3F.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 12, 202=
5
                  at 4:24=E2=80=AFAM Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">patchvonbraun@gmail.c=
om</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                  <div>
                    <div>On 10/05/2025 07:17, Nikos Balkanas wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">It turns out that the
                          problem is not just bypassing the sse2 code:(</=
div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">After commenting it
                          out, uhd still crashes. The conversion output</=
div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">buffers are not
                          created in=C2=A0_recv_one_packet()</div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">Any ideas why they
                          don't?</div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small"><br>
                        </div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">TIA=C2=A0</div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">Nikos</div>
                      </div>
                    </blockquote>
                    This should *Just work*.<br>
                    <br>
                    What happens if you use rx_samples_to_file and
                    specify:<br>
                    <br>
                    --type double<br>
                    <br>
                    This should write out double-precision (64-bit)
                    complex floats to the output file. You should be
                    able to use that example<br>
                    =C2=A0 code as a bit of a template.<br>
                    <br>
                    Also, I have to ask, why double precision?=C2=A0 Even
                    single-precision float has more precision and
                    dynamic range than is<br>
                    =C2=A0 actually represented by the 16-bit values on t=
he
                    wire, coming from the ADCs.=C2=A0=C2=A0=C2=A0 By movi=
ng to
                    double-precision, unless you<br>
                    =C2=A0 have a library that only supports double-preci=
sion
                    math, you're just slowing down your computations for
                    no good reason.<br>
                    <br>
                    <br>
                    =C2=A0 <br>
                    <blockquote type=3D"cite"><br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Sat, May
                          10, 2025 at 7:56=E2=80=AFAM Nikos Balkanas &lt;=
<a
                            href=3D"mailto:nbalkanas@gmail.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">nbalkanas@gma=
il.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                          <div dir=3D"ltr">
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">Hi all,</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small"><br>
                            </div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">I recently change=
d
                              my host application to complex double. I
                              had to change my stream_args to</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">fc64. I pass my
                              void pointer to uhd_rx_streamer_recv same
                              as before:</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">ptr =3D (void
                              **)&amp;zin;</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">Unfortunately,
                              the=C2=A0=C2=A0convert_chdr_1_to_fc64_1_gut=
s doesn't
                              like it, I have only 1196 maxsamples, and
                              crashes. I don't need the sse2 code for my
                              conversion. I only use 1024 complex</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">=C2=A0samples/pac=
ket
                              for fft. I am very happy with the
                              generic=C2=A0chdr_sc16_to_xx.</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">Does anyone have
                              any fc64 experience and how one can pass
                              the void buffer pointer to</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">skip the sse2
                              code?</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small"><br>
                            </div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">TIA</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">Nikos</div>
                          </div>
                        </blockquote>
                      </div>
                      <br>
                      <fieldset></fieldset>
                      <pre>______________________________________________=
_
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">usrp-users@lists.et=
tus.com</a>
To unsubscribe send an email to <a
                      href=3D"mailto:usrp-users-leave@lists.ettus.com"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">usrp-users-leave@li=
sts.ettus.com</a>
</pre>
                    </blockquote>
                    <br>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a><br>
                  To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users-leave@list=
s.ettus.com</a><br>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------0otaQDfoIvMes0CSicjcjnVF--

--===============2778831185651147094==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2778831185651147094==--
