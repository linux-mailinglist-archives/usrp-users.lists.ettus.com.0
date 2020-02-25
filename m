Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC52816EE2E
	for <lists+usrp-users@lfdr.de>; Tue, 25 Feb 2020 19:40:20 +0100 (CET)
Received: from [::1] (port=49032 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6f80-0001cC-42; Tue, 25 Feb 2020 13:40:20 -0500
Received: from mail-lj1-f182.google.com ([209.85.208.182]:41108)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1j6f7v-0001Ur-9w
 for usrp-users@lists.ettus.com; Tue, 25 Feb 2020 13:40:15 -0500
Received: by mail-lj1-f182.google.com with SMTP id h23so14508ljc.8
 for <usrp-users@lists.ettus.com>; Tue, 25 Feb 2020 10:39:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cK94+/dEnfRCy/i6NARblQme92IwGjSVczVzvG6QE7g=;
 b=qPz93HeQz5gB97INgjxTKc0jlLpl9M8nYSA5Ygv4o8ZtgtaWEn6my9aX4K7EG+sag8
 B0OdFGcpWTe6mmhSONb2URwViSMZVeMKw/xzHHCRAtmYUlkpJBcsPTFPaJ6yg8wfV3en
 2Ovz9/R5n8njNrPkzATIqQcD+JsfneMJZ2YtvyKi3swQ5lZrpx1v7FmiCojSnTfFIMmG
 /lCzdv19JesMKSCW3x2fnbacZKh8whjHXR4YlJw2QHTVIRjXXO62DC0uHwGW8ho+catH
 NBiAozKLynZW9EuZ57ay7oux4DX+GsWuG3B1ZaRt4J0FGzSHugJ+cPljQoUoxXrZS2lO
 X2SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cK94+/dEnfRCy/i6NARblQme92IwGjSVczVzvG6QE7g=;
 b=dG2VqIg7S7QDYf3wwlie9L8q2zBJYVXj0fgI1OwnRfKuD6itCtle+rgYfvYSDfqUrf
 aUmCJJKYvHzvp6Jn7XJp542mdPrwWN3AyD2DxYjTREl5v4oI7ODpbxXNGwmk95QGpgRL
 OPugyFGdWac/BwdC0jw/h8Qa3YgsTxlhwSXEOLgPZ8LWfFcwSAa5EmCrBngTOnF2aXeZ
 cccdhK2tLykd6R+b2vsUcojWIeF1MCtZQEXP62HCzekclQNJV8SN5ux5XXwSF9rec/w4
 hQHFaISG1ZM1q/h3nJ/0G7LWhr173+uFazscIDctsqsekrBipOAEX2CxCyjqXX9x4Bws
 HVpA==
X-Gm-Message-State: ANhLgQ35jPTTlJdHtekLVD5xYNxfxbl8aOiFdaQFBULcjtBQc0YMzvYI
 scjdgyz9fy5Q/tXFShxosh+IkiBrU3J+5etBtEayV2Sn
X-Google-Smtp-Source: APXvYqy1zp5CkbTjdB5c6Y5sMK5cZIow8N1JAztGYj5+QtFGHM69WCugiz3enBAUoxoGjUEbadMp2LCRVLfsDVb52q8=
X-Received: by 2002:a2e:8152:: with SMTP id t18mr224750ljg.255.1582655974008; 
 Tue, 25 Feb 2020 10:39:34 -0800 (PST)
MIME-Version: 1.0
References: <dbe0e0b485ba4b2786c97ea5e0a0eee2@NAEACRANXE02V.nadsusea.nads.navy.mil>
 <CAL7q81uzuFsY4rE5ZEN1aWYwJ8qR0cf=9toQ3fuVGKOrNGmEmQ@mail.gmail.com>
 <076257c564ba4a4eb7511de35eaa2f4f@NAEACRANXE02V.nadsusea.nads.navy.mil>
In-Reply-To: <076257c564ba4a4eb7511de35eaa2f4f@NAEACRANXE02V.nadsusea.nads.navy.mil>
Date: Tue, 25 Feb 2020 13:38:57 -0500
Message-ID: <CAL7q81sNGATquC=VNOw8LO4zH7WrsSOW_oe=AHd7nVcjeDhJXA@mail.gmail.com>
To: "Payne, William Andrew (Andrew) CIV USN NSWC CD CRANE ID (USA)"
 <andrew.payne1@navy.mil>
Subject: Re: [USRP-users] [Non-DoD Source] Re: RFNOC: 2 input/2 output block,
 synchronizing their outputs to GNURadio host
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 "matt.pegram@ni.com" <matt.pegram@ni.com>
Content-Type: multipart/mixed; boundary="===============1560978878745140117=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============1560978878745140117==
Content-Type: multipart/alternative; boundary="00000000000021f8ab059f6acf15"

--00000000000021f8ab059f6acf15
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Andrew,

1.       I understand from Analog documentation that the AD9361 outputs
> 12-bit samples in two=E2=80=99s complement, is that right? Also I gather =
from
> tracing through the HDL, within e31x_core, the data is packed MSB-aligned=
,
> with LSBs 3=E2=80=A60 locked at 1=E2=80=99b0.  When you feed a 16-bit I, =
16-bit Q sample
> into the complex_to_magphase IP block it outputs a 16-bit real, 16-bit
> phase result. So is the magnitude (16-bit real output) formatted the same
> way, i.e. {D11=E2=80=A6D0, 4=E2=80=99d0}?  Does it not matter to that IP =
block whether it
> is MSB padded or LSB padded?  Is it also in 2=E2=80=99s complement?
>

Most blocks maintain the sc16 format (16-bit I and 16-bit Q 2s complement)
throughout the entire processing pipeline. The complex_to_magphase IP block
uses Xilinx's CORDIC IP and their documentation can explain how it works
internally. The CORDIC does not zero out output LSBs even if the input is a
left shifted 12-bit number. In fact, those bits will likely wiggle due to
the slight gain in the CORDIC block. Whether you choose to MSB or LSB pad
is a fixed point design decision as in where do you want to point your
decimal point at. Most blocks do not particularly care, although using full
scale signals with some blocks, such as the DUC, may degrade due to
clipping and you should shoot for using 90% of amplitude.

I would suggest testing the complex_to_magphase block by itself in a test
bench and make sure the output is monotonically increasing as you expect.


> 2.       Dynamic range of e310, if the samples are 12-bit then does this
> come out to 20*log10(4095) =3D 72.2 dB?  So I should be experiencing some
> abnormalities at the extremes?
>

I have not done any dynamic range testing on the E310 and there are not any
published numbers for the E310. The E310 is based on the AD0361, so you can
try looking at that part's datasheet.


> 3.       Since I have the analog bw set to 10 MHz, and I am feeding the
> SDR a CW signal which is very narrow in the spectrum, is it possible to
> actually max out the ADC with this bench setup?
>

This isn't something that I have tested, but I would expect you could. You
will have to be careful though, as too strong of an input signal will
damage the AD9361.


> 4.       Most import question, I=E2=80=99m using noc_block_fft as a guide=
 for
> producing magnitude samples.  In that file mag_tdata[31:0] is assigned
> {1=E2=80=99b0, mag_tdata_int[15:0], 15=E2=80=99d0}, then that mag_tdata i=
s fed to
> axi_round_and_clip wherein the first MSB is clipped, and truncated such
> that 16 bit data is outputted.  My question is: Does that not just clip t=
he
> leading 0 off and round the LSB?  Then wouldn=E2=80=99t the host computer=
 interpret
> this over the wire real uint16 as a two=E2=80=99s complement float or int=
, going
> negative as the MSB goes high?  How can I treat that result as an unsigne=
d
> 16-bit int?


The easiest way is to set the over-the-wire (OTW) and CPU format to sc16 so
no conversion occurs and treat the value as uint16.

Jonathon

On Wed, Feb 19, 2020 at 3:39 PM Payne, William Andrew (Andrew) CIV USN NSWC
CD CRANE ID (USA) <andrew.payne1@navy.mil> wrote:

> Hello Jonathan,
>
>
>
> Fortunately, a lot of progress has been made since you mentioned some
> ideas for me, I was just hesitating to reply until I got stuck again.  I
> have been running on an e310 a 2-stream custom noc_block with axi wrapper=
s
> set to simple mode successfully for the past few days, proving it is very
> much possible and not a difficult task.  I think the root cause of my
> problem was either:
>
> 1.       Not running make clean before make install in my rfnocmodtool
> directory
>
> 2.       Not inputting my settings registers correctly in the UHD
> nocsript.
>
> 3.       Not correctly setting up my GRC block xml file.
>
> 4.       Correcting a bug in my custom Verilog code in my noc_block.
>
>
>
> But now there is a slight issue that I hope you can help me out with.  My
> test bench is composed of the e310 receiving RF from a sig gen tuned to a
> center freq and sweeping the amplitude from noise floor to less than max
> input, running through my custom string of IP blocks that comprise my rfn=
oc
> block (complex to magnitude -> moving sum -> keep one in n).   Data strea=
ms
> through just fine, no timeouts, but sometimes I get odd results such as t=
he
> magnitude going down a little when I expected it to keep rising with the
> sig gen input.
>
>
>
> I wanted to dig a little deeper into the sampling details from the rx
> front end.  Here=E2=80=99s my list of questions for you:
>
> 1.       I understand from Analog documentation that the AD9361 outputs
> 12-bit samples in two=E2=80=99s complement, is that right? Also I gather =
from
> tracing through the HDL, within e31x_core, the data is packed MSB-aligned=
,
> with LSBs 3=E2=80=A60 locked at 1=E2=80=99b0.  When you feed a 16-bit I, =
16-bit Q sample
> into the complex_to_magphase IP block it outputs a 16-bit real, 16-bit
> phase result. So is the magnitude (16-bit real output) formatted the same
> way, i.e. {D11=E2=80=A6D0, 4=E2=80=99d0}?  Does it not matter to that IP =
block whether it
> is MSB padded or LSB padded?  Is it also in 2=E2=80=99s complement?
>
> 2.       Dynamic range of e310, if the samples are 12-bit then does this
> come out to 20*log10(4095) =3D 72.2 dB?  So I should be experiencing some
> abnormalities at the extremes?
>
> 3.       Since I have the analog bw set to 10 MHz, and I am feeding the
> SDR a CW signal which is very narrow in the spectrum, is it possible to
> actually max out the ADC with this bench setup?
>
> 4.       Most import question, I=E2=80=99m using noc_block_fft as a guide=
 for
> producing magnitude samples.  In that file mag_tdata[31:0] is assigned
> {1=E2=80=99b0, mag_tdata_int[15:0], 15=E2=80=99d0}, then that mag_tdata i=
s fed to
> axi_round_and_clip wherein the first MSB is clipped, and truncated such
> that 16 bit data is outputted.  My question is: Does that not just clip t=
he
> leading 0 off and round the LSB?  Then wouldn=E2=80=99t the host computer=
 interpret
> this over the wire real uint16 as a two=E2=80=99s complement float or int=
, going
> negative as the MSB goes high?  How can I treat that result as an unsigne=
d
> 16-bit int?
>
>
>
> Thank you,
>
> Andrew
>
>
>
> *From:* Jonathon Pendlum <jonathon.pendlum@ettus.com>
> *Sent:* Thursday, February 13, 2020 14:07
> *To:* Payne, William Andrew (Andrew) CIV USN NSWC CD CRANE ID (USA) <
> andrew.payne1@navy.mil>
> *Cc:* usrp-users@lists.ettus.com; matt.pegram@ni.com
> *Subject:* [Non-DoD Source] Re: [USRP-users] RFNOC: 2 input/2 output
> block, synchronizing their outputs to GNURadio host
>
>
>
> Hi Andrew,
>
>
>
> Are you able to run any of the in-tree RFNoC blocks on your E310 without
> this error? Does your block work if you make it 1 input / 1 output? Also,
> do you have access to an X310? If so, can you try running your block on
> there and see if it works?
>
>
>
> Jonathon
>
>
>
> On Thu, Feb 13, 2020 at 7:10 AM Payne, William Andrew (Andrew) CIV USN
> NSWC CD CRANE ID (USA) via USRP-users <usrp-users@lists.ettus.com> wrote:
>
> Hi,
>
> I am trying to solve what I think is a timing issue with my RFNOC design.
> I have an E310 running UHD 3.15LTS/GNUradio 3.7/gr-ettus.
>
> I have created a custom RFNOC block for GNUradio without much custom
> logic, I've managed to just reuse code blocks from the uhd-fpga repo in
> lib/rfnoc.  In particular, I am using the following blocks in this order:
> complex to magphase (ISE IP in lib/rfnoc) -> moving_sum -> keep_one_in_n =
->
> fifo with size 5 (so I don't have to have RFNOC:FIFO blocks taking up roo=
m
> in the FPGA).  For moving_sum I'm trying to use 511 as the sum length and
> for keep_one_in_n I am using 512.  I have made this block a permanent 2
> input/2 output block by setting those parameters in noc_shell
> instantiation.  I am using the axi_wrappers (0 and 1) with SIMPLE MODE se=
t
> to 0, and simply utilizing the cvita_hdr_modify.v IP exactly as utilized =
in
> the noc_block_keep_one_in_n.v block to set the tuser headers.
>
> In Vivado behavioral simulation the data correctly flows through but what
> I am unsure about is the fact that after synthesizing and loading the FPG=
A
> bit file into the e310 and running my flowgraph, it just repeatedly print=
s
> out timeout on channel 0.   By the way this code does work on just a sing=
le
> input/single output application but I want to consolidate it into a singl=
e
> GRC block to save space on the relatively small FPGA.  What do I need to =
do
> to sync the 2 e310 rx2 channels so they arrive close to on-time in GRC?  =
Or
> is that probably not the problem?  I assume I should be looking at how it=
's
> done in noc_block_ddc/duc as they have implemented timed samples within
> those?
>
> Thanks,
> Andrew
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> <http://lists.ettus.noclick_com/mailman/listinfo/usrp-users_lists.ettus.c=
om>
>
>

--00000000000021f8ab059f6acf15
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Andrew,<div><br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">1. =C2=A0 =C2=A0 =C2=A0 I understand from Analog docume=
ntation that the AD9361 outputs 12-bit samples in two=E2=80=99s complement,=
 is that right? Also I gather from tracing through the HDL, within e31x_cor=
e, the data is packed MSB-aligned, with LSBs 3=E2=80=A60 locked at 1=E2=80=
=99b0.=C2=A0 When you feed a 16-bit I, 16-bit Q sample into the complex_to_=
magphase IP block it outputs a 16-bit real, 16-bit phase result. So is the =
magnitude (16-bit real output) formatted the same way, i.e. {D11=E2=80=A6D0=
, 4=E2=80=99d0}?=C2=A0 Does it not matter to that IP block whether it is MS=
B padded or LSB padded?=C2=A0 Is it also in 2=E2=80=99s complement?<br></bl=
ockquote><div><br></div><div>Most blocks maintain the sc16 format (16-bit I=
 and 16-bit Q 2s complement) throughout the entire processing pipeline. The=
 complex_to_magphase IP block uses Xilinx&#39;s CORDIC IP and their documen=
tation can explain how it works internally. The CORDIC does not zero out ou=
tput LSBs even if the input is a left shifted 12-bit number. In fact, those=
 bits will likely wiggle due to the slight gain in the CORDIC block. Whethe=
r you choose to MSB or LSB pad is a fixed point design decision as in where=
 do you want to point your decimal point at. Most blocks do not particularl=
y care, although using full scale signals with some blocks, such as the DUC=
, may degrade due to clipping and you should shoot for using 90% of amplitu=
de.</div><div><br></div><div>I would suggest testing the complex_to_magphas=
e block by itself in a test bench and make sure the output is monotonically=
 increasing as you expect.=C2=A0<br></div><div>=C2=A0</div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">2. =C2=A0 =C2=A0 =C2=A0 Dynamic range of =
e310, if the samples are 12-bit then does this come out to 20*log10(4095) =
=3D 72.2 dB?=C2=A0 So I should be experiencing some abnormalities at the ex=
tremes?<br></blockquote><div><br></div><div>I have not done any dynamic ran=
ge testing on the E310 and there are not any published numbers for the E310=
. The E310 is based on the AD0361, so you can try looking at that part&#39;=
s datasheet.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">3. =C2=A0 =C2=A0 =C2=A0 Since I have the analog bw set to 10 MHz=
, and I am feeding the SDR a CW signal which is very narrow in the spectrum=
, is it possible to actually max out the ADC with this bench setup?<br></bl=
ockquote><div><br></div><div>This isn&#39;t something that I have tested, b=
ut I would expect you could. You will have to be careful though, as too str=
ong=C2=A0of an input signal will damage the AD9361.</div><div>=C2=A0</div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">4. =C2=A0 =C2=A0 =C2=A0 Mo=
st import question, I=E2=80=99m using noc_block_fft as a guide for producin=
g magnitude samples.=C2=A0 In that file mag_tdata[31:0] is assigned {1=E2=
=80=99b0, mag_tdata_int[15:0], 15=E2=80=99d0}, then that mag_tdata is fed t=
o axi_round_and_clip wherein the first MSB is clipped, and truncated such t=
hat 16 bit data is outputted.=C2=A0 My question is: Does that not just clip=
 the leading 0 off and round the LSB?=C2=A0 Then wouldn=E2=80=99t the host =
computer interpret this over the wire real uint16 as a two=E2=80=99s comple=
ment float or int, going negative as the MSB goes high?=C2=A0 How can I tre=
at that result as an unsigned 16-bit int?</blockquote><div><br></div><div>T=
he easiest way is to set the over-the-wire (OTW) and CPU format to sc16 so =
no conversion occurs and treat the value as uint16.</div><div><br></div><di=
v>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Feb 19, 2020 at 3:39 PM Payne, William Andrew (Andr=
ew) CIV USN NSWC CD CRANE ID (USA) &lt;<a href=3D"mailto:andrew.payne1@navy=
.mil">andrew.payne1@navy.mil</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m_-3975=
478997454578487WordSection1"><p class=3D"MsoNormal"><span style=3D"font-siz=
e:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">Hello Jonathan,=
<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11=
pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u=
></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-famil=
y:Calibri,sans-serif;color:rgb(31,73,125)">Fortunately, a lot of progress h=
as been made since you mentioned some ideas for me, I was just hesitating t=
o reply until I got stuck again.=C2=A0 I have been running on an e310 a 2-s=
tream custom noc_block with axi wrappers set to simple mode successfully fo=
r the past few days, proving it is very much possible and not a difficult t=
ask.=C2=A0 I think the root cause of my problem was either:<u></u><u></u></=
span></p><p class=3D"gmail-m_-3975478997454578487MsoListParagraph"><u></u><=
span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73=
,125)"><span>1.<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span></span></span><u></u><span style=3D"f=
ont-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">Not runn=
ing make clean before make install in my rfnocmodtool directory<u></u><u></=
u></span></p><p class=3D"gmail-m_-3975478997454578487MsoListParagraph"><u><=
/u><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(3=
1,73,125)"><span>2.<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span></span></span><u></u><span style=
=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">Not=
 inputting my settings registers correctly in the UHD nocsript.<u></u><u></=
