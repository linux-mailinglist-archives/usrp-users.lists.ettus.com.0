Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FD2AC2262
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 14:11:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BF6C7385A99
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 08:11:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748002289; bh=Xy2XfIvOI3lM84nZcirWSKwgqV47W8CXOOTLw48+bt4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=YG1LY2FsQpgbtlFfvxeqJ3Qf8k0Osf8sUf4cTlpTBiA1whC1aANK28ApZZAbp4jDt
	 wqZ1LtwiXXJ7GTKt2kmGgADfxFQ8x+EiNNB3euBWbgoZ2Qjqg9AHPMPhMzADVLqJHk
	 vlfGqH3eigttZNtXOIW+R5pfXZj/do7siNGomAc+gNDDDFBRRdyOMM4e45dIAq+eWv
	 TgwCDstIRtSVSDLy86GJr9xkSFylGFgsPO15U5BUBQxOtTKKH5swOmihvME9cUCaXX
	 py6HPSmBrDiV3TOcGw1a7rgvpCmB+wCnj6qZqZTqiIwrmWxr2KzZMrv9TAjCK9I3ao
	 X5fbmHiAQIjEw==
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 87A973855D0
	for <usrp-users@lists.ettus.com>; Fri, 23 May 2025 08:10:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="P8658F8H";
	dkim-atps=neutral
Received: by mail-io1-f54.google.com with SMTP id ca18e2360f4ac-86135af1045so1023938339f.1
        for <usrp-users@lists.ettus.com>; Fri, 23 May 2025 05:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748002236; x=1748607036; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yWzVfVelDKfjUcThXM2myTyzyGzDDO8Jsd+ts266V7k=;
        b=P8658F8H9OqktUfKXFSOG9IqGZo6rfScCVob2HbTObllTaHWP8VPE1/KQlQ8VX5orY
         RI7/R1vRBTH3i0Q3hN7TeB5arMbm+auxqDteZi+qK2Ou5gzpPxt6I4i+stsQt6bzy9C9
         V+9heu/vRdKHbOtHfZ0aQFGu9Dt7FbiTOQwF1S7CX1H7Wof/FRB8BYicBpS06Jt08FbP
         JaKmqf3qkuC4NEB4TpzPsNab+OqVJ6TELVicUe8JTrrz4tE2NRIVZWP+2gTjTzNdhojm
         uI738rBLR34JnyPQCXZLWlzpe5tmslRLXWosx2/myY2gVQvoBFtDiZDcBQ54J7v79wFb
         Eb8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748002236; x=1748607036;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yWzVfVelDKfjUcThXM2myTyzyGzDDO8Jsd+ts266V7k=;
        b=aTmJg2ZQNDwV4cggvpRmAdr+BlnlnOiscdnT7KRAQEZTl4DWhCEfvdc+FXYL/nA9xh
         3UB3PcEtKZ6RTvmaEQyQRg0LMo/yYdZRSOMfghj+WEZHfKgGw9i4oVMTJJdQAetLQ+8j
         DBOL3gsbIIfsptsQVNUW9aSXW7DVD9X+iaUHqVgMMaTC73ZikvRIspMERolaZMv7s1ut
         8ABjWOOJ6goyP8K+sbx6BIOBQqeVBoEmrhtgmGb3TamfW6CMTbv6K+W2nMSyj/x6tVUA
         eo94lij8/wPUUFWJYX6JPeEXDlqiV9RlMMWtV1vLkNpzxRm159aH+P1z4B76lH5jMODa
         PYdw==
X-Gm-Message-State: AOJu0YzSXLYRu6mdIS8zvpVSM0B/x2ZdL2X0Yz0PnErplGcQO1Bwb7Nx
	G8tjkNbcpCcBfhBkmZvYc+gYxzAG81sK13qsPEwDPNJp/RZUYsqvTikLQeLE6ftpH4zebDkrVdW
	FLfoHAlO0DNJZ8wNJ3fxK6jKrZU5bnl0=
X-Gm-Gg: ASbGncsNIOwEiUgJSVdQvZTFyc0DtgBxxQllsTMYcONxFFiGliPR0kl1CUaJO9LFJvN
	RhNPxkiI1wRkaA60eXc+Qy+d13FCEL9TyVZIgfBNMzHuofE0mLc/FOzPhiEhXXnGmXteGEWAkpO
	Y3IIGJt0pUu2JhHlzxtSTvscMDQ3ie
X-Google-Smtp-Source: AGHT+IHLBY4g+8ejMzhzb5+GmQpFs5yXq9/L+Rjos2YIdAVU1OnQMkKqgxA49Z0M4E6A60rYJP9p7MVmDQfZlc5kMSc=
X-Received: by 2002:a05:6602:3e8e:b0:85b:3c49:8811 with SMTP id
 ca18e2360f4ac-86caf073239mr386515839f.4.1748002235584; Fri, 23 May 2025
 05:10:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2FZ3qPZxwPGY-p18O895qNREXgsOTWUHJhxyi3boCoVeg@mail.gmail.com>
 <CAAxXO2EpXSctSrnaCA7pbjDD=i95WEphKyQsoJDYqrwL06Fnqg@mail.gmail.com>
 <e3acfe3e-4598-47a8-92ff-2844b8ffb558@gmail.com> <CAAxXO2FJK5QP4NPiYC_S0pu94SA4Xb5jn6OW_PfmY3cmf_PGfQ@mail.gmail.com>
