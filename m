Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BE57CDE4E
	for <lists+usrp-users@lfdr.de>; Wed, 18 Oct 2023 16:08:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3F6073862A1
	for <lists+usrp-users@lfdr.de>; Wed, 18 Oct 2023 10:08:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697638116; bh=0VH5PQPsGaHzHok0EfpEQRjlsnAlqOoUp+RMPaotX/Y=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=OenOVRzusllRF0tOVghyq6DXzrtWvcpDmYteIb+z79BJ/x5D7ShiJt85G7ICNmome
	 RMgZDeEp25VPRa8PhmNORDqWUpjRcpnTZ8heD9vJpHXFg5YONaAKUGyh5K2OuunzNg
	 sWGKDHzzSPX7uNYhFyukRtmzYOIifURjV5w0rJ1g5M9DDN9ykv1DK+fmJe+u+rlf54
	 WZstAyoFcDJTfvktlFpiwABkt/i0rq8oZyqBu9Z+zREHay4BhXIOaWZsSdNaQjsbHb
	 cXJftKJRSE635JlwCJxOgdbmHAHLKwzgqwAO1GpstYjQWU70dR2+nakdlUjDN/J5wn
	 k+BhCvzU2tGFw==
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	by mm2.emwd.com (Postfix) with ESMTPS id CE5403860E1
	for <usrp-users@lists.ettus.com>; Wed, 18 Oct 2023 10:07:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="HwZAJebc";
	dkim-atps=neutral
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-507b18cf2e1so4224959e87.3
        for <usrp-users@lists.ettus.com>; Wed, 18 Oct 2023 07:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1697638066; x=1698242866; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oq0v1XvP74VOySlWIaLAwNrzkVhgPM4kmbGW8NBc+LQ=;
        b=HwZAJebcPgKkFw370elrUeWaquDL8V0R8SIhMmrkidSJd28y9yoFt22kFvNLyFmUz3
         R9hebQiBeleL1QVXFrunnJtjToMFuCxix+tb7m5bjeNlcFr0N8/ax+X426YQOCD6byHi
         4Uma2fORypO5bdJioMZK/SldeA/oO+IyLF8ykU8QubLiA3u/IgiYOvHRP2TKKNkEpscC
         MO8kfxmCIEPGHvkHJv0TNbYbUGT0X9frnSLZor/9ftdNcsgQNQ6OtPrjuEGVccJQUClx
         /7MeM88dSbaL//k7qiefDzzMieAS1A5aE/2o6/59qEv43bprUKnPDtu34yphlmEIu8yY
         1HHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697638066; x=1698242866;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oq0v1XvP74VOySlWIaLAwNrzkVhgPM4kmbGW8NBc+LQ=;
        b=ISaHQws7kW9I3PKSSIcKRTArFTwwJiSzXIrV7bVgauMrFDmD1V6DR4yI1+FWnQZngV
         3mq8AXElMD3cOiXFgx8vCvHZuz9TWdfZ6GNyF9MpZTdmvm7q24nguipNCvHX/sGxzLwm
         o75/gmXVdlAlyg/RQtN18Hkwpk4BeaLSHldFr/f3tX7r0VJZBDyyah4fbdUCePzwQx21
         jzXR5QEm1B8ZFrstshyziQlrR1nBOzj1nlT2kITniYUBqmfQAXeRVvHuXsKY8a2iQY2U
         QEucuBlDHOOHrk0EM6Na1/DEbQu16EnXAIQ+nEwjkC9eT4cs2KZrMYr9+Ky3H05TP+ZI
         Lk9A==
X-Gm-Message-State: AOJu0Yx2CPLuiW5Pz5p3E7h/kuwoL1yBFBeYnToC1Tnnx7a7HKihazvI
	TZEmLK9cRD2GMEgMDPHYptyDotoIfaBMXmhe5YMSNw==
