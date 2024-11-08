Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CA69C1946
	for <lists+usrp-users@lfdr.de>; Fri,  8 Nov 2024 10:38:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9A81F386502
	for <lists+usrp-users@lfdr.de>; Fri,  8 Nov 2024 04:38:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731058695; bh=2LPcRQNP6mz/eB2ShR2tM3i1WxBc9yuouUSVOP1GxzE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=a8oRce9zTYUGjaD5pw3wqBh22I4LUMz9P0h/BDaOZXmYSMtoMp2RMIG5GYtrExQTV
	 Re8LSCWo3YcxzuPYQvqaiAj8WY7z85d12xh3r8NWuypDTQRfeoCBZ7Wo4NtsxWl/kB
	 UrvgvGoFSYrVqgzWxG4ehQolpsBkHo1c2gnfKY67lQ4aE9jy8qfFS+gVvpVC7HHodn
	 KsvngCoVI+2hH5SPL2kKJ1TR5NOdGz379epIL6lGFoy6HKPnBLlDrH5cvnoU64shCm
	 /9mLXuHDxsRoLKnnWXTVxYVuYAFR/DwgNrIPMjrXArj6OgwFwaUKTMxpAtXHKorYj8
	 pX4bPyF900TrA==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id C5D70386341
	for <usrp-users@lists.ettus.com>; Fri,  8 Nov 2024 04:37:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="bwOhsWui";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5cebcf96fabso2297561a12.3
        for <usrp-users@lists.ettus.com>; Fri, 08 Nov 2024 01:37:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1731058654; x=1731663454; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZDar864avmS7qLYuw7g+5BqC1Cxe9WC6Ao+3omkIrxk=;
        b=bwOhsWuiw6vLQNpGA/v//TksJ7EveBMjSY8QPoTJrby6s2RkjseRD7MtPPQu8WoaU4
         xLmgizJNw+nnQozMlLqqbWk+MvQjwT/mRL6QIyy4FBj7MrsGncUJygoCITyqCFOX/EPm
         jwpWU6RMu0HsQrPSfIBI8Fmo/zukTNJ2c6gSalubbB7VRLOOCnNFuIdI4xEU7Hsj2y07
         ecPizg3tPjASrJtO35rd+bcYm+GkLRNjCVXglUwJasMqjkBhSyHyA0ardMduBAv/wnkq
         ja15fPzJn6r1pTxhMp3prmApbg71nzWZvjF8kdh7D2p9gsKJm1hZu0j+ebg5TJs/ZKCO
         ljJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731058654; x=1731663454;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZDar864avmS7qLYuw7g+5BqC1Cxe9WC6Ao+3omkIrxk=;
        b=n6LPgwtXo4VqWVvbWv2EjRpQiTvAKYPrCnE5L9R1Z+BDarfwbSmujUDZOJCxdr/F+q
         p7F2wbFQqXIS0rkRnszEhtr3R1XpaFMjYeppnfya6WeDMeeTViPROVVdkiYZhNlZIBi+
         sjQ0admk6+QpI16rAag7+JPUEMdzwro0gAx/02ihfjONOOiZYwpc4c0gZf401q1dhLL9
         MSKoSIWLIsfwBb/aOV+TYjZxXwvctkd971KwyqdyrC9qvOBDtkI2XYxFT8SH+h4zMESl
         eeMIkn54N0y0ulD5uxbdFIteab80MTnyfeprJgGJ8WrvQzaA8tEw/0ZHm+gFGsXYhfRh
         qWHg==
X-Gm-Message-State: AOJu0YwqnGAKZ9M5u5iC91lHyVYvUNtTqQaakCF8s/EaWr192TweHaGy
	SupEkv90QT2smeXlSo3UvWEyobxynDaWOM78efc48S2YekE7q43En7kb5oSwfAys3oeZsKRFxYp
	1vgdVlo0BOUeC8ZNNyiCv5wmW7W9cq7r7Jy61LEEe
