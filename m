Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EAE9C25B6
	for <lists+usrp-users@lfdr.de>; Fri,  8 Nov 2024 20:43:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 600D13867E3
	for <lists+usrp-users@lfdr.de>; Fri,  8 Nov 2024 14:43:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731094982; bh=y3mYBFBu0mstzQZShALYKOMtTB46wAiV4aIDFNlTqgc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=MMSgL9O3R0H5d8cPCKypx6FCIHUZj2b1hB3Sfg/FFlQfHVa16w41kWaC0wdeba2vR
	 6KtXEUDKDZwe81TYj9n1eBugQ7XCf2945NoxM3bc+mQyayt7yQIpG9E0iEV4by7vpU
	 DWZozr+zN++mvkxr/XrThh7cTzwt7ru6F78kBJO82aj+Qt+nhd2A4CzDKzTIJDpr7J
	 aBsv/+Cv2Uy+du2E4TmQxhgVyFr65bSBJtKHNJNMiOSoioR5X5KfTfdPqYvKeaYVvN
	 ksN0aEaKVhuykFoy7dkDjtLo+CYD6yiMua3KiqB25VpYaJS7vlS/6jTHgrSiPiTHKp
	 T1/RXVq4NtM0w==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 42DC538674E
	for <usrp-users@lists.ettus.com>; Fri,  8 Nov 2024 14:42:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hN/7aJAh";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a99ebb390a5so666693966b.1
        for <usrp-users@lists.ettus.com>; Fri, 08 Nov 2024 11:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731094938; x=1731699738; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KEs2lsoBtN0vjE6zNyvDq0mtQsbbke1NTwKKUsJYYKQ=;
        b=hN/7aJAhFSqxfT/v8+e2LZrkAa9jIV183QXn5JccYNThZGc3UzJDa90nc7ZJwADwFH
         XXeX8BSZwkX9Kr0C1Lz5zUcUXUcuNm9ALV5GnKUBVJLMlCvurvtykY4alSJYxf9a5t/C
         DrsZbZufy5PuEENNSHcr4vE1vBjENoCMGhQOrmhLKjXNCUXEk95GRbeCuU+A3+dYh1/L
         m/uH83yiMBrGBtPoWqaS35AFBlIIY1Vk/EpQhTCSJNbwAvibovO162ENkTV57JRgtW4Z
         wsKS61wg9M3deh4YlOMbxaomrRPahBRIMqJdueBxLP6MLLuzYmKQwFA+Po4VieZB8oB5
         Ndog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731094938; x=1731699738;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KEs2lsoBtN0vjE6zNyvDq0mtQsbbke1NTwKKUsJYYKQ=;
        b=WtI0SKdkb9cLfsyt15Nwb4wBqXEzWrKc9e1IEv9I25NDBrewmlqzbgKq3eFGsTGX8T
         mmjYZ62eQQtmIXv2EuhTV9PP1y6+QXVkOUS5rB8kgFpziK2ybh/uPKzGuPOPHwb0JXQS
         q26vzMeU09Hd3jSNW0hSylVHXjkYQAJtIRX87EUJATJ1RJtyxtxKvBQwu6p4O/Z+FK7m
         Qb8RmGnf0FkqDZKiOhd7t+mFZ8L0nzJljNCHKbQo3elNZrzyzIG1LNuoeZLLMPeZiSBH
         LOcFZvElDznTjTjHb6KAvZY4vjcUMV3MARXBkpog2a9lKYLpwYA9Y8oTrmu3MxDiCV0D
         q9fA==
X-Gm-Message-State: AOJu0YxPZn/zm5akP/x25iff/I2s6ryfNad53nXof82pC7MdT8eZV76Y
	4hAvHGnFdX/RQGuOo6P9gIOSblg4l60Yvn3VLS0n7KF6Y+xjBtmow19G9jdf8IH+MO4QQ9trWnQ
	rf8I67lHKveNshm9+yu+uD4Ew+x4=
X-Google-Smtp-Source: AGHT+IE4rW1HNvTwddSkjH9oN4eYEmnuaS5GiglkStSYGSB3QIAZCfqEFjDMsHw8DJwwZMhRcGEErMFZ26lq+quqGvo=
X-Received: by 2002:a17:907:5cd:b0:a9a:6c41:50c0 with SMTP id
 a640c23a62f3a-a9eeff982a2mr421023066b.26.1731094937980; Fri, 08 Nov 2024
 11:42:17 -0800 (PST)
