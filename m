Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 69854817967
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 19:10:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6F92D385468
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 13:10:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702923047; bh=h6loDJN1bgOFWYkPAnPaWn6Z/SIH5d+qasLiaCINPBA=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=z0dcgWuYmrCatZn/nVfTwMhGAcmH5z+btGeUdoFmoTMVrmRpmR2tjABtkXtrZhctH
	 g1zeol7+VNi5MUOcPeDu/2+yaPjTw45BqcE7cqDA7/nPtan3t+NgDwxDnfPZE/LgaC
	 s9fu5Xebn2rzYSEUivSFq5Y/NTH992iIV6OcAELPQu6gUk6yPyL9tVTlThxQLyAOlQ
	 /wOx4Dvomh7ZJ8KjogdHvnKlcSq32g/tai/Ga22l9hCVJoJOXNpI1Ryi1hW1hR4r5M
	 7xjT9VHU18QFMUGZiUZnvf1KN3m1IJpYzbMoHeD3rJcIgwLFBNc7xzK9xClo45ISpo
	 GP72iL4VdcAFA==
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 5F1AD3853E4
	for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 13:10:15 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ezUQg93Y";
	dkim-atps=neutral
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-50e2ce4fb22so2908440e87.1
        for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 10:10:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1702923014; x=1703527814; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+SoqecLUMn89GjaQD9AVHbR0vsLpniqkxUNmrD7nYsk=;
        b=ezUQg93YKeFCIb5k2bYkwT4j196lpeUVrSKWup+ChXO5zHlGPsU1R+MquD03ytI4s2
         s+6jrk2LPoWF3s3BH1OKGYW92UkQYCIa6MvnH7wIpsGsghx99vO5cWu+dhB2nZrTvkNE
         z9WWMVT/wZOssi/2Ztm9nk/VpcSYMBYnyLUOqR1kJQOoBUCumeha13Nlf0N3UIhjkpWk
         hh/Mw5gGd3yjsACbMKhlsz0s0UzXjm+QojZVq2wz37ZmmOJm+d4he2Lmyan9isndOy1+
         we6s1PmjhVePEwrnh+1M5k52YDdn68Pf2j9oJRuzRDGWJGKD/gufhyaCwBwm5TcEk7O+
         5pYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702923014; x=1703527814;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+SoqecLUMn89GjaQD9AVHbR0vsLpniqkxUNmrD7nYsk=;
        b=q4MykMmBWfIWYoM8F2s5d92NFVRAFZ0pFnGqzkJLvSnfiEd6v69Z9i6pzUuBjbfzg6
         sPEcD+qPys9VkPhFJqmgCTdEZWJyZLWYx2i3AyOoJ/9WDrQgLBknHthfqTDIeIAeD5iZ
         yAPHXUzpx/LfxHYM9pIxgHa5YeRIOUjjj5k+y8LNeEyq1b6ud4TX0IzLjBUgG56bIv9g
         FhD+jF2+g3NqVzvp+IkB5ep1g68NWgIfaewuCYPg96zs2KuqeB7Sujf6V1Uis6JUHfTL
         RXw9sP9dY3aQXfWVVAy6NTgOdGeP/YMUO0btoQX49SyEbAWgCmlHQ5Q4/KjF28QgeeTx
         9xYA==
X-Gm-Message-State: AOJu0Yze2Ppj5MHCwM922tLXSQM10ABk2F2lijaVijK9ZTfkmjGHLyFp
	0R9SSJcs2uc+tMMOTYva6412kLeNi0NlHdlKLOZn5w==
X-Google-Smtp-Source: AGHT+IEo21y4dYNLOf+DoxUlqQWqnoMFijJ0oo0dWcNwx0G2k9je5LZpDbefJuvqK7sxpuU25ZUleQJNAxbmKv3kzL4=
X-Received: by 2002:a05:6512:38aa:b0:50e:3db1:b569 with SMTP id
 o10-20020a05651238aa00b0050e3db1b569mr650283lft.16.1702923013500; Mon, 18 Dec
 2023 10:10:13 -0800 (PST)