X-Google-Smtp-Source: AGHT+IGMy/wWHqZqanrtHDxTOuwpFH6BVVDKKZo7zcW3u54py9lt0Msp0tCt4ZiA3ZqJJQF7uuhRz7fCxmtQcByG/BA=
X-Received: by 2002:a05:6402:2794:b0:5ce:c9d3:9fdc with SMTP id
 4fb4d7f45d1cf-5cf0a323015mr1496035a12.16.1731058653396; Fri, 08 Nov 2024
 01:37:33 -0800 (PST)
MIME-Version: 1.0
References: <evJJismGX8FnN2oBEQQb16M8vEYufO5U0vQHxU0E@lists.ettus.com>
 <CAFOi1A6xauBJvN5oEFThU4+rKZ13b-VPHWVn0hqUGLrmUxTPXw@mail.gmail.com>
 <CABL+oDb6zODNZ-Bpb8ejRVkXMr4=ENDd966FPE2NN0=tAa9QXw@mail.gmail.com>
 <CAFOi1A7=4feXWdiPfuxA7aX5yF0=_3kAGzDNv1ugtB3SXJUb7A@mail.gmail.com> <CABL+oDZ_SoW8g9ZkCmygMNZCi66JfSN8QMN3NmgdR1oYeo6hpw@mail.gmail.com>
In-Reply-To: <CABL+oDZ_SoW8g9ZkCmygMNZCi66JfSN8QMN3NmgdR1oYeo6hpw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 8 Nov 2024 10:37:22 +0100
Message-ID: <CAFOi1A6yY6Kx4MG2D4kw_Msof-NmUG6sLKWOqCSZa52ZWrM=xQ@mail.gmail.com>
To: Mark Gannet <mgannet@gmail.com>
Message-ID-Hash: KRMD4I44FW63J6PHX2R5O7CTMSRWCCGG
X-Message-ID-Hash: KRMD4I44FW63J6PHX2R5O7CTMSRWCCGG
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Asynchronous IO in RFNOC on x310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KRMD4I44FW63J6PHX2R5O7CTMSRWCCGG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3084634850126412089=="

--===============3084634850126412089==
Content-Type: multipart/alternative; boundary="0000000000001f1aae06266380b2"

--0000000000001f1aae06266380b2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Mark,

that all makes sense, but  keep in mind that the DDC comes later in the
data path than the radio samples, which means the timestamps are "in the
past" with respect to the actual GPIO events. In theory, we don't even
guarantee deterministic latency (they could vary by how much in the past
they are), but in practice, that's not true given you're in the same,
statically connected data path. That said... if you're putting the GPIO
values into a FIFO then you can maybe fix the missed latency.

Best of luck,

--M

On Fri, Nov 8, 2024 at 9:29=E2=80=AFAM Mark Gannet <mgannet@gmail.com> wrot=
e:

> Hi Marcus,
>
> Thank you. You've been very helpful and confirmed my thoughts.
>
> Yes it will be important to run the sampling of the GPIO pin at the same
> rate produced by the DDC. I didn't fully appreciate that the data was
> packetized which makes this more difficult than I'd thought.
>
> Re: your thoughts
> - if you have a way to violate sampling theorem and faithfully reproduce
> signals, you won't have to answer any more emails :)
> - I'm keeping my block in the data path for 2 reasons: 1) I want it to
> produce data that matches the timestamp and total bytes of the other
> channel for the collection period and 2) I want to use the control plane =
to
> allow the user to select the standard data flow from the DDC if desired
> without requiring a different fpga image.
> - Initially I'll probably hardcode the divide of the radio clock. The end
> goal will be to use the control plane to pass the decimation factor to a
> counter so that the divide can adjust depending on the sampling rate.
>
> Mark
>
>
>
>
> On Thu, Nov 7, 2024, 5:06=E2=80=AFAM Martin Braun <martin.braun@ettus.com=
> wrote:
>
>> Hey Mark,
>>
>> OK, I get it, you're basically sampling a GPIO pin instead of using the
>> analog data. And of course, you have to stick to the sampling theorem if
>> you want to do that, and you're seeing what happens if you violate it.
>>
>> I'm guessing it's important that you run at a clock that's related to
>> your radio/data clock, so you can match the GPIO pin levels in time to t=
he
>> samples you're receiving on the other channel, right?
>>
>> Some thoughts:
>>
>> - I have no solution for violating the sampling theorem and not getting
>> punished :)
>> - In RFNoC, you don't really need to put your RFNoC block in the data
>> path. You could have a separate source block that just forwards the
>> GPIO-data.
>> - And yes, you want that GPIO-sampling to occur with a sensible clock of
>> your own. You could use radio_clk, or divide that.
>>
>> Not sure if this is helpful.
>>
>> --M
>>
>> On Wed, Nov 6, 2024 at 7:45=E2=80=AFPM Mark Gannet <mgannet@gmail.com> w=
rote:
>>
>>> Hi Martin,
>>>
>>> Sorry I should've elaborated on my purpose.
>>>
>>> I'm using a device to connect external TTL signals to the RxBasic
>>> daughterboard GPIO pins on chA of the x310.  I'm stealing an analog cha=
nnel
>>> on the x310 to capture timing on one channel with the analog input on t=
he
>>> 2nd channel.  This data is recorded on the host PC from the 10 GbE
>>> interface.  I've made an application based on the rx_samples_to_file
>>> utility that sets the daughterboard RX GPIO banks appropriately and I c=
an
>>> see the GPIO inputs in the Ethernet capture from my utility in the reco=
rded
>>> binary files (chA and chB).
>>>
>>> Assuming a 1 MSps sample rate from the DDC and 64 samples/packet, the
>>> rate on the axis rfnoc bus is 15.625 kHz (64 us period).  The problems
>>> arise when the rate on the GPIO pin roughly exceeds half the packet rat=
e on
>>> the axis data plane.  Basically it gets aliased.  Here are the lines fr=
om
>>> the HDL file in my block that sits between the DDC and the SEP.  I crea=
ted
>>> a testbench as well and placed a clock on a GPIO input to see what is
>>> happening.  Also created/loaded an image to x310 and observed in the
>>> Ethernet output, which confirmed what I see in the testbench.
>>>
>>> assign s_out_axis_tdata =3D { 16'b0, radio_rx_gpio[15:0] };
>>> assign s_out_axis_tlast =3D m_in_axis_tlast;
>>> assign s_out_axis_tvalid =3D m_in_axis_tvalid;
>>> assign s_out_axis_tlength =3D m_in_axis_tlength;
>>> assign s_out_axis_ttimestamp =3D m_in_axis_ttimestamp;
>>> assign s_out_axis_thas_time =3D m_in_axis_thas_time;
>>> assign s_out_axis_tlength =3D m_in_axis_tlength;
>>> assign s_out_axis_teov =3D m_in_axis_teov;
>>> assign s_out_axis_teob =3D m_in_axis_teob;
>>> assign m_in_axis_tready =3D s_out_axis_tready;
>>>
>>> assign s_out_axis_tkeep =3D {NUM_PORTS{1'b1}};
>>>
>>> Here are the lines from the image core yaml that show how the block is
>>> connected.
>>>
>>> # # radio0(0) to ep0 - RFA RX
>>> - { srcblk: radio0, srcport: out_0, dstblk: ddc0, dstport: in_0 }
>>> - { srcblk: ddc0, srcport: out_0, dstblk: rx_analog_dio_sw0, dstport:
>>> in_0 }
>>> - { srcblk: rx_analog_dio_sw0, srcport: out_0, dstblk: ep0, dstport: in=
0
>>> }
>>>
>>> As a side note, this worked in UHD 3.9.  But that seemed entirely
>>> different.  The DDC was a submodule of the Radio block.  The output of =
the
>>> DDC was not packetized on the axis protocol at that point.  So it was
>>> straightforward to assign the GPIO pins and then the packetization took
>>> place later.  In UHD 4.x, the data from the DDC is packetized onto the =
axis
>>> data plane already.
>>>
>>> My thought right now is that I need to clock the GPIO pins into a
>>> generic FIFO at the DDC rate with my own clock, connect that to the NOC
>>> shell and let the NOC shell unload the FIFO when the axis data plane is
>>> ready.  Does this seem like a path forward?  I'm glossing over a ton of=
 the
>>> intricacies and making it sound trivial.  Feel free to destroy my plan.
>>>
>>> Hopefully this makes my intent a little clearer.
>>>
>>> Thanks you,
>>> Mark
>>>
>>>
>>> On Wed, Nov 6, 2024 at 1:07=E2=80=AFAM Martin Braun <martin.braun@ettus=
.com>
>>> wrote:
>>>
>>>> Hey Mark,
>>>>
>>>> maybe I'm being dense, but I don't understand what it is that your GPI=
O
>>>> pins are supposed to be doing when your system is done. Can you elabor=
ate?
>>>>
>>>> --M
>>>>
>>>> On Wed, Nov 6, 2024 at 1:56=E2=80=AFAM <mgannet@gmail.com> wrote:
>>>>
>>>>> Hi everybody!
>>>>>
>>>>> I=E2=80=99ve written an RFNOC block that assigns the daughterboard rx=
 GPIO
>>>>> pins to the tdata signals that are sent to the SEP. I=E2=80=99m using=
 the axis_data
>>>>> protocol and the block is placed statically between the DDC and the S=
EP. I
>>>>> use the tvalid and tlast signal from the upstream (DDC) block and the
>>>>> tready signal from the downstream (SEP) block. I brought the GPIO int=
o the
>>>>> block using appropriate YAML files. Small modification outside of RFN=
OC
>>>>> were required to get the pins to RFNOC (bus_int.v, x300_core.v,
>>>>> io_signatures.yml, and x310_bsp.yml).
>>>>>
>>>>> The x310 is operated at 1 Msps and there are 64 samples per CHDR
>>>>> packet on the axis data bus. This means that the packet rate on the b=
us is
>>>>> 1 Msps / 64, or 15.625 kHz. Period is 64 us.
>>>>>
>>>>> If I place a signal onto the GPIO pin, everything is fine as long as
>>>>> the pulse width is greater than 64 us. I can run the radio with
>>>>> rx_samples_to_file and see the GPIO pins faithfully reproduced in the
>>>>> Ethernet output collected on a PC.
>>>>>
>>>>> At pulse widths less than 64 us, the signal is essentially aliased. I
>>>>> believe it=E2=80=99s because I=E2=80=99m using the tvalid, tlast, and=
 tready signals from
>>>>> upstream/downstream blocks with data that=E2=80=99s already on the ax=
is data plane.
>>>>> That data bursts through with 64 samples roughly every 64 us and is c=
locked
>>>>> with a 200 MHz master clock. I need to clock in the asynchronous GPIO=
.
>>>>>
>>>>> My question: What is the best way to do this? Generate my own clock
>>>>> and use a generic FIFO like axi_fifo.v to hold the data until the ups=
tream
>>>>> block sends its data and the downstream block is ready to receive?
>>>>>
>>>>> Thank you,
>>>>>
>>>>> Mark
>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000001f1aae06266380b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Mark,</div><div><br></div><div>that all makes sen=
se, but=C2=A0 keep in mind that the DDC comes later in the data path than t=
he radio samples, which means the timestamps are &quot;in the past&quot; wi=
th respect to the actual GPIO events. In theory, we don&#39;t even guarante=
e deterministic latency (they could vary by how much in the past they are),=
 but in practice, that&#39;s not true given you&#39;re in the same, statica=
lly connected data path. That said... if you&#39;re putting the GPIO values=
 into a FIFO then you can maybe fix the missed latency.</div><div><br></div=
><div>Best of luck,</div><div><br></div><div>--M<br></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 8, 20=
24 at 9:29=E2=80=AFAM Mark Gannet &lt;<a href=3D"mailto:mgannet@gmail.com">=
mgannet@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"auto"><div dir=3D"auto">Hi Marcus,</div><div d=
ir=3D"auto"><br></div><div dir=3D"auto">Thank you. You&#39;ve been very hel=
pful and confirmed my thoughts.</div><div dir=3D"auto"><br></div><div>Yes i=
t will be important to run the sampling of the GPIO pin at the same rate pr=
oduced by the DDC. I didn&#39;t fully appreciate that the data was packetiz=
ed which makes this more difficult than I&#39;d thought.</div><div dir=3D"a=
uto"><br></div><div dir=3D"auto">Re: your thoughts</div><div dir=3D"auto">-=
 if you have a way to violate sampling theorem and faithfully reproduce sig=
nals, you won&#39;t have to answer any more emails :)</div><div dir=3D"auto=
">- I&#39;m keeping my block in the data path for 2 reasons: 1) I want it t=
o produce data that matches the timestamp and total bytes of the other chan=
nel for the collection period and 2) I want to use the control plane to all=
ow the user to select the standard data flow from the DDC if desired withou=
t requiring a different fpga image.</div><div dir=3D"auto">- Initially I&#3=
9;ll probably hardcode the divide of the radio clock. The end goal will be =
to use the control plane to pass the decimation factor to a counter so that=
 the divide can adjust depending on the sampling rate.</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">Mark</div><div dir=3D"auto"><br></div><div d=
ir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto"><br><di=
v class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">=
On Thu, Nov 7, 2024, 5:06=E2=80=AFAM Martin Braun &lt;<a href=3D"mailto:mar=
tin.braun@ettus.com" rel=3D"noreferrer" target=3D"_blank">martin.braun@ettu=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div>Hey Mark,</div><div><br></div><div>OK, I get it,=
 you&#39;re basically sampling a GPIO pin instead of using the analog data.=
 And of course, you have to stick to the sampling theorem if you want to do=
 that, and you&#39;re seeing what happens if you violate it.</div><div><br>=
</div><div>I&#39;m guessing it&#39;s important that you run at a clock that=
&#39;s related to your radio/data clock, so you can match the GPIO pin leve=
ls in time to the samples you&#39;re receiving on the other channel, right?=
</div><div><br></div><div>Some thoughts:</div><div><br></div><div>- I have =
no solution for violating the sampling theorem and not getting punished :)<=
/div><div>- In RFNoC, you don&#39;t really need to put your RFNoC block in =
the data path. You could have a separate source block that just forwards th=
e GPIO-data.</div><div>- And yes, you want that GPIO-sampling to occur with=
 a sensible clock of your own. You could use radio_clk, or divide that.</di=
v><div><br></div><div>Not sure if this is helpful.</div><div><br></div><div=
>--M<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Nov 6, 2024 at 7:45=E2=80=AFPM Mark Gannet &lt;<a h=
ref=3D"mailto:mgannet@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_b=
lank">mgannet@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Martin,</div><div><br></div=
><div>Sorry I should&#39;ve elaborated on my purpose.</div><div><br></div><=
div>I&#39;m using a device to connect external TTL signals to the RxBasic d=
aughterboard GPIO pins on chA of the x310.=C2=A0 I&#39;m stealing an analog=
 channel on the x310 to capture timing on one channel with the analog input=
 on the 2nd channel.=C2=A0 This data is recorded on the host PC from the 10=
 GbE interface.=C2=A0 I&#39;ve made an application based on the rx_samples_=
to_file utility that sets the daughterboard RX GPIO banks appropriately and=
 I can see the GPIO inputs in the Ethernet capture from my utility in the r=
ecorded binary files (chA and chB).</div><div><br></div><div>Assuming a 1 M=
Sps sample rate from the DDC and 64 samples/packet, the rate on the axis rf=
noc bus is 15.625 kHz (64 us period).=C2=A0 The problems arise when the rat=
e on the GPIO pin roughly exceeds half the packet rate on the axis data pla=
ne.=C2=A0 Basically it gets aliased.=C2=A0 Here are the lines from the HDL =
file in my block that sits between the DDC and the SEP.=C2=A0 I created a t=
estbench as well and placed a clock on a GPIO input to see what is happenin=
g.=C2=A0 Also created/loaded an image to x310 and observed in the Ethernet =
output, which confirmed what I see in the testbench.<br></div><div><br></di=
v><div><div style=3D"color:rgb(204,204,204);background-color:rgb(31,31,31);=
font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace;fon=
t-weight:normal;font-size:14px;line-height:19px;white-space:pre-wrap"><div>=
<span style=3D"color:rgb(204,204,204)">  </span><span style=3D"color:rgb(86=
,156,214)">assign</span><span style=3D"color:rgb(204,204,204)"> s_out_axis_=
tdata      </span><span style=3D"color:rgb(212,212,212)">=3D</span><span st=
yle=3D"color:rgb(204,204,204)"> { </span><span style=3D"color:rgb(181,206,1=
68)">16&#39;b0</span><span style=3D"color:rgb(204,204,204)">, radio_rx_gpio=
[</span><span style=3D"color:rgb(181,206,168)">15</span><span style=3D"colo=
r:rgb(204,204,204)">:</span><span style=3D"color:rgb(181,206,168)">0</span>=
<span style=3D"color:rgb(204,204,204)">] };</span></div><div><span style=3D=
"color:rgb(204,204,204)">  </span><span style=3D"color:rgb(86,156,214)">ass=
ign</span><span style=3D"color:rgb(204,204,204)"> s_out_axis_tlast      </s=
pan><span style=3D"color:rgb(212,212,212)">=3D</span><span style=3D"color:r=
gb(204,204,204)"> m_in_axis_tlast;</span></div><div><span style=3D"color:rg=
b(204,204,204)">  </span><span style=3D"color:rgb(86,156,214)">assign</span=
><span style=3D"color:rgb(204,204,204)"> s_out_axis_tvalid     </span><span=
 style=3D"color:rgb(212,212,212)">=3D</span><span style=3D"color:rgb(204,20=