MIME-Version: 1.0
References: <evJJismGX8FnN2oBEQQb16M8vEYufO5U0vQHxU0E@lists.ettus.com>
 <CAFOi1A6xauBJvN5oEFThU4+rKZ13b-VPHWVn0hqUGLrmUxTPXw@mail.gmail.com>
 <CABL+oDb6zODNZ-Bpb8ejRVkXMr4=ENDd966FPE2NN0=tAa9QXw@mail.gmail.com>
 <CAFOi1A7=4feXWdiPfuxA7aX5yF0=_3kAGzDNv1ugtB3SXJUb7A@mail.gmail.com>
 <CABL+oDZ_SoW8g9ZkCmygMNZCi66JfSN8QMN3NmgdR1oYeo6hpw@mail.gmail.com> <CAFOi1A6yY6Kx4MG2D4kw_Msof-NmUG6sLKWOqCSZa52ZWrM=xQ@mail.gmail.com>
In-Reply-To: <CAFOi1A6yY6Kx4MG2D4kw_Msof-NmUG6sLKWOqCSZa52ZWrM=xQ@mail.gmail.com>
From: Mark Gannet <mgannet@gmail.com>
Date: Fri, 8 Nov 2024 11:42:06 -0800
Message-ID: <CABL+oDbXVHwz7gbVaJonU+sk6yb7sv-oU7N6DEuNYBjMa_vNpA@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: EPLOBRKI4RIVZTT4743FJSUBIFABSR2O
X-Message-ID-Hash: EPLOBRKI4RIVZTT4743FJSUBIFABSR2O
X-MailFrom: mgannet@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Asynchronous IO in RFNOC on x310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EPLOBRKI4RIVZTT4743FJSUBIFABSR2O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3686112120695410985=="

--===============3686112120695410985==
Content-Type: multipart/alternative; boundary="000000000000d9d77706266bf21e"

--000000000000d9d77706266bf21e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin,

Sorry I called you Marcus earlier, I was probably thinking of Marcus of
GNURadio.  Two things:

1. Is it safe to assume that packets on the data plane are not buffered.
Like if there are 64 samples in the packet, that those 64 samples are the
most current 64 samples.  For instance, if the DDC is operated at 1 MSps,
those 64 samples are from the last 64us approximately?  I understand the
samples are buffered in a FIFO, but the packets go out when they're filled
and aren't buffered any further?  If so, then I can probably fix the missed
latency as you said.

2.  Another way I thought to handle this would be to put my RFNOC block in
front of the Radio block and assign the GPIO pins to the input
radio_rx_data in rfnoc_block_radio.v.  Besides the challenges of getting
this right in the image core YAML and the autogeneration of the rfnoc image
core verilog file, there is the issue of the DDC being downstream.  Is
there any way to get the DDC to function as pure decimation, like a "keep 1
of N" function?  I thought I could set the center frequency to 0 Hz, but
there may be some anti-aliasing filter that would still get in the way.

Thanks,
Mark

On Fri, Nov 8, 2024 at 1:37=E2=80=AFAM Martin Braun <martin.braun@ettus.com=
> wrote:

> Hey Mark,
>
> that all makes sense, but  keep in mind that the DDC comes later in the
> data path than the radio samples, which means the timestamps are "in the
> past" with respect to the actual GPIO events. In theory, we don't even
> guarantee deterministic latency (they could vary by how much in the past
> they are), but in practice, that's not true given you're in the same,
> statically connected data path. That said... if you're putting the GPIO
> values into a FIFO then you can maybe fix the missed latency.
>
> Best of luck,
>
> --M
>
> On Fri, Nov 8, 2024 at 9:29=E2=80=AFAM Mark Gannet <mgannet@gmail.com> wr=
ote:
>
>> Hi Marcus,
>>
>> Thank you. You've been very helpful and confirmed my thoughts.
>>
>> Yes it will be important to run the sampling of the GPIO pin at the same
>> rate produced by the DDC. I didn't fully appreciate that the data was
>> packetized which makes this more difficult than I'd thought.
>>
>> Re: your thoughts
>> - if you have a way to violate sampling theorem and faithfully reproduce
>> signals, you won't have to answer any more emails :)
>> - I'm keeping my block in the data path for 2 reasons: 1) I want it to
>> produce data that matches the timestamp and total bytes of the other
>> channel for the collection period and 2) I want to use the control plane=
 to
