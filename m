Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA217AB2E42
	for <lists+usrp-users@lfdr.de>; Mon, 12 May 2025 05:58:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 10BDC3860B6
	for <lists+usrp-users@lfdr.de>; Sun, 11 May 2025 23:58:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747022314; bh=wKBMvsEfwUclpO5k9YAv7ObRAAKHeSlvxtl8wQKslo8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=WqTFQc/TIaxKiTmyxy5HonNalrc6dlkMG9+HQOetQswp9NE/Okk/DUGur/gv5lvvr
	 gSz54HB91fe29j1yZLItpxeK8t0rqZILD+nPqNq6LjCnRRBDnosHFcwFbzMwmmmvOw
	 Oqh5spKH0d1gU1v9O29jXRFDB49knCgulN8fG4llcc9DQowGF7lZUH6jZ36PXwOfIS
	 jGfqz3UDaADZ2ZvAlVz+eDbNa+hLNL+SwfpCfnBQtC+25G95DGGTebGL4fLyquMxRl
	 nqTC7ruXaNG5KxOYIoe01x539rcrvy8Gjf7dDheWHyKfeMJ9cAazCrey7kkHo4bO2p
	 nLpuL2pdGt0dA==
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 6B57E385FAA
	for <usrp-users@lists.ettus.com>; Sun, 11 May 2025 23:57:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="k8k2Lwsi";
	dkim-atps=neutral
Received: by mail-il1-f175.google.com with SMTP id e9e14a558f8ab-3d818add2a3so13857705ab.1
        for <usrp-users@lists.ettus.com>; Sun, 11 May 2025 20:57:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747022272; x=1747627072; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=T/phLd81ttlDHsVqY0fLe3YJDrgNXpQ3Vl5K0BMKS1A=;
        b=k8k2Lwsi61vlYrCL3vHWjOeSLUh+iLSHZGk153HLgK7+lJyWy1AdSNQCgI8rzxIyrN
         CahZKbbLbxk3DjHx2+gwGXJgD2L9o7Wo0i7u2wrZ143+x6L/jdgC1OnKFib41JmkUXeM
         +877Q/6p6aFpvVS3G5PpgO0WEvwRErpZeSrjNOG59+ns1ze18bcUd1gk1vfKaVeSHr7v
         zSdKQBzmFyrDs7+W97VH+MeOAuPWxfKDQ5jKBEn6K5K28hvUq5a+b7dHPh1svHB9pVNA
         xVynkrgc0U27Rf36ZWxDsY72MlA3Pa55JG/2SGtSU/JqAba7BMnQhkdRT40hz5p9q9b5
         rmkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747022272; x=1747627072;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T/phLd81ttlDHsVqY0fLe3YJDrgNXpQ3Vl5K0BMKS1A=;
        b=rtcwpDm+RxWWhx7RtxUfsHezXGmu8ErGAy879cNhQFuXxymTcPh3v7xsvzLdZFkmSc
         NC0mLbuhlNDOLw6j8mO4+LgSUPu2pU5tYFpmQAbd4sx9w8oMh6Bbbe103P3rrai81/hP
         GdSH8Inq5kj+FBLyx1tiyzd2by5NpKN+qvtGLab1DhfxzTQF8mpoVE/HgjwRGBt+nlTI
         4nlEvLOjdUdxO01FWhxeu9DPJOfZaeOfXADjfNXITmWORaG92aqGnbw3b08ytBYBUp/I
         ngm4wMZye0F1PE731q0R0q0avIWEh0k4FxL9RcbE/hDYxuMPgH3NNbYga8rDSuSMg5jb
         6/Mg==
X-Gm-Message-State: AOJu0YzwUkqPRXciw3Z4FeD7GkoKbSOBF+kZfy4Izrz8ZILOd0qW0DVf
	sScgmHANxcTYsAyZVLXDjFnrJ3Ge3l7B1lG34c4cMI3vzsT2fKipw7HB7douu5jQG8Jft+iaPn3
	6SDv7RKHJJdxDXNqXa/26f5SxZ3U=
