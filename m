Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADE09C06C2
	for <lists+usrp-users@lfdr.de>; Thu,  7 Nov 2024 14:06:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2537E3862C1
	for <lists+usrp-users@lfdr.de>; Thu,  7 Nov 2024 08:06:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730984791; bh=4agk11BxJ/AFDcusniUdIygqifc8HQWmt6wyjZ7lnIE=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=JYb/d3UznDJ1Bg5LAFoHMXdY6uiK5yuZPg0DEzMtLxhyuXYF4eQRCqIb3+/opCN5D
	 klxAtVnTDHvWzbLiHS84aUAHGdAuMHTDQcvWKtGJ1ADWHi+bOoirA0SYN1vxY0JiKr
	 ki4R2fTmjsMkUrWG+8Zxkbo/bFJjbT4AIZOgiN0jWgoRBNLWhg9l2IZeRkBRE5jRRn
	 D+nuUt5B4oJxr8erthvV3X4Lr9wTFV4OVlgahK2BHyYku9LtSB74QPqbgh/3bPasoY
	 Y9or2i1O2T8WNYAKgftrQ6C4pRR3T9w/Y34TsdhGMt2cqUflSKZXTwsc1TfUU7j52H
	 qyDBRcy5v0Zcg==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 00DC6386164
	for <usrp-users@lists.ettus.com>; Thu,  7 Nov 2024 08:05:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="KZYYxYGS";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5cf04f75e1aso780366a12.1
        for <usrp-users@lists.ettus.com>; Thu, 07 Nov 2024 05:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1730984739; x=1731589539; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MAP8D2/RNmF1Oiz4D/rebBb2IWGpnAEm6OG8zeqBAdI=;
        b=KZYYxYGSq7V07OWgSydkob9DmgJgfysqLGwykJkiA/LBPeFapcpEKI0CAX0bTDYwRp
         gRegvEZPiKYjQtB4anuAO7PPpx3nPWUbpksG6rKKK1B0MSNcR0pvKM/h9F5oT/sYbSAQ
         kCI/GhoOfUb1NBTucc6aQG8LMTKdp82RbzROOpbMsekjXKScI1ONqRD4P6w/Pv/n7+8I
         ntrtztnJLX70izbZPEPAV65fdndg+THVkfBfo6O60C0mht8ZUbnIHl1L2Vd+X6c3zAgW
         XKPaMxBq4AAhkPIdWg8+AVmeAB+XjtFq/4jV3/zqgX5bzXojE6n24A19bm440iTO+Y3Y
         WSJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730984739; x=1731589539;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MAP8D2/RNmF1Oiz4D/rebBb2IWGpnAEm6OG8zeqBAdI=;
        b=DgKoQxruyk25QqR5PU8EOWOrWG9slfFlg4KGk9kj3I/sV1MS1sQ5kit7eWUU8b8f1E
         +BYm9AqiL28O7jw4fHmX04TA1pAGlil5gaRZPyxeLfdCfa6cbGRgtQipS3NZqI1Yp55c
         BMT5Ld8LKxZveQYEJUAr2AbJ1RU/70fc5OIjAMuy2rWd//A+NqR3fI2+FgnETpu/Buso
         hes993RqPJhaauCLTN4bvTwFa0bobw5aY2q4cZ8L0TockxEcqwVNdNo45qyPX8UDqlVa
         PHogJjE58jruu1LJiurVVFoSeM1sgagVwVfCtH0v1wPEXLGlXNRSBfjWFxe6GMQxmtMk
         T8Ag==
X-Gm-Message-State: AOJu0YxzyHz1el97rxxIYYp2Hq9tkdY+guqTOTLdD3Ao+soJqf8LgMkj
	isi6cZLF/T5UMXHmaZv4kNTpl4ZMcWirSDN6ZXgUkq43Xu3IwAfTtQjZKCxW54F2fLN90gxrBo7
	mntf5ftbpVFpV8b5oPZBf6HNGyjjxrpXHmmo5HYya8uGQcFryXw4=
X-Google-Smtp-Source: AGHT+IFRG7GHvViiYf07g4DYl8SYIr3j68/+XRdnyJKog5u1eYxViE7VOXtLeW+APpePTTO/hoUqMvrmS/iXeIf/Sso=
X-Received: by 2002:a05:6402:4416:b0:5cd:5499:8dbb with SMTP id
 4fb4d7f45d1cf-5cd5499983amr24912840a12.20.1730984739465; Thu, 07 Nov 2024
 05:05:39 -0800 (PST)
MIME-Version: 1.0
References: <evJJismGX8FnN2oBEQQb16M8vEYufO5U0vQHxU0E@lists.ettus.com>
 <CAFOi1A6xauBJvN5oEFThU4+rKZ13b-VPHWVn0hqUGLrmUxTPXw@mail.gmail.com> <CABL+oDb6zODNZ-Bpb8ejRVkXMr4=ENDd966FPE2NN0=tAa9QXw@mail.gmail.com>
