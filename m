Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E7EAEAC4F
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jun 2025 03:26:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C7B28385FC3
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jun 2025 21:26:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750987581; bh=Uwaqe8qjIKOh9siue5u/OV8qEMnnKrbEY7u3zxU/GVA=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=PYM0PITsLMatpSpDC9JFOj6a5fc9hZMj8tVaptXkSIusbLXZdZ9qhLJasMxE2R+3g
	 o4aKsuuB6ZUWD3YQTTcjpgDEVloYbG9gpXOgLb3L4i5McfLBcgWjd16EPL4pw8cj3a
	 OU8jNLEY9z0M3Gk4Avm+7WlAQCD1jT3uM539iGTLxmwt/ut9Ntd/CoJ99k6KSxOvYG
	 nzEEkGHax6qzuSYuwETj+keleQQlS6RE6B56bcxmlFcjDOh0SHuAecKoMEPxn/c6rF
	 B0m8+DE3bInYrI2RBiP1gkUukddrEhWsL56SUMp82tb0lduHGpku3RD/K3KXFKrhZo
	 hwfq9t4lPfazA==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id BD248385D55
	for <usrp-users@lists.ettus.com>; Thu, 26 Jun 2025 21:25:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="bThMOUIi";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ae0a0cd709bso544534666b.0
        for <usrp-users@lists.ettus.com>; Thu, 26 Jun 2025 18:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1750987521; x=1751592321; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BHoq1rIpz68j/0eYSDp5yCTT/UEFMbFgsIhnJLKqslQ=;
        b=bThMOUIiRE/hpLty06FXrWTFm13xyG8a3B6pLNHllXxhzZe7asfBQUYqr8KNsuCP5e
         AYPKY5l3BTDF3Slzmumzvspr5ja52E+A3cOLFVp+LrHnqrtSEIVyjmL7JlGIg5VorZWn
         penIkQmeDwdKTt7lNTlLE6o9vGcE7Vd8dPQffXy0PFEQbihQBBD6ymx8d6LTzFLe0NjH
         3/5+mxhS2mUd2R12nSQQUIIJambsKArgO/Up1qk2B0WaCD5/2WpAMHeNJu6qIEKin3J/
         APGYT1Mqy4Q+OKuSl3P/vl7hUqb4dlkXZOnj/zYn4wDHv/P1Nffh3Z2ZFHoe7Q9Kd4a2
         F+EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750987521; x=1751592321;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BHoq1rIpz68j/0eYSDp5yCTT/UEFMbFgsIhnJLKqslQ=;
        b=FJEZCFd7LdqumezJydDz1Y05n9xLbDqbwiQQBtzt2CKGgQpW4QYOJLQrEp2mAtuo08
         twhJmVlzkRbKM4BcZ7c1SIyKVH2n4ue3lDRi5XA0HPnejzVXWUUYcoihzwIeph9ceQZS
         HphuqzNqKQ54E0wAYVDpi88DvDPohYGgh0m+wIrhCetE54pcKrEXpPAJT0qp1zQHSJqs
         E4vrVsoIVHe23vApQUZWbpX6mL77xXud+osxtHeKBvjCBFjtxN1fD+etBVZWnBx1mmk3
         aukyiec0MeCZ88AEAfzSh6H3QHQnyNBfqFoc0cutDc+RlI2DUwdDuLLJb2bzic3aGKkI
         p79A==
X-Gm-Message-State: AOJu0Ywsj0b24OAtSVRhSVxkg9jLUntG/jOvAY4nii9YknsRY5/LPGFZ
	LfcxWFy5A3b9rlMey9cxNfBKhBJ+FUVpdypcBAxu3MQDa4hR2yAoQJX55a846BAat734sBlIGTk
	pNkGgwMzDbKbuRQ7ZQj/7XhTHy6s0geFmUoq1TgJN
X-Gm-Gg: ASbGncuyjVfpYuOpqcVUcPi2fVtPi7rzl3jpFx1IvEZnY3VPJMuT5LyMfJzyAHIq0No
	cTvGEa1LWSHeMghZtbARB79dyP5yIdZ7v1ei+2Tjh4q/G73FgiuPPQg3usXIRKldtPzpd8uPDoP
	Rg1wUj5bsXnp+UM8QrrtDLq10ysMxsHbD3cKewweNj
