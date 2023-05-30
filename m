Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 572F4716B46
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 19:39:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7B3D03846E4
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 13:39:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685468389; bh=EcXNngEe6ShN2r54dmmOLf6NhUrp2p7ZAPC5xwGa8gY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=g+vlv6LK0MqtvwqZV+tYJMDaM1HcDjV2esEym0WyHv5sFDrlbWNbIbEexp4Oq2dC0
	 PMMyIaSkwVM5qPsTXl0kFCCfXjNKmAhuqTU2wE4+H/iAE0H7hUFRaNclDm5tV2FcvP
	 l89eJUGYnkizg6faUem0uEDUs19OPzD+4schsCKx3/YGleIrpvPBvX8jcnwB55etbE
	 kP72Xvw2+9//oGsaK9gsOVpEBteBOQmPt9VnyV1bSjdR+28+ircwge6cn59d/pCOf7
	 le+asWj4zMGuJVHgITulkbzHSjA2aa+cOR+lXCTtja8WnCgmDMdCXhs7GhoiQb9aaX
	 V9r6g3I84fOUg==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id B5AD23846A6
	for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 13:38:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VHx8GANB";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-970056276acso740137066b.2
        for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 10:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685468330; x=1688060330;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2cRjwFn/tDvdIN9ZDjnVYiTp4EYRLBIY8BqppqCaqGY=;
        b=VHx8GANBW5gZYPP6riNhnZt1HcI2QNHP8vcMCk7YcTweQVlBKIT+XgiI6bXS2ZO4ro
         +kAE8a0GMQGZyRqEVZnpm4SuXofI+Nb8zMxMeuAG3xMj+SKRUM2rqNY5jVctw8TNmnmQ
         RMK/x4j36zBXtPaKV4oGtzGRNEWjbyce3dCbD9o9ZuQAPqwh896Eq93uakAvC3ifC28I
         paycbhpIGwtq4jDHpicT+acJuaNIRIR+4pO7vkKkAIyqLpb3xDmFtBmJOeK8RyMdQZED
         prvikwAhymOIdPWyfRn/6YOxwYPZhVo7/1J10zW7mqFoFjbIkXv/7JA1t1kjCKNrNGrc
         l1pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685468330; x=1688060330;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2cRjwFn/tDvdIN9ZDjnVYiTp4EYRLBIY8BqppqCaqGY=;
        b=fTk2jX+WfWkKnRVpK3GanFK4wZre2bBdGPFStpEerozpaXMF529kskg9r78copCSeZ
         BNim/0pbrnFn9aFk0yQrxOY73pvHi1uhIUfs/rArwDQZuVYGcWRnDM+I5FQ2dtyW4gip
         Gv56yCm06wDYea+YZ2DuvLAeJ/x/b14vuWf8MutJJ/vZC4qO5OYojYE4HVX0FPqVd8p0
         vNzqaoMwh1Cc9OPz+Vg22AAGfTrhuv/9XODFjl1z7dGAeOTf8GGT1Jy3Dxvoj55Fy/bF
         mefiW+ILiAZxYXaE7VPs4L+0M/QN9g7S4TeU4emWkeFpnLM0znHEdjrTvNxRzfo/WnPt
         EtGg==
X-Gm-Message-State: AC+VfDwfc0BCcgLMlSkJlko61AcJ2jkQa5heBckU6FXGpn5BVLuG9xXB
	ljGHVB9LHkQS60kdUfmyQdEgJyybrOflDr/YMn8=
X-Google-Smtp-Source: ACHHUZ5xv07cvPlt9FSayNCkHRtSHnLFNpWzd8ShyBOgHLXUYz9wBJWK26QS/mRxCyPHgThgq1q+yllAIIK18C/6Lqs=
X-Received: by 2002:a17:907:8a27:b0:96a:8412:a44d with SMTP id
 sc39-20020a1709078a2700b0096a8412a44dmr2752666ejc.36.1685468330131; Tue, 30
 May 2023 10:38:50 -0700 (PDT)
