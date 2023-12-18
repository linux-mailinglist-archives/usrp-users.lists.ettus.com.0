Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEA98170BC
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 14:44:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D7B9A385181
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 08:44:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702907098; bh=2rKetPTW7x8+IUIUMRFalRbQxVhwnU+2pxiLZkSJPAk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=DvdEdDQ/YJZ02PjcsDEaTGF2uX9H0Jc7mpD8uD7P0bSP4otLUNvTriE2i5QNwvdqV
	 67Zgh+Y2c9/uN+foI9hS/Dx5VhVN+3QbvmzC64nFPhR1J7qqADCKuVCb1Hp3QWpeIt
	 FJjqfLpTtja12/wi8JFBLmvOSP8Npyg2h7V5rNd/MHLJmNpoqOpCYFXGEV9oUGQRJi
	 +N8MuDh8nn0ID8vcYPox7hZ4vYvxgPtXEo99ArUZVC3QKZRWAnW84JfVQnEneWAYGT
	 N82n0HzqHdZgdbFCn3xreHCNrFqAZYaB4wX1whluzU1CDcG3H3vxuMASetCtoUIW6q
	 SkV68DsVUBtew==
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 44D1E38511E
	for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 08:44:27 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ban+P3N0";
	dkim-atps=neutral
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-5cd82917ecfso1416523a12.0
        for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 05:44:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702907066; x=1703511866; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MZYLzeOkVLLyXe6bDSSTzOLWq5q+LPuBccC4fLQxlm0=;
        b=ban+P3N01ceqgVtmxrqOiIUfjT0VsiTuZ1pfHtzdm/3Emvh5WCeC8x8r26PXkyIElh
         36dF+RCVakCxVlUg061IA5aiWQ8db9V+pjXMBq8KO9qW8ko1A7j3jxDntap/vXR/aMwx
         rmCc0KFauOFiwl7umcF7FsoHspc7ZQk4M+Xnrtk3GMn+DAQoxKDfaryJwI8WEw1RGmi7
         A21vWklconm9uVUIqjAq3nTYJw5HJckB50So7mDvsy62lr7GhgiiCrhcWcqpoHDq9te8
         DDtMJiA/49u/GodHZAZbBsbUZPvMOYZRXOwP52VS9tDMsnq+ypbyhOHVoSPoy1ZETDfb
         l65A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702907066; x=1703511866;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MZYLzeOkVLLyXe6bDSSTzOLWq5q+LPuBccC4fLQxlm0=;
        b=M3DZ5NyS/+wg9WcjOI0X74Z9FCoP/kGv2y+5OtscPGUW6HB1A2LM5Utn2q+Fdddo/t
         olyCPoVXY1tJ0vv1cs8MwLsNffV4+3fgxYIFVpAGNA4OhbRUc73EZUhLCaqD5vT7x2eg
         OTXaG4vAiD+hPLn7cVoHJE4tKFpkHb4Ke96AjZPT83N+KGnNZkfTHF28MoA9kcUPyGra
         MRoK821f7Wn7FXVZGaKAZU6ZC7TXQiB1G5z+/l/03apA2XQiYwC5C2pgUiYq6aJEcYn5
         iukrSjPeuxnUYBaBgeYSB9UKKUA5mk9hMrJkcExclqqnPOQ/yCxwAiNCqFvPg+lfe5rE
         iMvw==
X-Gm-Message-State: AOJu0Yx/cdtL+hDpaV52ISMyK+3Lezl8ivcSYVo4RAphQpRJ97qEQZS3
	Q6nu0i52a2QdXA4MPqTyb3HU7/bJN65YaedNRpKBErnNfpU=
X-Google-Smtp-Source: AGHT+IE4loG0MmYo2po14HzCxFFKaQoB6qXJtNx0N3lyJh1qu2G05ymuRRvOuBvTItywh1G8jHiq5iC1GoMk14eJHeM=
X-Received: by 2002:a05:6a20:974e:b0:194:4cc5:4932 with SMTP id
 hs14-20020a056a20974e00b001944cc54932mr2053391pzc.112.1702907065913; Mon, 18
 Dec 2023 05:44:25 -0800 (PST)
