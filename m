Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 066F79BF586
	for <lists+usrp-users@lfdr.de>; Wed,  6 Nov 2024 19:46:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 74561385A45
	for <lists+usrp-users@lfdr.de>; Wed,  6 Nov 2024 13:46:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730918778; bh=SzOr6x3uSmEFrY2z6vNqkWjLhptKfDB1BUgq5wW/4uY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=cTrtru4+IBRNE6CK1EvVqyckYH39/kiT9zZKd22PDd0YVd/YUkFIZ2y4luHCAUy1h
	 WVSpqFUb2VytaV940oBoatSiZoWMBfIo/OlO74q4Bbqk74JekOiFVo7NUcPWKvaVbR
	 vC4nJ0oy3zpdz0s6ORqCkEYTtuDBLMx2/vO0b2IgquHZ8aqZSugLl8YpYbJtnR/qSn
	 kt1+kLRge/SA9sjehPqc9bSQhQFdMRSqKVH3pitA4FshcWMnOa4d87z1ZDza3kCJD2
	 P2S7M3gXfeUSThPWL84O6x0ZJk8gprSypLqQJEwSgoXUuu5DavJYiXxcqOaTNYn9yk
	 u0+zGq8odfOGA==
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 458CE385655
	for <usrp-users@lists.ettus.com>; Wed,  6 Nov 2024 13:45:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YKSjfRPs";
	dkim-atps=neutral
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-539f2b95775so40965e87.1
        for <usrp-users@lists.ettus.com>; Wed, 06 Nov 2024 10:45:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730918736; x=1731523536; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WTgopIknuHsri6WzyPJ3wqTY63SJLSIhr8VwNijxH1o=;
        b=YKSjfRPsilgf8qpgxn8JX4HmRC1UPJXzdlTeB43pYXsGEPvcCzhqaUSzkcdwIG902i
         I3yVBJdHOiicsr01AM65e80X2s50NxESXIPi0f6oIPl79TbtG1WDfakS5NzNqQ/3qstO
         mSyWqThxCcXl6EnZM4f1kJJjG03foLc1v0muqos/jcy0W+ynmeEi+G4FvRUja1gSl1HQ
         8DZoYCDHuDtBcomNVCYvhveGIBrIzArmzDj4vo9bTimt2422VZaKpMIWxB9dYmpYE3Fs
         V6Mxr6v7Aj9bD4S8zlFwM06rqsurwDZyM4Ayr4O1Ldd4Aam48ndojdrm2YMIYRJ9Z9VF
         61TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730918736; x=1731523536;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WTgopIknuHsri6WzyPJ3wqTY63SJLSIhr8VwNijxH1o=;
        b=C1CgBN5mmXCoUPPWAPyaT+1jLK5znp5EkmDa+ULg/c1zcN/AMt7QAp5T4p6OXonCt8
         4bogBpZFGUxnp6bXmgwKzysbajExnpJkxoK6GectlEvIJCvy/Gc9dA08QgQkUrz6BNur
         BvhJe3yAwEmW8CXKYgzqCzJbr6C3b0SpK9ED1uc/Dy1Tz6D3+FWami2Qb1IRuqSKs9Mm
         yK6qdGhN+v7e01GWxfFu6O/rQgj2ZI2upadh+3k2GoBYnosEUSZdg0Wx/80SNX7FrPrw
         HOTYrizwMzwQL1VYQQXrzAUBvVjegGRdLbITyOPRIfWXRgEPVyf3ITHew3WlGidC4Vjp
         uHVQ==
X-Gm-Message-State: AOJu0YxYpGZctGzfXhyMOOSJdWuc9dTCpwPf7TKtgG0wufMMcDEsGpBU
	tQFOIl0DsjAuc30oxk4C1Kv9xbgJIIkb0kx6Pn/aRYmrqKRaptW+c4+FYJG6q19NoTmVWWZxX0+
	GcuLGC4XaH3TUaD2P4fB0TRNidhubs660