>> allow the user to select the standard data flow from the DDC if desired
>> without requiring a different fpga image.
>> - Initially I'll probably hardcode the divide of the radio clock. The en=
d
>> goal will be to use the control plane to pass the decimation factor to a
>> counter so that the divide can adjust depending on the sampling rate.
>>
>> Mark
>>
>>
>>
>>
>> On Thu, Nov 7, 2024, 5:06=E2=80=AFAM Martin Braun <martin.braun@ettus.co=
m> wrote:
>>
>>> Hey Mark,
>>>
>>> OK, I get it, you're basically sampling a GPIO pin instead of using the
>>> analog data. And of course, you have to stick to the sampling theorem i=
f
>>> you want to do that, and you're seeing what happens if you violate it.
>>>
>>> I'm guessing it's important that you run at a clock that's related to
>>> your radio/data clock, so you can match the GPIO pin levels in time to =
the
>>> samples you're receiving on the other channel, right?
>>>
>>> Some thoughts:
>>>
>>> - I have no solution for violating the sampling theorem and not getting
>>> punished :)
>>> - In RFNoC, you don't really need to put your RFNoC block in the data
>>> path. You could have a separate source block that just forwards the
>>> GPIO-data.
>>> - And yes, you want that GPIO-sampling to occur with a sensible clock o=
f
>>> your own. You could use radio_clk, or divide that.
>>>
>>> Not sure if this is helpful.
>>>
>>> --M
>>>
>>> On Wed, Nov 6, 2024 at 7:45=E2=80=AFPM Mark Gannet <mgannet@gmail.com> =
wrote:
>>>
>>>> Hi Martin,
>>>>
>>>> Sorry I should've elaborated on my purpose.
>>>>
>>>> I'm using a device to connect external TTL signals to the RxBasic
>>>> daughterboard GPIO pins on chA of the x310.  I'm stealing an analog ch=
annel
>>>> on the x310 to capture timing on one channel with the analog input on =
the
>>>> 2nd channel.  This data is recorded on the host PC from the 10 GbE
>>>> interface.  I've made an application based on the rx_samples_to_file
>>>> utility that sets the daughterboard RX GPIO banks appropriately and I =
can
>>>> see the GPIO inputs in the Ethernet capture from my utility in the rec=
orded
>>>> binary files (chA and chB).
>>>>
>>>> Assuming a 1 MSps sample rate from the DDC and 64 samples/packet, the
>>>> rate on the axis rfnoc bus is 15.625 kHz (64 us period).  The problems
>>>> arise when the rate on the GPIO pin roughly exceeds half the packet ra=
te on
>>>> the axis data plane.  Basically it gets aliased.  Here are the lines f=
rom
>>>> the HDL file in my block that sits between the DDC and the SEP.  I cre=
ated
>>>> a testbench as well and placed a clock on a GPIO input to see what is
>>>> happening.  Also created/loaded an image to x310 and observed in the
>>>> Ethernet output, which confirmed what I see in the testbench.
>>>>
>>>> assign s_out_axis_tdata =3D { 16'b0, radio_rx_gpio[15:0] };
>>>> assign s_out_axis_tlast =3D m_in_axis_tlast;
>>>> assign s_out_axis_tvalid =3D m_in_axis_tvalid;
>>>> assign s_out_axis_tlength =3D m_in_axis_tlength;
>>>> assign s_out_axis_ttimestamp =3D m_in_axis_ttimestamp;
>>>> assign s_out_axis_thas_time =3D m_in_axis_thas_time;
>>>> assign s_out_axis_tlength =3D m_in_axis_tlength;
>>>> assign s_out_axis_teov =3D m_in_axis_teov;
>>>> assign s_out_axis_teob =3D m_in_axis_teob;
>>>> assign m_in_axis_tready =3D s_out_axis_tready;
>>>>
>>>> assign s_out_axis_tkeep =3D {NUM_PORTS{1'b1}};
>>>>
>>>> Here are the lines from the image core yaml that show how the block is
>>>> connected.
>>>>
>>>> # # radio0(0) to ep0 - RFA RX
>>>> - { srcblk: radio0, srcport: out_0, dstblk: ddc0, dstport: in_0 }
>>>> - { srcblk: ddc0, srcport: out_0, dstblk: rx_analog_dio_sw0, dstport:
>>>> in_0 }
>>>> - { srcblk: rx_analog_dio_sw0, srcport: out_0, dstblk: ep0, dstport:
>>>> in0 }
>>>>
>>>> As a side note, this worked in UHD 3.9.  But that seemed entirely
>>>> different.  The DDC was a submodule of the Radio block.  The output of=
 the
>>>> DDC was not packetized on the axis protocol at that point.  So it was
>>>> straightforward to assign the GPIO pins and then the packetization too=
k
>>>> place later.  In UHD 4.x, the data from the DDC is packetized onto the=
 axis
>>>> data plane already.
>>>>
>>>> My thought right now is that I need to clock the GPIO pins into a
>>>> generic FIFO at the DDC rate with my own clock, connect that to the NO=
C
>>>> shell and let the NOC shell unload the FIFO when the axis data plane i=
s
>>>> ready.  Does this seem like a path forward?  I'm glossing over a ton o=
f the
>>>> intricacies and making it sound trivial.  Feel free to destroy my plan=
.
>>>>
>>>> Hopefully this makes my intent a little clearer.
>>>>
>>>> Thanks you,
>>>> Mark
>>>>
>>>>
>>>> On Wed, Nov 6, 2024 at 1:07=E2=80=AFAM Martin Braun <martin.braun@ettu=
s.com>
>>>> wrote:
>>>>
>>>>> Hey Mark,
>>>>>
>>>>> maybe I'm being dense, but I don't understand what it is that your
>>>>> GPIO pins are supposed to be doing when your system is done. Can you
>>>>> elaborate?
>>>>>
>>>>> --M
>>>>>
>>>>> On Wed, Nov 6, 2024 at 1:56=E2=80=AFAM <mgannet@gmail.com> wrote:
>>>>>
>>>>>> Hi everybody!
>>>>>>
>>>>>> I=E2=80=99ve written an RFNOC block that assigns the daughterboard r=
x GPIO
>>>>>> pins to the tdata signals that are sent to the SEP. I=E2=80=99m usin=
g the axis_data
>>>>>> protocol and the block is placed statically between the DDC and the =
SEP. I
>>>>>> use the tvalid and tlast signal from the upstream (DDC) block and th=
e
>>>>>> tready signal from the downstream (SEP) block. I brought the GPIO in=
to the
>>>>>> block using appropriate YAML files. Small modification outside of RF=
NOC
>>>>>> were required to get the pins to RFNOC (bus_int.v, x300_core.v,
>>>>>> io_signatures.yml, and x310_bsp.yml).
>>>>>>
>>>>>> The x310 is operated at 1 Msps and there are 64 samples per CHDR
>>>>>> packet on the axis data bus. This means that the packet rate on the =
bus is
>>>>>> 1 Msps / 64, or 15.625 kHz. Period is 64 us.
>>>>>>
>>>>>> If I place a signal onto the GPIO pin, everything is fine as long as
>>>>>> the pulse width is greater than 64 us. I can run the radio with
>>>>>> rx_samples_to_file and see the GPIO pins faithfully reproduced in th=
e
>>>>>> Ethernet output collected on a PC.
>>>>>>
>>>>>> At pulse widths less than 64 us, the signal is essentially aliased. =
I
>>>>>> believe it=E2=80=99s because I=E2=80=99m using the tvalid, tlast, an=
d tready signals from
>>>>>> upstream/downstream blocks with data that=E2=80=99s already on the a=
xis data plane.
>>>>>> That data bursts through with 64 samples roughly every 64 us and is =
clocked
>>>>>> with a 200 MHz master clock. I need to clock in the asynchronous GPI=
O.
>>>>>>
>>>>>> My question: What is the best way to do this? Generate my own clock
>>>>>> and use a generic FIFO like axi_fifo.v to hold the data until the up=
stream
>>>>>> block sends its data and the downstream block is ready to receive?
>>>>>>
>>>>>> Thank you,
>>>>>>
>>>>>> Mark
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>
>>>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--000000000000d9d77706266bf21e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Martin,</div><div><br></div><div>Sorry I called yo=
u Marcus earlier, I was probably thinking of Marcus of GNURadio.=C2=A0 Two =
things:</div><div><br></div><div>1. Is it safe to assume that packets on th=
e data plane are not buffered.=C2=A0 Like if there are 64 samples in the pa=
cket, that those 64 samples are the most current 64 samples.=C2=A0 For inst=
ance, if the DDC is operated at 1 MSps, those 64 samples are from the last =
64us approximately?=C2=A0 I understand the samples are buffered in a FIFO, =
but the packets go out when they&#39;re filled and aren&#39;t buffered any =
further?=C2=A0 If so, then I can probably fix the missed latency as you sai=
d.<br></div><div><br></div><div>2.=C2=A0 Another way I thought to handle th=
is would be to put my RFNOC block in front of the Radio block and assign th=
e GPIO pins to the input radio_rx_data in rfnoc_block_radio.v.=C2=A0 Beside=
s the challenges of getting this right in the image core YAML and the autog=
eneration of the rfnoc image core verilog file, there is the issue of the D=
DC being downstream.=C2=A0 Is there any way to get the DDC to function as p=
ure decimation, like a &quot;keep 1 of N&quot; function?=C2=A0 I thought I =
could set the center frequency to 0 Hz, but there may be some anti-aliasing=
 filter that would still get in the way.</div><div><br></div><div>Thanks,</=
div><div>Mark<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Fri, Nov 8, 2024 at 1:37=E2=80=AFAM Martin Braun =
&lt;<a href=3D"mailto:martin.braun@ettus.com">martin.braun@ettus.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div>Hey Mark,</div><div><br></div><div>that all makes sense, but=
=C2=A0 keep in mind that the DDC comes later in the data path than the radi=
o samples, which means the timestamps are &quot;in the past&quot; with resp=
ect to the actual GPIO events. In theory, we don&#39;t even guarantee deter=
ministic latency (they could vary by how much in the past they are), but in=
 practice, that&#39;s not true given you&#39;re in the same, statically con=
nected data path. That said... if you&#39;re putting the GPIO values into a=
 FIFO then you can maybe fix the missed latency.</div><div><br></div><div>B=
est of luck,</div><div><br></div><div>--M<br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 8, 2024 at 9=
:29=E2=80=AFAM Mark Gannet &lt;<a href=3D"mailto:mgannet@gmail.com" target=
=3D"_blank">mgannet@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"auto"><div dir=3D"auto">Hi Marcus,=
</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thank you. You&#39;ve b=
een very helpful and confirmed my thoughts.</div><div dir=3D"auto"><br></di=
v><div>Yes it will be important to run the sampling of the GPIO pin at the =
same rate produced by the DDC. I didn&#39;t fully appreciate that the data =
was packetized which makes this more difficult than I&#39;d thought.</div><=
div dir=3D"auto"><br></div><div dir=3D"auto">Re: your thoughts</div><div di=
r=3D"auto">- if you have a way to violate sampling theorem and faithfully r=
eproduce signals, you won&#39;t have to answer any more emails :)</div><div=
 dir=3D"auto">- I&#39;m keeping my block in the data path for 2 reasons: 1)=
 I want it to produce data that matches the timestamp and total bytes of th=
e other channel for the collection period and 2) I want to use the control =
plane to allow the user to select the standard data flow from the DDC if de=
sired without requiring a different fpga image.</div><div dir=3D"auto">- In=
itially I&#39;ll probably hardcode the divide of the radio clock. The end g=
oal will be to use the control plane to pass the decimation factor to a cou=
nter so that the divide can adjust depending on the sampling rate.</div><di=
v dir=3D"auto"><br></div><div dir=3D"auto">Mark</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"a=
uto"><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"=
gmail_attr">On Thu, Nov 7, 2024, 5:06=E2=80=AFAM Martin Braun &lt;<a href=
=3D"mailto:martin.braun@ettus.com" rel=3D"noreferrer" target=3D"_blank">mar=
tin.braun@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><div>Hey Mark,</div><div><br></div><div=
>OK, I get it, you&#39;re basically sampling a GPIO pin instead of using th=
e analog data. And of course, you have to stick to the sampling theorem if =
you want to do that, and you&#39;re seeing what happens if you violate it.<=
/div><div><br></div><div>I&#39;m guessing it&#39;s important that you run a=
t a clock that&#39;s related to your radio/data clock, so you can match the=
 GPIO pin levels in time to the samples you&#39;re receiving on the other c=
hannel, right?</div><div><br></div><div>Some thoughts:</div><div><br></div>=
<div>- I have no solution for violating the sampling theorem and not gettin=
g punished :)</div><div>- In RFNoC, you don&#39;t really need to put your R=
FNoC block in the data path. You could have a separate source block that ju=
st forwards the GPIO-data.</div><div>- And yes, you want that GPIO-sampling=
 to occur with a sensible clock of your own. You could use radio_clk, or di=
vide that.</div><div><br></div><div>Not sure if this is helpful.</div><div>=
<br></div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Nov 6, 2024 at 7:45=E2=80=AFPM Mark G=
annet &lt;<a href=3D"mailto:mgannet@gmail.com" rel=3D"noreferrer noreferrer=
" target=3D"_blank">mgannet@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Martin,</div>=
<div><br></div><div>Sorry I should&#39;ve elaborated on my purpose.</div><d=
iv><br></div><div>I&#39;m using a device to connect external TTL signals to=
 the RxBasic daughterboard GPIO pins on chA of the x310.=C2=A0 I&#39;m stea=
ling an analog channel on the x310 to capture timing on one channel with th=
e analog input on the 2nd channel.=C2=A0 This data is recorded on the host =
PC from the 10 GbE interface.=C2=A0 I&#39;ve made an application based on t=
he rx_samples_to_file utility that sets the daughterboard RX GPIO banks app=
ropriately and I can see the GPIO inputs in the Ethernet capture from my ut=
ility in the recorded binary files (chA and chB).</div><div><br></div><div>=
Assuming a 1 MSps sample rate from the DDC and 64 samples/packet, the rate =
on the axis rfnoc bus is 15.625 kHz (64 us period).=C2=A0 The problems aris=
e when the rate on the GPIO pin roughly exceeds half the packet rate on the=
 axis data plane.=C2=A0 Basically it gets aliased.=C2=A0 Here are the lines=
 from the HDL file in my block that sits between the DDC and the SEP.=C2=A0=
 I created a testbench as well and placed a clock on a GPIO input to see wh=
at is happening.=C2=A0 Also created/loaded an image to x310 and observed in=
 the Ethernet output, which confirmed what I see in the testbench.<br></div=
><div><br></div><div><div style=3D"color:rgb(204,204,204);background-color:=
rgb(31,31,31);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;=
,monospace;font-weight:normal;font-size:14px;line-height:19px;white-space:p=
re-wrap"><div><span style=3D"color:rgb(204,204,204)">  </span><span style=
=3D"color:rgb(86,156,214)">assign</span><span style=3D"color:rgb(204,204,20=
4)"> s_out_axis_tdata      </span><span style=3D"color:rgb(212,212,212)">=
=3D</span><span style=3D"color:rgb(204,204,204)"> { </span><span style=3D"c=
olor:rgb(181,206,168)">16&#39;b0</span><span style=3D"color:rgb(204,204,204=
)">, radio_rx_gpio[</span><span style=3D"color:rgb(181,206,168)">15</span><=
span style=3D"color:rgb(204,204,204)">:</span><span style=3D"color:rgb(181,=
206,168)">0</span><span style=3D"color:rgb(204,204,204)">] };</span></div><=
div><span style=3D"color:rgb(204,204,204)">  </span><span style=3D"color:rg=
b(86,156,214)">assign</span><span style=3D"color:rgb(204,204,204)"> s_out_a=
xis_tlast      </span><span style=3D"color:rgb(212,212,212)">=3D</span><spa=
n style=3D"color:rgb(204,204,204)"> m_in_axis_tlast;</span></div><div><span=
 style=3D"color:rgb(204,204,204)">  </span><span style=3D"color:rgb(86,156,=
