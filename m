Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 692C6AB2D8C
	for <lists+usrp-users@lfdr.de>; Mon, 12 May 2025 04:39:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2EDEB385ECF
	for <lists+usrp-users@lfdr.de>; Sun, 11 May 2025 22:38:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747017539; bh=lcC9dZzhJNtGe0LMYlkwKuKwBBesb7SqMU6E+ijdDa8=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Oqh/9ucYl9AzYAkI4I4fohVImuICrn5I2JFOHspgrD2UxSs3s3a3axjDe6WSUgxMi
	 rs4tUZfsABFPiOHD1Z6qscHQNCIut5Fu3WpagkMK3U1RUAWHzjEZW38JvLMApaac96
	 6gtwjT12J6efJpTY8Bz1PKD2OcNirwGMa4zzWSpaZyryMi5+rxnPoXUgID2iPiF74d
	 9raY2ZAiYKkjyzVc1+uOGbPIAxd9IpXua1pOsh9G8SdjVBX7SsucivrDH2OVSTym4g
	 +txobgDjGrWDYwqbEb2uHhw24J1ze4jwisTk+oQBFKxMOPVj/0DNqm/XRmdJP77pWy
	 I1Xij8wdgctdw==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 1DC97385412
	for <usrp-users@lists.ettus.com>; Sun, 11 May 2025 22:38:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YH21/Erh";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-4811fca8658so57637381cf.3
        for <usrp-users@lists.ettus.com>; Sun, 11 May 2025 19:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747017498; x=1747622298; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1mkfxRPK8A8Ql8BYXe45ewBPe8QfWJ/uEO/w6hcBENU=;
        b=YH21/Erhn66ZuEP0WIR9mTY1wDOJVXgjgwljB7IEg+mMXTGFhif4nj+km1zQbpPWws
         J/Bl76YrtQaBujHU+ulS0rr4G8b3Zj+M0+VHJkRSacVsP2GQlnMVk95klmtKn4Oe9cFm
         Z+GsVdGm+86xU42bs/XqP0AJbUP54blMwnpurlwinGEp+w7rQ+9sYY6u7oQT2kZZES9W
         rArxgJBhgeRA4Ldo/1WnNVOxVHniacY47hEssNxBOl/gjoxweIKGxM6JgKjWkjREcrZN
         AtlwfKOY0CsWvPszZMzkZ+S9iWXBUmSXALvql6US9+r5dJg4MjItxbAOaS9nt7i4p8v1
         hUzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747017498; x=1747622298;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1mkfxRPK8A8Ql8BYXe45ewBPe8QfWJ/uEO/w6hcBENU=;
        b=JQHbndtHiH4kmDpDpDIig48yKwrhj0Q0Vomf5CDmfsPzO738f9sEgethUV4Ji1eVPL
         Mj4z0+ludm0HDgaRZYKiMLVMRpcc9NTB7zND6oz0l3VsqfJIOnTu3M6ecQ8sYS0/Lg72
         FWSeB1h2cgBNblz+Iy1AwUO6Nory+UyaHhQ1/nnqGRLNsEoL5NpP4uElKL6FLbutYkct
         y65xCRqt74wYMu0WoSxoZ2/1kpfzetX/9bsr8ypnkutGciQeE67AHyvpaoW3o4aB8dHE
         1hYO//EI9WJHZ+O+QWBUZdg6Oxhba+2qsc1z9B7dIzhQCz+IWUHFzhnPuUU462P7H/Rr
         8XxA==
X-Gm-Message-State: AOJu0YyJ6+X2e3SF1OCdiMeCYYsdKxh8ZOc9Urrso80GV7iCDWzCu6O0
	nX5vPUqpCQaMzeEL5MBC2LPra7W6onZvuf4Z3wLqq5bC0wBHW4X9
X-Gm-Gg: ASbGnctphb2eAG8LxazMRl5bgIVnRIMxxni+Hk0HUvW41W/on3mLozwHfTbYfXsSfU7
	Pi343XNxQiXxWBAQL0Nhhf9TE8EuQWG08lQI3ZoMXShz8pB5NpsYT+QqVu+WmolKl6RIWN+bgbU
	C2pTlDDW6iRmke92QpVNJ0ijmpoLOQ5NiqVNEM/RQntf4i+3mAkdWQ0odOq+a4PBG4Hy1GDEJRj
	3gP4tG3j47HKxV7Bb9w6Iv1sdZGOJECDl1V2/UmfA03C11C514GpRmZlRmvHrbtrCpLCa2wKzZb
	QalL4/gLr2iw2HShjG4ySAGf1Mf27vSIDN3VAhELSlwk3AYxqgXgbs9P3Aw5IWn0e131NhE=
