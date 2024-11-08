Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6AC9C17F6
	for <lists+usrp-users@lfdr.de>; Fri,  8 Nov 2024 09:30:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E5A22386581
	for <lists+usrp-users@lfdr.de>; Fri,  8 Nov 2024 03:30:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731054642; bh=yem6yu11kXcaWxephoW03A1yVICwT3b2iM57rFfXEho=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=RpOGcVZLQk9XgiQy/1xRX7BrJ8aMMTesjZBwsuhtIQPG1cjzIvdeMrfu+BY1I3ZIM
	 6Tdf1RpH7yQfercoWtsDUoqO1eXuI8QPcCpPW5kxUaRXLkPDfHSlO9pNRbL9kb9TaU
	 omA5IT3C3EfbYNX3uI0vqsrbmN7noVnIxmhyx1D0kRLlYNMC6Go5SgSWVdSUmkZF3z
	 802BzRQUoVlbJC1OAgmvRvB8niHT40qgfOdSOqVT7kDSLrba/gxAocjqPFB+xMuYKq
	 XkCBINSzmriAGGXBv9jPW4Ah1LTa7CvGOd0r+ZIMaBfTwBx5LLTeI4ibqE2GfbliYp
	 kCaCjkBvchk1A==
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 95850385EC5
	for <usrp-users@lists.ettus.com>; Fri,  8 Nov 2024 03:29:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cWGB5XVJ";
	dkim-atps=neutral
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53b13ea6b78so2858096e87.2
        for <usrp-users@lists.ettus.com>; Fri, 08 Nov 2024 00:29:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731054596; x=1731659396; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vX3orKM31zf0Ou22tYeZB7H4Efx3jWkJZGEMKZUX7xI=;
        b=cWGB5XVJsH1ucjRZB0u56X8LF02QyLPw0rf4B+ArEAF6h1uBW0Rx3tH+KRWAv3o2k2
         6ZnLP2fh4mA03S+utesYNCgA4z5am7vQbxjk4PKQytrxIofwRFZ9b0MToQdYsHLr5Dxo
         S0MI6kWwAYSpD7alyXmAZT3EqCujeb8eRuEkRe8vc64h004IRNCFPJ7jo+dBsqVEmgqq
         cZtSgdK7OnklQncuJ7Bk7zCYQCNLUZiYhjsJPmk4NB2yRoQ7DMTFLC1M/mmNalmSggo6
         YspmKualtx3p8Z2K1y9q/2aqpwfzIlEEwHzrPgf6snuUYh4tWXHuBu3xgYEl+vPVX+pi
         BG6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731054596; x=1731659396;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vX3orKM31zf0Ou22tYeZB7H4Efx3jWkJZGEMKZUX7xI=;
        b=eKc71dZAaA/fuDvFRFr0SpwZKK4TvTFtrFPKx1AtrwmNi/3uDuMDRAGfS8b/tCHpqu
         oG0cJmaJ5XBUT5omJ8xsKKUXeOPE9PDCUkBInbSKW0MrAFQwySEY/HJE7xx+RZ9/rZaA
         oGBnj5YT30Vr5tzqBXrhT/cii1gISMS1lkVgYXY2CWhgQzqITO8lKL9ny0edAJs0G95Z
         CZXGNy81MPPmf0trz5jYQaFglXISM1JRn1OagHtAPQppq1DAB/sAss9pqMh84NMbCU6y
         kDpsFawGsxFY9iA2jDGG0NwpjvipQiExWWrfRi0rVE/1HNVi3Mn1o1Vl3xmmDe/2bZrF
         G0AA==
X-Gm-Message-State: AOJu0Yye+RdV7FAc9hWNp8W6TvoF+m9uv5yvWTiQWl1Ap3rJdiQ4KPzs
	PPwJVE352CoB+uqvtnXrRy8ezXBs6HkJ1caLs5iG2WVPRvMEu5RF3/adoxAOGHO2aSOKSDmhO/+
	n5XIiAiyBiNRzlHNMea9T3bf94ywAaw==
