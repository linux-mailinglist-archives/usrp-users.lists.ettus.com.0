Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 02677817724
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 17:14:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D8B993852AD
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 11:14:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702916042; bh=a7rr3Am7w6tncgpneq1rf7gvWpZOIbZJe14gaAKGevc=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=FyNgIS5ULBPALsMxxfIPMaBeFKpb6yxIaO4vC0TrgF5o44EqY13Xpsmgmqro4lF31
	 /sF1JhtUZ9X2rpJrp2uen2UncNyFZfjM56IXqZ2y3jHpSf4ZYU5c02dxaVWG1F8lzn
	 2Fmd0hiwo69dwNPmOLlEQg0DMYyfu8fGD2Enk1paOwIFAFwOxknzW5g6dYIjpm86L8
	 Xd9/ivcc/J5/yYzVrJhIT4MDZShlcvSIA7G/9OGFCTauNUZAG2AQBW1QAN5SI9Pj68
	 ais8mxZP/fCJVr2fLKQa+nj7PoGQ2uCfFn0vQQtBtIQ3S+fFzdHEQByEidU18k1LUr
	 DB/GHnUJu2ZfA==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id DAE7C3851C9
	for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 11:13:32 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="LiQRDAEQ";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-553032f17cfso2444521a12.0
        for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 08:13:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1702916011; x=1703520811; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ob/4YxCTUgCtU2pXnbSl/0P7t6MHEuIZGYEWSFX9ZbQ=;
        b=LiQRDAEQQWaCWaf4RBy0RgqiQwgPcaTM/oXORiIWG6SbvzZJQOASVPsL1RsKLKvCV0
         PVboPTc9i0AgZQSw/a4Q/Nx/fcVX2g2l6MpZ31FqZ5/V2whGnkRLiyeKrQcxo6wsKVyp
         oTZ/pXRKo0vG0jiX1iRHEAC/I/daxcxNoKoDikvfQPPMkyZGSy4u4r9mla97/oiCLSbB
         bIM1ZtkvCHEVQAe4fu85v74ELq1G4Zr36eGVBu8rCDBbckdReG/VtEB8r9Ye4R9DtvkR
         xO397u/Z/mDJMMO9pZQMCssBXqs5q7Ma62nMf76kO7/GH0nYNDvvK3Oh3Ue46urjy93O
         v3yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702916011; x=1703520811;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ob/4YxCTUgCtU2pXnbSl/0P7t6MHEuIZGYEWSFX9ZbQ=;
        b=pH/amwS3GImTpWqTMY7ybCDcO1nmRiXxBtlWi15oJcaFGj5ZxlJtzFTKS8h1BZMcYU
         wSZGb3pTepyncZBLYFJhwkNGQD5bUcfWhz808JY0XUR5o58V9mV1DeAHA/Wg0pEoyXwq
         JFWJyrIYtrK4rHHoYP4zm7uocdHctoNNxZHVBJu8Iq4y5nEdaimO7+bKVqzGuaydo8aN
         niutBIc7NfikFSjrhF1Ox1TTmCoGN3SHTQI5HujIdlLCaQmGnPGfkxr7ykvJK0U/lU+0
         u+kscOEY83epZjHsf+w0J342n19quujwgaPkV/dyBr3PzoV4gl+mGUXXO6PYLvApoXad
         8jrQ==
X-Gm-Message-State: AOJu0Ywh61NRmToKQLwG+tdiri8xk24mswIdJAPV74hMXYMIJKxy8aXS
	1NPhP2EMeeJ321X804k7JWUioumCKZs2JwyKrwER8k+lz0EMcrSB
X-Google-Smtp-Source: AGHT+IEEPjFEvnhezhaie5sEqkjMpSv+QJPwKUK16AsOLwcozS9tAdih2QpLjJgDp1OTYlfnS8pBQefLu+mrptLrR6Y=
X-Received: by 2002:a50:9ec5:0:b0:553:4a57:a5a8 with SMTP id
 a63-20020a509ec5000000b005534a57a5a8mr1036285edf.16.1702916011359; Mon, 18
 Dec 2023 08:13:31 -0800 (PST)