X-Google-Smtp-Source: AGHT+IGLtGpq5J6C50Ft8WuwF6LENQvR8P/m4XWYPScCYHxKg0Z+2EDL/ZzRy+C1Dtmt4BL6M7HSWGRy6wwp/z2EbAc=
X-Received: by 2002:a05:6512:acf:b0:533:483f:9562 with SMTP id
 2adb3069b0e04-53d65e0b459mr16676489e87.42.1730918735537; Wed, 06 Nov 2024
 10:45:35 -0800 (PST)
MIME-Version: 1.0
References: <evJJismGX8FnN2oBEQQb16M8vEYufO5U0vQHxU0E@lists.ettus.com> <CAFOi1A6xauBJvN5oEFThU4+rKZ13b-VPHWVn0hqUGLrmUxTPXw@mail.gmail.com>
In-Reply-To: <CAFOi1A6xauBJvN5oEFThU4+rKZ13b-VPHWVn0hqUGLrmUxTPXw@mail.gmail.com>
From: Mark Gannet <mgannet@gmail.com>
Date: Wed, 6 Nov 2024 10:45:24 -0800
Message-ID: <CABL+oDb6zODNZ-Bpb8ejRVkXMr4=ENDd966FPE2NN0=tAa9QXw@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: FFDYQ5L4UFDZZ3QF6Z7LBUMSVROOSIT5
X-Message-ID-Hash: FFDYQ5L4UFDZZ3QF6Z7LBUMSVROOSIT5
X-MailFrom: mgannet@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Asynchronous IO in RFNOC on x310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FFDYQ5L4UFDZZ3QF6Z7LBUMSVROOSIT5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8406692815546214449=="

--===============8406692815546214449==
Content-Type: multipart/alternative; boundary="0000000000005df110062642ec1a"

--0000000000005df110062642ec1a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin,

Sorry I should've elaborated on my purpose.

I'm using a device to connect external TTL signals to the RxBasic
daughterboard GPIO pins on chA of the x310.  I'm stealing an analog channel
on the x310 to capture timing on one channel with the analog input on the
2nd channel.  This data is recorded on the host PC from the 10 GbE
interface.  I've made an application based on the rx_samples_to_file
utility that sets the daughterboard RX GPIO banks appropriately and I can
see the GPIO inputs in the Ethernet capture from my utility in the recorded
binary files (chA and chB).

Assuming a 1 MSps sample rate from the DDC and 64 samples/packet, the rate
on the axis rfnoc bus is 15.625 kHz (64 us period).  The problems arise
when the rate on the GPIO pin roughly exceeds half the packet rate on the
axis data plane.  Basically it gets aliased.  Here are the lines from the
HDL file in my block that sits between the DDC and the SEP.  I created a
testbench as well and placed a clock on a GPIO input to see what is
happening.  Also created/loaded an image to x310 and observed in the
Ethernet output, which confirmed what I see in the testbench.