X-Google-Smtp-Source: AGHT+IFi2HWnahJCnH/4WHtfBWN/osNUuoES0DmS2DNfoJzGASRtZUfA9eMcvIaAikfFw4HjYgHwusy4fND6UnbLHd8=
X-Received: by 2002:a05:6512:3d0d:b0:53b:163a:f279 with SMTP id
 2adb3069b0e04-53d862f8187mr1541993e87.53.1731054595880; Fri, 08 Nov 2024
 00:29:55 -0800 (PST)
MIME-Version: 1.0
References: <evJJismGX8FnN2oBEQQb16M8vEYufO5U0vQHxU0E@lists.ettus.com>
 <CAFOi1A6xauBJvN5oEFThU4+rKZ13b-VPHWVn0hqUGLrmUxTPXw@mail.gmail.com>
 <CABL+oDb6zODNZ-Bpb8ejRVkXMr4=ENDd966FPE2NN0=tAa9QXw@mail.gmail.com> <CAFOi1A7=4feXWdiPfuxA7aX5yF0=_3kAGzDNv1ugtB3SXJUb7A@mail.gmail.com>
In-Reply-To: <CAFOi1A7=4feXWdiPfuxA7aX5yF0=_3kAGzDNv1ugtB3SXJUb7A@mail.gmail.com>
From: Mark Gannet <mgannet@gmail.com>
Date: Fri, 8 Nov 2024 00:29:44 -0800
Message-ID: <CABL+oDZ_SoW8g9ZkCmygMNZCi66JfSN8QMN3NmgdR1oYeo6hpw@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: P2OKGG2I3XQPHU23NSLYVM6SSW26SBGM
X-Message-ID-Hash: P2OKGG2I3XQPHU23NSLYVM6SSW26SBGM
X-MailFrom: mgannet@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Asynchronous IO in RFNOC on x310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P2OKGG2I3XQPHU23NSLYVM6SSW26SBGM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1654579247122895825=="

--===============1654579247122895825==
Content-Type: multipart/alternative; boundary="00000000000046426d0626628e6a"

--00000000000046426d0626628e6a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thank you. You've been very helpful and confirmed my thoughts.

Yes it will be important to run the sampling of the GPIO pin at the same
rate produced by the DDC. I didn't fully appreciate that the data was
packetized which makes this more difficult than I'd thought.

Re: your thoughts
- if you have a way to violate sampling theorem and faithfully reproduce
signals, you won't have to answer any more emails :)
- I'm keeping my block in the data path for 2 reasons: 1) I want it to
produce data that matches the timestamp and total bytes of the other
channel for the collection period and 2) I want to use the control plane to
allow the user to select the standard data flow from the DDC if desired
without requiring a different fpga image.
- Initially I'll probably hardcode the divide of the radio clock. The end
goal will be to use the control plane to pass the decimation factor to a
counter so that the divide can adjust depending on the sampling rate.

Mark




On Thu, Nov 7, 2024, 5:06=E2=80=AFAM Martin Braun <martin.braun@ettus.com> =
wrote:

> Hey Mark,
>
> OK, I get it, you're basically sampling a GPIO pin instead of using the
> analog data. And of course, you have to stick to the sampling theorem if
> you want to do that, and you're seeing what happens if you violate it.
>
> I'm guessing it's important that you run at a clock that's related to you=
r
> radio/data clock, so you can match the GPIO pin levels in time to the
> samples you're receiving on the other channel, right?
>
> Some thoughts:
>
> - I have no solution for violating the sampling theorem and not getting
> punished :)
> - In RFNoC, you don't really need to put your RFNoC block in the data
> path. You could have a separate source block that just forwards the
> GPIO-data.
> - And yes, you want that GPIO-sampling to occur with a sensible clock of
> your own. You could use radio_clk, or divide that.
>
> Not sure if this is helpful.
>
> --M
>
> On Wed, Nov 6, 2024 at 7:45=E2=80=AFPM Mark Gannet <mgannet@gmail.com> wr=
ote:
>
>> Hi Martin,
>>
>> Sorry I should've elaborated on my purpose.
>>
>> I'm using a device to connect external TTL signals to the RxBasic
>> daughterboard GPIO pins on chA of the x310.  I'm stealing an analog chan=
nel
>> on the x310 to capture timing on one channel with the analog input on th=
e
>> 2nd channel.  This data is recorded on the host PC from the 10 GbE
>> interface.  I've made an application based on the rx_samples_to_file
>> utility that sets the daughterboard RX GPIO banks appropriately and I ca=
n
>> see the GPIO inputs in the Ethernet capture from my utility in the recor=
ded
>> binary files (chA and chB).
>>
>> Assuming a 1 MSps sample rate from the DDC and 64 samples/packet, the
>> rate on the axis rfnoc bus is 15.625 kHz (64 us period).  The problems
>> arise when the rate on the GPIO pin roughly exceeds half the packet rate=
 on