In-Reply-To: <CAAxXO2FJK5QP4NPiYC_S0pu94SA4Xb5jn6OW_PfmY3cmf_PGfQ@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 23 May 2025 15:10:23 +0300
X-Gm-Features: AX0GCFtUh9HZPGJ0rIPjzIxp5upiqlO3xp42Gs1uDXVQ86faibwiJTJEQ2MnONk
Message-ID: <CAAxXO2EsEM8xZk_awdZ9DW2w-CqRTKy9owCzy1ERckT=K5S7sQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: PTI33WLRWWNM2SYFJ7JEAD6444RXPJXO
X-Message-ID-Hash: PTI33WLRWWNM2SYFJ7JEAD6444RXPJXO
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Curious energy spikes from my X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PTI33WLRWWNM2SYFJ7JEAD6444RXPJXO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6035855542135932763=="

--===============6035855542135932763==
Content-Type: multipart/alternative; boundary="0000000000005193b40635cc7cde"

--0000000000005193b40635cc7cde
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have implemented the following calls for uhd_usrp_set_rx_lo_freq:

uhd_string_vector_handle  names;
uhd_string_vector_make(&names);
if ((err =3D uhd_usrp_get_rx_lo_names(dev[channel], channel, &names)))
       warn(log, "Failed to get lo names (%d). %s.\n", 0, FL, LN, FN, err,
uhdError(err));
if ((err =3D uhd_string_vector_size(names, &len)))
     warn(log, "Failed to get lo names size (%d). %s.\n",0,FL,LN,FN,err,
uhdError(err));
if (!len)
{
      error(log, "No lo names found on channel %d.\n", 0, FL, LN, FN,
channel);
       uhd_string_vector_free(&names);
        return(FAIL);
}
uhd_string_vector_free(&names);