214)">assign</span><span style=3D"color:rgb(204,204,204)"> s_out_axis_tvali=
d     </span><span style=3D"color:rgb(212,212,212)">=3D</span><span style=
=3D"color:rgb(204,204,204)"> m_in_axis_tvalid;</span></div><div><span style=
=3D"color:rgb(204,204,204)">  </span><span style=3D"color:rgb(86,156,214)">=
assign</span><span style=3D"color:rgb(204,204,204)"> s_out_axis_tlength    =
</span><span style=3D"color:rgb(212,212,212)">=3D</span><span style=3D"colo=
r:rgb(204,204,204)"> m_in_axis_tlength;</span></div><div><span style=3D"col=
or:rgb(204,204,204)">  </span><span style=3D"color:rgb(86,156,214)">assign<=
/span><span style=3D"color:rgb(204,204,204)"> s_out_axis_ttimestamp </span>=
<span style=3D"color:rgb(212,212,212)">=3D</span><span style=3D"color:rgb(2=
04,204,204)"> m_in_axis_ttimestamp;</span></div><div><span style=3D"color:r=
gb(204,204,204)">  </span><span style=3D"color:rgb(86,156,214)">assign</spa=
n><span style=3D"color:rgb(204,204,204)"> s_out_axis_thas_time  </span><spa=
n style=3D"color:rgb(212,212,212)">=3D</span><span style=3D"color:rgb(204,2=
04,204)"> m_in_axis_thas_time;</span></div><div><span style=3D"color:rgb(20=
4,204,204)">  </span><span style=3D"color:rgb(86,156,214)">assign</span><sp=
an style=3D"color:rgb(204,204,204)"> s_out_axis_tlength    </span><span sty=
le=3D"color:rgb(212,212,212)">=3D</span><span style=3D"color:rgb(204,204,20=
4)"> m_in_axis_tlength;</span></div><div><span style=3D"color:rgb(204,204,2=
04)">  </span><span style=3D"color:rgb(86,156,214)">assign</span><span styl=
e=3D"color:rgb(204,204,204)"> s_out_axis_teov       </span><span style=3D"c=
olor:rgb(212,212,212)">=3D</span><span style=3D"color:rgb(204,204,204)"> m_=
in_axis_teov;</span></div><div><span style=3D"color:rgb(204,204,204)">  </s=
pan><span style=3D"color:rgb(86,156,214)">assign</span><span style=3D"color=
:rgb(204,204,204)"> s_out_axis_teob       </span><span style=3D"color:rgb(2=
12,212,212)">=3D</span><span style=3D"color:rgb(204,204,204)"> m_in_axis_te=
ob;</span></div><div><span style=3D"color:rgb(204,204,204)">  </span><span =
style=3D"color:rgb(86,156,214)">assign</span><span style=3D"color:rgb(204,2=
04,204)"> m_in_axis_tready      </span><span style=3D"color:rgb(212,212,212=
)">=3D</span><span style=3D"color:rgb(204,204,204)"> s_out_axis_tready;</sp=
an></div><br><div><span style=3D"color:rgb(204,204,204)">  </span><span sty=
le=3D"color:rgb(86,156,214)">assign</span><span style=3D"color:rgb(204,204,=
204)"> s_out_axis_tkeep </span><span style=3D"color:rgb(212,212,212)">=3D</=
span><span style=3D"color:rgb(204,204,204)"> {NUM_PORTS{</span><span style=
=3D"color:rgb(181,206,168)">1&#39;b1</span><span style=3D"color:rgb(204,204=
,204)">}};</span></div></div></div><div><br></div><div>Here are the lines f=
rom the image core yaml that show how the block is connected.</div><div><br=
></div><div><div style=3D"color:rgb(204,204,204);background-color:rgb(31,31=
,31);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospac=
e;font-weight:normal;font-size:14px;line-height:19px;white-space:pre-wrap">=
<div><span style=3D"color:rgb(204,204,204)">  </span><span style=3D"color:r=
gb(106,153,85)"># # radio0(0) to ep0 - RFA RX</span></div><div><span style=
=3D"color:rgb(204,204,204)">  - { </span><span style=3D"color:rgb(86,156,21=
4)">srcblk</span><span style=3D"color:rgb(204,204,204)">: </span><span styl=
e=3D"color:rgb(206,145,120)">radio0</span><span style=3D"color:rgb(204,204,=
204)">,             </span><span style=3D"color:rgb(86,156,214)">srcport</s=
pan><span style=3D"color:rgb(204,204,204)">: </span><span style=3D"color:rg=
b(206,145,120)">out_0</span><span style=3D"color:rgb(204,204,204)">, </span=
><span style=3D"color:rgb(86,156,214)">dstblk</span><span style=3D"color:rg=
b(204,204,204)">: </span><span style=3D"color:rgb(206,145,120)">ddc0</span>=
<span style=3D"color:rgb(204,204,204)">,              </span><span style=3D=
"color:rgb(86,156,214)">dstport</span><span style=3D"color:rgb(204,204,204)=
">: </span><span style=3D"color:rgb(206,145,120)">in_0</span><span style=3D=
"color:rgb(204,204,204)"> }</span></div><div><span style=3D"color:rgb(204,2=
04,204)">  - { </span><span style=3D"color:rgb(86,156,214)">srcblk</span><s=
pan style=3D"color:rgb(204,204,204)">: </span><span style=3D"color:rgb(206,=
145,120)">ddc0</span><span style=3D"color:rgb(204,204,204)">,              =
 </span><span style=3D"color:rgb(86,156,214)">srcport</span><span style=3D"=
