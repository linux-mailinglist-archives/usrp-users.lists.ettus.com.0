Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF70AEBBB0
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jun 2025 17:27:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BDE2738616A
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jun 2025 11:27:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751038076; bh=0qXxRyo00JQgg+eV3cZ6UHDTagGPs9seQscVV8Qa/iU=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=AfacI1c1jPzoNxeLLAEWpt4rxU4J/uveYebYjH6gsw4cUecP9CowA7GQ20VwDCtD3
	 87ZGC0bnzJQLBMOhoIwewQ4GRVOgZuwo35kL9vLPhFpxJjmO1BYBzckWEGER/V2Pcx
	 imY3oafEA4muPWutZ6piAPv90J/x6kb3K9H6QNW9Rar7wYdElZwLT/8jan245Fbrbz
	 M0l3yfff5lfKRN2mx+SX6EtEekM/CQ4fYJyunJkwTuFDcWmTpvy3YwIbvnwb1RIeLF
	 4eMx2p1TF91nGkWPtJNqqOVU0FnLH+aC0efuw94CqSfmUvZdSNZw78q63En7QBc7AF
	 mL5x1SamdJrkg==
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id C282438610A
	for <usrp-users@lists.ettus.com>; Fri, 27 Jun 2025 11:26:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="I0SCbWQb";
	dkim-atps=neutral
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ae0d758c3a2so340616166b.2
        for <usrp-users@lists.ettus.com>; Fri, 27 Jun 2025 08:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1751038017; x=1751642817; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gKfJKoB6vHFcpfn3G1fpwFN8fFdgUqgy/39KhiihG1Q=;
        b=I0SCbWQbJ3UAyesrpQlTeAifRtrS0MYdQnANUQd2EplXidVoVDPvN6hLkKUvPav0Yp
         mpj5fhsgmO2+CU8c4YPan08BiXRaJQhcvVLflj77yeSNTLkDnasqXL6PRvf6HJ34DIYW
         iU9wYBD4G8StcpHrp/qDB2r2J5MO2A2/d99BVAvaEqQqh3JcKUhBcN8S0BqfrSl7UOpR
         SzLbDs1vzi0QXdGh6KLVAc1959L5a8e9HKmAM+BynLzM37T8XaCgj3R2ZMRqvCueHF8b
         ZPqPlKsQxJx2aziBBx/qYPxJX4JIAjqp3JhEL0MXf7HxWIhRrJy40UoyH0ho6Qzg9IVp
         CsGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751038017; x=1751642817;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gKfJKoB6vHFcpfn3G1fpwFN8fFdgUqgy/39KhiihG1Q=;
        b=Djy6wDbEOeH5JhbJi9ezr2MTzNJTDKCus+ThablIrfwwxRoZu/T1TTpigKWkXm1COp
         p6EVoyRFBrKtEmzuU0sugpo7jEwsGwy/yCRkjzYHoJodTAcQVuEVI40eNw6tWlvU1wIH
         ecQPwwfJStShZrjkikppeTIbgIhqo7Es2zc0QT9eYmJ/X9S/XJJK4JtE+1gneDSMiozO
         CRq9KCghpGMjxZZ565lQ79+G9B4BVEs9Pgu2CqnXzdODFRs02GAIagh2bM7/Els9FHda
         kmjL3uhKgbbtXwChzSYEIu9hT8QFx0FBgh+fvf3NxOoSP92vesV8UmlfTt1VMbQQwy3b
         yZcA==
X-Gm-Message-State: AOJu0YzWeV0lSnHFNQKTqMfox0a3QBtBlJzC22wq9KVaIHJLj4e+B2eB
	B7hekW8eFRR8ILX9LW6iKAodnVi6PvIJmgOoxJzuRXRzwTodfoQk/LJ1yxvFp0rmcpxL5EE6Bb9
	t+EHOtoYBUf18kXU3fWZ+4EhZO0xDi1eb4xCe2gjXVWSHR7Eb9JE=
X-Gm-Gg: ASbGncsaI0wDBMHV6CJQZiCp/M1ChAkNa+UiEw2mICFoErUTw3biIGkwWe1ERjlAyM9
	ZfSDEBraHw6XQIsxF4E195pcqoiFv3cZ2vg1PFgGM2FrcGqS/f9X1A/Ldp5AfwwpIL91DlZAB3t
	aJjqc/gCW9/84w8+HJOKxZLTH9nacnKsyoQL6DOxrbcY8=