MIME-Version: 1.0
References: <CAFPzw1kOz59xv_tRZW7X8jntTLHS-szF_vUvzS5pE8KaGKExtg@mail.gmail.com>
 <CAB__hTTzgcb1p0Gut3qL2U2uvTQ9wRXVHg9EfJ080RC-LETg_A@mail.gmail.com>
 <CAFPzw1kn-j45P_7jf6cMG-kLQiz3zCTYjHog49nPXB+KswUKUw@mail.gmail.com>
 <CAB__hTSKQRF3eE5i=D_6zQo8C4LLWioP+ts=YvRDJiUM=UnnYw@mail.gmail.com>
 <CAFPzw1kVSnS0Nuye2QPKxJ0XFND3e==zFCejGLKY0s3AifKjZQ@mail.gmail.com>
 <CAB__hTTYiTXXgV9Ra1UxaQrLC9p_=Vzr3A4XFGTwKbOHJrb4zQ@mail.gmail.com> <CAFPzw1nAhnrzBig47-UCJ3gY7YeTnt2TqsVX3iJtJgv_3sMC6g@mail.gmail.com>
In-Reply-To: <CAFPzw1nAhnrzBig47-UCJ3gY7YeTnt2TqsVX3iJtJgv_3sMC6g@mail.gmail.com>
Date: Mon, 18 Dec 2023 10:13:26 -0600
Message-ID: <CAB__hTTO3kEiC+fWWBNuW_Juo8=MNkD_=KyAOGvz0KVm-gEpKw@mail.gmail.com>
To: Anabel Almodovar <anabel.almodovar@gmail.com>
Message-ID-Hash: XN2KRL2WTYME7HW7THEBH3CZHT5Y2V7S
X-Message-ID-Hash: XN2KRL2WTYME7HW7THEBH3CZHT5Y2V7S
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: streamer error X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XN2KRL2WTYME7HW7THEBH3CZHT5Y2V7S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============2312797227850925293=="

--===============2312797227850925293==
Content-Type: multipart/alternative; boundary="000000000000f13680060ccb075f"

--000000000000f13680060ccb075f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Several comments:

   - It seems like multiple things are going on.  You mentioned the
   original "failed to time align" error and below you mentioned 'O' and 'D=
'.
      - The time-align error I did not expect had anything to do with
      "performance". This seemed to me that the first packet arriving
from device
      1 had a different time stamp than the first packet arriving from
device 2.
      Now, I'm not so sure
      - But, the 'O' and 'D' are often related to "performance".  Overflow
      'O' occurs when the 'Radio' block has A/D samples that it needs
to put in a
      FIFO but the FIFO is full because it is not being emptied fast enough
      (presumably by the host PC).  A dropped packet (or sequence error) 'D=
'
      occurs when the host PC detects that the incoming packets are not in
      sequential order. This can occur if the host PC Ethernet handling bec=
omes
      overwhelmed and simply discards a set of incoming packets for a time
      period. Both 'O' and 'D' can imply that the host PC is not
keeping up with
      incoming data
   - In any case, you may want to simplify the problem by dropping from two
   devices to one device.  See if you can eliminate some or all of these
   problems when using only 4 channels.
   - If you drop to one device, you can use benchmark_rate to test
   performance.  If you do not use "second_addr", you should be able to get
   4x50 MS/s.  If you use "second_addr", you should be able to get 4x100 MS=
/s.
   - Regarding your needed changes to "rx_samples_to_file", I guess I was
   thinking about the latest version which supports multiple channels. Perh=
aps
   UHD 3.12 has a version of this example that only supports a single
   channel.  You could compare your version to the latest version (say, UHD
   4.6) to see the improvements to this example.


On Mon, Dec 18, 2023 at 7:44=E2=80=AFAM Anabel Almodovar <anabel.almodovar@=
gmail.com>
wrote:

> Hi Rob,
>
> Thanks for the suggestions. I have tried deleting the LO sharing, and
> nothing changes. Then removing the second addr, and that leads me to get
> 'Ds' in addition to the error already mentioned, as it is not able to
> handle that much information. Although I don't quite understand the
> difference between 'O' and 'D'.
>
> From what I understand the program is set up for a single channel, so I
> need to modify it to get more than one.
>
> Thank you in advance.
>
> Regards,
> Anabel
>
> El vie, 15 dic 2023 a las 15:39, Rob Kossler (<rkossler@nd.edu>) escribi=
=C3=B3:
>
>> Hmmm. I'm not sure. Here are a few comments:
>>
>>    - Try running without "second_addr".  I realize that you will need it
>>    for full rate (4 x 100MS/s for each X310), but you could run at 50 MS=
/s
>>    without second_addr
>>    - Try running without shared LO. I don't think you would need to
>>    physically change any sharing cables.
>>    - I am curious why you needed to modify the streamer, pointer buffer
>>    and file writing.  I would expect that this would scale with the numb=
er of
>>    channels such that you didn't need to modify any code in this area
>>    - If you were using a more recent UHD, I would recommend switching to
>>    the example benchmark_rate which natively supports external PPS and
>>    multiple devices.  I noticed that even the most recent rx_samples_to_=
file
>>    does not support external PPS (without modifying the code)
>>    - I know you mentioned you were unable to upgrade because of
>>    compatibility constraints.  But, even if you cannot upgrade the OS, w=
ould
>>    you be able to install a new UHD - perhaps in a local folder that did=
 not
