Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF851AC2481
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 15:50:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1340C38594E
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 09:50:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748008210; bh=vTSb7+g6QnMbY2fzDaEKqnSgL4WWXlStuT+yGLXEJfM=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=TkPC3dcM+bh0pnHPSCGGFFI8mdFWhlOpyz8g6npYK0qhpkNPbxRWfSGd2OdfL3fEQ
	 zJBvJS50T7RZLlq3UF6SNovD3wPghwh9lPX1BFH4s8l+miTnx4deOl6S+seQHoB42G
	 Ms3yYML/SNv9XPmBTYLhpX3UQhaGGniO0OdETn671LglUv4b3H+djl2+SuZQXzCupA
	 3ngy0pvLRtZcGOt9TeiS9HcJTASk787GTw5cm7GQNAwwalOdtpx0Ekgi7FjnI0e8bx
	 a64D5+qNuCQ81kwQ/O1A7IcM+4BgVwxy22U93Zc121KtbAi5mI6O5XDJb2U4Ks7Ny8
	 1pS9jOEOpBn+Q==
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 8D1D0385629
	for <usrp-users@lists.ettus.com>; Fri, 23 May 2025 09:49:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="JzktLNdE";
	dkim-atps=neutral
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-742c7a52e97so5276123b3a.3
        for <usrp-users@lists.ettus.com>; Fri, 23 May 2025 06:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1748008156; x=1748612956; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=E5PVmKIG3heP4WFq2Tgx+jRrVXsREmOPMywjGoDEJ7k=;
        b=JzktLNdEJLjK44TyElgCwml3D7rxUuvLFnZZS4z5I7LlWfc80dzVe8f4HgNVLIDWTX
         qvhaQnObtYnC9qyXWHuya37aRzqW8DEroLhca/G+8qpguK98hlLknJoeay2qFSVV0HRS
         qYBzUYf4VkNbrwth89wou+P/iB0LmiK46jg0np4DuDuLyC9OD1m79bZQP8wrQ/euqRvY
         7sRv1Md8vABLOkA1AnZx4Oud/oMl81Yca6rMaL95rrqPK3GZ5zKtXrKnw4hTPDm8GkdS
         rv+2vJG7x4QqImMZK8JwzjF4ehRW0oDbbWrTbs7sYEgAu+RfizTVtfs/MNizhtBwJyVP
         JtWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748008156; x=1748612956;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E5PVmKIG3heP4WFq2Tgx+jRrVXsREmOPMywjGoDEJ7k=;
        b=XSr1E8DOxze0vfHIJ64zjbvfIoOgWORLmYaKGDfkx28SAMW3+Av+rOuhAIpM+XxW5h
         9isiuqh5PmjtgGCgOgS6p9z9JI9Gp4WpcnyJYeoWO1+eGdb8pMgYUNwU4HuVplDxr/1N
         Fv8rjoolQoToNBvJx0ETmxZYu9QcYnRUlkhfCxp0dRFq8TpcVo2CDXkg8fepYOAa8byD
         OcoG8dQpF7mqxseRJ3CYf4jhlt4kno4DiU0YnIZyECJR8O6QIEx8/GYvqpTjbOZDejD8
         krnXT3vsXKTco+9s68WJFw4N8nu2El2k7YLIfF60ZOQYLQETBMg3tVdwid2m7O9+RTYx
         M5Sg==
X-Forwarded-Encrypted: i=1; AJvYcCU+ze9cP5nN+exLuw3IT3DS2baU5BbfjHAEWz0rfGeG921kHJYWcs4YDHIorvWOO5jMjHUViKV9WbQO@lists.ettus.com
X-Gm-Message-State: AOJu0YzlZRzUFjRMOXBdhsoUuw6PoMq0HumOx/CIMvWop8VwtCUvCefR
	FB7RsVufazyLbOWCjiM5w1a4KRC3cCCn861MbOmqyXIc8GnxKU6VHmloPMTVX4u7c5fWRpUmabp
	xchdERWOm/sjNLtcfahOq8zaErrel+KfvifBvs2wv1ChtZDoBysc=
