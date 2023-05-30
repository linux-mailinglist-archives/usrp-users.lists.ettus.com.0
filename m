Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB1D7166FA
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 17:28:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 36F07380EC6
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 11:28:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685460498; bh=YInkYGEcXSlbUbQBiqS0wpJAIcH4gkje2Bwh0bVxxlo=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=vu/OPEpc7jZSRPxBHgjwZzHaN/gMk1UOa3bk8EWb81wxA8gRlv/ILgSrizNtZDDTR
	 Bg8VQrDZi6QtpPzGyDGgGYSVi07+nMnqsIhZDzJW4PFPyQPechLNnX4P3Q+Y+xGYys
	 k+vwB3TxrGIFvC4Yr1cNfN4FVWWDdW5YnOIhBD0o50I4c4bZYv41ZX2Nvd3+VnCeKD
	 TNm1m/vvnBs3khpKR3/NPlVnnUblMtuZUG52+LFrNdzl8weNrDQNbE42/0WFJs0ODH
	 aEtbEUxJUPTozmT2FunV+1cKskYUYdz9Vi3PIpdriSJGVpS8l/YWXpIR4beQyObw7O
	 l6GqED72kDa1Q==
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 031AC380A4D
	for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 11:27:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="F3Vu9IRr";
	dkim-atps=neutral
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-3f6b9ad956cso24544441cf.1
        for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 08:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685460438; x=1688052438;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yUujUfsrYLD+UlvsBRI3ECu03oCl1esQN0N9mdu/c+8=;
        b=F3Vu9IRrC/K7ygvVGxoxAZoG3wX4tyPR/FCYkOcDU1ADH5TferowjouU/acHjCCiBQ
         s8LkSeQl3wdQatSAGofwVHVAFK4R2o7vho3eB+j0SzgvPSR86MjUMKFXg5u0W/SN1wB6
         LhvQQFPCDGooVrst0eDXoiOoBd1tR0r6XR1ccP2wyJECF97e48f0QY8yD+qbMID5rw8P
         bYPOofblEn1E/g4hZ/j51hsXT48j1RZAohc5SVpXjKRe75h+jFDxHWilk8gh+08429jx
         OkrDWrGO0PKb43eYOtdY02pJijRNHcfxZQcnKL4AvlUY6n+9x8BUmfDsu3relaiGNWp+
         fNZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685460438; x=1688052438;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yUujUfsrYLD+UlvsBRI3ECu03oCl1esQN0N9mdu/c+8=;
        b=ZfIo66r6Na74Jcs0y2lifmGpnBM7ZAMsKoFfO2lSzK0qwJkDdr9mtzrTsZXPQaIAwK
         f/nxiYcjVzaFNfcoeo1YLikItcY/9AlHx1VUqus9cL4SSf/cVZ9tkSMvsKahRvIB33Zq
         jrSAci1l8jLYnU1P2zlDJfSavIL6KvGzdM84j3STCrrgxNHUkAhwf9kFDSI2I9HlXh/E
         6npUX9zqRq9/mav4W7mHuvuYb4I+STnRKFnRB9ix2OdRPBO45jAxARRy1ixa/TOYhU41
         8z0sKND1p5wshl+uWV16o7emF9aZB4XAg+H1U8TrjOQHryuV1n9xGatPPddT34aIL+TE
         I5+A==
X-Gm-Message-State: AC+VfDxgLAzM8W3e8pusmbOWCtj2a62VqZPGauaryn52JfikQYDX6Bqm
	HZleqAQR91Z5tAV6+pTVMYg=
X-Google-Smtp-Source: ACHHUZ5wmyOX4YFdFx6g4yh/t6J9h+E34KH1t/SoGAxDdn6iXxkmljLsF/zMwA5Sln5k0aaCAFtjeQ==
X-Received: by 2002:a05:622a:1a92:b0:3f7:f8bb:71c with SMTP id s18-20020a05622a1a9200b003f7f8bb071cmr2591417qtc.45.1685460438324;
        Tue, 30 May 2023 08:27:18 -0700 (PDT)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id cf18-20020a05622a401200b003f6ac526568sm4775937qtb.39.2023.05.30.08.27.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 08:27:17 -0700 (PDT)
