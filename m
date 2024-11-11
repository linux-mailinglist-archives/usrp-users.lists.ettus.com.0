Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1659C3A6E
	for <lists+usrp-users@lfdr.de>; Mon, 11 Nov 2024 10:09:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 348CC3865F6
	for <lists+usrp-users@lfdr.de>; Mon, 11 Nov 2024 04:09:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731316148; bh=VCZtjsCmlmMgEOOybmSv8fBeCFdbp923MP9H+R/iah8=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ZQHv/mtz0Tu49pKgvcZ6oL3WITMxXUdhosniur9gofeCrb+UzhG5O0gMTQvXINB2M
	 9XnBiHt6wUYc/ouHsxVkHHbWaxaimM4TUgqiPGWTcNR6y+wGPHHzIX7vdpxccM3p/I
	 OUNXBtcFWj0Ros5iR5aGNPuDcUNqqH9Jbh8nVD/rDzHOwg8zybYZoT/XR2Y+0wPODm
	 U6jX07OCqT+zlu4nkMCDfEEKsUK04MTfXuFMky/XYYKR7xtCvrMsyv8tvRtTwaN347
	 4NgOI5rN3wZHTZCNb370S6zfACjQEvBBazQJ0Y+x1Ygb2bIDccCwo//84i4lTNWlAZ
	 LXNv9Mnwg2jqA==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 5DDCA38655B
	for <usrp-users@lists.ettus.com>; Mon, 11 Nov 2024 04:08:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="e6GOm0xH";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a9ef275b980so505147466b.0
        for <usrp-users@lists.ettus.com>; Mon, 11 Nov 2024 01:08:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1731316119; x=1731920919; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CdeSOZ9AMl5VGd/ZJdxLsRUl1y9ZIDy2xWYzqHHeM+E=;
        b=e6GOm0xHsJXdFX8Nir8fNb6+62jLNjx2spBLSqbqgJeQSuCblbaBkQNayOPBI2pt86
         2hZLguAEjmB45odRurn/uZx5aOh8GWEMVdJ7aPtMMiAAmM2TC8DZnmYpx37YefCJfs/2
         Sp0XQ2s8bn041l2uxkO/wrtuiQDWFysAAA4+uaKKn6uAzD5t8hpt2qZ0FvKjHWlCV8jg
         lXB7y+nBCSI7ETE6xgfRyE/lgyAqniYUmIlns5Z8e2WX8u2fZpU4/CSfnKNR8+GYvRyu
         Cfx4m3BV9N+38MiwHzKqkMgyQKj/CDGp5BXKJQKIi8OxbcEz5YJ1qwgKLoM/L5IaRINo
         vekA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731316119; x=1731920919;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CdeSOZ9AMl5VGd/ZJdxLsRUl1y9ZIDy2xWYzqHHeM+E=;
        b=rATG/lc9YZ6HohoXr499Jcrk89akjxCeCvbubP+oknoaUlYtoLwc2xEZ9mkF6sZ9Mr
         52pDyGjGvLaMW/NvomF4rFdRYXiu5k7qWd1Do/m49X3NOkvAsWqAZRC9LeTu8t72wUif
         F58tsYeLaC7JwB0qDVfBrm/BSDspF4AWoR0WrVoB05J7B5levx/7UzC5llH151rMJ1Qx
         mXoUUlxERxgN1XzZV1Bw9NjRPnh5Mjl4EppQVPjtbItyUi1v6bIZHYS73MAHyXD62dyZ
         c9EzrWm8MN3miKdWZQM6Ghv0S4jkDzF1DVurnrKfHIq7xVjrYsUGLZ4uNuJ48Mgo080d
         y8dQ==
X-Gm-Message-State: AOJu0YzIdCV/Jvb8qdHQ1PDMJGnotQznhJCOM5/mDCVPwrLK7NBqkQUS
	Gv7Dc1Wsnm7ixL8jaiJv3JBHmKsDjBW64Xs8chiPw+h/A11PNBXPjV3/Txz3OaRoeRX3DQKWM4M
	bnlPvOrn7lulsMFoWkNadkOyqGoSUr0560JNzpaMG4DHxbXwmin55wvuo