u></span></p><p class=3D"gmail-m_-3975478997454578487MsoListParagraph"><u><=
/u><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(3=
1,73,125)"><span>3.<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span></span></span><u></u><span style=
=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">Not=
 correctly setting up my GRC block xml file.<u></u><u></u></span></p><p cla=
ss=3D"gmail-m_-3975478997454578487MsoListParagraph"><u></u><span style=3D"f=
ont-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"><span>4.=
<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 </span></span></span><u></u><span style=3D"font-size:11pt;f=
ont-family:Calibri,sans-serif;color:rgb(31,73,125)">Correcting a bug in my =
custom Verilog code in my noc_block.<u></u><u></u></span></p><p class=3D"Ms=
oNormal"><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color=
:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><spa=
n style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">But now there is a slight issue that I hope you can help me out with.=
=C2=A0 My test bench is composed of the e310 receiving RF from a sig gen tu=
ned to a center freq and sweeping the amplitude from noise floor to less th=
an max input, running through my custom string of IP blocks that comprise m=
y rfnoc block (complex to magnitude -&gt; moving sum -&gt; keep one in n).=
=C2=A0 =C2=A0Data streams through just fine, no timeouts, but sometimes I g=
et odd results such as the magnitude going down a little when I expected it=
 to keep rising with the sig gen input. <u></u><u></u></span></p><p class=