X-Google-Smtp-Source: AGHT+IHHbXD65VImB6UMIi7RhoOblw7sS3EPRH/edZ+IbNGfj1Q/BTiojohWk8GSib0P0g7RoIL8C96wCVzYv4aGJNs=
X-Received: by 2002:a05:6512:4883:b0:507:b8c5:6542 with SMTP id
 eq3-20020a056512488300b00507b8c56542mr3627978lfb.65.1697638066076; Wed, 18
 Oct 2023 07:07:46 -0700 (PDT)
MIME-Version: 1.0
References: <cff7659f-bcde-49eb-a71f-e3153570e8b9@gsi.de> <a6805b3d-4945-4474-83e3-ee7d5e82b3a9@gsi.de>
 <CAB__hTSF2GcGoM83Z704+mivoL8mpVEEQV8b=cZXtwEjbB+EiQ@mail.gmail.com>
 <f0b0867c-b07c-4d67-b1d0-f6036ea67b10@gmail.com> <1f9bf05c-330c-4409-95e8-d4c061339217@gsi.de>
 <CAB__hTSh535ov7Rvz5RQwXGPN=_A+Z9ORxAYvC4ywNTXsTvo1w@mail.gmail.com> <30f804ea-b167-47c5-bd07-1febb2c8d8b6@gsi.de>
In-Reply-To: <30f804ea-b167-47c5-bd07-1febb2c8d8b6@gsi.de>
Date: Wed, 18 Oct 2023 10:07:34 -0400
Message-ID: <CAB__hTThEc6GGUdbthbaGjiPqduS6y9SontOya-KUWDTZOdkEA@mail.gmail.com>
To: Philipp Niedermayer <p.niedermayer@gsi.de>
Message-ID-Hash: FYXIRSZOI7BT47YY5NPMGT57TGEOJQBZ
X-Message-ID-Hash: FYXIRSZOI7BT47YY5NPMGT57TGEOJQBZ
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com, Rahul Singh <r.singh@gsi.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Loopback with stream from host
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FYXIRSZOI7BT47YY5NPMGT57TGEOJQBZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6877367477498112658=="

--===============6877367477498112658==
Content-Type: multipart/alternative; boundary="000000000000e33b410607fe2974"

--000000000000e33b410607fe2974
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Philipp,
One more comment.  It would be possible for you to block the stream command
propagation from the rx_streamer to the radio in your original graph since
you have the custom pulse counter block.  The custom block controller could
just discard rather than propagate this command to the radio.  Perhaps not
the best solution, but wanted to mention.
Rob

On Wed, Oct 18, 2023 at 8:31=E2=80=AFAM Philipp Niedermayer <p.niedermayer@=
gsi.de>
wrote:

> Dear all,
>
> thank you for the explanations. I don't think it is possible to mix USRP
> with RFNoC radio sources, but it seams that the RFNoC RX Radio Block can =
be
> triggered to issue a start-stream command via it's message port (I cannot
> find any documentation about this, but the source code suggest it [1]).
> However, the RFNoC Rx Streamer Block will always issuing a start-stream
> command independently, since it is hardcoded.
>
> I went ahead and wired the time_spec parameter from the RX-Streamer
> implementation though to GNU Radio GUI. The first test looks promising,
> with a time_spec of 1s the RFNoC stream is started 1s delayed and that
> seams to indeed reduce the loopback latency and also keep it reproducible
> with the flow graph below. I also added an option to disable the start
> stream command altogether, so I can test starting the stream via the
> message port of the RX Radio instead.
>
> I have opened a PR for the changes, see
> https://github.com/gnuradio/gnuradio/pull/6922
>
> Best regards and thank you very much for your help
> Philipp
>
> [1]
> https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c3=
6d3bb0bd2/gr-uhd/lib/rfnoc_rx_radio_impl.cc#L164
>
> [image: grafik]
> ------------------------------
> *From:* Rob Kossler [mailto:rkossler@nd.edu <rkossler@nd.edu>]
> *Date:* Tuesday, October 17, 2023 at 18:36 UTC+2
> *Subject:* [USRP-users] Re: RFNoC Loopback with stream from host
>
>
>
> On Tue, Oct 17, 2023 at 9:20=E2=80=AFAM Philipp Niedermayer <p.niedermaye=
r@gsi.de>
> wrote:
> Dear Marcus and Rob,
>
> The multi_usrp UHD "sink" in Gnu Radio has a "start time" parameter.  But
> I'm not sure how this works when you're using RFNoC from within Gnu Radio=
.
>
> @Marcus: I think for RFNoC it is the RX-Streamer that issues the start
> command. The C++ implementation [1] has a method to set the start time, b=
ut
> it is neither exposed via the Python bindings [2], nor to GNU Radio [3].
> Would it be possible to update the bindings?
>
> Delaying the Rx Radio start time should be relatively easy to do. While I
> don't know how to do this from gnuradio, I do it all the time using UHD
> from C++.  Perhaps you will have to modify the GRC generated python to do
> it rather than do it from GRC - not really sure.
>
> @Rob: What methods are you using to delay the start time? The same as the
> RX-Streamer [1] uses internally?
> I tried calling the RX-streamers "start" and "stop" methods, since these
> are accessible from python. Stopping works, but when re-starting it gives
> me OOOOOOOO (see below).
>
> Yes, I use the issue_stream_cmd() function. I am not sure why your start
> and stop produce the behavior you described, but I want to mention a few
> things about how this works in UHD under-the-hood.
> 1) There is an issue_stream_cmd() available not only on rx_streamer but o=
n
> the radio block as well. The radio block is derived from usrp_source in
> gnuradio I think (see here
> <https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__source.html=
>
> )
> 2) The way it normally works in UHD is you call issue_stream_cmd on the
> rx_streamer. Then the block controller propagates this cmd to the next
> upstream block controller in the graph.  This might normally be the DDC.
> The DDC block then might use this information (such as the timestamp)
> internally and then it propagates this cmd to the next upstream block
> controller.  Finally, it reaches the radio block controller which then
> controls the radio to start streaming at the desired time. In this way, a=
ll
> of the blocks in the chain are aware of the impending streaming.  But, th=
at
> said, it is also possible to call issue_stream_cmd directly on the radio
> block controller and it will start streaming. The only difference is that
> the other blocks in the chain will be unaware of the impending streaming.
> The fact that you are getting streaming at all is a good indication that
> your custom block controllers are appropriately propagating the
> issue_stream_cmd.
> 3) If your graph was just a "repeater path" and did not include the
> rx_streamer, you would have to call issue_stream_cmd using the radio bloc=
k
> 4) When you stop and restart your graph and you get overflows, is it
> possible that the overflow is occurring because the data path is blocked =
at
> the multiply - perhaps the tx_streamer data is not flowing for some
> reason?  If so, this would cause the Overflows.
>
>
>
>
> [2]
> https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c3=
6d3bb0bd2/gr-uhd/python/uhd/bindings/rfnoc_rx_streamer_python.cc
> [3]
> https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c3=
6d3bb0bd2/gr-uhd/grc/uhd_rfnoc_rx_streamer.block.yml
>
>
>
>
> On Tue, Oct 17, 2023 at 9:20=E2=80=AFAM Philipp Niedermayer <p.niedermaye=
r@gsi.de>
> wrote:
>
>> Dear Marcus and Rob,
>>
>> The multi_usrp UHD "sink" in Gnu Radio has a "start time" parameter.  Bu=
t
>> I'm not sure how this works when you're using RFNoC from within Gnu Radi=
o.
>>
>> @Marcus: I think for RFNoC it is the RX-Streamer that issues the start
>> command. The C++ implementation [1] has a method to set the start time, =
but
>> it is neither exposed via the Python bindings [2], nor to GNU Radio [3].
>> Would it be possible to update the bindings?
>>
>> Delaying the Rx Radio start time should be relatively easy to do. While =
I
>> don't know how to do this from gnuradio, I do it all the time using UHD
>> from C++.  Perhaps you will have to modify the GRC generated python to d=
o
>> it rather than do it from GRC - not really sure.
>>
>> @Rob: What methods are you using to delay the start time? The same as th=
e
>> RX-Streamer [1] uses internally?
>> I tried calling the RX-streamers "start" and "stop" methods, since these
>> are accessible from python. Stopping works, but when re-starting it give=
s
>> me OOOOOOOO (see below).
>>
>> Best
>> Philipp
>>
>> [1]
>> https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c=
36d3bb0bd2/gr-uhd/lib/rfnoc_rx_streamer_impl.cc#L83-L93
>> [2]
>> https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c=
36d3bb0bd2/gr-uhd/python/uhd/bindings/rfnoc_rx_streamer_python.cc
>> [3]
>> https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c=
36d3bb0bd2/gr-uhd/grc/uhd_rfnoc_rx_streamer.block.yml
>>
>>
>> ******* MESSAGE DEBUG PRINT ********
>> ((rate_now . 1.99964e+06) (rate_avg . 1.99964e+06))
>> ************************************
>> Stopping stream
>> rfnoc_rx_streamer :debug: UHD recv() call timed out.
>> ******* MESSAGE DEBUG PRINT ********
>> ((rate_now . 666323) (rate_avg . 1.79964e+06))
>> ************************************
>> rfnoc_rx_streamer :debug: UHD recv() call timed out.
>> rfnoc_rx_streamer :debug: UHD recv() call timed out.
>> Starting stream
>> rfnoc_rx_streamer :debug: Sending start stream command...
>> OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
>> >>> Done
>>
>>
>>
>> ------------------------------
>> *From:* Marcus D. Leech [mailto:patchvonbraun@gmail.com
>> <patchvonbraun@gmail.com>]
>> *Date:* Monday, October 16, 2023 at 23:41 UTC+2
>> *Subject:* [USRP-users] Re: RFNoC Loopback with stream from host
>>
>> On 16/10/2023 17:31, Rob Kossler via USRP-users wrote:
>>
>> Hi Philipp,
>> 1. Delaying the Rx Radio start time should be relatively easy to do.
>> While I don't know how to do this from gnuradio, I do it all the time us=
ing
>> UHD from C++.  Perhaps you will have to modify the GRC generated python =
to
>> do it rather than do it from GRC - not really sure.
>>
>> The multi_usrp UHD "sink" in Gnu Radio has a "start time" parameter.  Bu=
t
>> I'm not sure how this works when you're using RFNoC
>>   from within Gnu Radio.
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>