color:rgb(204,204,204)">: </span><span style=3D"color:rgb(206,145,120)">out=
_0</span><span style=3D"color:rgb(204,204,204)">, </span><span style=3D"col=
or:rgb(86,156,214)">dstblk</span><span style=3D"color:rgb(204,204,204)">: <=
/span><span style=3D"color:rgb(206,145,120)">rx_analog_dio_sw0</span><span =
style=3D"color:rgb(204,204,204)">, </span><span style=3D"color:rgb(86,156,2=
14)">dstport</span><span style=3D"color:rgb(204,204,204)">: </span><span st=
yle=3D"color:rgb(206,145,120)">in_0</span><span style=3D"color:rgb(204,204,=
204)"> }  </span></div><div><span style=3D"color:rgb(204,204,204)">  - { </=
span><span style=3D"color:rgb(86,156,214)">srcblk</span><span style=3D"colo=
r:rgb(204,204,204)">: </span><span style=3D"color:rgb(206,145,120)">rx_anal=
og_dio_sw0</span><span style=3D"color:rgb(204,204,204)">,  </span><span sty=
le=3D"color:rgb(86,156,214)">srcport</span><span style=3D"color:rgb(204,204=
,204)">: </span><span style=3D"color:rgb(206,145,120)">out_0</span><span st=
yle=3D"color:rgb(204,204,204)">, </span><span style=3D"color:rgb(86,156,214=
)">dstblk</span><span style=3D"color:rgb(204,204,204)">: </span><span style=
=3D"color:rgb(206,145,120)">ep0</span><span style=3D"color:rgb(204,204,204)=
">,               </span><span style=3D"color:rgb(86,156,214)">dstport</spa=
n><span style=3D"color:rgb(204,204,204)">: </span><span style=3D"color:rgb(=
206,145,120)">in0</span><span style=3D"color:rgb(204,204,204)">  }</span></=
div></div></div><div><br></div><div>As a side note, this worked in UHD 3.9.=
=C2=A0 But that seemed entirely different.=C2=A0 The DDC was a submodule of=
 the Radio block.=C2=A0 The output of the DDC was not packetized on the axi=