The problem is that names always returns 0. This is not right for my
SBX-120, or any
daughterboard with  a tuner:( This is what i can get from the API. There
are no LO examples.
I have seen lo_enable() in c++, but nothing exported to C. What am I
missing?

TIA
Nikos

On Fri, May 23, 2025 at 8:12=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.com=
> wrote:

> Thx Marcus,
>
> For your fast and informative answers. Sorry it took me a while to reply,
> but I'm still trying to get:
> tune_request(freq, lo_off)
> to work in C.
> My X310 has 2 SBX-120 boards. Using uhd 4.6.0 in Ubuntu 24.04.
> True about the tuner. Much cheaper and easier to implement it in analog.
> I am using your FPGA image. Haven't touched it myself, yet.
> So, the spike is pretty narrow to interfere with my signals, but still
> messes my power calculations:(
> I already implemented the integer frequency tuner and working on the low
> oscillator offset.
> If you have any pointers about it, feel free to advise.
> LO is not part of the request_tuner_t struct. It is set independently.
> Is this the same LO in uhd_usrp_set_rx_lo_freq?
> If this is the case I can modify it externally:)
>
> BR
> Nikos
>
> On Fri, May 23, 2025 at 4:40=E2=80=AFAM Marcus D. Leech <patchvonbraun@gm=
ail.com>
> wrote:
>
>> On 2025-05-22 21:31, Nikos Balkanas wrote:
>>
>> The spike is very clean to come from outside.
>> Must be from my X310. My tuner must be adding a signal to the
>> center frequency. The small artifact at 2 Ghz is probably the tuner not
>> equilibrating fully.
>> I recently updated my FPGA image. Is that where the tuner lives?
>>
>> You haven't mentioned in this thread which daughtercard you're using.
>> RF front-ends that use complex-baseband
>>   downconversion suffer from something called "DC-offset", which produce=
s
>> a spike at 0Hz in the complex spectrum.
>>   The radio block in the standard FPGAs has methods for reducing this,
>> unless you turn it off.  This is a very very
>>   *normal* thing for complex-baseband receiver chains.
>>
>> If the algorithms are engaged and working, then there'll still be a
>> central spike, but *considerably* reduced, and I find that
>>   said spike is usually swamped by external signals, even in radio
>> astronomy.
>>
>> The other method that people use is to use "offset tuning".  Where the
>> tuner is tuned to a different RF frequency, and the
>>    DDC brings your signal of interest down to 0Hz.
>>
>> https://files.ettus.com/manual/page_general.html#general_tuning
>>
>> The "tuner" is an analog collection of components, including an LO
>> generator, and mixers.  While it is *controlled* through
>>   the FPGA, it is an analog subsystem.
>>
>>
>>
>> On Fri, May 23, 2025 at 3:19=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.=
com>
>> wrote:
>>
>>> Hello,
>>>
>>> Whenever I look at my spectrum I always see an energy spike at the
>>> center frequency.
>>> In the first image you can see a spike at 2, but not at 2.001 Ghz. In
>>> the next image,
>>>  at 2.001 Ghz you can see the energy spike at the center frequency, but
>>> also a small
>>>  spike at 2 Ghz.
>>> I have verified these results by both fosphor (OpenCL fft) and fftw3f.
>>> Besides, if it were
>>>  an fft artifact, why is the spike at 2 Ghz still visible after a few
>>> mins? These spikes
>>>  seem to be transient, but real. In that part of the spectrum, you ther=
e
>>> is no traffic. Could it be  harmonics from my power supply? Problems wi=
th
>>> my X-310? My transmitter
>>>  doing funny things (I have 2 boards and not enabling my transmitter
>>> anywhere)?
>>> Naming of images is freq_sr.jpg. All are in Mhz.
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

--0000000000005193b40635cc7cde
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">I h=
ave implemented the following calls for uhd_usrp_set_rx_lo_freq:</div><div =
class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"g=
mail_default" style=3D"font-size:small">uhd_string_vector_handle =C2=A0name=
s;<br>uhd_string_vector_make(&amp;names);<br>if ((err =3D uhd_usrp_get_rx_l=
o_names(dev[channel], channel, &amp;names)))<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
warn(log, &quot;Failed to get lo names (%d). %s.\n&quot;, 0, FL, LN, FN, er=
r, uhdError(err));<br>if ((err =3D uhd_string_vector_size(names, &amp;len))=
)<br>=C2=A0 =C2=A0 =C2=A0warn(log, &quot;Failed to get lo names size (%d). =
%s.\n&quot;,0,FL,LN,FN,err, uhdError(err));<br>if (!len)<br>{<br>=C2=A0 =C2=
=A0 =C2=A0 error(log, &quot;No lo names found on channel %d.\n&quot;, 0, FL=
, LN, FN, channel);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0uhd_string_vector_free(&a=
mp;names);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return(FAIL);</div><div class=3D"=
gmail_default" style=3D"font-size:small">}</div><div class=3D"gmail_default=
" style=3D"font-size:small">uhd_string_vector_free(&amp;names);</div><div c=
lass=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gm=
ail_default" style=3D"font-size:small">The problem is that names always ret=
urns 0. This is not right for my SBX-120, or any</div><div class=3D"gmail_d=
efault" style=3D"font-size:small">daughterboard with=C2=A0 a tuner:( This i=
s what i can get from the API. There are no LO examples.</div><div class=3D=
"gmail_default" style=3D"font-size:small">I have seen lo_enable() in c++, b=
ut nothing exported to C. What am I missing?</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=
=3D"font-size:small">TIA</div><div class=3D"gmail_default" style=3D"font-si=
ze:small">Nikos</div></div><br><div class=3D"gmail_quote gmail_quote_contai=
ner"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 2025 at 8:12=E2=
=80=AFAM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.com">nbalkana=
s@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size=
:small">Thx Marcus,</div><div class=3D"gmail_default" style=3D"font-size:sm=
all"><br></div><div class=3D"gmail_default" style=3D"font-size:small">For y=
our fast and informative answers. Sorry it took me a while to reply,</div><=
div class=3D"gmail_default" style=3D"font-size:small">but I&#39;m still try=
ing to get:=C2=A0</div><div class=3D"gmail_default" style=3D"font-size:smal=
l">tune_request(freq, lo_off)</div><div class=3D"gmail_default" style=3D"fo=
nt-size:small">to work in C.</div><div class=3D"gmail_default" style=3D"fon=
t-size:small">My X310 has 2 SBX-120 boards. Using uhd 4.6.0 in Ubuntu 24.04=
.</div><div class=3D"gmail_default" style=3D"font-size:small">True about th=
e tuner. Much cheaper and easier to implement it in analog.</div><div class=
=3D"gmail_default" style=3D"font-size:small">I am using your FPGA image. Ha=
ven&#39;t touched it myself, yet.</div><div class=3D"gmail_default" style=
=3D"font-size:small">So, the spike is pretty narrow to interfere with my si=
gnals, but still messes my power calculations:(</div><div class=3D"gmail_de=
fault" style=3D"font-size:small">I already implemented the integer frequenc=
y tuner and working on the low oscillator offset.</div><div class=3D"gmail_=
default" style=3D"font-size:small">If you have any pointers about it, feel =
free to advise.=C2=A0=C2=A0</div><div class=3D"gmail_default" style=3D"font=
-size:small">LO is not part of the request_tuner_t struct. It is set indepe=
ndently.</div><div class=3D"gmail_default" style=3D"font-size:small">Is thi=
s the same LO in uhd_usrp_set_rx_lo_freq?</div><div class=3D"gmail_default"=
 style=3D"font-size:small">If this is the case I can modify it externally:)=
</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div=
 class=3D"gmail_default" style=3D"font-size:small">BR</div><div class=3D"gm=
ail_default" style=3D"font-size:small">Nikos</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 2025 at 4=
:40=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.co=
m" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><u></u>

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

--0000000000005193b40635cc7cde--

--===============6035855542135932763==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6035855542135932763==--