MIME-Version: 1.0
References: <W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.com>
 <c157a530-5c52-0fd4-79a4-0c65810ee0f0@gmail.com> <JN1P275MB053556431057E296A551C8C695469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAB__hTSxoCSY8PahuLUSC-ig6FNr_r5PPsaobNh9KK8S6xNxCA@mail.gmail.com>
 <7ed5a34a-8862-09ae-edfa-d5ca15947915@gmail.com> <JN1P275MB053547F1D25B83244EE59F8795469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAL7q81shBqtUzSaHseMO59rq1u3QSxSrA7bCaX-BVZo7FNRLZQ@mail.gmail.com>
 <CANq7nXcTe6FrDNXHiYUKY7VU-47UqdW3PtZj5eafBP84-2HhbA@mail.gmail.com>
 <4da2d23c-0854-582c-a191-deb5476488fe@gmail.com> <CANq7nXeVL8ActLms9N5kCAb78ALSrKPBb-agALYJjzNk9Yi9mg@mail.gmail.com>
In-Reply-To: <CANq7nXeVL8ActLms9N5kCAb78ALSrKPBb-agALYJjzNk9Yi9mg@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 30 May 2023 13:38:38 -0400
Message-ID: <CAEXYVK6JLh_C4cb6GbPYCFxNBv=U3AgUdqP=yBkmSH7Vey4wOQ@mail.gmail.com>
To: Mena Ghebranious <mena@chaosinc.com>
Message-ID-Hash: ZXBQBLDG2YXT5MMQYRFCEXRJSYMG2GO6
X-Message-ID-Hash: ZXBQBLDG2YXT5MMQYRFCEXRJSYMG2GO6
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, Jonathon Pendlum <jonathon.pendlum@ettus.com>, Leon Wabeke <LWabeke@csir.co.za>, Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZXBQBLDG2YXT5MMQYRFCEXRJSYMG2GO6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8726571268960304103=="

--===============8726571268960304103==
Content-Type: multipart/alternative; boundary="00000000000019057105fcecad88"

--00000000000019057105fcecad88
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 30, 2023 at 11:15=E2=80=AFAM Mena Ghebranious <mena@chaosinc.co=
m> wrote:

> If possible, I'd like to hear what the R&D team thinks - I have worked
> with designs in the past where the TX timing lines up and there are no
> samples cut off.
>

> On Tue, May 30, 2023 at 8:08=E2=80=AFAM Marcus D. Leech <patchvonbraun@gm=
ail.com>
> wrote:
>
>> On 30/05/2023 11:02, Mena Ghebranious wrote:
>> > Hi Marcus,
>> >
>> > I took a closer look at the end of my transmission; what originally
>> > appeared to be a lack of symmetry between the start and end delays is
>> > actually a cutoff of 31 samples at the end of the transmission - in
>> > other words, I'm missing the 31 samples at the end of the TX that I
>> > put into the TX streamer.
>> >
>> > Looking into the FPGA logic, I believe there is actually a bug in the
>> > most recent implementation - the transmission strobe that controls the
>> > TX output is based on the TX state machine in the radio TX core block,
>> > who's timing does not take into account the group delay of the DUC
>> > filter.  Regardless of whether or not we are using ATR to control
>> > GPIOs, the transmission gets cut off and the last set of samples  do
>> > not appear at the TX output (the number of samples missing is equal to
>> > the group delay / latency of the filter for a given sample rate.)
>> >
>> > As a temporary workaround, we could zero pad the end of our TX
>> > waveforms, but some of the waveforms we want to run have tight PRFs
>> > and this will heavily limit the rate at which we could run them.
>> >
>> I don't recall there *ever* being a time when the TX state machine
>> "knew" the state and depth of the DUC filters, which is why
>>    nearly-everyone zero-pads their bursts.   This has been a "thing"
>> with radio hardware at various times scales over the decades
>>    for systems transmitting digital data.
>>
>> I'm pretty sure that R&D would consider this behavior "design intent".
>> Partially because "it's always been done that way", and
>>    partially because "fixing" it would be challenging (it would require
>> re-architecting parts of the FPGA chain considerably, I think).
>>
>
Not being part of Ettus/NI R&D, but just observing the conversation - the
answer is to use the native sample rate and bypass the DUC.  If zero
stuffing with the group delay of the DUC is unacceptable due to PRF, but
band limiting the transmission is still required, then it needs to be up to
the user to do it in a way that suits their application.  Right?

