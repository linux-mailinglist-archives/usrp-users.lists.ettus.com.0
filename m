Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB02AEBB7C
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jun 2025 17:18:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5206E386173
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jun 2025 11:18:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751037504; bh=EdqJcZQcoRS41a/AMZk0nFPf4Xe/ltwsA12iNqgYbeo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=fmZ9esKSawszvbxAQoqzGMh+7cDwKXUH6DJ2RtgqG+r8xR0fFakjGN9F3jUtfRxuC
	 qjFql+0/mNn8kCiY6zWJO0PYJshk7aKkpFJU5VuYCVIj+tWvoc3o0RW5c4CA7WPUvv
	 bB4NmVWDCsR3plzGQ/2WQaMJquGoitER5al4HA4ZuxQLROv9UpjzWqiFhsUa47Lgjj
	 f0E0ARWJGVWnBu/ReJz6CcNjbuUAq2Gb0Er38lVIKgOsOYARQGGnWS75bIgAw/D+lH
	 KNWshXTOCFrPR13G6oAhocdDYhoHiUr5S7fPSNyw8w1RMPSkdiO4niAp8fNkePzn7b
	 Zh9IxSpgHj19g==
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 29D8C385C6C
	for <usrp-users@lists.ettus.com>; Fri, 27 Jun 2025 11:17:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="xYrbNLwb";
	dkim-atps=neutral
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-70e5d953c0bso26266917b3.1
        for <usrp-users@lists.ettus.com>; Fri, 27 Jun 2025 08:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1751037445; x=1751642245; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=m09cnTbT0d44Or+loV22Zpn3pMz7GVEs3t6lDajkfew=;
        b=xYrbNLwbsImhnH8kKxJH9ntN6VYrTPCRmqY20ZjdfkBGWehaONRWrV/NlxO7l/vy7w
         7lx3Iy8HayKRIF6gwKQz02Mptke7sKQ64mwTjT/YeekTGXd4l2/YSnms4xVtViIqNRNM
         9sgPNEA7z6Vj+xVfwuPWMrWxaN944UBmAM2RGQfQ6hyZnUqa3ceVw8zy0fSDE4rl4YZg
         JRUltwRKrdKXZSmOwtJPOZl3+ZQXqUHni+lOrDQeMJCDYie15bGXiDcQGbx9FAdl8qB3
         jNy+Dkmpe9d+2us0QMSZBY45KoGVo+q4tHeZrlD5Vnu7magE7Nj194mZgGhSM+yEr+/Q
         HkjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751037445; x=1751642245;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m09cnTbT0d44Or+loV22Zpn3pMz7GVEs3t6lDajkfew=;
        b=eOAy32rKjwUQMwugcC7z6D6OL2WZ0e0Xx2uZQsjG2k+KMsV4u9QIsjEofNL8tyHTmn
         QhuiPHC5Bbs1lGk5L5MBBl83/K4MR07f2gFVD4rQ8+Wo95TMAFXzdHPQflAimI6cX6vB
         1w7WRQIWhTlB6IXJSIg4P0HlnNB76wo3AeYh3mnArUEMH408A59QEV20APqFKy0ebxVm
         VFcRWRu2lLvtJE3eKQ6hOgrdN5mZ1rNi/szm5iuQ8/Sa4ESBYHb6tkkUloGDPPs8zSIM
         vj5iwd28t4p1EaLo0+FxU2gugNwE1AHJShZe4B/PmN4OmPyQPtWi37J5hdjTnuPPVoXU
         uQuw==
X-Gm-Message-State: AOJu0Yyi+eHcn5slgLVnwQdn8SBcmBHaAkQDM2d7svSTGgZX6mOHC6mQ
	Q5jqkrQsI/6DYjqD5M/RQ+4ATl+a5tQ3YPYRc7fgK40mxKT2GueaAB8bSBtU8id0QZhunwfxN8/
	yNs6EeEp1aa+TBKF4JXNZryls586FTCIk+FhKHEgFVQAv
X-Gm-Gg: ASbGncuvXP3k7mpytS2K6Uu+2tD6oKvfG5l3ncL9k7rznMW7hFJX8bXs0jomSiDznZw
	lQexqi9+Z7SJWJBFSH8bJx9lXFozMlu5ehtTxP8J94H1fpYFzSIAVTqRehP3pTgmedwzKSeoohy
	F+5ylgpL8KVrXAJTZMD0vS9hPiMFYPJTC3s4oltvfCGGhIioFF9V8=
X-Google-Smtp-Source: AGHT+IHM3nqg0ZLulp4gagpXwfD7ZRwR05hnzXYM5L+eu1Z0bJdTvcQaMg/K9xH3kn5r6S0dk6c7Zq0ne8AnbMyNeHM=
X-Received: by 2002:a05:690c:6605:b0:714:691:6d1d with SMTP id
 00721157ae682-715171b53b1mr51426067b3.24.1751037445268; Fri, 27 Jun 2025
 08:17:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQB0JjEKNk0=SFDREonEeCVavhWpUR_-hcwy0-adDv8Cg@mail.gmail.com>
 <CAFche=gdLTvuw1RpWzDDRyN=AvW=hDAKtcSMcxCNbFeB0o_MaQ@mail.gmail.com>
 <CAFche=gc8kd2E=ZRODAzCuYkWbUmzqSitXV=tLkU9_+Ym+_PAg@mail.gmail.com> <CAB__hTSdEqtW=bHThXMt_DU5jdxbG3qaKmpgTxxYdrZ8QG-sfQ@mail.gmail.com>