>> the axis data plane.  Basically it gets aliased.  Here are the lines fro=
m
>> the HDL file in my block that sits between the DDC and the SEP.  I creat=
ed
>> a testbench as well and placed a clock on a GPIO input to see what is
>> happening.  Also created/loaded an image to x310 and observed in the
>> Ethernet output, which confirmed what I see in the testbench.
>>
>> assign s_out_axis_tdata =3D { 16'b0, radio_rx_gpio[15:0] };
>> assign s_out_axis_tlast =3D m_in_axis_tlast;
>> assign s_out_axis_tvalid =3D m_in_axis_tvalid;
>> assign s_out_axis_tlength =3D m_in_axis_tlength;
>> assign s_out_axis_ttimestamp =3D m_in_axis_ttimestamp;
>> assign s_out_axis_thas_time =3D m_in_axis_thas_time;
>> assign s_out_axis_tlength =3D m_in_axis_tlength;
>> assign s_out_axis_teov =3D m_in_axis_teov;
>> assign s_out_axis_teob =3D m_in_axis_teob;
>> assign m_in_axis_tready =3D s_out_axis_tready;
>>
>> assign s_out_axis_tkeep =3D {NUM_PORTS{1'b1}};
>>
>> Here are the lines from the image core yaml that show how the block is
>> connected.
>>
>> # # radio0(0) to ep0 - RFA RX
>> - { srcblk: radio0, srcport: out_0, dstblk: ddc0, dstport: in_0 }
>> - { srcblk: ddc0, srcport: out_0, dstblk: rx_analog_dio_sw0, dstport:
>> in_0 }
>> - { srcblk: rx_analog_dio_sw0, srcport: out_0, dstblk: ep0, dstport: in0
>> }
>>
>> As a side note, this worked in UHD 3.9.  But that seemed entirely
>> different.  The DDC was a submodule of the Radio block.  The output of t=
he
>> DDC was not packetized on the axis protocol at that point.  So it was
>> straightforward to assign the GPIO pins and then the packetization took
>> place later.  In UHD 4.x, the data from the DDC is packetized onto the a=
xis
>> data plane already.
>>
>> My thought right now is that I need to clock the GPIO pins into a generi=
c
>> FIFO at the DDC rate with my own clock, connect that to the NOC shell an=
d
>> let the NOC shell unload the FIFO when the axis data plane is ready.  Do=
es
>> this seem like a path forward?  I'm glossing over a ton of the intricaci=
es
>> and making it sound trivial.  Feel free to destroy my plan.
>>
>> Hopefully this makes my intent a little clearer.
>>
>> Thanks you,
>> Mark
>>
>>
>> On Wed, Nov 6, 2024 at 1:07=E2=80=AFAM Martin Braun <martin.braun@ettus.=
com>
>> wrote:
>>
>>> Hey Mark,
>>>
>>> maybe I'm being dense, but I don't understand what it is that your GPIO
>>> pins are supposed to be doing when your system is done. Can you elabora=
te?
>>>
>>> --M
>>>
>>> On Wed, Nov 6, 2024 at 1:56=E2=80=AFAM <mgannet@gmail.com> wrote:
>>>
>>>> Hi everybody!
>>>>
>>>> I=E2=80=99ve written an RFNOC block that assigns the daughterboard rx =
GPIO pins
>>>> to the tdata signals that are sent to the SEP. I=E2=80=99m using the a=
xis_data
>>>> protocol and the block is placed statically between the DDC and the SE=
P. I
>>>> use the tvalid and tlast signal from the upstream (DDC) block and the
>>>> tready signal from the downstream (SEP) block. I brought the GPIO into=
 the
>>>> block using appropriate YAML files. Small modification outside of RFNO=
C
>>>> were required to get the pins to RFNOC (bus_int.v, x300_core.v,
>>>> io_signatures.yml, and x310_bsp.yml).
>>>>
>>>> The x310 is operated at 1 Msps and there are 64 samples per CHDR packe=
t
>>>> on the axis data bus. This means that the packet rate on the bus is 1 =
Msps
>>>> / 64, or 15.625 kHz. Period is 64 us.
>>>>
>>>> If I place a signal onto the GPIO pin, everything is fine as long as
>>>> the pulse width is greater than 64 us. I can run the radio with
>>>> rx_samples_to_file and see the GPIO pins faithfully reproduced in the
>>>> Ethernet output collected on a PC.
>>>>
>>>> At pulse widths less than 64 us, the signal is essentially aliased. I
>>>> believe it=E2=80=99s because I=E2=80=99m using the tvalid, tlast, and =
tready signals from
>>>> upstream/downstream blocks with data that=E2=80=99s already on the axi=
s data plane.
>>>> That data bursts through with 64 samples roughly every 64 us and is cl=
ocked
>>>> with a 200 MHz master clock. I need to clock in the asynchronous GPIO.
>>>>
>>>> My question: What is the best way to do this? Generate my own clock an=
d
>>>> use a generic FIFO like axi_fifo.v to hold the data until the upstream
>>>> block sends its data and the downstream block is ready to receive?
>>>>
>>>> Thank you,
>>>>
>>>> Mark
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000046426d0626628e6a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto">Hi Marcus,</div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">Thank you. You&#39;ve been very helpful and confirme=
d my thoughts.</div><div dir=3D"auto"><br></div><div>Yes it will be importa=
nt to run the sampling of the GPIO pin at the same rate produced by the DDC=
. I didn&#39;t fully appreciate that the data was packetized which makes th=
is more difficult than I&#39;d thought.</div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">Re: your thoughts</div><div dir=3D"auto">- if you have a wa=
y to violate sampling theorem and faithfully reproduce signals, you won&#39=
;t have to answer any more emails :)</div><div dir=3D"auto">- I&#39;m keepi=
ng my block in the data path for 2 reasons: 1) I want it to produce data th=
at matches the timestamp and total bytes of the other channel for the colle=
ction period and 2) I want to use the control plane to allow the user to se=
lect the standard data flow from the DDC if desired without requiring a dif=
ferent fpga image.</div><div dir=3D"auto">- Initially I&#39;ll probably har=
dcode the divide of the radio clock. The end goal will be to use the contro=
l plane to pass the decimation factor to a counter so that the divide can a=
djust depending on the sampling rate.</div><div dir=3D"auto"><br></div><div=
 dir=3D"auto">Mark</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br><=
/div><div dir=3D"auto"><br></div><div dir=3D"auto"><br><div class=3D"gmail_=
quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 7, 20=
24, 5:06=E2=80=AFAM Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.c=
om" target=3D"_blank" rel=3D"noreferrer">martin.braun@ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Hey Mark,=
</div><div><br></div><div>OK, I get it, you&#39;re basically sampling a GPI=
O pin instead of using the analog data. And of course, you have to stick to=
 the sampling theorem if you want to do that, and you&#39;re seeing what ha=