4,204)"> m_in_axis_tvalid;</span></div><div><span style=3D"color:rgb(204,20=
4,204)">  </span><span style=3D"color:rgb(86,156,214)">assign</span><span s=
tyle=3D"color:rgb(204,204,204)"> s_out_axis_tlength    </span><span style=
=3D"color:rgb(212,212,212)">=3D</span><span style=3D"color:rgb(204,204,204)=
"> m_in_axis_tlength;</span></div><div><span style=3D"color:rgb(204,204,204=
)">  </span><span style=3D"color:rgb(86,156,214)">assign</span><span style=
=3D"color:rgb(204,204,204)"> s_out_axis_ttimestamp </span><span style=3D"co=
lor:rgb(212,212,212)">=3D</span><span style=3D"color:rgb(204,204,204)"> m_i=
n_axis_ttimestamp;</span></div><div><span style=3D"color:rgb(204,204,204)">=
  </span><span style=3D"color:rgb(86,156,214)">assign</span><span style=3D"=
color:rgb(204,204,204)"> s_out_axis_thas_time  </span><span style=3D"color:=
rgb(212,212,212)">=3D</span><span style=3D"color:rgb(204,204,204)"> m_in_ax=
is_thas_time;</span></div><div><span style=3D"color:rgb(204,204,204)">  </s=
pan><span style=3D"color:rgb(86,156,214)">assign</span><span style=3D"color=
:rgb(204,204,204)"> s_out_axis_tlength    </span><span style=3D"color:rgb(2=
12,212,212)">=3D</span><span style=3D"color:rgb(204,204,204)"> m_in_axis_tl=
ength;</span></div><div><span style=3D"color:rgb(204,204,204)">  </span><sp=
an style=3D"color:rgb(86,156,214)">assign</span><span style=3D"color:rgb(20=
4,204,204)"> s_out_axis_teov       </span><span style=3D"color:rgb(212,212,=
212)">=3D</span><span style=3D"color:rgb(204,204,204)"> m_in_axis_teov;</sp=
an></div><div><span style=3D"color:rgb(204,204,204)">  </span><span style=
=3D"color:rgb(86,156,214)">assign</span><span style=3D"color:rgb(204,204,20=
4)"> s_out_axis_teob       </span><span style=3D"color:rgb(212,212,212)">=
=3D</span><span style=3D"color:rgb(204,204,204)"> m_in_axis_teob;</span></d=
iv><div><span style=3D"color:rgb(204,204,204)">  </span><span style=3D"colo=
r:rgb(86,156,214)">assign</span><span style=3D"color:rgb(204,204,204)"> m_i=
n_axis_tready      </span><span style=3D"color:rgb(212,212,212)">=3D</span>=
<span style=3D"color:rgb(204,204,204)"> s_out_axis_tready;</span></div><br>=
<div><span style=3D"color:rgb(204,204,204)">  </span><span style=3D"color:r=
gb(86,156,214)">assign</span><span style=3D"color:rgb(204,204,204)"> s_out_=
axis_tkeep </span><span style=3D"color:rgb(212,212,212)">=3D</span><span st=
yle=3D"color:rgb(204,204,204)"> {NUM_PORTS{</span><span style=3D"color:rgb(=
181,206,168)">1&#39;b1</span><span style=3D"color:rgb(204,204,204)">}};</sp=
an></div></div></div><div><br></div><div>Here are the lines from the image =
core yaml that show how the block is connected.</div><div><br></div><div><d=
iv style=3D"color:rgb(204,204,204);background-color:rgb(31,31,31);font-fami=
ly:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace;font-weight:=
normal;font-size:14px;line-height:19px;white-space:pre-wrap"><div><span sty=
le=3D"color:rgb(204,204,204)">  </span><span style=3D"color:rgb(106,153,85)=
"># # radio0(0) to ep0 - RFA RX</span></div><div><span style=3D"color:rgb(2=
04,204,204)">  - { </span><span style=3D"color:rgb(86,156,214)">srcblk</spa=
n><span style=3D"color:rgb(204,204,204)">: </span><span style=3D"color:rgb(=
206,145,120)">radio0</span><span style=3D"color:rgb(204,204,204)">,        =
     </span><span style=3D"color:rgb(86,156,214)">srcport</span><span style=