In-Reply-To: <CAB__hTSdEqtW=bHThXMt_DU5jdxbG3qaKmpgTxxYdrZ8QG-sfQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 27 Jun 2025 10:17:09 -0500
X-Gm-Features: Ac12FXylTnXm5qbe1-LlwxGQKYT4EKXrpefGflCcSfMYp2eECTOEQfIoD323Mzk
Message-ID: <CAFche=iwS+2TAPVpDPL0p8pctVb7RsZ2WUh4Fau_OqLEviiU2Q@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: IFZINREFRIIUESVSYFQUVNIMHYERDZOQ
X-Message-ID-Hash: IFZINREFRIIUESVSYFQUVNIMHYERDZOQ
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 SPI clock rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IFZINREFRIIUESVSYFQUVNIMHYERDZOQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7892242767292337646=="

--===============7892242767292337646==
Content-Type: multipart/alternative; boundary="000000000000e9ff7606388f2c60"

--000000000000e9ff7606388f2c60
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Rob,

I don't know why you're seeing that behavior. The radio_clk does actually
run at 122.88 MHz in your case but the clock driving the SPI controller is
twice that rate, so I would expect it to result in SPI_clk =3D 245.76 MHz /
(divider + 1).

Which UHD version are you using?

I suggest opening an issue on https://github.com/EttusResearch/uhd/issues.
If you can, share your code for configuring the SPI rate and the the
oscilloscope screen shot.

Thanks,

Wade

On Thu, Jun 26, 2025 at 8:25=E2=80=AFPM Rob Kossler <rkossler@nd.edu> wrote=
:

> Hi Wade,
> Thanks for the response. Here are the answers:
> - here is the URL
> <https://files.ettus.com/manual/page_x400_gpio_api.html#x4x0_spi_r_w> for
> the equation in the UHD manual
> - I am using the X410 with UC_200 FPGA image with master clock rate of
> 245.76 MHz
> - The function usrp->get_radio_control()->get_rate() returns 245.76 MHz
> - The SPI clock as seen on my oscilloscope is half the rate I expect from
> the equation if I use 245.76 MHz
> - I wasn't sure if the factor of 2 was because of the half-cycle issue yo=
u
> mentioned or if it had something to do with the radio clock perhaps
> running at 122.88 MHz with 2 samples per cycle.
>
> Rob
>
> On Thu, Jun 26, 2025 at 4:37=E2=80=AFPM Wade Fife <wade.fife@ettus.com> w=
rote:
>
>> Actually it looks like X410 and X440 use different clocks for the SPI
>> core. Can you confirm which device you saw this on and what master clock
>> rate you're using?
>>
>> For X410 with 200 MHz bandwidth, for example, I think the "Radio_Clk"
>> value you should use in that original equation in the documentation is
>> 245.76 MHz or 250 MHz, depending on your master clock rate. So:
>>
>>     SPI_clk =3D 245.76 MHz / (divider + 1)
>>
>> What value was returned by usrp->get_radio_control()->get_rate()?
>>
>> Wade
>>
>>
>> On Thu, Jun 26, 2025 at 2:41=E2=80=AFPM Wade Fife <wade.fife@ettus.com> =
wrote:
>>
>>> Hi Rob,
>>>
>>> I believe the underlying code that implements this is here:
>>>
>>>
>>> https://github.com/EttusResearch/uhd/blob/c354764c93b49c90be08958f942b9=
bcb7704cbd5/fpga/usrp3/lib/control/simple_spi_core.v#L182
>>>
>>> It looks like the clock is inverted every divider+1 cycles, meaning
>>> divider+1 is half the SPI clock period, not the full period. If so, the
>>> frequency of the SPI clock would actually be (Radio_Clk / (divider + 1)=
) /
>>> 2.
>>>
>>> That seems to agree with what you're seeing? Just to confirm, can you
>>> share the URL for the documentation with this equation?
>>>
>>> Wade
>>>
>>>
>>>
>>> On Wed, Jun 25, 2025 at 4:25=E2=80=AFPM Rob Kossler via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hi,
>>>> The equation in the UHD manual for the X410 SPI clock rate is:
>>>>   SPI_clk =3D Radio_clk / (divider + 1)
>>>> However, I'm seeing half of that rate if I use the function:
>>>>   Radio_clk =3D usrp->get_radio_control()->get_rate();
>>>> Note that this returns the sample rate.  I'm wondering if maybe the
>>>> radio clock rate is half of the sample rate because it processes multi=
ple
>>>> samples per clock cycle.
>>>>
>>>> So, basically, my question is: what function or functions should I cal=
l
>>>> to determine the Radio clock rate needed for the equation above? Or is=
 the