MIME-Version: 1.0
References: <CAFPzw1kOz59xv_tRZW7X8jntTLHS-szF_vUvzS5pE8KaGKExtg@mail.gmail.com>
 <CAB__hTTzgcb1p0Gut3qL2U2uvTQ9wRXVHg9EfJ080RC-LETg_A@mail.gmail.com>
 <CAFPzw1kn-j45P_7jf6cMG-kLQiz3zCTYjHog49nPXB+KswUKUw@mail.gmail.com>
 <CAB__hTSKQRF3eE5i=D_6zQo8C4LLWioP+ts=YvRDJiUM=UnnYw@mail.gmail.com>
 <CAFPzw1kVSnS0Nuye2QPKxJ0XFND3e==zFCejGLKY0s3AifKjZQ@mail.gmail.com>
 <CAB__hTTYiTXXgV9Ra1UxaQrLC9p_=Vzr3A4XFGTwKbOHJrb4zQ@mail.gmail.com>
 <CAFPzw1nAhnrzBig47-UCJ3gY7YeTnt2TqsVX3iJtJgv_3sMC6g@mail.gmail.com>
 <CAB__hTTO3kEiC+fWWBNuW_Juo8=MNkD_=KyAOGvz0KVm-gEpKw@mail.gmail.com> <CAFPzw1kUjnOR3Dqh+rq+VticBgcysXsoO07EJaETAkTf4=_HAw@mail.gmail.com>
In-Reply-To: <CAFPzw1kUjnOR3Dqh+rq+VticBgcysXsoO07EJaETAkTf4=_HAw@mail.gmail.com>
Date: Mon, 18 Dec 2023 12:10:01 -0600
Message-ID: <CAB__hTT_0Rxab+qCCQ1xEi9FicDa_KMetheOv5LRgwe5iSpwHg@mail.gmail.com>
To: Anabel Almodovar <anabel.almodovar@gmail.com>
Message-ID-Hash: R2RSPF7O42C2YM7JSY2JV6JA6QMPECCQ
X-Message-ID-Hash: R2RSPF7O42C2YM7JSY2JV6JA6QMPECCQ
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: streamer error X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R2RSPF7O42C2YM7JSY2JV6JA6QMPECCQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============2127387990578335391=="

--===============2127387990578335391==
Content-Type: multipart/alternative; boundary="0000000000004d3eab060ccca907"

--0000000000004d3eab060ccca907
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

How about if you use an unmodified "benchmark_rate"?

On Mon, Dec 18, 2023 at 11:43=E2=80=AFAM Anabel Almodovar <
anabel.almodovar@gmail.com> wrote:

> Even with a single card I still get the same error.
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *Creating the usrp device with:
> addr0=3D192.168.60.2,second_addr0=3D192.168.50.2,recv_buff_size=3D9000000=
00...Creating
> the subdevice with: A:0 A:1 B:0 B:1...Using Device: Single USRP:  Device:
> X-Series Device  Mboard 0: X310  RX Channel: 0    RX DSP: 0    RX Dboard:
> A    RX Subdev: TwinRX RX0  RX Channel: 1    RX DSP: 1    RX Dboard: A
> RX Subdev: TwinRX RX1  RX Channel: 2    RX DSP: 0    RX Dboard: B    RX
> Subdev: TwinRX RX0  RX Channel: 3    RX DSP: 1    RX Dboard: B    RX
> Subdev: TwinRX RX1  TX Channel: 0    TX DSP: 0    TX Dboard: A    TX
> Subdev: Unknown (0xffff) - 0  TX Channel: 1    TX DSP: 0    TX Dboard: B
> TX Subdev: Unknown (0xffff) - 0N=C3=BAmero de canales detectados: 4N=C3=
=BAmero de
> tarjetas detectadas: 1Actual RX Rate: 50.000000 Msps...Actual Acquisition
> Time to: 0.000000 Seconds.Actual RX Freq: 800.000000 MHz...Actual RX Gain=
:
> 5.000000 dB...Actual RX Bandwidth: 50.000000 MHz...Setting LO
> source...[INFO] [MULTI_USRP]     1) catch time transition at pps edge[INF=
O]
> [MULTI_USRP]     2) set times next pps (synchronously)Press Ctrl + C to
> stop streaming...STAR SAMPLING ...D[ERROR] [STREAMER] The receive packet
> handler failed to time-align packets. 1002 received packets were processe=
d
> by the handler. However, a timestamp match could not be determined.D[ERRO=
R]
> [STREAMER] The receive packet handler failed to time-align packets. 1002
> received packets were processed by the handler. However, a timestamp matc=
h
> could not be determined.^CReceived 199995208 samples in 6.703929
> seconds29.8325 MspsDone!*
>
>
> El lun, 18 dic 2023 a las 17:13, Rob Kossler (<rkossler@nd.edu>) escribi=
=C3=B3:
>
>> Several comments:
>>
>>    - It seems like multiple things are going on.  You mentioned the
>>    original "failed to time align" error and below you mentioned 'O' and=
 'D'.