X-Google-Smtp-Source: AGHT+IH113jNTlWDDyLD68wMirtMPYM1cefvqjU8EusieTlcz3yMLp6/QuOVhckYbKYzn2xwOGMRXJm1S/mX+qpSsAo=
X-Received: by 2002:a17:906:c147:b0:ae0:df46:abd1 with SMTP id
 a640c23a62f3a-ae3501518a3mr369455466b.45.1751038017132; Fri, 27 Jun 2025
 08:26:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQB0JjEKNk0=SFDREonEeCVavhWpUR_-hcwy0-adDv8Cg@mail.gmail.com>
 <CAFche=gdLTvuw1RpWzDDRyN=AvW=hDAKtcSMcxCNbFeB0o_MaQ@mail.gmail.com>
 <CAFche=gc8kd2E=ZRODAzCuYkWbUmzqSitXV=tLkU9_+Ym+_PAg@mail.gmail.com>
 <CAB__hTSdEqtW=bHThXMt_DU5jdxbG3qaKmpgTxxYdrZ8QG-sfQ@mail.gmail.com> <CAFche=iwS+2TAPVpDPL0p8pctVb7RsZ2WUh4Fau_OqLEviiU2Q@mail.gmail.com>
In-Reply-To: <CAFche=iwS+2TAPVpDPL0p8pctVb7RsZ2WUh4Fau_OqLEviiU2Q@mail.gmail.com>
Date: Fri, 27 Jun 2025 11:26:44 -0400
X-Gm-Features: Ac12FXwag0chsMLlnwsnSdNDdp703NTebgssZcVNJF4Bu3OZuQYS2A5H9XEoVRw
Message-ID: <CAB__hTSAipRZTYkympKgjiZDHazoRq0NS1O3_onDFmr7AaSCGg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: 66HBTYQ436A7S4BANZFBN6STBFN4GHS3
X-Message-ID-Hash: 66HBTYQ436A7S4BANZFBN6STBFN4GHS3
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 SPI clock rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/66HBTYQ436A7S4BANZFBN6STBFN4GHS3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4215341053794362634=="

--===============4215341053794362634==
Content-Type: multipart/alternative; boundary="000000000000fff6a306388f4e26"

--000000000000fff6a306388f4e26
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

But, wouldn't your previous comment apply regarding the logic inverting the
spi clock every (divider+1) clock cycles such that a full spi clock cycle
would consume 2*(divider+1) radio clock cycles?  If so, then this explains
what I see and the only issue is that the equation in the manual needs
modified by a factor of 2 and perhaps some additional info added regarding
how the user would know what the underlying clock rate is (is it the
master_clock, the radio_clock, etc.).

If this is not the case, I can open an issue. BTW, I am using UHD 4.8.
Rob

On Fri, Jun 27, 2025 at 11:17=E2=80=AFAM Wade Fife <wade.fife@ettus.com> wr=
ote:

> Rob,
>
> I don't know why you're seeing that behavior. The radio_clk does actually
> run at 122.88 MHz in your case but the clock driving the SPI controller i=
s
> twice that rate, so I would expect it to result in SPI_clk =3D 245.76 MHz=
 /