>>>> equation wrong?
>>>>
>>>> Thanks.
>>>> Rob
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>

--000000000000e9ff7606388f2c60
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Rob,</div><div><br></div><div>I don&#39;t know why yo=
u&#39;re seeing that behavior. The radio_clk does actually run at 122.88 MH=
z in your case but the clock driving the SPI controller is twice that rate,=
 so I would expect it to result in SPI_clk =3D 245.76 MHz / (divider + 1).<=
/div><div><br></div><div>Which UHD version are you using?</div><div><br></d=
iv><div>I suggest opening an issue on=C2=A0<a href=3D"https://github.com/Et=
tusResearch/uhd/issues">https://github.com/EttusResearch/uhd/issues</a>. If=
 you can, share your code for configuring the SPI rate and the the oscillos=
cope screen shot.</div><div><br></div><div>Thanks,</div><div><br></div><div=
>Wade</div></div><br><div class=3D"gmail_quote gmail_quote_container"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 26, 2025 at 8:25=E2=80=AFPM Ro=
b Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div dir=3D"ltr">Hi Wade,<div>Thanks for the response. Here are the a=
nswers:</div><div>- <a href=3D"https://files.ettus.com/manual/page_x400_gpi=
o_api.html#x4x0_spi_r_w" target=3D"_blank">here is the URL</a> for the equa=
tion in the UHD manual</div><div>- I am using the X410 with UC_200 FPGA ima=
ge with master clock rate of 245.76 MHz</div><div>- The function usrp-&gt;g=
et_radio_control()-&gt;get_rate() returns 245.76 MHz</div><div>- The SPI cl=
ock as seen on my oscilloscope=C2=A0is half the rate I expect from the equa=
tion if I use 245.76 MHz</div><div>- I wasn&#39;t sure if the factor of 2 w=
as because of the half-cycle issue you mentioned or if it had something to =
do with the radio clock perhaps running=C2=A0at 122.88 MHz with 2 samples p=
er cycle.</div><div><br></div><div>Rob</div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 26, 2025 at 4:37=E2=
=80=AFPM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_bl=
ank">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div>Actually it looks like X410 a=
nd X440 use different clocks for the SPI core. Can you confirm which device=
 you saw this on and what master clock rate you&#39;re using?</div><div><br=
></div><div>For X410 with 200 MHz bandwidth, for example, I think the &quot=
;Radio_Clk&quot; value you should use in that original equation=C2=A0in the=
 documentation is 245.76 MHz or 250 MHz, depending on your master clock rat=
e. So:</div><div><br></div><div>=C2=A0 =C2=A0 SPI_clk =3D 245.76 MHz / (div=
ider + 1)</div><div><br></div><div>What value was returned by usrp-&gt;get_=
radio_control()-&gt;get_rate()?</div><div><br></div><div>Wade</div><div><br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Jun 26, 2025 at 2:41=E2=80=AFPM Wade Fife &lt;<a href=3D"mai=
lto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div>Hi Rob,</div><div><br></div><div>I believe the underlying code tha=
t implements this is here:</div><div><br></div><div><a href=3D"https://gith=
ub.com/EttusResearch/uhd/blob/c354764c93b49c90be08958f942b9bcb7704cbd5/fpga=
/usrp3/lib/control/simple_spi_core.v#L182" target=3D"_blank">https://github=
.com/EttusResearch/uhd/blob/c354764c93b49c90be08958f942b9bcb7704cbd5/fpga/u=
srp3/lib/control/simple_spi_core.v#L182</a></div><div><br></div><div>It loo=
ks like the clock is inverted every divider+1 cycles, meaning divider+1 is =
half the SPI clock period,=C2=A0not the full period. If so, the frequency o=
f the SPI clock would actually be=C2=A0(Radio_Clk / (divider=C2=A0+ 1)) / 2=
.</div><div><br></div><div>That seems to agree with what you&#39;re seeing?=
 Just to confirm, can you share the URL for the documentation with this equ=
ation?</div><div><br></div><div>Wade</div><div><br></div><div><br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Wed, Jun 25, 2025 at 4:25=E2=80=AFPM Rob Kossler via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr">Hi,<br><div>The equation in the UHD manual for the=
 X410 SPI clock rate is:</div><div>=C2=A0 SPI_clk =3D Radio_clk / (divider=
=C2=A0+ 1)</div><div>However, I&#39;m seeing half of that rate if I use the=
 function:</div><div>=C2=A0 Radio_clk =3D usrp-&gt;get_radio_control()-&gt;=
get_rate();</div><div>Note that this returns the sample rate.=C2=A0 I&#39;m=
 wondering if maybe the radio clock rate is half of the sample rate because=
 it processes multiple samples per clock cycle.=C2=A0</div><div><br></div><=
div>So, basically, my question is: what function or functions should I call=
 to determine the Radio clock rate needed for the equation above? Or is the=
 equation wrong?</div><div><br></div><div>Thanks.</div><div>Rob</div><div><=
br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>

--000000000000e9ff7606388f2c60--

--===============7892242767292337646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7892242767292337646==--