>>       - The time-align error I did not expect had anything to do with
>>       "performance". This seemed to me that the first packet arriving fr=
om device
>>       1 had a different time stamp than the first packet arriving from d=
evice 2.
>>       Now, I'm not so sure
>>       - But, the 'O' and 'D' are often related to "performance".
>>       Overflow 'O' occurs when the 'Radio' block has A/D samples that it=
 needs to
>>       put in a FIFO but the FIFO is full because it is not being emptied=
 fast
>>       enough (presumably by the host PC).  A dropped packet (or sequence=
 error)
>>       'D' occurs when the host PC detects that the incoming packets are =
not in
>>       sequential order. This can occur if the host PC Ethernet handling =
becomes
>>       overwhelmed and simply discards a set of incoming packets for a ti=
me
>>       period. Both 'O' and 'D' can imply that the host PC is not keeping=
 up with
>>       incoming data
>>    - In any case, you may want to simplify the problem by dropping from
>>    two devices to one device.  See if you can eliminate some or all of t=
hese
>>    problems when using only 4 channels.
>>    - If you drop to one device, you can use benchmark_rate to test
>>    performance.  If you do not use "second_addr", you should be able to =
get
>>    4x50 MS/s.  If you use "second_addr", you should be able to get 4x100=
 MS/s.
>>    - Regarding your needed changes to "rx_samples_to_file", I guess I
>>    was thinking about the latest version which supports multiple channel=
s.
>>    Perhaps UHD 3.12 has a version of this example that only supports a s=
ingle
>>    channel.  You could compare your version to the latest version (say, =
UHD
>>    4.6) to see the improvements to this example.
>>
>>
>> On Mon, Dec 18, 2023 at 7:44=E2=80=AFAM Anabel Almodovar <
>> anabel.almodovar@gmail.com> wrote:
>>
>>> Hi Rob,
>>>
>>> Thanks for the suggestions. I have tried deleting the LO sharing, and
>>> nothing changes. Then removing the second addr, and that leads me to ge=
t
>>> 'Ds' in addition to the error already mentioned, as it is not able to
>>> handle that much information. Although I don't quite understand the
>>> difference between 'O' and 'D'.
>>>
>>> From what I understand the program is set up for a single channel, so I
>>> need to modify it to get more than one.
>>>
>>> Thank you in advance.
>>>
>>> Regards,
>>> Anabel
>>>
>>> El vie, 15 dic 2023 a las 15:39, Rob Kossler (<rkossler@nd.edu>)
>>> escribi=C3=B3:
>>>
>>>> Hmmm. I'm not sure. Here are a few comments:
>>>>
>>>>    - Try running without "second_addr".  I realize that you will need
>>>>    it for full rate (4 x 100MS/s for each X310), but you could run at =
50 MS/s
>>>>    without second_addr
>>>>    - Try running without shared LO. I don't think you would need to
>>>>    physically change any sharing cables.
>>>>    - I am curious why you needed to modify the streamer, pointer
>>>>    buffer and file writing.  I would expect that this would scale with=
 the
>>>>    number of channels such that you didn't need to modify any code in =
this area
>>>>    - If you were using a more recent UHD, I would recommend switching
>>>>    to the example benchmark_rate which natively supports external PPS =
and
>>>>    multiple devices.  I noticed that even the most recent rx_samples_t=
o_file
>>>>    does not support external PPS (without modifying the code)
>>>>    - I know you mentioned you were unable to upgrade because of
>>>>    compatibility constraints.  But, even if you cannot upgrade the OS,=
 would
