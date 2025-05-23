Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B41AC273F
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 18:10:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A015B385035
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 12:10:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748016644; bh=KmR0JcXWbmgQZC0cNAUsgEcKoXxXOrEzaS3DkeOWQRo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=jG/eky6TzPYwKxJbPGGN/UrYsBmIZvAyEOLeCvvY2xQbeuaokParVm9tBjtDKrXKg
	 kFgQT04T4qmDtCiyZpiuyqJysqvpakq0TNHxZZpBisdGgsS9wRjcRV9V0Jwe5ZByY0
	 cZAMLAfyu6IT0sZsX4/GSAzYEk0ltwPV1ClOBSxl3jxy8s0G2w11sYG0M7VgbTmwth
	 8JQFui7K1bwOehiL05CFmbOnkcemUFJMMaeom25mJ/9NfRqAIEGU6Aqj2kDueq6i+/
	 wDpEHzd+1vLVu1n2u2xdL35BWErJOFU0ER6IKtZEYebyQIss5YZh5B1M20/GZmkJYd
	 FGa+HE9pN8tJA==
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 9B1F0384F18
	for <usrp-users@lists.ettus.com>; Fri, 23 May 2025 12:09:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iWFHNXqE";
	dkim-atps=neutral
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7376dd56f8fso139640b3a.2
        for <usrp-users@lists.ettus.com>; Fri, 23 May 2025 09:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748016588; x=1748621388; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Fd01Lf7ficWUj6EEc+YfsdlI68kIawfV2GIF9+HHjxg=;
        b=iWFHNXqE1xWyHLNDdi5QZhR9XgWlRnsfn9rX1E1qs3lsZNKQPIaU7sGhiubBw/vvxP
         xF/zO4HMmpq/lmlxPLmixd11uNBb4kCO98YqQYFHzAi91c4Uh1dmDc31niPsE5DTAsG3
         XB+3s0LjXw6IrymH8uu8H3IPGulRQjCulipgHfjEEmV8HESSJO2qHn5x1KhQBs8uRVAL
         6RIDw+nfVaYi5OYtG5MdfT+44AWBIq7DzrcJ4PsX5Qn3Tz0UADqskysoeKGC98UGGiTE
         Jn3M/H23WHSA0HHobDxNOYkJwt3J1TWLFtk31MFdzdCwwUHx9hmr3wDmuguTCvcYE9yv
         w4XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748016588; x=1748621388;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fd01Lf7ficWUj6EEc+YfsdlI68kIawfV2GIF9+HHjxg=;
        b=aYMSuC9i99gekbNRvUtFXdZctgQ6z/KWO4jUiSqGDA5xwYTCNVwSVOqlsoBadWPayR
         ZL0+Y7NCYseeBp631Kt7IWNAM6+efdYgjx2x1WsMEc75auk7TUVIA281UB7uydMU6eNN
         BgL6YSadQXMJdACGog9WXIk8hiChcOcUUvJEb7oqUJEkW6jPaw4sxwyOuBZpnoRSzbny
         yTIEu5Xr1Y2batZJb+ZZWiRldazHa0hxpxgKcOlHrHZ8eUvmGmpamD9vOBNk5+zNYuff
         gK9wnhhu3oETsfSc1Wb+M0w0A2gvcpPu0DtBi5PvSEPXFz6vyztM7THl9SHbVZn3C2Qn
         K/lw==
X-Forwarded-Encrypted: i=1; AJvYcCVFbGVUJfQG1sVxU/DCL9S9VqutpwxWfbJoe3CYWWJsVCOY8vZz4Zwv0Icsc4symVsai2EYBF8gu6uL@lists.ettus.com
X-Gm-Message-State: AOJu0YxdVLuONTU/BH3pxIAkPB1UyW1j2u7/NYw6wtgRblZ/rvZABIYN
	oD22burKLsIwqTwhuBFRy4seWlnr4xTtj6hV3Rfy58FQEjgfCnbMph937SvD2h8sBE+0MdA1KMS
	gH8YoKv46MdKNRKFX1+G2aZy/g7YRqj7tEpHd