=3D"color:rgb(204,204,204)">: </span><span style=3D"color:rgb(206,145,120)"=
>out_0</span><span style=3D"color:rgb(204,204,204)">, </span><span style=3D=
"color:rgb(86,156,214)">dstblk</span><span style=3D"color:rgb(204,204,204)"=
>: </span><span style=3D"color:rgb(206,145,120)">ddc0</span><span style=3D"=
color:rgb(204,204,204)">,              </span><span style=3D"color:rgb(86,1=
56,214)">dstport</span><span style=3D"color:rgb(204,204,204)">: </span><spa=
n style=3D"color:rgb(206,145,120)">in_0</span><span style=3D"color:rgb(204,=
204,204)"> }</span></div><div><span style=3D"color:rgb(204,204,204)">  - { =
</span><span style=3D"color:rgb(86,156,214)">srcblk</span><span style=3D"co=
lor:rgb(204,204,204)">: </span><span style=3D"color:rgb(206,145,120)">ddc0<=
/span><span style=3D"color:rgb(204,204,204)">,               </span><span s=
tyle=3D"color:rgb(86,156,214)">srcport</span><span style=3D"color:rgb(204,2=
04,204)">: </span><span style=3D"color:rgb(206,145,120)">out_0</span><span =
style=3D"color:rgb(204,204,204)">, </span><span style=3D"color:rgb(86,156,2=
14)">dstblk</span><span style=3D"color:rgb(204,204,204)">: </span><span sty=
le=3D"color:rgb(206,145,120)">rx_analog_dio_sw0</span><span style=3D"color:=
rgb(204,204,204)">, </span><span style=3D"color:rgb(86,156,214)">dstport</s=
pan><span style=3D"color:rgb(204,204,204)">: </span><span style=3D"color:rg=
b(206,145,120)">in_0</span><span style=3D"color:rgb(204,204,204)"> }  </spa=
n></div><div><span style=3D"color:rgb(204,204,204)">  - { </span><span styl=
e=3D"color:rgb(86,156,214)">srcblk</span><span style=3D"color:rgb(204,204,2=
04)">: </span><span style=3D"color:rgb(206,145,120)">rx_analog_dio_sw0</spa=
n><span style=3D"color:rgb(204,204,204)">,  </span><span style=3D"color:rgb=
(86,156,214)">srcport</span><span style=3D"color:rgb(204,204,204)">: </span=
><span style=3D"color:rgb(206,145,120)">out_0</span><span style=3D"color:rg=
b(204,204,204)">, </span><span style=3D"color:rgb(86,156,214)">dstblk</span=
><span style=3D"color:rgb(204,204,204)">: </span><span style=3D"color:rgb(2=
06,145,120)">ep0</span><span style=3D"color:rgb(204,204,204)">,            =
   </span><span style=3D"color:rgb(86,156,214)">dstport</span><span style=
