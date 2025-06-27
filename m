Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 05905AEC2B8
	for <lists+usrp-users@lfdr.de>; Sat, 28 Jun 2025 00:44:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 594F838612E
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jun 2025 18:44:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751064248; bh=/2L30EJuXpvWUzQn/zDFiW1VoTSelbuA8nLAP+sX/Eg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=UU0fYIudC0kzgoxuk3BA87+fmRl3d0Tm0K7bhdMFOsK9dxgIcsJsNICDTsYAn5JR0
	 3WuGsNkYutb2+GaUZYkf5AaBBu6nVTfP55bysQ0a+WEhtl/jsuqVkR7Sg94a7jwtJM
	 1Ii1nWZrQH3Dn6rF1PvHpgRHcFSs19tJlS8e3eLdeRWhJ1LMIQBMp1YAsxRyPT1hQc
	 FfXH/SS7243zmoGIiZT8TQyfB4O2TVpyCuIfWlXcXL1YDIiWgUxAATlr6SHV0JcTBn
	 /E3FOGVFgSC9EH+NqD1D5ZUnl3Rt6VKo79Rz3DKwbW3skTybqzqRBPxaGv38ZRduI/
	 mXLjeoqQ2RfDg==
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id F0C10385F65
	for <usrp-users@lists.ettus.com>; Fri, 27 Jun 2025 18:43:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="alhLto8r";
	dkim-atps=neutral
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e733a6ff491so318983276.2
        for <usrp-users@lists.ettus.com>; Fri, 27 Jun 2025 15:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1751064186; x=1751668986; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0ZyzrXz+0BeCOXkg5DyLAqJfq/tW8wUYdTxsTJpnTe8=;
        b=alhLto8rWYGV+so0bb0IiWKnj0znDEKNIYZYddBN6UDP1UAqN82CyjztFsqMu2g+RX
         sPw0/vW8B4n5KkvgFxbt/UENIIL48Nj9FWbO5CPElMF9IkOLZpDaL01KtFr/tRqgSe5c
         49zdrttQMx1QeXML4rA2L1fjMYeY+UOJV3dJYetJ2wUJatuIGqRQU2WVkg805UnhbOqC
         hQb+jjU6DlpqmpYH8W9A3bmxEoge0+d32uETLoXeI7VTGcx/UqNa9iQSjs8bphWdOZdb
         QpvUOrdjwunvvtUPXDy4UK/hZKClK8Ov/KtYpM5w9IwpseMFyrFhmbZ12YphcMtZeELH
         Uk7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751064186; x=1751668986;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0ZyzrXz+0BeCOXkg5DyLAqJfq/tW8wUYdTxsTJpnTe8=;
        b=k9WCXDhfsQDGGiIUIQvPm9+dR83iLdbwriFqAqCAr2PTTwhcs0pn9tw46bI5vAATh2
         47VmDpM5uj6WPh6TTLTaTmaaYJZ0p9S+g85/1L1aBzGJRQpL8lm+PGbLjuhL0lluXhGk
         NV4jjwwVQenPR+UpHZJfIOEam/p+toEmPmYeHM2nwofQ2mucM+iTTEziDBbidZhk/QD8
         LQqLvtufQJbpqkGMZ+ENB634aelLhZ2Ly2UypbZIrpHnBvcEmr2W2UL9/mX5t1XjaYYG
         E47Y3z84QX8e3am9S4BceeGnI3344Ct10YPH0rA3mh0oLDHROW9FkyAvGVLKxGFPA0jO
         cQFA==
X-Gm-Message-State: AOJu0Yy1pmNcwij8OHqfUyxCz8iB5hiquJRtNvV/2CfdIwVVdMCz51GW
	M1NJdKbbX9wasWQfAIh6EYxYSIoM+1MbNG8voxBa8jZ5ik4SiMWtabArwfqRkQni3vltfgci9MI
	2amgjh/c2CqhHCWDRMbg4tps9bE5T9ek2jlF8UIOIUB+4
X-Gm-Gg: ASbGnctksxW2Vi+rIkWAIB62htrGyG4yMnmudfzIO8ea+i4zEYjHrA0BByw+xRuzJHm
	XLl1VFzI4XVJJbfSVQrO3XfgbV/66/2V68YYQ0Ap3+bhncwV6+GT5N5aTvrtuEnPw+e6AC0edoX
	u33EdokNouqrVmSYotSbBHks26A9F4YKUGbYPCRU8X
