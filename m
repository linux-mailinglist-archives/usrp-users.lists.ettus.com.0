Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A1F716C7A
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 20:28:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4772F3846C5
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 14:28:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685471318; bh=rz/OI8us8f0Rgrx6K120i3Y3VfQ6umpQTelhjdxaSo0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ZYernX3Zbip4ZFaUMZD5NvXF71rUlkKq1PM5N9SrPEW8LpuuhXg0QD+L4qbJZAJ8y
	 kp8Z6pcrVD5c+wwtbkLvOUboz3Egtsdb4HumZleiQ812aMtoEWiFlC55l1GGTBe7iB
	 IqctYkRGPY7aBawet/l27r53N/2ra5IlZBmYCe2uLdwm+aCOVQnOCt6Q0mnir1aH2u
	 /3cS/bo79PGcfskvBN+3WpKiVP9hQAthCaJVVQyieb8SRkwgfis40J9l8VJr0GmB3o
	 0YcVB86fhi949kPBUCWRBEbw8v7hNQlmCbA0cnGWNc70tOod1WaznzDrDeOSxqs2J+
	 +KqAGKrTzXpqg==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 8ABEA384575
	for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 14:27:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=chaosinc.com header.i=@chaosinc.com header.b="F0pMrvV2";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-62614a1dd47so16650796d6.2
        for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 11:27:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chaosinc.com; s=google; t=1685471260; x=1688063260;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LIE0bgXw6goWjkdXP91f9VxG6rAG0MDbdxfZnnHJI9o=;
        b=F0pMrvV2gbErBI1xRy7LHAQmoGLS9iHUy8sHvmaSZbAqH1VnnjZiKyREsPTiA25wcn
         xgf86z/I0E2OgtWVCy+OKUcACwcIIi2nLwkN4RTxdr+iSKs8gKFqSfcdMz8Ku0LTQzB9
         nAtyo7cMtDruY98h2DASWIteoYF86ntGQIUGxPGawaE1LrNzm3WU/BxqqsIpjyUh4Uj2
         SyXNk73zYLYiYulsJX3bqjMo4qodD5ZZTOS6OkxmJF7ZUXlr+EGkfex+BQEe4W0fZWly
         fuUT2fWeIEjSguKfTR5nHlgKNXHUfs58yRSwzPEdCuFKkqN+D3AH2xhBxo8g6WSPET0h
         ceNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685471260; x=1688063260;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LIE0bgXw6goWjkdXP91f9VxG6rAG0MDbdxfZnnHJI9o=;
        b=EvoBZ9tUtP19GGN7l9Jwiuf39DXGYEBobkN0SXVzprFPmj6vXrF/l+uk1tsZ/ksek1
         7ALpFpbrU8Fu7UYIOS7vHlQJHhvfM48uJuqIVwDhx+CcgGxH6fXapaKsWCGJ2ak/ctIL
         MvV294knAaTAR61V9uMDULBCFBuIRqBMlH8+HoMWK3Qs/QWGn3ckpFFGZ3MVgNH6HBvs
         oiIARt7x2VQMGtYaSZTO1Jc3GtQJt2SLVVL7dgGRTl1ur7dSe3io56rFzzGa4+njpXRt
         oyroD9Nq0ny1yh5ql/5nrW+43oXrTT5TgaaHKmuYpK7Unr7VNusNAGoE0JFKoKs/z4xy
         Qhhw==
X-Gm-Message-State: AC+VfDwiTQq79BW5y+9dBS5kIgf4sFlNDbaw4MvPTAnuJGigwblHCMGZ
	NLOkTQEgR6ycavHaED+dVqZTt4OOx0/GdqzBjVfFJg==
X-Google-Smtp-Source: ACHHUZ4THQTDqDHPeGiT2S/o1R6QMErKhLlMJoFaRkMfUPgJhOzU93xf8jQzJWhh6VSdS05UbVmOwJnCwab+k49WzvE=
X-Received: by 2002:ad4:5d46:0:b0:623:a303:706f with SMTP id
 jk6-20020ad45d46000000b00623a303706fmr4308539qvb.42.1685471260007; Tue, 30
 May 2023 11:27:40 -0700 (PDT)
MIME-Version: 1.0
References: <W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.com>
 <c157a530-5c52-0fd4-79a4-0c65810ee0f0@gmail.com> <JN1P275MB053556431057E296A551C8C695469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAB__hTSxoCSY8PahuLUSC-ig6FNr_r5PPsaobNh9KK8S6xNxCA@mail.gmail.com>
 <7ed5a34a-8862-09ae-edfa-d5ca15947915@gmail.com> <JN1P275MB053547F1D25B83244EE59F8795469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAL7q81shBqtUzSaHseMO59rq1u3QSxSrA7bCaX-BVZo7FNRLZQ@mail.gmail.com>
 <CANq7nXcTe6FrDNXHiYUKY7VU-47UqdW3PtZj5eafBP84-2HhbA@mail.gmail.com>
 <4da2d23c-0854-582c-a191-deb5476488fe@gmail.com> <CANq7nXeVL8ActLms9N5kCAb78ALSrKPBb-agALYJjzNk9Yi9mg@mail.gmail.com>
 <CAEXYVK6JLh_C4cb6GbPYCFxNBv=U3AgUdqP=yBkmSH7Vey4wOQ@mail.gmail.com>