X-Google-Smtp-Source: AGHT+IFhOfmV9iMRTvpKAyk5KHprwCESAg61+Yg2usQXfKD7emEg5UZbfZBGnKHpl9APgivjjhEcjg==
X-Received: by 2002:ac8:5941:0:b0:476:a967:b242 with SMTP id d75a77b69052e-49452763a89mr158127561cf.30.1747017498287;
        Sun, 11 May 2025 19:38:18 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-494524bbaa3sm45624781cf.45.2025.05.11.19.38.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 May 2025 19:38:17 -0700 (PDT)
Message-ID: <592e1d32-2e85-4b8a-9c04-afc8628c0805@gmail.com>
Date: Sun, 11 May 2025 22:38:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nikos Balkanas <nbalkanas@gmail.com>
References: <CAAxXO2FTNui2gby9j+mRDx3bFHGzRjUpWAoB1Q086_DwghEZmA@mail.gmail.com>
 <CAAxXO2GhNJx4AB4-m7vVAsnhBdkHCjDHqRsFze1BqLvZswYcYQ@mail.gmail.com>
 <db5bfa88-bfe7-44bd-ac75-4981ef55c831@gmail.com>
 <CAAxXO2EaNs1mwLx5BK67qdKG9=833_KonYG4GHRPbeNOhvG0QQ@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2EaNs1mwLx5BK67qdKG9=833_KonYG4GHRPbeNOhvG0QQ@mail.gmail.com>
Message-ID-Hash: O6BTJNJUGCVTSERJTOKSDEBTQ4XMII44
X-Message-ID-Hash: O6BTJNJUGCVTSERJTOKSDEBTQ4XMII44
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: fc64 help needed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O6BTJNJUGCVTSERJTOKSDEBTQ4XMII44/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3232663513783959053=="

This is a multi-part message in MIME format.
--===============3232663513783959053==
Content-Type: multipart/alternative;
 boundary="------------PQEik1mMUE8DygbjgM1qLV4h"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------PQEik1mMUE8DygbjgM1qLV4h
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 11/05/2025 22:27, Nikos Balkanas wrote:
> Thx Marcus,
>
> I worked it out 2 days ago. Just my memory allocation.
> I am passing input buffer with a global pointer.
> I was using global stack allocation. When I switched to
> malloc, it just works fine:)
> Here is what happened: Input buffs didn't reach the=C2=A0_recv_one_pack=
et()=20
> where
> b was evaluated to nil and therefore out_buffs were allocated to nil.=20
> It would be helpful
> to check allocations like these and issue a warning.
> Input, however, still reached the=C2=A0convert_chdr_1_to_fc64_1_guts bu=
t
> outputs and therefore output were evaluated to NULL.
> With NULL output it was sent through the guts function.
> Even commenting out the switch and sending it through
> the generic chdr_sc16_to_xx crashed it with no output buffers:(
> I am not quite sure why b is not evaluated in _recv_one_packet()
> and is available downstream in convert_chdr_1_to_fc64_1_guts
> with a global stack allocation. Unstable code?
>
> Anyway, I need the complex double for libfftw3. Its
> input data is (fftw_complex) aka 16 B, no matter
> what precision I use. It comes out in float, long double
> and quad flavors, but input is the same.
> And it blows Opencl fft I was using by 10x!
> on the filesystem, less with live signals,
> but still faster:) And signal power is hotter:)
>
> BR
> Nikos
FFTW3 is available in a single-precision instance -- Gnu Radio uses=20
it.=C2=A0=C2=A0 FFTW3F.


