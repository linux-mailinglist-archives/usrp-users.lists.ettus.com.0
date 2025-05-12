Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 977F2AB2DCA
	for <lists+usrp-users@lfdr.de>; Mon, 12 May 2025 05:11:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D850B38619F
	for <lists+usrp-users@lfdr.de>; Sun, 11 May 2025 23:11:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747019508; bh=l2xliPNiRi1vyWkOF06Wc4+sDM/5n4hY5xiF3dJ8hYk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=UKDS3RbMrREj+l2lx7vMHd05z4khNin5YwUrzracami4GVFqab25dZpcBZ9BTjiOD
	 wqwsxnFH6PvqSsYFMr/V4N/hb5fNXo7Uv2TPWHwhjbCsJVJU28EaK046Wr3E5dRdjH
	 uVQ8fQ1x3ftM3l1I49UKLIcNYGWb6NgO6uAJK5CXWUvXxi0MDzMTI/UzysVUNl8Bgm
	 60VhjcauSehkPEyKnJhZ9CJ0G1yEY6FLTf/mGpEkx5WRRIBVf6eGWpRpzWAxnoxB2x
	 Bm3sLK1rMjizYy799SWhCAx9AoiS9IzjWMxtXSyog1ToK0IPMoBbSvEfuCCoHlXSAs
	 pCsxPZLBOAnGA==
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 3B929385ED9
	for <usrp-users@lists.ettus.com>; Sun, 11 May 2025 23:11:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Dln0zYzb";
	dkim-atps=neutral
Received: by mail-il1-f178.google.com with SMTP id e9e14a558f8ab-3d818add2a3so13793405ab.1
        for <usrp-users@lists.ettus.com>; Sun, 11 May 2025 20:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747019469; x=1747624269; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0kKT8+a83uXdvL1OFEUo3Ewj0/Mq6uJoGuI3d/txMuk=;
        b=Dln0zYzbzQH5HbiVXuYvIwCwJd3x578DafooZ/dHJWoKCGbMM41pf0qGdL/rLavIxA
         bRnng841sXcdj/N4w4bHlD78qRr2Riq2vzhh/cDu4zp1/TAO8F3dAtnyjtY+qG6vblZz
         lr/7siq4eqKPWDVEFfr9M/UDn7423zCzPFTnyYsoH1jzwTNcZZVI21E5n4KJJtPbDdWv
         85D/9iMoIZM2k7idaMfoHRPJP/qQyC+KBrpC0EIPoNd/KJUh/7N+cSmysprX3tB6LrVj
         m2SttfH7u9VsmQ1Ckv5dFBWWz/VzUYqOX0/+brTckTWPUjtExGZAwPDy9dcHvSID+zzn
         lq3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747019469; x=1747624269;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0kKT8+a83uXdvL1OFEUo3Ewj0/Mq6uJoGuI3d/txMuk=;
        b=gyZhLQ5QZk4QCLlHMVxh9yaQU7P+kxyzoj2dbfpDplSl+MRXAJJ2Iuv63jyDKE0BDR
         fas7tPdPjfL+2OXV/Vy1YvVk2LYLTHiWH0NaPsjePfGc14xM6MdpH46Pm+aqANgelekp
         DVVXgybwi2eanEJXa5MTW3oc95heXjMSZ85fXZrDSYoEHhGi/oK3y3bt5/0CRyw+Dp8V
         SbEeHTq5E3KNvuhuAGw2e6tPb3skQ0bLN48WHV8R3lpSrfqm8baQ0Tn3JSlaC94576jR
         OotGqbhx+nlO/Hkc4yB9ZhuaPawoFhevLhSUa0Vj5/SijS9bfKQg64TXNAYSBSdyoHuq
         BTew==
X-Gm-Message-State: AOJu0YyMP+fnDureY85jKPXaRd6pI+MxYgMojHv0qqt67LFwD/yR7IOX
	8i8j1WLJZdHu1TT7RYp4JXakei3c9ihEXxjUT0m3zjMwIuhOl2G+9kHjFeAx90SfD1ZXujp1lsk
	jV2O4ajre/U9A2tQLlbCmHIcqbp0=
