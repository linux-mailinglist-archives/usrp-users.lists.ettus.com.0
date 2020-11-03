Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2C52A4FF9
	for <lists+usrp-users@lfdr.de>; Tue,  3 Nov 2020 20:20:48 +0100 (CET)
Received: from [::1] (port=54792 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ka1rI-0008Ds-Bc; Tue, 03 Nov 2020 14:20:44 -0500
Received: from mail-wm1-f44.google.com ([209.85.128.44]:55429)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <lukestuts@gmail.com>) id 1ka1rE-00087R-7y
 for usrp-users@lists.ettus.com; Tue, 03 Nov 2020 14:20:40 -0500
Received: by mail-wm1-f44.google.com with SMTP id c9so370577wml.5
 for <usrp-users@lists.ettus.com>; Tue, 03 Nov 2020 11:20:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZXSKA9c+D4EncAZVP2OhYsybsb/F1ujqFqiGlNddcuU=;
 b=kLwUJENDbIwhF6wC6EF0Ex0KwwqnR4aT0UwxUuDH4WMJCS4El1oMLX12VqBJuIIZ1q
 mCuMOSgYB0Aw4IU1VRYaPXt1rYW63pv3WQT8dovQsMSOksLxHdsW5WACjOsy8bVyY7/A
 fax5cI/3EWVnunIeJCAKwrTIW3NZY8ZvFSLE0BYeWttScl77xjZxNR8EsY9GY7Lmg1HJ
 P1cyOxG/r4AEhdQNnjYFkd4IULUJMjXfNsqcy7LZXZj9PlMe/XAWo6K6Olu1mmuC+K3p
 D03wNc4fcXrBkM2ypKhXpgYjKAQrBYZ6YwO9Xx1vi2aBHt0lB51+m08dcHWILgIiwY3l
 DI7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZXSKA9c+D4EncAZVP2OhYsybsb/F1ujqFqiGlNddcuU=;
 b=ivSsOzdfk2wDco+4PMFIh5EELuQ+uQk9y+VZlKutsHnIxuzUd02Ey+evQxs+he3sj3
 utFPFjx9YcpVrOJF01V2xoeledpDp8SHaDWlwT/3XIWbdG85h1Rzts7LTc+GHw2ZGyYA
 A05srljdV0yhcskyzGJolG5lf493Ye3kzziRzmiTwyNTcwO0cvE7aEmixrA+ACi4gP1w
 VfiVhaWmhptFZtWsQVg2ARR7c+87wPkEFm1GNNknf1PkJ79HX/vDXBOHE87kIpp5oArt
 +0OyfaQMOt0dk4IO3aAwbbr6z6hLggXhIJ52UwLFwfkvFaKzDXMoBS5OUJNiID02XFwA
 PVig==
X-Gm-Message-State: AOAM530KtCqz6edfppjctIfV9d+T8F/+n4CCYDfi19SKP/87Wwd6JfQ0
 iF+P4P1piGFhaw7vPm6xrenTlDvD1yTU1cWfcw==
X-Google-Smtp-Source: ABdhPJxJkYeh4dZ/aDkZEHvZbtVH+75uQ+oyj4FuUosAchWH1zupNfMHhfi5dUYovRiAMHnnaLp0myjUdf6gBMpAe4U=
X-Received: by 2002:a7b:c453:: with SMTP id l19mr708724wmi.2.1604431199004;
 Tue, 03 Nov 2020 11:19:59 -0800 (PST)
MIME-Version: 1.0
References: <CAAC=UJP-ZpTgGyAx0gVZ0ApfvnZmF6G27GOXPwJMKMStbF5W_Q@mail.gmail.com>
 <5FA19137.10205@gmail.com>
In-Reply-To: <5FA19137.10205@gmail.com>
Date: Tue, 3 Nov 2020 19:19:47 +0000
Message-ID: <CAJr+t_rBcTQ_5_y3MdMTmgxbYbg3rOtvZS4LnOZ+tmcCkxu4gg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Raspberry Pi 4 sampling Rate
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Luke Stutters via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Luke Stutters <lukestuts@gmail.com>
Content-Type: multipart/mixed; boundary="===============7691744515898760697=="
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