In-Reply-To: <CABL+oDb6zODNZ-Bpb8ejRVkXMr4=ENDd966FPE2NN0=tAa9QXw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 7 Nov 2024 14:05:28 +0100
Message-ID: <CAFOi1A7=4feXWdiPfuxA7aX5yF0=_3kAGzDNv1ugtB3SXJUb7A@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: IJ5KRPT2XI6E46JPGSLSM74ZFOKN4Q2Z
X-Message-ID-Hash: IJ5KRPT2XI6E46JPGSLSM74ZFOKN4Q2Z
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Asynchronous IO in RFNOC on x310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IJ5KRPT2XI6E46JPGSLSM74ZFOKN4Q2Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9062134762742453207=="

--===============9062134762742453207==
Content-Type: multipart/alternative; boundary="0000000000008210ce0626524a7d"

--0000000000008210ce0626524a7d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Mark,

OK, I get it, you're basically sampling a GPIO pin instead of using the
analog data. And of course, you have to stick to the sampling theorem if
you want to do that, and you're seeing what happens if you violate it.

I'm guessing it's important that you run at a clock that's related to your
radio/data clock, so you can match the GPIO pin levels in time to the
samples you're receiving on the other channel, right?

Some thoughts:

- I have no solution for violating the sampling theorem and not getting
punished :)
- In RFNoC, you don't really need to put your RFNoC block in the data path.
You could have a separate source block that just forwards the GPIO-data.
- And yes, you want that GPIO-sampling to occur with a sensible clock of
your own. You could use radio_clk, or divide that.

Not sure if this is helpful.

--M

On Wed, Nov 6, 2024 at 7:45=E2=80=AFPM Mark Gannet <mgannet@gmail.com> wrot=
e:

> Hi Martin,
>
> Sorry I should've elaborated on my purpose.
>
> I'm using a device to connect external TTL signals to the RxBasic
> daughterboard GPIO pins on chA of the x310.  I'm stealing an analog chann=
el
> on the x310 to capture timing on one channel with the analog input on the
> 2nd channel.  This data is recorded on the host PC from the 10 GbE
> interface.  I've made an application based on the rx_samples_to_file
> utility that sets the daughterboard RX GPIO banks appropriately and I can
> see the GPIO inputs in the Ethernet capture from my utility in the record=
ed
> binary files (chA and chB).
>
> Assuming a 1 MSps sample rate from the DDC and 64 samples/packet, the rat=
e
> on the axis rfnoc bus is 15.625 kHz (64 us period).  The problems arise
> when the rate on the GPIO pin roughly exceeds half the packet rate on the
> axis data plane.  Basically it gets aliased.  Here are the lines from the
> HDL file in my block that sits between the DDC and the SEP.  I created a
> testbench as well and placed a clock on a GPIO input to see what is
> happening.  Also created/loaded an image to x310 and observed in the
> Ethernet output, which confirmed what I see in the testbench.
>
> assign s_out_axis_tdata =3D { 16'b0, radio_rx_gpio[15:0] };
> assign s_out_axis_tlast =3D m_in_axis_tlast;
> assign s_out_axis_tvalid =3D m_in_axis_tvalid;
> assign s_out_axis_tlength =3D m_in_axis_tlength;
> assign s_out_axis_ttimestamp =3D m_in_axis_ttimestamp;
> assign s_out_axis_thas_time =3D m_in_axis_thas_time;
> assign s_out_axis_tlength =3D m_in_axis_tlength;
> assign s_out_axis_teov =3D m_in_axis_teov;
> assign s_out_axis_teob =3D m_in_axis_teob;
> assign m_in_axis_tready =3D s_out_axis_tready;
>
> assign s_out_axis_tkeep =3D {NUM_PORTS{1'b1}};
>
> Here are the lines from the image core yaml that show how the block is
> connected.
>
> # # radio0(0) to ep0 - RFA RX
> - { srcblk: radio0, srcport: out_0, dstblk: ddc0, dstport: in_0 }
> - { srcblk: ddc0, srcport: out_0, dstblk: rx_analog_dio_sw0, dstport: in_=
0
> }
> - { srcblk: rx_analog_dio_sw0, srcport: out_0, dstblk: ep0, dstport: in0 =
}
>
> As a side note, this worked in UHD 3.9.  But that seemed entirely
> different.  The DDC was a submodule of the Radio block.  The output of th=
e
> DDC was not packetized on the axis protocol at that point.  So it was
> straightforward to assign the GPIO pins and then the packetization took
> place later.  In UHD 4.x, the data from the DDC is packetized onto the ax=
is
> data plane already.
>
> My thought right now is that I need to clock the GPIO pins into a generic
> FIFO at the DDC rate with my own clock, connect that to the NOC shell and
> let the NOC shell unload the FIFO when the axis data plane is ready.  Doe=
s
> this seem like a path forward?  I'm glossing over a ton of the intricacie=
s
> and making it sound trivial.  Feel free to destroy my plan.
>
> Hopefully this makes my intent a little clearer.
>
> Thanks you,
> Mark
>
>
> On Wed, Nov 6, 2024 at 1:07=E2=80=AFAM Martin Braun <martin.braun@ettus.c=
om>
> wrote:
>
>> Hey Mark,
>>
>> maybe I'm being dense, but I don't understand what it is that your GPIO
>> pins are supposed to be doing when your system is done. Can you elaborat=
e?
>>
>> --M
>>
>> On Wed, Nov 6, 2024 at 1:56=E2=80=AFAM <mgannet@gmail.com> wrote:
>>
>>> Hi everybody!
>>>
>>> I=E2=80=99ve written an RFNOC block that assigns the daughterboard rx G=
PIO pins
>>> to the tdata signals that are sent to the SEP. I=E2=80=99m using the ax=
is_data
>>> protocol and the block is placed statically between the DDC and the SEP=
. I
>>> use the tvalid and tlast signal from the upstream (DDC) block and the
>>> tready signal from the downstream (SEP) block. I brought the GPIO into =
the
>>> block using appropriate YAML files. Small modification outside of RFNOC
>>> were required to get the pins to RFNOC (bus_int.v, x300_core.v,
>>> io_signatures.yml, and x310_bsp.yml).
>>>
>>> The x310 is operated at 1 Msps and there are 64 samples per CHDR packet
>>> on the axis data bus. This means that the packet rate on the bus is 1 M=
sps
>>> / 64, or 15.625 kHz. Period is 64 us.
>>>
>>> If I place a signal onto the GPIO pin, everything is fine as long as th=
e
>>> pulse width is greater than 64 us. I can run the radio with
>>> rx_samples_to_file and see the GPIO pins faithfully reproduced in the
>>> Ethernet output collected on a PC.
>>>
>>> At pulse widths less than 64 us, the signal is essentially aliased. I
>>> believe it=E2=80=99s because I=E2=80=99m using the tvalid, tlast, and t=
ready signals from
>>> upstream/downstream blocks with data that=E2=80=99s already on the axis=
 data plane.
>>> That data bursts through with 64 samples roughly every 64 us and is clo=
cked
>>> with a 200 MHz master clock. I need to clock in the asynchronous GPIO.
>>>
>>> My question: What is the best way to do this? Generate my own clock and
>>> use a generic FIFO like axi_fifo.v to hold the data until the upstream
>>> block sends its data and the downstream block is ready to receive?
>>>
>>> Thank you,
>>>
>>> Mark
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--0000000000008210ce0626524a7d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Mark,</div><div><br></div><div>OK, I get it, you&=
#39;re basically sampling a GPIO pin instead of using the analog data. And =
of course, you have to stick to the sampling theorem if you want to do that=
, and you&#39;re seeing what happens if you violate it.</div><div><br></div=
><div>I&#39;m guessing it&#39;s important that you run at a clock that&#39;=
s related to your radio/data clock, so you can match the GPIO pin levels in=
 time to the samples you&#39;re receiving on the other channel, right?</div=
><div><br></div><div>Some thoughts:</div><div><br></div><div>- I have no so=
lution for violating the sampling theorem and not getting punished :)</div>=
<div>- In RFNoC, you don&#39;t really need to put your RFNoC block in the d=
ata path. You could have a separate source block that just forwards the GPI=
O-data.</div><div>- And yes, you want that GPIO-sampling to occur with a se=
nsible clock of your own. You could use radio_clk, or divide that.</div><di=
v><br></div><div>Not sure if this is helpful.</div><div><br></div><div>--M<=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Wed, Nov 6, 2024 at 7:45=E2=80=AFPM Mark Gannet &lt;<a href=3D"=
mailto:mgannet@gmail.com">mgannet@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Martin,=
</div><div><br></div><div>Sorry I should&#39;ve elaborated on my purpose.</=
div><div><br></div><div>I&#39;m using a device to connect external TTL sign=
als to the RxBasic daughterboard GPIO pins on chA of the x310.=C2=A0 I&#39;=
m stealing an analog channel on the x310 to capture timing on one channel w=
ith the analog input on the 2nd channel.=C2=A0 This data is recorded on the=
 host PC from the 10 GbE interface.=C2=A0 I&#39;ve made an application base=
d on the rx_samples_to_file utility that sets the daughterboard RX GPIO ban=
ks appropriately and I can see the GPIO inputs in the Ethernet capture from=
 my utility in the recorded binary files (chA and chB).</div><div><br></div=
><div>Assuming a 1 MSps sample rate from the DDC and 64 samples/packet, the=
 rate on the axis rfnoc bus is 15.625 kHz (64 us period).=C2=A0 The problem=
s arise when the rate on the GPIO pin roughly exceeds half the packet rate =
on the axis data plane.=C2=A0 Basically it gets aliased.=C2=A0 Here are the=
 lines from the HDL file in my block that sits between the DDC and the SEP.=
=C2=A0 I created a testbench as well and placed a clock on a GPIO input to =
see what is happening.=C2=A0 Also created/loaded an image to x310 and obser=
ved in the Ethernet output, which confirmed what I see in the testbench.<br=
></div><div><br></div><div><div style=3D"color:rgb(204,204,204);background-=
color:rgb(31,31,31);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace=
&quot;,monospace;font-weight:normal;font-size:14px;line-height:19px;white-s=
pace:pre-wrap"><div><span style=3D"color:rgb(204,204,204)">  </span><span s=
tyle=3D"color:rgb(86,156,214)">assign</span><span style=3D"color:rgb(204,20=
4,204)"> s_out_axis_tdata      </span><span style=3D"color:rgb(212,212,212)=
">=3D</span><span style=3D"color:rgb(204,204,204)"> { </span><span style=3D=
"color:rgb(181,206,168)">16&#39;b0</span><span style=3D"color:rgb(204,204,2=
04)">, radio_rx_gpio[</span><span style=3D"color:rgb(181,206,168)">15</span=
><span style=3D"color:rgb(204,204,204)">:</span><span style=3D"color:rgb(18=
1,206,168)">0</span><span style=3D"color:rgb(204,204,204)">] };</span></div=
><div><span style=3D"color:rgb(204,204,204)">  </span><span style=3D"color:=
rgb(86,156,214)">assign</span><span style=3D"color:rgb(204,204,204)"> s_out=
_axis_tlast      </span><span style=3D"color:rgb(212,212,212)">=3D</span><s=
pan style=3D"color:rgb(204,204,204)"> m_in_axis_tlast;</span></div><div><sp=
an style=3D"color:rgb(204,204,204)">  </span><span style=3D"color:rgb(86,15=
6,214)">assign</span><span style=3D"color:rgb(204,204,204)"> s_out_axis_tva=
lid     </span><span style=3D"color:rgb(212,212,212)">=3D</span><span style=
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
t;<a href=3D"mailto:martin.braun@ettus.com" target=3D"_blank">martin.braun@=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>Hey Mark,</div><div><br></div><div>maybe I=
&#39;m being dense, but I don&#39;t understand what it is that your GPIO pi=
ns are supposed to be doing when your system is done. Can you elaborate?</d=
iv><div><br></div><div>--M<br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 6, 2024 at 1:56=E2=80=AFAM =
&lt;<a href=3D"mailto:mgannet@gmail.com" target=3D"_blank">mgannet@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><p>Hi everybody!</p><p>I=E2=80=99ve written an RFNOC block that assigns th=
e daughterboard rx GPIO pins to the tdata signals that are sent to the SEP.=
  I=E2=80=99m using the axis_data protocol and the block is placed statical=