=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sans-serif=
;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal=
"><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31=
,73,125)">I wanted to dig a little deeper into the sampling details from th=
e rx front end.=C2=A0 Here=E2=80=99s my list of questions for you:<u></u><u=
></u></span></p><p class=3D"gmail-m_-3975478997454578487MsoListParagraph"><=
u></u><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rg=
b(31,73,125)"><span>1.<span style=3D"font:7pt &quot;Times New Roman&quot;">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span></span></span><u></u><span styl=
e=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">I =
understand from Analog documentation that the AD9361 outputs 12-bit samples=
 in two=E2=80=99s complement, is that right? Also I gather from tracing thr=
ough the HDL, within e31x_core, the data is packed MSB-aligned, with LSBs 3=
=E2=80=A60 locked at 1=E2=80=99b0.=C2=A0 When you feed a 16-bit I, 16-bit Q=
 sample into the complex_to_magphase IP block it outputs a 16-bit real, 16-=
bit phase result. So is the magnitude (16-bit real output) formatted the sa=
me way, i.e. {D11=E2=80=A6D0, 4=E2=80=99d0}?=C2=A0 Does it not matter to th=
at IP block whether it is MSB padded or LSB padded?=C2=A0 Is it also in 2=
=E2=80=99s complement?<u></u><u></u></span></p><p class=3D"gmail-m_-3975478=
997454578487MsoListParagraph"><u></u><span style=3D"font-size:11pt;font-fam=
ily:Calibri,sans-serif;color:rgb(31,73,125)"><span>2.<span style=3D"font:7p=
t &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span>=
</span></span><u></u><span style=3D"font-size:11pt;font-family:Calibri,sans=
-serif;color:rgb(31,73,125)">Dynamic range of e310, if the samples are 12-b=
it then does this come out to 20*log10(4095) =3D 72.2 dB?=C2=A0 So I should=
 be experiencing some abnormalities at the extremes?<u></u><u></u></span></=
