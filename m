Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 719D8AB2D91
	for <lists+usrp-users@lfdr.de>; Mon, 12 May 2025 04:46:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC50838622B
	for <lists+usrp-users@lfdr.de>; Sun, 11 May 2025 22:46:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747017963; bh=yYDqDMc9Ml33hRtaGu1/RrcKwJLpuKqiugOXC366eXE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=nx1RaLc6VFhe0k6zJJhfWoBm0FO/PGpBss4FqHxML+hOGmfYxprtvsOWAY8WPcqiO
	 rDatdoWa5SnvLEh2ILjEPWjnGAIiXfvwE0nUEQRHIBYn1WHS6JVQbkqsOSJ6djU7q4
	 7FLx7Xvxaf0Myi8gtlQ6j561+8bivZPPtSlmiPBAx1aiUlBZRmphNcXr4twqfgyLgp
	 OQm9ytnCKs2l9FflulaWZYSl9//JkRbImGernCfoqN4yb9XkU0KlsRR7UyEPeIJKNX
	 piZUvqxxAa0epUvH9sELNKPUhOvPKAdHrgGnnqYtSLQzAOK9Dj5fbCsY9W+gqZR1an
	 RRXYwzSpy4doA==
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com [209.85.166.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C310385FE3
	for <usrp-users@lists.ettus.com>; Sun, 11 May 2025 22:45:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PK1ITq/3";
	dkim-atps=neutral
Received: by mail-il1-f180.google.com with SMTP id e9e14a558f8ab-3d96d16b369so39977675ab.0
        for <usrp-users@lists.ettus.com>; Sun, 11 May 2025 19:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747017923; x=1747622723; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ip7cktNdQV8o5BRhsmCSIJp9NZF/NTh63XrufSCILWA=;
        b=PK1ITq/3vRjafokoi3/pxh353riMNZEYZ0R5pp5R+hz1HbyEFrN38/lAme/rpa02+z
         joA5PD6x/hOftn1z/MrIKCfBLZ5TKnTxqEiMceYsL8oucGWyoT4lR35thsZoT42KPVQ8
         2yYpJuGg7DQSz0KBmyxLoHtUovHLJjUX2B/r9YHh/ITQhwrb2q/WwjZpX0T9sYpmSv2Z
         NH6JolWuVSgctYh1bSLUsfBELCbkwELaGuilZYs7vxhQWTpLadQhfcBHIFGxjgaWCP7H
         2pEyOxA/iozzWzxoMgtw3o0AupvE8CvZuJ0Acsbvm5UDJkLmH424JAGp/u/RlOUgxbNZ
         Ye2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747017923; x=1747622723;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ip7cktNdQV8o5BRhsmCSIJp9NZF/NTh63XrufSCILWA=;
        b=BEbaTYtVEdK5HZ2OyKvt2kFvQw3nCGKgla6Pr0IWASujAADOkeITdZk9DToGle0NKp
         rfid7LZxWWgSWYq2BRbjDF8eGSXBd2d/yWHG9Zf1gDDUeh+1ruj4lCB1vJIroXG0/ABG
         3/ofgeyloneKUqOWhR2xHF/bMnJw9jc9xvDMNeMo3ciPyyMq7gkf7mtQEfsSKfkCakPs
         aTmIvl+u94QY4/4slRuJL5KpB7UvwnL0nobjzaTozXucG5458s8MYLE/T/+E2V7ikk+N
         q88W45QnqvcKbpURCDbtE4lEDsubTnXhHkJCGKa539L3tWnhAwF5cMjAxJpxCsLihiqn
         J7UQ==
X-Gm-Message-State: AOJu0YyAuIArnjBPkDZs4gYZFgbqaQuuqdi3PFUdkr3VXv3kXR7f1l4O
	YZ0qeGUSSK/J6Jv2IV/9xjot3+MyW4rvhleRylJGqxYwsEFPF40qYsntBcSmL0o6Io3mkcMNNpv
	XS9vpNqq9avYgQiJ+sUrVuCkTVMQ=
X-Gm-Gg: ASbGnctsOX77nYooV+aBFGxFwn7DCrh7Hs4rmrNKWBbBUnLVvrIxcM2yMTyc3Ex1hCD
	x8UlYcGukWYnLbWr3ER7m4qRRwaUEx1/5EedjCe9iplg/UTaud1uPeQIw7oDTPPbPIEhNgNhmXo
	NTNgl7uTC7ZsQiEt74ALO/XnVJ9yiKMl4=
X-Google-Smtp-Source: AGHT+IHI3jRWh3Jmj8v3XpXcLGklryTXx8dcXMWgA6krPpHkU1dcGpTKpmAf2K499qxFz61DY8eH1eqUPtAxcWYrkY8=
X-Received: by 2002:a05:6e02:1fc6:b0:3d8:2085:a188 with SMTP id
 e9e14a558f8ab-3da7e1e2709mr143025985ab.1.1747017923140; Sun, 11 May 2025
 19:45:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2FTNui2gby9j+mRDx3bFHGzRjUpWAoB1Q086_DwghEZmA@mail.gmail.com>
 <CAAxXO2GhNJx4AB4-m7vVAsnhBdkHCjDHqRsFze1BqLvZswYcYQ@mail.gmail.com>
 <db5bfa88-bfe7-44bd-ac75-4981ef55c831@gmail.com> <CAAxXO2EaNs1mwLx5BK67qdKG9=833_KonYG4GHRPbeNOhvG0QQ@mail.gmail.com>
 <592e1d32-2e85-4b8a-9c04-afc8628c0805@gmail.com>
In-Reply-To: <592e1d32-2e85-4b8a-9c04-afc8628c0805@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Mon, 12 May 2025 05:45:11 +0300
X-Gm-Features: AX0GCFtvTPLhnqoDNFU5Z51-aDO_8n33V7lBp_-qkQNeKoZ3NuT8BMLnC08QSDM
Message-ID: <CAAxXO2Gv4bUOUJ6cGW_wpB4nw4UuFVNY==JXuS2UQZek6w3=vg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: TZOVDPDROCANRZDDZZZPY2XKGN7CUZ6H
X-Message-ID-Hash: TZOVDPDROCANRZDDZZZPY2XKGN7CUZ6H
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: fc64 help needed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TZOVDPDROCANRZDDZZZPY2XKGN7CUZ6H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8477304298126308660=="

--===============8477304298126308660==
Content-Type: multipart/alternative; boundary="000000000000b9a04a0634e74e74"

--000000000000b9a04a0634e74e74
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes it is, But input is always double:(

BR
Nikos

On Mon, May 12, 2025 at 5:38=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 11/05/2025 22:27, Nikos Balkanas wrote:
>
> Thx Marcus,
>
> I worked it out 2 days ago. Just my memory allocation.
> I am passing input buffer with a global pointer.
> I was using global stack allocation. When I switched to
> malloc, it just works fine:)
> Here is what happened: Input buffs didn't reach the _recv_one_packet()
> where
> b was evaluated to nil and therefore out_buffs were allocated to nil. It
> would be helpful
> to check allocations like these and issue a warning.
> Input, however, still reached the convert_chdr_1_to_fc64_1_guts but
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
>
> FFTW3 is available in a single-precision instance -- Gnu Radio uses it.
> FFTW3F.
>
>
>
> On Mon, May 12, 2025 at 4:24=E2=80=AFAM Marcus D. Leech <patchvonbraun@gm=
ail.com>
> wrote:
>
>> On 10/05/2025 07:17, Nikos Balkanas wrote:
>>
>> It turns out that the problem is not just bypassing the sse2 code:(
>> After commenting it out, uhd still crashes. The conversion output
>> buffers are not created in _recv_one_packet()
>> Any ideas why they don't?
>>
>> TIA
>> Nikos
>>
>> This should *Just work*.
>>
>> What happens if you use rx_samples_to_file and specify:
>>
>> --type double
>>
>> This should write out double-precision (64-bit) complex floats to the
>> output file. You should be able to use that example
>>   code as a bit of a template.
>>
>> Also, I have to ask, why double precision?  Even single-precision float
>> has more precision and dynamic range than is
>>   actually represented by the 16-bit values on the wire, coming from the
>> ADCs.    By moving to double-precision, unless you
>>   have a library that only supports double-precision math, you're just
>> slowing down your computations for no good reason.
>>
>>
>>
>>
>>
>> On Sat, May 10, 2025 at 7:56=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.=
com>
>> wrote:
>>
>>> Hi all,
>>>
>>> I recently changed my host application to complex double. I had to
>>> change my stream_args to
>>> fc64. I pass my void pointer to uhd_rx_streamer_recv same as before:
>>> ptr =3D (void **)&zin;
>>> Unfortunately, the  convert_chdr_1_to_fc64_1_guts doesn't like it, I
>>> have only 1196 maxsamples, and crashes. I don't need the sse2 code for =
my
>>> conversion. I only use 1024 complex
>>>  samples/packet for fft. I am very happy with the
>>> generic chdr_sc16_to_xx.
>>> Does anyone have any fc64 experience and how one can pass the void
>>> buffer pointer to
>>> skip the sse2 code?
>>>
>>> TIA
>>> Nikos
>>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>

--000000000000b9a04a0634e74e74
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Yes=
 it is, But input is always double:(</div><div class=3D"gmail_default" styl=
e=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-=
size:small">BR</div><div class=3D"gmail_default" style=3D"font-size:small">=
Nikos</div></div><br><div class=3D"gmail_quote gmail_quote_container"><div =
dir=3D"ltr" class=3D"gmail_attr">On Mon, May 12, 2025 at 5:38=E2=80=AFAM Ma=
rcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 11/05/2025 22:27, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small">Thx Marcus,<=
/div>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">I worked it
          out 2 days ago. Just my memory allocation.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">I am passing
          input buffer with a global pointer.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">I was using
          global stack allocation. When I switched to=C2=A0</div>
        <div class=3D"gmail_default" style=3D"font-size:small">malloc, it
          just works fine:)</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Here is what
          happened: Input buffs didn&#39;t reach the=C2=A0_recv_one_packet(=
)
          where</div>
        <div class=3D"gmail_default" style=3D"font-size:small">b was
          evaluated to nil and therefore out_buffs were allocated to
          nil. It would be helpful</div>
        <div class=3D"gmail_default" style=3D"font-size:small">to check
          allocations like these and issue a warning.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Input,
          however, still reached the=C2=A0convert_chdr_1_to_fc64_1_guts but=
</div>
        <div class=3D"gmail_default" style=3D"font-size:small">outputs and
          therefore output were evaluated to NULL.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">With NULL
          output it was sent through the guts function.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Even
          commenting out the switch and sending it through</div>
        <div class=3D"gmail_default" style=3D"font-size:small">the generic=
=C2=A0<span style=3D"color:rgb(80,0,80)">chdr_sc16_to_xx crashed it with
            no output buffers:(</span></div>
        <div class=3D"gmail_default" style=3D"font-size:small"><span style=
=3D"color:rgb(80,0,80)">I am not quite sure why b is not
            evaluated in=C2=A0</span>_recv_one_packet()</div>
        <div class=3D"gmail_default" style=3D"font-size:small">and is
          available downstream in convert_chdr_1_to_fc64_1_guts</div>
        <div class=3D"gmail_default" style=3D"font-size:small">with a globa=
l
          stack allocation. Unstable code?</div>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">Anyway, I
          need the complex double for libfftw3. Its=C2=A0</div>
        <div class=3D"gmail_default" style=3D"font-size:small">input data i=
s
          (fftw_complex) aka 16 B, no matter=C2=A0</div>
        <div class=3D"gmail_default" style=3D"font-size:small">what
          precision I use. It comes out in float, long double</div>
        <div class=3D"gmail_default" style=3D"font-size:small">and quad
          flavors, but input is the same.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">And it blows
          Opencl fft I was using by 10x!</div>
        <div class=3D"gmail_default" style=3D"font-size:small">on the
          filesystem, less with live signals,</div>
        <div class=3D"gmail_default" style=3D"font-size:small">but still
          faster:) And signal power is hotter:)</div>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">BR</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Nikos</div>
      </div>
    </blockquote>
    FFTW3 is available in a single-precision instance -- Gnu Radio uses
    it.=C2=A0=C2=A0 FFTW3F.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 12, 2025 at
          4:24=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbra=