ly between the DDC and the SEP.  I use the tvalid and tlast signal from the=
 upstream (DDC) block and the tready signal from the downstream (SEP) block=
.  I brought the GPIO into the block using appropriate YAML files.  Small m=
odification outside of RFNOC were required to get the pins to RFNOC (bus_in=
t.v, x300_core.v, io_signatures.yml, and x310_bsp.yml).</p><p>The x310 is o=
perated at 1 Msps and there are 64 samples per CHDR packet on the axis data=
 bus.  This means that the packet rate on the bus is 1 Msps / 64, or 15.625=
 kHz.  Period is 64 us.</p><p>If I place a signal onto the GPIO pin, everyt=
hing is fine as long as the pulse width is greater than 64 us.   I can run =
the radio with rx_samples_to_file and see the GPIO pins faithfully reproduc=
ed in the Ethernet output collected on a PC.</p><p>At pulse widths less tha=
n 64 us, the signal is essentially aliased.  I believe it=E2=80=99s because=
 I=E2=80=99m using the tvalid, tlast, and tready signals from upstream/down=
stream blocks with data that=E2=80=99s already on the axis data plane.  Tha=
t data bursts through with 64 samples roughly every 64 us and is clocked wi=
th a 200 MHz master clock.  I need to clock in the asynchronous GPIO.</p><p=
>My question:  What is the best way to do this?  Generate my own clock and =
use a generic FIFO like axi_fifo.v to hold the data until the upstream bloc=
k sends its data and the downstream block is ready to receive?</p><p>Thank =
you,</p><p>Mark</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000008210ce0626524a7d--

--===============9062134762742453207==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9062134762742453207==--