assign s_out_axis_tdata =3D { 16'b0, radio_rx_gpio[15:0] };
assign s_out_axis_tlast =3D m_in_axis_tlast;
assign s_out_axis_tvalid =3D m_in_axis_tvalid;
assign s_out_axis_tlength =3D m_in_axis_tlength;
assign s_out_axis_ttimestamp =3D m_in_axis_ttimestamp;
assign s_out_axis_thas_time =3D m_in_axis_thas_time;
assign s_out_axis_tlength =3D m_in_axis_tlength;
assign s_out_axis_teov =3D m_in_axis_teov;
assign s_out_axis_teob =3D m_in_axis_teob;
assign m_in_axis_tready =3D s_out_axis_tready;

assign s_out_axis_tkeep =3D {NUM_PORTS{1'b1}};

Here are the lines from the image core yaml that show how the block is
connected.

# # radio0(0) to ep0 - RFA RX
- { srcblk: radio0, srcport: out_0, dstblk: ddc0, dstport: in_0 }
- { srcblk: ddc0, srcport: out_0, dstblk: rx_analog_dio_sw0, dstport: in_0
}
- { srcblk: rx_analog_dio_sw0, srcport: out_0, dstblk: ep0, dstport: in0 }

As a side note, this worked in UHD 3.9.  But that seemed entirely
different.  The DDC was a submodule of the Radio block.  The output of the
DDC was not packetized on the axis protocol at that point.  So it was
straightforward to assign the GPIO pins and then the packetization took
place later.  In UHD 4.x, the data from the DDC is packetized onto the axis
data plane already.

My thought right now is that I need to clock the GPIO pins into a generic
FIFO at the DDC rate with my own clock, connect that to the NOC shell and
let the NOC shell unload the FIFO when the axis data plane is ready.  Does
this seem like a path forward?  I'm glossing over a ton of the intricacies
and making it sound trivial.  Feel free to destroy my plan.

Hopefully this makes my intent a little clearer.

Thanks you,
Mark


On Wed, Nov 6, 2024 at 1:07=E2=80=AFAM Martin Braun <martin.braun@ettus.com=
> wrote:

> Hey Mark,
>
> maybe I'm being dense, but I don't understand what it is that your GPIO
> pins are supposed to be doing when your system is done. Can you elaborate=
?
>
> --M
>
> On Wed, Nov 6, 2024 at 1:56=E2=80=AFAM <mgannet@gmail.com> wrote:
>
>> Hi everybody!
>>
>> I=E2=80=99ve written an RFNOC block that assigns the daughterboard rx GP=
IO pins
>> to the tdata signals that are sent to the SEP. I=E2=80=99m using the axi=
s_data
>> protocol and the block is placed statically between the DDC and the SEP.=
 I
>> use the tvalid and tlast signal from the upstream (DDC) block and the
>> tready signal from the downstream (SEP) block. I brought the GPIO into t=
he
>> block using appropriate YAML files. Small modification outside of RFNOC
>> were required to get the pins to RFNOC (bus_int.v, x300_core.v,
>> io_signatures.yml, and x310_bsp.yml).
>>
>> The x310 is operated at 1 Msps and there are 64 samples per CHDR packet
>> on the axis data bus. This means that the packet rate on the bus is 1 Ms=
ps
>> / 64, or 15.625 kHz. Period is 64 us.
>>
>> If I place a signal onto the GPIO pin, everything is fine as long as the
>> pulse width is greater than 64 us. I can run the radio with
>> rx_samples_to_file and see the GPIO pins faithfully reproduced in the
>> Ethernet output collected on a PC.
>>
>> At pulse widths less than 64 us, the signal is essentially aliased. I
>> believe it=E2=80=99s because I=E2=80=99m using the tvalid, tlast, and tr=
eady signals from
>> upstream/downstream blocks with data that=E2=80=99s already on the axis =
data plane.
>> That data bursts through with 64 samples roughly every 64 us and is cloc=
ked
>> with a 200 MHz master clock. I need to clock in the asynchronous GPIO.
>>
>> My question: What is the best way to do this? Generate my own clock and
>> use a generic FIFO like axi_fifo.v to hold the data until the upstream
>> block sends its data and the downstream block is ready to receive?
>>
>> Thank you,
>>
>> Mark
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000005df110062642ec1a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Martin,</div><div><br></div><div>Sorry I should&#3=
9;ve elaborated on my purpose.</div><div><br></div><div>I&#39;m using a dev=
ice to connect external TTL signals to the RxBasic daughterboard GPIO pins =
on chA of the x310.=C2=A0 I&#39;m stealing an analog channel on the x310 to=
 capture timing on one channel with the analog input on the 2nd channel.=C2=
=A0 This data is recorded on the host PC from the 10 GbE interface.=C2=A0 I=
&#39;ve made an application based on the rx_samples_to_file utility that se=
ts the daughterboard RX GPIO banks appropriately and I can see the GPIO inp=
uts in the Ethernet capture from my utility in the recorded binary files (c=
hA and chB).</div><div><br></div><div>Assuming a 1 MSps sample rate from th=
e DDC and 64 samples/packet, the rate on the axis rfnoc bus is 15.625 kHz (=
64 us period).=C2=A0 The problems arise when the rate on the GPIO pin rough=
ly exceeds half the packet rate on the axis data plane.=C2=A0 Basically it =
gets aliased.=C2=A0 Here are the lines from the HDL file in my block that s=
its between the DDC and the SEP.=C2=A0 I created a testbench as well and pl=
aced a clock on a GPIO input to see what is happening.=C2=A0 Also created/l=
oaded an image to x310 and observed in the Ethernet output, which confirmed=
 what I see in the testbench.<br></div><div><br></div><div><div style=3D"co=
lor:rgb(204,204,204);background-color:rgb(31,31,31);font-family:&quot;Droid=
 Sans Mono&quot;,&quot;monospace&quot;,monospace;font-weight:normal;font-si=
ze:14px;line-height:19px;white-space:pre"><div><span style=3D"color:rgb(204=
,204,204)">  </span><span style=3D"color:rgb(86,156,214)">assign</span><spa=
n style=3D"color:rgb(204,204,204)"> s_out_axis_tdata      </span><span styl=
e=3D"color:rgb(212,212,212)">=3D</span><span style=3D"color:rgb(204,204,204=
)"> { </span><span style=3D"color:rgb(181,206,168)">16&#39;b0</span><span s=
tyle=3D"color:rgb(204,204,204)">, radio_rx_gpio[</span><span style=3D"color=
:rgb(181,206,168)">15</span><span style=3D"color:rgb(204,204,204)">:</span>=
<span style=3D"color:rgb(181,206,168)">0</span><span style=3D"color:rgb(204=
,204,204)">] };</span></div><div><span style=3D"color:rgb(204,204,204)">  <=
/span><span style=3D"color:rgb(86,156,214)">assign</span><span style=3D"col=
or:rgb(204,204,204)"> s_out_axis_tlast      </span><span style=3D"color:rgb=
(212,212,212)">=3D</span><span style=3D"color:rgb(204,204,204)"> m_in_axis_=
tlast;</span></div><div><span style=3D"color:rgb(204,204,204)">  </span><sp=
an style=3D"color:rgb(86,156,214)">assign</span><span style=3D"color:rgb(20=
4,204,204)"> s_out_axis_tvalid     </span><span style=3D"color:rgb(212,212,=
212)">=3D</span><span style=3D"color:rgb(204,204,204)"> m_in_axis_tvalid;</=
span></div><div><span style=3D"color:rgb(204,204,204)">  </span><span style=
=3D"color:rgb(86,156,214)">assign</span><span style=3D"color:rgb(204,204,20=
4)"> s_out_axis_tlength    </span><span style=3D"color:rgb(212,212,212)">=
=3D</span><span style=3D"color:rgb(204,204,204)"> m_in_axis_tlength;</span>=
</div><div><span style=3D"color:rgb(204,204,204)">  </span><span style=3D"c=
olor:rgb(86,156,214)">assign</span><span style=3D"color:rgb(204,204,204)"> =
s_out_axis_ttimestamp </span><span style=3D"color:rgb(212,212,212)">=3D</sp=
an><span style=3D"color:rgb(204,204,204)"> m_in_axis_ttimestamp;</span></di=
v><div><span style=3D"color:rgb(204,204,204)">  </span><span style=3D"color=
:rgb(86,156,214)">assign</span><span style=3D"color:rgb(204,204,204)"> s_ou=
t_axis_thas_time  </span><span style=3D"color:rgb(212,212,212)">=3D</span><=
span style=3D"color:rgb(204,204,204)"> m_in_axis_thas_time;</span></div><di=
v><span style=3D"color:rgb(204,204,204)">  </span><span style=3D"color:rgb(=
86,156,214)">assign</span><span style=3D"color:rgb(204,204,204)"> s_out_axi=
s_tlength    </span><span style=3D"color:rgb(212,212,212)">=3D</span><span =
style=3D"color:rgb(204,204,204)"> m_in_axis_tlength;</span></div><div><span=
 style=3D"color:rgb(204,204,204)">  </span><span style=3D"color:rgb(86,156,=