--000000000000e33b410607fe2974
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Philipp,<div>One more comment.=C2=A0 It would be possib=
le for you to block the stream command propagation from the rx_streamer to =
the radio in your original graph since you have the custom pulse counter bl=
ock.=C2=A0 The custom block controller could just discard rather than propa=
gate this command to the radio.=C2=A0 Perhaps not the best solution, but wa=
nted to mention.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 18, 2023 at 8:31=E2=80=AFAM=
 Philipp Niedermayer &lt;<a href=3D"mailto:p.niedermayer@gsi.de">p.niederma=
yer@gsi.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><u></u>

 =20
   =20
 =20
  <div style=3D"padding-bottom:1px">
    <div>
      <div id=3D"m_-9111190720188971718rwhMsgHeader">
        <p>Dear all,</p>
        <p>thank you for the explanations. I don&#39;t think it is possible
          to mix USRP with RFNoC radio sources, but it seams that the
          RFNoC RX Radio Block can be triggered to issue a start-stream
          command via it&#39;s message port (I cannot find any documentatio=
n
          about this, but the source code suggest it [1]). However, the
          RFNoC Rx Streamer Block will always issuing a start-stream
          command independently, since it is hardcoded.<br>
        </p>
        <p>I went ahead and wired the time_spec parameter from the
          RX-Streamer implementation though to GNU Radio GUI. The first
          test looks promising, with a time_spec of 1s the RFNoC stream
          is started 1s delayed and that seams to indeed reduce the
          loopback latency and also keep it reproducible with the flow
          graph below. I also added an option to disable the start
          stream command altogether, so I can test starting the stream
          via the message port of the RX Radio instead.<br>
        </p>
        <p>I have opened a PR for the changes, see
          <a href=3D"https://github.com/gnuradio/gnuradio/pull/6922" target=