un@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 10/05/2025 07:17, Nikos Balkanas wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div class=3D"gmail_default" style=3D"font-size:small">It
                  turns out that the problem is not just bypassing the
                  sse2 code:(</div>
                <div class=3D"gmail_default" style=3D"font-size:small">Afte=
r
                  commenting it out, uhd still crashes. The conversion
                  output</div>
                <div class=3D"gmail_default" style=3D"font-size:small">buff=
ers
                  are not created in=C2=A0_recv_one_packet()</div>
                <div class=3D"gmail_default" style=3D"font-size:small">Any
                  ideas why they don&#39;t?</div>
                <div class=3D"gmail_default" style=3D"font-size:small"><br>
                </div>
                <div class=3D"gmail_default" style=3D"font-size:small">TIA=
=C2=A0</div>
                <div class=3D"gmail_default" style=3D"font-size:small">Niko=
s</div>
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
            coming from the ADCs.=C2=A0=C2=A0=C2=A0 By moving to double-pre=
cision,
            unless you<br>
            =C2=A0 have a library that only supports double-precision math,
            you&#39;re just slowing down your computations for no good
            reason.<br>
            <br>
            <br>
            =C2=A0 <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Sat, May 10, 2025
                  at 7:56=E2=80=AFAM Nikos Balkanas &lt;<a href=3D"mailto:n=
balkanas@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div dir=3D"ltr">
                    <div class=3D"gmail_default" style=3D"font-size:small">=
Hi
                      all,</div>
                    <div class=3D"gmail_default" style=3D"font-size:small">=
<br>
                    </div>
                    <div class=3D"gmail_default" style=3D"font-size:small">=
I
                      recently changed my host application to complex
                      double. I had to change my stream_args to</div>
                    <div class=3D"gmail_default" style=3D"font-size:small">=
fc64.
                      I pass my void pointer to uhd_rx_streamer_recv
                      same as before:</div>
                    <div class=3D"gmail_default" style=3D"font-size:small">=
ptr
                      =3D (void **)&amp;zin;</div>
                    <div class=3D"gmail_default" style=3D"font-size:small">=
Unfortunately,
                      the=C2=A0=C2=A0convert_chdr_1_to_fc64_1_guts doesn&#3=
9;t like
                      it, I have only 1196 maxsamples, and crashes. I
                      don&#39;t need the sse2 code for my conversion. I onl=
y
                      use 1024 complex</div>
                    <div class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0samples/packet
                      for fft. I am very happy with the
                      generic=C2=A0chdr_sc16_to_xx.</div>
                    <div class=3D"gmail_default" style=3D"font-size:small">=
Does
                      anyone have any fc64 experience and how one can
                      pass the void buffer pointer to</div>
                    <div class=3D"gmail_default" style=3D"font-size:small">=
skip
                      the sse2 code?</div>
                    <div class=3D"gmail_default" style=3D"font-size:small">=
<br>
                    </div>
                    <div class=3D"gmail_default" style=3D"font-size:small">=
TIA</div>
                    <div class=3D"gmail_default" style=3D"font-size:small">=
Nikos</div>
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
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--000000000000b9a04a0634e74e74--

--===============8477304298126308660==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8477304298126308660==--