X-Gm-Gg: ASbGncsfhbfnb0rlonSqXPx/vun+qNBlL3MYNe5xMNP5EWbZ1oehxIGfLyuLVEdNz+D
	+vMFOLP/BQ2WvzNFgXSyeiVx8Z6uCGT5VSMJOULEDQURSxJANNcjp64nTiC21wcPF4FTXzZGqod
	NgUmGid9ZSxL5y+PDPnOdE8FZhKqx1BMFnuDnyyHVAzQ==
X-Google-Smtp-Source: AGHT+IHlkdYEvL6crtImyruglwqPUNhvYuYvQ+B5TlUe47wD/cy5FmSoQIwOl7WUt7lYkgBCCa7u7Kayj/k1bz7I7F0=
X-Received: by 2002:a92:c987:0:b0:3d6:d147:c6a2 with SMTP id
 e9e14a558f8ab-3da78594091mr129023795ab.8.1747022272018; Sun, 11 May 2025
 20:57:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2FTNui2gby9j+mRDx3bFHGzRjUpWAoB1Q086_DwghEZmA@mail.gmail.com>
 <CAAxXO2GhNJx4AB4-m7vVAsnhBdkHCjDHqRsFze1BqLvZswYcYQ@mail.gmail.com>
 <db5bfa88-bfe7-44bd-ac75-4981ef55c831@gmail.com> <CAAxXO2EaNs1mwLx5BK67qdKG9=833_KonYG4GHRPbeNOhvG0QQ@mail.gmail.com>
 <592e1d32-2e85-4b8a-9c04-afc8628c0805@gmail.com> <CAAxXO2Gv4bUOUJ6cGW_wpB4nw4UuFVNY==JXuS2UQZek6w3=vg@mail.gmail.com>
 <c159cdd4-9260-449a-a28d-9234b0b14fb3@gmail.com> <CAAxXO2F+qY4ryruH3=MnmxG61yOMm=s+3tNMS=ctcyBxFF-ygA@mail.gmail.com>
In-Reply-To: <CAAxXO2F+qY4ryruH3=MnmxG61yOMm=s+3tNMS=ctcyBxFF-ygA@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Mon, 12 May 2025 06:57:40 +0300
X-Gm-Features: AX0GCFuvxR-X7_wLbJwhtqK0kZqJNTfAsHZgPTPawa1JtM2wZwSSfjUIR7-H_PY
Message-ID: <CAAxXO2GFg8JujTZOFkuxun0K5USvD3Vp_PuLWiOhSmJSGki+3g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: Q4QIS6X2C772JGCYZQD3DJ3DNNZIPDP5
X-Message-ID-Hash: Q4QIS6X2C772JGCYZQD3DJ3DNNZIPDP5
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: fc64 help needed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q4QIS6X2C772JGCYZQD3DJ3DNNZIPDP5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1603979652320750318=="

--===============1603979652320750318==
Content-Type: multipart/alternative; boundary="000000000000f03db60634e85102"

--000000000000f03db60634e85102
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You are right. fftw says that in float precision, it accepts float inputs
to the API.
I assume they mean the libfftwf.so library and the fftwf_* API.
I didn't specify precision in my build. So I got libfftw.so (as opposed to
libfftwf.so or libfftwl.so).
This simplified Makefiles and source code:) I/O with  fftw_complex is still
16 B.
A quick and dirty test with libfftw3.so and complexf I/O resulted with
memory corruption.

I'll have to investigate this better and use the libfftwf.so library and
fftwf api, when I have more time.
I will update this thread when I do:)

Thx again,
Nikos

On Mon, May 12, 2025 at 6:10=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.com=
> wrote:

> Thx.I will check it:)
>
> On Mon, May 12, 2025 at 5:53=E2=80=AFAM Marcus D. Leech <patchvonbraun@gm=
ail.com>
> wrote:
>
>> On 11/05/2025 22:45, Nikos Balkanas wrote:
>>
>> Yes it is, But input is always double:(
>>
>> BR
>> Nikos
>>
>> Nope.
>>
>> https://www.fftw.org/fftw3_doc/Precision.html
>>
>> The FFTW3F routines used in Gnu Radio take in single-precision (32-bit)
>> and output single-precision (32-bit).  In most CPUs,
>>   the 64-bit floating-point pathways are slower than 32-bit pathways,
>> which is why FFTW3 has a version of the libraries that
>>   process single-precision floating-point exclusively.  This has been
>> true literally for at least two decades of FFTW3, since I
>>   started using and contributing to Gnu Radio in 2004.
>>
>> Anyway, it's entirely up to you, but there's really no reason to use
>> double-precision floats to process data that on the
>>   wire are only 16 bits.
>>
>>
>>
>> On Mon, May 12, 2025 at 5:38=E2=80=AFAM Marcus D. Leech <patchvonbraun@g=
mail.com>
>> wrote:
>>
>>> On 11/05/2025 22:27, Nikos Balkanas wrote:
>>>
>>> Thx Marcus,
>>>
>>> I worked it out 2 days ago. Just my memory allocation.
>>> I am passing input buffer with a global pointer.
>>> I was using global stack allocation. When I switched to
>>> malloc, it just works fine:)
>>> Here is what happened: Input buffs didn't reach the _recv_one_packet()
>>> where
>>> b was evaluated to nil and therefore out_buffs were allocated to nil. I=
t
>>> would be helpful
>>> to check allocations like these and issue a warning.
>>> Input, however, still reached the convert_chdr_1_to_fc64_1_guts but
>>> outputs and therefore output were evaluated to NULL.
>>> With NULL output it was sent through the guts function.
>>> Even commenting out the switch and sending it through
>>> the generic chdr_sc16_to_xx crashed it with no output buffers:(
>>> I am not quite sure why b is not evaluated in _recv_one_packet()
>>> and is available downstream in convert_chdr_1_to_fc64_1_guts
>>> with a global stack allocation. Unstable code?
>>>
>>> Anyway, I need the complex double for libfftw3. Its
>>> input data is (fftw_complex) aka 16 B, no matter
>>> what precision I use. It comes out in float, long double
>>> and quad flavors, but input is the same.
>>> And it blows Opencl fft I was using by 10x!
>>> on the filesystem, less with live signals,
>>> but still faster:) And signal power is hotter:)
>>>
>>> BR
>>> Nikos
>>>
>>> FFTW3 is available in a single-precision instance -- Gnu Radio uses
>>> it.   FFTW3F.
>>>
>>>
>>>
>>> On Mon, May 12, 2025 at 4:24=E2=80=AFAM Marcus D. Leech <patchvonbraun@=
gmail.com>
>>> wrote:
>>>
>>>> On 10/05/2025 07:17, Nikos Balkanas wrote:
>>>>
>>>> It turns out that the problem is not just bypassing the sse2 code:(
>>>> After commenting it out, uhd still crashes. The conversion output
>>>> buffers are not created in _recv_one_packet()
>>>> Any ideas why they don't?
>>>>
>>>> TIA
>>>> Nikos
>>>>
>>>> This should *Just work*.
>>>>
>>>> What happens if you use rx_samples_to_file and specify:
>>>>
>>>> --type double
>>>>
>>>> This should write out double-precision (64-bit) complex floats to the
>>>> output file. You should be able to use that example
>>>>   code as a bit of a template.
>>>>
>>>> Also, I have to ask, why double precision?  Even single-precision floa=
t
>>>> has more precision and dynamic range than is
>>>>   actually represented by the 16-bit values on the wire, coming from
>>>> the ADCs.    By moving to double-precision, unless you
>>>>   have a library that only supports double-precision math, you're just
>>>> slowing down your computations for no good reason.
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> On Sat, May 10, 2025 at 7:56=E2=80=AFAM Nikos Balkanas <nbalkanas@gmai=
l.com>
>>>> wrote:
>>>>
>>>>> Hi all,
>>>>>
>>>>> I recently changed my host application to complex double. I had to
>>>>> change my stream_args to
>>>>> fc64. I pass my void pointer to uhd_rx_streamer_recv same as before:
>>>>> ptr =3D (void **)&zin;
>>>>> Unfortunately, the  convert_chdr_1_to_fc64_1_guts doesn't like it, I
>>>>> have only 1196 maxsamples, and crashes. I don't need the sse2 code fo=
r my
>>>>> conversion. I only use 1024 complex
>>>>>  samples/packet for fft. I am very happy with the
>>>>> generic chdr_sc16_to_xx.
>>>>> Does anyone have any fc64 experience and how one can pass the void
>>>>> buffer pointer to
>>>>> skip the sse2 code?
>>>>>
>>>>> TIA
>>>>> Nikos
>>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>
>>>
>>

--000000000000f03db60634e85102
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">You=
 are right. fftw says that in float precision, it accepts float inputs to t=
he API.</div><div class=3D"gmail_default" style=3D"font-size:small">I assum=
e they mean the libfftwf.so library and the fftwf_* API.</div><div class=3D=
"gmail_default" style=3D"font-size:small">I didn&#39;t specify precision in=
 my build. So I got libfftw.so (as opposed to libfftwf.so or libfftwl.so).<=
/div><div class=3D"gmail_default" style=3D"font-size:small">This simplified=
 Makefiles and source code:) I/O with=C2=A0 fftw_complex is still 16 B.</di=