=3D"_blank">https://github.com/gnuradio/gnuradio/pull/6922</a></p>
        <p>Best regards and thank you very much for your help<br>
          Philipp</p>
        <p>[1]
<a href=3D"https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c=
1ffd6c8c36d3bb0bd2/gr-uhd/lib/rfnoc_rx_radio_impl.cc#L164" target=3D"_blank=
">https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c3=
6d3bb0bd2/gr-uhd/lib/rfnoc_rx_radio_impl.cc#L164</a></p>
        <p><img src=3D"https://user-images.githubusercontent.com/19860638/2=
76237881-b77fc227-419c-4975-b822-0b0459cd8689.png" alt=3D"grafik" style=3D"=
max-width: 100%;"></p>
        <hr id=3D"m_-9111190720188971718rwhMsgHdrDivider" style=3D"border-w=
idth:1px 0px 0px;border-right-style:initial;border-bottom-style:initial;bor=
der-left-style:initial;border-right-color:initial;border-bottom-color:initi=
al;border-left-color:initial;border-top-style:solid;border-top-color:rgb(64=
,64,64);padding:0px;margin:10px 0px 5px;width:100%">
        <div style=3D"font-family:Tahoma;color:rgb(64,64,64);font-size:13px=
"><b>From:</b>
          Rob Kossler [<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank"=
>mailto:rkossler@nd.edu</a>]</div>
        <div style=3D"font-family:Tahoma;color:rgb(64,64,64);font-size:13px=
"><b>Date:</b>
          Tuesday, October 17, 2023 at 18:36 UTC+2</div>
        <div style=3D"font-family:Tahoma;color:rgb(64,64,64);font-size:13px=
"><b>Subject:</b>
          [USRP-users] Re: RFNoC Loopback with stream from host</div>
        <br>
      </div>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr"><br>
        <br>
        On Tue, Oct 17, 2023 at 9:20=E2=80=AFAM Philipp Niedermayer &lt;<a =
href=3D"mailto:p.niedermayer@gsi.de" target=3D"_blank">p.niedermayer@gsi.de=
</a>&gt;
        wrote:<br>
        Dear Marcus and Rob,<br>
        <br>
        The multi_usrp UHD &quot;sink&quot; in Gnu Radio has a &quot;start =
time&quot;
        parameter.=C2=A0 But I&#39;m not sure how this works when you&#39;r=
e using
        RFNoC from within Gnu Radio.<br>
        <br>
        @Marcus: I think for RFNoC it is the RX-Streamer that issues the
        start command. The C++ implementation [1] has a method to set
        the start time, but it is neither exposed via the Python
        bindings [2], nor to GNU Radio [3]. Would it be possible to
        update the bindings?<br>
        <br>
        Delaying the Rx Radio start time should be relatively easy to
        do. While I don&#39;t know how to do this from gnuradio, I do it al=
l
        the time using UHD from C++.=C2=A0 Perhaps you will have to modify
        the GRC generated python to do it rather than do it from GRC -
        not really sure.<br>
        <br>
        @Rob: What methods are you using to delay the start time? The
        same as the RX-Streamer [1] uses internally?<br>
        I tried calling the RX-streamers &quot;start&quot; and &quot;stop&q=
uot; methods,
        since these are accessible from python. Stopping works, but when
        re-starting it gives me OOOOOOOO (see below).<br>
        <br>
        Yes, I use the issue_stream_cmd() function. I am not sure why
        your start and stop produce the behavior you described, but I
        want to mention a few things about how this works in UHD
        under-the-hood.
        <div>1) There is an issue_stream_cmd() available not only on
          rx_streamer but on the radio block as well. The radio block is
          derived from usrp_source in gnuradio I think (see <a href=3D"http=
s://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__source.html" targe=
t=3D"_blank">here</a>)</div>
        <div>2) The way it normally works in UHD is you call
          issue_stream_cmd on the rx_streamer. Then the block controller
          propagates this cmd to the next upstream block controller in
          the graph.=C2=A0 This might normally be the DDC.=C2=A0 The DDC bl=