>
> On Mon, May 12, 2025 at 4:24=E2=80=AFAM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 10/05/2025 07:17, Nikos Balkanas wrote:
>>     It turns out that the problem is not just bypassing the sse2 code:=
(
>>     After commenting it out, uhd still crashes. The conversion output
>>     buffers are not created in=C2=A0_recv_one_packet()
>>     Any ideas why they don't?
>>
>>     TIA
>>     Nikos
>     This should *Just work*.
>
>     What happens if you use rx_samples_to_file and specify:
>
>     --type double
>
>     This should write out double-precision (64-bit) complex floats to
>     the output file. You should be able to use that example
>     =C2=A0 code as a bit of a template.
>
>     Also, I have to ask, why double precision?=C2=A0 Even single-precis=
ion
>     float has more precision and dynamic range than is
>     =C2=A0 actually represented by the 16-bit values on the wire, comin=
g
>     from the ADCs.=C2=A0=C2=A0=C2=A0 By moving to double-precision, unl=
ess you
>     =C2=A0 have a library that only supports double-precision math, you=
're
>     just slowing down your computations for no good reason.
>
>
>
>>
>>     On Sat, May 10, 2025 at 7:56=E2=80=AFAM Nikos Balkanas
>>     <nbalkanas@gmail.com> wrote:
>>
>>         Hi all,
>>
>>         I recently changed my host application to complex double. I
>>         had to change my stream_args to
>>         fc64. I pass my void pointer to uhd_rx_streamer_recv same as
>>         before:
>>         ptr =3D (void **)&zin;
>>         Unfortunately, the=C2=A0=C2=A0convert_chdr_1_to_fc64_1_guts do=
esn't
>>         like it, I have only 1196 maxsamples, and crashes. I don't
>>         need the sse2 code for my conversion. I only use 1024 complex
>>         =C2=A0samples/packet for fft. I am very happy with the
>>         generic=C2=A0chdr_sc16_to_xx.
>>         Does anyone have any fc64 experience and how one can pass the
>>         void buffer pointer to
>>         skip the sse2 code?
>>
>>         TIA
>>         Nikos
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------PQEik1mMUE8DygbjgM1qLV4h
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 11/05/2025 22:27, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAAxXO2EaNs1mwLx5BK67qdKG9=3D833_KonYG4GHRPbeNOhvG0QQ@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small">Thx Marcus=
,</div>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">I worked i=
t
          out 2 days ago. Just my memory allocation.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">I am passi=
ng
          input buffer with a global pointer.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">I was usin=
g
          global stack allocation. When I switched to=C2=A0</div>
        <div class=3D"gmail_default" style=3D"font-size:small">malloc, it
          just works fine:)</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Here is wh=
at
          happened: Input buffs didn't reach the=C2=A0_recv_one_packet()
          where</div>
        <div class=3D"gmail_default" style=3D"font-size:small">b was
          evaluated to nil and therefore out_buffs were allocated to
          nil. It would be helpful</div>
        <div class=3D"gmail_default" style=3D"font-size:small">to check
          allocations like these and issue a warning.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Input,
          however, still reached the=C2=A0convert_chdr_1_to_fc64_1_guts b=
ut</div>
        <div class=3D"gmail_default" style=3D"font-size:small">outputs an=
d
          therefore output were evaluated to NULL.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">With NULL
          output it was sent through the guts function.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Even
          commenting out the switch and sending it through</div>
        <div class=3D"gmail_default" style=3D"font-size:small">the generi=
c=C2=A0<span
            style=3D"color:rgb(80,0,80)">chdr_sc16_to_xx crashed it with
            no output buffers:(</span></div>
        <div class=3D"gmail_default" style=3D"font-size:small"><span
            style=3D"color:rgb(80,0,80)">I am not quite sure why b is not
            evaluated in=C2=A0</span>_recv_one_packet()</div>
        <div class=3D"gmail_default" style=3D"font-size:small">and is
          available downstream in convert_chdr_1_to_fc64_1_guts</div>
        <div class=3D"gmail_default" style=3D"font-size:small">with a glo=
bal
          stack allocation. Unstable code?</div>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">Anyway, I
          need the complex double for libfftw3. Its=C2=A0</div>
        <div class=3D"gmail_default" style=3D"font-size:small">input data=
 is
          (fftw_complex) aka 16 B, no matter=C2=A0</div>
        <div class=3D"gmail_default" style=3D"font-size:small">what
          precision I use. It comes out in float, long double</div>
        <div class=3D"gmail_default" style=3D"font-size:small">and quad
          flavors, but input is the same.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">And it blo=
ws
          Opencl fft I was using by 10x!</div>
        <div class=3D"gmail_default" style=3D"font-size:small">on the
          filesystem, less with live signals,</div>
        <div class=3D"gmail_default" style=3D"font-size:small">but still
          faster:) And signal power is hotter:)</div>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">BR</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Nikos</div=