X-Gm-Gg: ASbGncthVAGkJyGNz7+ss9FkinlE4HBH7cjNt07UwrslLpufXBPuC9pjANcfkYrMRXe
	9ntioLpOQZp/gqhH+qXeX/iyLcj8l8eNltAwCs55Ki/CF2An07Eec1HrL+QjdhyZ7qyEYtT4pey
	963RkX/KO/HQp0OLQNZWo1HazwVc9p3VE=
X-Google-Smtp-Source: AGHT+IHotOlMEl6p9Isqkt6sb+TWNdmQxuBP3B5/PfILH7vN/FWYv+V4QGPytLKxWF3wIhW4Ppk6lzr+ON26qtnmbbI=
X-Received: by 2002:a92:c987:0:b0:3d6:d147:c6a2 with SMTP id
 e9e14a558f8ab-3da78594091mr128530325ab.8.1747019469170; Sun, 11 May 2025
 20:11:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2FTNui2gby9j+mRDx3bFHGzRjUpWAoB1Q086_DwghEZmA@mail.gmail.com>
 <CAAxXO2GhNJx4AB4-m7vVAsnhBdkHCjDHqRsFze1BqLvZswYcYQ@mail.gmail.com>
 <db5bfa88-bfe7-44bd-ac75-4981ef55c831@gmail.com> <CAAxXO2EaNs1mwLx5BK67qdKG9=833_KonYG4GHRPbeNOhvG0QQ@mail.gmail.com>
 <592e1d32-2e85-4b8a-9c04-afc8628c0805@gmail.com> <CAAxXO2Gv4bUOUJ6cGW_wpB4nw4UuFVNY==JXuS2UQZek6w3=vg@mail.gmail.com>
 <c159cdd4-9260-449a-a28d-9234b0b14fb3@gmail.com>
In-Reply-To: <c159cdd4-9260-449a-a28d-9234b0b14fb3@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Mon, 12 May 2025 06:10:57 +0300
X-Gm-Features: AX0GCFtbEOHB7Vzsku3EFwgbkr1lXKZJIu_B-7r-OFT3y7Ccqhzwd56k3y567cs
Message-ID: <CAAxXO2F+qY4ryruH3=MnmxG61yOMm=s+3tNMS=ctcyBxFF-ygA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: S4EPH3G3VOGKIQ2SH2NEDFTT5XCD4EQP
X-Message-ID-Hash: S4EPH3G3VOGKIQ2SH2NEDFTT5XCD4EQP
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: fc64 help needed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S4EPH3G3VOGKIQ2SH2NEDFTT5XCD4EQP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8559949066496584181=="

--===============8559949066496584181==
Content-Type: multipart/alternative; boundary="000000000000e02c310634e7aaae"

--000000000000e02c310634e7aaae
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thx.I will check it:)