ock
          then might use this information (such as the timestamp)
          internally and then it propagates this cmd to the next
          upstream block controller.=C2=A0 Finally, it reaches the radio
          block controller which then controls the radio to start
          streaming at the desired time. In this way, all of the blocks
          in the chain are aware of the impending streaming.=C2=A0 But, tha=
t
          said, it is also possible to call issue_stream_cmd directly on
          the radio block controller and it will start streaming. The
          only difference is that the other blocks in the chain will be
          unaware of the impending streaming.=C2=A0 The fact that you are
          getting streaming at all is a good indication that your custom
          block controllers are appropriately propagating the
          issue_stream_cmd.</div>
        <div>3) If your graph was just a &quot;repeater path&quot; and did =
not
          include the rx_streamer, you would have to call
          issue_stream_cmd using the radio block</div>
        <div>4) When you stop and restart your graph and you get
          overflows, is it possible that the overflow is occurring
          because the data path is blocked at the multiply - perhaps the
          tx_streamer data is not flowing for some reason?=C2=A0 If so, thi=
s
          would cause the Overflows.</div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div><br>
          [2] <a href=3D"https://github.com/gnuradio/gnuradio/blob/5dc195b0=
195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/python/uhd/bindings/rfnoc_rx_stream=
er_python.cc" target=3D"_blank">https://github.com/gnuradio/gnuradio/blob/5=
dc195b0195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/python/uhd/bindings/rfnoc_rx=
_streamer_python.cc</a><br>
          [3] <a href=3D"https://github.com/gnuradio/gnuradio/blob/5dc195b0=
195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/grc/uhd_rfnoc_rx_streamer.block.yml=
" target=3D"_blank">https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8=
a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/grc/uhd_rfnoc_rx_streamer.block.yml</a><=
br>
          <br>
          <br>
        </div>
      </div>
      <br>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 17, 2023 at
          9:20=E2=80=AFAM Philipp Niedermayer &lt;<a href=3D"mailto:p.niede=
rmayer@gsi.de" target=3D"_blank">p.niedermayer@gsi.de</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div style=3D"padding-bottom:1px">
            <div>
              <div id=3D"m_-9111190720188971718m_-658956246501910016rwhMsgH=
eader">
                <p>Dear Marcus and Rob,</p>
                <blockquote type=3D"cite">The multi_usrp UHD &quot;sink&quo=
t; in Gnu
                  Radio has a &quot;start time&quot; parameter.=C2=A0 But I=
&#39;m not sure
                  how this works when you&#39;re using RFNoC from within Gn=
u
                  Radio. </blockquote>
                @Marcus: I think for RFNoC it is the RX-Streamer that
                issues the start command. The C++ implementation [1] has
                a method to set the start time, but it is neither
                exposed via the Python bindings [2], nor to GNU Radio
                [3]. Would it be possible to update the bindings?<br>
              </div>
              <div><br>
              </div>
              <div>
                <blockquote type=3D"cite">Delaying=C2=A0the Rx Radio start =
time
                  should be relatively easy to do. While I don&#39;t know
                  how to do this from gnuradio, I do it all the time
                  using UHD from C++.=C2=A0 Perhaps you will have to modify
                  the GRC generated python to do it rather than do it
                  from GRC - not really sure.</blockquote>
                @Rob: What methods are you using to delay the start
                time? The same as the RX-Streamer [1] uses internally?</div=
>
              <div>I tried calling the RX-streamers &quot;start&quot; and &=
quot;stop&quot;
                methods, since these are accessible from python.
                Stopping works, but when re-starting it gives me
                OOOOOOOO (see below).
                <p>Best<br>
                  Philipp</p>
                <p>[1]
                  <a href=3D"https://github.com/gnuradio/gnuradio/blob/5dc1=
95b0195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/lib/rfnoc_rx_streamer_impl.cc#L=
83-L93" target=3D"_blank">https://github.com/gnuradio/gnuradio/blob/5dc195b=
0195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/lib/rfnoc_rx_streamer_impl.cc#L83-=
L93</a><br>
                  [2]
                  <a href=3D"https://github.com/gnuradio/gnuradio/blob/5dc1=
