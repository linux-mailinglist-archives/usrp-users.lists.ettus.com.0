Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5732817900
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 18:44:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E79E73852CC
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 12:44:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702921450; bh=gtySvljTboP9xTykhkpRffa87v4be9NCNG8+oXzCszE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=VBB+/7RxqnRQf5g3nUAJII5VEVC+CI9Q2Ww1PDjjnwmGII4Sg/XuFUSgcqZ2w+Alm
	 XZ2YYJTa7PZpWUW2rSoY478tyqjJpTl38toPUyR4q1GDxNUa32gRJVMSIwyDV77vY8
	 hX1UZYdCcHW8AbqjL9taQaqMYfqwGNSpuScRfos8N9kd9JdiTdclWaoBvsixCnazRh
	 FDALUHnuiiFnOzhZdJl6ZsFTA7w4SC/Bt+EP3P+0q8q12NNj7hAKWGOV6PmcIx8VSN
	 pvrXDnti0656QfqgEndUBiYiOXQnGy3RpTfEN9iEMrFdxhH9gLpJT2b9AHSSsbpcv0
	 FBPKj4W8lsmhg==
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	by mm2.emwd.com (Postfix) with ESMTPS id E89A4384E23
	for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 12:43:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IL2dO0Uw";
	dkim-atps=neutral
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-5c6bd3100fcso1203008a12.3
        for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 09:43:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702921417; x=1703526217; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2vu4bwRPXS9rXzkDRljx2ruMu6APxKPR4Rt5tvyGnIA=;
        b=IL2dO0Uw7Tuz8ogE8rfmaITFEkU04g9rmBHSaxjAwas5WUf5yUYCd250Z+2Hp3vtra
         53rl++uyeIWBJU4i6OXW4UjdCStrA/GbddCTNYsDPtwKsECgSXBudiz59RtM6QB0oiVl
         iLeKltTcVvnHs2GlqQW9CX0oECvJX/0G+Ac1SstmANZ97V+1wz2cMn8y68XUTH7S4Ylz
         7OT83Y01Jna60I18cHXXn5ABwsCS6rqEv9M+H9oBBEEkp6rvalhpQ1+ELZF7aRNxlMLh
         ylAD93okKrV6YIux5HuI2ptLF1KiSTLlN4ZeinWNw2Zj9aoqj/VBGh4UnI6G/Wz6vzF7
         nKEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702921417; x=1703526217;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2vu4bwRPXS9rXzkDRljx2ruMu6APxKPR4Rt5tvyGnIA=;
        b=rHYsf68Kkq/WRF/mMICVQEMIDvTLERGac0zxPyIMFcvQTTCiilcrZTbeM2+h6c+6YF
         46UV8siMErimoJIL89RbMUwm/8X9ISJJ1g8dOKzaSIMKZH8lwpiQqQIq6etZn7BdIDxa
         JNa8rQgTf7+PclQJB1NYMxVV6bXKY9hQF1JRqHdn2R5jO1banKSppb7LsdDufE4jGoxy
         JbeG6XXbmPl0qDL+NUQWLoKAkN1er420FGmyT5pfANpPyYY29KzvDRVx2jlXJNZmOEX7
         jNVK6IpiJ7DupCM4jxN9pac1L8aA3/25x0M53UVFY+zAadOMEkpthom1g56eA4LRd2nc
         zsvQ==
X-Gm-Message-State: AOJu0YzzVSXDsMzYOlM4rLJFi8xiVwt+c6FE28vb3d7/uzFNEth05Fsc
	clH2UqnHigOnQL7R/C5psgxW5dJ6krLlZxt9oUPYJGsGwc8=
X-Google-Smtp-Source: AGHT+IHDtw6zEhOFddo3aeoJlFqYZHjszkkyeH919tcQ697IQTxI3serxKVxI9mPfE46m+tIuPQphZtFdvEz/3MqBmQ=
X-Received: by 2002:a17:90b:1113:b0:286:6cc1:289 with SMTP id
 gi19-20020a17090b111300b002866cc10289mr7417345pjb.84.1702921416618; Mon, 18
 Dec 2023 09:43:36 -0800 (PST)