p><p class=3D"gmail-m_-3975478997454578487MsoListParagraph"><u></u><span st=
yle=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">=
<span>3.<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 </span></span></span><u></u><span style=3D"font-si=
ze:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">Since I have t=
he analog bw set to 10 MHz, and I am feeding the SDR a CW signal which is v=
ery narrow in the spectrum, is it possible to actually max out the ADC with=
 this bench setup?<u></u><u></u></span></p><p class=3D"gmail-m_-39754789974=
54578487MsoListParagraph"><u></u><span style=3D"font-size:11pt;font-family:=
Calibri,sans-serif;color:rgb(31,73,125)"><span>4.<span style=3D"font:7pt &q=
uot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span></sp=
an></span><u></u><span style=3D"font-size:11pt;font-family:Calibri,sans-ser=
if;color:rgb(31,73,125)">Most import question, I=E2=80=99m using noc_block_=
fft as a guide for producing magnitude samples.=C2=A0 In that file mag_tdat=
a[31:0] is assigned {1=E2=80=99b0, mag_tdata_int[15:0], 15=E2=80=99d0}, the=
n that mag_tdata is fed to axi_round_and_clip wherein the first MSB is clip=
ped, and truncated such that 16 bit data is outputted.=C2=A0 My question is=
: Does that not just clip the leading 0 off and round the LSB?=C2=A0 Then w=
ouldn=E2=80=99t the host computer interpret this over the wire real uint16 =
as a two=E2=80=99s complement float or int, going negative as the MSB goes =
high?=C2=A0 How can I treat that result as an unsigned 16-bit int?<u></u><u=
></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-f=
amily:Calibri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif;color:rgb(31,73,125)">Thank you,<u></u><u></u></span></p><p cla=
ss=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sans-ser=
if;color:rgb(31,73,125)">Andrew<u></u><u></u></span></p><p class=3D"MsoNorm=
al"><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(=
31,73,125)"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><b><span =
style=3D"font-size:11pt;font-family:Calibri,sans-serif">From:</span></b><sp=
an style=3D"font-size:11pt;font-family:Calibri,sans-serif"> Jonathon Pendlu=
m &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">jonat=
hon.pendlum@ettus.com</a>&gt; <br><b>Sent:</b> Thursday, February 13, 2020 =
14:07<br><b>To:</b> Payne, William Andrew (Andrew) CIV USN NSWC CD CRANE ID=
 (USA) &lt;<a href=3D"mailto:andrew.payne1@navy.mil" target=3D"_blank">andr=
