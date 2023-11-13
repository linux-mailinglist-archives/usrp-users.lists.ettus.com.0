Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 265AF7EA598
	for <lists+usrp-users@lfdr.de>; Mon, 13 Nov 2023 22:50:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 062393853C6
	for <lists+usrp-users@lfdr.de>; Mon, 13 Nov 2023 16:50:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699912200; bh=KfZ+eU7Y468W6W2EjUqVFmDDHLfGE2NEmHNIX2ZN2iw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=FYIIScpO5MjAuTyaqCtqIg8sR0jBJsTNO84ZIL83O431gRFqRugMMfGdPQ763OKJ3
	 mW6iA1+XsFmeO72rpUIL0NiBVQKHbDaEhiN3Rrr3AQB1BA9g3QjuipKmwynCw7M60Z
	 GCu/bBSpQWPkn9SvoMLsIKw9JkKSV9PR8Sg/9GXPHHiCDZOESKpeonCIOc8BhCd5Pb
	 V2aPCf/Fq+8fzw9Y0BQjM4tXD7Z+vueCXDHKzOIDHowDE6hpAG43Iy/MdvXuwQDM+G
	 mxb3Xw2tvIXQ8CgmBkOKNfdFXkzO79TFggvISxyuCGReQ8ijS1kZqboJj2S7uxnZwI
	 nUDdG2XnMg76w==
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 82F88380DD8
	for <usrp-users@lists.ettus.com>; Mon, 13 Nov 2023 16:49:09 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="f2s0rJog";
	dkim-atps=neutral
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-5b9a7357553so3911269a12.0
        for <usrp-users@lists.ettus.com>; Mon, 13 Nov 2023 13:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699912148; x=1700516948; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=T3iaLf2CQZnsDXU3RH2el18/vGo8FEh2lnjUC4gEK/I=;
        b=f2s0rJogSNh0R5dT0AGSk04yRkdWJ2epqsg86L6SLTMrg4Qj9hsFyjcvkoqiF2UPkF
         6izJQOrqQ5o02NDJ4AmDLeRfuOFLYEfgG54Y4hW8NP52OmoKLNRfhDM2DfZEGxoqfAbj
         U0U2iFym7ChzEF6m40AVpI4KvA1vXrq4AhCQChzpuYdWDmWgbCFR42MdPN1GF9UHBr96
         KwPXrcpwAbtpISyiq4F56C0lpkvqLM/n9TXgLE8nXiPo2XgDnqBQ/EsKkk7TLFKgu1/n
         2rcZz88xy15lLvpZT8n+mW8eZNuQecDO+kRWxTgsINmF5tlz48RZe4hzNNEfe4HG57qU
         N/YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699912148; x=1700516948;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T3iaLf2CQZnsDXU3RH2el18/vGo8FEh2lnjUC4gEK/I=;
        b=FjWBbktQ14nN2qohOp0gabeZmIA+ALCUYKNSS5WKpFeMQtjQCgvFUK9R2FffQTBTEj
         bptntoSk0K7yVdLFt/iYhWcSaEClhi08sgCVogV46MvIslvUpS9psCu3UoRun2VWwHFP
         tNWaEP8q8fEHzTMRUmG+9xrz9r5zMM1pTjA+ko2coEKy/ZEKxasaNo1APak22WVC02ES
         tCuGl6GUuLU6P0jVsx2w9w+VNxtUfRBDAl5O0MBBRGxuvQrt9hklB9tj5fTpmbPs4Hkv
         q6m23z4Qz/58Xv9HNIwRUA2at8MoV37MOPU/t9GQ3AaEiY5R/Kp3KsxXNNP16s8ksOqg
         Q7zA==
X-Gm-Message-State: AOJu0YwGWZMHzR60qYkwNOpbxjV8r9f3kl3eoULJ46NfFrZp3V1mcePu
	fQaOVdS5CsW0L4Mp/5HwVNNL8LBBL9PftevLFZDsoXRoiOPuzA7i
X-Google-Smtp-Source: AGHT+IEHynNkrXfVUoCPs9PtrzO1wbZuRa/nURibiCKvWF7Bykbl6rkjAQqFJA2UFem0oBViSzcGLxA+sf+Ce901KwA=
X-Received: by 2002:a17:90b:388e:b0:281:d55:e3c7 with SMTP id
 mu14-20020a17090b388e00b002810d55e3c7mr9051697pjb.26.1699912148200; Mon, 13
 Nov 2023 13:49:08 -0800 (PST)