Message-ID: <d3113524-9d2b-5e84-267a-9fca45f6a612@gmail.com>
Date: Tue, 30 May 2023 11:27:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Mena Ghebranious <mena@chaosinc.com>
References: <W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.com>
 <c157a530-5c52-0fd4-79a4-0c65810ee0f0@gmail.com>
 <JN1P275MB053556431057E296A551C8C695469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAB__hTSxoCSY8PahuLUSC-ig6FNr_r5PPsaobNh9KK8S6xNxCA@mail.gmail.com>
 <7ed5a34a-8862-09ae-edfa-d5ca15947915@gmail.com>
 <JN1P275MB053547F1D25B83244EE59F8795469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAL7q81shBqtUzSaHseMO59rq1u3QSxSrA7bCaX-BVZo7FNRLZQ@mail.gmail.com>
 <CANq7nXcTe6FrDNXHiYUKY7VU-47UqdW3PtZj5eafBP84-2HhbA@mail.gmail.com>
 <4da2d23c-0854-582c-a191-deb5476488fe@gmail.com>
 <CANq7nXeVL8ActLms9N5kCAb78ALSrKPBb-agALYJjzNk9Yi9mg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CANq7nXeVL8ActLms9N5kCAb78ALSrKPBb-agALYJjzNk9Yi9mg@mail.gmail.com>
Message-ID-Hash: FLZCH5O2CZKMPYTJCAGZCCMHEFAQEP54
X-Message-ID-Hash: FLZCH5O2CZKMPYTJCAGZCCMHEFAQEP54
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jonathon Pendlum <jonathon.pendlum@ettus.com>, Leon Wabeke <LWabeke@csir.co.za>, Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FLZCH5O2CZKMPYTJCAGZCCMHEFAQEP54/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0231645623200725220=="

This is a multi-part message in MIME format.
--===============0231645623200725220==
Content-Type: multipart/alternative;
 boundary="------------FdpOCBRaawKzJ8cXPrdzsoVT"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------FdpOCBRaawKzJ8cXPrdzsoVT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 30/05/2023 11:13, Mena Ghebranious wrote:
> If possible, I'd like to hear what the R&D team thinks - I have worked=20
> with designs in the past where=C2=A0the TX timing lines up and there ar=
e no=20
> samples cut off.
I already have a feeler into R&D on this.=C2=A0 But historically it has=20
"always been done this way".

>
> On Tue, May 30, 2023 at 8:08=E2=80=AFAM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 30/05/2023 11:02, Mena Ghebranious wrote:
>     > Hi Marcus,
>     >
>     > I took a closer look at the end of my transmission; what original=
ly
>     > appeared to be a lack of symmetry=C2=A0between the start and end
>     delays is
>     > actually a cutoff of 31 samples at the end of the transmission=C2=
=A0- in
>     > other words, I'm missing the 31 samples at the end of the TX that=
 I
>     > put into the TX streamer.
>     >
>     > Looking into the FPGA logic, I believe there is actually a bug
>     in the
>     > most recent implementation - the transmission strobe that
>     controls the
>     > TX output is based on the TX state machine in the radio TX core
>     block,
>     > who's timing does not take into account the group delay of the DU=
C
>     > filter.=C2=A0 Regardless of whether or not we are using=C2=A0ATR =
to control
>     > GPIOs, the transmission gets cut off and the last set of
>     samples=C2=A0 do
>     > not appear at the TX output (the number of samples missing is
>     equal to
>     > the group delay / latency of the filter for a given sample rate.)
>     >
>     > As a temporary workaround, we could zero pad the end of our TX
>     > waveforms, but some of the waveforms we want to run have tight PR=
Fs
>     > and this will heavily limit the rate at which we could run them.
>     >
>     I don't recall there *ever* being a time when the TX state machine
>     "knew" the state and depth of the DUC filters, which is why
>     =C2=A0=C2=A0 nearly-everyone zero-pads their bursts.=C2=A0=C2=A0 Th=
is has been a "thing"
>     with radio hardware at various times scales over the decades
>     =C2=A0=C2=A0 for systems transmitting digital data.
>
>     I'm pretty sure that R&D would consider this behavior "design
>     intent".
>     Partially because "it's always been done that way", and
>     =C2=A0=C2=A0 partially because "fixing" it would be challenging (it=
 would
>     require
>     re-architecting parts of the FPGA chain considerably, I think).
>
>