X-Google-Smtp-Source: AGHT+IHPx/IEkUKdIr+MIadoHvi+oqOpf1iPgFLlGlGWmhRQnZQZZv+dZ/LsohTaWhCQoZsrgF69vyQUkAj5uvFs2Xo=
X-Received: by 2002:a17:907:724d:b0:a9a:90c:8bc with SMTP id
 a640c23a62f3a-a9eefeb2b89mr1136619166b.12.1731316119279; Mon, 11 Nov 2024
 01:08:39 -0800 (PST)
MIME-Version: 1.0
References: <evJJismGX8FnN2oBEQQb16M8vEYufO5U0vQHxU0E@lists.ettus.com>
 <CAFOi1A6xauBJvN5oEFThU4+rKZ13b-VPHWVn0hqUGLrmUxTPXw@mail.gmail.com>
 <CABL+oDb6zODNZ-Bpb8ejRVkXMr4=ENDd966FPE2NN0=tAa9QXw@mail.gmail.com>
 <CAFOi1A7=4feXWdiPfuxA7aX5yF0=_3kAGzDNv1ugtB3SXJUb7A@mail.gmail.com>
 <CABL+oDZ_SoW8g9ZkCmygMNZCi66JfSN8QMN3NmgdR1oYeo6hpw@mail.gmail.com>
 <CAFOi1A6yY6Kx4MG2D4kw_Msof-NmUG6sLKWOqCSZa52ZWrM=xQ@mail.gmail.com> <CABL+oDbXVHwz7gbVaJonU+sk6yb7sv-oU7N6DEuNYBjMa_vNpA@mail.gmail.com>
In-Reply-To: <CABL+oDbXVHwz7gbVaJonU+sk6yb7sv-oU7N6DEuNYBjMa_vNpA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 11 Nov 2024 10:08:25 +0100
Message-ID: <CAFOi1A4bwY6WLb_uXvpcw0=DS-TT2mX27F0GtabP6C5+eggiZg@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: QQ2CJLZOVWUCXU7SBQMFFSBHZRDVQB33
X-Message-ID-Hash: QQ2CJLZOVWUCXU7SBQMFFSBHZRDVQB33
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Asynchronous IO in RFNOC on x310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QQ2CJLZOVWUCXU7SBQMFFSBHZRDVQB33/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3598345756168079757=="

--===============3598345756168079757==
Content-Type: multipart/alternative; boundary="00000000000048b48f06269f72ce"

--00000000000048b48f06269f72ce
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 8, 2024 at 8:42=E2=80=AFPM Mark Gannet <mgannet@gmail.com> wrot=
e:

> Hi Martin,
>
> Sorry I called you Marcus earlier, I was probably thinking of Marcus of
> GNURadio.  Two things:
>

That's OK, both our GNU Radio Marcuses are very smart fellas :)

1. Is it safe to assume that packets on the data plane are not buffered.
> Like if there are 64 samples in the packet, that those 64 samples are the
> most current 64 samples.  For instance, if the DDC is operated at 1 MSps,
> those 64 samples are from the last 64us approximately?  I understand the
> samples are buffered in a FIFO, but the packets go out when they're fille=
d
> and aren't buffered any further?  If so, then I can probably fix the miss=
ed
> latency as you said.
>

In the case of direction connections, that is correct (e.g., our default
bitfiles, which statically connect Radio -> DDC -> Stream Endpoint, and
vice versa). If you're going across the crossbar, or, worse, the network,
that is no longer true.


> 2.  Another way I thought to handle this would be to put my RFNOC block i=
n
> front of the Radio block and assign the GPIO pins to the input
> radio_rx_data in rfnoc_block_radio.v.  Besides the challenges of getting
> this right in the image core YAML and the autogeneration of the rfnoc ima=
ge
> core verilog file, there is the issue of the DDC being downstream.  Is
> there any way to get the DDC to function as pure decimation, like a "keep=
 1
> of N" function?  I thought I could set the center frequency to 0 Hz, but
> there may be some anti-aliasing filter that would still get in the way.
>