ew.payne1@navy.mil</a>&gt;<br><b>Cc:</b> <a href=3D"mailto:usrp-users@lists=
.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>; <a href=3D"ma=
ilto:matt.pegram@ni.com" target=3D"_blank">matt.pegram@ni.com</a><br><b>Sub=
ject:</b> [Non-DoD Source] Re: [USRP-users] RFNOC: 2 input/2 output block, =
synchronizing their outputs to GNURadio host<u></u><u></u></span></p><p cla=
ss=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div><div><p class=3D"MsoNormal">H=
i Andrew,<u></u><u></u></p><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u>=
</p></div><div><p class=3D"MsoNormal">Are you able to run any of the in-tre=
e RFNoC blocks on your E310 without this error? Does your block work if you=
 make it 1 input / 1 output? Also, do you have access to an X310? If so, ca=
n you try running your block on there and see if it works?<u></u><u></u></p=
></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><div><p cl=
ass=3D"MsoNormal">Jonathon<u></u><u></u></p></div></div><p class=3D"MsoNorm=
al"><u></u>=C2=A0<u></u></p><div><div><p class=3D"MsoNormal">On Thu, Feb 13=
, 2020 at 7:10 AM Payne, William Andrew (Andrew) CIV USN NSWC CD CRANE ID (=
USA) via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<u></u><u></u></p></d=
iv><blockquote style=3D"border-top:none;border-right:none;border-bottom:non=
e;border-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-lef=
t:4.8pt;margin-right:0in"><p class=3D"MsoNormal">Hi,<br><br>I am trying to =
solve what I think is a timing issue with my RFNOC design.=C2=A0 I have an =
E310 running UHD 3.15LTS/GNUradio 3.7/gr-ettus.<br><br>I have created a cus=
tom RFNOC block for GNUradio without much custom logic, I&#39;ve managed to=
 just reuse code blocks from the uhd-fpga repo in lib/rfnoc.=C2=A0 In parti=