MIME-Version: 1.0
References: <CAOYGa73uEs_dg2Tb8O8VHpVkyY-HJ3+r2e690zoJvgoT4=h=CA@mail.gmail.com>
 <14c9a612-99e9-4310-a234-bf8f444d618c@gmail.com>
In-Reply-To: <14c9a612-99e9-4310-a234-bf8f444d618c@gmail.com>
From: Steve Hamn <stevehamn311@gmail.com>
Date: Mon, 13 Nov 2023 13:48:57 -0800
Message-ID: <CAOYGa71iDGV63jtAVvXR_w=8NvUwX5qgrxFUJw1dTwXJGJPooA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: FSVD5ZBCPMJ3U2WMLQINJ3WMFM5YGSME
X-Message-ID-Hash: FSVD5ZBCPMJ3U2WMLQINJ3WMFM5YGSME
X-MailFrom: stevehamn311@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 AGC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FSVD5ZBCPMJ3U2WMLQINJ3WMFM5YGSME/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0210634167008328084=="

--===============0210634167008328084==
Content-Type: multipart/alternative; boundary="000000000000be3059060a0fa344"

--000000000000be3059060a0fa344
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the response. Reading that page about the tune_request_t it says
"*The daughterboards that support this functionality are: WBX (all
revisions), WBX-120, SBX (all revisions), SBX-120, CBX, CBX-120, UBX,
UBX-160*" so will that work for the N320? I actually am trying to avoid the
DC signal and have manually tuned 2MHz above the LO (fc=3D220MHz,
BW=3D2MHz-4MHz) but still see this behavior.

I haven't exactly measured the dBm of my signals. I'm transmitting over the
air from one N320 and receiving from a second N320, but by strong/weak I
mean my "weak" signal is -30dB down from my "strong" signal. I don't see
any clipping in my "strong" signal.

I guess what should I expect from the digital samples out from the SDR and
how does that work? Should I see +/- 1.0 for -15dBm, and then +/-0.001 for
a -45dBm signal? (my understanding is that's NOT how it works). Is there
some kind of adaptive behavior that autoscales the data, and are there any
details available how that works or how to turn it off? It appears to me
from my sporadic testing that in short time scales (e.g. microseconds) a
XdB change in signal level does result in an XdB change in digital output,
but from longer timescales (e.g. 100's of milliseconds or just receive
command to receive command) they do not appear correlated.

Thank you,

Steve

On Mon, Nov 13, 2023 at 8:04=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 13/11/2023 05:08, Steve Hamn wrote:
> > Hello,
> >
> > Does the Ettus N320 employ any type of AGC? If so is there a detailed
> > description of it anywhere? Or can it be disabled?
> I don't believe the N320 implements any type of AGC.
> >
> > I notice that if I send in a strong signal the digital output from the
> > SDR is approx +/-1. If I send in a weak signal it's also +/-1 just
> > noisier. I've been experimenting with sending in amplitude modulated
> > pulses. Seems like over 'long' timescales there is some sort of
> > automatic adjustment going on that is corrupting my measurements. What
> > am I missing here?
> A narrowband signal right at the tuning center can get modified by the
> built-in DC offset compensation in the DSP logic
>    in the radio.  Look into "offset tuning":
>
> https://files.ettus.com/manual/page_general.html
>
> And the API bits here:
>
> https://files.ettus.com/manual/structuhd_1_1tune__request__t.html
>
> The idea is that you ask the radio to offset the LO away from the DC
> anomaly, and then the DSP in the radio shifts the bandwidth
>   so that you get exactly the desired center frequency that you asked for=
.
>
>
>
> What do you mean by "weak" and "strong" signal.  The maximum recommended
> input to the radio is -15dBM, and its narrowband
>    MDS at max gain is probably somewhere south of -120dBm.    So both
> your "weak" and "strong" signals may just be clipping, or
>    you're mis-interpreting the data that you are collecting.  The radio
> really does have a quite high dynamic range, but it
>    does not implement AGC as far as I know.  That would be something
> you'd have to implement in your signal processing flow.
>
>
> >
> > Conversely it appears I am able to control the TX signal by just
> > sending out smaller numbers, and I don't see this (or am I just
> > missing it)?
> >
> > Thanks in advance for any help or insight you can provide!
> >
> > Thanks,
> >
> > Steve
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000be3059060a0fa344
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for the response. Reading that page about the =
tune_request_t it says &quot;<i>The daughterboards that support this functi=
onality are: WBX (all revisions), WBX-120, SBX (all revisions), SBX-120, CB=
X, CBX-120, UBX, UBX-160</i>&quot; so will that work for the N320? I actual=
ly am trying to avoid the DC signal and have manually tuned 2MHz above the =
LO (fc=3D220MHz, BW=3D2MHz-4MHz) but still see this behavior.=C2=A0</div><d=
iv><br></div><div>I haven&#39;t exactly measured the dBm of my signals. I&#=
39;m transmitting over the air from one N320 and receiving from a second N3=
20, but by strong/weak I mean my &quot;weak&quot; signal is -30dB down from=
 my &quot;strong&quot; signal. I don&#39;t see any clipping in my &quot;str=