>>    interfere with the system-wide UHD 3.12 installation.  I typically ha=
ve
>>    multiple UHD versions on my system and switch among them by "sourcing=
" a
>>    given setup file as needed.
>>
>>
>> On Fri, Dec 15, 2023 at 12:52=E2=80=AFAM Anabel Almodovar <
>> anabel.almodovar@gmail.com> wrote:
>>
>>> Dear Rob,
>>>
>>> Yes, I use an external clock configuration.
>>>
>>> *std::this_thread::sleep_for( std::chrono::milliseconds(int64_t(1000 *
>>> setup_time) );*
>>>
>>>
>>>
>>> *usrp->set_clock_source("external", uhd::usrp::multi_usrp::ALL_MBOARDS)=
;
>>>    usrp->set_time_source("external",
>>> uhd::usrp::multi_usrp::ALL_MBOARDS);usrp->set_time_unknown_pps(uhd::tim=
e_spec_t(0.0));std::this_thread::sleep_for(std::chrono::seconds(1));*
>>>
>>> I have only modified the code to get 8 channels and LO sharing. I want
>>> to get a continuous acquisition setup without losing samples. But I am
>>> starting with something basic at the moment. Any suggestions are welcom=
e.
>>> So I've modified the streamer, the pointer buffer, and added writing fi=
les.
>>>
>>> my line is
>>> *$sudo ./rx_samples_to_file_v1
>>> --args=3D"addr0=3D192.168.60.2,second_addr0=3D192.168.50.2,addr1=3D192.=
168.40.2,second_addr1=3D192.168.30.2,recv_buff_size=3D900000000"
>>> --subdev=3D"A:0 A:1 B:0 B:1" --channel=3D"0,1,2,3,4,5,6,7" --freq 800e6=
 --rate
>>> 25e6 --bw 25e6 --gain 70 *
>>>
>>> Regards,
>>>
>>> *Anabel*
>>>
>>>
>>>
>>> El jue, 14 dic 2023 a las 18:25, Rob Kossler (<rkossler@nd.edu>)
>>> escribi=C3=B3:
>>>
>>>> Hi Anabel,
>>>> In my opinion, the error you are experiencing has nothing to do with
>>>> streaming performance settings (such as "performance" governor, networ=
k
>>>> descriptors, MTU size, etc). The issue seems to be that the two X310
>>>> devices do not have synchronized clocks. In addition to the physical
>>>> synchronization using OctoClock, you must also configure each device t=
o use
>>>> external synchronization and you must tell each device to reset its FP=
GA
>>>> clock count at a common PPS. The typical sequence is: (1) wait for a P=
PS to
>>>> occur (by querying either device), (2) tell each device to reset its F=
PGA
>>>> clock at the subsequent PPS (this step must complete before the next P=
PS
>>>> arrives).
>>>>
>>>> You mentioned that you are using rx_samples_to_file. Did you modify it
>>>> in any way?  What is your exact command line with all parameters?
>>>> Rob
>>>>
>>>> On Thu, Dec 14, 2023 at 10:29=E2=80=AFAM Anabel Almodovar <
>>>> anabel.almodovar@gmail.com> wrote:
>>>>
>>>>> Dear Rob
>>>>>
>>>>> Thank you for your answer.
>>>>> I make use of the CDA-2990 octoclock as a source of synchronization
>>>>> between both USRPs, in addition to local oscillator sharing. I use du=
al
>>>>> 10GigEth connections and a MTU of 9000 to connect the USRPs to the PC=
.
>>>>>
>>>>> Due to various compatibility issues I am unable to upgrade the system=
.
>>>>>
>>>>> When I work with a sample rate of 10MSps I don't get problems but whe=
n
>>>>> I increase to 25MSps I start to get the error. I need them working wi=
th
>>>>> 100MSps. I have tried changing the CPU governor to "performance" to g=
et the
>>>>> maximum working frequency (*sudo cpupower frequency-set --governor
>>>>> performance*), as well as changing the number of network interface
>>>>> descriptors to maximum (*sudo ethtool -G <interface> tx <max> rx
>>>>> <max>*), or increasing the dirty memory buffer (*sudo sysctl -w
>>>>> vm.dirty_ratio=3D80; sudo sysctl -w vm.dirty_background_ratio=3D50*),=
 but
>>>>> I still get the same problem.
>>>>>
>>>>> Regards,
>>>>> Anabel
>>>>>
>>>>> El jue, 14 dic 2023 a las 15:38, Rob Kossler (<rkossler@nd.edu>)
>>>>> escribi=C3=B3:
>>>>>
>>>>>> Hi Anabel,
>>>>>> How are you sync-ing the clocks on the two units? Do you have an
>>>>>> external PPS source and are you configuring both devices to use this
>>>>>> external source?
>>>>>>
>>>>>> Finally, do you have the ability to upgrade your OS and your UHD
>>>>>> versions? There aren't many user's that are using UHD 3.12 so if you=
 have
>>>>>> issues, it will be hard to get support.
>>>>>> Rob
>>>>>>
>>>>>> On Thu, Dec 14, 2023 at 5:20=E2=80=AFAM Anabel Almodovar <
>>>>>> anabel.almodovar@gmail.com> wrote:
>>>>>>
>>>>>>> Dear all,
>>>>>>>
>>>>>>> I am trying to make an acquisition with two X310 equipped with two
>>>>>>> TwinRx. I am using Ubuntu 16.04 LTS 64-bit and UHD 3.12. My PC cont=
ains
>>>>>>> 128GB RAM and an Intel=C2=AE Xeon(R) Silver 4114 CPU @ 2.20GHz =C3=
=97 40 and a 4TB
>>>>>>> SSD. I have modified the example rx_samples_to_file.cpp code to get=
 8
>>>>>>> channels and I get the following error:
>>>>>>>
>>>>>>> *D*
>>>>>>> *[ERROR] [STREAMER] The receive packet handler failed to time-align
>>>>>>> packets. 1002 received packets were processed by the handler. Howev=
er, a
>>>>>>> timestamp match could not be determined.*
>>>>>>> *Timeout while streaming*
>>>>>>>
>>>>>>> *[ERROR] [X300] 192.168.60.2 <http://192.168.60.2>: x300 fw
>>>>>>> communication failure #1*
>>>>>>> *EnvironmentError: IOError: x300 fw poke32 - reply timed out*
>>>>>>> *[ERROR] [UHD] An unexpected exception was caught in a task loop.Th=
e
>>>>>>> task loop will now exit, things may not work.AssertionError: reply.=
sequence
>>>>>>> =3D=3D request.sequence*
>>>>>>> *  in virtual void
>>>>>>> x300_ctrl_iface_enet::__poke32(uhd::wb_iface::wb_addr_type, uint32_=
t)*
>>>>>>> *  at
>>>>>>> /home/rs3_lab/workarea-uhd/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:=
135*
>>>>>>>
>>>>>>> I don't know how to solve the Timeout problem, I have tried to star=
t
>>>>>>> the acquisition 1.1 sg in time. But it didn't work.
>>>>>>>
>>>>>>>
>>>>>>> *        stream_cmd.stream_now =3D false;        stream_cmd.time_sp=
ec
>>>>>>> =3D usrp->get_time_last_pps(0)+1.1;*
>>>>>>>
>>>>>>> What is the problem and how can I fix it?
>>>>>>>
>>>>>>> Regards,
>>>>>>> Anabel
>>>>>>>
>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>
>>>>>>

--000000000000f13680060ccb075f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Several comments:<div><ul><li>It seems li=
ke multiple things are going on.=C2=A0 You mentioned the original &quot;fai=
led to time align&quot; error and below you mentioned &#39;O&#39; and &#39;=
D&#39;.=C2=A0=C2=A0</li><ul><li>The time-align error I did not expect had a=
nything to do with &quot;performance&quot;. This seemed to me that the firs=
t packet arriving from device 1 had a different time stamp than the first p=
acket arriving from device 2. Now, I&#39;m not so sure</li><li>But, the &#3=
9;O&#39; and &#39;D&#39; are often related to &quot;performance&quot;.=C2=
=A0 Overflow &#39;O&#39; occurs when the &#39;Radio&#39; block has A/D samp=
les that it needs to put in a FIFO but the FIFO is full because it is not b=
eing emptied fast enough (presumably by the host PC).=C2=A0 A dropped packe=
t (or sequence error) &#39;D&#39; occurs when the host PC detects that the =
incoming packets are not in sequential order. This can occur if the host PC=
 Ethernet handling becomes overwhelmed and simply discards a set of incomin=
g packets for a time period. Both &#39;O&#39; and &#39;D&#39; can imply tha=
t the host PC is not keeping up with incoming data</li></ul><li>In any case=
, you may want to simplify the problem by dropping from two devices to one =
device.=C2=A0 See if you can eliminate some or all of these problems when u=
sing only 4 channels.</li><li>If you drop to one device, you can use benchm=
ark_rate to test performance.=C2=A0 If you do not use &quot;second_addr&quo=
t;, you should be able to get 4x50 MS/s.=C2=A0 If you use &quot;second_addr=
&quot;, you should be able to get 4x100 MS/s.</li><li>Regarding your needed=
 changes to &quot;rx_samples_to_file&quot;, I guess I was thinking about th=
e latest version which supports multiple channels. Perhaps UHD 3.12 has a v=
ersion of this example that only supports a single channel.=C2=A0 You could=
 compare your version to the latest version (say, UHD 4.6) to see the impro=
vements to this example.</li></ul></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 18, 2023 at 7:44=E2=80=
=AFAM Anabel Almodovar &lt;<a href=3D"mailto:anabel.almodovar@gmail.com">an=
abel.almodovar@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr">Hi Rob,<br><br>Thanks for the sugg=
estions. I have tried deleting the LO sharing, and nothing changes. Then re=
moving the second addr, and that leads me to get &#39;Ds&#39; in addition t=
o the error already mentioned, as it is not able to handle that much inform=
ation. Although I don&#39;t quite understand the difference between &#39;O&=
#39; and &#39;D&#39;.<br><br><div>From what I understand the program is set=
 up for a single channel, so I need to modify it to get more than one. <br>=
</div><div><br></div><div>Thank you in advance.</div><div><br></div><div>Re=
gards,</div><div>Anabel<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">El vie, 15 dic 2023 a las 15:39, Rob Kossl=
er (&lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.ed=
u</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>Hmmm. I&#39;m not sure. Here are a few com=
ments:</div><div><ul><li>Try running without &quot;second_addr&quot;.=C2=A0=
 I realize that you will need it for full rate (4 x 100MS/s for each X310),=
 but you could run at 50 MS/s without second_addr</li><li>Try running witho=
ut=C2=A0shared LO. I don&#39;t think you would need to physically change an=
y sharing cables.</li><li>I am curious why you needed to modify the streame=
r, pointer buffer and file writing.=C2=A0 I would expect that this would sc=
ale with the number of channels such that you didn&#39;t need to modify any=
 code in this area</li><li>If you were using a more recent UHD, I would rec=
ommend switching to the example benchmark_rate which natively supports exte=
rnal PPS and multiple devices.=C2=A0 I noticed that even the most recent=C2=
=A0rx_samples_to_file does not support external PPS (without modifying the =
code)</li><li>I know you mentioned you were unable to upgrade because of co=
mpatibility constraints.=C2=A0 But, even if you cannot upgrade the OS, woul=
d you be able to install a new UHD - perhaps in a local folder that did not=
 interfere with the system-wide UHD 3.12 installation.=C2=A0 I typically ha=
ve multiple UHD versions on my system and switch among them by &quot;sourci=
ng&quot; a given setup file as needed.</li></ul></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 15, 2023 at 12:=
52=E2=80=AFAM Anabel Almodovar &lt;<a href=3D"mailto:anabel.almodovar@gmail=
.com" target=3D"_blank">anabel.almodovar@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Dea=
r Rob,</div><div><br></div><div>Yes, I use an external clock configuration.=
</div><div><br></div><div><i>std::this_thread::sleep_for( std::chrono::mill=
iseconds(int64_t(1000 * setup_time) );</i></div><div><i>usrp-&gt;set_clock_=
source(&quot;external&quot;, uhd::usrp::multi_usrp::ALL_MBOARDS); =C2=A0 =
=C2=A0<br>usrp-&gt;set_time_source(&quot;external&quot;, uhd::usrp::multi_u=
srp::ALL_MBOARDS);<br>usrp-&gt;set_time_unknown_pps(uhd::time_spec_t(0.0));=
<br>std::this_thread::sleep_for(std::chrono::seconds(1));</i></div><div><br=
></div><div>I have only modified the code to get 8 channels and LO sharing.=
 I want to get a continuous acquisition setup without losing samples. But I=
 am starting with something basic at the moment. Any suggestions are welcom=
e. So I&#39;ve modified the streamer, the pointer buffer, and added writing=
 files.</div><div><br></div><div>my line is <i>$sudo ./rx_samples_to_file_v=
1 --args=3D&quot;addr0=3D192.168.60.2,second_addr0=3D192.168.50.2,addr1=3D1=
92.168.40.2,second_addr1=3D192.168.30.2,recv_buff_size=3D900000000&quot; --=
subdev=3D&quot;A:0 A:1 B:0 B:1&quot; --channel=3D&quot;0,1,2,3,4,5,6,7&quot=
; --freq 800e6 --rate 25e6 --bw 25e6 --gain 70 <br></i></div><div><i><br></=
i></div><div>Regards,</div><div><i>Anabel<br></i></div><div><br></div><div>=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">El jue, 14 dic 2023 a las 18:25, Rob Kossler (&lt;<a href=3D"mail=
to:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;) escribi=C3=
=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr">Hi Anabel,<div>In my opinion, the error you are experiencing has noth=
ing to do with streaming performance settings (such as &quot;performance&qu=
ot; governor, network descriptors, MTU size, etc). The issue seems to be th=
at the two X310 devices do not have synchronized clocks. In addition to the=
 physical synchronization using OctoClock, you must also configure each dev=
ice to use external synchronization and you must tell each device to reset =
its FPGA clock count at a common PPS. The typical sequence is: (1) wait for=
 a PPS to occur (by querying either device), (2) tell each device to reset =
its FPGA clock at the subsequent PPS (this step must complete before the ne=
xt PPS arrives).</div><div><br></div><div>You mentioned that you are using =
rx_samples_to_file. Did you modify it in any way?=C2=A0 What is your exact =
command line with all parameters?=C2=A0</div><div>Rob</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 14, =
2023 at 10:29=E2=80=AFAM Anabel Almodovar &lt;<a href=3D"mailto:anabel.almo=
dovar@gmail.com" target=3D"_blank">anabel.almodovar@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r"><div dir=3D"ltr"><div>Dear Rob</div><div><br></div><div>Thank you for yo=
ur answer. <br></div><div>I make use of the CDA-2990 octoclock as a source =
of synchronization between both USRPs, in addition to local oscillator shar=
ing. I use dual 10GigEth connections and a MTU of 9000 to connect the USRPs=
 to the PC. <br><br>Due to various compatibility issues I am unable to upgr=
ade the system. <br><br>When I work with a sample rate of 10MSps I don&#39;=
t get problems but when I increase to 25MSps I start to get the error. I ne=
ed them working with 100MSps. I have tried changing the CPU governor to &qu=
ot;performance&quot; to get the maximum working frequency (<i>sudo cpupower=
 frequency-set --governor performance</i>), as well as changing the number =
of network interface descriptors to maximum (<i>sudo ethtool -G &lt;interfa=
ce&gt; tx &lt;max&gt; rx &lt;max&gt;</i>), or increasing the dirty memory b=
uffer (<i>sudo sysctl -w vm.dirty_ratio=3D80; sudo sysctl -w vm.dirty_backg=
round_ratio=3D50</i>), but I still get the same problem.</div><div><br></di=
v><div>Regards,<br></div><div>Anabel<br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">El jue, 14 dic 2023 a las 15:=
38, Rob Kossler (&lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">r=
kossler@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Anabel,<div>How=
 are you sync-ing the clocks on the two units? Do you have an external PPS =
source and are you configuring both devices to use this external source?</d=
iv><div><br></div><div>Finally, do you have the ability to upgrade your OS =
and your UHD versions? There aren&#39;t many user&#39;s that are using UHD =
3.12 so if you have issues, it will be hard to get support.</div><div>Rob</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Thu, Dec 14, 2023 at 5:20=E2=80=AFAM Anabel Almodovar &lt;<a href=3D=
"mailto:anabel.almodovar@gmail.com" target=3D"_blank">anabel.almodovar@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div></div><div>Dear all,</div><div><br></div><div>I =
am trying to make an acquisition with two X310 equipped with two TwinRx. I =
am using Ubuntu 16.04 LTS 64-bit and UHD 3.12. My PC contains 128GB RAM and=
 an Intel=C2=AE Xeon(R) Silver 4114 CPU @ 2.20GHz =C3=97 40 and a 4TB SSD. =
I have modified the example rx_samples_to_file.cpp code to get 8 channels a=
nd I get the following error:<br><br></div><div><div><i><span style=3D"font=
-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans=
-serif;font-size:12pt;color:rgb(0,0,0)">D</span></i></div><div><i><span sty=
le=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helv=
etica,sans-serif;font-size:12pt;color:rgb(0,0,0)">[ERROR]
 [STREAMER] The receive packet handler failed to time-align packets.=20
1002 received packets were processed by the handler. However, a=20
timestamp match could not be determined.</span></i></div><div><i><span styl=
e=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helve=
tica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Timeout while streaming</s=
pan></i></div><div><i><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,A=
ptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,=
0,0)"><br aria-hidden=3D"true"></span></i></div><div><i><span style=3D"font=
-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans=
-serif;font-size:12pt;color:rgb(0,0,0)">[ERROR] [X300] <a href=3D"http://19=
2.168.60.2" target=3D"_blank">192.168.60.2</a>: x300 fw communication failu=
re #1</span></i></div><div><i><span style=3D"font-family:Aptos,Aptos_Embedd=
edFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;colo=
r:rgb(0,0,0)">EnvironmentError: IOError: x300 fw poke32 - reply timed out</=
span></i></div><div><i><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,=
Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0=
,0,0)">[ERROR]
 [UHD] An unexpected exception was caught in a task loop.The task loop=20
will now exit, things may not work.AssertionError: reply.sequence =3D=3D=20
request.sequence</span></i></div><div><i><span style=3D"font-family:Aptos,A=
ptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">=C2=A0 in virtual void x300_ctrl_iface_enet::__pok=
e32(uhd::wb_iface::wb_addr_type, uint32_t)</span></i></div><div><i><span st=
yle=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Hel=
vetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">=C2=A0 at /home/rs3_lab/=
workarea-uhd/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:135</span></i></div><d=
iv><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br></span></=
div><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontSe=
rvice,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">I don&#=
39;t know how to solve the Timeout problem, I have tried to start the acqui=
sition 1.1 sg in time. But it didn&#39;t work. <br><br><i>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 stream_cmd.stream_now =3D false;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
stream_cmd.time_spec =3D usrp-&gt;get_time_last_pps(0)+1.1;</i></span></div=
><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServi=
ce,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br></span=
></div><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFon=
tService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">What=
 is the problem and how can I fix it? <br></span></div><div><span style=3D"=
font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,=
sans-serif;font-size:12pt;color:rgb(0,0,0)"><br></span></div><div><span sty=
le=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helv=
etica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Regards,</span></div><div=
><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Ca=
libri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Anabel<br></spa=
n></div><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br=
></span></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div></div>

--000000000000f13680060ccb075f--

--===============2312797227850925293==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2312797227850925293==--