214)">assign</span><span style=3D"color:rgb(204,204,204)"> s_out_axis_teov =
      </span><span style=3D"color:rgb(212,212,212)">=3D</span><span style=
=3D"color:rgb(204,204,204)"> m_in_axis_teov;</span></div><div><span style=
=3D"color:rgb(204,204,204)">  </span><span style=3D"color:rgb(86,156,214)">=
assign</span><span style=3D"color:rgb(204,204,204)"> s_out_axis_teob       =
</span><span style=3D"color:rgb(212,212,212)">=3D</span><span style=3D"colo=
r:rgb(204,204,204)"> m_in_axis_teob;</span></div><div><span style=3D"color:=
rgb(204,204,204)">  </span><span style=3D"color:rgb(86,156,214)">assign</sp=
an><span style=3D"color:rgb(204,204,204)"> m_in_axis_tready      </span><sp=
an style=3D"color:rgb(212,212,212)">=3D</span><span style=3D"color:rgb(204,=
204,204)"> s_out_axis_tready;</span></div><br><div><span style=3D"color:rgb=
(204,204,204)">  </span><span style=3D"color:rgb(86,156,214)">assign</span>=
<span style=3D"color:rgb(204,204,204)"> s_out_axis_tkeep </span><span style=
=3D"color:rgb(212,212,212)">=3D</span><span style=3D"color:rgb(204,204,204)=
"> {NUM_PORTS{</span><span style=3D"color:rgb(181,206,168)">1&#39;b1</span>=
<span style=3D"color:rgb(204,204,204)">}};</span></div></div></div><div><br=
></div><div>Here are the lines from the image core yaml that show how the b=
lock is connected.</div><div><br></div><div><div style=3D"color:rgb(204,204=
,204);background-color:rgb(31,31,31);font-family:&quot;Droid Sans Mono&quot=
;,&quot;monospace&quot;,monospace;font-weight:normal;font-size:14px;line-he=
ight:19px;white-space:pre"><div><span style=3D"color:rgb(204,204,204)">  </=
span><span style=3D"color:rgb(106,153,85)"># # radio0(0) to ep0 - RFA RX</s=
pan></div><div><span style=3D"color:rgb(204,204,204)">  - { </span><span st=
yle=3D"color:rgb(86,156,214)">srcblk</span><span style=3D"color:rgb(204,204=
,204)">: </span><span style=3D"color:rgb(206,145,120)">radio0</span><span s=
tyle=3D"color:rgb(204,204,204)">,             </span><span style=3D"color:r=
gb(86,156,214)">srcport</span><span style=3D"color:rgb(204,204,204)">: </sp=
an><span style=3D"color:rgb(206,145,120)">out_0</span><span style=3D"color:=
rgb(204,204,204)">, </span><span style=3D"color:rgb(86,156,214)">dstblk</sp=
an><span style=3D"color:rgb(204,204,204)">: </span><span style=3D"color:rgb=
(206,145,120)">ddc0</span><span style=3D"color:rgb(204,204,204)">,         =
     </span><span style=3D"color:rgb(86,156,214)">dstport</span><span style=