s protocol at that point.=C2=A0 So it was straightforward to assign the GPI=
O pins and then the packetization took place later.=C2=A0 In UHD 4.x, the d=
ata from the DDC is packetized onto the axis data plane already.</div><div>=
<br></div><div>My thought right now is that I need to clock the GPIO pins i=
nto a generic FIFO at the DDC rate with my own clock, connect that to the N=
OC shell and let the NOC shell unload the FIFO when the axis data plane is =
ready.=C2=A0 Does this seem like a path forward?=C2=A0 I&#39;m glossing ove=
r a ton of the intricacies and making it sound trivial.=C2=A0 Feel free to =
destroy my plan.<br></div><div><br></div><div>Hopefully this makes my inten=
t a little clearer.</div><div><br></div><div>Thanks you,</div><div>Mark<br>=
</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Wed, Nov 6, 2024 at 1:07=E2=80=AFAM Martin Braun &l=
t;<a href=3D"mailto:martin.braun@ettus.com" rel=3D"noreferrer noreferrer" t=
arget=3D"_blank">martin.braun@ettus.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hey Mark,</div=
><div><br></div><div>maybe I&#39;m being dense, but I don&#39;t understand =
what it is that your GPIO pins are supposed to be doing when your system is=
 done. Can you elaborate?</div><div><br></div><div>--M<br></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov=
 6, 2024 at 1:56=E2=80=AFAM &lt;<a href=3D"mailto:mgannet@gmail.com" rel=3D=
