Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4154F50703E
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 16:28:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 47B25384E7E
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 10:28:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650378492; bh=OUyQE6aY/QNsP/0h5ahW46FG7/RHm3m+et4c8QvImJI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=SwisY/CMenMnRtgZT90WVxAzrpRrKaEjP4KXBPjIENlsNIKiwOG9bGqoB9T6DNeco
	 K+vdpPSz29m8534o9UIH2RjouRaZtpG5kNUBwwIy0ikn0lXhurVVsUQr2uZpyhwZc+
	 F0p2vZd3UyhduHSk68YBwVPLkPZhuZz38KRF+kftrkS79y/UeMz35sqHP2YGUDGG0O
	 7F6i84vtniezLxYIF0EENBfOB6fS7KS66PWZ4xtjQYlWnAMOh05/ERwzXI15hcHeG7
	 SQW3f50oPHWVK7tV2sPbqf3ypvkYX16Z1lXkuo/DCWf+APq1pdQ/73Ucp4cX9a9C9e
	 UvLRSXATG7/7w==
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	by mm2.emwd.com (Postfix) with ESMTPS id A925D384B60
	for <usrp-users@lists.ettus.com>; Tue, 19 Apr 2022 10:27:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="c0M8enEN";
	dkim-atps=neutral
Received: by mail-vs1-f45.google.com with SMTP id j16so15801118vsv.2
        for <usrp-users@lists.ettus.com>; Tue, 19 Apr 2022 07:27:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zfnaJF5cy8dUeQYzj7YsxuOSFq3YVh1+Co90drtuSZ8=;
        b=c0M8enENUjM16KZdlch/k2dCPKWVXV9zmjJknd/2o9iqc3Z/e42DPbdvbReIiIjSts
         n7g10CaF1eUAJMMcKDPFOXYzG0klqqo2Cts9Wj5kR7buUCBYIqMIK7FznaP87gKYzcdi
         Yg7cBgvxO6YVLJM4SFoTTqOPZ99XHlyC7cg8bDPBJqh3a/GLOYrVJb7OZ0VYl0d7gElQ
         1TSTBrEpwHruoxpBqrlu9MprT4sW7IkrPluWz1mCJzcQ5Bkl/HHDNFImc36roO23RaHR
         1QYIMmrjFnTwv11q8/kdcBg7OVpkoNWlFt89xk55pI72OvVDmOBjT0zvf1N0mhCx6Tn4
         BRew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zfnaJF5cy8dUeQYzj7YsxuOSFq3YVh1+Co90drtuSZ8=;
        b=r+hv667dGiMZn/cnpMVBskOEGaBuPrjdUviCtRwzT0lkVlOVOdaIS2XFOSZjZFJOBY
         Q3yuIwiZp3FTqSJu9qZDeoNDePVOk58u8nWZtu3W6ZN2ps72WKeVRpl6T6cOOiP8WJLm
         mfvEUx2qDwrBfZ+t2y/DxcXSdWOuLmrHQMkSUl7LdySxenhQA8uOGaho5QVAEoKT1fQw
         uWh2m4XQovWlkIQ0/JWvLgiY0cNCneclyYAqbyJtyH1OcGD5cyEJ6RTeoxVLR9ZxOqiK
         5sGKMSqnSi9UPdIiZW8379oH7CX+tGRDTh5zxc8RLpwQy6ufR35Y4N2y3ck1CSOVOcYo
         fNkQ==
X-Gm-Message-State: AOAM531Kej9sGS5e0UGUHp0zfxVXvgFtkrAHHBZ57EL+1FCfRS/K2gZc
	aAkCtawosE3b3WrrQKp6R0+t4kBFM6j5plGJUBo=
X-Google-Smtp-Source: ABdhPJxRJa7rG8z1/efmebl39ZwZeIfVQc5jJZENER12B2eM/CMaYQjV1BeEgvtu+8E4zjsHd+zSTsGXqW5zOI9Q8vs=
X-Received: by 2002:a05:6102:2929:b0:325:2cc0:b821 with SMTP id
 cz41-20020a056102292900b003252cc0b821mr4533939vsb.77.1650378428998; Tue, 19
 Apr 2022 07:27:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAOucfAOCAAvZ8GuirG15oZ30EPO1=ENs3teM8FKUhm3YyaptXQ@mail.gmail.com>
 <CAB__hTQo=pnO8-TBvBJFK8AbFStqnzMz72fLWJ2bVOjTL3wpOg@mail.gmail.com> <CAOucfANc6BoeQNv==c8obv-hEdZiQ0gxrjhpZMs=v+FGF4yu=Q@mail.gmail.com>