X-Gm-Gg: ASbGnctDjsiSMlaHm406v0KKX3MOlfFKtyd2H8gcJDNdzgPeMFzv6CSBOdXvr+ihRkN
	B3/v0Pr26nhNVWqdHwMKpIbr6RUT/C6cUvt4T//RhKe/ugRYe6a6Z9HKrYf4sMJ/edO6v+6OcqK
	Vbb5CDUbIAKxHKwNsfB4J2gBPAb/VQC+s=
X-Google-Smtp-Source: AGHT+IFCJvjtJBqJlTXdJoBT1FVkZn3fvUqrzSynpIQ9cT6/lZCl1t8NmsX01m3fgV5z2HwnNClNJxgfJoKYUS8dS98=
X-Received: by 2002:a05:6a21:7811:b0:218:b8e:7c6f with SMTP id
 adf61e73a8af0-2180b8e7c74mr33133997637.39.1748016588341; Fri, 23 May 2025
 09:09:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2FZ3qPZxwPGY-p18O895qNREXgsOTWUHJhxyi3boCoVeg@mail.gmail.com>
 <CAAxXO2EpXSctSrnaCA7pbjDD=i95WEphKyQsoJDYqrwL06Fnqg@mail.gmail.com>
 <e3acfe3e-4598-47a8-92ff-2844b8ffb558@gmail.com> <CAAxXO2FJK5QP4NPiYC_S0pu94SA4Xb5jn6OW_PfmY3cmf_PGfQ@mail.gmail.com>
 <CAAxXO2EsEM8xZk_awdZ9DW2w-CqRTKy9owCzy1ERckT=K5S7sQ@mail.gmail.com>
 <CAB__hTRsMCtJ=VOh+q3G30o6wP90Kk1aNVuECm6AJgOwR6Q6-w@mail.gmail.com> <39c78583-ffdf-4575-8749-f37e1876dff5@gmail.com>
In-Reply-To: <39c78583-ffdf-4575-8749-f37e1876dff5@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 23 May 2025 19:09:35 +0300
X-Gm-Features: AX0GCFti5ycn14IflsW2N2EqJRsHbxbn-FVuBnZeQNVnHTBw9qAseENIRNQjQi0
Message-ID: <CAAxXO2EShVqaVvO3LBMOvvNGeq_gDF2-+FRShfpb_cdGh9eCRg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: XDQ6AISUBSAVTHEUPTWJIULOA5F7QUFG
X-Message-ID-Hash: XDQ6AISUBSAVTHEUPTWJIULOA5F7QUFG
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Curious energy spikes from my X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XDQ6AISUBSAVTHEUPTWJIULOA5F7QUFG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5711265855989783196=="

--===============5711265855989783196==
Content-Type: multipart/alternative; boundary="000000000000cf46780635cfd313"

--000000000000cf46780635cfd313
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ty Rob for the link and the suggestions,