Alternatively, even if the ATR switch is ideally turned on at the beginning
of the burst - i.e. while the state of all DUC filtering is 0's and the
first non-zero sample enters the DUC chain - and the ATR switch is ideally
turned off at the end of the burst - i.e. when the state of the DUC
filtering is all 0's - you'd still have the PRF issue, right?

I think, in my mind, the only solution is to fix your system to run at the
highest possible sample rate and avoid the DUC.

Brian

--00000000000019057105fcecad88
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, May 30, 2023 at 11:15=E2=80=AFAM =
Mena Ghebranious &lt;<a href=3D"mailto:mena@chaosinc.com">mena@chaosinc.com=
</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr">If possible, I&#39;d like to he=
ar what the R&amp;D team thinks - I have worked with designs in the past wh=
ere=C2=A0the TX timing lines up and there are no samples cut off.=C2=A0</di=
v></blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 30, =
2023 at 8:08=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun=
@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">On 30/05/2023 11:02, M=
ena Ghebranious wrote:<br>
&gt; Hi Marcus,<br>
&gt;<br>
&gt; I took a closer look at the end of my transmission; what originally <b=
r>
&gt; appeared to be a lack of symmetry=C2=A0between the start and end delay=
s is <br>
&gt; actually a cutoff of 31 samples at the end of the transmission=C2=A0- =
in <br>
&gt; other words, I&#39;m missing the 31 samples at the end of the TX that =
I <br>
&gt; put into the TX streamer.<br>
&gt;<br>
&gt; Looking into the FPGA logic, I believe there is actually a bug in the =
<br>
&gt; most recent implementation - the transmission strobe that controls the=
 <br>
&gt; TX output is based on the TX state machine in the radio TX core block,=
 <br>
&gt; who&#39;s timing does not take into account the group delay of the DUC=
 <br>
&gt; filter.=C2=A0 Regardless of whether or not we are using=C2=A0ATR to co=
ntrol <br>
&gt; GPIOs, the transmission gets cut off and the last set of samples=C2=A0=
 do <br>
&gt; not appear at the TX output (the number of samples missing is equal to=
 <br>
&gt; the group delay / latency of the filter for a given sample rate.)<br>
&gt;<br>
&gt; As a temporary workaround, we could zero pad the end of our TX <br>
&gt; waveforms, but some of the waveforms we want to run have tight PRFs <b=
r>
&gt; and this will heavily limit the rate at which we could run them.<br>
&gt;<br>
I don&#39;t recall there *ever* being a time when the TX state machine <br>
&quot;knew&quot; the state and depth of the DUC filters, which is why<br>
=C2=A0=C2=A0 nearly-everyone zero-pads their bursts.=C2=A0=C2=A0 This has b=
een a &quot;thing&quot; <br>
with radio hardware at various times scales over the decades<br>
=C2=A0=C2=A0 for systems transmitting digital data.<br>
<br>
I&#39;m pretty sure that R&amp;D would consider this behavior &quot;design =
intent&quot;.=C2=A0 <br>
Partially because &quot;it&#39;s always been done that way&quot;, and<br>
=C2=A0=C2=A0 partially because &quot;fixing&quot; it would be challenging (=
it would require <br>
re-architecting parts of the FPGA chain considerably, I think).<br></blockq=
uote></div></blockquote><div><br></div><div><div>Not being part of Ettus/NI=
 R&amp;D, but just observing the conversation - the answer is to use the na=
tive sample rate and bypass the DUC.=C2=A0 If zero stuffing=C2=A0with the g=
roup delay of the DUC is unacceptable due to PRF, but band limiting the tra=
nsmission is still required, then it needs to be up to the user to do it in=
 a way that suits their application.=C2=A0 Right?</div><div><br></div><div>=
Alternatively, even if the ATR switch is ideally turned on at the beginning=
 of the burst - i.e. while the state of all DUC filtering is 0&#39;s and th=
e first non-zero sample enters the DUC chain=C2=A0- and the ATR switch is i=
deally turned off at the end of the burst - i.e. when the state of the DUC =
filtering is all 0&#39;s - you&#39;d still have the PRF issue, right?</div>=
<div><br></div><div>I think, in my mind, the only solution is to fix your s=
ystem to run at the highest possible sample rate and avoid the DUC.</div><d=
iv><br></div><div>Brian</div></div></div></div>

--00000000000019057105fcecad88--

--===============8726571268960304103==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8726571268960304103==--