MIME-Version: 1.0
References: <CAFPzw1kOz59xv_tRZW7X8jntTLHS-szF_vUvzS5pE8KaGKExtg@mail.gmail.com>
 <CAB__hTTzgcb1p0Gut3qL2U2uvTQ9wRXVHg9EfJ080RC-LETg_A@mail.gmail.com>
 <CAFPzw1kn-j45P_7jf6cMG-kLQiz3zCTYjHog49nPXB+KswUKUw@mail.gmail.com>
 <CAB__hTSKQRF3eE5i=D_6zQo8C4LLWioP+ts=YvRDJiUM=UnnYw@mail.gmail.com>
 <CAFPzw1kVSnS0Nuye2QPKxJ0XFND3e==zFCejGLKY0s3AifKjZQ@mail.gmail.com> <CAB__hTTYiTXXgV9Ra1UxaQrLC9p_=Vzr3A4XFGTwKbOHJrb4zQ@mail.gmail.com>
In-Reply-To: <CAB__hTTYiTXXgV9Ra1UxaQrLC9p_=Vzr3A4XFGTwKbOHJrb4zQ@mail.gmail.com>
From: Anabel Almodovar <anabel.almodovar@gmail.com>
Date: Mon, 18 Dec 2023 14:44:14 +0100
Message-ID: <CAFPzw1nAhnrzBig47-UCJ3gY7YeTnt2TqsVX3iJtJgv_3sMC6g@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: MOVM7KGDI3NN47KMNJEH4EFKFOUCV352
X-Message-ID-Hash: MOVM7KGDI3NN47KMNJEH4EFKFOUCV352
X-MailFrom: anabel.almodovar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: streamer error X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MOVM7KGDI3NN47KMNJEH4EFKFOUCV352/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0493155767955295315=="

--===============0493155767955295315==
Content-Type: multipart/alternative; boundary="000000000000bfd49c060cc8f250"

--000000000000bfd49c060cc8f250
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

Thanks for the suggestions. I have tried deleting the LO sharing, and
nothing changes. Then removing the second addr, and that leads me to get
'Ds' in addition to the error already mentioned, as it is not able to
handle that much information. Although I don't quite understand the
difference between 'O' and 'D'.

From what I understand the program is set up for a single channel, so I
need to modify it to get more than one.

Thank you in advance.

Regards,
Anabel

El vie, 15 dic 2023 a las 15:39, Rob Kossler (<rkossler@nd.edu>) escribi=C3=
=B3:

> Hmmm. I'm not sure. Here are a few comments:
>
>    - Try running without "second_addr".  I realize that you will need it
>    for full rate (4 x 100MS/s for each X310), but you could run at 50 MS/=
s
>    without second_addr
>    - Try running without shared LO. I don't think you would need to
>    physically change any sharing cables.
>    - I am curious why you needed to modify the streamer, pointer buffer
>    and file writing.  I would expect that this would scale with the numbe=
r of
>    channels such that you didn't need to modify any code in this area
>    - If you were using a more recent UHD, I would recommend switching to
>    the example benchmark_rate which natively supports external PPS and
>    multiple devices.  I noticed that even the most recent rx_samples_to_f=
ile
>    does not support external PPS (without modifying the code)
>    - I know you mentioned you were unable to upgrade because of
>    compatibility constraints.  But, even if you cannot upgrade the OS, wo=
uld
>    you be able to install a new UHD - perhaps in a local folder that did =
not
>    interfere with the system-wide UHD 3.12 installation.  I typically hav=
e
>    multiple UHD versions on my system and switch among them by "sourcing"=
 a