=3D"color:rgb(204,204,204)">: </span><span style=3D"color:rgb(206,145,120)"=
>in0</span><span style=3D"color:rgb(204,204,204)">  }</span></div></div></d=
iv><div><br></div><div>As a side note, this worked in UHD 3.9.=C2=A0 But th=
at seemed entirely different.=C2=A0 The DDC was a submodule of the Radio bl=
ock.=C2=A0 The output of the DDC was not packetized on the axis protocol at=
 that point.=C2=A0 So it was straightforward to assign the GPIO pins and th=
en the packetization took place later.=C2=A0 In UHD 4.x, the data from the =
DDC is packetized onto the axis data plane already.</div><div><br></div><di=
v>My thought right now is that I need to clock the GPIO pins into a generic=
 FIFO at the DDC rate with my own clock, connect that to the NOC shell and =
let the NOC shell unload the FIFO when the axis data plane is ready.=C2=A0 =
Does this seem like a path forward?=C2=A0 I&#39;m glossing over a ton of th=
e intricacies and making it sound trivial.=C2=A0 Feel free to destroy my pl=
an.<br></div><div><br></div><div>Hopefully this makes my intent a little cl=
earer.</div><div><br></div><div>Thanks you,</div><div>Mark<br></div><div><b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Wed, Nov 6, 2024 at 1:07=E2=80=AFAM Martin Braun &lt;<a href=3D"=
mailto:martin.braun@ettus.com" rel=3D"noreferrer noreferrer" target=3D"_bla=
nk">martin.braun@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div>Hey Mark,</div><div><br></d=
iv><div>maybe I&#39;m being dense, but I don&#39;t understand what it is th=
at your GPIO pins are supposed to be doing when your system is done. Can yo=
u elaborate?</div><div><br></div><div>--M<br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 6, 2024 at 1=
:56=E2=80=AFAM &lt;<a href=3D"mailto:mgannet@gmail.com" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">mgannet@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi everybody!</p><p>I=E2=
=80=99ve written an RFNOC block that assigns the daughterboard rx GPIO pins=
 to the tdata signals that are sent to the SEP.  I=E2=80=99m using the axis=