>>>>    you be able to install a new UHD - perhaps in a local folder that d=
id not
>>>>    interfere with the system-wide UHD 3.12 installation.  I typically =
have
>>>>    multiple UHD versions on my system and switch among them by "sourci=
ng" a
>>>>    given setup file as needed.
>>>>
>>>>
>>>> On Fri, Dec 15, 2023 at 12:52=E2=80=AFAM Anabel Almodovar <
>>>> anabel.almodovar@gmail.com> wrote:
>>>>
>>>>> Dear Rob,
>>>>>
>>>>> Yes, I use an external clock configuration.
>>>>>
>>>>> *std::this_thread::sleep_for( std::chrono::milliseconds(int64_t(1000 =
*
>>>>> setup_time) );*
>>>>>
>>>>>
>>>>>
>>>>> *usrp->set_clock_source("external",
>>>>> uhd::usrp::multi_usrp::ALL_MBOARDS);    usrp->set_time_source("extern=
al",
>>>>> uhd::usrp::multi_usrp::ALL_MBOARDS);usrp->set_time_unknown_pps(uhd::t=
ime_spec_t(0.0));std::this_thread::sleep_for(std::chrono::seconds(1));*
>>>>>
>>>>> I have only modified the code to get 8 channels and LO sharing. I wan=
t
>>>>> to get a continuous acquisition setup without losing samples. But I a=
m
>>>>> starting with something basic at the moment. Any suggestions are welc=
ome.
>>>>> So I've modified the streamer, the pointer buffer, and added writing =
files.
>>>>>
>>>>> my line is
>>>>> *$sudo ./rx_samples_to_file_v1
>>>>> --args=3D"addr0=3D192.168.60.2,second_addr0=3D192.168.50.2,addr1=3D19=
2.168.40.2,second_addr1=3D192.168.30.2,recv_buff_size=3D900000000"
>>>>> --subdev=3D"A:0 A:1 B:0 B:1" --channel=3D"0,1,2,3,4,5,6,7" --freq 800=
e6 --rate
>>>>> 25e6 --bw 25e6 --gain 70 *
>>>>>
>>>>> Regards,
>>>>>
>>>>> *Anabel*
>>>>>
>>>>>
>>>>>
>>>>> El jue, 14 dic 2023 a las 18:25, Rob Kossler (<rkossler@nd.edu>)
>>>>> escribi=C3=B3:
>>>>>
>>>>>> Hi Anabel,
>>>>>> In my opinion, the error you are experiencing has nothing to do with
>>>>>> streaming performance settings (such as "performance" governor, netw=
ork
>>>>>> descriptors, MTU size, etc). The issue seems to be that the two X310
>>>>>> devices do not have synchronized clocks. In addition to the physical
>>>>>> synchronization using OctoClock, you must also configure each device=
 to use
>>>>>> external synchronization and you must tell each device to reset its =
FPGA
>>>>>> clock count at a common PPS. The typical sequence is: (1) wait for a=
 PPS to
>>>>>> occur (by querying either device), (2) tell each device to reset its=
 FPGA
>>>>>> clock at the subsequent PPS (this step must complete before the next=
 PPS
>>>>>> arrives).
>>>>>>
>>>>>> You mentioned that you are using rx_samples_to_file. Did you modify
>>>>>> it in any way?  What is your exact command line with all parameters?
>>>>>> Rob
>>>>>>
>>>>>> On Thu, Dec 14, 2023 at 10:29=E2=80=AFAM Anabel Almodovar <
>>>>>> anabel.almodovar@gmail.com> wrote:
>>>>>>
>>>>>>> Dear Rob
>>>>>>>
>>>>>>> Thank you for your answer.
>>>>>>> I make use of the CDA-2990 octoclock as a source of synchronization
>>>>>>> between both USRPs, in addition to local oscillator sharing. I use =
dual
>>>>>>> 10GigEth connections and a MTU of 9000 to connect the USRPs to the =
PC.
>>>>>>>
>>>>>>> Due to various compatibility issues I am unable to upgrade the
>>>>>>> system.
>>>>>>>
>>>>>>> When I work with a sample rate of 10MSps I don't get problems but
>>>>>>> when I increase to 25MSps I start to get the error. I need them wor=
king
>>>>>>> with 100MSps. I have tried changing the CPU governor to "performanc=
e" to
>>>>>>> get the maximum working frequency (*sudo cpupower frequency-set
>>>>>>> --governor performance*), as well as changing the number of network
>>>>>>> interface descriptors to maximum (*sudo ethtool -G <interface> tx
>>>>>>> <max> rx <max>*), or increasing the dirty memory buffer (*sudo
>>>>>>> sysctl -w vm.dirty_ratio=3D80; sudo sysctl -w vm.dirty_background_r=
atio=3D50*),
>>>>>>> but I still get the same problem.
>>>>>>>
>>>>>>> Regards,
>>>>>>> Anabel
>>>>>>>
>>>>>>> El jue, 14 dic 2023 a las 15:38, Rob Kossler (<rkossler@nd.edu>)
>>>>>>> escribi=C3=B3:
>>>>>>>
>>>>>>>> Hi Anabel,
>>>>>>>> How are you sync-ing the clocks on the two units? Do you have an
>>>>>>>> external PPS source and are you configuring both devices to use th=
is
>>>>>>>> external source?
>>>>>>>>
>>>>>>>> Finally, do you have the ability to upgrade your OS and your UHD
>>>>>>>> versions? There aren't many user's that are using UHD 3.12 so if y=
ou have
>>>>>>>> issues, it will be hard to get support.
>>>>>>>> Rob
>>>>>>>>
>>>>>>>> On Thu, Dec 14, 2023 at 5:20=E2=80=AFAM Anabel Almodovar <
>>>>>>>> anabel.almodovar@gmail.com> wrote:
>>>>>>>>
>>>>>>>>> Dear all,
>>>>>>>>>
>>>>>>>>> I am trying to make an acquisition with two X310 equipped with tw=
o
>>>>>>>>> TwinRx. I am using Ubuntu 16.04 LTS 64-bit and UHD 3.12. My PC co=
ntains
>>>>>>>>> 128GB RAM and an Intel=C2=AE Xeon(R) Silver 4114 CPU @ 2.20GHz =
=C3=97 40 and a 4TB
>>>>>>>>> SSD. I have modified the example rx_samples_to_file.cpp code to g=
et 8
>>>>>>>>> channels and I get the following error:
>>>>>>>>>
>>>>>>>>> *D*
>>>>>>>>> *[ERROR] [STREAMER] The receive packet handler failed to
>>>>>>>>> time-align packets. 1002 received packets were processed by the h=
andler.
>>>>>>>>> However, a timestamp match could not be determined.*
>>>>>>>>> *Timeout while streaming*
>>>>>>>>>
>>>>>>>>> *[ERROR] [X300] 192.168.60.2 <http://192.168.60.2>: x300 fw
>>>>>>>>> communication failure #1*
>>>>>>>>> *EnvironmentError: IOError: x300 fw poke32 - reply timed out*
>>>>>>>>> *[ERROR] [UHD] An unexpected exception was caught in a task
>>>>>>>>> loop.The task loop will now exit, things may not work.AssertionEr=
ror:
>>>>>>>>> reply.sequence =3D=3D request.sequence*
>>>>>>>>> *  in virtual void
>>>>>>>>> x300_ctrl_iface_enet::__poke32(uhd::wb_iface::wb_addr_type, uint3=
2_t)*
>>>>>>>>> *  at
>>>>>>>>> /home/rs3_lab/workarea-uhd/uhd/host/lib/usrp/x300/x300_fw_ctrl.cp=
p:135*
>>>>>>>>>
>>>>>>>>> I don't know how to solve the Timeout problem, I have tried to
>>>>>>>>> start the acquisition 1.1 sg in time. But it didn't work.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> *        stream_cmd.stream_now =3D false;
>>>>>>>>> stream_cmd.time_spec =3D usrp->get_time_last_pps(0)+1.1;*
>>>>>>>>>
>>>>>>>>> What is the problem and how can I fix it?
>>>>>>>>>
>>>>>>>>> Regards,
>>>>>>>>> Anabel
>>>>>>>>>
>>>>>>>>> _______________________________________________
>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>>
>>>>>>>>

--0000000000004d3eab060ccca907
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">How about if you use an unmodified &quot;benchmark_rate&qu=
ot;?=C2=A0=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Dec 18, 2023 at 11:43=E2=80=AFAM Anabel Almodovar &=
lt;<a href=3D"mailto:anabel.almodovar@gmail.com">anabel.almodovar@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div>Even with a single card I still get the same error.</=
div><div><br></div><div><i><b>Creating the usrp device with: addr0=3D192.16=
8.60.2,second_addr0=3D192.168.50.2,recv_buff_size=3D900000000...<br>Creatin=
g the subdevice with: A:0 A:1 B:0 B:1...<br>Using Device: Single USRP:<br>=
=C2=A0 Device: X-Series Device<br>=C2=A0 Mboard 0: X310<br>=C2=A0 RX Channe=
l: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=
=A0 RX Subdev: TwinRX RX0<br>=C2=A0 RX Channel: 1<br>=C2=A0 =C2=A0 RX DSP: =
1<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: TwinRX RX1<br>=
=C2=A0 RX Channel: 2<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard:=
 B<br>=C2=A0 =C2=A0 RX Subdev: TwinRX RX0<br>=C2=A0 RX Channel: 3<br>=C2=A0=
 =C2=A0 RX DSP: 1<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subdev:=
 TwinRX RX1<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =
=C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: Unknown (0xffff) - 0<br>=C2=
=A0 TX Channel: 1<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: B<=
br>=C2=A0 =C2=A0 TX Subdev: Unknown (0xffff) - 0<br><br>N=C3=BAmero de cana=
les detectados: 4<br>N=C3=BAmero de tarjetas detectadas: 1<br>Actual RX Rat=
e: 50.000000 Msps...<br>Actual Acquisition Time to: 0.000000 Seconds.<br>Ac=
tual RX Freq: 800.000000 MHz...<br>Actual RX Gain: 5.000000 dB...<br>Actual=
 RX Bandwidth: 50.000000 MHz...<br>Setting LO source...<br><br>[INFO] [MULT=
I_USRP] =C2=A0 =C2=A0 1) catch time transition at pps edge<br>[INFO] [MULTI=
_USRP] =C2=A0 =C2=A0 2) set times next pps (synchronously)<br>Press Ctrl + =
C to stop streaming...<br><br>STAR SAMPLING ...<br>D<br>[ERROR] [STREAMER] =
The receive packet handler failed to time-align packets. 1002 received pack=
ets were processed by the handler. However, a timestamp match could not be =
determined.<br>D<br>[ERROR] [STREAMER] The receive packet handler failed to=
 time-align packets. 1002 received packets were processed by the handler. H=