We agree completely. I need to offset my LO.
You are probably not aware that I am using the C API.
I cannot use the C++ constructors for tune_request unless they are exported
as C API.
I can just use the tune_request_t struct, which has no lo_off member.
So, I have  to offset my LO manually:
uhd_usrp_set_rx_lo_freq(uhd_usrp_handle h, double freq, char *name, size_t
channel, double *outfreq)
I have everything that I need except the LO name:(
To get name I use:
uhd_usrp_get_rx_lo_names()
That's my problem, right there. It just returns me an empty list of names.
No errors either. Why?
Without it, I cannot use the uhd_usrp_set_rx_lo_freq:(
Unfortunately, gdb is no help in this case. After 10 calls to the
/usr/include/c++ files and 7 more
calls to boost and preprocessor defines, it just advances to the next
source line.
Not gdb friendly sources:(
I am also looking to export as C API the tune_request(freq, lo_off) C++
constructor.
This will mean to change code in uhd, which I will eventually have to, but
right now,
getting uhd_usrp_get_rx_lo_names() to work, is better:)

BR
Nikos





On Fri, May 23, 2025 at 4:57=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 2025-05-23 09:49, Rob Kossler wrote:
>
> Hi Nikos,
> Your RF card has 120 MHz bandwidth.  The strong tone you see will always
> be at the center.  But, if your application can tolerate using an
> instantaneous bandwidth < 60 MHz, you can use offset tuning as Marcus
> mentioned.  To do this you simply need to create a tune request with your
> desired RF frequency and then specify an LO offset frequency of 30 MHz.
> This is all that is needed (again assuming that your bandwidth of interes=
t
> is < 60 MHz).  This link
> <https://dsp.stackexchange.com/questions/30562/large-spike-at-the-center-=
frequency-when-using-ettus-x310>
> discusses the topic.
>
> Also, if you want to reduce the DC offset, there are calibrations for the
> X310 - one of which will mitigate this signal.
> Rob
>
> Just a note that AFAIR, the *RX* DC-offset correction is something that
> doesn't require input from the calibration routines--it runs all the time
> (if its turned on).
>
> But phase/amplitude *balance* does require that you run the appropriate
> CAL utilities:
>
> https://files.ettus.com/manual/page_calibration.html
>
>
>
> On Fri, May 23, 2025 at 8:11=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.c=
om>
> wrote:
>
>> I have implemented the following calls for uhd_usrp_set_rx_lo_freq:
>>
>> uhd_string_vector_handle  names;
>> uhd_string_vector_make(&names);
>> if ((err =3D uhd_usrp_get_rx_lo_names(dev[channel], channel, &names)))
>>        warn(log, "Failed to get lo names (%d). %s.\n", 0, FL, LN, FN,
>> err, uhdError(err));
>> if ((err =3D uhd_string_vector_size(names, &len)))
>>      warn(log, "Failed to get lo names size (%d). %s.\n",0,FL,LN,FN,err,
>> uhdError(err));
>> if (!len)
>> {
>>       error(log, "No lo names found on channel %d.\n", 0, FL, LN, FN,
>> channel);
>>        uhd_string_vector_free(&names);
>>         return(FAIL);
>> }
>> uhd_string_vector_free(&names);
>>
>> The problem is that names always returns 0. This is not right for my
>> SBX-120, or any
>> daughterboard with  a tuner:( This is what i can get from the API. There
>> are no LO examples.
>> I have seen lo_enable() in c++, but nothing exported to C. What am I
>> missing?
>>
>> TIA
>> Nikos
>>
>> On Fri, May 23, 2025 at 8:12=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.=
com>
>> wrote:
>>
>>> Thx Marcus,
>>>
>>> For your fast and informative answers. Sorry it took me a while to repl=
y,
>>> but I'm still trying to get:
>>> tune_request(freq, lo_off)
>>> to work in C.
>>> My X310 has 2 SBX-120 boards. Using uhd 4.6.0 in Ubuntu 24.04.
>>> True about the tuner. Much cheaper and easier to implement it in analog=
.
>>> I am using your FPGA image. Haven't touched it myself, yet.
>>> So, the spike is pretty narrow to interfere with my signals, but still
>>> messes my power calculations:(
>>> I already implemented the integer frequency tuner and working on the lo=
w
>>> oscillator offset.
>>> If you have any pointers about it, feel free to advise.
>>> LO is not part of the request_tuner_t struct. It is set independently.
>>> Is this the same LO in uhd_usrp_set_rx_lo_freq?
>>> If this is the case I can modify it externally:)
>>>
>>> BR
>>> Nikos
>>>
>>> On Fri, May 23, 2025 at 4:40=E2=80=AFAM Marcus D. Leech <patchvonbraun@=
gmail.com>
>>> wrote:
>>>
>>>> On 2025-05-22 21:31, Nikos Balkanas wrote:
>>>>
>>>> The spike is very clean to come from outside.
>>>> Must be from my X310. My tuner must be adding a signal to the
>>>> center frequency. The small artifact at 2 Ghz is probably the tuner no=
t
>>>> equilibrating fully.
>>>> I recently updated my FPGA image. Is that where the tuner lives?
>>>>
>>>> You haven't mentioned in this thread which daughtercard you're using.
>>>> RF front-ends that use complex-baseband
>>>>   downconversion suffer from something called "DC-offset", which
>>>> produces a spike at 0Hz in the complex spectrum.
>>>>   The radio block in the standard FPGAs has methods for reducing this,
>>>> unless you turn it off.  This is a very very
>>>>   *normal* thing for complex-baseband receiver chains.
>>>>
>>>> If the algorithms are engaged and working, then there'll still be a
>>>> central spike, but *considerably* reduced, and I find that
>>>>   said spike is usually swamped by external signals, even in radio
>>>> astronomy.
>>>>
>>>> The other method that people use is to use "offset tuning".  Where the
>>>> tuner is tuned to a different RF frequency, and the
>>>>    DDC brings your signal of interest down to 0Hz.
>>>>
>>>> https://files.ettus.com/manual/page_general.html#general_tuning
>>>>
>>>> The "tuner" is an analog collection of components, including an LO
>>>> generator, and mixers.  While it is *controlled* through
>>>>   the FPGA, it is an analog subsystem.
>>>>
>>>>
>>>>
>>>> On Fri, May 23, 2025 at 3:19=E2=80=AFAM Nikos Balkanas <nbalkanas@gmai=
l.com>
>>>> wrote:
>>>>
>>>>> Hello,
>>>>>
>>>>> Whenever I look at my spectrum I always see an energy spike at the
>>>>> center frequency.
>>>>> In the first image you can see a spike at 2, but not at 2.001 Ghz. In
>>>>> the next image,
>>>>>  at 2.001 Ghz you can see the energy spike at the center frequency,
>>>>> but also a small
>>>>>  spike at 2 Ghz.
>>>>> I have verified these results by both fosphor (OpenCL fft) and fftw3f=
.
>>>>> Besides, if it were
>>>>>  an fft artifact, why is the spike at 2 Ghz still visible after a few
>>>>> mins? These spikes
>>>>>  seem to be transient, but real. In that part of the spectrum, you
>>>>> there is no traffic. Could it be  harmonics from my power supply? Pro=
blems
>>>>> with my X-310? My transmitter
>>>>>  doing funny things (I have 2 boards and not enabling my transmitter
>>>>> anywhere)?
>>>>> Naming of images is freq_sr.jpg. All are in Mhz.
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
>>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>

--000000000000cf46780635cfd313
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Ty =
Rob for the link and the suggestions,</div><div class=3D"gmail_default" sty=
le=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font=
-size:small">We agree completely. I need to offset my LO.</div><div class=
=3D"gmail_default" style=3D"font-size:small">You are probably not aware tha=
t I am using the C API.</div><div class=3D"gmail_default" style=3D"font-siz=
e:small">I cannot use the C++ constructors for tune_request unless they are=
 exported as C API.</div><div class=3D"gmail_default" style=3D"font-size:sm=
all">I can just use the tune_request_t struct, which has no lo_off member.<=
/div><div class=3D"gmail_default" style=3D"font-size:small">So, I have=C2=
=A0 to offset my LO manually:</div><div class=3D"gmail_default" style=3D"fo=
nt-size:small">uhd_usrp_set_rx_lo_freq(uhd_usrp_handle h, double freq, char=
 *name, size_t channel, double *outfreq)</div><div class=3D"gmail_default" =
style=3D"font-size:small">I have everything that I need except the LO name:=
(</div><div class=3D"gmail_default" style=3D"font-size:small">To get name I=
 use:</div><div class=3D"gmail_default" style=3D"font-size:small">uhd_usrp_=
get_rx_lo_names()</div><div class=3D"gmail_default" style=3D"font-size:smal=
l">That&#39;s my problem, right there. It just returns me an empty list of =
names. No errors either. Why?</div><div class=3D"gmail_default" style=3D"fo=
nt-size:small">Without it, I cannot use the uhd_usrp_set_rx_lo_freq:(</div>=
<div class=3D"gmail_default" style=3D"font-size:small">Unfortunately, gdb i=
s no help in this case. After 10 calls to the /usr/include/c++ files and 7 =
more</div><div class=3D"gmail_default" style=3D"font-size:small">calls to b=
oost and preprocessor defines, it just advances to the next source line.</d=
iv><div class=3D"gmail_default" style=3D"font-size:small">Not gdb friendly =
sources:(</div><div class=3D"gmail_default" style=3D"font-size:small">I am =
also looking to export as C API the tune_request(freq, lo_off) C++ construc=
tor.</div><div class=3D"gmail_default" style=3D"font-size:small">This will =
mean to change code in uhd, which I will eventually have to, but right now,=
</div><div class=3D"gmail_default" style=3D"font-size:small">getting=C2=A0u=
hd_usrp_get_rx_lo_names() to work, is better:)</div><div class=3D"gmail_def=
ault" style=3D"font-size:small"><br></div><div class=3D"gmail_default" styl=
e=3D"font-size:small">BR</div><div class=3D"gmail_default" style=3D"font-si=
ze:small">Nikos</div><div class=3D"gmail_default" style=3D"font-size:small"=
><br></div><div class=3D"gmail_default" style=3D"font-size:small"><br></div=
><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div clas=
s=3D"gmail_default" style=3D"font-size:small"><br></div></div><br><div clas=
s=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_att=
r">On Fri, May 23, 2025 at 4:57=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"m=
ailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 2025-05-23 09:49, Rob Kossler wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi Nikos,
        <div>Your RF card has 120 MHz bandwidth.=C2=A0 The strong tone you
          see will always be at the center.=C2=A0 But, if your application
          can tolerate using an instantaneous bandwidth &lt; 60 MHz, you
          can use offset tuning as Marcus mentioned.=C2=A0 To do this you
          simply need to create a tune request with your desired RF
          frequency and then specify an LO offset frequency of 30 MHz.=C2=
=A0
          This is all that is needed (again assuming that your bandwidth
          of interest is &lt; 60 MHz).=C2=A0 <a href=3D"https://dsp.stackex=
change.com/questions/30562/large-spike-at-the-center-frequency-when-using-e=
ttus-x310" target=3D"_blank">This link</a> discusses the topic.</div>
        <div><br>
        </div>
        <div>Also, if you want to reduce the DC offset, there are
          calibrations for the X310 - one of which will mitigate this
          signal.</div>
        <div>Rob</div>
      </div>
    </blockquote>
    Just a note that AFAIR, the *RX* DC-offset correction is something
    that doesn&#39;t require input from the calibration routines--it runs
    all the time (if its turned on).<br>
    <br>
    But phase/amplitude *balance* does require that you run the
    appropriate CAL utilities:<br>
    <br>
    <a href=3D"https://files.ettus.com/manual/page_calibration.html" target=
=3D"_blank">https://files.ettus.com/manual/page_calibration.html</a><br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 2025 at
          8:11=E2=80=AFAM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gm=
ail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div class=3D"gmail_default" style=3D"font-size:small">I have
              implemented the following calls for
              uhd_usrp_set_rx_lo_freq:</div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">uhd_stri=
ng_vector_handle
              =C2=A0names;<br>
              uhd_string_vector_make(&amp;names);<br>
              if ((err =3D uhd_usrp_get_rx_lo_names(dev[channel], channel,
              &amp;names)))<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0warn(log, &quot;Failed to get lo n=
ames (%d). %s.\n&quot;, 0,
              FL, LN, FN, err, uhdError(err));<br>
              if ((err =3D uhd_string_vector_size(names, &amp;len)))<br>
              =C2=A0 =C2=A0 =C2=A0warn(log, &quot;Failed to get lo names si=
ze (%d).
              %s.\n&quot;,0,FL,LN,FN,err, uhdError(err));<br>
              if (!len)<br>
              {<br>
              =C2=A0 =C2=A0 =C2=A0 error(log, &quot;No lo names found on ch=
annel %d.\n&quot;, 0,
              FL, LN, FN, channel);<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0uhd_string_vector_free(&amp;names)=
;<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 return(FAIL);</div>
            <div class=3D"gmail_default" style=3D"font-size:small">}</div>
            <div class=3D"gmail_default" style=3D"font-size:small">uhd_stri=
ng_vector_free(&amp;names);</div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">The
              problem is that names always returns 0. This is not right
              for my SBX-120, or any</div>
            <div class=3D"gmail_default" style=3D"font-size:small">daughter=
board
              with=C2=A0 a tuner:( This is what i can get from the API. The=
re
              are no LO examples.</div>
            <div class=3D"gmail_default" style=3D"font-size:small">I have
              seen lo_enable() in c++, but nothing exported to C. What
              am I missing?</div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">TIA</div=
>
            <div class=3D"gmail_default" style=3D"font-size:small">Nikos</d=
iv>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 2025 at
              8:12=E2=80=AFAM Nikos Balkanas &lt;<a href=3D"mailto:nbalkana=
s@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
              <div dir=3D"ltr">
                <div class=3D"gmail_default" style=3D"font-size:small">Thx
                  Marcus,</div>
                <div class=3D"gmail_default" style=3D"font-size:small"><br>
                </div>
                <div class=3D"gmail_default" style=3D"font-size:small">For
                  your fast and informative answers. Sorry it took me a
                  while to reply,</div>
                <div class=3D"gmail_default" style=3D"font-size:small">but
                  I&#39;m still trying to get:=C2=A0</div>
                <div class=3D"gmail_default" style=3D"font-size:small">tune=
_request(freq,
                  lo_off)</div>
                <div class=3D"gmail_default" style=3D"font-size:small">to
                  work in C.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">My
                  X310 has 2 SBX-120 boards. Using uhd 4.6.0 in Ubuntu
                  24.04.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">True
                  about the tuner. Much cheaper and easier to implement
                  it in analog.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">I am
                  using your FPGA image. Haven&#39;t touched it myself, yet=
.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">So,
                  the spike is pretty narrow to interfere with my
                  signals, but still messes my power calculations:(</div>
                <div class=3D"gmail_default" style=3D"font-size:small">I
                  already implemented the integer frequency tuner and
                  working on the low oscillator offset.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">If
                  you have any pointers about it, feel free to advise.=C2=
=A0=C2=A0</div>
                <div class=3D"gmail_default" style=3D"font-size:small">LO i=
s
                  not part of the request_tuner_t struct. It is set
                  independently.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">Is
                  this the same LO in uhd_usrp_set_rx_lo_freq?</div>
                <div class=3D"gmail_default" style=3D"font-size:small">If
                  this is the case I can modify it externally:)</div>
                <div class=3D"gmail_default" style=3D"font-size:small"><br>
                </div>
                <div class=3D"gmail_default" style=3D"font-size:small">BR</=
div>
                <div class=3D"gmail_default" style=3D"font-size:small">Niko=
s</div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 2025
                  at 4:40=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:=
patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 2025-05-22 21:31, Nikos Balkanas wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div class=3D"gmail_default" style=3D"font-size:sma=
ll">The spike is very
                          clean to come from outside.</div>
                        <div class=3D"gmail_default" style=3D"font-size:sma=
ll">Must be from my X310.
                          My tuner must be adding a signal to the</div>
                        <div class=3D"gmail_default" style=3D"font-size:sma=
ll">center frequency. The
                          small artifact at 2 Ghz is probably the tuner
                          not=C2=A0</div>
                        <div class=3D"gmail_default" style=3D"font-size:sma=
ll">equilibrating fully.</div>
                        <div class=3D"gmail_default" style=3D"font-size:sma=
ll">I recently updated my
                          FPGA image. Is that where the tuner lives?</div>
                      </div>
                    </blockquote>
                    You haven&#39;t mentioned in this thread which
                    daughtercard you&#39;re using.=C2=A0=C2=A0 RF front-end=
s that use
                    complex-baseband<br>
                    =C2=A0 downconversion suffer from something called
                    &quot;DC-offset&quot;, which produces a spike at 0Hz in=
 the
                    complex spectrum.<br>
                    =C2=A0 The radio block in the standard FPGAs has method=
s
                    for reducing this, unless you turn it off.=C2=A0 This i=
s
                    a very very<br>
                    =C2=A0 *normal* thing for complex-baseband receiver
                    chains.<br>
                    <br>
                    If the algorithms are engaged and working, then
                    there&#39;ll still be a central spike, but
                    *considerably* reduced, and I find that<br>
                    =C2=A0 said spike is usually swamped by external signal=
s,
                    even in radio astronomy.<br>
                    <br>
                    The other method that people use is to use &quot;offset
                    tuning&quot;.=C2=A0 Where the tuner is tuned to a diffe=
rent RF
                    frequency, and the<br>
                    =C2=A0=C2=A0 DDC brings your signal of interest down to=
 0Hz.<br>
                    <br>
                    <a href=3D"https://files.ettus.com/manual/page_general.=
html#general_tuning" target=3D"_blank">https://files.ettus.com/manual/page_=
general.html#general_tuning</a><br>
                    <br>
                    The &quot;tuner&quot; is an analog collection of compon=
ents,
                    including an LO generator, and mixers.=C2=A0 While it i=
s
                    *controlled* through<br>
                    =C2=A0 the FPGA, it is an analog subsystem.<br>
                    <br>
                    <br>
                    <blockquote type=3D"cite"><br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May
                          23, 2025 at 3:19=E2=80=AFAM Nikos Balkanas &lt;<a=
 href=3D"mailto:nbalkanas@gmail.com" target=3D"_blank">nbalkanas@gmail.com<=
/a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                          <div dir=3D"ltr">
                            <div class=3D"gmail_default" style=3D"font-size=
:small">Hello,</div>
                            <div class=3D"gmail_default" style=3D"font-size=
:small"><br>
                            </div>
                            <div class=3D"gmail_default" style=3D"font-size=
:small">Whenever I look at
                              my spectrum I always see an energy spike
                              at the center frequency.</div>
                            <div class=3D"gmail_default" style=3D"font-size=
:small">In the first image
                              you can see a spike at 2, but not at 2.001
                              Ghz. In the next image,</div>
                            <div class=3D"gmail_default" style=3D"font-size=
:small">=C2=A0at 2.001 Ghz you
                              can see the energy spike at the center
                              frequency, but also a small</div>
                            <div class=3D"gmail_default" style=3D"font-size=
:small">=C2=A0spike at 2 Ghz.</div>
                            <div class=3D"gmail_default" style=3D"font-size=
:small">I have verified
                              these results by both fosphor (OpenCL fft)
                              and fftw3f. Besides, if it were</div>
                            <div class=3D"gmail_default" style=3D"font-size=
:small">=C2=A0an fft artifact,
                              why is the spike at 2 Ghz still visible
                              after a few mins? These spikes</div>
                            <div class=3D"gmail_default" style=3D"font-size=
:small">=C2=A0seem to be
                              transient, but real. In that part of the
                              spectrum, you there is no traffic. Could
                              it be=C2=A0 harmonics from my power supply?
                              Problems with my X-310? My transmitter</div>
                            <div class=3D"gmail_default" style=3D"font-size=
:small">=C2=A0doing funny
                              things (I have 2 boards and not enabling
                              my transmitter anywhere)?</div>
                            <div class=3D"gmail_default" style=3D"font-size=
:small">Naming of images
                              is freq_sr.jpg. All are in Mhz.</div>
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

--000000000000cf46780635cfd313--

--===============5711265855989783196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5711265855989783196==--
