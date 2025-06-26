Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BE8AEA84D
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jun 2025 22:38:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0FE6B38585B
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jun 2025 16:38:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750970335; bh=uqs6ZVd6W3PPnrw4sENofalZfNP/z8UaZPBPQQlcBMI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=yz5zdGZNHYgSmt42CXBfbZEwT6fJabKKPq2b2+tQ0Dcy2048SlNmsvrANpHjlguWl
	 IU9NivCDyAUiyizLNue1txia4vEmwwoBhMxOmqJHVCNRqH36K+5wdgBApUxFUbEhOk
	 1taIi1z9Yrfuld1B/K7p/EixacgHDZgI5ek9ygmxFQnFG4dgFDKp/BC9/HNu6q2+d2
	 TebhqQmitF5drAVakydqabAxOZ1ojx3icEOGq2Xn2+CpQsNyD2E0uaPj4ztEBotBmO
	 gOlxXdcmeZrb4Q3xXPzGATafKc3C/B7Fx4gRmveAwapqEjLgcKNLvTnUEtCEa0P4Fq
	 /nWIwC7tshXWg==
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	by mm2.emwd.com (Postfix) with ESMTPS id E0CB0385E05
	for <usrp-users@lists.ettus.com>; Thu, 26 Jun 2025 16:37:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="hi3WRsd6";
	dkim-atps=neutral
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-70e3c6b88dbso11760827b3.0
        for <usrp-users@lists.ettus.com>; Thu, 26 Jun 2025 13:37:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1750970276; x=1751575076; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jocWeS9zWrThDnHTwd2ZLR17a50GySPYKCBmajt1W+Y=;
        b=hi3WRsd64UbwbzK9tAYpq1MsOTH6KVrVdqJthFolbNM9NWi+XpPwsMWQkGDl3KyL56
         WVn4oul+ry+UH1XvBEIlm/NW8ZpMSMhRy+jct95YaPq7bTx0ZgKnmoKW5Q1cVHZrKxXN
         xS9BlTPd0zapCybV9RCMmN2N+dTQZoXp4HR99i8MPukyB4V7CE7XK3jAwI71sUVJEKFj
         izHq07uJ7e9v2JTJ/Cjd6/WURnC5K5815zYAADCt2PK6WZJ/F8l8l6h6OtMcjgmX3aWP
         aw0UY3Whz5d1Lim2Ikcw8zQ9mCbxjIz72+B+8JU5yifRwOPa5Tg0nTxPl9m0vLD4zzLL
         i8/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750970276; x=1751575076;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jocWeS9zWrThDnHTwd2ZLR17a50GySPYKCBmajt1W+Y=;
        b=mIBrKkbo/JXRiLvZUzfAbe/XYaktbhWw+FR12ee/RMh21h1vqstD67lvJJYDo6NCV2
         AAbqG/RAQ4OpkG/fjEdEFgnqPC5ga793VtBdkeG8GJ4xAdtoJ4zvJps3alESTAVC/qEf
         3p2eoYUE/0wO697hFarJ5b6TXsaMxWc747fs9IwtDECakS3nGkDmVCoSWUAUWizD0Atq
         +0yUZY4FRStcIzB3qM3iBEb6Gy/cg7Ae9/wvMpdlJBfiTww98sEpH4eXd3Q3huTp5l+8
         cY7yBbRnbnB+tByuaJ12ek7UHYZqCQ/iIAiJa1ZvD1aZdhGtfU+wu62azDKZIGf3ddwz
         EiJw==
X-Gm-Message-State: AOJu0YyPBzOchLFKHZuFu5DmtrsmLl+2dztMR7K10bieyWZIRR2MqZ8B
	J5OSTlc6VawNvaIXaqfcIgRJAIbOvw10DQmcqF2ixf3H7B4x2AorwDEdk4vC1akq240vqRWpe1y
	gyKRsj3Ovq6m5VvRWhbSz5IJI61GHKf0qJ7YVvjmS8e9R4w/s9+JvAqFo1g==
X-Gm-Gg: ASbGncvh8b4A91tBhaZNOuX/59ucOhGeGrPoi/kfoTwTHrxFtcGw4SIbW0mKSfFrq35
	j1ABUxIzIlVUFBvmpDSqpB7AoL12gjaZJ9p3ziThqy/e8fSkHVcEZGnHpFOxJJE8kLhYqMssycJ
	XHN6UtQwmszxpJWzsmeh/q4LvDrqo0xugo86DN+Zvq
X-Google-Smtp-Source: AGHT+IHPms4xjwO5EcA2WF8ZX2oQGa+GUqqCpU+KU/sDyBygxTiH6SONZ1Krtp5nxNG3OcwEdkW74nkktlGlsiBCIWE=
X-Received: by 2002:a05:690c:368e:b0:711:406f:7735 with SMTP id
 00721157ae682-71517160b01mr13175007b3.13.1750970276327; Thu, 26 Jun 2025
 13:37:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQB0JjEKNk0=SFDREonEeCVavhWpUR_-hcwy0-adDv8Cg@mail.gmail.com>
 <CAFche=gdLTvuw1RpWzDDRyN=AvW=hDAKtcSMcxCNbFeB0o_MaQ@mail.gmail.com>