X-Google-Smtp-Source: AGHT+IE36hpJ9ooQAzvNkbPZYQ7cId9trC7g49n95/LaAoBvd9MmIIq7nEQXCz6bYTinmxxzSGdYaZ4vR6EVRun7w7E=
X-Received: by 2002:a17:907:96a1:b0:ae0:1356:5346 with SMTP id
 a640c23a62f3a-ae0d29975d1mr600530266b.30.1750987521432; Thu, 26 Jun 2025
 18:25:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQB0JjEKNk0=SFDREonEeCVavhWpUR_-hcwy0-adDv8Cg@mail.gmail.com>
 <CAFche=gdLTvuw1RpWzDDRyN=AvW=hDAKtcSMcxCNbFeB0o_MaQ@mail.gmail.com> <CAFche=gc8kd2E=ZRODAzCuYkWbUmzqSitXV=tLkU9_+Ym+_PAg@mail.gmail.com>
In-Reply-To: <CAFche=gc8kd2E=ZRODAzCuYkWbUmzqSitXV=tLkU9_+Ym+_PAg@mail.gmail.com>
Date: Thu, 26 Jun 2025 21:25:10 -0400
X-Gm-Features: Ac12FXzTyyd-wZrogSGDYng6fbQdsZ9lgIDTRVhigvG_Xt1SR19W805elp5O1tM
Message-ID: <CAB__hTSdEqtW=bHThXMt_DU5jdxbG3qaKmpgTxxYdrZ8QG-sfQ@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: GSNELIZW2TLWNZZQ56F3XK5CBGDSB3DD
X-Message-ID-Hash: GSNELIZW2TLWNZZQ56F3XK5CBGDSB3DD
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 SPI clock rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GSNELIZW2TLWNZZQ56F3XK5CBGDSB3DD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5713471723776944060=="

--===============5713471723776944060==
Content-Type: multipart/alternative; boundary="00000000000038b9b00638838d34"

--00000000000038b9b00638838d34
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Wade,
Thanks for the response. Here are the answers:
- here is the URL
<https://files.ettus.com/manual/page_x400_gpio_api.html#x4x0_spi_r_w> for
the equation in the UHD manual
- I am using the X410 with UC_200 FPGA image with master clock rate of
245.76 MHz
- The function usrp->get_radio_control()->get_rate() returns 245.76 MHz
- The SPI clock as seen on my oscilloscope is half the rate I expect from
the equation if I use 245.76 MHz
- I wasn't sure if the factor of 2 was because of the half-cycle issue you
mentioned or if it had something to do with the radio clock perhaps
running at 122.88 MHz with 2 samples per cycle.

Rob

On Thu, Jun 26, 2025 at 4:37=E2=80=AFPM Wade Fife <wade.fife@ettus.com> wro=
te:

> Actually it looks like X410 and X440 use different clocks for the SPI
> core. Can you confirm which device you saw this on and what master clock
> rate you're using?
>
> For X410 with 200 MHz bandwidth, for example, I think the "Radio_Clk"
> value you should use in that original equation in the documentation is
> 245.76 MHz or 250 MHz, depending on your master clock rate. So:
>
>     SPI_clk =3D 245.76 MHz / (divider + 1)
>
> What value was returned by usrp->get_radio_control()->get_rate()?
>
> Wade
>
>
> On Thu, Jun 26, 2025 at 2:41=E2=80=AFPM Wade Fife <wade.fife@ettus.com> w=
rote:
>
>> Hi Rob,
>>
>> I believe the underlying code that implements this is here:
>>
>>
>> https://github.com/EttusResearch/uhd/blob/c354764c93b49c90be08958f942b9b=
cb7704cbd5/fpga/usrp3/lib/control/simple_spi_core.v#L182
>>
>> It looks like the clock is inverted every divider+1 cycles, meaning
>> divider+1 is half the SPI clock period, not the full period. If so, the
>> frequency of the SPI clock would actually be (Radio_Clk / (divider + 1))=
 /