"noreferrer noreferrer" target=3D"_blank">mgannet@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi everybody!=
</p><p>I=E2=80=99ve written an RFNOC block that assigns the daughterboard r=
x GPIO pins to the tdata signals that are sent to the SEP.  I=E2=80=99m usi=
ng the axis_data protocol and the block is placed statically between the DD=
C and the SEP.  I use the tvalid and tlast signal from the upstream (DDC) b=
lock and the tready signal from the downstream (SEP) block.  I brought the =
GPIO into the block using appropriate YAML files.  Small modification outsi=
de of RFNOC were required to get the pins to RFNOC (bus_int.v, x300_core.v,=
 io_signatures.yml, and x310_bsp.yml).</p><p>The x310 is operated at 1 Msps=
 and there are 64 samples per CHDR packet on the axis data bus.  This means=
 that the packet rate on the bus is 1 Msps / 64, or 15.625 kHz.  Period is =
64 us.</p><p>If I place a signal onto the GPIO pin, everything is fine as l=
ong as the pulse width is greater than 64 us.   I can run the radio with rx=
_samples_to_file and see the GPIO pins faithfully reproduced in the Etherne=
t output collected on a PC.</p><p>At pulse widths less than 64 us, the sign=
al is essentially aliased.  I believe it=E2=80=99s because I=E2=80=99m usin=
g the tvalid, tlast, and tready signals from upstream/downstream blocks wit=
h data that=E2=80=99s already on the axis data plane.  That data bursts thr=
ough with 64 samples roughly every 64 us and is clocked with a 200 MHz mast=
er clock.  I need to clock in the asynchronous GPIO.</p><p>My question:  Wh=
at is the best way to do this?  Generate my own clock and use a generic FIF=
O like axi_fifo.v to hold the data until the upstream block sends its data =
and the downstream block is ready to receive?</p><p>Thank you,</p><p>Mark</=
p>
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

--000000000000d9d77706266bf21e--

--===============3686112120695410985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3686112120695410985==--