_data protocol and the block is placed statically between the DDC and the S=
EP.  I use the tvalid and tlast signal from the upstream (DDC) block and th=
e tready signal from the downstream (SEP) block.  I brought the GPIO into t=
he block using appropriate YAML files.  Small modification outside of RFNOC=
 were required to get the pins to RFNOC (bus_int.v, x300_core.v, io_signatu=
res.yml, and x310_bsp.yml).</p><p>The x310 is operated at 1 Msps and there =
are 64 samples per CHDR packet on the axis data bus.  This means that the p=
acket rate on the bus is 1 Msps / 64, or 15.625 kHz.  Period is 64 us.</p><=
p>If I place a signal onto the GPIO pin, everything is fine as long as the =
pulse width is greater than 64 us.   I can run the radio with rx_samples_to=
_file and see the GPIO pins faithfully reproduced in the Ethernet output co=
llected on a PC.</p><p>At pulse widths less than 64 us, the signal is essen=
tially aliased.  I believe it=E2=80=99s because I=E2=80=99m using the tvali=
d, tlast, and tready signals from upstream/downstream blocks with data that=
=E2=80=99s already on the axis data plane.  That data bursts through with 6=
4 samples roughly every 64 us and is clocked with a 200 MHz master clock.  =
I need to clock in the asynchronous GPIO.</p><p>My question:  What is the b=
est way to do this?  Generate my own clock and use a generic FIFO like axi_=
fifo.v to hold the data until the upstream block sends its data and the dow=
nstream block is ready to receive?</p><p>Thank you,</p><p>Mark</p>
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

--0000000000001f1aae06266380b2--

--===============3084634850126412089==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3084634850126412089==--