ong&quot; signal.=C2=A0</div><div><br></div><div>I guess what should I expe=
ct from the digital samples out from the SDR and how does that work? Should=
 I see=C2=A0+/- 1.0 for -15dBm, and then=C2=A0+/-0.001 for a -45dBm signal?=
 (my understanding is that&#39;s NOT how it works). Is there some kind of a=
daptive behavior that autoscales the data, and are there any details availa=
ble how that works or how to turn it off? It appears to me from my sporadic=
 testing that in short time scales (e.g. microseconds) a XdB change in sign=
al level does result in an XdB change in digital output, but from longer ti=
mescales (e.g. 100&#39;s of milliseconds or just receive command to receive=
 command) they do not appear correlated.=C2=A0</div><div><br></div><div>Tha=
nk you,=C2=A0</div><div><br></div><div>Steve</div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 13, 2023 at 8:04=E2=
=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">pat=
chvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">On 13/11/2023 05:08, Steve Hamn wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; Does the Ettus N320 employ any type of AGC? If so is there a detailed =
<br>
&gt; description of it anywhere? Or can it be disabled?<br>
I don&#39;t believe the N320 implements any type of AGC.<br>
&gt;<br>
&gt; I notice that if I send in a strong signal the digital output from the=
 <br>
&gt; SDR is approx +/-1. If I send in a weak signal it&#39;s also +/-1 just=
 <br>
&gt; noisier. I&#39;ve been experimenting with sending in amplitude modulat=
ed <br>
&gt; pulses. Seems like over &#39;long&#39; timescales there is some sort o=
f <br>
&gt; automatic adjustment going on that is corrupting my measurements. What=
 <br>
&gt; am I missing here?<br>
A narrowband signal right at the tuning center can get modified by the <br>
built-in DC offset compensation in the DSP logic<br>
=C2=A0=C2=A0 in the radio.=C2=A0 Look into &quot;offset tuning&quot;:<br>
<br>
<a href=3D"https://files.ettus.com/manual/page_general.html" rel=3D"norefer=
rer" target=3D"_blank">https://files.ettus.com/manual/page_general.html</a>=
<br>
<br>
And the API bits here:<br>
<br>
<a href=3D"https://files.ettus.com/manual/structuhd_1_1tune__request__t.htm=
l" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/manual/stru=
ctuhd_1_1tune__request__t.html</a><br>
<br>
The idea is that you ask the radio to offset the LO away from the DC <br>
anomaly, and then the DSP in the radio shifts the bandwidth<br>
=C2=A0=C2=A0so that you get exactly the desired center frequency that you a=
sked for.<br>
<br>
<br>
<br>
What do you mean by &quot;weak&quot; and &quot;strong&quot; signal.=C2=A0 T=
he maximum recommended <br>
input to the radio is -15dBM, and its narrowband<br>
=C2=A0=C2=A0 MDS at max gain is probably somewhere south of -120dBm.=C2=A0=
=C2=A0=C2=A0 So both <br>
your &quot;weak&quot; and &quot;strong&quot; signals may just be clipping, =
or<br>
=C2=A0=C2=A0 you&#39;re mis-interpreting the data that you are collecting.=
=C2=A0 The radio <br>
really does have a quite high dynamic range, but it<br>
=C2=A0=C2=A0 does not implement AGC as far as I know.=C2=A0 That would be s=
omething <br>
you&#39;d have to implement in your signal processing flow.<br>
<br>
<br>
&gt;<br>
&gt; Conversely it appears I am able to control the TX signal by just <br>
&gt; sending out smaller numbers, and I don&#39;t see this (or am I just <b=
r>
&gt; missing it)?<br>
&gt;<br>
&gt; Thanks in advance for any=C2=A0help or insight you can provide!<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Steve<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000be3059060a0fa344--

--===============0210634167008328084==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0210634167008328084==--