v><div class=3D"gmail_default" style=3D"font-size:small">A quick and dirty =
test with libfftw3.so and complexf I/O resulted with</div><div class=3D"gma=
il_default" style=3D"font-size:small">memory corruption.</div><div class=3D=
"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail_def=
ault" style=3D"font-size:small">I&#39;ll have to investigate this better an=
d use the libfftwf.so library and fftwf api, when I have more time.</div><d=
iv class=3D"gmail_default" style=3D"font-size:small">I will update this thr=
ead when I do:)</div><div class=3D"gmail_default" style=3D"font-size:small"=
><br></div><div class=3D"gmail_default" style=3D"font-size:small">Thx again=
,</div><div class=3D"gmail_default" style=3D"font-size:small">Nikos</div></=
div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Mon, May 12, 2025 at 6:10=E2=80=AFAM Nikos Balkanas =
&lt;<a href=3D"mailto:nbalkanas@gmail.com">nbalkanas@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div class=3D"gmail_default" style=3D"font-size:small">Thx.I will check=
 it:)</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Mon, May 12, 2025 at 5:53=E2=80=AFAM Marcus D. Leech &lt;<a h=
ref=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 11/05/2025 22:45, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small">Yes it is,
          But input is always double:(</div>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">BR</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Nikos</div>
      </div>
    </blockquote>
    Nope.<br>
    <br>
    <a href=3D"https://www.fftw.org/fftw3_doc/Precision.html" target=3D"_bl=
ank">https://www.fftw.org/fftw3_doc/Precision.html</a><br>
    <br>
    The FFTW3F routines used in Gnu Radio take in single-precision
    (32-bit) and output single-precision (32-bit).=C2=A0 In most CPUs,<br>
    =C2=A0 the 64-bit floating-point pathways are slower than 32-bit
    pathways, which is why FFTW3 has a version of the libraries that<br>
    =C2=A0 process single-precision floating-point exclusively.=C2=A0 This =
has
    been true literally for at least two decades of FFTW3, since I<br>
    =C2=A0 started using and contributing to Gnu Radio in 2004.<br>
    <br>
    Anyway, it&#39;s entirely up to you, but there&#39;s really no reason t=
o use
    double-precision floats to process data that on the<br>
    =C2=A0 wire are only 16 bits.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 12, 2025 at
          5:38=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbra=
un@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 11/05/2025 22:27, Nikos Balkanas wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div class=3D"gmail_default" style=3D"font-size:small">Thx
                  Marcus,</div>
                <div class=3D"gmail_default" style=3D"font-size:small"><br>
                </div>
                <div class=3D"gmail_default" style=3D"font-size:small">I
                  worked it out 2 days ago. Just my memory allocation.</div=
>
                <div class=3D"gmail_default" style=3D"font-size:small">I am
                  passing input buffer with a global pointer.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">I wa=
s
                  using global stack allocation. When I switched to=C2=A0</=
div>
                <div class=3D"gmail_default" style=3D"font-size:small">mall=
oc,
                  it just works fine:)</div>
                <div class=3D"gmail_default" style=3D"font-size:small">Here
                  is what happened: Input buffs didn&#39;t reach
                  the=C2=A0_recv_one_packet() where</div>
                <div class=3D"gmail_default" style=3D"font-size:small">b wa=