On Mon, May 12, 2025 at 5:53=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 11/05/2025 22:45, Nikos Balkanas wrote:
>
> Yes it is, But input is always double:(
>
> BR
> Nikos
>
> Nope.
>
> https://www.fftw.org/fftw3_doc/Precision.html
>
> The FFTW3F routines used in Gnu Radio take in single-precision (32-bit)
> and output single-precision (32-bit).  In most CPUs,
>   the 64-bit floating-point pathways are slower than 32-bit pathways,
> which is why FFTW3 has a version of the libraries that
>   process single-precision floating-point exclusively.  This has been tru=
e
> literally for at least two decades of FFTW3, since I
>   started using and contributing to Gnu Radio in 2004.
>
> Anyway, it's entirely up to you, but there's really no reason to use
> double-precision floats to process data that on the
>   wire are only 16 bits.
>
>
>
> On Mon, May 12, 2025 at 5:38=E2=80=AFAM Marcus D. Leech <patchvonbraun@gm=
ail.com>
> wrote:
>
>> On 11/05/2025 22:27, Nikos Balkanas wrote:
>>
>> Thx Marcus,
>>
>> I worked it out 2 days ago. Just my memory allocation.
>> I am passing input buffer with a global pointer.
>> I was using global stack allocation. When I switched to
>> malloc, it just works fine:)
>> Here is what happened: Input buffs didn't reach the _recv_one_packet()
>> where
>> b was evaluated to nil and therefore out_buffs were allocated to nil. It
>> would be helpful
>> to check allocations like these and issue a warning.
>> Input, however, still reached the convert_chdr_1_to_fc64_1_guts but
>> outputs and therefore output were evaluated to NULL.
>> With NULL output it was sent through the guts function.
>> Even commenting out the switch and sending it through
>> the generic chdr_sc16_to_xx crashed it with no output buffers:(
>> I am not quite sure why b is not evaluated in _recv_one_packet()
>> and is available downstream in convert_chdr_1_to_fc64_1_guts
>> with a global stack allocation. Unstable code?
>>
>> Anyway, I need the complex double for libfftw3. Its
>> input data is (fftw_complex) aka 16 B, no matter
>> what precision I use. It comes out in float, long double
>> and quad flavors, but input is the same.
>> And it blows Opencl fft I was using by 10x!
>> on the filesystem, less with live signals,
>> but still faster:) And signal power is hotter:)
>>
>> BR
>> Nikos
>>
>> FFTW3 is available in a single-precision instance -- Gnu Radio uses it.
>> FFTW3F.
>>
>>
>>
>> On Mon, May 12, 2025 at 4:24=E2=80=AFAM Marcus D. Leech <patchvonbraun@g=
mail.com>
>> wrote:
>>
>>> On 10/05/2025 07:17, Nikos Balkanas wrote:
>>>
>>> It turns out that the problem is not just bypassing the sse2 code:(
>>> After commenting it out, uhd still crashes. The conversion output
>>> buffers are not created in _recv_one_packet()
>>> Any ideas why they don't?
>>>
>>> TIA
>>> Nikos
>>>
>>> This should *Just work*.
>>>
>>> What happens if you use rx_samples_to_file and specify:
>>>
>>> --type double
>>>
>>> This should write out double-precision (64-bit) complex floats to the
>>> output file. You should be able to use that example
>>>   code as a bit of a template.
>>>
>>> Also, I have to ask, why double precision?  Even single-precision float
>>> has more precision and dynamic range than is
>>>   actually represented by the 16-bit values on the wire, coming from th=
e
>>> ADCs.    By moving to double-precision, unless you
>>>   have a library that only supports double-precision math, you're just
>>> slowing down your computations for no good reason.
>>>
>>>
>>>
>>>
>>>
>>> On Sat, May 10, 2025 at 7:56=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail=
.com>
>>> wrote:
>>>
>>>> Hi all,
>>>>
>>>> I recently changed my host application to complex double. I had to
>>>> change my stream_args to
>>>> fc64. I pass my void pointer to uhd_rx_streamer_recv same as before:
>>>> ptr =3D (void **)&zin;
>>>> Unfortunately, the  convert_chdr_1_to_fc64_1_guts doesn't like it, I
>>>> have only 1196 maxsamples, and crashes. I don't need the sse2 code for=
 my
>>>> conversion. I only use 1024 complex
>>>>  samples/packet for fft. I am very happy with the
>>>> generic chdr_sc16_to_xx.
>>>> Does anyone have any fc64 experience and how one can pass the void
>>>> buffer pointer to
>>>> skip the sse2 code?
>>>>
>>>> TIA
>>>> Nikos
>>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
>>
>

--000000000000e02c310634e7aaae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Thx=
.I will check it:)</div></div><br><div class=3D"gmail_quote gmail_quote_con=
tainer"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 12, 2025 at 5:53=
=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">=
patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><u></u>

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

--000000000000e02c310634e7aaae--

--===============8559949066496584181==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8559949066496584181==--