Depending on your RFNoC and HDL skills, you might actually create a
separate data source block ("GPIO Source" or something like that) and
ignore the radio entirely. You can use the radio_clk as a block's clock
source to have it run in sync with the radio. Then you also don't need to
worry about generating FIFOs, because RFNoC will do that for you.

The DDC doesn't have a "dumb" mode where the anti-aliasing filters get
disabled. But you could use the Keep-one-in-N block in its stead. Bonus
feature: This saves some FPGA resources and decreases build times.

--M


> Thanks,
> Mark
>
> On Fri, Nov 8, 2024 at 1:37=E2=80=AFAM Martin Braun <martin.braun@ettus.c=
om>
> wrote:
>
>> Hey Mark,
>>
>> that all makes sense, but  keep in mind that the DDC comes later in the
>> data path than the radio samples, which means the timestamps are "in the
>> past" with respect to the actual GPIO events. In theory, we don't even
>> guarantee deterministic latency (they could vary by how much in the past
>> they are), but in practice, that's not true given you're in the same,
>> statically connected data path. That said... if you're putting the GPIO
>> values into a FIFO then you can maybe fix the missed latency.
>>
>> Best of luck,
>>
>> --M
>>
>> On Fri, Nov 8, 2024 at 9:29=E2=80=AFAM Mark Gannet <mgannet@gmail.com> w=
rote:
>>
>>> Hi Marcus,
>>>
>>> Thank you. You've been very helpful and confirmed my thoughts.
>>>
>>> Yes it will be important to run the sampling of the GPIO pin at the sam=
e
>>> rate produced by the DDC. I didn't fully appreciate that the data was
>>> packetized which makes this more difficult than I'd thought.
>>>
>>> Re: your thoughts
>>> - if you have a way to violate sampling theorem and faithfully reproduc=
e
>>> signals, you won't have to answer any more emails :)
>>> - I'm keeping my block in the data path for 2 reasons: 1) I want it to
>>> produce data that matches the timestamp and total bytes of the other
>>> channel for the collection period and 2) I want to use the control plan=
e to
>>> allow the user to select the standard data flow from the DDC if desired
>>> without requiring a different fpga image.
>>> - Initially I'll probably hardcode the divide of the radio clock. The
>>> end goal will be to use the control plane to pass the decimation factor=
 to
>>> a counter so that the divide can adjust depending on the sampling rate.
>>>
>>> Mark
>>>
>>>
>>>
>>>
>>> On Thu, Nov 7, 2024, 5:06=E2=80=AFAM Martin Braun <martin.braun@ettus.c=
om>
>>> wrote:
>>>
>>>> Hey Mark,
>>>>
>>>> OK, I get it, you're basically sampling a GPIO pin instead of using th=
e
>>>> analog data. And of course, you have to stick to the sampling theorem =
if
>>>> you want to do that, and you're seeing what happens if you violate it.
>>>>
>>>> I'm guessing it's important that you run at a clock that's related to
>>>> your radio/data clock, so you can match the GPIO pin levels in time to=
 the
>>>> samples you're receiving on the other channel, right?
>>>>
>>>> Some thoughts:
>>>>
>>>> - I have no solution for violating the sampling theorem and not gettin=
g
>>>> punished :)
>>>> - In RFNoC, you don't really need to put your RFNoC block in the data
>>>> path. You could have a separate source block that just forwards the
>>>> GPIO-data.
>>>> - And yes, you want that GPIO-sampling to occur with a sensible clock
>>>> of your own. You could use radio_clk, or divide that.
>>>>
>>>> Not sure if this is helpful.
>>>>
>>>> --M
>>>>
>>>> On Wed, Nov 6, 2024 at 7:45=E2=80=AFPM Mark Gannet <mgannet@gmail.com>=
 wrote:
>>>>
>>>>> Hi Martin,
>>>>>
>>>>> Sorry I should've elaborated on my purpose.
>>>>>
>>>>> I'm using a device to connect external TTL signals to the RxBasic
>>>>> daughterboard GPIO pins on chA of the x310.  I'm stealing an analog c=
hannel
>>>>> on the x310 to capture timing on one channel with the analog input on=
 the