> (divider + 1).
>
> Which UHD version are you using?
>
> I suggest opening an issue on https://github.com/EttusResearch/uhd/issues=
.
> If you can, share your code for configuring the SPI rate and the the
> oscilloscope screen shot.
>
> Thanks,
>
> Wade
>
> On Thu, Jun 26, 2025 at 8:25=E2=80=AFPM Rob Kossler <rkossler@nd.edu> wro=
te:
>
>> Hi Wade,
>> Thanks for the response. Here are the answers:
>> - here is the URL
>> <https://files.ettus.com/manual/page_x400_gpio_api.html#x4x0_spi_r_w>
>> for the equation in the UHD manual
>> - I am using the X410 with UC_200 FPGA image with master clock rate of
>> 245.76 MHz
>> - The function usrp->get_radio_control()->get_rate() returns 245.76 MHz
>> - The SPI clock as seen on my oscilloscope is half the rate I expect fro=
m
>> the equation if I use 245.76 MHz
>> - I wasn't sure if the factor of 2 was because of the half-cycle issue
>> you mentioned or if it had something to do with the radio clock perhaps
>> running at 122.88 MHz with 2 samples per cycle.
>>
>> Rob
>>
>> On Thu, Jun 26, 2025 at 4:37=E2=80=AFPM Wade Fife <wade.fife@ettus.com> =
wrote:
>>
>>> Actually it looks like X410 and X440 use different clocks for the SPI
>>> core. Can you confirm which device you saw this on and what master cloc=
k
>>> rate you're using?
>>>
>>> For X410 with 200 MHz bandwidth, for example, I think the "Radio_Clk"
>>> value you should use in that original equation in the documentation is
>>> 245.76 MHz or 250 MHz, depending on your master clock rate. So:
>>>
>>>     SPI_clk =3D 245.76 MHz / (divider + 1)
>>>
>>> What value was returned by usrp->get_radio_control()->get_rate()?
>>>
>>> Wade
>>>
>>>
>>> On Thu, Jun 26, 2025 at 2:41=E2=80=AFPM Wade Fife <wade.fife@ettus.com>=
 wrote:
>>>
>>>> Hi Rob,
>>>>
>>>> I believe the underlying code that implements this is here:
>>>>
>>>>
>>>> https://github.com/EttusResearch/uhd/blob/c354764c93b49c90be08958f942b=
9bcb7704cbd5/fpga/usrp3/lib/control/simple_spi_core.v#L182
>>>>
>>>> It looks like the clock is inverted every divider+1 cycles, meaning
>>>> divider+1 is half the SPI clock period, not the full period. If so, th=
e
>>>> frequency of the SPI clock would actually be (Radio_Clk / (divider + 1=
)) /
>>>> 2.
>>>>
>>>> That seems to agree with what you're seeing? Just to confirm, can you
>>>> share the URL for the documentation with this equation?
>>>>
>>>> Wade
>>>>
>>>>
>>>>
>>>> On Wed, Jun 25, 2025 at 4:25=E2=80=AFPM Rob Kossler via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>>> Hi,
>>>>> The equation in the UHD manual for the X410 SPI clock rate is:
>>>>>   SPI_clk =3D Radio_clk / (divider + 1)
>>>>> However, I'm seeing half of that rate if I use the function:
>>>>>   Radio_clk =3D usrp->get_radio_control()->get_rate();
>>>>> Note that this returns the sample rate.  I'm wondering if maybe the
>>>>> radio clock rate is half of the sample rate because it processes mult=
iple
>>>>> samples per clock cycle.
>>>>>
>>>>> So, basically, my question is: what function or functions should I
>>>>> call to determine the Radio clock rate needed for the equation above?=
 Or is
>>>>> the equation wrong?
>>>>>
>>>>> Thanks.
>>>>> Rob
>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>>

--000000000000fff6a306388f4e26
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>But, wouldn&#39;t y=
our previous comment apply regarding the logic inverting the spi clock ever=
y (divider+1) clock cycles such that a full spi clock cycle would consume 2=
*(divider+1) radio clock cycles?=C2=A0 If so, then this explains what I see=
 and the only issue is that the equation in the manual needs modified by a =
factor of 2 and perhaps some additional info added regarding how the user w=
ould know what=C2=A0the=C2=A0underlying clock rate is (is it the master_clo=
ck, the radio_clock, etc.).</div><div><br></div><div><div>If this is not th=
e case, I can open an issue. BTW, I am using UHD 4.8.</div></div><div>Rob</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Fri, Jun 27, 2025 at 11:17=E2=80=AFAM Wade Fife &lt;<a href=3D"mailt=
o:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div>Rob,</div><div><br></div><div>I don&#39;t know why you&#39;re seeing=
 that behavior. The radio_clk does actually run at 122.88 MHz in your case =
but the clock driving the SPI controller is twice that rate, so I would exp=
ect it to result in SPI_clk =3D 245.76 MHz / (divider + 1).</div><div><br><=
/div><div>Which UHD version are you using?</div><div><br></div><div>I sugge=
st opening an issue on=C2=A0<a href=3D"https://github.com/EttusResearch/uhd=
/issues" target=3D"_blank">https://github.com/EttusResearch/uhd/issues</a>.=
 If you can, share your code for configuring the SPI rate and the the oscil=