--------------FdpOCBRaawKzJ8cXPrdzsoVT
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 30/05/2023 11:13, Mena Ghebranious
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CANq7nXeVL8ActLms9N5kCAb78ALSrKPBb-agALYJjzNk9Yi9mg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">If possible, I'd like to hear what the R&amp;D tea=
m
        thinks - I have worked with designs in the past where=C2=A0the TX
        timing lines up and there are no samples cut off.</div>
    </blockquote>
    I already have a feeler into R&amp;D on this.=C2=A0 But historically =
it
    has "always been done this way".<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CANq7nXeVL8ActLms9N5kCAb78ALSrKPBb-agALYJjzNk9Yi9mg@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 30, 2023 at
          8:08=E2=80=AFAM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On
          30/05/2023 11:02, Mena Ghebranious wrote:<br>
          &gt; Hi Marcus,<br>
          &gt;<br>
          &gt; I took a closer look at the end of my transmission; what
          originally <br>
          &gt; appeared to be a lack of symmetry=C2=A0between the start a=
nd
          end delays is <br>
          &gt; actually a cutoff of 31 samples at the end of the
          transmission=C2=A0- in <br>
          &gt; other words, I'm missing the 31 samples at the end of the
          TX that I <br>
          &gt; put into the TX streamer.<br>
          &gt;<br>
          &gt; Looking into the FPGA logic, I believe there is actually
          a bug in the <br>
          &gt; most recent implementation - the transmission strobe that
          controls the <br>
          &gt; TX output is based on the TX state machine in the radio
          TX core block, <br>
          &gt; who's timing does not take into account the group delay
          of the DUC <br>
          &gt; filter.=C2=A0 Regardless of whether or not we are using=C2=
=A0ATR to
          control <br>
          &gt; GPIOs, the transmission gets cut off and the last set of
          samples=C2=A0 do <br>
          &gt; not appear at the TX output (the number of samples
          missing is equal to <br>
          &gt; the group delay / latency of the filter for a given
          sample rate.)<br>
          &gt;<br>
          &gt; As a temporary workaround, we could zero pad the end of
          our TX <br>
          &gt; waveforms, but some of the waveforms we want to run have
          tight PRFs <br>
          &gt; and this will heavily limit the rate at which we could
          run them.<br>
          &gt;<br>
          I don't recall there *ever* being a time when the TX state
          machine <br>
          "knew" the state and depth of the DUC filters, which is why<br>
          =C2=A0=C2=A0 nearly-everyone zero-pads their bursts.=C2=A0=C2=A0=
 This has been a
          "thing" <br>
          with radio hardware at various times scales over the decades<br=
>
          =C2=A0=C2=A0 for systems transmitting digital data.<br>
          <br>
          I'm pretty sure that R&amp;D would consider this behavior
          "design intent".=C2=A0 <br>
          Partially because "it's always been done that way", and<br>
          =C2=A0=C2=A0 partially because "fixing" it would be challenging=
 (it
          would require <br>
          re-architecting parts of the FPGA chain considerably, I
          think).<br>
          <br>
          <br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------FdpOCBRaawKzJ8cXPrdzsoVT--

--===============0231645623200725220==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0231645623200725220==--