X-Gm-Gg: ASbGncskTQBwGEhRfuclDf9w1T93tA8b2jpc1m2N7QHhNZWs6RPMIqbbcknsyVNjq5K
	6dI5hJJOO9KjqEVqbuiHXDLlrnLhw+bRTNWivhJvxcvXN3Lfaiob1kMZv5maWhQvcwQ/l6qQt8b
	MtlRGzgDBFiYtaoPU5ENJANkkEoIB2psaU
X-Google-Smtp-Source: AGHT+IFJeTeIiJ+iN8089QxvdTONpFHeQ/uwmH9Zotx/O+1Hj+LC0iprpaH63gfI51o4PAKF4SE9T47NG23D2HvEeM8=
X-Received: by 2002:a05:6a00:4c87:b0:730:9502:d564 with SMTP id
 d2e1a72fcca58-742acce2c1cmr39408617b3a.14.1748008154690; Fri, 23 May 2025
 06:49:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2FZ3qPZxwPGY-p18O895qNREXgsOTWUHJhxyi3boCoVeg@mail.gmail.com>
 <CAAxXO2EpXSctSrnaCA7pbjDD=i95WEphKyQsoJDYqrwL06Fnqg@mail.gmail.com>
 <e3acfe3e-4598-47a8-92ff-2844b8ffb558@gmail.com> <CAAxXO2FJK5QP4NPiYC_S0pu94SA4Xb5jn6OW_PfmY3cmf_PGfQ@mail.gmail.com>
 <CAAxXO2EsEM8xZk_awdZ9DW2w-CqRTKy9owCzy1ERckT=K5S7sQ@mail.gmail.com>
In-Reply-To: <CAAxXO2EsEM8xZk_awdZ9DW2w-CqRTKy9owCzy1ERckT=K5S7sQ@mail.gmail.com>
Date: Fri, 23 May 2025 09:49:00 -0400
X-Gm-Features: AX0GCFuUd9xRDR67ceksJFqS1kxeVKj7oziRlvWrySQWqAmzU8YrELB6G5UmQOs
Message-ID: <CAB__hTRsMCtJ=VOh+q3G30o6wP90Kk1aNVuECm6AJgOwR6Q6-w@mail.gmail.com>
To: Nikos Balkanas <nbalkanas@gmail.com>
Message-ID-Hash: EZF3XQLXGOAB4T46G67VDPO6UKGCPOD2
X-Message-ID-Hash: EZF3XQLXGOAB4T46G67VDPO6UKGCPOD2
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Curious energy spikes from my X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EZF3XQLXGOAB4T46G67VDPO6UKGCPOD2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============0273867046977604832=="

--===============0273867046977604832==
Content-Type: multipart/alternative; boundary="000000000000201d520635cddd21"

--000000000000201d520635cddd21
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nikos,
Your RF card has 120 MHz bandwidth.  The strong tone you see will always be
at the center.  But, if your application can tolerate using an
instantaneous bandwidth < 60 MHz, you can use offset tuning as Marcus
mentioned.  To do this you simply need to create a tune request with your
desired RF frequency and then specify an LO offset frequency of 30 MHz.
This is all that is needed (again assuming that your bandwidth of interest
is < 60 MHz).  This link
<https://dsp.stackexchange.com/questions/30562/large-spike-at-the-center-fr=
equency-when-using-ettus-x310>
discusses the topic.

Also, if you want to reduce the DC offset, there are calibrations for the
X310 - one of which will mitigate this signal.
Rob

On Fri, May 23, 2025 at 8:11=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.com=
> wrote:

> I have implemented the following calls for uhd_usrp_set_rx_lo_freq:
>
> uhd_string_vector_handle  names;
> uhd_string_vector_make(&names);
> if ((err =3D uhd_usrp_get_rx_lo_names(dev[channel], channel, &names)))
>        warn(log, "Failed to get lo names (%d). %s.\n", 0, FL, LN, FN, err=
,
> uhdError(err));
> if ((err =3D uhd_string_vector_size(names, &len)))
>      warn(log, "Failed to get lo names size (%d). %s.\n",0,FL,LN,FN,err,
> uhdError(err));
> if (!len)
> {
>       error(log, "No lo names found on channel %d.\n", 0, FL, LN, FN,
> channel);
>        uhd_string_vector_free(&names);
>         return(FAIL);
> }
> uhd_string_vector_free(&names);
>
> The problem is that names always returns 0. This is not right for my
> SBX-120, or any
> daughterboard with  a tuner:( This is what i can get from the API. There
> are no LO examples.
> I have seen lo_enable() in c++, but nothing exported to C. What am I
> missing?
>
> TIA
> Nikos
>
> On Fri, May 23, 2025 at 8:12=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.c=
om>
> wrote:
>
>> Thx Marcus,
>>
>> For your fast and informative answers. Sorry it took me a while to reply=
,
>> but I'm still trying to get:
>> tune_request(freq, lo_off)
>> to work in C.
>> My X310 has 2 SBX-120 boards. Using uhd 4.6.0 in Ubuntu 24.04.
>> True about the tuner. Much cheaper and easier to implement it in analog.
>> I am using your FPGA image. Haven't touched it myself, yet.
>> So, the spike is pretty narrow to interfere with my signals, but still
>> messes my power calculations:(
>> I already implemented the integer frequency tuner and working on the low
>> oscillator offset.
>> If you have any pointers about it, feel free to advise.
>> LO is not part of the request_tuner_t struct. It is set independently.
>> Is this the same LO in uhd_usrp_set_rx_lo_freq?
>> If this is the case I can modify it externally:)
>>
>> BR
>> Nikos
>>
>> On Fri, May 23, 2025 at 4:40=E2=80=AFAM Marcus D. Leech <patchvonbraun@g=
mail.com>
>> wrote:
>>
>>> On 2025-05-22 21:31, Nikos Balkanas wrote:
>>>
>>> The spike is very clean to come from outside.
>>> Must be from my X310. My tuner must be adding a signal to the
>>> center frequency. The small artifact at 2 Ghz is probably the tuner not
>>> equilibrating fully.
>>> I recently updated my FPGA image. Is that where the tuner lives?
>>>
>>> You haven't mentioned in this thread which daughtercard you're using.
>>> RF front-ends that use complex-baseband
>>>   downconversion suffer from something called "DC-offset", which
>>> produces a spike at 0Hz in the complex spectrum.
>>>   The radio block in the standard FPGAs has methods for reducing this,
>>> unless you turn it off.  This is a very very
>>>   *normal* thing for complex-baseband receiver chains.
>>>
>>> If the algorithms are engaged and working, then there'll still be a
>>> central spike, but *considerably* reduced, and I find that
>>>   said spike is usually swamped by external signals, even in radio
>>> astronomy.
>>>
>>> The other method that people use is to use "offset tuning".  Where the
>>> tuner is tuned to a different RF frequency, and the
>>>    DDC brings your signal of interest down to 0Hz.
>>>
>>> https://files.ettus.com/manual/page_general.html#general_tuning
>>>
>>> The "tuner" is an analog collection of components, including an LO
>>> generator, and mixers.  While it is *controlled* through
>>>   the FPGA, it is an analog subsystem.
>>>
>>>
>>>
>>> On Fri, May 23, 2025 at 3:19=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail=
.com>
>>> wrote:
>>>
>>>> Hello,
>>>>
>>>> Whenever I look at my spectrum I always see an energy spike at the
>>>> center frequency.
>>>> In the first image you can see a spike at 2, but not at 2.001 Ghz. In
>>>> the next image,
>>>>  at 2.001 Ghz you can see the energy spike at the center frequency, bu=
t
>>>> also a small
>>>>  spike at 2 Ghz.
>>>> I have verified these results by both fosphor (OpenCL fft) and fftw3f.
>>>> Besides, if it were
>>>>  an fft artifact, why is the spike at 2 Ghz still visible after a few
>>>> mins? These spikes
>>>>  seem to be transient, but real. In that part of the spectrum, you
>>>> there is no traffic. Could it be  harmonics from my power supply? Prob=
lems
>>>> with my X-310? My transmitter
>>>>  doing funny things (I have 2 boards and not enabling my transmitter
>>>> anywhere)?
>>>> Naming of images is freq_sr.jpg. All are in Mhz.
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
>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000201d520635cddd21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Nikos,<div>Your RF card has 120 MHz bandwidth.=C2=A0 Th=
e strong tone you see will always be at the center.=C2=A0 But, if your appl=
ication can tolerate using an instantaneous bandwidth &lt; 60 MHz, you can =
use offset tuning as Marcus mentioned.=C2=A0 To do this you simply need to =
create a tune request with your desired RF frequency and then specify an LO=
 offset frequency of 30 MHz.=C2=A0 This is all that is needed (again assumi=
ng that your bandwidth of interest is &lt; 60 MHz).=C2=A0 <a href=3D"https:=
//dsp.stackexchange.com/questions/30562/large-spike-at-the-center-frequency=
-when-using-ettus-x310">This link</a> discusses the topic.</div><div><br></=
div><div>Also, if you want to reduce the DC offset, there are calibrations =
for the X310 - one of which will mitigate this signal.</div><div>Rob</div><=
/div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, May 23, 2025 at 8:11=E2=80=AFAM Nikos Balkanas=
 &lt;<a href=3D"mailto:nbalkanas@gmail.com">nbalkanas@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div class=3D"gmail_default" style=3D"font-size:small">I have implemen=
ted the following calls for uhd_usrp_set_rx_lo_freq:</div><div class=3D"gma=
il_default" style=3D"font-size:small"><br></div><div class=3D"gmail_default=
" style=3D"font-size:small">uhd_string_vector_handle =C2=A0names;<br>uhd_st=
ring_vector_make(&amp;names);<br>if ((err =3D uhd_usrp_get_rx_lo_names(dev[=
channel], channel, &amp;names)))<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0warn(log, &q=
uot;Failed to get lo names (%d). %s.\n&quot;, 0, FL, LN, FN, err, uhdError(=
err));<br>if ((err =3D uhd_string_vector_size(names, &amp;len)))<br>=C2=A0 =
=C2=A0 =C2=A0warn(log, &quot;Failed to get lo names size (%d). %s.\n&quot;,=
0,FL,LN,FN,err, uhdError(err));<br>if (!len)<br>{<br>=C2=A0 =C2=A0 =C2=A0 e=
rror(log, &quot;No lo names found on channel %d.\n&quot;, 0, FL, LN, FN, ch=
annel);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0uhd_string_vector_free(&amp;names);<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return(FAIL);</div><div class=3D"gmail_defaul=
t" style=3D"font-size:small">}</div><div class=3D"gmail_default" style=3D"f=
ont-size:small">uhd_string_vector_free(&amp;names);</div><div class=3D"gmai=
l_default" style=3D"font-size:small"><br></div><div class=3D"gmail_default"=
 style=3D"font-size:small">The problem is that names always returns 0. This=
 is not right for my SBX-120, or any</div><div class=3D"gmail_default" styl=
e=3D"font-size:small">daughterboard with=C2=A0 a tuner:( This is what i can=
 get from the API. There are no LO examples.</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small">I have seen lo_enable() in c++, but nothing e=
xported to C. What am I missing?</div><div class=3D"gmail_default" style=3D=
"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-size=
:small">TIA</div><div class=3D"gmail_default" style=3D"font-size:small">Nik=
os</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Fri, May 23, 2025 at 8:12=E2=80=AFAM Nikos Balkanas &lt;<a href=
=3D"mailto:nbalkanas@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Thx Marcu=
s,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><d=
iv class=3D"gmail_default" style=3D"font-size:small">For your fast and info=
rmative answers. Sorry it took me a while to reply,</div><div class=3D"gmai=
l_default" style=3D"font-size:small">but I&#39;m still trying to get:=C2=A0=
</div><div class=3D"gmail_default" style=3D"font-size:small">tune_request(f=
req, lo_off)</div><div class=3D"gmail_default" style=3D"font-size:small">to=
 work in C.</div><div class=3D"gmail_default" style=3D"font-size:small">My =
X310 has 2 SBX-120 boards. Using uhd 4.6.0 in Ubuntu 24.04.</div><div class=
=3D"gmail_default" style=3D"font-size:small">True about the tuner. Much che=
aper and easier to implement it in analog.</div><div class=3D"gmail_default=
" style=3D"font-size:small">I am using your FPGA image. Haven&#39;t touched=
 it myself, yet.</div><div class=3D"gmail_default" style=3D"font-size:small=
">So, the spike is pretty narrow to interfere with my signals, but still me=
sses my power calculations:(</div><div class=3D"gmail_default" style=3D"fon=
t-size:small">I already implemented the integer frequency tuner and working=
 on the low oscillator offset.</div><div class=3D"gmail_default" style=3D"f=
ont-size:small">If you have any pointers about it, feel free to advise.=C2=
=A0=C2=A0</div><div class=3D"gmail_default" style=3D"font-size:small">LO is=
 not part of the request_tuner_t struct. It is set independently.</div><div=
 class=3D"gmail_default" style=3D"font-size:small">Is this the same LO in u=
hd_usrp_set_rx_lo_freq?</div><div class=3D"gmail_default" style=3D"font-siz=
e:small">If this is the case I can modify it externally:)</div><div class=
=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail_=
default" style=3D"font-size:small">BR</div><div class=3D"gmail_default" sty=
le=3D"font-size:small">Nikos</div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 2025 at 4:40=E2=80=AFAM M=
arcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_bl=
ank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 2025-05-22 21:31, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small">The spike is
          very clean to come from outside.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Must be from
          my X310. My tuner must be adding a signal to the</div>
        <div class=3D"gmail_default" style=3D"font-size:small">center
          frequency. The small artifact at 2 Ghz is probably the tuner
          not=C2=A0</div>
        <div class=3D"gmail_default" style=3D"font-size:small">equilibratin=
g
          fully.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">I recently
          updated my FPGA image. Is that where the tuner lives?</div>
      </div>
    </blockquote>
    You haven&#39;t mentioned in this thread which daughtercard you&#39;re
    using.=C2=A0=C2=A0 RF front-ends that use complex-baseband<br>
    =C2=A0 downconversion suffer from something called &quot;DC-offset&quot=
;, which
    produces a spike at 0Hz in the complex spectrum.<br>
    =C2=A0 The radio block in the standard FPGAs has methods for reducing
    this, unless you turn it off.=C2=A0 This is a very very<br>
    =C2=A0 *normal* thing for complex-baseband receiver chains.<br>
    <br>
    If the algorithms are engaged and working, then there&#39;ll still be a
    central spike, but *considerably* reduced, and I find that<br>
    =C2=A0 said spike is usually swamped by external signals, even in radio
    astronomy.<br>
    <br>
    The other method that people use is to use &quot;offset tuning&quot;.=
=C2=A0 Where
    the tuner is tuned to a different RF frequency, and the<br>
    =C2=A0=C2=A0 DDC brings your signal of interest down to 0Hz.<br>
    <br>
    <a href=3D"https://files.ettus.com/manual/page_general.html#general_tun=
ing" target=3D"_blank">https://files.ettus.com/manual/page_general.html#gen=
eral_tuning</a><br>
    <br>
    The &quot;tuner&quot; is an analog collection of components, including =
an LO
    generator, and mixers.=C2=A0 While it is *controlled* through<br>
    =C2=A0 the FPGA, it is an analog subsystem.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 2025 at
          3:19=E2=80=AFAM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gm=
ail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div class=3D"gmail_default" style=3D"font-size:small">Hello,</=
div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">Whenever
              I look at my spectrum I always see an energy spike at the
              center frequency.</div>
            <div class=3D"gmail_default" style=3D"font-size:small">In the
              first image you can see a spike at 2, but not at 2.001
              Ghz. In the next image,</div>
            <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0at=
 2.001
              Ghz you can see the energy spike at the center frequency,
              but also a small</div>
            <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0sp=
ike at
              2 Ghz.</div>
            <div class=3D"gmail_default" style=3D"font-size:small">I have
              verified these results by both fosphor (OpenCL fft) and
              fftw3f. Besides, if it were</div>
            <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0an=
 fft
              artifact, why is the spike at 2 Ghz still visible after a
              few mins? These spikes</div>
            <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0se=
em to
              be transient, but real. In that part of the spectrum, you
              there is no traffic. Could it be=C2=A0 harmonics from my powe=
r
              supply? Problems with my X-310? My transmitter</div>
            <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0do=
ing
              funny things (I have 2 boards and not enabling my
              transmitter anywhere)?</div>
            <div class=3D"gmail_default" style=3D"font-size:small">Naming o=
f
              images is freq_sr.jpg. All are in Mhz.</div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">TIA</div=
>
            <div class=3D"gmail_default" style=3D"font-size:small">Nikos</d=
iv>
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
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000201d520635cddd21--

--===============0273867046977604832==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0273867046977604832==--