In-Reply-To: <CAFche=gdLTvuw1RpWzDDRyN=AvW=hDAKtcSMcxCNbFeB0o_MaQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 26 Jun 2025 15:37:40 -0500
X-Gm-Features: Ac12FXw1a7eiYnlffo3zMaNRahu4B1OWjSgP-VUREpeYa_qYBLJt0TlW1V9bZ3c
Message-ID: <CAFche=gc8kd2E=ZRODAzCuYkWbUmzqSitXV=tLkU9_+Ym+_PAg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: PVGSDO3B52MPZOCXPZI6XVOHPTN562VI
X-Message-ID-Hash: PVGSDO3B52MPZOCXPZI6XVOHPTN562VI
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 SPI clock rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PVGSDO3B52MPZOCXPZI6XVOHPTN562VI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4609093227215511387=="

--===============4609093227215511387==
Content-Type: multipart/alternative; boundary="0000000000005543c806387f89a0"

--0000000000005543c806387f89a0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Actually it looks like X410 and X440 use different clocks for the SPI core.
Can you confirm which device you saw this on and what master clock rate
you're using?

For X410 with 200 MHz bandwidth, for example, I think the "Radio_Clk" value
you should use in that original equation in the documentation is 245.76 MHz
or 250 MHz, depending on your master clock rate. So:

    SPI_clk =3D 245.76 MHz / (divider + 1)

What value was returned by usrp->get_radio_control()->get_rate()?

Wade


On Thu, Jun 26, 2025 at 2:41=E2=80=AFPM Wade Fife <wade.fife@ettus.com> wro=
te:

> Hi Rob,
>
> I believe the underlying code that implements this is here:
>
>
> https://github.com/EttusResearch/uhd/blob/c354764c93b49c90be08958f942b9bc=
b7704cbd5/fpga/usrp3/lib/control/simple_spi_core.v#L182
>
> It looks like the clock is inverted every divider+1 cycles, meaning
> divider+1 is half the SPI clock period, not the full period. If so, the
> frequency of the SPI clock would actually be (Radio_Clk / (divider + 1)) =
/
> 2.
>
> That seems to agree with what you're seeing? Just to confirm, can you
> share the URL for the documentation with this equation?
>
> Wade
>
>
>
> On Wed, Jun 25, 2025 at 4:25=E2=80=AFPM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> The equation in the UHD manual for the X410 SPI clock rate is:
>>   SPI_clk =3D Radio_clk / (divider + 1)
>> However, I'm seeing half of that rate if I use the function:
>>   Radio_clk =3D usrp->get_radio_control()->get_rate();
>> Note that this returns the sample rate.  I'm wondering if maybe the radi=
o
>> clock rate is half of the sample rate because it processes multiple samp=
les
>> per clock cycle.
>>
>> So, basically, my question is: what function or functions should I call
>> to determine the Radio clock rate needed for the equation above? Or is t=
he
>> equation wrong?
>>
>> Thanks.
>> Rob
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000005543c806387f89a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Actually it looks like X410 and X440 use different cl=
ocks for the SPI core. Can you confirm which device you saw this on and wha=
t master clock rate you&#39;re using?</div><div><br></div><div>For X410 wit=
h 200 MHz bandwidth, for example, I think the &quot;Radio_Clk&quot; value y=
ou should use in that original equation=C2=A0in the documentation is 245.76=
 MHz or 250 MHz, depending on your master clock rate. So:</div><div><br></d=
iv><div>=C2=A0 =C2=A0 SPI_clk =3D 245.76 MHz / (divider + 1)</div><div><br>=
</div><div>What value was returned by usrp-&gt;get_radio_control()-&gt;get_=
rate()?</div><div><br></div><div>Wade</div><div><br></div></div><br><div cl=
ass=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Thu, Jun 26, 2025 at 2:41=E2=80=AFPM Wade Fife &lt;<a href=3D"mailt=
o:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Rob,</di=
v><div><br></div><div>I believe the underlying code that implements this is=
 here:</div><div><br></div><div><a href=3D"https://github.com/EttusResearch=
/uhd/blob/c354764c93b49c90be08958f942b9bcb7704cbd5/fpga/usrp3/lib/control/s=
imple_spi_core.v#L182" target=3D"_blank">https://github.com/EttusResearch/u=
hd/blob/c354764c93b49c90be08958f942b9bcb7704cbd5/fpga/usrp3/lib/control/sim=
ple_spi_core.v#L182</a></div><div><br></div><div>It looks like the clock is=
 inverted every divider+1 cycles, meaning divider+1 is half the SPI clock p=
eriod,=C2=A0not the full period. If so, the frequency of the SPI clock woul=
d actually be=C2=A0(Radio_Clk / (divider=C2=A0+ 1)) / 2.</div><div><br></di=
v><div>That seems to agree with what you&#39;re seeing? Just to confirm, ca=
n you share the URL for the documentation with this equation?</div><div><br=
></div><div>Wade</div><div><br></div><div><br></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 25, 2025 at=
 4:25=E2=80=AFPM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr">Hi,<br><div>The equation in the UHD manual for the X410 SPI clock rate=
 is:</div><div>=C2=A0 SPI_clk =3D Radio_clk / (divider=C2=A0+ 1)</div><div>=
However, I&#39;m seeing half of that rate if I use the function:</div><div>=
=C2=A0 Radio_clk =3D usrp-&gt;get_radio_control()-&gt;get_rate();</div><div=
>Note that this returns the sample rate.=C2=A0 I&#39;m wondering if maybe t=
he radio clock rate is half of the sample rate because it processes multipl=
e samples per clock cycle.=C2=A0</div><div><br></div><div>So, basically, my=
 question is: what function or functions should I call to determine the Rad=
io clock rate needed for the equation above? Or is the equation wrong?</div=
><div><br></div><div>Thanks.</div><div>Rob</div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000005543c806387f89a0--

--===============4609093227215511387==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4609093227215511387==--