ppens if you violate it.</div><div><br></div><div>I&#39;m guessing it&#39;s=
 important that you run at a clock that&#39;s related to your radio/data cl=
ock, so you can match the GPIO pin levels in time to the samples you&#39;re=
 receiving on the other channel, right?</div><div><br></div><div>Some thoug=
hts:</div><div><br></div><div>- I have no solution for violating the sampli=
ng theorem and not getting punished :)</div><div>- In RFNoC, you don&#39;t =
really need to put your RFNoC block in the data path. You could have a sepa=
rate source block that just forwards the GPIO-data.</div><div>- And yes, yo=
u want that GPIO-sampling to occur with a sensible clock of your own. You c=
ould use radio_clk, or divide that.</div><div><br></div><div>Not sure if th=
is is helpful.</div><div><br></div><div>--M<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 6, 2024 =
at 7:45=E2=80=AFPM Mark Gannet &lt;<a href=3D"mailto:mgannet@gmail.com" rel=
=3D"noreferrer noreferrer" target=3D"_blank">mgannet@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div>Hi Martin,</div><div><br></div><div>Sorry I should&#39;ve elaborat=
ed on my purpose.</div><div><br></div><div>I&#39;m using a device to connec=
t external TTL signals to the RxBasic daughterboard GPIO pins on chA of the=
 x310.=C2=A0 I&#39;m stealing an analog channel on the x310 to capture timi=
ng on one channel with the analog input on the 2nd channel.=C2=A0 This data=
 is recorded on the host PC from the 10 GbE interface.=C2=A0 I&#39;ve made =
an application based on the rx_samples_to_file utility that sets the daught=
erboard RX GPIO banks appropriately and I can see the GPIO inputs in the Et=
hernet capture from my utility in the recorded binary files (chA and chB).<=
/div><div><br></div><div>Assuming a 1 MSps sample rate from the DDC and 64 =
samples/packet, the rate on the axis rfnoc bus is 15.625 kHz (64 us period)=
.=C2=A0 The problems arise when the rate on the GPIO pin roughly exceeds ha=
lf the packet rate on the axis data plane.=C2=A0 Basically it gets aliased.=
=C2=A0 Here are the lines from the HDL file in my block that sits between t=
he DDC and the SEP.=C2=A0 I created a testbench as well and placed a clock =
on a GPIO input to see what is happening.=C2=A0 Also created/loaded an imag=
e to x310 and observed in the Ethernet output, which confirmed what I see i=
n the testbench.<br></div><div><br></div><div><div style=3D"color:rgb(204,2=
04,204);background-color:rgb(31,31,31);font-family:&quot;Droid Sans Mono&qu=
ot;,&quot;monospace&quot;,monospace;font-weight:normal;font-size:14px;line-=
height:19px;white-space:pre-wrap"><div><span style=3D"color:rgb(204,204,204=
)">  </span><span style=3D"color:rgb(86,156,214)">assign</span><span style=
=3D"color:rgb(204,204,204)"> s_out_axis_tdata      </span><span style=3D"co=
lor:rgb(212,212,212)">=3D</span><span style=3D"color:rgb(204,204,204)"> { <=
/span><span style=3D"color:rgb(181,206,168)">16&#39;b0</span><span style=3D=
"color:rgb(204,204,204)">, radio_rx_gpio[</span><span style=3D"color:rgb(18=
1,206,168)">15</span><span style=3D"color:rgb(204,204,204)">:</span><span s=
tyle=3D"color:rgb(181,206,168)">0</span><span style=3D"color:rgb(204,204,20=
4)">] };</span></div><div><span style=3D"color:rgb(204,204,204)">  </span><=
span style=3D"color:rgb(86,156,214)">assign</span><span style=3D"color:rgb(=
204,204,204)"> s_out_axis_tlast      </span><span style=3D"color:rgb(212,21=
2,212)">=3D</span><span style=3D"color:rgb(204,204,204)"> m_in_axis_tlast;<=
/span></div><div><span style=3D"color:rgb(204,204,204)">  </span><span styl=
e=3D"color:rgb(86,156,214)">assign</span><span style=3D"color:rgb(204,204,2=
04)"> s_out_axis_tvalid     </span><span style=3D"color:rgb(212,212,212)">=
=3D</span><span style=3D"color:rgb(204,204,204)"> m_in_axis_tvalid;</span><=
/div><div><span style=3D"color:rgb(204,204,204)">  </span><span style=3D"co=
lor:rgb(86,156,214)">assign</span><span style=3D"color:rgb(204,204,204)"> s=
_out_axis_tlength    </span><span style=3D"color:rgb(212,212,212)">=3D</spa=
n><span style=3D"color:rgb(204,204,204)"> m_in_axis_tlength;</span></div><d=
iv><span style=3D"color:rgb(204,204,204)">  </span><span style=3D"color:rgb=
(86,156,214)">assign</span><span style=3D"color:rgb(204,204,204)"> s_out_ax=
is_ttimestamp </span><span style=3D"color:rgb(212,212,212)">=3D</span><span=
 style=3D"color:rgb(204,204,204)"> m_in_axis_ttimestamp;</span></div><div><=