s
                  evaluated to nil and therefore out_buffs were
                  allocated to nil. It would be helpful</div>
                <div class=3D"gmail_default" style=3D"font-size:small">to
                  check allocations like these and issue a warning.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">Inpu=
t,
                  however, still reached
                  the=C2=A0convert_chdr_1_to_fc64_1_guts but</div>
                <div class=3D"gmail_default" style=3D"font-size:small">outp=
uts
                  and therefore output were evaluated to NULL.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">With
                  NULL output it was sent through the guts function.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">Even
                  commenting out the switch and sending it through</div>
                <div class=3D"gmail_default" style=3D"font-size:small">the
                  generic=C2=A0<span style=3D"color:rgb(80,0,80)">chdr_sc16=
_to_xx
                    crashed it with no output buffers:(</span></div>
                <div class=3D"gmail_default" style=3D"font-size:small"><spa=
n style=3D"color:rgb(80,0,80)">I am not quite sure why b
                    is not evaluated in=C2=A0</span>_recv_one_packet()</div=
>
                <div class=3D"gmail_default" style=3D"font-size:small">and
                  is available downstream in
                  convert_chdr_1_to_fc64_1_guts</div>
                <div class=3D"gmail_default" style=3D"font-size:small">with
                  a global stack allocation. Unstable code?</div>
                <div class=3D"gmail_default" style=3D"font-size:small"><br>
                </div>
                <div class=3D"gmail_default" style=3D"font-size:small">Anyw=
ay,
                  I need the complex double for libfftw3. Its=C2=A0</div>
                <div class=3D"gmail_default" style=3D"font-size:small">inpu=
t
                  data is (fftw_complex) aka 16 B, no matter=C2=A0</div>
                <div class=3D"gmail_default" style=3D"font-size:small">what
                  precision I use. It comes out in float, long double</div>
                <div class=3D"gmail_default" style=3D"font-size:small">and
                  quad flavors, but input is the same.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">And
                  it blows Opencl fft I was using by 10x!</div>
                <div class=3D"gmail_default" style=3D"font-size:small">on
                  the filesystem, less with live signals,</div>
                <div class=3D"gmail_default" style=3D"font-size:small">but
                  still faster:) And signal power is hotter:)</div>
                <div class=3D"gmail_default" style=3D"font-size:small"><br>
                </div>
                <div class=3D"gmail_default" style=3D"font-size:small">BR</=
div>
                <div class=3D"gmail_default" style=3D"font-size:small">Niko=
s</div>
              </div>
            </blockquote>
            FFTW3 is available in a single-precision instance -- Gnu
            Radio uses it.=C2=A0=C2=A0 FFTW3F.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 12, 2025
                  at 4:24=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:=
patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 10/05/2025 07:17, Nikos Balkanas wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div class=3D"gmail_default" style=3D"font-size:sma=
ll">It turns out that the
                          problem is not just bypassing the sse2 code:(</di=
v>
                        <div class=3D"gmail_default" style=3D"font-size:sma=
ll">After commenting it
                          out, uhd still crashes. The conversion output</di=
v>
                        <div class=3D"gmail_default" style=3D"font-size:sma=
ll">buffers are not
                          created in=C2=A0_recv_one_packet()</div>
                        <div class=3D"gmail_default" style=3D"font-size:sma=
ll">Any ideas why they
                          don&#39;t?</div>
                        <div class=3D"gmail_default" style=3D"font-size:sma=
ll"><br>
                        </div>
                        <div class=3D"gmail_default" style=3D"font-size:sma=
ll">TIA=C2=A0</div>
                        <div class=3D"gmail_default" style=3D"font-size:sma=
ll">Nikos</div>
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
                    =C2=A0 actually represented by the 16-bit values on the
                    wire, coming from the ADCs.=C2=A0=C2=A0=C2=A0 By moving=
 to
                    double-precision, unless you<br>
                    =C2=A0 have a library that only supports double-precisi=
on
                    math, you&#39;re just slowing down your computations fo=
r
                    no good reason.<br>
                    <br>
                    <br>
                    =C2=A0 <br>
                    <blockquote type=3D"cite"><br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Sat, May
                          10, 2025 at 7:56=E2=80=AFAM Nikos Balkanas &lt;<a=
 href=3D"mailto:nbalkanas@gmail.com" target=3D"_blank">nbalkanas@gmail.com<=
/a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                          <div dir=3D"ltr">
                            <div class=3D"gmail_default" style=3D"font-size=
:small">Hi all,</div>
                            <div class=3D"gmail_default" style=3D"font-size=
:small"><br>
                            </div>
                            <div class=3D"gmail_default" style=3D"font-size=
:small">I recently changed
                              my host application to complex double. I
                              had to change my stream_args to</div>
                            <div class=3D"gmail_default" style=3D"font-size=
:small">fc64. I pass my
                              void pointer to uhd_rx_streamer_recv same
                              as before:</div>
                            <div class=3D"gmail_default" style=3D"font-size=
:small">ptr =3D (void
                              **)&amp;zin;</div>
                            <div class=3D"gmail_default" style=3D"font-size=
:small">Unfortunately,
                              the=C2=A0=C2=A0convert_chdr_1_to_fc64_1_guts =
doesn&#39;t
                              like it, I have only 1196 maxsamples, and
                              crashes. I don&#39;t need the sse2 code for m=
y
                              conversion. I only use 1024 complex</div>
                            <div class=3D"gmail_default" style=3D"font-size=
:small">=C2=A0samples/packet
                              for fft. I am very happy with the
                              generic=C2=A0chdr_sc16_to_xx.</div>
                            <div class=3D"gmail_default" style=3D"font-size=
:small">Does anyone have
                              any fc64 experience and how one can pass
                              the void buffer pointer to</div>
                            <div class=3D"gmail_default" style=3D"font-size=
:small">skip the sse2
                              code?</div>
                            <div class=3D"gmail_default" style=3D"font-size=
:small"><br>
                            </div>
                            <div class=3D"gmail_default" style=3D"font-size=
:small">TIA</div>
                            <div class=3D"gmail_default" style=3D"font-size=
:small">Nikos</div>
                          </div>
                        </blockquote>
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
                    <br>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                  To unsubscribe send an email to <a href=3D"mailto:usrp-us=
ers-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.c=
om</a><br>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>
</blockquote></div>

--000000000000f03db60634e85102--

--===============1603979652320750318==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1603979652320750318==--