95b0195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/python/uhd/bindings/rfnoc_rx_st=
reamer_python.cc" target=3D"_blank">https://github.com/gnuradio/gnuradio/bl=
ob/5dc195b0195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/python/uhd/bindings/rfno=
c_rx_streamer_python.cc</a><br>
                  [3]
                  <a href=3D"https://github.com/gnuradio/gnuradio/blob/5dc1=
95b0195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/grc/uhd_rfnoc_rx_streamer.block=
.yml" target=3D"_blank">https://github.com/gnuradio/gnuradio/blob/5dc195b01=
95e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/grc/uhd_rfnoc_rx_streamer.block.yml<=
/a></p>
                <p><br>
                </p>
                <p><img alt=3D""></p>
                <p>******* MESSAGE DEBUG PRINT ********<br>
                  ((rate_now . 1.99964e+06) (rate_avg . 1.99964e+06))<br>
                  ************************************<br>
                  Stopping stream<br>
                  rfnoc_rx_streamer :debug: UHD recv() call timed out.<br>
                  ******* MESSAGE DEBUG PRINT ********<br>
                  ((rate_now . 666323) (rate_avg . 1.79964e+06))<br>
                  ************************************<br>
                  rfnoc_rx_streamer :debug: UHD recv() call timed out.<br>
                  rfnoc_rx_streamer :debug: UHD recv() call timed out.<br>
                  Starting stream<br>
                  rfnoc_rx_streamer :debug: Sending start stream
                  command...<br>
OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO<br>
                  &gt;&gt;&gt; Done</p>
                <p><br>
                </p>
                <p><br>
                </p>
                <hr id=3D"m_-9111190720188971718m_-658956246501910016rwhMsg=
HdrDivider" style=3D"border-width:1px 0px 0px;border-right-style:initial;bo=
rder-bottom-style:initial;border-left-style:initial;border-right-color:init=
ial;border-bottom-color:initial;border-left-color:initial;border-top-style:=
solid;border-top-color:rgb(64,64,64);padding:0px;margin:10px 0px 5px;width:=
100%">
                <div style=3D"font-family:Tahoma;color:rgb(64,64,64);font-s=
ize:13px"><b>From:</b>
                  Marcus D. Leech [<a href=3D"mailto:patchvonbraun@gmail.co=
m" target=3D"_blank">mailto:patchvonbraun@gmail.com</a>]</div>
                <div style=3D"font-family:Tahoma;color:rgb(64,64,64);font-s=
ize:13px"><b>Date:</b>
                  Monday, October 16, 2023 at 23:41 UTC+2</div>
                <div style=3D"font-family:Tahoma;color:rgb(64,64,64);font-s=
ize:13px"><b>Subject:</b>
                  [USRP-users] Re: RFNoC Loopback with stream from host</di=
v>
                <br>
              </div>
            </div>
            <blockquote type=3D"cite">On 16/10/2023 17:31, Rob Kossler via
              USRP-users wrote: <br>
              <blockquote type=3D"cite">Hi Philipp, <br>
                1. Delaying=C2=A0the Rx Radio start time should be relative=
ly
                easy to do. While I don&#39;t know how to do this from
                gnuradio, I do it all the time using UHD from C++.=C2=A0
                Perhaps you will have to modify the GRC generated python
                to do it rather than do it from GRC - not really sure. <br>
              </blockquote>
              The multi_usrp UHD &quot;sink&quot; in Gnu Radio has a &quot;=
start time&quot;
              parameter.=C2=A0 But I&#39;m not sure how this works when you=
&#39;re
              using RFNoC <br>
              =C2=A0 from within Gnu Radio. <br>
              _______________________________________________ <br>
              USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists=
.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>
              <br>
              To unsubscribe send an email to <a href=3D"mailto:usrp-users-=
leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</=
a>
              <br>
            </blockquote>
          </div>
        </blockquote>
      </div>
    </blockquote>
  </div>
  <u></u><u></u>

</blockquote></div>

--000000000000e33b410607fe2974--

--===============6877367477498112658==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6877367477498112658==--