span style=3D"color:rgb(204,204,204)">  </span><span style=3D"color:rgb(86,=
156,214)">assign</span><span style=3D"color:rgb(204,204,204)"> s_out_axis_t=
has_time  </span><span style=3D"color:rgb(212,212,212)">=3D</span><span sty=
le=3D"color:rgb(204,204,204)"> m_in_axis_thas_time;</span></div><div><span =
style=3D"color:rgb(204,204,204)">  </span><span style=3D"color:rgb(86,156,2=
14)">assign</span><span style=3D"color:rgb(204,204,204)"> s_out_axis_tlengt=
h    </span><span style=3D"color:rgb(212,212,212)">=3D</span><span style=3D=
"color:rgb(204,204,204)"> m_in_axis_tlength;</span></div><div><span style=
=3D"color:rgb(204,204,204)">  </span><span style=3D"color:rgb(86,156,214)">=
assign</span><span style=3D"color:rgb(204,204,204)"> s_out_axis_teov       =
</span><span style=3D"color:rgb(212,212,212)">=3D</span><span style=3D"colo=
r:rgb(204,204,204)"> m_in_axis_teov;</span></div><div><span style=3D"color:=
rgb(204,204,204)">  </span><span style=3D"color:rgb(86,156,214)">assign</sp=
an><span style=3D"color:rgb(204,204,204)"> s_out_axis_teob       </span><sp=
an style=3D"color:rgb(212,212,212)">=3D</span><span style=3D"color:rgb(204,=
204,204)"> m_in_axis_teob;</span></div><div><span style=3D"color:rgb(204,20=
4,204)">  </span><span style=3D"color:rgb(86,156,214)">assign</span><span s=
tyle=3D"color:rgb(204,204,204)"> m_in_axis_tready      </span><span style=
=3D"color:rgb(212,212,212)">=3D</span><span style=3D"color:rgb(204,204,204)=
"> s_out_axis_tready;</span></div><br><div><span style=3D"color:rgb(204,204=
,204)">  </span><span style=3D"color:rgb(86,156,214)">assign</span><span st=
yle=3D"color:rgb(204,204,204)"> s_out_axis_tkeep </span><span style=3D"colo=
r:rgb(212,212,212)">=3D</span><span style=3D"color:rgb(204,204,204)"> {NUM_=
PORTS{</span><span style=3D"color:rgb(181,206,168)">1&#39;b1</span><span st=
yle=3D"color:rgb(204,204,204)">}};</span></div></div></div><div><br></div><=
div>Here are the lines from the image core yaml that show how the block is =
connected.</div><div><br></div><div><div style=3D"color:rgb(204,204,204);ba=
ckground-color:rgb(31,31,31);font-family:&quot;Droid Sans Mono&quot;,&quot;=
monospace&quot;,monospace;font-weight:normal;font-size:14px;line-height:19p=
x;white-space:pre-wrap"><div><span style=3D"color:rgb(204,204,204)">  </spa=
n><span style=3D"color:rgb(106,153,85)"># # radio0(0) to ep0 - RFA RX</span=
></div><div><span style=3D"color:rgb(204,204,204)">  - { </span><span style=
=3D"color:rgb(86,156,214)">srcblk</span><span style=3D"color:rgb(204,204,20=
4)">: </span><span style=3D"color:rgb(206,145,120)">radio0</span><span styl=
e=3D"color:rgb(204,204,204)">,             </span><span style=3D"color:rgb(=
86,156,214)">srcport</span><span style=3D"color:rgb(204,204,204)">: </span>=
<span style=3D"color:rgb(206,145,120)">out_0</span><span style=3D"color:rgb=
(204,204,204)">, </span><span style=3D"color:rgb(86,156,214)">dstblk</span>=
<span style=3D"color:rgb(204,204,204)">: </span><span style=3D"color:rgb(20=
6,145,120)">ddc0</span><span style=3D"color:rgb(204,204,204)">,            =
  </span><span style=3D"color:rgb(86,156,214)">dstport</span><span style=3D=