--===============7691744515898760697==
Content-Type: multipart/alternative; boundary="000000000000aeebd805b338bf70"

--000000000000aeebd805b338bf70
Content-Type: text/plain; charset="UTF-8"

I have only succeeded in running a B210 on a Raspberry Pi at lower data
rates (closer to 12MS) so your experience is consistent with mine.

On Tue, 3 Nov 2020 at 17:20, Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 11/03/2020 10:49 AM, Alvaro Pendas Recondo via USRP-users wrote:
> > Hello,
> >
> > I am using a USRP B200mini with a sampling rate of 40MS that works
> > perfectly fine connected to a laptop with USB 3. However, when I
> > connect it to a Raspberry Pi 4 (which has two USB 3 ports) and I run
> > the example benchmark_rate with the same sampling rate I get the
> > output that I copy below. It seems that even if it is also operating
> > over USB 3, this connection cannot meet the expected performance
> > anymore. If I reduce the sampling rate (down to 12 MS approx)
> > everything works fine. Any ideas about what might be causing this
> problem?
> >
> >
> > By the way, I already followed all the instructions explained at
> >
> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#:~:text=Thread%20Priority%20Scheduling,-When%20UHD%20spawns&text=To%20address%20this%20issue%2C%20non,%2Fetc%2Fsecurity%2Flimits
> > <
> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#:%7E:text=Thread%20Priority%20Scheduling,-When%20UHD%20spawns&text=To%20address%20this%20issue%2C%20non,%2Fetc%2Fsecurity%2Flimits>.
>
> >
> >
> >
> > ./benchmark_rate --rx_rate 40e6 --tx_rate 40e6
> >
> > [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
> > UHD_3.15.0.HEAD-0-gaea0e2de
> > [INFO] [B200] Loading firmware image:
> > /usr/local/share/uhd/images/usrp_b200_fw.hex...
> > [00:00:00.000044] Creating the usrp device with: ...
> > [INFO] [B200] Detected Device: B200mini
> > [INFO] [B200] Loading FPGA image:
> > /usr/local/share/uhd/images/usrp_b200mini_fpga.bin...
> > [INFO] [B200] Operating over USB 3.
> > [INFO] [B200] Initialize CODEC control...
> > [INFO] [B200] Initialize Radio control...
> > [INFO] [B200] Performing register loopback test...
> > [INFO] [B200] Register loopback test passed
> > [INFO] [B200] Setting master clock rate selection to 'automatic'.
> > [INFO] [B200] Asking for clock rate 16.000000 MHz...
> > [INFO] [B200] Actually got clock rate 16.000000 MHz.
> > Using Device: Single USRP:
> >   Device: B-Series Device
> >   Mboard 0: B200mini
> >   RX Channel: 0
> >     RX DSP: 0
> >     RX Dboard: A
> >     RX Subdev: FE-RX1
> >   TX Channel: 0
> >     TX DSP: 0
> >     TX Dboard: A
> >     TX Subdev: FE-TX1
> >
> > [00:00:11.448560] Setting device timestamp to 0...
> > [INFO] [B200] Asking for clock rate 40.000000 MHz...
> > [INFO] [B200] Actually got clock rate 40.000000 MHz.
> > [WARNING] [MULTI_USRP] The total sum of rates (40.000000 MSps on 1
> > channels) exceeds the maximum capacity of the connection (overflows
> > (O) MSps).
> > This can cause 22.7428.
> > [00:00:11.766752] Testing receive rate 40.000000 Msps on 1 channels
> > [WARNING] [MULTI_USRP] The total sum of rates (40.000000 MSps on 1
> > channels) exceeds the maximum capacity of the connection (underruns
> > (U) MSps).
> > This can cause 22.7428.
> > [00:00:11.790580] Testing transmit rate 40.000000 Msps on 1 channels
> > [00:00:11.891995] Tx timeouts: 1
> > UUUUUUUUUUUUUUUO[00:00:12.078147] Timestamp after overrun recovery
> > ahead of error timestamp! Unable to calculate number of dropped
> > samples.(Delta: -3170 ticks)
> > UUUUUUUUUUUUUUUUUUUUO[00:00:12.092404] Timestamp after overrun
> > recovery ahead of error timestamp! Unable to calculate number of
> > dropped samples.(Delta: -3170 ticks)
> > UUUUUUUUUUUUUO[00:00:12.108355] Timestamp after overrun recovery ahead
> > of error timestamp! Unable to calculate number of dropped
> > samples.(Delta: -3170 ticks)
> > UUUUUUUUUUUUUUUUUUUUUUUUU[OU00:00:12.123737] Timestamp after overrun
> > recovery ahead of error timestamp! Unable to calculate number of
> > dropped samples.(Delta: -3170 ticks)
> > UUUUUUUUUUUUUUUUUUUUOU[00:00:12.132437] Timestamp after overrun
> > recovery ahead of error timestamp! Unable to calculate number of
> > dropped samples.(Delta: -3170 ticks)
> > UUUUUUUUUUUUUUUUUUUUUUOU[00:00:12.142422] Timestamp after overrun
> > recovery ahead of error timestamp! Unable to calculate number of
> > dropped samples.(Delta: -3170 ticks)
> > UUUUUUUUUUUUUUO[00:00:12.155257] Timestamp after overrun recovery
> > ahead of error timestamp! Unable to calculate number of dropped
> > samples.(Delta: -3170 ticks)
> > UUUUUUUUUUUUUUUO[00:00:12.168528] Timestamp after overrun recovery
> > ahead of error timestamp! Unable to calculate number of dropped
> > samples.(Delta: -3170 ticks)
> > UUUUUUUUUUU[O00:00:12.178400] Timestamp after overrun recovery ahead
> > of error timestamp! Unable to calculate number of dropped
> > samples.(Delta: -3170 ticks)
> > UUUUUUUUU[00:00:12.193251] Timestamp after overrun recovery ahead of
> > error timestamp! Unable to calculate number of dropped samples.(Delta:
> > -3170 ticks)
> > OUUUUUUUUUUUUUUUUUO[00:00:12.204356] Timestamp after overrun recovery
> > ahead of error timestamp! Unable to calculate number of dropped
> > samples.(Delta: -3170 ticks)
> > UUUUUUUUUUUUUUUUO[00:00:12.224770] Timestamp after overrun recovery
> > ahead of error timestamp! Unable to calculate number of dropped
> > samples.(Delta: -3170 ticks)
> > UUUUUUUUUUUUUUUUUO[00:00:12.235145] Timestamp after overrun recovery
> > ahead of error timestamp! Unable to calculate number of dropped
> > samples.(Delta: -3170 ticks)
> > UUUUUUUUUUUUU[O00:00:12.247517] Timestamp after overrun recovery ahead
> > of error timestamp! Unable to calculate number of dropped
> > samples.(Delta: -3170 ticks)
> > UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU[00:00:12.475571] Receiver error:
> > ERROR_CODE_TIMEOUT, continuing...
> > [00:00:12.575910] Receiver error: ERROR_CODE_TIMEOUT, continuing...
> > [00:00:12.676171] Receiver error: ERROR_CODE_TIMEOUT, continuing...
> > [00:00:12.776414] Receiver error: ERROR_CODE_TIMEOUT, continuing...
> > [00:00:12.876663] Receiver error: ERROR_CODE_TIMEOUT, continuing...
> > [00:00:12.976968] Receiver error: ERROR_CODE_TIMEOUT, continuing...
> > [00:00:13.077257] Receiver error: ERROR_CODE_TIMEOUT, continuing...
> > terminate called after throwing an instance of 'uhd::io_error'
> >   what():  EnvironmentError: IOError: usb tx2 transfer status:
> > LIBUSB_TRANSFER_NO_DEVICE[
> > 00:00:13.083166] Caught an IO exception.
> > EnvironmentError: IOError: usb rx6 transfer status:
> > LIBUSB_TRANSFER_NO_DEVICE
> >
> Well, the main reason is that your typical laptop compute environment,
> based on x86 processor technology, is going to be more powerful
>    than the ARM on a Raspberry Pi4.
>
> Now, you *may* be able to improve things slightly by adjusting the USB
> transport parameters, as described here:
>
> https://files.ettus.com/manual/page_transport.html#transport_usb
>
> But once you actually start "doing stuff" on the Raspberry Pi, you'll
> find that it can't process as many samples per second as on an x86
>    system--whether a laptop or desktop machine.  There's a reason that a
> Raspberry Pi is $50, and a typical low-end laptop is 10 times that.
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000aeebd805b338bf70
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have only succeeded in running a B210 on a Raspberry Pi =
at lower data rates (closer to 12MS) so your experience is consistent with =
mine.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Tue, 3 Nov 2020 at 17:20, Marcus D. Leech via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 11/03/=
2020 10:49 AM, Alvaro Pendas Recondo via USRP-users wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I am using a USRP B200mini with a sampling rate of 40MS that works <br=
>
&gt; perfectly fine connected to a laptop with USB 3. However, when I <br>
&gt; connect it to a Raspberry Pi 4 (which has two USB 3 ports) and I run <=
br>
&gt; the example benchmark_rate with the same sampling rate I get the <br>
&gt; output that I copy below. It seems that even if it is also operating <=
br>
&gt; over USB 3, this connection cannot meet the expected performance <br>
&gt; anymore. If I reduce the sampling rate (down to 12 MS approx) <br>
&gt; everything works fine. Any ideas about what might be causing this prob=
lem?<br>
&gt;<br>
&gt;<br>
&gt; By the way, I already followed all the instructions explained at <br>
&gt; <a href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_=
Tricks#:~:text=3DThread%20Priority%20Scheduling,-When%20UHD%20spawns&amp;te=
xt=3DTo%20address%20this%20issue%2C%20non,%2Fetc%2Fsecurity%2Flimits" rel=
=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/USRP_Host_Performanc=
e_Tuning_Tips_and_Tricks#:~:text=3DThread%20Priority%20Scheduling,-When%20U=
HD%20spawns&amp;text=3DTo%20address%20this%20issue%2C%20non,%2Fetc%2Fsecuri=
ty%2Flimits</a> <br>
&gt; &lt;<a href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_=
and_Tricks#:%7E:text=3DThread%20Priority%20Scheduling,-When%20UHD%20spawns&=
amp;text=3DTo%20address%20this%20issue%2C%20non,%2Fetc%2Fsecurity%2Flimits"=
 rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/USRP_Host_Perfor=
mance_Tuning_Tips_and_Tricks#:%7E:text=3DThread%20Priority%20Scheduling,-Wh=
en%20UHD%20spawns&amp;text=3DTo%20address%20this%20issue%2C%20non,%2Fetc%2F=
security%2Flimits</a>&gt;. <br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; ./benchmark_rate --rx_rate 40e6 --tx_rate 40e6<br>
&gt;<br>
&gt; [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; <br>
&gt; UHD_3.15.0.HEAD-0-gaea0e2de<br>
&gt; [INFO] [B200] Loading firmware image: <br>
&gt; /usr/local/share/uhd/images/usrp_b200_fw.hex...<br>
&gt; [00:00:00.000044] Creating the usrp device with: ...<br>
&gt; [INFO] [B200] Detected Device: B200mini<br>
&gt; [INFO] [B200] Loading FPGA image: <br>
&gt; /usr/local/share/uhd/images/usrp_b200mini_fpga.bin...<br>
&gt; [INFO] [B200] Operating over USB 3.<br>
&gt; [INFO] [B200] Initialize CODEC control...<br>
&gt; [INFO] [B200] Initialize Radio control...<br>
&gt; [INFO] [B200] Performing register loopback test...<br>
&gt; [INFO] [B200] Register loopback test passed<br>
&gt; [INFO] [B200] Setting master clock rate selection to &#39;automatic&#3=
9;.<br>
&gt; [INFO] [B200] Asking for clock rate 16.000000 MHz...<br>
&gt; [INFO] [B200] Actually got clock rate 16.000000 MHz.<br>
&gt; Using Device: Single USRP:<br>
&gt;=C2=A0 =C2=A0Device: B-Series Device<br>
&gt;=C2=A0 =C2=A0Mboard 0: B200mini<br>
&gt;=C2=A0 =C2=A0RX Channel: 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0RX DSP: 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0RX Dboard: A<br>
&gt;=C2=A0 =C2=A0 =C2=A0RX Subdev: FE-RX1<br>
&gt;=C2=A0 =C2=A0TX Channel: 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0TX DSP: 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0TX Dboard: A<br>
&gt;=C2=A0 =C2=A0 =C2=A0TX Subdev: FE-TX1<br>
&gt;<br>
&gt; [00:00:11.448560] Setting device timestamp to 0...<br>
&gt; [INFO] [B200] Asking for clock rate 40.000000 MHz...<br>
&gt; [INFO] [B200] Actually got clock rate 40.000000 MHz.<br>
&gt; [WARNING] [MULTI_USRP] The total sum of rates (40.000000 MSps on 1 <br=
>
&gt; channels) exceeds the maximum capacity of the connection (overflows <b=
r>
&gt; (O) MSps).<br>
&gt; This can cause 22.7428.<br>
&gt; [00:00:11.766752] Testing receive rate 40.000000 Msps on 1 channels<br=
>
&gt; [WARNING] [MULTI_USRP] The total sum of rates (40.000000 MSps on 1 <br=
>
&gt; channels) exceeds the maximum capacity of the connection (underruns <b=
r>
&gt; (U) MSps).<br>
&gt; This can cause 22.7428.<br>
&gt; [00:00:11.790580] Testing transmit rate 40.000000 Msps on 1 channels<b=
r>
&gt; [00:00:11.891995] Tx timeouts: 1<br>
&gt; UUUUUUUUUUUUUUUO[00:00:12.078147] Timestamp after overrun recovery <br=
>
&gt; ahead of error timestamp! Unable to calculate number of dropped <br>
&gt; samples.(Delta: -3170 ticks)<br>
&gt; UUUUUUUUUUUUUUUUUUUUO[00:00:12.092404] Timestamp after overrun <br>
&gt; recovery ahead of error timestamp! Unable to calculate number of <br>
&gt; dropped samples.(Delta: -3170 ticks)<br>
&gt; UUUUUUUUUUUUUO[00:00:12.108355] Timestamp after overrun recovery ahead=
 <br>
&gt; of error timestamp! Unable to calculate number of dropped <br>
&gt; samples.(Delta: -3170 ticks)<br>
&gt; UUUUUUUUUUUUUUUUUUUUUUUUU[OU00:00:12.123737] Timestamp after overrun <=
br>
&gt; recovery ahead of error timestamp! Unable to calculate number of <br>
&gt; dropped samples.(Delta: -3170 ticks)<br>
&gt; UUUUUUUUUUUUUUUUUUUUOU[00:00:12.132437] Timestamp after overrun <br>
&gt; recovery ahead of error timestamp! Unable to calculate number of <br>
&gt; dropped samples.(Delta: -3170 ticks)<br>
&gt; UUUUUUUUUUUUUUUUUUUUUUOU[00:00:12.142422] Timestamp after overrun <br>
&gt; recovery ahead of error timestamp! Unable to calculate number of <br>
&gt; dropped samples.(Delta: -3170 ticks)<br>
&gt; UUUUUUUUUUUUUUO[00:00:12.155257] Timestamp after overrun recovery <br>
&gt; ahead of error timestamp! Unable to calculate number of dropped <br>
&gt; samples.(Delta: -3170 ticks)<br>
&gt; UUUUUUUUUUUUUUUO[00:00:12.168528] Timestamp after overrun recovery <br=
>
&gt; ahead of error timestamp! Unable to calculate number of dropped <br>
&gt; samples.(Delta: -3170 ticks)<br>
&gt; UUUUUUUUUUU[O00:00:12.178400] Timestamp after overrun recovery ahead <=
br>
&gt; of error timestamp! Unable to calculate number of dropped <br>
&gt; samples.(Delta: -3170 ticks)<br>
&gt; UUUUUUUUU[00:00:12.193251] Timestamp after overrun recovery ahead of <=
br>
&gt; error timestamp! Unable to calculate number of dropped samples.(Delta:=
 <br>
&gt; -3170 ticks)<br>
&gt; OUUUUUUUUUUUUUUUUUO[00:00:12.204356] Timestamp after overrun recovery =
<br>
&gt; ahead of error timestamp! Unable to calculate number of dropped <br>
&gt; samples.(Delta: -3170 ticks)<br>
&gt; UUUUUUUUUUUUUUUUO[00:00:12.224770] Timestamp after overrun recovery <b=
r>
&gt; ahead of error timestamp! Unable to calculate number of dropped <br>
&gt; samples.(Delta: -3170 ticks)<br>
&gt; UUUUUUUUUUUUUUUUUO[00:00:12.235145] Timestamp after overrun recovery <=
br>
&gt; ahead of error timestamp! Unable to calculate number of dropped <br>
&gt; samples.(Delta: -3170 ticks)<br>
&gt; UUUUUUUUUUUUU[O00:00:12.247517] Timestamp after overrun recovery ahead=
 <br>
&gt; of error timestamp! Unable to calculate number of dropped <br>
&gt; samples.(Delta: -3170 ticks)<br>
&gt; UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU[00:00:12.475571] Receiver error: <br>
&gt; ERROR_CODE_TIMEOUT, continuing...<br>
&gt; [00:00:12.575910] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br=
>
&gt; [00:00:12.676171] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br=
>
&gt; [00:00:12.776414] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br=
>
&gt; [00:00:12.876663] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br=
>
&gt; [00:00:12.976968] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br=
>
&gt; [00:00:13.077257] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br=
>
&gt; terminate called after throwing an instance of &#39;uhd::io_error&#39;=
<br>
&gt;=C2=A0 =C2=A0what():=C2=A0 EnvironmentError: IOError: usb tx2 transfer =
status: <br>
&gt; LIBUSB_TRANSFER_NO_DEVICE[<br>
&gt; 00:00:13.083166] Caught an IO exception.<br>
&gt; EnvironmentError: IOError: usb rx6 transfer status: <br>
&gt; LIBUSB_TRANSFER_NO_DEVICE<br>
&gt;<br>
Well, the main reason is that your typical laptop compute environment, <br>
based on x86 processor technology, is going to be more powerful<br>
=C2=A0 =C2=A0than the ARM on a Raspberry Pi4.<br>
<br>
Now, you *may* be able to improve things slightly by adjusting the USB <br>
transport parameters, as described here:<br>
<br>
<a href=3D"https://files.ettus.com/manual/page_transport.html#transport_usb=
" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/manual/page_=
transport.html#transport_usb</a><br>
<br>
But once you actually start &quot;doing stuff&quot; on the Raspberry Pi, yo=
u&#39;ll <br>
find that it can&#39;t process as many samples per second as on an x86<br>
=C2=A0 =C2=A0system--whether a laptop or desktop machine.=C2=A0 There&#39;s=
 a reason that a <br>
Raspberry Pi is $50, and a typical low-end laptop is 10 times that.<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000aeebd805b338bf70--


--===============7691744515898760697==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7691744515898760697==--