X-Google-Smtp-Source: AGHT+IEL9eWjAVsitHUajInf42XB69g00rQdMWzAReGPwlnxiZmsJp98oiuyyPeJqVRV74oT3xx3XEUaDvD6Hr9ZYGY=
X-Received: by 2002:a05:690c:4b10:b0:714:3e:f424 with SMTP id
 00721157ae682-715171bd162mr87221817b3.35.1751064186080; Fri, 27 Jun 2025
 15:43:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQB0JjEKNk0=SFDREonEeCVavhWpUR_-hcwy0-adDv8Cg@mail.gmail.com>
 <CAFche=gdLTvuw1RpWzDDRyN=AvW=hDAKtcSMcxCNbFeB0o_MaQ@mail.gmail.com>
 <CAFche=gc8kd2E=ZRODAzCuYkWbUmzqSitXV=tLkU9_+Ym+_PAg@mail.gmail.com>
 <CAB__hTSdEqtW=bHThXMt_DU5jdxbG3qaKmpgTxxYdrZ8QG-sfQ@mail.gmail.com>
 <CAFche=iwS+2TAPVpDPL0p8pctVb7RsZ2WUh4Fau_OqLEviiU2Q@mail.gmail.com> <CAB__hTSAipRZTYkympKgjiZDHazoRq0NS1O3_onDFmr7AaSCGg@mail.gmail.com>
In-Reply-To: <CAB__hTSAipRZTYkympKgjiZDHazoRq0NS1O3_onDFmr7AaSCGg@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 27 Jun 2025 17:42:50 -0500
X-Gm-Features: Ac12FXws24mHg1aruNf6Y6H4uXNlZfRGhX2xO-2u0vpXCH4A00HM0XgOypyyVxY
Message-ID: <CAFche=gHzb_+9R=ENy5ZSp4azLpZOHB1sjU3HOyDJ4V+Vx3GKw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: 6BTXESIT2HOTKRSDP736SFH5YV5RPV5E
X-Message-ID-Hash: 6BTXESIT2HOTKRSDP736SFH5YV5RPV5E
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 SPI clock rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6BTXESIT2HOTKRSDP736SFH5YV5RPV5E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1020397927219195117=="

--===============1020397927219195117==
Content-Type: multipart/alternative; boundary="000000000000ca614606389566a2"

--000000000000ca614606389566a2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, you're right. The clock in this case is 245.76 MHz, but the divider
sets the duration of half the SPI clock period, so the equation in your
case would be 122.88 MHz / (divider + 1). I agree, the manual deserves some
additional explanation. I'll see that it gets updated.

Thanks for reporting this.

Wade

On Fri, Jun 27, 2025 at 10:26=E2=80=AFAM Rob Kossler <rkossler@nd.edu> wrot=
e:

> But, wouldn't your previous comment apply regarding the logic inverting
> the spi clock every (divider+1) clock cycles such that a full spi clock
> cycle would consume 2*(divider+1) radio clock cycles?  If so, then this
> explains what I see and the only issue is that the equation in the manual
> needs modified by a factor of 2 and perhaps some additional info added
> regarding how the user would know what the underlying clock rate is (is i=
t
> the master_clock, the radio_clock, etc.).
>
> If this is not the case, I can open an issue. BTW, I am using UHD 4.8.
> Rob
>
> On Fri, Jun 27, 2025 at 11:17=E2=80=AFAM Wade Fife <wade.fife@ettus.com> =
wrote:
>
>> Rob,
>>
>> I don't know why you're seeing that behavior. The radio_clk does actuall=
y
>> run at 122.88 MHz in your case but the clock driving the SPI controller =
is
>> twice that rate, so I would expect it to result in SPI_clk =3D 245.76 MH=
z /
>> (divider + 1).
>>
>> Which UHD version are you using?
>>
>> I suggest opening an issue on https://github.com/EttusResearch/uhd/issue=
s.
>> If you can, share your code for configuring the SPI rate and the the
>> oscilloscope screen shot.
>>
>> Thanks,
>>
>> Wade
>>
>> On Thu, Jun 26, 2025 at 8:25=E2=80=AFPM Rob Kossler <rkossler@nd.edu> wr=
ote:
>>
>>> Hi Wade,
>>> Thanks for the response. Here are the answers:
>>> - here is the URL
>>> <https://files.ettus.com/manual/page_x400_gpio_api.html#x4x0_spi_r_w>
>>> for the equation in the UHD manual
>>> - I am using the X410 with UC_200 FPGA image with master clock rate of
>>> 245.76 MHz
>>> - The function usrp->get_radio_control()->get_rate() returns 245.76 MHz
>>> - The SPI clock as seen on my oscilloscope is half the rate I expect
>>> from the equation if I use 245.76 MHz
>>> - I wasn't sure if the factor of 2 was because of the half-cycle issue
>>> you mentioned or if it had something to do with the radio clock perhaps
>>> running at 122.88 MHz with 2 samples per cycle.
>>>
>>> Rob
>>>
>>> On Thu, Jun 26, 2025 at 4:37=E2=80=AFPM Wade Fife <wade.fife@ettus.com>=
 wrote:
>>>
>>>> Actually it looks like X410 and X440 use different clocks for the SPI
>>>> core. Can you confirm which device you saw this on and what master clo=
ck
>>>> rate you're using?
>>>>
>>>> For X410 with 200 MHz bandwidth, for example, I think the "Radio_Clk"
>>>> value you should use in that original equation in the documentation is
>>>> 245.76 MHz or 250 MHz, depending on your master clock rate. So:
>>>>
>>>>     SPI_clk =3D 245.76 MHz / (divider + 1)
>>>>
>>>> What value was returned by usrp->get_radio_control()->get_rate()?
>>>>
>>>> Wade
>>>>
>>>>
>>>> On Thu, Jun 26, 2025 at 2:41=E2=80=AFPM Wade Fife <wade.fife@ettus.com=
> wrote:
>>>>
>>>>> Hi Rob,
>>>>>
>>>>> I believe the underlying code that implements this is here:
>>>>>
>>>>>
>>>>> https://github.com/EttusResearch/uhd/blob/c354764c93b49c90be08958f942=
b9bcb7704cbd5/fpga/usrp3/lib/control/simple_spi_core.v#L182
>>>>>
>>>>> It looks like the clock is inverted every divider+1 cycles, meaning
>>>>> divider+1 is half the SPI clock period, not the full period. If so, t=
he
>>>>> frequency of the SPI clock would actually be (Radio_Clk / (divider + =
1)) /
>>>>> 2.
>>>>>
>>>>> That seems to agree with what you're seeing? Just to confirm, can you
>>>>> share the URL for the documentation with this equation?
>>>>>
>>>>> Wade
>>>>>
>>>>>
>>>>>
>>>>> On Wed, Jun 25, 2025 at 4:25=E2=80=AFPM Rob Kossler via USRP-users <
>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>
>>>>>> Hi,
>>>>>> The equation in the UHD manual for the X410 SPI clock rate is:
>>>>>>   SPI_clk =3D Radio_clk / (divider + 1)
>>>>>> However, I'm seeing half of that rate if I use the function:
>>>>>>   Radio_clk =3D usrp->get_radio_control()->get_rate();
>>>>>> Note that this returns the sample rate.  I'm wondering if maybe the
>>>>>> radio clock rate is half of the sample rate because it processes mul=
tiple
>>>>>> samples per clock cycle.
>>>>>>
>>>>>> So, basically, my question is: what function or functions should I
>>>>>> call to determine the Radio clock rate needed for the equation above=
? Or is
>>>>>> the equation wrong?
>>>>>>
>>>>>> Thanks.
>>>>>> Rob
>>>>>>
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>
>>>>>

--000000000000ca614606389566a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes, you&#39;re right. The clock in this case is 245.=
76 MHz, but the divider sets the duration of half the SPI clock period, so =
the equation in your case would be 122.88 MHz / (divider=C2=A0+ 1). I agree=
, the manual deserves some additional explanation. I&#39;ll see that it get=
s updated.</div><div><br></div><div>Thanks for reporting this.</div><div><b=
r></div><div>Wade</div></div><br><div class=3D"gmail_quote gmail_quote_cont=
ainer"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 27, 2025 at 10:26=
=E2=80=AFAM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.=
edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>But, wouldn&#39;=
t your previous comment apply regarding the logic inverting the spi clock e=
very (divider+1) clock cycles such that a full spi clock cycle would consum=
e 2*(divider+1) radio clock cycles?=C2=A0 If so, then this explains what I =
see and the only issue is that the equation in the manual needs modified by=
 a factor of 2 and perhaps some additional info added regarding how the use=
r would know what=C2=A0the=C2=A0underlying clock rate is (is it the master_=
clock, the radio_clock, etc.).</div><div><br></div><div><div>If this is not=
 the case, I can open an issue. BTW, I am using UHD 4.8.</div></div><div>Ro=
b</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Fri, Jun 27, 2025 at 11:17=E2=80=AFAM Wade Fife &lt;<a href=3D"ma=
ilto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div>Rob,</div><div><br></div><div>I don&#39;t know why you&#39;re see=
ing that behavior. The radio_clk does actually run at 122.88 MHz in your ca=
se but the clock driving the SPI controller is twice that rate, so I would =
expect it to result in SPI_clk =3D 245.76 MHz / (divider + 1).</div><div><b=
r></div><div>Which UHD version are you using?</div><div><br></div><div>I su=
ggest opening an issue on=C2=A0<a href=3D"https://github.com/EttusResearch/=
uhd/issues" target=3D"_blank">https://github.com/EttusResearch/uhd/issues</=
a>. If you can, share your code for configuring the SPI rate and the the os=
cilloscope screen shot.</div><div><br></div><div>Thanks,</div><div><br></di=
v><div>Wade</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Thu, Jun 26, 2025 at 8:25=E2=80=AFPM Rob Kossler &lt;<a=
 href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
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
</blockquote></div>

--000000000000ca614606389566a2--

--===============1020397927219195117==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1020397927219195117==--