"color:rgb(204,204,204)">: </span><span style=3D"color:rgb(206,145,120)">in=
_0</span><span style=3D"color:rgb(204,204,204)"> }</span></div><div><span s=
tyle=3D"color:rgb(204,204,204)">  - { </span><span style=3D"color:rgb(86,15=
6,214)">srcblk</span><span style=3D"color:rgb(204,204,204)">: </span><span =
style=3D"color:rgb(206,145,120)">ddc0</span><span style=3D"color:rgb(204,20=
4,204)">,               </span><span style=3D"color:rgb(86,156,214)">srcpor=
t</span><span style=3D"color:rgb(204,204,204)">: </span><span style=3D"colo=
r:rgb(206,145,120)">out_0</span><span style=3D"color:rgb(204,204,204)">, </=
span><span style=3D"color:rgb(86,156,214)">dstblk</span><span style=3D"colo=
r:rgb(204,204,204)">: </span><span style=3D"color:rgb(206,145,120)">rx_anal=
og_dio_sw0</span><span style=3D"color:rgb(204,204,204)">, </span><span styl=
e=3D"color:rgb(86,156,214)">dstport</span><span style=3D"color:rgb(204,204,=
204)">: </span><span style=3D"color:rgb(206,145,120)">in_0</span><span styl=
e=3D"color:rgb(204,204,204)"> }  </span></div><div><span style=3D"color:rgb=
(204,204,204)">  - { </span><span style=3D"color:rgb(86,156,214)">srcblk</s=
pan><span style=3D"color:rgb(204,204,204)">: </span><span style=3D"color:rg=
b(206,145,120)">rx_analog_dio_sw0</span><span style=3D"color:rgb(204,204,20=
4)">,  </span><span style=3D"color:rgb(86,156,214)">srcport</span><span sty=
le=3D"color:rgb(204,204,204)">: </span><span style=3D"color:rgb(206,145,120=
)">out_0</span><span style=3D"color:rgb(204,204,204)">, </span><span style=
=3D"color:rgb(86,156,214)">dstblk</span><span style=3D"color:rgb(204,204,20=
4)">: </span><span style=3D"color:rgb(206,145,120)">ep0</span><span style=
=3D"color:rgb(204,204,204)">,               </span><span style=3D"color:rgb=
(86,156,214)">dstport</span><span style=3D"color:rgb(204,204,204)">: </span=
><span style=3D"color:rgb(206,145,120)">in0</span><span style=3D"color:rgb(=
204,204,204)">  }</span></div></div></div><div><br></div><div>As a side not=
e, this worked in UHD 3.9.=C2=A0 But that seemed entirely different.=C2=A0 =
The DDC was a submodule of the Radio block.=C2=A0 The output of the DDC was=
 not packetized on the axis protocol at that point.=C2=A0 So it was straigh=