>> 2.
>>
>> That seems to agree with what you're seeing? Just to confirm, can you
>> share the URL for the documentation with this equation?
>>
>> Wade
>>
>>
>>
>> On Wed, Jun 25, 2025 at 4:25=E2=80=AFPM Rob Kossler via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi,
>>> The equation in the UHD manual for the X410 SPI clock rate is:
>>>   SPI_clk =3D Radio_clk / (divider + 1)
>>> However, I'm seeing half of that rate if I use the function:
>>>   Radio_clk =3D usrp->get_radio_control()->get_rate();
>>> Note that this returns the sample rate.  I'm wondering if maybe the
>>> radio clock rate is half of the sample rate because it processes multip=
le
>>> samples per clock cycle.
>>>
>>> So, basically, my question is: what function or functions should I call
>>> to determine the Radio clock rate needed for the equation above? Or is =
the
>>> equation wrong?
>>>
>>> Thanks.
>>> Rob
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--00000000000038b9b00638838d34
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Wade,<div>Thanks for the response. Her=
e are the answers:</div><div>- <a href=3D"https://files.ettus.com/manual/pa=
ge_x400_gpio_api.html#x4x0_spi_r_w">here is the URL</a> for the equation in=
 the UHD manual</div><div>- I am using the X410 with UC_200 FPGA image with=
 master clock rate of 245.76 MHz</div><div>- The function usrp-&gt;get_radi=
o_control()-&gt;get_rate() returns 245.76 MHz</div><div>- The SPI clock as =
seen on my oscilloscope=C2=A0is half the rate I expect from the equation if=
 I use 245.76 MHz</div><div>- I wasn&#39;t sure if the factor of 2 was beca=
use of the half-cycle issue you mentioned or if it had something to do with=
 the radio clock perhaps running=C2=A0at 122.88 MHz with 2 samples per cycl=
e.</div><div><br></div><div>Rob</div></div><br><div class=3D"gmail_quote gm=
ail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 26, =
2025 at 4:37=E2=80=AFPM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com=
">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div>Actually it looks like X410 and =
X440 use different clocks for the SPI core. Can you confirm which device yo=
u saw this on and what master clock rate you&#39;re using?</div><div><br></=
div><div>For X410 with 200 MHz bandwidth, for example, I think the &quot;Ra=
dio_Clk&quot; value you should use in that original equation=C2=A0in the do=
cumentation is 245.76 MHz or 250 MHz, depending on your master clock rate. =
So:</div><div><br></div><div>=C2=A0 =C2=A0 SPI_clk =3D 245.76 MHz / (divide=
r + 1)</div><div><br></div><div>What value was returned by usrp-&gt;get_rad=
io_control()-&gt;get_rate()?</div><div><br></div><div>Wade</div><div><br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Thu, Jun 26, 2025 at 2:41=E2=80=AFPM Wade Fife &lt;<a href=3D"mailto=
:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div>Hi Rob,</div><div><br></div><div>I believe the underlying code that i=
mplements this is here:</div><div><br></div><div><a href=3D"https://github.=
com/EttusResearch/uhd/blob/c354764c93b49c90be08958f942b9bcb7704cbd5/fpga/us=
rp3/lib/control/simple_spi_core.v#L182" target=3D"_blank">https://github.co=
m/EttusResearch/uhd/blob/c354764c93b49c90be08958f942b9bcb7704cbd5/fpga/usrp=
3/lib/control/simple_spi_core.v#L182</a></div><div><br></div><div>It looks =
like the clock is inverted every divider+1 cycles, meaning divider+1 is hal=
f the SPI clock period,=C2=A0not the full period. If so, the frequency of t=
he SPI clock would actually be=C2=A0(Radio_Clk / (divider=C2=A0+ 1)) / 2.</=
div><div><br></div><div>That seems to agree with what you&#39;re seeing? Ju=
st to confirm, can you share the URL for the documentation with this equati=
on?</div><div><br></div><div>Wade</div><div><br></div><div><br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed=
, Jun 25, 2025 at 4:25=E2=80=AFPM Rob Kossler via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr">Hi,<br><div>The equation in the UHD manual for the X4=
10 SPI clock rate is:</div><div>=C2=A0 SPI_clk =3D Radio_clk / (divider=C2=
=A0+ 1)</div><div>However, I&#39;m seeing half of that rate if I use the fu=
nction:</div><div>=C2=A0 Radio_clk =3D usrp-&gt;get_radio_control()-&gt;get=
_rate();</div><div>Note that this returns the sample rate.=C2=A0 I&#39;m wo=
ndering if maybe the radio clock rate is half of the sample rate because it=
 processes multiple samples per clock cycle.=C2=A0</div><div><br></div><div=
>So, basically, my question is: what function or functions should I call to=
 determine the Radio clock rate needed for the equation above? Or is the eq=
uation wrong?</div><div><br></div><div>Thanks.</div><div>Rob</div><div><br>=
</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>

--00000000000038b9b00638838d34--

--===============5713471723776944060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5713471723776944060==--