>>>>> 2nd channel.  This data is recorded on the host PC from the 10 GbE
>>>>> interface.  I've made an application based on the rx_samples_to_file
>>>>> utility that sets the daughterboard RX GPIO banks appropriately and I=
 can
>>>>> see the GPIO inputs in the Ethernet capture from my utility in the re=
corded
>>>>> binary files (chA and chB).
>>>>>
>>>>> Assuming a 1 MSps sample rate from the DDC and 64 samples/packet, the
>>>>> rate on the axis rfnoc bus is 15.625 kHz (64 us period).  The problem=
s
>>>>> arise when the rate on the GPIO pin roughly exceeds half the packet r=
ate on
>>>>> the axis data plane.  Basically it gets aliased.  Here are the lines =
from
>>>>> the HDL file in my block that sits between the DDC and the SEP.  I cr=
eated
>>>>> a testbench as well and placed a clock on a GPIO input to see what is
>>>>> happening.  Also created/loaded an image to x310 and observed in the
>>>>> Ethernet output, which confirmed what I see in the testbench.
>>>>>
>>>>> assign s_out_axis_tdata =3D { 16'b0, radio_rx_gpio[15:0] };
>>>>> assign s_out_axis_tlast =3D m_in_axis_tlast;
>>>>> assign s_out_axis_tvalid =3D m_in_axis_tvalid;
>>>>> assign s_out_axis_tlength =3D m_in_axis_tlength;
>>>>> assign s_out_axis_ttimestamp =3D m_in_axis_ttimestamp;
>>>>> assign s_out_axis_thas_time =3D m_in_axis_thas_time;
>>>>> assign s_out_axis_tlength =3D m_in_axis_tlength;
>>>>> assign s_out_axis_teov =3D m_in_axis_teov;
>>>>> assign s_out_axis_teob =3D m_in_axis_teob;
>>>>> assign m_in_axis_tready =3D s_out_axis_tready;
>>>>>
>>>>> assign s_out_axis_tkeep =3D {NUM_PORTS{1'b1}};
>>>>>
>>>>> Here are the lines from the image core yaml that show how the block i=
s
>>>>> connected.
>>>>>
>>>>> # # radio0(0) to ep0 - RFA RX
>>>>> - { srcblk: radio0, srcport: out_0, dstblk: ddc0, dstport: in_0 }
>>>>> - { srcblk: ddc0, srcport: out_0, dstblk: rx_analog_dio_sw0, dstport:
>>>>> in_0 }
>>>>> - { srcblk: rx_analog_dio_sw0, srcport: out_0, dstblk: ep0, dstport:
>>>>> in0 }
>>>>>
>>>>> As a side note, this worked in UHD 3.9.  But that seemed entirely
>>>>> different.  The DDC was a submodule of the Radio block.  The output o=
f the
>>>>> DDC was not packetized on the axis protocol at that point.  So it was
>>>>> straightforward to assign the GPIO pins and then the packetization to=
ok
>>>>> place later.  In UHD 4.x, the data from the DDC is packetized onto th=
e axis
>>>>> data plane already.
>>>>>
>>>>> My thought right now is that I need to clock the GPIO pins into a
>>>>> generic FIFO at the DDC rate with my own clock, connect that to the N=
OC
>>>>> shell and let the NOC shell unload the FIFO when the axis data plane =
is
>>>>> ready.  Does this seem like a path forward?  I'm glossing over a ton =
of the
>>>>> intricacies and making it sound trivial.  Feel free to destroy my pla=
n.
>>>>>
>>>>> Hopefully this makes my intent a little clearer.
>>>>>
>>>>> Thanks you,
>>>>> Mark
>>>>>
>>>>>
>>>>> On Wed, Nov 6, 2024 at 1:07=E2=80=AFAM Martin Braun <martin.braun@ett=
us.com>
>>>>> wrote:
>>>>>
>>>>>> Hey Mark,
>>>>>>
>>>>>> maybe I'm being dense, but I don't understand what it is that your
>>>>>> GPIO pins are supposed to be doing when your system is done. Can you
>>>>>> elaborate?
>>>>>>
>>>>>> --M
>>>>>>
>>>>>> On Wed, Nov 6, 2024 at 1:56=E2=80=AFAM <mgannet@gmail.com> wrote:
>>>>>>
>>>>>>> Hi everybody!
>>>>>>>
>>>>>>> I=E2=80=99ve written an RFNOC block that assigns the daughterboard =
rx GPIO
>>>>>>> pins to the tdata signals that are sent to the SEP. I=E2=80=99m usi=
ng the axis_data
>>>>>>> protocol and the block is placed statically between the DDC and the=
 SEP. I
>>>>>>> use the tvalid and tlast signal from the upstream (DDC) block and t=
he
>>>>>>> tready signal from the downstream (SEP) block. I brought the GPIO i=
nto the
>>>>>>> block using appropriate YAML files. Small modification outside of R=
FNOC
>>>>>>> were required to get the pins to RFNOC (bus_int.v, x300_core.v,
>>>>>>> io_signatures.yml, and x310_bsp.yml).
>>>>>>>
>>>>>>> The x310 is operated at 1 Msps and there are 64 samples per CHDR
>>>>>>> packet on the axis data bus. This means that the packet rate on the=
 bus is
>>>>>>> 1 Msps / 64, or 15.625 kHz. Period is 64 us.
>>>>>>>
>>>>>>> If I place a signal onto the GPIO pin, everything is fine as long a=
s
>>>>>>> the pulse width is greater than 64 us. I can run the radio with
>>>>>>> rx_samples_to_file and see the GPIO pins faithfully reproduced in t=
he
>>>>>>> Ethernet output collected on a PC.
>>>>>>>
>>>>>>> At pulse widths less than 64 us, the signal is essentially aliased.
>>>>>>> I believe it=E2=80=99s because I=E2=80=99m using the tvalid, tlast,=
 and tready signals from
>>>>>>> upstream/downstream blocks with data that=E2=80=99s already on the =
axis data plane.
>>>>>>> That data bursts through with 64 samples roughly every 64 us and is=
 clocked
>>>>>>> with a 200 MHz master clock. I need to clock in the asynchronous GP=
IO.
>>>>>>>
>>>>>>> My question: What is the best way to do this? Generate my own clock
>>>>>>> and use a generic FIFO like axi_fifo.v to hold the data until the u=
pstream
>>>>>>> block sends its data and the downstream block is ready to receive?
>>>>>>>
>>>>>>> Thank you,
>>>>>>>
>>>>>>> Mark
>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>
>>>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>

--00000000000048b48f06269f72ce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Fri, Nov 8, 2024 at 8:42=E2=80=AFPM Mark Gannet &lt;<a href=3D"ma=
ilto:mgannet@gmail.com">mgannet@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Martin,</=
div><div><br></div><div>Sorry I called you Marcus earlier, I was probably t=
hinking of Marcus of GNURadio.=C2=A0 Two things:</div></div></blockquote><d=
iv><br></div><div>
<div>That&#39;s OK, both our GNU Radio Marcuses are very smart fellas :)</d=
iv><div><br></div></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div>1. Is it safe to assume that packets on the data plane=
 are not buffered.=C2=A0 Like if there are 64 samples in the packet, that t=
hose 64 samples are the most current 64 samples.=C2=A0 For instance, if the=
 DDC is operated at 1 MSps, those 64 samples are from the last 64us approxi=
mately?=C2=A0 I understand the samples are buffered in a FIFO, but the pack=
ets go out when they&#39;re filled and aren&#39;t buffered any further?=C2=
=A0 If so, then I can probably fix the missed latency as you said.<br></div=
></div></blockquote><div><br></div><div>In the case of direction connection=
s, that is correct (e.g., our default bitfiles, which statically connect Ra=
dio -&gt; DDC -&gt; Stream Endpoint, and vice versa). If you&#39;re going a=
cross the crossbar, or, worse, the network, that is no longer true.<br></di=
v><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div>2.=C2=A0 Another way I thought to handle this would be to p=
ut my RFNOC block in front of the Radio block and assign the GPIO pins to t=
he input radio_rx_data in rfnoc_block_radio.v.=C2=A0 Besides the challenges=
 of getting this right in the image core YAML and the autogeneration of the=
 rfnoc image core verilog file, there is the issue of the DDC being downstr=
eam.=C2=A0 Is there any way to get the DDC to function as pure decimation, =
like a &quot;keep 1 of N&quot; function?=C2=A0 I thought I could set the ce=
nter frequency to 0 Hz, but there may be some anti-aliasing filter that wou=
ld still get in the way.</div></div></blockquote><div><br></div><div>Depend=
ing on your RFNoC and HDL skills, you might actually create a separate data=
 source block (&quot;GPIO Source&quot; or something like that) and ignore t=
he radio entirely. You can use the radio_clk as a block&#39;s clock source =
to have it run in sync with the radio. Then you also don&#39;t need to worr=
y about generating FIFOs, because RFNoC will do that for you.</div><div><br=
></div><div>The DDC doesn&#39;t have a &quot;dumb&quot; mode where the anti=
-aliasing filters get disabled. But you could use the Keep-one-in-N block i=
n its stead. Bonus feature: This saves some FPGA resources and decreases bu=
ild times.</div><div><br></div><div>--M<br></div><div><br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><br></div><div=
>Thanks,</div><div>Mark<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 8, 2024 at 1:37=E2=80=AFAM Mar=
tin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com" target=3D"_blank">m=
artin.braun@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div>Hey Mark,</div><div><br></div><d=
iv>that all makes sense, but=C2=A0 keep in mind that the DDC comes later in=
 the data path than the radio samples, which means the timestamps are &quot=
;in the past&quot; with respect to the actual GPIO events. In theory, we do=
n&#39;t even guarantee deterministic latency (they could vary by how much i=
n the past they are), but in practice, that&#39;s not true given you&#39;re=
 in the same, statically connected data path. That said... if you&#39;re pu=
tting the GPIO values into a FIFO then you can maybe fix the missed latency=
.</div><div><br></div><div>Best of luck,</div><div><br></div><div>--M<br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Fri, Nov 8, 2024 at 9:29=E2=80=AFAM Mark Gannet &lt;<a href=3D"mailt=
o:mgannet@gmail.com" target=3D"_blank">mgannet@gmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto"><=
div dir=3D"auto">Hi Marcus,</div><div dir=3D"auto"><br></div><div dir=3D"au=
to">Thank you. You&#39;ve been very helpful and confirmed my thoughts.</div=
><div dir=3D"auto"><br></div><div>Yes it will be important to run the sampl=
ing of the GPIO pin at the same rate produced by the DDC. I didn&#39;t full=
y appreciate that the data was packetized which makes this more difficult t=
han I&#39;d thought.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Re:=
 your thoughts</div><div dir=3D"auto">- if you have a way to violate sampli=
ng theorem and faithfully reproduce signals, you won&#39;t have to answer a=
ny more emails :)</div><div dir=3D"auto">- I&#39;m keeping my block in the =
data path for 2 reasons: 1) I want it to produce data that matches the time=
stamp and total bytes of the other channel for the collection period and 2)=
 I want to use the control plane to allow the user to select the standard d=
ata flow from the DDC if desired without requiring a different fpga image.<=
/div><div dir=3D"auto">- Initially I&#39;ll probably hardcode the divide of=
 the radio clock. The end goal will be to use the control plane to pass the=
 decimation factor to a counter so that the divide can adjust depending on =
the sampling rate.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Mark<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"au=
to"><br></div><div dir=3D"auto"><br><div class=3D"gmail_quote" dir=3D"auto"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 7, 2024, 5:06=E2=80=AFAM=
 Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com" rel=3D"noreferr=
er" target=3D"_blank">martin.braun@ettus.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hey Mark,=
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
</blockquote></div>
</blockquote></div>
</blockquote></div></div>

--00000000000048b48f06269f72ce--

--===============3598345756168079757==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3598345756168079757==--