=3D"color:rgb(204,204,204)">: </span><span style=3D"color:rgb(206,145,120)"=
>in_0</span><span style=3D"color:rgb(204,204,204)"> }</span></div><div><spa=
n style=3D"color:rgb(204,204,204)">  - { </span><span style=3D"color:rgb(86=
,156,214)">srcblk</span><span style=3D"color:rgb(204,204,204)">: </span><sp=
an style=3D"color:rgb(206,145,120)">ddc0</span><span style=3D"color:rgb(204=
,204,204)">,               </span><span style=3D"color:rgb(86,156,214)">src=
port</span><span style=3D"color:rgb(204,204,204)">: </span><span style=3D"c=
olor:rgb(206,145,120)">out_0</span><span style=3D"color:rgb(204,204,204)">,=
 </span><span style=3D"color:rgb(86,156,214)">dstblk</span><span style=3D"c=
olor:rgb(204,204,204)">: </span><span style=3D"color:rgb(206,145,120)">rx_a=
nalog_dio_sw0</span><span style=3D"color:rgb(204,204,204)">, </span><span s=
tyle=3D"color:rgb(86,156,214)">dstport</span><span style=3D"color:rgb(204,2=
04,204)">: </span><span style=3D"color:rgb(206,145,120)">in_0</span><span s=
tyle=3D"color:rgb(204,204,204)"> }  </span></div><div><span style=3D"color:=
rgb(204,204,204)">  - { </span><span style=3D"color:rgb(86,156,214)">srcblk=
</span><span style=3D"color:rgb(204,204,204)">: </span><span style=3D"color=
:rgb(206,145,120)">rx_analog_dio_sw0</span><span style=3D"color:rgb(204,204=
,204)">,  </span><span style=3D"color:rgb(86,156,214)">srcport</span><span =
style=3D"color:rgb(204,204,204)">: </span><span style=3D"color:rgb(206,145,=
120)">out_0</span><span style=3D"color:rgb(204,204,204)">, </span><span sty=
le=3D"color:rgb(86,156,214)">dstblk</span><span style=3D"color:rgb(204,204,=
204)">: </span><span style=3D"color:rgb(206,145,120)">ep0</span><span style=
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
=E2=80=AFAM Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com">mart=
in.braun@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div>Hey Mark,</div><div><br></div><div>=
maybe I&#39;m being dense, but I don&#39;t understand what it is that your =
GPIO pins are supposed to be doing when your system is done. Can you elabor=
ate?</div><div><br></div><div>--M<br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 6, 2024 at 1:56=E2=
=80=AFAM &lt;<a href=3D"mailto:mgannet@gmail.com" target=3D"_blank">mgannet=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><p>Hi everybody!</p><p>I=E2=80=99ve written an RFNOC block that =
assigns the daughterboard rx GPIO pins to the tdata signals that are sent t=
o the SEP.  I=E2=80=99m using the axis_data protocol and the block is place=
d statically between the DDC and the SEP.  I use the tvalid and tlast signa=
l from the upstream (DDC) block and the tready signal from the downstream (=
SEP) block.  I brought the GPIO into the block using appropriate YAML files=
.  Small modification outside of RFNOC were required to get the pins to RFN=
OC (bus_int.v, x300_core.v, io_signatures.yml, and x310_bsp.yml).</p><p>The=
 x310 is operated at 1 Msps and there are 64 samples per CHDR packet on the=
 axis data bus.  This means that the packet rate on the bus is 1 Msps / 64,=
 or 15.625 kHz.  Period is 64 us.</p><p>If I place a signal onto the GPIO p=
in, everything is fine as long as the pulse width is greater than 64 us.   =
I can run the radio with rx_samples_to_file and see the GPIO pins faithfull=
y reproduced in the Ethernet output collected on a PC.</p><p>At pulse width=
s less than 64 us, the signal is essentially aliased.  I believe it=E2=80=
=99s because I=E2=80=99m using the tvalid, tlast, and tready signals from u=
pstream/downstream blocks with data that=E2=80=99s already on the axis data=
 plane.  That data bursts through with 64 samples roughly every 64 us and i=
s clocked with a 200 MHz master clock.  I need to clock in the asynchronous=
 GPIO.</p><p>My question:  What is the best way to do this?  Generate my ow=
n clock and use a generic FIFO like axi_fifo.v to hold the data until the u=
pstream block sends its data and the downstream block is ready to receive?<=
/p><p>Thank you,</p><p>Mark</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000005df110062642ec1a--

--===============8406692815546214449==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8406692815546214449==--
