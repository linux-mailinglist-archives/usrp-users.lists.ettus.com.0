Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C3F2A6B83
	for <lists+usrp-users@lfdr.de>; Wed,  4 Nov 2020 18:20:07 +0100 (CET)
Received: from [::1] (port=35826 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kaMS5-0004w9-N9; Wed, 04 Nov 2020 12:20:05 -0500
Received: from mail-qv1-f41.google.com ([209.85.219.41]:37677)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kaMS1-0004oK-Ha
 for USRP-users@lists.ettus.com; Wed, 04 Nov 2020 12:20:01 -0500
Received: by mail-qv1-f41.google.com with SMTP id ed14so6686168qvb.4
 for <USRP-users@lists.ettus.com>; Wed, 04 Nov 2020 09:19:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=62mDTqv4qKd6vZlM02b7Dbx9ZBo8YfV77G1pK5ryX8Y=;
 b=bCSZ5I33x9GsHDanQ8waNmHVLZc+46SDRR5x9+3q6cl/2PX/+Sv+yzwzNJLYYkKVQb
 VPQKh/GJg/ORaQCjiqgKlAd12qKhSa2UJY0YiaPN9C1FCiRNDZ8oWvWFshCAV5NxZLOz
 Ze6iZDikSDC/2VJBGc+1n4JR1ot1k69FoDh3ViksZXjfPvMqQ5vYMx7GNJIH/+wFZfLx
 bZOIMgCthFYmfbTkwVR6zxlz4azS8RyErkNQSum+JmhXUvOdd8WNA1D968xT74s+YvQD
 DGRU5YI2UkYYcWWwyglD1lXPMexJjbEhoaWJdxn600b5P+TdbLcQi61AnAe4qi84P3ZH
 cPzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=62mDTqv4qKd6vZlM02b7Dbx9ZBo8YfV77G1pK5ryX8Y=;
 b=kgGUNpUsC/y2/vLnx20YHiyPDaaARxHGIV/Gn2A97SxO4UG9rt/YOY6T9otiorja4y
 hWKsDHlkQFSEx/odyye7MgDp7AuOb8aGhPTqJ1EXAXErSYEzw1yM6VWiSpd5kz0WiTGA
 lPuYPyGPR/sGdmKygjOjxiLS0aZlou8cp+5PM8y7292zZNDRqxNLPRN1RIjYn8BI0QU2
 HBTnWWrJVe68I978mURcNLIvmz7Hp8u8UaiI3qOOxk4syUY8aPVs7l5pJKF+U8wkoUKq
 oN9LdIJ6wXDXuIQI28LPd4Gqn6QHQ0YEf0ptpBks+Jcz1mjqToVZ52Kk7HSf1Dl27gH0
 9hdw==
X-Gm-Message-State: AOAM531ImaOPfLyh5n9aALiy5QLDZg/7NCr64Lkgls9i3OVKNLMhsqmA
 Grtb4LFrXsU36OFuspMf5lY=
X-Google-Smtp-Source: ABdhPJzh6Zl8j6rrstYDVrz7n84+9M52q44XnCw9qa0tUQ65cIbkzoNQzlGsOaJaI1TzOrtKa57AfA==
X-Received: by 2002:a0c:b44a:: with SMTP id e10mr8689335qvf.4.1604510360956;
 Wed, 04 Nov 2020 09:19:20 -0800 (PST)
Received: from [192.168.2.132]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id n201sm3086962qka.32.2020.11.04.09.19.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Nov 2020 09:19:20 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Wed, 4 Nov 2020 12:19:19 -0500
Message-Id: <13D50B16-32FC-49DD-9B5D-55BEA697E611@gmail.com>
References: <a77af2cd-9f0a-9464-35a5-26cba461da78@gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <a77af2cd-9f0a-9464-35a5-26cba461da78@gmail.com>
To: David Evans <dasypuss@gmail.com>
X-Mailer: iPhone Mail (18A8395)
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============3441789225949504587=="
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


--===============3441789225949504587==
Content-Type: multipart/alternative; boundary=Apple-Mail-BF074852-91B2-4D88-A214-90C695E1C143
Content-Transfer-Encoding: 7bit


--Apple-Mail-BF074852-91B2-4D88-A214-90C695E1C143
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I used the external power input on the B210.=20

Sent from my iPhone

> On Nov 4, 2020, at 12:13 PM, David Evans via USRP-users <usrp-users@lists.=
ettus.com> wrote:
>=20
> =EF=BB=BF I too was able to sustain around 12Msps on an XU4+B200mini, and w=
as also able to get OpenBTS to work.
> Marcus, hope it's OK to ask, but did you use a USB3 hub? When I tried it t=
he XU4 was unable to supply enough current, causing the SDcard to get corrup=
ted (I had a lot of fun with this!), the solution to this apparently known i=
ssue was to use a hub.
> Cheers,
> Dave
>=20
> On 03/11/2020 20:33, Marcus D. Leech via USRP-users wrote:
>> On 11/03/2020 02:19 PM, Luke Stutters wrote:
>>> I have only succeeded in running a B210 on a Raspberry Pi at lower data r=
ates (closer to 12MS) so your experience is consistent with mine.
>> In certain very-simple DSP flows, I've achieved 14Msps on an Odroid XU4--=
which is spec-similar to the Rpi4 B.
>>=20
>> CPU/Memory/IO performance really matters.  Just because the system has a U=
SB3 interface does NOT mean that it can
>>   sustain high rates.   Even just moving samples through your system, wit=
hout doing anything to them (as in the benchmark_rate
>>   example) requires code-paths that are at least several hundred instruct=
ions long.  Multi-core doesn't necessarily help much with
>>   this because there's no performant way to effectively parallelize the s=
imple process of pulling samples off of USB and getting them
>>   into the user layer.  The SMP aspects of most modern systems only reall=
y start to "shine" when you have a DSP work-flow with
>>   lots of steps that can each benefit from running in their own thread.  B=
ut you *still* have a rate-limiting step of getting the samples
>>   out of the device and into the work-flow.  In that portion, system deta=
ils matter A LOT. =20
>>=20
>>=20
>>>=20
>>> On Tue, 3 Nov 2020 at 17:20, Marcus D. Leech via USRP-users <usrp-users@=
lists.ettus.com> wrote:
>>>> On 11/03/2020 10:49 AM, Alvaro Pendas Recondo via USRP-users wrote:
>>>> > Hello,
>>>> >
>>>> > I am using a USRP B200mini with a sampling rate of 40MS that works=20=

>>>> > perfectly fine connected to a laptop with USB 3. However, when I=20
>>>> > connect it to a Raspberry Pi 4 (which has two USB 3 ports) and I run=20=

>>>> > the example benchmark_rate with the same sampling rate I get the=20
>>>> > output that I copy below. It seems that even if it is also operating=20=

>>>> > over USB 3, this connection cannot meet the expected performance=20
>>>> > anymore. If I reduce the sampling rate (down to 12 MS approx)=20
>>>> > everything works fine. Any ideas about what might be causing this pro=
blem?
>>>> >
>>>> >
>>>> > By the way, I already followed all the instructions explained at=20
>>>> > https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#:~:=
text=3DThread%20Priority%20Scheduling,-When%20UHD%20spawns&text=3DTo%20addre=
ss%20this%20issue%2C%20non,%2Fetc%2Fsecurity%2Flimits=20
>>>> > <https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#:%=
7E:text=3DThread%20Priority%20Scheduling,-When%20UHD%20spawns&text=3DTo%20ad=
dress%20this%20issue%2C%20non,%2Fetc%2Fsecurity%2Flimits>.=20
>>>> >
>>>> >
>>>> >
>>>> > ./benchmark_rate --rx_rate 40e6 --tx_rate 40e6
>>>> >
>>>> > [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;=20
>>>> > UHD_3.15.0.HEAD-0-gaea0e2de
>>>> > [INFO] [B200] Loading firmware image:=20
>>>> > /usr/local/share/uhd/images/usrp_b200_fw.hex...
>>>> > [00:00:00.000044] Creating the usrp device with: ...
>>>> > [INFO] [B200] Detected Device: B200mini
>>>> > [INFO] [B200] Loading FPGA image:=20
>>>> > /usr/local/share/uhd/images/usrp_b200mini_fpga.bin...
>>>> > [INFO] [B200] Operating over USB 3.
>>>> > [INFO] [B200] Initialize CODEC control...
>>>> > [INFO] [B200] Initialize Radio control...
>>>> > [INFO] [B200] Performing register loopback test...
>>>> > [INFO] [B200] Register loopback test passed
>>>> > [INFO] [B200] Setting master clock rate selection to 'automatic'.
>>>> > [INFO] [B200] Asking for clock rate 16.000000 MHz...
>>>> > [INFO] [B200] Actually got clock rate 16.000000 MHz.
>>>> > Using Device: Single USRP:
>>>> >   Device: B-Series Device
>>>> >   Mboard 0: B200mini
>>>> >   RX Channel: 0
>>>> >     RX DSP: 0
>>>> >     RX Dboard: A
>>>> >     RX Subdev: FE-RX1
>>>> >   TX Channel: 0
>>>> >     TX DSP: 0
>>>> >     TX Dboard: A
>>>> >     TX Subdev: FE-TX1
>>>> >
>>>> > [00:00:11.448560] Setting device timestamp to 0...
>>>> > [INFO] [B200] Asking for clock rate 40.000000 MHz...
>>>> > [INFO] [B200] Actually got clock rate 40.000000 MHz.
>>>> > [WARNING] [MULTI_USRP] The total sum of rates (40.000000 MSps on 1=20=

>>>> > channels) exceeds the maximum capacity of the connection (overflows=20=

>>>> > (O) MSps).
>>>> > This can cause 22.7428.
>>>> > [00:00:11.766752] Testing receive rate 40.000000 Msps on 1 channels
>>>> > [WARNING] [MULTI_USRP] The total sum of rates (40.000000 MSps on 1=20=

>>>> > channels) exceeds the maximum capacity of the connection (underruns=20=

>>>> > (U) MSps).
>>>> > This can cause 22.7428.
>>>> > [00:00:11.790580] Testing transmit rate 40.000000 Msps on 1 channels
>>>> > [00:00:11.891995] Tx timeouts: 1
>>>> > UUUUUUUUUUUUUUUO[00:00:12.078147] Timestamp after overrun recovery=20=

>>>> > ahead of error timestamp! Unable to calculate number of dropped=20
>>>> > samples.(Delta: -3170 ticks)
>>>> > UUUUUUUUUUUUUUUUUUUUO[00:00:12.092404] Timestamp after overrun=20
>>>> > recovery ahead of error timestamp! Unable to calculate number of=20
>>>> > dropped samples.(Delta: -3170 ticks)
>>>> > UUUUUUUUUUUUUO[00:00:12.108355] Timestamp after overrun recovery ahea=
d=20
>>>> > of error timestamp! Unable to calculate number of dropped=20
>>>> > samples.(Delta: -3170 ticks)
>>>> > UUUUUUUUUUUUUUUUUUUUUUUUU[OU00:00:12.123737] Timestamp after overrun=20=

>>>> > recovery ahead of error timestamp! Unable to calculate number of=20
>>>> > dropped samples.(Delta: -3170 ticks)
>>>> > UUUUUUUUUUUUUUUUUUUUOU[00:00:12.132437] Timestamp after overrun=20
>>>> > recovery ahead of error timestamp! Unable to calculate number of=20
>>>> > dropped samples.(Delta: -3170 ticks)
>>>> > UUUUUUUUUUUUUUUUUUUUUUOU[00:00:12.142422] Timestamp after overrun=20
>>>> > recovery ahead of error timestamp! Unable to calculate number of=20
>>>> > dropped samples.(Delta: -3170 ticks)
>>>> > UUUUUUUUUUUUUUO[00:00:12.155257] Timestamp after overrun recovery=20
>>>> > ahead of error timestamp! Unable to calculate number of dropped=20
>>>> > samples.(Delta: -3170 ticks)
>>>> > UUUUUUUUUUUUUUUO[00:00:12.168528] Timestamp after overrun recovery=20=

>>>> > ahead of error timestamp! Unable to calculate number of dropped=20
>>>> > samples.(Delta: -3170 ticks)
>>>> > UUUUUUUUUUU[O00:00:12.178400] Timestamp after overrun recovery ahead=20=

>>>> > of error timestamp! Unable to calculate number of dropped=20
>>>> > samples.(Delta: -3170 ticks)
>>>> > UUUUUUUUU[00:00:12.193251] Timestamp after overrun recovery ahead of=20=

>>>> > error timestamp! Unable to calculate number of dropped samples.(Delta=
:=20
>>>> > -3170 ticks)
>>>> > OUUUUUUUUUUUUUUUUUO[00:00:12.204356] Timestamp after overrun recovery=

>>>> > ahead of error timestamp! Unable to calculate number of dropped=20
>>>> > samples.(Delta: -3170 ticks)
>>>> > UUUUUUUUUUUUUUUUO[00:00:12.224770] Timestamp after overrun recovery=20=

>>>> > ahead of error timestamp! Unable to calculate number of dropped=20
>>>> > samples.(Delta: -3170 ticks)
>>>> > UUUUUUUUUUUUUUUUUO[00:00:12.235145] Timestamp after overrun recovery=20=

>>>> > ahead of error timestamp! Unable to calculate number of dropped=20
>>>> > samples.(Delta: -3170 ticks)
>>>> > UUUUUUUUUUUUU[O00:00:12.247517] Timestamp after overrun recovery ahea=
d=20
>>>> > of error timestamp! Unable to calculate number of dropped=20
>>>> > samples.(Delta: -3170 ticks)
>>>> > UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU[00:00:12.475571] Receiver error:=20
>>>> > ERROR_CODE_TIMEOUT, continuing...
>>>> > [00:00:12.575910] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>>>> > [00:00:12.676171] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>>>> > [00:00:12.776414] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>>>> > [00:00:12.876663] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>>>> > [00:00:12.976968] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>>>> > [00:00:13.077257] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>>>> > terminate called after throwing an instance of 'uhd::io_error'
>>>> >   what():  EnvironmentError: IOError: usb tx2 transfer status:=20
>>>> > LIBUSB_TRANSFER_NO_DEVICE[
>>>> > 00:00:13.083166] Caught an IO exception.
>>>> > EnvironmentError: IOError: usb rx6 transfer status:=20
>>>> > LIBUSB_TRANSFER_NO_DEVICE
>>>> >
>>>> Well, the main reason is that your typical laptop compute environment,=20=

>>>> based on x86 processor technology, is going to be more powerful
>>>>    than the ARM on a Raspberry Pi4.
>>>>=20
>>>> Now, you *may* be able to improve things slightly by adjusting the USB=20=

>>>> transport parameters, as described here:
>>>>=20
>>>> https://files.ettus.com/manual/page_transport.html#transport_usb
>>>>=20
>>>> But once you actually start "doing stuff" on the Raspberry Pi, you'll=20=

>>>> find that it can't process as many samples per second as on an x86
>>>>    system--whether a laptop or desktop machine.  There's a reason that a=
=20
>>>> Raspberry Pi is $50, and a typical low-end laptop is 10 times that.
>>>>=20
>>>>=20
>>>>=20
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>=20
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-BF074852-91B2-4D88-A214-90C695E1C143
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I used the external power input on the B210=
.&nbsp;<div><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><=
br><blockquote type=3D"cite">On Nov 4, 2020, at 12:13 PM, David Evans via US=
RP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></blockquote></div=
><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF
 =20
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"=
>
 =20
 =20
    I too was able to sustain around 12Msps on an XU4+B200mini, and was
    also able to get OpenBTS to work.<br>
    Marcus, hope it's OK to ask, but did you use a USB3 hub? When I
    tried it the XU4 was unable to supply enough current, causing the
    SDcard to get corrupted (I had a lot of fun with this!), the
    solution to this apparently known issue was to use a hub.<br>
    Cheers,<br>
    Dave<br>
    <br>
    <div class=3D"moz-cite-prefix">On 03/11/2020 20:33, Marcus D. Leech
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:5FA1BE7D.7080504@gmail.com">
      <meta content=3D"text/html; charset=3DUTF-8" http-equiv=3D"Content-Typ=
e">
      <div class=3D"moz-cite-prefix">On 11/03/2020 02:19 PM, Luke Stutters
        wrote:<br>
      </div>
      <blockquote cite=3D"mid:CAJr+t_rBcTQ_5_y3MdMTmgxbYbg3rOtvZS4LnOZ+tmcCk=
xu4gg@mail.gmail.com" type=3D"cite">
        <div dir=3D"ltr">I have only succeeded in running a B210 on a
          Raspberry Pi at lower data rates (closer to 12MS) so your
          experience is consistent with mine.</div>
      </blockquote>
      In certain very-simple DSP flows, I've achieved 14Msps on an
      Odroid XU4--which is spec-similar to the Rpi4 B.<br>
      <br>
      CPU/Memory/IO performance really matters.&nbsp; Just because the syste=
m
      has a USB3 interface does NOT mean that it can<br>
      &nbsp; sustain high rates.&nbsp;&nbsp; Even just moving samples throug=
h your
      system, without doing anything to them (as in the benchmark_rate<br>
      &nbsp; example) requires code-paths that are at least several hundred
      instructions long.&nbsp; Multi-core doesn't necessarily help much with=
<br>
      &nbsp; this because there's no performant way to effectively
      parallelize the simple process of pulling samples off of USB and
      getting them<br>
      &nbsp; into the user layer.&nbsp; The SMP aspects of most modern syste=
ms
      only really start to "shine" when you have a DSP work-flow with<br>
      &nbsp; lots of steps that can each benefit from running in their own
      thread.&nbsp; But you *still* have a rate-limiting step of getting the=

      samples<br>
      &nbsp; out of the device and into the work-flow.&nbsp; In that portion=
,
      system details matter A LOT.&nbsp; <br>
      <br>
      <br>
      <blockquote cite=3D"mid:CAJr+t_rBcTQ_5_y3MdMTmgxbYbg3rOtvZS4LnOZ+tmcCk=
xu4gg@mail.gmail.com" type=3D"cite"><br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 3 Nov 2020 at 17:20,=

            Marcus D. Leech via USRP-users &lt;<a moz-do-not-send=3D"true" h=
ref=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;=

            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">On 11/03/2020 10:49 AM,
            Alvaro Pendas Recondo via USRP-users wrote:<br>
            &gt; Hello,<br>
            &gt;<br>
            &gt; I am using a USRP B200mini with a sampling rate of 40MS
            that works <br>
            &gt; perfectly fine connected to a laptop with USB 3.
            However, when I <br>
            &gt; connect it to a Raspberry Pi 4 (which has two USB 3
            ports) and I run <br>
            &gt; the example benchmark_rate with the same sampling rate
            I get the <br>
            &gt; output that I copy below. It seems that even if it is
            also operating <br>
            &gt; over USB 3, this connection cannot meet the expected
            performance <br>
            &gt; anymore. If I reduce the sampling rate (down to 12 MS
            approx) <br>
            &gt; everything works fine. Any ideas about what might be
            causing this problem?<br>
            &gt;<br>
            &gt;<br>
            &gt; By the way, I already followed all the instructions
            explained at <br>
            &gt; <a moz-do-not-send=3D"true" href=3D"https://kb.ettus.com/US=
RP_Host_Performance_Tuning_Tips_and_Tricks#:%7E:text=3DThread%20Priority%20S=
cheduling,-When%20UHD%20spawns&amp;text=3DTo%20address%20this%20issue%2C%20n=
on,%2Fetc%2Fsecurity%2Flimits" rel=3D"noreferrer" target=3D"_blank">https://=
kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#:~:text=3DThread%2=
0Priority%20Scheduling,-When%20UHD%20spawns&amp;text=3DTo%20address%20this%2=
0issue%2C%20non,%2Fetc%2Fsecurity%2Flimits</a>
            <br>
            &gt; &lt;<a moz-do-not-send=3D"true" href=3D"https://kb.ettus.co=
m/USRP_Host_Performance_Tuning_Tips_and_Tricks#:%7E:text=3DThread%20Priority=
%20Scheduling,-When%20UHD%20spawns&amp;text=3DTo%20address%20this%20issue%2C=
%20non,%2Fetc%2Fsecurity%2Flimits" rel=3D"noreferrer" target=3D"_blank">http=
s://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#:%7E:text=3DTh=
read%20Priority%20Scheduling,-When%20UHD%20spawns&amp;text=3DTo%20address%20=
this%20issue%2C%20non,%2Fetc%2Fsecurity%2Flimits</a>&gt;.
            <br>
            &gt;<br>
            &gt;<br>
            &gt;<br>
            &gt; ./benchmark_rate --rx_rate 40e6 --tx_rate 40e6<br>
            &gt;<br>
            &gt; [INFO] [UHD] linux; GNU C++ version 8.3.0;
            Boost_106700; <br>
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
            &gt; [INFO] [B200] Setting master clock rate selection to
            'automatic'.<br>
            &gt; [INFO] [B200] Asking for clock rate 16.000000 MHz...<br>
            &gt; [INFO] [B200] Actually got clock rate 16.000000 MHz.<br>
            &gt; Using Device: Single USRP:<br>
            &gt;&nbsp; &nbsp;Device: B-Series Device<br>
            &gt;&nbsp; &nbsp;Mboard 0: B200mini<br>
            &gt;&nbsp; &nbsp;RX Channel: 0<br>
            &gt;&nbsp; &nbsp; &nbsp;RX DSP: 0<br>
            &gt;&nbsp; &nbsp; &nbsp;RX Dboard: A<br>
            &gt;&nbsp; &nbsp; &nbsp;RX Subdev: FE-RX1<br>
            &gt;&nbsp; &nbsp;TX Channel: 0<br>
            &gt;&nbsp; &nbsp; &nbsp;TX DSP: 0<br>
            &gt;&nbsp; &nbsp; &nbsp;TX Dboard: A<br>
            &gt;&nbsp; &nbsp; &nbsp;TX Subdev: FE-TX1<br>
            &gt;<br>
            &gt; [00:00:11.448560] Setting device timestamp to 0...<br>
            &gt; [INFO] [B200] Asking for clock rate 40.000000 MHz...<br>
            &gt; [INFO] [B200] Actually got clock rate 40.000000 MHz.<br>
            &gt; [WARNING] [MULTI_USRP] The total sum of rates
            (40.000000 MSps on 1 <br>
            &gt; channels) exceeds the maximum capacity of the
            connection (overflows <br>
            &gt; (O) MSps).<br>
            &gt; This can cause 22.7428.<br>
            &gt; [00:00:11.766752] Testing receive rate 40.000000 Msps
            on 1 channels<br>
            &gt; [WARNING] [MULTI_USRP] The total sum of rates
            (40.000000 MSps on 1 <br>
            &gt; channels) exceeds the maximum capacity of the
            connection (underruns <br>
            &gt; (U) MSps).<br>
            &gt; This can cause 22.7428.<br>
            &gt; [00:00:11.790580] Testing transmit rate 40.000000 Msps
            on 1 channels<br>
            &gt; [00:00:11.891995] Tx timeouts: 1<br>
            &gt; UUUUUUUUUUUUUUUO[00:00:12.078147] Timestamp after
            overrun recovery <br>
            &gt; ahead of error timestamp! Unable to calculate number of
            dropped <br>
            &gt; samples.(Delta: -3170 ticks)<br>
            &gt; UUUUUUUUUUUUUUUUUUUUO[00:00:12.092404] Timestamp after
            overrun <br>
            &gt; recovery ahead of error timestamp! Unable to calculate
            number of <br>
            &gt; dropped samples.(Delta: -3170 ticks)<br>
            &gt; UUUUUUUUUUUUUO[00:00:12.108355] Timestamp after overrun
            recovery ahead <br>
            &gt; of error timestamp! Unable to calculate number of
            dropped <br>
            &gt; samples.(Delta: -3170 ticks)<br>
            &gt; UUUUUUUUUUUUUUUUUUUUUUUUU[OU00:00:12.123737] Timestamp
            after overrun <br>
            &gt; recovery ahead of error timestamp! Unable to calculate
            number of <br>
            &gt; dropped samples.(Delta: -3170 ticks)<br>
            &gt; UUUUUUUUUUUUUUUUUUUUOU[00:00:12.132437] Timestamp after
            overrun <br>
            &gt; recovery ahead of error timestamp! Unable to calculate
            number of <br>
            &gt; dropped samples.(Delta: -3170 ticks)<br>
            &gt; UUUUUUUUUUUUUUUUUUUUUUOU[00:00:12.142422] Timestamp
            after overrun <br>
            &gt; recovery ahead of error timestamp! Unable to calculate
            number of <br>
            &gt; dropped samples.(Delta: -3170 ticks)<br>
            &gt; UUUUUUUUUUUUUUO[00:00:12.155257] Timestamp after
            overrun recovery <br>
            &gt; ahead of error timestamp! Unable to calculate number of
            dropped <br>
            &gt; samples.(Delta: -3170 ticks)<br>
            &gt; UUUUUUUUUUUUUUUO[00:00:12.168528] Timestamp after
            overrun recovery <br>
            &gt; ahead of error timestamp! Unable to calculate number of
            dropped <br>
            &gt; samples.(Delta: -3170 ticks)<br>
            &gt; UUUUUUUUUUU[O00:00:12.178400] Timestamp after overrun
            recovery ahead <br>
            &gt; of error timestamp! Unable to calculate number of
            dropped <br>
            &gt; samples.(Delta: -3170 ticks)<br>
            &gt; UUUUUUUUU[00:00:12.193251] Timestamp after overrun
            recovery ahead of <br>
            &gt; error timestamp! Unable to calculate number of dropped
            samples.(Delta: <br>
            &gt; -3170 ticks)<br>
            &gt; OUUUUUUUUUUUUUUUUUO[00:00:12.204356] Timestamp after
            overrun recovery <br>
            &gt; ahead of error timestamp! Unable to calculate number of
            dropped <br>
            &gt; samples.(Delta: -3170 ticks)<br>
            &gt; UUUUUUUUUUUUUUUUO[00:00:12.224770] Timestamp after
            overrun recovery <br>
            &gt; ahead of error timestamp! Unable to calculate number of
            dropped <br>
            &gt; samples.(Delta: -3170 ticks)<br>
            &gt; UUUUUUUUUUUUUUUUUO[00:00:12.235145] Timestamp after
            overrun recovery <br>
            &gt; ahead of error timestamp! Unable to calculate number of
            dropped <br>
            &gt; samples.(Delta: -3170 ticks)<br>
            &gt; UUUUUUUUUUUUU[O00:00:12.247517] Timestamp after overrun
            recovery ahead <br>
            &gt; of error timestamp! Unable to calculate number of
            dropped <br>
            &gt; samples.(Delta: -3170 ticks)<br>
            &gt; UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU[00:00:12.475571]
            Receiver error: <br>
            &gt; ERROR_CODE_TIMEOUT, continuing...<br>
            &gt; [00:00:12.575910] Receiver error: ERROR_CODE_TIMEOUT,
            continuing...<br>
            &gt; [00:00:12.676171] Receiver error: ERROR_CODE_TIMEOUT,
            continuing...<br>
            &gt; [00:00:12.776414] Receiver error: ERROR_CODE_TIMEOUT,
            continuing...<br>
            &gt; [00:00:12.876663] Receiver error: ERROR_CODE_TIMEOUT,
            continuing...<br>
            &gt; [00:00:12.976968] Receiver error: ERROR_CODE_TIMEOUT,
            continuing...<br>
            &gt; [00:00:13.077257] Receiver error: ERROR_CODE_TIMEOUT,
            continuing...<br>
            &gt; terminate called after throwing an instance of
            'uhd::io_error'<br>
            &gt;&nbsp; &nbsp;what():&nbsp; EnvironmentError: IOError: usb tx=
2 transfer
            status: <br>
            &gt; LIBUSB_TRANSFER_NO_DEVICE[<br>
            &gt; 00:00:13.083166] Caught an IO exception.<br>
            &gt; EnvironmentError: IOError: usb rx6 transfer status: <br>
            &gt; LIBUSB_TRANSFER_NO_DEVICE<br>
            &gt;<br>
            Well, the main reason is that your typical laptop compute
            environment, <br>
            based on x86 processor technology, is going to be more
            powerful<br>
            &nbsp; &nbsp;than the ARM on a Raspberry Pi4.<br>
            <br>
            Now, you *may* be able to improve things slightly by
            adjusting the USB <br>
            transport parameters, as described here:<br>
            <br>
            <a moz-do-not-send=3D"true" href=3D"https://files.ettus.com/manu=
al/page_transport.html#transport_usb" rel=3D"noreferrer" target=3D"_blank">h=
ttps://files.ettus.com/manual/page_transport.html#transport_usb</a><br>
            <br>
            But once you actually start "doing stuff" on the Raspberry
            Pi, you'll <br>
            find that it can't process as many samples per second as on
            an x86<br>
            &nbsp; &nbsp;system--whether a laptop or desktop machine.&nbsp; T=
here's a
            reason that a <br>
            Raspberry Pi is $50, and a typical low-end laptop is 10
            times that.<br>
            <br>
            <br>
            <br>
            _______________________________________________<br>
            USRP-users mailing list<br>
            <a moz-do-not-send=3D"true" href=3D"mailto:USRP-users@lists.ettu=
s.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
            <a moz-do-not-send=3D"true" href=3D"http://lists.ettus.com/mailm=
an/listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank"=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          </blockquote>
        </div>
      </blockquote>
      <br>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">_______________________________=
________________
USRP-users mailing list
<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:USRP-users@lists.ettus.=
com">USRP-users@lists.ettus.com</a>
<a class=3D"moz-txt-link-freetext" href=3D"http://lists.ettus.com/mailman/li=
stinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/u=
srp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
 =20

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-BF074852-91B2-4D88-A214-90C695E1C143--


--===============3441789225949504587==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3441789225949504587==--