cular, I am using the following blocks in this order: complex to magphase (=
ISE IP in lib/rfnoc) -&gt; moving_sum -&gt; keep_one_in_n -&gt; fifo with s=
ize 5 (so I don&#39;t have to have RFNOC:FIFO blocks taking up room in the =
FPGA).=C2=A0 For moving_sum I&#39;m trying to use 511 as the sum length and=
 for keep_one_in_n I am using 512.=C2=A0 I have made this block a permanent=
 2 input/2 output block by setting those parameters in noc_shell instantiat=
ion.=C2=A0 I am using the axi_wrappers (0 and 1) with SIMPLE MODE set to 0,=
 and simply utilizing the cvita_hdr_modify.v IP exactly as utilized in the =
noc_block_keep_one_in_n.v block to set the tuser headers.<br><br>In Vivado =
behavioral simulation the data correctly flows through but what I am unsure=
 about is the fact that after synthesizing and loading the FPGA bit file in=
to the e310 and running my flowgraph, it just repeatedly prints out timeout=
 on channel 0. =C2=A0 By the way this code does work on just a single input=
/single output application but I want to consolidate it into a single GRC b=
lock to save space on the relatively small FPGA.=C2=A0 What do I need to do=
 to sync the 2 e310 rx2 channels so they arrive close to on-time in GRC?=C2=
=A0 Or is that probably not the problem?=C2=A0 I assume I should be looking=
 at how it&#39;s done in noc_block_ddc/duc as they have implemented timed s=
amples within those?<br><br>Thanks,<br>Andrew<br><br>______________________=
_________________________<br>USRP-users mailing list<br><a href=3D"mailto:U=
SRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>=
<br><a href=3D"http://lists.ettus.noclick_com/mailman/listinfo/usrp-users_l=
ists.ettus.com" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/u=
srp-users_lists.ettus.com</a><u></u><u></u></p></blockquote></div></div></d=
iv></div></blockquote></div>

--00000000000021f8ab059f6acf15--


--===============1560978878745140117==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1560978878745140117==--