In-Reply-To: <CAEXYVK6JLh_C4cb6GbPYCFxNBv=U3AgUdqP=yBkmSH7Vey4wOQ@mail.gmail.com>
From: Mena Ghebranious <mena@chaosinc.com>
Date: Tue, 30 May 2023 11:27:29 -0700
Message-ID: <CANq7nXf266iBvAARXfrmebaTeZFskaCPwvXHvvWT+Hzg-sVghg@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: AAX2TUPIRYMV4O26KSL4CYYTV726C3Y6
X-Message-ID-Hash: AAX2TUPIRYMV4O26KSL4CYYTV726C3Y6
X-MailFrom: mena@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, Jonathon Pendlum <jonathon.pendlum@ettus.com>, Leon Wabeke <LWabeke@csir.co.za>, Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AAX2TUPIRYMV4O26KSL4CYYTV726C3Y6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1061027664671338721=="

--===============1061027664671338721==
Content-Type: multipart/alternative; boundary="000000000000bb704805fced5b21"

--000000000000bb704805fced5b21
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, bypassing the DUC was discussed among our team, but as far as I can
tell, there is no way to configure the bypass via the UHD/USRP API - it
would require an FPGA mod.

On Tue, May 30, 2023 at 10:38=E2=80=AFAM Brian Padalino <bpadalino@gmail.co=
m> wrote:

> On Tue, May 30, 2023 at 11:15=E2=80=AFAM Mena Ghebranious <mena@chaosinc.=
com>
> wrote:
>
>> If possible, I'd like to hear what the R&D team thinks - I have worked
>> with designs in the past where the TX timing lines up and there are no
>> samples cut off.
>>
>
>> On Tue, May 30, 2023 at 8:08=E2=80=AFAM Marcus D. Leech <patchvonbraun@g=
mail.com>
>> wrote:
>>
>>> On 30/05/2023 11:02, Mena Ghebranious wrote:
>>> > Hi Marcus,
>>> >
>>> > I took a closer look at the end of my transmission; what originally
>>> > appeared to be a lack of symmetry between the start and end delays is
>>> > actually a cutoff of 31 samples at the end of the transmission - in
>>> > other words, I'm missing the 31 samples at the end of the TX that I
>>> > put into the TX streamer.
>>> >
>>> > Looking into the FPGA logic, I believe there is actually a bug in the
>>> > most recent implementation - the transmission strobe that controls th=
e
>>> > TX output is based on the TX state machine in the radio TX core block=
,
>>> > who's timing does not take into account the group delay of the DUC
>>> > filter.  Regardless of whether or not we are using ATR to control
>>> > GPIOs, the transmission gets cut off and the last set of samples  do
>>> > not appear at the TX output (the number of samples missing is equal t=
o
>>> > the group delay / latency of the filter for a given sample rate.)
>>> >
>>> > As a temporary workaround, we could zero pad the end of our TX
>>> > waveforms, but some of the waveforms we want to run have tight PRFs
>>> > and this will heavily limit the rate at which we could run them.
>>> >
>>> I don't recall there *ever* being a time when the TX state machine
>>> "knew" the state and depth of the DUC filters, which is why
>>>    nearly-everyone zero-pads their bursts.   This has been a "thing"
>>> with radio hardware at various times scales over the decades
>>>    for systems transmitting digital data.
>>>
>>> I'm pretty sure that R&D would consider this behavior "design intent".
>>> Partially because "it's always been done that way", and
>>>    partially because "fixing" it would be challenging (it would require
>>> re-architecting parts of the FPGA chain considerably, I think).
>>>
>>
> Not being part of Ettus/NI R&D, but just observing the conversation - the
> answer is to use the native sample rate and bypass the DUC.  If zero
> stuffing with the group delay of the DUC is unacceptable due to PRF, but
> band limiting the transmission is still required, then it needs to be up =
to
> the user to do it in a way that suits their application.  Right?
>
> Alternatively, even if the ATR switch is ideally turned on at the
> beginning of the burst - i.e. while the state of all DUC filtering is 0's
> and the first non-zero sample enters the DUC chain - and the ATR switch i=
s
> ideally turned off at the end of the burst - i.e. when the state of the D=
UC
> filtering is all 0's - you'd still have the PRF issue, right?
>
> I think, in my mind, the only solution is to fix your system to run at th=
e
> highest possible sample rate and avoid the DUC.
>
> Brian
>

--000000000000bb704805fced5b21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, bypassing the DUC was discussed among our team, but a=
s far as I can tell, there is no way to configure the bypass via the UHD/US=
RP API - it would require an FPGA mod.</div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 30, 2023 at 10:38=E2=80=
=AFAM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Tue, May 30, 2023 at 11:15=E2=
=80=AFAM Mena Ghebranious &lt;<a href=3D"mailto:mena@chaosinc.com" target=
=3D"_blank">mena@chaosinc.com</a>&gt; wrote:<br></div><div class=3D"gmail_q=
uote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">If=
 possible, I&#39;d like to hear what the R&amp;D team thinks - I have worke=
d with designs in the past where=C2=A0the TX timing lines up and there are =
no samples cut off.=C2=A0</div></blockquote><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Tue, May 30, 2023 at 8:08=E2=80=AFAM Marcus D. Leech &lt;<a=
 href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">On 30/05/2023 11:02, Mena Ghebranious wrote:<br>
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
</blockquote></div>

--000000000000bb704805fced5b21--

--===============1061027664671338721==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1061027664671338721==--