tforward to assign the GPIO pins and then the packetization took place late=
r.=C2=A0 In UHD 4.x, the data from the DDC is packetized onto the axis data=
 plane already.</div><div><br></div><div>My thought right now is that I nee=
d to clock the GPIO pins into a generic FIFO at the DDC rate with my own cl=
ock, connect that to the NOC shell and let the NOC shell unload the FIFO wh=
en the axis data plane is ready.=C2=A0 Does this seem like a path forward?=
=C2=A0 I&#39;m glossing over a ton of the intricacies and making it sound t=
rivial.=C2=A0 Feel free to destroy my plan.<br></div><div><br></div><div>Ho=
pefully this makes my intent a little clearer.</div><div><br></div><div>Tha=
nks you,</div><div>Mark<br></div><div><br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 6, 2024 at 1:07=
=E2=80=AFAM Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com" rel=
=3D"noreferrer noreferrer" target=3D"_blank">martin.braun@ettus.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>Hey Mark,</div><div><br></div><div>maybe I&#39;m being dense,=
 but I don&#39;t understand what it is that your GPIO pins are supposed to =
be doing when your system is done. Can you elaborate?</div><div><br></div><=
div>--M<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Wed, Nov 6, 2024 at 1:56=E2=80=AFAM &lt;<a href=3D"mail=
to:mgannet@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">mgann=
et@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><p>Hi everybody!</p><p>I=E2=80=99ve written an RFNOC block that=
 assigns the daughterboard rx GPIO pins to the tdata signals that are sent =
to the SEP.  I=E2=80=99m using the axis_data protocol and the block is plac=
ed statically between the DDC and the SEP.  I use the tvalid and tlast sign=
al from the upstream (DDC) block and the tready signal from the downstream =
(SEP) block.  I brought the GPIO into the block using appropriate YAML file=
s.  Small modification outside of RFNOC were required to get the pins to RF=
NOC (bus_int.v, x300_core.v, io_signatures.yml, and x310_bsp.yml).</p><p>Th=
e x310 is operated at 1 Msps and there are 64 samples per CHDR packet on th=
e axis data bus.  This means that the packet rate on the bus is 1 Msps / 64=
, or 15.625 kHz.  Period is 64 us.</p><p>If I place a signal onto the GPIO =
pin, everything is fine as long as the pulse width is greater than 64 us.  =
 I can run the radio with rx_samples_to_file and see the GPIO pins faithful=
ly reproduced in the Ethernet output collected on a PC.</p><p>At pulse widt=
hs less than 64 us, the signal is essentially aliased.  I believe it=E2=80=
=99s because I=E2=80=99m using the tvalid, tlast, and tready signals from u=
pstream/downstream blocks with data that=E2=80=99s already on the axis data=
 plane.  That data bursts through with 64 samples roughly every 64 us and i=
s clocked with a 200 MHz master clock.  I need to clock in the asynchronous=
 GPIO.</p><p>My question:  What is the best way to do this?  Generate my ow=
n clock and use a generic FIFO like axi_fifo.v to hold the data until the u=
pstream block sends its data and the downstream block is ready to receive?<=
/p><p>Thank you,</p><p>Mark</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a=
><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users-leave@l=
ists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a=
><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users-leave@l=
ists.ettus.com</a><br>
</blockquote></div></div></div>

--00000000000046426d0626628e6a--

--===============1654579247122895825==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1654579247122895825==--