>
      </div>
    </blockquote>
    FFTW3 is available in a single-precision instance -- Gnu Radio uses
    it.=C2=A0=C2=A0 FFTW3F.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAAxXO2EaNs1mwLx5BK67qdKG9=3D833_KonYG4GHRPbeNOhvG0QQ@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote gmail_quote_container">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 12, 2025 at
          4:24=E2=80=AFAM Marcus D. Leech &lt;<a
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
            <div>On 10/05/2025 07:17, Nikos Balkanas wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div class=3D"gmail_default" style=3D"font-size:small">It
                  turns out that the problem is not just bypassing the
                  sse2 code:(</div>
                <div class=3D"gmail_default" style=3D"font-size:small">Af=
ter
                  commenting it out, uhd still crashes. The conversion
                  output</div>
                <div class=3D"gmail_default" style=3D"font-size:small">bu=
ffers
                  are not created in=C2=A0_recv_one_packet()</div>
                <div class=3D"gmail_default" style=3D"font-size:small">An=
y
                  ideas why they don't?</div>
                <div class=3D"gmail_default" style=3D"font-size:small"><b=
r>
                </div>
                <div class=3D"gmail_default" style=3D"font-size:small">TI=
A=C2=A0</div>
                <div class=3D"gmail_default" style=3D"font-size:small">Ni=
kos</div>
              </div>
            </blockquote>
            This should *Just work*.<br>
            <br>
            What happens if you use rx_samples_to_file and specify:<br>
            <br>
            --type double<br>
            <br>
            This should write out double-precision (64-bit) complex
            floats to the output file. You should be able to use that
            example<br>
            =C2=A0 code as a bit of a template.<br>
            <br>
            Also, I have to ask, why double precision?=C2=A0 Even
            single-precision float has more precision and dynamic range
            than is<br>
            =C2=A0 actually represented by the 16-bit values on the wire,
            coming from the ADCs.=C2=A0=C2=A0=C2=A0 By moving to double-p=
recision,
            unless you<br>
            =C2=A0 have a library that only supports double-precision mat=
h,
            you're just slowing down your computations for no good
            reason.<br>
            <br>
            <br>
            =C2=A0 <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Sat, May 10, 202=
5
                  at 7:56=E2=80=AFAM Nikos Balkanas &lt;<a
                    href=3D"mailto:nbalkanas@gmail.com" target=3D"_blank"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">nbalkanas@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                  <div dir=3D"ltr">
                    <div class=3D"gmail_default" style=3D"font-size:small=
">Hi
                      all,</div>
                    <div class=3D"gmail_default" style=3D"font-size:small=
"><br>
                    </div>
                    <div class=3D"gmail_default" style=3D"font-size:small=
">I
                      recently changed my host application to complex
                      double. I had to change my stream_args to</div>
                    <div class=3D"gmail_default" style=3D"font-size:small=
">fc64.
                      I pass my void pointer to uhd_rx_streamer_recv
                      same as before:</div>
                    <div class=3D"gmail_default" style=3D"font-size:small=
">ptr
                      =3D (void **)&amp;zin;</div>
                    <div class=3D"gmail_default" style=3D"font-size:small=
">Unfortunately,
                      the=C2=A0=C2=A0convert_chdr_1_to_fc64_1_guts doesn'=
t like
                      it, I have only 1196 maxsamples, and crashes. I
                      don't need the sse2 code for my conversion. I only
                      use 1024 complex</div>
                    <div class=3D"gmail_default" style=3D"font-size:small=
">=C2=A0samples/packet
                      for fft. I am very happy with the
                      generic=C2=A0chdr_sc16_to_xx.</div>
                    <div class=3D"gmail_default" style=3D"font-size:small=
">Does
                      anyone have any fc64 experience and how one can
                      pass the void buffer pointer to</div>
                    <div class=3D"gmail_default" style=3D"font-size:small=
">skip
                      the sse2 code?</div>
                    <div class=3D"gmail_default" style=3D"font-size:small=
"><br>
                    </div>
                    <div class=3D"gmail_default" style=3D"font-size:small=
">TIA</div>
                    <div class=3D"gmail_default" style=3D"font-size:small=
">Nikos</div>
                  </div>
                </blockquote>
              </div>
              <br>
              <fieldset></fieldset>
              <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.com<=
/a>
To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
            </blockquote>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------PQEik1mMUE8DygbjgM1qLV4h--

--===============3232663513783959053==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3232663513783959053==--