owever, a timestamp match could not be determined.<br>^C<br>Received 199995=
208 samples in 6.703929 seconds<br>29.8325 Msps<br><br>Done!</b><br></i></d=
iv><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">El lun, 18 dic 2023 a las 17:13, Rob Kossler (&lt;<a href=
=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;) escr=
ibi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div dir=3D"ltr">Several comments:<div><ul><li>It seems like mu=
ltiple things are going on.=C2=A0 You mentioned the original &quot;failed t=
o time align&quot; error and below you mentioned &#39;O&#39; and &#39;D&#39=
;.=C2=A0=C2=A0</li><ul><li>The time-align error I did not expect had anythi=
ng to do with &quot;performance&quot;. This seemed to me that the first pac=
ket arriving from device 1 had a different time stamp than the first packet=
 arriving from device 2. Now, I&#39;m not so sure</li><li>But, the &#39;O&#=
39; and &#39;D&#39; are often related to &quot;performance&quot;.=C2=A0 Ove=
rflow &#39;O&#39; occurs when the &#39;Radio&#39; block has A/D samples tha=
t it needs to put in a FIFO but the FIFO is full because it is not being em=
ptied fast enough (presumably by the host PC).=C2=A0 A dropped packet (or s=
equence error) &#39;D&#39; occurs when the host PC detects that the incomin=
g packets are not in sequential order. This can occur if the host PC Ethern=
et handling becomes overwhelmed and simply discards a set of incoming packe=
ts for a time period. Both &#39;O&#39; and &#39;D&#39; can imply that the h=
ost PC is not keeping up with incoming data</li></ul><li>In any case, you m=
ay want to simplify the problem by dropping from two devices to one device.=
=C2=A0 See if you can eliminate some or all of these problems when using on=
ly 4 channels.</li><li>If you drop to one device, you can use benchmark_rat=
e to test performance.=C2=A0 If you do not use &quot;second_addr&quot;, you=
 should be able to get 4x50 MS/s.=C2=A0 If you use &quot;second_addr&quot;,=
 you should be able to get 4x100 MS/s.</li><li>Regarding your needed change=