MIME-Version: 1.0
References: <CAFPzw1kOz59xv_tRZW7X8jntTLHS-szF_vUvzS5pE8KaGKExtg@mail.gmail.com>
 <CAB__hTTzgcb1p0Gut3qL2U2uvTQ9wRXVHg9EfJ080RC-LETg_A@mail.gmail.com>
 <CAFPzw1kn-j45P_7jf6cMG-kLQiz3zCTYjHog49nPXB+KswUKUw@mail.gmail.com>
 <CAB__hTSKQRF3eE5i=D_6zQo8C4LLWioP+ts=YvRDJiUM=UnnYw@mail.gmail.com>
 <CAFPzw1kVSnS0Nuye2QPKxJ0XFND3e==zFCejGLKY0s3AifKjZQ@mail.gmail.com>
 <CAB__hTTYiTXXgV9Ra1UxaQrLC9p_=Vzr3A4XFGTwKbOHJrb4zQ@mail.gmail.com>
 <CAFPzw1nAhnrzBig47-UCJ3gY7YeTnt2TqsVX3iJtJgv_3sMC6g@mail.gmail.com> <CAB__hTTO3kEiC+fWWBNuW_Juo8=MNkD_=KyAOGvz0KVm-gEpKw@mail.gmail.com>
In-Reply-To: <CAB__hTTO3kEiC+fWWBNuW_Juo8=MNkD_=KyAOGvz0KVm-gEpKw@mail.gmail.com>
From: Anabel Almodovar <anabel.almodovar@gmail.com>
Date: Mon, 18 Dec 2023 18:43:25 +0100
Message-ID: <CAFPzw1kUjnOR3Dqh+rq+VticBgcysXsoO07EJaETAkTf4=_HAw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: 24HEADKJJU6B33OKTEGHR2ZTFNXPSMCH
X-Message-ID-Hash: 24HEADKJJU6B33OKTEGHR2ZTFNXPSMCH
X-MailFrom: anabel.almodovar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: streamer error X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/24HEADKJJU6B33OKTEGHR2ZTFNXPSMCH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3902650616961551026=="

--===============3902650616961551026==
Content-Type: multipart/alternative; boundary="0000000000001e3760060ccc4ad8"

--0000000000001e3760060ccc4ad8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Even with a single card I still get the same error.






















































*Creating the usrp device with:
addr0=3D192.168.60.2,second_addr0=3D192.168.50.2,recv_buff_size=3D900000000=
...Creating
the subdevice with: A:0 A:1 B:0 B:1...Using Device: Single USRP:  Device:
X-Series Device  Mboard 0: X310  RX Channel: 0    RX DSP: 0    RX Dboard:
A    RX Subdev: TwinRX RX0  RX Channel: 1    RX DSP: 1    RX Dboard: A
RX Subdev: TwinRX RX1  RX Channel: 2    RX DSP: 0    RX Dboard: B    RX
Subdev: TwinRX RX0  RX Channel: 3    RX DSP: 1    RX Dboard: B    RX
Subdev: TwinRX RX1  TX Channel: 0    TX DSP: 0    TX Dboard: A    TX
Subdev: Unknown (0xffff) - 0  TX Channel: 1    TX DSP: 0    TX Dboard: B
TX Subdev: Unknown (0xffff) - 0N=C3=BAmero de canales detectados: 4N=C3=BAm=
ero de
tarjetas detectadas: 1Actual RX Rate: 50.000000 Msps...Actual Acquisition
Time to: 0.000000 Seconds.Actual RX Freq: 800.000000 MHz...Actual RX Gain:
5.000000 dB...Actual RX Bandwidth: 50.000000 MHz...Setting LO
source...[INFO] [MULTI_USRP]     1) catch time transition at pps edge[INFO]
[MULTI_USRP]     2) set times next pps (synchronously)Press Ctrl + C to
stop streaming...STAR SAMPLING ...D[ERROR] [STREAMER] The receive packet
handler failed to time-align packets. 1002 received packets were processed
by the handler. However, a timestamp match could not be determined.D[ERROR]
[STREAMER] The receive packet handler failed to time-align packets. 1002
received packets were processed by the handler. However, a timestamp match
could not be determined.^CReceived 199995208 samples in 6.703929
seconds29.8325 MspsDone!*


El lun, 18 dic 2023 a las 17:13, Rob Kossler (<rkossler@nd.edu>) escribi=C3=
=B3:

> Several comments:
>
>    - It seems like multiple things are going on.  You mentioned the
>    original "failed to time align" error and below you mentioned 'O' and =
'D'.
>       - The time-align error I did not expect had anything to do with
>       "performance". This seemed to me that the first packet arriving fro=
m device
>       1 had a different time stamp than the first packet arriving from de=
vice 2.
>       Now, I'm not so sure
>       - But, the 'O' and 'D' are often related to "performance".
>       Overflow 'O' occurs when the 'Radio' block has A/D samples that it =
needs to
>       put in a FIFO but the FIFO is full because it is not being emptied =
fast
>       enough (presumably by the host PC).  A dropped packet (or sequence =
error)
>       'D' occurs when the host PC detects that the incoming packets are n=
ot in
>       sequential order. This can occur if the host PC Ethernet handling b=
ecomes
>       overwhelmed and simply discards a set of incoming packets for a tim=
e
>       period. Both 'O' and 'D' can imply that the host PC is not keeping =
up with
>       incoming data
>    - In any case, you may want to simplify the problem by dropping from
>    two devices to one device.  See if you can eliminate some or all of th=
ese
>    problems when using only 4 channels.
>    - If you drop to one device, you can use benchmark_rate to test
>    performance.  If you do not use "second_addr", you should be able to g=
et
>    4x50 MS/s.  If you use "second_addr", you should be able to get 4x100 =
MS/s.
>    - Regarding your needed changes to "rx_samples_to_file", I guess I was
>    thinking about the latest version which supports multiple channels. Pe=
rhaps
>    UHD 3.12 has a version of this example that only supports a single
>    channel.  You could compare your version to the latest version (say, U=
HD
>    4.6) to see the improvements to this example.
>
>
> On Mon, Dec 18, 2023 at 7:44=E2=80=AFAM Anabel Almodovar <
> anabel.almodovar@gmail.com> wrote:
>
>> Hi Rob,
>>
>> Thanks for the suggestions. I have tried deleting the LO sharing, and
>> nothing changes. Then removing the second addr, and that leads me to get
>> 'Ds' in addition to the error already mentioned, as it is not able to
>> handle that much information. Although I don't quite understand the
>> difference between 'O' and 'D'.
>>
>> From what I understand the program is set up for a single channel, so I
>> need to modify it to get more than one.
>>
>> Thank you in advance.
>>
>> Regards,
>> Anabel
>>
>> El vie, 15 dic 2023 a las 15:39, Rob Kossler (<rkossler@nd.edu>)
>> escribi=C3=B3:
>>
>>> Hmmm. I'm not sure. Here are a few comments:
>>>
>>>    - Try running without "second_addr".  I realize that you will need
>>>    it for full rate (4 x 100MS/s for each X310), but you could run at 5=
0 MS/s
>>>    without second_addr
>>>    - Try running without shared LO. I don't think you would need to
>>>    physically change any sharing cables.
>>>    - I am curious why you needed to modify the streamer, pointer buffer
>>>    and file writing.  I would expect that this would scale with the num=
ber of
>>>    channels such that you didn't need to modify any code in this area
>>>    - If you were using a more recent UHD, I would recommend switching
>>>    to the example benchmark_rate which natively supports external PPS a=
nd
>>>    multiple devices.  I noticed that even the most recent rx_samples_to=
_file
>>>    does not support external PPS (without modifying the code)
>>>    - I know you mentioned you were unable to upgrade because of
>>>    compatibility constraints.  But, even if you cannot upgrade the OS, =
would
>>>    you be able to install a new UHD - perhaps in a local folder that di=
d not
>>>    interfere with the system-wide UHD 3.12 installation.  I typically h=
ave
>>>    multiple UHD versions on my system and switch among them by "sourcin=
g" a
>>>    given setup file as needed.
>>>
>>>
>>> On Fri, Dec 15, 2023 at 12:52=E2=80=AFAM Anabel Almodovar <
>>> anabel.almodovar@gmail.com> wrote:
>>>
>>>> Dear Rob,
>>>>
>>>> Yes, I use an external clock configuration.
>>>>
>>>> *std::this_thread::sleep_for( std::chrono::milliseconds(int64_t(1000 *
>>>> setup_time) );*
>>>>
>>>>
>>>>
>>>> *usrp->set_clock_source("external",
>>>> uhd::usrp::multi_usrp::ALL_MBOARDS);    usrp->set_time_source("externa=
l",
>>>> uhd::usrp::multi_usrp::ALL_MBOARDS);usrp->set_time_unknown_pps(uhd::ti=
me_spec_t(0.0));std::this_thread::sleep_for(std::chrono::seconds(1));*
>>>>
>>>> I have only modified the code to get 8 channels and LO sharing. I want
>>>> to get a continuous acquisition setup without losing samples. But I am
>>>> starting with something basic at the moment. Any suggestions are welco=
me.
>>>> So I've modified the streamer, the pointer buffer, and added writing f=
iles.
>>>>
>>>> my line is
>>>> *$sudo ./rx_samples_to_file_v1
>>>> --args=3D"addr0=3D192.168.60.2,second_addr0=3D192.168.50.2,addr1=3D192=
.168.40.2,second_addr1=3D192.168.30.2,recv_buff_size=3D900000000"
>>>> --subdev=3D"A:0 A:1 B:0 B:1" --channel=3D"0,1,2,3,4,5,6,7" --freq 800e=
6 --rate
>>>> 25e6 --bw 25e6 --gain 70 *
>>>>
>>>> Regards,
>>>>
>>>> *Anabel*
>>>>
>>>>
>>>>
>>>> El jue, 14 dic 2023 a las 18:25, Rob Kossler (<rkossler@nd.edu>)
>>>> escribi=C3=B3:
>>>>
>>>>> Hi Anabel,
>>>>> In my opinion, the error you are experiencing has nothing to do with
>>>>> streaming performance settings (such as "performance" governor, netwo=
rk
>>>>> descriptors, MTU size, etc). The issue seems to be that the two X310
>>>>> devices do not have synchronized clocks. In addition to the physical
>>>>> synchronization using OctoClock, you must also configure each device =
to use
>>>>> external synchronization and you must tell each device to reset its F=
PGA
>>>>> clock count at a common PPS. The typical sequence is: (1) wait for a =
PPS to
>>>>> occur (by querying either device), (2) tell each device to reset its =
FPGA
>>>>> clock at the subsequent PPS (this step must complete before the next =
PPS
>>>>> arrives).
>>>>>
>>>>> You mentioned that you are using rx_samples_to_file. Did you modify i=
t
>>>>> in any way?  What is your exact command line with all parameters?
>>>>> Rob
>>>>>
>>>>> On Thu, Dec 14, 2023 at 10:29=E2=80=AFAM Anabel Almodovar <
>>>>> anabel.almodovar@gmail.com> wrote:
>>>>>
>>>>>> Dear Rob
>>>>>>
>>>>>> Thank you for your answer.
>>>>>> I make use of the CDA-2990 octoclock as a source of synchronization
>>>>>> between both USRPs, in addition to local oscillator sharing. I use d=
ual
>>>>>> 10GigEth connections and a MTU of 9000 to connect the USRPs to the P=
C.
>>>>>>
>>>>>> Due to various compatibility issues I am unable to upgrade the
>>>>>> system.
>>>>>>
>>>>>> When I work with a sample rate of 10MSps I don't get problems but
>>>>>> when I increase to 25MSps I start to get the error. I need them work=
ing
>>>>>> with 100MSps. I have tried changing the CPU governor to "performance=
" to
>>>>>> get the maximum working frequency (*sudo cpupower frequency-set
>>>>>> --governor performance*), as well as changing the number of network
>>>>>> interface descriptors to maximum (*sudo ethtool -G <interface> tx
>>>>>> <max> rx <max>*), or increasing the dirty memory buffer (*sudo
>>>>>> sysctl -w vm.dirty_ratio=3D80; sudo sysctl -w vm.dirty_background_ra=
tio=3D50*),
>>>>>> but I still get the same problem.
>>>>>>
>>>>>> Regards,
>>>>>> Anabel
>>>>>>
>>>>>> El jue, 14 dic 2023 a las 15:38, Rob Kossler (<rkossler@nd.edu>)
>>>>>> escribi=C3=B3:
>>>>>>
>>>>>>> Hi Anabel,
>>>>>>> How are you sync-ing the clocks on the two units? Do you have an
>>>>>>> external PPS source and are you configuring both devices to use thi=
s
>>>>>>> external source?
>>>>>>>
>>>>>>> Finally, do you have the ability to upgrade your OS and your UHD
>>>>>>> versions? There aren't many user's that are using UHD 3.12 so if yo=
u have
>>>>>>> issues, it will be hard to get support.
>>>>>>> Rob
>>>>>>>
>>>>>>> On Thu, Dec 14, 2023 at 5:20=E2=80=AFAM Anabel Almodovar <
>>>>>>> anabel.almodovar@gmail.com> wrote:
>>>>>>>
>>>>>>>> Dear all,
>>>>>>>>
>>>>>>>> I am trying to make an acquisition with two X310 equipped with two
>>>>>>>> TwinRx. I am using Ubuntu 16.04 LTS 64-bit and UHD 3.12. My PC con=
tains
>>>>>>>> 128GB RAM and an Intel=C2=AE Xeon(R) Silver 4114 CPU @ 2.20GHz =C3=
=97 40 and a 4TB
>>>>>>>> SSD. I have modified the example rx_samples_to_file.cpp code to ge=
t 8
>>>>>>>> channels and I get the following error:
>>>>>>>>
>>>>>>>> *D*
>>>>>>>> *[ERROR] [STREAMER] The receive packet handler failed to time-alig=
n
>>>>>>>> packets. 1002 received packets were processed by the handler. Howe=
ver, a
>>>>>>>> timestamp match could not be determined.*
>>>>>>>> *Timeout while streaming*
>>>>>>>>
>>>>>>>> *[ERROR] [X300] 192.168.60.2 <http://192.168.60.2>: x300 fw
>>>>>>>> communication failure #1*
>>>>>>>> *EnvironmentError: IOError: x300 fw poke32 - reply timed out*
>>>>>>>> *[ERROR] [UHD] An unexpected exception was caught in a task
>>>>>>>> loop.The task loop will now exit, things may not work.AssertionErr=
or:
>>>>>>>> reply.sequence =3D=3D request.sequence*
>>>>>>>> *  in virtual void
>>>>>>>> x300_ctrl_iface_enet::__poke32(uhd::wb_iface::wb_addr_type, uint32=
_t)*
>>>>>>>> *  at
>>>>>>>> /home/rs3_lab/workarea-uhd/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp=
:135*
>>>>>>>>
>>>>>>>> I don't know how to solve the Timeout problem, I have tried to
>>>>>>>> start the acquisition 1.1 sg in time. But it didn't work.
>>>>>>>>
>>>>>>>>
>>>>>>>> *        stream_cmd.stream_now =3D false;        stream_cmd.time_s=
pec
>>>>>>>> =3D usrp->get_time_last_pps(0)+1.1;*
>>>>>>>>
>>>>>>>> What is the problem and how can I fix it?
>>>>>>>>
>>>>>>>> Regards,
>>>>>>>> Anabel
>>>>>>>>
>>>>>>>> _______________________________________________
>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>
>>>>>>>

--0000000000001e3760060ccc4ad8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

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
=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div d=
ir=3D"ltr">Several comments:<div><ul><li>It seems like multiple things are =
going on.=C2=A0 You mentioned the original &quot;failed to time align&quot;=
 error and below you mentioned &#39;O&#39; and &#39;D&#39;.=C2=A0=C2=A0</li=
><ul><li>The time-align error I did not expect had anything to do with &quo=
t;performance&quot;. This seemed to me that the first packet arriving from =
device 1 had a different time stamp than the first packet arriving from dev=
ice 2. Now, I&#39;m not so sure</li><li>But, the &#39;O&#39; and &#39;D&#39=
; are often related to &quot;performance&quot;.=C2=A0 Overflow &#39;O&#39; =
occurs when the &#39;Radio&#39; block has A/D samples that it needs to put =
in a FIFO but the FIFO is full because it is not being emptied fast enough =
(presumably by the host PC).=C2=A0 A dropped packet (or sequence error) &#3=
9;D&#39; occurs when the host PC detects that the incoming packets are not =
in sequential order. This can occur if the host PC Ethernet handling become=
s overwhelmed and simply discards a set of incoming packets for a time peri=
od. Both &#39;O&#39; and &#39;D&#39; can imply that the host PC is not keep=
ing up with incoming data</li></ul><li>In any case, you may want to simplif=
y the problem by dropping from two devices to one device.=C2=A0 See if you =
can eliminate some or all of these problems when using only 4 channels.</li=
><li>If you drop to one device, you can use benchmark_rate to test performa=
nce.=C2=A0 If you do not use &quot;second_addr&quot;, you should be able to=
 get 4x50 MS/s.=C2=A0 If you use &quot;second_addr&quot;, you should be abl=
e to get 4x100 MS/s.</li><li>Regarding your needed changes to &quot;rx_samp=
les_to_file&quot;, I guess I was thinking about the latest version which su=
pports multiple channels. Perhaps UHD 3.12 has a version of this example th=
at only supports a single channel.=C2=A0 You could compare your version to =
the latest version (say, UHD 4.6) to see the improvements to this example.<=
/li></ul></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Dec 18, 2023 at 7:44=E2=80=AFAM Anabel Almodovar &l=
t;<a href=3D"mailto:anabel.almodovar@gmail.com" target=3D"_blank">anabel.al=
modovar@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr">Hi Rob,<br><br>Thanks for the suggestions=
. I have tried deleting the LO sharing, and nothing changes. Then removing =
the second addr, and that leads me to get &#39;Ds&#39; in addition to the e=
rror already mentioned, as it is not able to handle that much information. =
Although I don&#39;t quite understand the difference between &#39;O&#39; an=
d &#39;D&#39;.<br><br><div>From what I understand the program is set up for=
 a single channel, so I need to modify it to get more than one. <br></div><=
div><br></div><div>Thank you in advance.</div><div><br></div><div>Regards,<=
/div><div>Anabel<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">El vie, 15 dic 2023 a las 15:39, Rob Kossler (&lt=
;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&g=
t;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div>Hmmm. I&#39;m not sure. Here are a few comments:</=
div><div><ul><li>Try running without &quot;second_addr&quot;.=C2=A0 I reali=
ze that you will need it for full rate (4 x 100MS/s for each X310), but you=
 could run at 50 MS/s without second_addr</li><li>Try running without=C2=A0=
shared LO. I don&#39;t think you would need to physically change any sharin=
g cables.</li><li>I am curious why you needed to modify the streamer, point=
er buffer and file writing.=C2=A0 I would expect that this would scale with=
 the number of channels such that you didn&#39;t need to modify any code in=
 this area</li><li>If you were using a more recent UHD, I would recommend s=
witching to the example benchmark_rate which natively supports external PPS=
 and multiple devices.=C2=A0 I noticed that even the most recent=C2=A0rx_sa=
mples_to_file does not support external PPS (without modifying the code)</l=
i><li>I know you mentioned you were unable to upgrade because of compatibil=
ity constraints.=C2=A0 But, even if you cannot upgrade the OS, would you be=
 able to install a new UHD - perhaps in a local folder that did not interfe=
re with the system-wide UHD 3.12 installation.=C2=A0 I typically have multi=
ple UHD versions on my system and switch among them by &quot;sourcing&quot;=
 a given setup file as needed.</li></ul></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 15, 2023 at 12:52=E2=80=
=AFAM Anabel Almodovar &lt;<a href=3D"mailto:anabel.almodovar@gmail.com" ta=
rget=3D"_blank">anabel.almodovar@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Dear Rob,</=
div><div><br></div><div>Yes, I use an external clock configuration.</div><d=
iv><br></div><div><i>std::this_thread::sleep_for( std::chrono::milliseconds=
(int64_t(1000 * setup_time) );</i></div><div><i>usrp-&gt;set_clock_source(&=
quot;external&quot;, uhd::usrp::multi_usrp::ALL_MBOARDS); =C2=A0 =C2=A0<br>=
usrp-&gt;set_time_source(&quot;external&quot;, uhd::usrp::multi_usrp::ALL_M=
BOARDS);<br>usrp-&gt;set_time_unknown_pps(uhd::time_spec_t(0.0));<br>std::t=
his_thread::sleep_for(std::chrono::seconds(1));</i></div><div><br></div><di=
v>I have only modified the code to get 8 channels and LO sharing. I want to=
 get a continuous acquisition setup without losing samples. But I am starti=
ng with something basic at the moment. Any suggestions are welcome. So I&#3=
9;ve modified the streamer, the pointer buffer, and added writing files.</d=
iv><div><br></div><div>my line is <i>$sudo ./rx_samples_to_file_v1 --args=
=3D&quot;addr0=3D192.168.60.2,second_addr0=3D192.168.50.2,addr1=3D192.168.4=
0.2,second_addr1=3D192.168.30.2,recv_buff_size=3D900000000&quot; --subdev=
=3D&quot;A:0 A:1 B:0 B:1&quot; --channel=3D&quot;0,1,2,3,4,5,6,7&quot; --fr=
eq 800e6 --rate 25e6 --bw 25e6 --gain 70 <br></i></div><div><i><br></i></di=
v><div>Regards,</div><div><i>Anabel<br></i></div><div><br></div><div><br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">El jue, 14 dic 2023 a las 18:25, Rob Kossler (&lt;<a href=3D"mailto:rko=
ssler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi=
 Anabel,<div>In my opinion, the error you are experiencing has nothing to d=
o with streaming performance settings (such as &quot;performance&quot; gove=
rnor, network descriptors, MTU size, etc). The issue seems to be that the t=
wo X310 devices do not have synchronized clocks. In addition to the physica=
l synchronization using OctoClock, you must also configure each device to u=
se external synchronization and you must tell each device to reset its FPGA=
 clock count at a common PPS. The typical sequence is: (1) wait for a PPS t=
o occur (by querying either device), (2) tell each device to reset its FPGA=
 clock at the subsequent PPS (this step must complete before the next PPS a=
rrives).</div><div><br></div><div>You mentioned that you are using rx_sampl=
es_to_file. Did you modify it in any way?=C2=A0 What is your exact command =
line with all parameters?=C2=A0</div><div>Rob</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 14, 2023 at =
10:29=E2=80=AFAM Anabel Almodovar &lt;<a href=3D"mailto:anabel.almodovar@gm=
ail.com" target=3D"_blank">anabel.almodovar@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div =
dir=3D"ltr"><div>Dear Rob</div><div><br></div><div>Thank you for your answe=
r. <br></div><div>I make use of the CDA-2990 octoclock as a source of synch=
ronization between both USRPs, in addition to local oscillator sharing. I u=
se dual 10GigEth connections and a MTU of 9000 to connect the USRPs to the =
PC. <br><br>Due to various compatibility issues I am unable to upgrade the =
system. <br><br>When I work with a sample rate of 10MSps I don&#39;t get pr=
oblems but when I increase to 25MSps I start to get the error. I need them =
working with 100MSps. I have tried changing the CPU governor to &quot;perfo=
rmance&quot; to get the maximum working frequency (<i>sudo cpupower frequen=
cy-set --governor performance</i>), as well as changing the number of netwo=
rk interface descriptors to maximum (<i>sudo ethtool -G &lt;interface&gt; t=
x &lt;max&gt; rx &lt;max&gt;</i>), or increasing the dirty memory buffer (<=
i>sudo sysctl -w vm.dirty_ratio=3D80; sudo sysctl -w vm.dirty_background_ra=
tio=3D50</i>), but I still get the same problem.</div><div><br></div><div>R=
egards,<br></div><div>Anabel<br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">El jue, 14 dic 2023 a las 15:38, Rob =
Kossler (&lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@=
nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Anabel,<div>How are you=
 sync-ing the clocks on the two units? Do you have an external PPS source a=
nd are you configuring both devices to use this external source?</div><div>=
<br></div><div>Finally, do you have the ability to upgrade your OS and your=
 UHD versions? There aren&#39;t many user&#39;s that are using UHD 3.12 so =
if you have issues, it will be hard to get support.</div><div>Rob</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
hu, Dec 14, 2023 at 5:20=E2=80=AFAM Anabel Almodovar &lt;<a href=3D"mailto:=
anabel.almodovar@gmail.com" target=3D"_blank">anabel.almodovar@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div></div><div>Dear all,</div><div><br></div><div>I am tryin=
g to make an acquisition with two X310 equipped with two TwinRx. I am using=
 Ubuntu 16.04 LTS 64-bit and UHD 3.12. My PC contains 128GB RAM and an Inte=
l=C2=AE Xeon(R) Silver 4114 CPU @ 2.20GHz =C3=97 40 and a 4TB SSD. I have m=
odified the example rx_samples_to_file.cpp code to get 8 channels and I get=
 the following error:<br><br></div><div><div><i><span style=3D"font-family:=
Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;f=
ont-size:12pt;color:rgb(0,0,0)">D</span></i></div><div><i><span style=3D"fo=
nt-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sa=
ns-serif;font-size:12pt;color:rgb(0,0,0)">[ERROR]
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

--0000000000001e3760060ccc4ad8--

--===============3902650616961551026==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3902650616961551026==--