In-Reply-To: <CAOucfANc6BoeQNv==c8obv-hEdZiQ0gxrjhpZMs=v+FGF4yu=Q@mail.gmail.com>
From: Lautaro Lorenzen <lorenzen.lautaro@gmail.com>
Date: Tue, 19 Apr 2022 11:26:57 -0300
Message-ID: <CAOucfAPmDgkZyXShtofoqhu7TkH38tgWN=2DBYTgNF2Kt1DLXA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: V22ZTNDWV4RVSSJ2XMHHW6WTZ6LNR7EN
X-Message-ID-Hash: V22ZTNDWV4RVSSJ2XMHHW6WTZ6LNR7EN
X-MailFrom: lorenzen.lautaro@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with TRX-B output
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V22ZTNDWV4RVSSJ2XMHHW6WTZ6LNR7EN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2582607677264294851=="

--===============2582607677264294851==
Content-Type: multipart/alternative; boundary="00000000000001692105dd02ac3d"

--00000000000001692105dd02ac3d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Well, I've rebuilt and reloaded the FPGA image, and.... it works. Both from
the embedded and the host, including gnu-radio.

I presumably did nothing different, and used the same YAML as last time. Of
course, I must have done something in the middle that is beyond me.
In my defense, the error was quite strange :)

Thank you for your time and your help.
Lautaro.

El mar, 19 abr 2022 a la(s) 10:14, Lautaro Lorenzen (
lorenzen.lautaro@gmail.com) escribi=C3=B3:

> Hello Rob,
>
> You are right, the UHD version running on the embedded is 4.1.0.4. In any
> case, I don't quite get why the examples running on the ettus don't work
> either.
>
> If I run ./benchmark_rate --rx_rate 1e6 --tx_rate 1e6 --rx_channels 1
> --tx_channels 0, I get:
>
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.1.0.4-0-g25d617ca
> [00:00:00.044121] Creating the usrp device with: ...
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D30E2D8B,fpg=
a=3Dn/a,claimed=3DFalse
> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3Dn/a,mgmt_addr=3D127.0.0.1,product=3De310_sg3'.
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
> [INFO] [0/Radio#0] CODEC loopback test passed
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
> [INFO] [0/Radio#0] CODEC loopback test passed
> Using Device: Single USRP:
>   Device: E300-Series Device
>   Mboard 0: e310_sg3
>   RX Channel: 0
>     RX DSP: n/a
>     RX Dboard: A
>     RX Subdev: E3xx
>   RX Channel: 1
>     RX DSP: n/a
>     RX Dboard: A
>     RX Subdev: E3xx
>   TX Channel: 0
>     TX DSP: n/a
>     TX Dboard: A
>     TX Subdev: E3xx
>   TX Channel: 1
>     TX DSP: n/a
>     TX Dboard: A
>     TX Subdev: E3xx
>
> [00:00:06.286834383] Setting device timestamp to 0...
> Setting TX spp to 364
> [00:00:10.136939135] Testing receive rate 1.000000 Msps on 1 channels
> [00:00:10.564365285] Testing transmit rate 1.000000 Msps on 1 channels
> [00:00:20.827293545] Benchmark complete.
>
>
> Benchmark rate summary:
>   Num received samples:     10248264
>   Num dropped samples:      0
>   Num overruns detected:    0
>   Num transmitted samples:  10257884
>   Num sequence errors (Tx): 0
>   Num sequence errors (Rx): 0
>   Num underruns detected:   0
>   Num late commands:        0
>   Num timeouts (Tx):        0
>   Num timeouts (Rx):        0
>
>
> Done!
>
>
> On the other hand, If I include tx channel "1" in any way (2Tx 2Rx or 1Tx
> 1Rx) the test fails.
>
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.1.0.4-0-g25d617ca
> [00:00:00.044036] Creating the usrp device with: ...
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D30E2D8B,fpg=
a=3Dn/a,claimed=3DFalse
> [WARNING] [MPM.RPCServer] A timeout event occured!
> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3Dn/a,mgmt_addr=3D127.0.0.1,product=3De310_sg3'.
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
> [INFO] [0/Radio#0] CODEC loopback test passed
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
> [INFO] [0/Radio#0] CODEC loopback test passed
> Using Device: Single USRP:
>   Device: E300-Series Device
>   Mboard 0: e310_sg3
>   RX Channel: 0
>     RX DSP: n/a
>     RX Dboard: A
>     RX Subdev: E3xx
>   RX Channel: 1
>     RX DSP: n/a
>     RX Dboard: A
>     RX Subdev: E3xx
>   TX Channel: 0
>     TX DSP: n/a
>     TX Dboard: A
>     TX Subdev: E3xx
>   TX Channel: 1
>     TX DSP: n/a
>     TX Dboard: A
>     TX Subdev: E3xx
>
> [00:00:06.466089847] Setting device timestamp to 0...
> Setting TX spp to 364
> [00:00:10.313807747] Testing receive rate 1.000000 Msps on 1 channels
> [00:00:10.748820483] Testing transmit rate 1.000000 Msps on 1 channels
> [00:00:11.753567712] Tx timeouts: 1
> [00:00:21.857387286] Benchmark complete.
>
>
> Benchmark rate summary:
>   Num received samples:     10248286
>   Num dropped samples:      0
>   Num overruns detected:    0
>   Num transmitted samples:  0
>   Num sequence errors (Tx): 0
>   Num sequence errors (Rx): 0
>   Num underruns detected:   0
>   Num late commands:        0
>   Num timeouts (Tx):        11
>   Num timeouts (Rx):        0
>
>
> Done!
>
> The only message that is different between tests and calls my attention
> is: "[WARNING] [MPM.RPCServer] A timeout event occured!"
>
> Any ideas?
>
> In the meantime I'll try to reload the file system and the default FPGA
> image, I'll let you know if I've any news.
>
> Thank you,
> Lautaro.
>
> El jue, 14 abr 2022 a la(s) 00:23, Rob Kossler (rkossler@nd.edu) escribi=
=C3=B3:
>
>> Hi Lautaro,
>> When you run embedded, what is the version that runs? I am wondering if
>> your embedded file system (and also MPM version) is old and does not mat=
ch
>> the UHD version 4.1.0.5 that you are using on a host workstation. If thi=
s
>> is the case, perhaps reload the file system using "dd" (don't use
>> bmaptool).  Another thought would be to try benchmark_rate with 2 channe=
ls
>> tx and 2 channels rx (at a slow rate) and see if the lights come on.
>> Rob
>>
>> On Wed, Apr 13, 2022 at 12:33 PM Lautaro Lorenzen <
>> lorenzen.lautaro@gmail.com> wrote:
>>
>>> Hi everyone,
>>>
>>> I'm trying to run a simple example on an Ettus E310.
>>> I'm using an E312 with UHD 4.1.0.5 and gnuradio v3.8.0.5.
>>>
>>> Everything seems to work okay, but I can not manage to get the second
>>> channel (TRX-B) to transmit anything. FYI: I can receive from both chan=
nels
>>> RX-A and RX-B.
>>> The problem came up when I tried to transmit something via gnu-radio,
>>> changing the "subdev" arg to "A:1" instead of leaving it blank as I
>>> normally do.
>>> When I pressed start, everything seemed to compile fine, but the GUI
>>> freezes (something that did not happen when using TRX-A).
>>>
>>> To see if gnu-radio was the problem, I logged in the embedded linux and
>>> tried some uhd examples from usr/lib/uhd/examples.
>>> As expected, I ran ./tx_waveforms --rate 1e6 --freq 100e6 --subdev A:0
>>> and the tx light turned on and I could see something on my oscilloscope=
.
>>> Also, a few "LLLLL" appeared on the console.
>>>
>>> When I ran:
>>> ./tx_waveforms --rate 1e6 --freq 100e6 --subdev A:1, everything looks
>>> the same but no light, no signal, and no "LLLLL" are displayed on the
>>> console. Just the message "press ctrl+C to stop streaming".
>>>
>>> Any help would be very much appreciated.
>>> Regards,
>>> Lautaro.
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--00000000000001692105dd02ac3d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Well, I&#39;ve rebuilt and reloaded the FPGA image, and=
.... it works. Both from the embedded and the host, including gnu-radio. <b=
r></div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,s=
ans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:aria=
l,helvetica,sans-serif">I presumably did nothing different, and used the sa=
me YAML as last time. Of course, I must have done something in the middle t=
hat is beyond me. <br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:arial,helvetica,sans-serif">In my defense, the error was quite strange :=
)<br></div><div class=3D"gmail_default" style=3D"font-family:arial,helvetic=
a,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:a=
rial,helvetica,sans-serif">Thank you for your time and your help.</div><div=
 class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">L=
autaro.<br></div><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif"><span class=3D"gmail-ILfuVd"><span class=3D"gmail-hgKEl=
c"></span></span></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">El mar, 19 abr 2022 a la(s) 10:14, Lautaro Lorenzen =
(<a href=3D"mailto:lorenzen.lautaro@gmail.com">lorenzen.lautaro@gmail.com</=
a>) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial=
,helvetica,sans-serif">Hello Rob,</div><div class=3D"gmail_default" style=
=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_d=
efault" style=3D"font-family:arial,helvetica,sans-serif">You are right, the=
 UHD version running on the embedded is 4.1.0.4. In any case, I don&#39;t q=
uite get why the examples running on the ettus don&#39;t work either.=C2=A0=
</div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,san=
s-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,=
helvetica,sans-serif">If I run ./benchmark_rate --rx_rate 1e6 --tx_rate 1e6=
 --rx_channels 1 --tx_channels 0, I get:<br></div><div class=3D"gmail_defau=
lt" style=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">[INFO] =
[UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.1.0.4-0-g25d617ca<b=
r>[00:00:00.044121] Creating the usrp device with: ...<br>[INFO] [MPMD] Ini=
tializing 1 device(s) in parallel with args: mgmt_addr=3D127.0.0.1,type=3De=
3xx,product=3De310_sg3,serial=3D30E2D8B,fpga=3Dn/a,claimed=3DFalse<br>[INFO=
] [MPM.PeriphManager] Found 1 daughterboard(s).<br>[INFO] [MPM.PeriphManage=
r] init() called with device args `fpga=3Dn/a,mgmt_addr=3D127.0.0.1,product=
=3De310_sg3&#39;.<br>[INFO] [0/Radio#0] Performing CODEC loopback test on c=
hannel 0 ... <br>[INFO] [0/Radio#0] CODEC loopback test passed<br>[INFO] [0=
/Radio#0] Performing CODEC loopback test on channel 1 ... <br>[INFO] [0/Rad=
io#0] CODEC loopback test passed<br>Using Device: Single USRP:<br>=C2=A0 De=
vice: E300-Series Device<br>=C2=A0 Mboard 0: e310_sg3<br>=C2=A0 RX Channel:=
 0<br>=C2=A0 =C2=A0 RX DSP: n/a<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=
=A0 RX Subdev: E3xx<br>=C2=A0 RX Channel: 1<br>=C2=A0 =C2=A0 RX DSP: n/a<br=
>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: E3xx<br>=C2=A0 TX C=
hannel: 0<br>=C2=A0 =C2=A0 TX DSP: n/a<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=
=A0 =C2=A0 TX Subdev: E3xx<br>=C2=A0 TX Channel: 1<br>=C2=A0 =C2=A0 TX DSP:=
 n/a<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: E3xx<br><br>=
[00:00:06.286834383] Setting device timestamp to 0...<br>Setting TX spp to =
364<br>[00:00:10.136939135] Testing receive rate 1.000000 Msps on 1 channel=
s<br>[00:00:10.564365285] Testing transmit rate 1.000000 Msps on 1 channels=
<br>[00:00:20.827293545] Benchmark complete.<br><br><br>Benchmark rate summ=
ary:<br>=C2=A0 Num received samples: =C2=A0 =C2=A0 10248264<br>=C2=A0 Num d=
ropped samples: =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num overruns detected: =C2=
=A0 =C2=A00<br>=C2=A0 Num transmitted samples: =C2=A010257884<br>=C2=A0 Num=
 sequence errors (Tx): 0<br>=C2=A0 Num sequence errors (Rx): 0<br>=C2=A0 Nu=
m underruns detected: =C2=A0 0<br>=C2=A0 Num late commands: =C2=A0 =C2=A0 =
=C2=A0 =C2=A00<br>=C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br=
>=C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br><br><br>Done!</d=
iv><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-s=
erif"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,hel=
vetica,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fam=
ily:arial,helvetica,sans-serif">On the other hand, If I include tx channel =
&quot;1&quot; in any way (2Tx 2Rx or 1Tx 1Rx) the test fails. <br></div><di=
v class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">=
<br></div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif">[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4=
.1.0.4-0-g25d617ca<br>[00:00:00.044036] Creating the usrp device with: ...<=
br>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=
=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D30E2D8B,fpga=3Dn/a,cla=
imed=3DFalse<br>[WARNING] [MPM.RPCServer] A timeout event occured!<br>[INFO=
] [MPM.PeriphManager] Found 1 daughterboard(s).<br>[INFO] [MPM.PeriphManage=
r] init() called with device args `fpga=3Dn/a,mgmt_addr=3D127.0.0.1,product=
=3De310_sg3&#39;.<br>[INFO] [0/Radio#0] Performing CODEC loopback test on c=
hannel 0 ... <br>[INFO] [0/Radio#0] CODEC loopback test passed<br>[INFO] [0=
/Radio#0] Performing CODEC loopback test on channel 1 ... <br>[INFO] [0/Rad=
io#0] CODEC loopback test passed<br>Using Device: Single USRP:<br>=C2=A0 De=
vice: E300-Series Device<br>=C2=A0 Mboard 0: e310_sg3<br>=C2=A0 RX Channel:=
 0<br>=C2=A0 =C2=A0 RX DSP: n/a<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=
=A0 RX Subdev: E3xx<br>=C2=A0 RX Channel: 1<br>=C2=A0 =C2=A0 RX DSP: n/a<br=
>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: E3xx<br>=C2=A0 TX C=
hannel: 0<br>=C2=A0 =C2=A0 TX DSP: n/a<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=
=A0 =C2=A0 TX Subdev: E3xx<br>=C2=A0 TX Channel: 1<br>=C2=A0 =C2=A0 TX DSP:=
 n/a<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: E3xx<br><br>=
[00:00:06.466089847] Setting device timestamp to 0...<br>Setting TX spp to =
364<br>[00:00:10.313807747] Testing receive rate 1.000000 Msps on 1 channel=
s<br>[00:00:10.748820483] Testing transmit rate 1.000000 Msps on 1 channels=
<br>[00:00:11.753567712] Tx timeouts: 1<br>[00:00:21.857387286] Benchmark c=
omplete.<br><br><br>Benchmark rate summary:<br>=C2=A0 Num received samples:=
 =C2=A0 =C2=A0 10248286<br>=C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A0=
0<br>=C2=A0 Num overruns detected: =C2=A0 =C2=A00<br>=C2=A0 Num transmitted=
 samples: =C2=A00<br>=C2=A0 Num sequence errors (Tx): 0<br>=C2=A0 Num seque=
nce errors (Rx): 0<br>=C2=A0 Num underruns detected: =C2=A0 0<br>=C2=A0 Num=
 late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num timeouts (Tx): =
=C2=A0 =C2=A0 =C2=A0 =C2=A011<br>=C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =
=C2=A0 =C2=A00<br><br><br>Done!</div><div class=3D"gmail_default" style=3D"=
font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_defau=
lt" style=3D"font-family:arial,helvetica,sans-serif">The only message that =
is different between tests and calls my attention is: &quot;[WARNING] [MPM.=
RPCServer] A timeout event occured!&quot;</div><div class=3D"gmail_default"=
 style=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"g=
mail_default" style=3D"font-family:arial,helvetica,sans-serif">Any ideas?</=
div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-=
serif"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">In the meantime I&#39;ll try to reload the file system =
and the default FPGA image, I&#39;ll let you know if I&#39;ve any news.</di=
v><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-se=
rif"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,helv=
etica,sans-serif">Thank you,</div><div class=3D"gmail_default" style=3D"fon=
t-family:arial,helvetica,sans-serif">Lautaro.<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El jue, 14 abr 2022 =
a la(s) 00:23, Rob Kossler (<a href=3D"mailto:rkossler@nd.edu" target=3D"_b=
lank">rkossler@nd.edu</a>) escribi=C3=B3:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Lautaro,<div=
>When you run embedded, what is the version that runs? I am wondering if yo=
ur embedded file system (and also MPM version) is old and does not match th=
e UHD version 4.1.0.5 that you are using on a host workstation. If this is =
the case, perhaps reload the file system using &quot;dd&quot; (don&#39;t us=
e bmaptool).=C2=A0 Another thought would be to try benchmark_rate with 2 ch=
annels tx and 2 channels rx (at a slow rate) and see if the lights come on.=
</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Wed, Apr 13, 2022 at 12:33 PM Lautaro Lorenzen &lt;<=
a href=3D"mailto:lorenzen.lautaro@gmail.com" target=3D"_blank">lorenzen.lau=
taro@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div style=3D"font-family:arial,helvetica,sa=
ns-serif">Hi everyone,</div><div style=3D"font-family:arial,helvetica,sans-=
serif"><br></div><div style=3D"font-family:arial,helvetica,sans-serif">I&#3=
9;m trying to run a simple example on an Ettus E310. <br><div style=3D"font=
-family:arial,helvetica,sans-serif">I&#39;m using an E312 with UHD 4.1.0.5 =
and gnuradio v3.8.0.5. <br></div><div style=3D"font-family:arial,helvetica,=
sans-serif"><br></div><div style=3D"font-family:arial,helvetica,sans-serif"=
>Everything seems to work okay, but I can not manage to get the second chan=
nel (TRX-B) to transmit anything. FYI: I can receive from both channels RX-=
A and RX-B.<br></div><div style=3D"font-family:arial,helvetica,sans-serif">=
The problem came up when I tried to transmit something via gnu-radio, chang=
ing the &quot;subdev&quot; arg to &quot;A:1&quot; instead of leaving it bla=
nk as I normally do. <br></div><div style=3D"font-family:arial,helvetica,sa=
ns-serif">When I pressed start, everything seemed to compile fine, but the =
GUI freezes (something that did not happen when using TRX-A).</div><div sty=
le=3D"font-family:arial,helvetica,sans-serif"><br></div><div style=3D"font-=
family:arial,helvetica,sans-serif">To see if gnu-radio was the problem, I l=
ogged in the embedded linux and tried some uhd examples from usr/lib/uhd/ex=
amples.</div><div style=3D"font-family:arial,helvetica,sans-serif">As expec=
ted, I ran ./tx_waveforms --rate 1e6 --freq 100e6 --subdev A:0=C2=A0 and th=
e tx light turned on and I could see something on my oscilloscope. Also, a =
few &quot;LLLLL&quot; appeared on the console.</div><div style=3D"font-fami=
ly:arial,helvetica,sans-serif"><br></div><div style=3D"font-family:arial,he=
lvetica,sans-serif">When I ran: <br></div><div style=3D"font-family:arial,h=
elvetica,sans-serif">./tx_waveforms --rate 1e6 --freq 100e6 --subdev A:1, e=
verything looks the same but no light, no signal, and no &quot;LLLLL&quot; =
are displayed on the console. Just the message &quot;press ctrl+C to stop s=
treaming&quot;.</div><div style=3D"font-family:arial,helvetica,sans-serif">=
<br></div><div style=3D"font-family:arial,helvetica,sans-serif">Any help wo=
uld be very much appreciated. <br></div><div style=3D"font-family:arial,hel=
vetica,sans-serif">Regards,</div><div style=3D"font-family:arial,helvetica,=
sans-serif">Lautaro.<br> </div><div style=3D"font-family:arial,helvetica,sa=
ns-serif"><br></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>

--00000000000001692105dd02ac3d--

--===============2582607677264294851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2582607677264294851==--