s to &quot;rx_samples_to_file&quot;, I guess I was thinking about the lates=
t version which supports multiple channels. Perhaps UHD 3.12 has a version =
of this example that only supports a single channel.=C2=A0 You could compar=
e your version to the latest version (say, UHD 4.6) to see the improvements=
 to this example.</li></ul></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 18, 2023 at 7:44=E2=80=AFAM An=
abel Almodovar &lt;<a href=3D"mailto:anabel.almodovar@gmail.com" target=3D"=
_blank">anabel.almodovar@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Rob,<br><br>Thanks fo=
r the suggestions. I have tried deleting the LO sharing, and nothing change=
s. Then removing the second addr, and that leads me to get &#39;Ds&#39; in =
addition to the error already mentioned, as it is not able to handle that m=
uch information. Although I don&#39;t quite understand the difference betwe=
en &#39;O&#39; and &#39;D&#39;.<br><br><div>From what I understand the prog=
ram is set up for a single channel, so I need to modify it to get more than=
 one. <br></div><div><br></div><div>Thank you in advance.</div><div><br></d=
iv><div>Regards,</div><div>Anabel<br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">El vie, 15 dic 2023 a las 15:39,=
 Rob Kossler (&lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkos=
sler@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div>Hmmm. I&#39;m not sure. Here are =
a few comments:</div><div><ul><li>Try running without &quot;second_addr&quo=
t;.=C2=A0 I realize that you will need it for full rate (4 x 100MS/s for ea=
ch X310), but you could run at 50 MS/s without second_addr</li><li>Try runn=
ing without=C2=A0shared LO. I don&#39;t think you would need to physically =
change any sharing cables.</li><li>I am curious why you needed to modify th=
e streamer, pointer buffer and file writing.=C2=A0 I would expect that this=
 would scale with the number of channels such that you didn&#39;t need to m=
odify any code in this area</li><li>If you were using a more recent UHD, I =
would recommend switching to the example benchmark_rate which natively supp=
orts external PPS and multiple devices.=C2=A0 I noticed that even the most =
recent=C2=A0rx_samples_to_file does not support external PPS (without modif=
ying the code)</li><li>I know you mentioned you were unable to upgrade beca=
use of compatibility constraints.=C2=A0 But, even if you cannot upgrade the=
 OS, would you be able to install a new UHD - perhaps in a local folder tha=
t did not interfere with the system-wide UHD 3.12 installation.=C2=A0 I typ=
ically have multiple UHD versions on my system and switch among them by &qu=
ot;sourcing&quot; a given setup file as needed.</li></ul></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 15, 20=
23 at 12:52=E2=80=AFAM Anabel Almodovar &lt;<a href=3D"mailto:anabel.almodo=
var@gmail.com" target=3D"_blank">anabel.almodovar@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div>Dear Rob,</div><div><br></div><div>Yes, I use an external clock confi=
guration.</div><div><br></div><div><i>std::this_thread::sleep_for( std::chr=
ono::milliseconds(int64_t(1000 * setup_time) );</i></div><div><i>usrp-&gt;s=
et_clock_source(&quot;external&quot;, uhd::usrp::multi_usrp::ALL_MBOARDS); =
=C2=A0 =C2=A0<br>usrp-&gt;set_time_source(&quot;external&quot;, uhd::usrp::=
multi_usrp::ALL_MBOARDS);<br>usrp-&gt;set_time_unknown_pps(uhd::time_spec_t=
(0.0));<br>std::this_thread::sleep_for(std::chrono::seconds(1));</i></div><=
div><br></div><div>I have only modified the code to get 8 channels and LO s=
haring. I want to get a continuous acquisition setup without losing samples=
. But I am starting with something basic at the moment. Any suggestions are=
 welcome. So I&#39;ve modified the streamer, the pointer buffer, and added =
writing files.</div><div><br></div><div>my line is <i>$sudo ./rx_samples_to=
_file_v1 --args=3D&quot;addr0=3D192.168.60.2,second_addr0=3D192.168.50.2,ad=
dr1=3D192.168.40.2,second_addr1=3D192.168.30.2,recv_buff_size=3D900000000&q=
uot; --subdev=3D&quot;A:0 A:1 B:0 B:1&quot; --channel=3D&quot;0,1,2,3,4,5,6=
,7&quot; --freq 800e6 --rate 25e6 --bw 25e6 --gain 70 <br></i></div><div><i=
><br></i></div><div>Regards,</div><div><i>Anabel<br></i></div><div><br></di=
v><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">El jue, 14 dic 2023 a las 18:25, Rob Kossler (&lt;<a href=
=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;) escr=
ibi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr">Hi Anabel,<div>In my opinion, the error you are experiencing ha=
s nothing to do with streaming performance settings (such as &quot;performa=
nce&quot; governor, network descriptors, MTU size, etc). The issue seems to=
 be that the two X310 devices do not have synchronized clocks. In addition =
to the physical synchronization using OctoClock, you must also configure ea=
ch device to use external synchronization and you must tell each device to =
reset its FPGA clock count at a common PPS. The typical sequence is: (1) wa=
it for a PPS to occur (by querying either device), (2) tell each device to =
reset its FPGA clock at the subsequent PPS (this step must complete before =
the next PPS arrives).</div><div><br></div><div>You mentioned that you are =
using rx_samples_to_file. Did you modify it in any way?=C2=A0 What is your =
exact command line with all parameters?=C2=A0</div><div>Rob</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, De=
c 14, 2023 at 10:29=E2=80=AFAM Anabel Almodovar &lt;<a href=3D"mailto:anabe=
l.almodovar@gmail.com" target=3D"_blank">anabel.almodovar@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr"><div>Dear Rob</div><div><br></div><div>Thank you =
for your answer. <br></div><div>I make use of the CDA-2990 octoclock as a s=
ource of synchronization between both USRPs, in addition to local oscillato=
r sharing. I use dual 10GigEth connections and a MTU of 9000 to connect the=
 USRPs to the PC. <br><br>Due to various compatibility issues I am unable t=
o upgrade the system. <br><br>When I work with a sample rate of 10MSps I do=
n&#39;t get problems but when I increase to 25MSps I start to get the error=
. I need them working with 100MSps. I have tried changing the CPU governor =
to &quot;performance&quot; to get the maximum working frequency (<i>sudo cp=
upower frequency-set --governor performance</i>), as well as changing the n=
umber of network interface descriptors to maximum (<i>sudo ethtool -G &lt;i=
nterface&gt; tx &lt;max&gt; rx &lt;max&gt;</i>), or increasing the dirty me=
mory buffer (<i>sudo sysctl -w vm.dirty_ratio=3D80; sudo sysctl -w vm.dirty=
_background_ratio=3D50</i>), but I still get the same problem.</div><div><b=
r></div><div>Regards,<br></div><div>Anabel<br></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El jue, 14 dic 2023 a l=
as 15:38, Rob Kossler (&lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_bl=
ank">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Anabel,<d=
iv>How are you sync-ing the clocks on the two units? Do you have an externa=
l PPS source and are you configuring both devices to use this external sour=
ce?</div><div><br></div><div>Finally, do you have the ability to upgrade yo=
ur OS and your UHD versions? There aren&#39;t many user&#39;s that are usin=
g UHD 3.12 so if you have issues, it will be hard to get support.</div><div=
>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Thu, Dec 14, 2023 at 5:20=E2=80=AFAM Anabel Almodovar &lt;<a h=
ref=3D"mailto:anabel.almodovar@gmail.com" target=3D"_blank">anabel.almodova=
r@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div></div><div>Dear all,</div><div><br></div><=
div>I am trying to make an acquisition with two X310 equipped with two Twin=
Rx. I am using Ubuntu 16.04 LTS 64-bit and UHD 3.12. My PC contains 128GB R=
AM and an Intel=C2=AE Xeon(R) Silver 4114 CPU @ 2.20GHz =C3=97 40 and a 4TB=
 SSD. I have modified the example rx_samples_to_file.cpp code to get 8 chan=
nels and I get the following error:<br><br></div><div><div><i><span style=
=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvet=
ica,sans-serif;font-size:12pt;color:rgb(0,0,0)">D</span></i></div><div><i><=
span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">[ERROR]
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
</blockquote></div>
</blockquote></div>

--0000000000004d3eab060ccca907--

--===============2127387990578335391==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2127387990578335391==--