loscope screen shot.</div><div><br></div><div>Thanks,</div><div><br></div><=
div>Wade</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Jun 26, 2025 at 8:25=E2=80=AFPM Rob Kossler &lt;<a =
href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr">Hi Wade,<div>Thanks for the response. Here are th=
e answers:</div><div>- <a href=3D"https://files.ettus.com/manual/page_x400_=
gpio_api.html#x4x0_spi_r_w" target=3D"_blank">here is the URL</a> for the e=
quation in the UHD manual</div><div>- I am using the X410 with UC_200 FPGA =
image with master clock rate of 245.76 MHz</div><div>- The function usrp-&g=
t;get_radio_control()-&gt;get_rate() returns 245.76 MHz</div><div>- The SPI=
 clock as seen on my oscilloscope=C2=A0is half the rate I expect from the e=
quation if I use 245.76 MHz</div><div>- I wasn&#39;t sure if the factor of =
2 was because of the half-cycle issue you mentioned or if it had something =
to do with the radio clock perhaps running=C2=A0at 122.88 MHz with 2 sample=
s per cycle.</div><div><br></div><div>Rob</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 26, 2025 at 4:37=
=E2=80=AFPM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"=
_blank">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><div>Actually it looks like X41=
0 and X440 use different clocks for the SPI core. Can you confirm which dev=
ice you saw this on and what master clock rate you&#39;re using?</div><div>=
<br></div><div>For X410 with 200 MHz bandwidth, for example, I think the &q=
uot;Radio_Clk&quot; value you should use in that original equation=C2=A0in =
the documentation is 245.76 MHz or 250 MHz, depending on your master clock =
rate. So:</div><div><br></div><div>=C2=A0 =C2=A0 SPI_clk =3D 245.76 MHz / (=
divider + 1)</div><div><br></div><div>What value was returned by usrp-&gt;g=
et_radio_control()-&gt;get_rate()?</div><div><br></div><div>Wade</div><div>=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Thu, Jun 26, 2025 at 2:41=E2=80=AFPM Wade Fife &lt;<a href=3D"=
mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>Hi Rob,</div><div><br></div><div>I believe the underlying cod=
e that implements this is here:</div><div><br></div><div><a href=3D"https:/=
/github.com/EttusResearch/uhd/blob/c354764c93b49c90be08958f942b9bcb7704cbd5=
/fpga/usrp3/lib/control/simple_spi_core.v#L182" target=3D"_blank">https://g=
ithub.com/EttusResearch/uhd/blob/c354764c93b49c90be08958f942b9bcb7704cbd5/f=
pga/usrp3/lib/control/simple_spi_core.v#L182</a></div><div><br></div><div>I=
t looks like the clock is inverted every divider+1 cycles, meaning divider+=
1 is half the SPI clock period,=C2=A0not the full period. If so, the freque=
ncy of the SPI clock would actually be=C2=A0(Radio_Clk / (divider=C2=A0+ 1)=
) / 2.</div><div><br></div><div>That seems to agree with what you&#39;re se=
eing? Just to confirm, can you share the URL for the documentation with thi=
s equation?</div><div><br></div><div>Wade</div><div><br></div><div><br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Wed, Jun 25, 2025 at 4:25=E2=80=AFPM Rob Kossler via USRP-users &lt;<a=
 href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@li=
sts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr">Hi,<br><div>The equation in the UHD manual fo=
r the X410 SPI clock rate is:</div><div>=C2=A0 SPI_clk =3D Radio_clk / (div=
ider=C2=A0+ 1)</div><div>However, I&#39;m seeing half of that rate if I use=
 the function:</div><div>=C2=A0 Radio_clk =3D usrp-&gt;get_radio_control()-=
&gt;get_rate();</div><div>Note that this returns the sample rate.=C2=A0 I&#=
39;m wondering if maybe the radio clock rate is half of the sample rate bec=
ause it processes multiple samples per clock cycle.=C2=A0</div><div><br></d=
iv><div>So, basically, my question is: what function or functions should I =
call to determine the Radio clock rate needed for the equation above? Or is=
 the equation wrong?</div><div><br></div><div>Thanks.</div><div>Rob</div><d=
iv><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div></div>
</div>

--000000000000fff6a306388f4e26--

--===============4215341053794362634==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4215341053794362634==--