>    given setup file as needed.
>
>
> On Fri, Dec 15, 2023 at 12:52=E2=80=AFAM Anabel Almodovar <
> anabel.almodovar@gmail.com> wrote:
>
>> Dear Rob,
>>
>> Yes, I use an external clock configuration.
>>
>> *std::this_thread::sleep_for( std::chrono::milliseconds(int64_t(1000 *
>> setup_time) );*
>>
>>
>>
>> *usrp->set_clock_source("external", uhd::usrp::multi_usrp::ALL_MBOARDS);
>>    usrp->set_time_source("external",
>> uhd::usrp::multi_usrp::ALL_MBOARDS);usrp->set_time_unknown_pps(uhd::time=
_spec_t(0.0));std::this_thread::sleep_for(std::chrono::seconds(1));*
>>
>> I have only modified the code to get 8 channels and LO sharing. I want t=
o
>> get a continuous acquisition setup without losing samples. But I am
>> starting with something basic at the moment. Any suggestions are welcome=
.
>> So I've modified the streamer, the pointer buffer, and added writing fil=
es.
>>
>> my line is
>> *$sudo ./rx_samples_to_file_v1
>> --args=3D"addr0=3D192.168.60.2,second_addr0=3D192.168.50.2,addr1=3D192.1=
68.40.2,second_addr1=3D192.168.30.2,recv_buff_size=3D900000000"
>> --subdev=3D"A:0 A:1 B:0 B:1" --channel=3D"0,1,2,3,4,5,6,7" --freq 800e6 =
--rate
>> 25e6 --bw 25e6 --gain 70 *
>>
>> Regards,
>>
>> *Anabel*
>>
>>
>>
>> El jue, 14 dic 2023 a las 18:25, Rob Kossler (<rkossler@nd.edu>)
>> escribi=C3=B3:
>>
>>> Hi Anabel,
>>> In my opinion, the error you are experiencing has nothing to do with
>>> streaming performance settings (such as "performance" governor, network
>>> descriptors, MTU size, etc). The issue seems to be that the two X310
>>> devices do not have synchronized clocks. In addition to the physical
>>> synchronization using OctoClock, you must also configure each device to=
 use
>>> external synchronization and you must tell each device to reset its FPG=
A
>>> clock count at a common PPS. The typical sequence is: (1) wait for a PP=
S to
>>> occur (by querying either device), (2) tell each device to reset its FP=
GA
>>> clock at the subsequent PPS (this step must complete before the next PP=
S
>>> arrives).
>>>
>>> You mentioned that you are using rx_samples_to_file. Did you modify it
>>> in any way?  What is your exact command line with all parameters?
>>> Rob
>>>
>>> On Thu, Dec 14, 2023 at 10:29=E2=80=AFAM Anabel Almodovar <
>>> anabel.almodovar@gmail.com> wrote:
>>>
>>>> Dear Rob
>>>>
>>>> Thank you for your answer.
>>>> I make use of the CDA-2990 octoclock as a source of synchronization
>>>> between both USRPs, in addition to local oscillator sharing. I use dua=
l
>>>> 10GigEth connections and a MTU of 9000 to connect the USRPs to the PC.
>>>>
>>>> Due to various compatibility issues I am unable to upgrade the system.
>>>>
>>>> When I work with a sample rate of 10MSps I don't get problems but when
>>>> I increase to 25MSps I start to get the error. I need them working wit=
h
>>>> 100MSps. I have tried changing the CPU governor to "performance" to ge=
t the
>>>> maximum working frequency (*sudo cpupower frequency-set --governor
>>>> performance*), as well as changing the number of network interface
>>>> descriptors to maximum (*sudo ethtool -G <interface> tx <max> rx <max>=
*),
>>>> or increasing the dirty memory buffer (*sudo sysctl -w
>>>> vm.dirty_ratio=3D80; sudo sysctl -w vm.dirty_background_ratio=3D50*), =
but
>>>> I still get the same problem.
>>>>
>>>> Regards,
>>>> Anabel
>>>>
>>>> El jue, 14 dic 2023 a las 15:38, Rob Kossler (<rkossler@nd.edu>)
>>>> escribi=C3=B3:
>>>>
>>>>> Hi Anabel,
>>>>> How are you sync-ing the clocks on the two units? Do you have an
>>>>> external PPS source and are you configuring both devices to use this
>>>>> external source?
>>>>>
>>>>> Finally, do you have the ability to upgrade your OS and your UHD
>>>>> versions? There aren't many user's that are using UHD 3.12 so if you =
have
>>>>> issues, it will be hard to get support.
>>>>> Rob
>>>>>
>>>>> On Thu, Dec 14, 2023 at 5:20=E2=80=AFAM Anabel Almodovar <
>>>>> anabel.almodovar@gmail.com> wrote:
>>>>>
>>>>>> Dear all,
>>>>>>
>>>>>> I am trying to make an acquisition with two X310 equipped with two
>>>>>> TwinRx. I am using Ubuntu 16.04 LTS 64-bit and UHD 3.12. My PC conta=
ins
>>>>>> 128GB RAM and an Intel=C2=AE Xeon(R) Silver 4114 CPU @ 2.20GHz =C3=
=97 40 and a 4TB
>>>>>> SSD. I have modified the example rx_samples_to_file.cpp code to get =
8
>>>>>> channels and I get the following error:
>>>>>>
>>>>>> *D*
>>>>>> *[ERROR] [STREAMER] The receive packet handler failed to time-align
>>>>>> packets. 1002 received packets were processed by the handler. Howeve=
r, a
>>>>>> timestamp match could not be determined.*
>>>>>> *Timeout while streaming*
>>>>>>
>>>>>> *[ERROR] [X300] 192.168.60.2 <http://192.168.60.2>: x300 fw
>>>>>> communication failure #1*
>>>>>> *EnvironmentError: IOError: x300 fw poke32 - reply timed out*
>>>>>> *[ERROR] [UHD] An unexpected exception was caught in a task loop.The
>>>>>> task loop will now exit, things may not work.AssertionError: reply.s=
equence
>>>>>> =3D=3D request.sequence*
>>>>>> *  in virtual void
>>>>>> x300_ctrl_iface_enet::__poke32(uhd::wb_iface::wb_addr_type, uint32_t=
)*
>>>>>> *  at
>>>>>> /home/rs3_lab/workarea-uhd/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:1=
35*
>>>>>>
>>>>>> I don't know how to solve the Timeout problem, I have tried to start
>>>>>> the acquisition 1.1 sg in time. But it didn't work.
>>>>>>
>>>>>>
>>>>>> *        stream_cmd.stream_now =3D false;        stream_cmd.time_spe=
c =3D
>>>>>> usrp->get_time_last_pps(0)+1.1;*
>>>>>>
>>>>>> What is the problem and how can I fix it?
>>>>>>
>>>>>> Regards,
>>>>>> Anabel
>>>>>>
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>
>>>>>

--000000000000bfd49c060cc8f250
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rob,<br><br>Thanks for the suggestions. I have tried de=
leting the LO sharing, and nothing changes. Then removing the second addr, =
and that leads me to get &#39;Ds&#39; in addition to the error already ment=
ioned, as it is not able to handle that much information. Although I don&#3=
9;t quite understand the difference between &#39;O&#39; and &#39;D&#39;.<br=
><br><div>From what I understand the program is set up for a single channel=
, so I need to modify it to get more than one. <br></div><div><br></div><di=
v>Thank you in advance.</div><div><br></div><div>Regards,</div><div>Anabel<=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">El vie, 15 dic 2023 a las 15:39, Rob Kossler (&lt;<a href=3D"mailt=
o:rkossler@nd.edu">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hmmm. I&#3=
9;m not sure. Here are a few comments:</div><div><ul><li>Try running withou=
t &quot;second_addr&quot;.=C2=A0 I realize that you will need it for full r=
ate (4 x 100MS/s for each X310), but you could run at 50 MS/s without secon=
d_addr</li><li>Try running without=C2=A0shared LO. I don&#39;t think you wo=
uld need to physically change any sharing cables.</li><li>I am curious why =
you needed to modify the streamer, pointer buffer and file writing.=C2=A0 I=
 would expect that this would scale with the number of channels such that y=
ou didn&#39;t need to modify any code in this area</li><li>If you were usin=
g a more recent UHD, I would recommend switching to the example benchmark_r=
ate which natively supports external PPS and multiple devices.=C2=A0 I noti=
ced that even the most recent=C2=A0rx_samples_to_file does not support exte=
rnal PPS (without modifying the code)</li><li>I know you mentioned you were=
 unable to upgrade because of compatibility constraints.=C2=A0 But, even if=
 you cannot upgrade the OS, would you be able to install a new UHD - perhap=
s in a local folder that did not interfere with the system-wide UHD 3.12 in=
stallation.=C2=A0 I typically have multiple UHD versions on my system and s=
witch among them by &quot;sourcing&quot; a given setup file as needed.</li>=
</ul></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Fri, Dec 15, 2023 at 12:52=E2=80=AFAM Anabel Almodovar &lt;<a href=
=3D"mailto:anabel.almodovar@gmail.com" target=3D"_blank">anabel.almodovar@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr"><div>Dear Rob,</div><div><br></div><div>Yes, I use=
 an external clock configuration.</div><div><br></div><div><i>std::this_thr=
ead::sleep_for( std::chrono::milliseconds(int64_t(1000 * setup_time) );</i>=
</div><div><i>usrp-&gt;set_clock_source(&quot;external&quot;, uhd::usrp::mu=
lti_usrp::ALL_MBOARDS); =C2=A0 =C2=A0<br>usrp-&gt;set_time_source(&quot;ext=
ernal&quot;, uhd::usrp::multi_usrp::ALL_MBOARDS);<br>usrp-&gt;set_time_unkn=
own_pps(uhd::time_spec_t(0.0));<br>std::this_thread::sleep_for(std::chrono:=
:seconds(1));</i></div><div><br></div><div>I have only modified the code to=
 get 8 channels and LO sharing. I want to get a continuous acquisition setu=
p without losing samples. But I am starting with something basic at the mom=
ent. Any suggestions are welcome. So I&#39;ve modified the streamer, the po=
inter buffer, and added writing files.</div><div><br></div><div>my line is =
<i>$sudo ./rx_samples_to_file_v1 --args=3D&quot;addr0=3D192.168.60.2,second=
_addr0=3D192.168.50.2,addr1=3D192.168.40.2,second_addr1=3D192.168.30.2,recv=
_buff_size=3D900000000&quot; --subdev=3D&quot;A:0 A:1 B:0 B:1&quot; --chann=
el=3D&quot;0,1,2,3,4,5,6,7&quot; --freq 800e6 --rate 25e6 --bw 25e6 --gain =
70 <br></i></div><div><i><br></i></div><div>Regards,</div><div><i>Anabel<br=
></i></div><div><br></div><div><br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">El jue, 14 dic 2023 a las 18:25, R=
ob Kossler (&lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossl=
er@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr">Hi Anabel,<div>In my opinion, the error =
you are experiencing has nothing to do with streaming performance settings =
(such as &quot;performance&quot; governor, network descriptors, MTU size, e=
tc). The issue seems to be that the two X310 devices do not have synchroniz=
ed clocks. In addition to the physical synchronization using OctoClock, you=
 must also configure each device to use external synchronization and you mu=
st tell each device to reset its FPGA clock count at a common PPS. The typi=
cal sequence is: (1) wait for a PPS to occur (by querying either device), (=
2) tell each device to reset its FPGA clock at the subsequent PPS (this ste=
p must complete before the next PPS arrives).</div><div><br></div><div>You =
mentioned that you are using rx_samples_to_file. Did you modify it in any w=
ay?=C2=A0 What is your exact command line with all parameters?=C2=A0</div><=
div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Thu, Dec 14, 2023 at 10:29=E2=80=AFAM Anabel Almodovar &lt;=
<a href=3D"mailto:anabel.almodovar@gmail.com" target=3D"_blank">anabel.almo=
dovar@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div>Dear Rob</div><div><b=
r></div><div>Thank you for your answer. <br></div><div>I make use of the CD=
A-2990 octoclock as a source of synchronization between both USRPs, in addi=
tion to local oscillator sharing. I use dual 10GigEth connections and a MTU=
 of 9000 to connect the USRPs to the PC. <br><br>Due to various compatibili=
ty issues I am unable to upgrade the system. <br><br>When I work with a sam=
ple rate of 10MSps I don&#39;t get problems but when I increase to 25MSps I=
 start to get the error. I need them working with 100MSps. I have tried cha=
nging the CPU governor to &quot;performance&quot; to get the maximum workin=
g frequency (<i>sudo cpupower frequency-set --governor performance</i>), as=
 well as changing the number of network interface descriptors to maximum (<=
i>sudo ethtool -G &lt;interface&gt; tx &lt;max&gt; rx &lt;max&gt;</i>), or =
increasing the dirty memory buffer (<i>sudo sysctl -w vm.dirty_ratio=3D80; =
sudo sysctl -w vm.dirty_background_ratio=3D50</i>), but I still get the sam=
e problem.</div><div><br></div><div>Regards,<br></div><div>Anabel<br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
El jue, 14 dic 2023 a las 15:38, Rob Kossler (&lt;<a href=3D"mailto:rkossle=
r@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div d=
ir=3D"ltr">Hi Anabel,<div>How are you sync-ing the clocks on the two units?=
 Do you have an external PPS source and are you configuring both devices to=
 use this external source?</div><div><br></div><div>Finally, do you have th=
e ability to upgrade your OS and your UHD versions? There aren&#39;t many u=
ser&#39;s that are using UHD 3.12 so if you have issues, it will be hard to=
 get support.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 14, 2023 at 5:20=E2=80=AFAM An=
abel Almodovar &lt;<a href=3D"mailto:anabel.almodovar@gmail.com" target=3D"=
_blank">anabel.almodovar@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div></div><div>Dear all=
,</div><div><br></div><div>I am trying to make an acquisition with two X310=
 equipped with two TwinRx. I am using Ubuntu 16.04 LTS 64-bit and UHD 3.12.=
 My PC contains 128GB RAM and an Intel=C2=AE Xeon(R) Silver 4114 CPU @ 2.20=
GHz =C3=97 40 and a 4TB SSD. I have modified the example rx_samples_to_file=
.cpp code to get 8 channels and I get the following error:<br><br></div><di=
v><div><i><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontS=
ervice,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">D</spa=
n></i></div><div><i><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0)">[ERROR]
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

--000000000000bfd49c060cc8f250--

--===============0493155767955295315==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0493155767955295315==--
