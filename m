Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2024B2A6B78
	for <lists+usrp-users@lfdr.de>; Wed,  4 Nov 2020 18:13:57 +0100 (CET)
Received: from [::1] (port=35667 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kaMM6-0004Ke-07; Wed, 04 Nov 2020 12:13:54 -0500
Received: from mail-wr1-f46.google.com ([209.85.221.46]:34184)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dasypuss@gmail.com>) id 1kaMM2-0004EH-Po
 for usrp-users@lists.ettus.com; Wed, 04 Nov 2020 12:13:50 -0500
Received: by mail-wr1-f46.google.com with SMTP id e6so5629613wro.1
 for <usrp-users@lists.ettus.com>; Wed, 04 Nov 2020 09:13:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=2mnMws2G2MeekIbQzVOQLIjd4BA9svaD675CmDdM9OA=;
 b=IMhjSxK90sPTEIgCCahwk6ozBPwf6PUGSwRpUANwmG+lorQWTHd6WpDLASKcnylp9Y
 bSleGOmHG8ZCP1mXb4WllaHwx51omwuth+1hpRXllrUigUNFTXzHZjbTempeHxBnMrfI
 QPngXi+IeMjZDnoq6SyyvF2jFQBPJKRsv26jY1A35h93nh8so//Z1EjhZ3bqyOagIvQx
 o6TTRvOb1mXl/7a29Y2kwd0+WI22YUQ9Ttiar1mGitTv+7RBS6uDdBQlpi+CEkjyH51U
 uW6VjB1pxn023fY7GGWB9PCMhc6eH6zJUcBS3I6+1/t1Xih4d6kJqg03QCGHqDDK3trr
 yt+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=2mnMws2G2MeekIbQzVOQLIjd4BA9svaD675CmDdM9OA=;
 b=LsxcPTWc2g98dT2H/t5YJp21lGUXBKB9vN8+34XTpeXpdFLL255GAZAx3TJ90+CCtj
 0u9MiAmOC4pcHpgHJB6PcD28cgKwcI1S3H9/leqd01NRV5lA5RaGx9o4UQqPlx0s1YgT
 YvbklNkt8w5NWqUGT9KKZG2vdFj012wA2GmH8NhVxNaAY/la6g85iiFHc7rjbgYXrPMI
 UAqZQyhKCq9uKjR9IVnaRcqIWiEgrUPHon/ykckeDSTM5Z1U8I5Wz6b/ZWze8ZgB8H5w
 F132IRHDMLf6NgU2QaVJ1ihTOP/ryw+nXfliPu8un/4lJGqNcLu89CYhO2Njt6AbkQrB
 WEGw==
X-Gm-Message-State: AOAM530u392+LbJ3QIG1qYzmW3YXZwKPSU5sLYrKtQe2ECiuqoIWg6IL
 Ufv79G4I6fIpNz9POIboOE3wz0ithDI=
X-Google-Smtp-Source: ABdhPJwV06ZzJlziaKSmCUSy7rFG+/5CuB4vDxyPQnVk0bg0flr5E3n+J2aiQB7mPUyYr2iYAgsvWQ==
X-Received: by 2002:a5d:54d0:: with SMTP id x16mr32763867wrv.75.1604509989554; 
 Wed, 04 Nov 2020 09:13:09 -0800 (PST)
Received: from ?IPv6:2a00:23c6:7095:7e01:dc45:8a8f:f989:6820?
 ([2a00:23c6:7095:7e01:dc45:8a8f:f989:6820])
 by smtp.gmail.com with ESMTPSA id h12sm3384249wrw.70.2020.11.04.09.13.08
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Nov 2020 09:13:08 -0800 (PST)
To: usrp-users@lists.ettus.com
References: <CAAC=UJP-ZpTgGyAx0gVZ0ApfvnZmF6G27GOXPwJMKMStbF5W_Q@mail.gmail.com>
 <5FA19137.10205@gmail.com>
 <CAJr+t_rBcTQ_5_y3MdMTmgxbYbg3rOtvZS4LnOZ+tmcCkxu4gg@mail.gmail.com>
 <5FA1BE7D.7080504@gmail.com>
Message-ID: <a77af2cd-9f0a-9464-35a5-26cba461da78@gmail.com>
Date: Wed, 4 Nov 2020 17:13:08 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <5FA1BE7D.7080504@gmail.com>
Content-Language: en-GB
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
From: David Evans via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Evans <dasypuss@gmail.com>
Content-Type: multipart/mixed; boundary="===============4951674207466414293=="
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

This is a multi-part message in MIME format.
--===============4951674207466414293==
Content-Type: multipart/alternative;
 boundary="------------858CBE1CA666FEDF517E65EF"
Content-Language: en-GB

This is a multi-part message in MIME format.
--------------858CBE1CA666FEDF517E65EF
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

I too was able to sustain around 12Msps on an XU4+B200mini, and was also 
able to get OpenBTS to work.
Marcus, hope it's OK to ask, but did you use a USB3 hub? When I tried it 
the XU4 was unable to supply enough current, causing the SDcard to get 
corrupted (I had a lot of fun with this!), the solution to this 
apparently known issue was to use a hub.
Cheers,
Dave

On 03/11/2020 20:33, Marcus D. Leech via USRP-users wrote:
> On 11/03/2020 02:19 PM, Luke Stutters wrote:
>> I have only succeeded in running a B210 on a Raspberry Pi at lower 
>> data rates (closer to 12MS) so your experience is consistent with mine.
> In certain very-simple DSP flows, I've achieved 14Msps on an Odroid 
> XU4--which is spec-similar to the Rpi4 B.
>
> CPU/Memory/IO performance really matters.  Just because the system has 
> a USB3 interface does NOT mean that it can
>   sustain high rates.   Even just moving samples through your system, 
> without doing anything to them (as in the benchmark_rate
>   example) requires code-paths that are at least several hundred 
> instructions long.  Multi-core doesn't necessarily help much with
>   this because there's no performant way to effectively parallelize 
> the simple process of pulling samples off of USB and getting them
>   into the user layer.  The SMP aspects of most modern systems only 
> really start to "shine" when you have a DSP work-flow with
>   lots of steps that can each benefit from running in their own 
> thread.  But you *still* have a rate-limiting step of getting the samples
>   out of the device and into the work-flow.  In that portion, system 
> details matter A LOT.
>
>
>>
>> On Tue, 3 Nov 2020 at 17:20, Marcus D. Leech via USRP-users 
>> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>
>>     On 11/03/2020 10:49 AM, Alvaro Pendas Recondo via USRP-users wrote:
>>     > Hello,
>>     >
>>     > I am using a USRP B200mini with a sampling rate of 40MS that works
>>     > perfectly fine connected to a laptop with USB 3. However, when I
>>     > connect it to a Raspberry Pi 4 (which has two USB 3 ports) and
>>     I run
>>     > the example benchmark_rate with the same sampling rate I get the
>>     > output that I copy below. It seems that even if it is also
>>     operating
>>     > over USB 3, this connection cannot meet the expected performance
>>     > anymore. If I reduce the sampling rate (down to 12 MS approx)
>>     > everything works fine. Any ideas about what might be causing
>>     this problem?
>>     >
>>     >
>>     > By the way, I already followed all the instructions explained at
>>     >
>>     https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#:~:text=Thread%20Priority%20Scheduling,-When%20UHD%20spawns&text=To%20address%20this%20issue%2C%20non,%2Fetc%2Fsecurity%2Flimits
>>     <https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#:%7E:text=Thread%20Priority%20Scheduling,-When%20UHD%20spawns&text=To%20address%20this%20issue%2C%20non,%2Fetc%2Fsecurity%2Flimits>
>>
>>     >
>>     <https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#:%7E:text=Thread%20Priority%20Scheduling,-When%20UHD%20spawns&text=To%20address%20this%20issue%2C%20non,%2Fetc%2Fsecurity%2Flimits
>>     <https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#:%7E:text=Thread%20Priority%20Scheduling,-When%20UHD%20spawns&text=To%20address%20this%20issue%2C%20non,%2Fetc%2Fsecurity%2Flimits>>.
>>
>>     >
>>     >
>>     >
>>     > ./benchmark_rate --rx_rate 40e6 --tx_rate 40e6
>>     >
>>     > [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
>>     > UHD_3.15.0.HEAD-0-gaea0e2de
>>     > [INFO] [B200] Loading firmware image:
>>     > /usr/local/share/uhd/images/usrp_b200_fw.hex...
>>     > [00:00:00.000044] Creating the usrp device with: ...
>>     > [INFO] [B200] Detected Device: B200mini
>>     > [INFO] [B200] Loading FPGA image:
>>     > /usr/local/share/uhd/images/usrp_b200mini_fpga.bin...
>>     > [INFO] [B200] Operating over USB 3.
>>     > [INFO] [B200] Initialize CODEC control...
>>     > [INFO] [B200] Initialize Radio control...
>>     > [INFO] [B200] Performing register loopback test...
>>     > [INFO] [B200] Register loopback test passed
>>     > [INFO] [B200] Setting master clock rate selection to 'automatic'.
>>     > [INFO] [B200] Asking for clock rate 16.000000 MHz...
>>     > [INFO] [B200] Actually got clock rate 16.000000 MHz.
>>     > Using Device: Single USRP:
>>     >   Device: B-Series Device
>>     >   Mboard 0: B200mini
>>     >   RX Channel: 0
>>     >     RX DSP: 0
>>     >     RX Dboard: A
>>     >     RX Subdev: FE-RX1
>>     >   TX Channel: 0
>>     >     TX DSP: 0
>>     >     TX Dboard: A
>>     >     TX Subdev: FE-TX1
>>     >
>>     > [00:00:11.448560] Setting device timestamp to 0...
>>     > [INFO] [B200] Asking for clock rate 40.000000 MHz...
>>     > [INFO] [B200] Actually got clock rate 40.000000 MHz.
>>     > [WARNING] [MULTI_USRP] The total sum of rates (40.000000 MSps on 1
>>     > channels) exceeds the maximum capacity of the connection
>>     (overflows
>>     > (O) MSps).
>>     > This can cause 22.7428.
>>     > [00:00:11.766752] Testing receive rate 40.000000 Msps on 1 channels
>>     > [WARNING] [MULTI_USRP] The total sum of rates (40.000000 MSps on 1
>>     > channels) exceeds the maximum capacity of the connection
>>     (underruns
>>     > (U) MSps).
>>     > This can cause 22.7428.
>>     > [00:00:11.790580] Testing transmit rate 40.000000 Msps on 1
>>     channels
>>     > [00:00:11.891995] Tx timeouts: 1
>>     > UUUUUUUUUUUUUUUO[00:00:12.078147] Timestamp after overrun recovery
>>     > ahead of error timestamp! Unable to calculate number of dropped
>>     > samples.(Delta: -3170 ticks)
>>     > UUUUUUUUUUUUUUUUUUUUO[00:00:12.092404] Timestamp after overrun
>>     > recovery ahead of error timestamp! Unable to calculate number of
>>     > dropped samples.(Delta: -3170 ticks)
>>     > UUUUUUUUUUUUUO[00:00:12.108355] Timestamp after overrun
>>     recovery ahead
>>     > of error timestamp! Unable to calculate number of dropped
>>     > samples.(Delta: -3170 ticks)
>>     > UUUUUUUUUUUUUUUUUUUUUUUUU[OU00:00:12.123737] Timestamp after
>>     overrun
>>     > recovery ahead of error timestamp! Unable to calculate number of
>>     > dropped samples.(Delta: -3170 ticks)
>>     > UUUUUUUUUUUUUUUUUUUUOU[00:00:12.132437] Timestamp after overrun
>>     > recovery ahead of error timestamp! Unable to calculate number of
>>     > dropped samples.(Delta: -3170 ticks)
>>     > UUUUUUUUUUUUUUUUUUUUUUOU[00:00:12.142422] Timestamp after overrun
>>     > recovery ahead of error timestamp! Unable to calculate number of
>>     > dropped samples.(Delta: -3170 ticks)
>>     > UUUUUUUUUUUUUUO[00:00:12.155257] Timestamp after overrun recovery
>>     > ahead of error timestamp! Unable to calculate number of dropped
>>     > samples.(Delta: -3170 ticks)
>>     > UUUUUUUUUUUUUUUO[00:00:12.168528] Timestamp after overrun recovery
>>     > ahead of error timestamp! Unable to calculate number of dropped
>>     > samples.(Delta: -3170 ticks)
>>     > UUUUUUUUUUU[O00:00:12.178400] Timestamp after overrun recovery
>>     ahead
>>     > of error timestamp! Unable to calculate number of dropped
>>     > samples.(Delta: -3170 ticks)
>>     > UUUUUUUUU[00:00:12.193251] Timestamp after overrun recovery
>>     ahead of
>>     > error timestamp! Unable to calculate number of dropped
>>     samples.(Delta:
>>     > -3170 ticks)
>>     > OUUUUUUUUUUUUUUUUUO[00:00:12.204356] Timestamp after overrun
>>     recovery
>>     > ahead of error timestamp! Unable to calculate number of dropped
>>     > samples.(Delta: -3170 ticks)
>>     > UUUUUUUUUUUUUUUUO[00:00:12.224770] Timestamp after overrun
>>     recovery
>>     > ahead of error timestamp! Unable to calculate number of dropped
>>     > samples.(Delta: -3170 ticks)
>>     > UUUUUUUUUUUUUUUUUO[00:00:12.235145] Timestamp after overrun
>>     recovery
>>     > ahead of error timestamp! Unable to calculate number of dropped
>>     > samples.(Delta: -3170 ticks)
>>     > UUUUUUUUUUUUU[O00:00:12.247517] Timestamp after overrun
>>     recovery ahead
>>     > of error timestamp! Unable to calculate number of dropped
>>     > samples.(Delta: -3170 ticks)
>>     > UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU[00:00:12.475571] Receiver error:
>>     > ERROR_CODE_TIMEOUT, continuing...
>>     > [00:00:12.575910] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>>     > [00:00:12.676171] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>>     > [00:00:12.776414] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>>     > [00:00:12.876663] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>>     > [00:00:12.976968] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>>     > [00:00:13.077257] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>>     > terminate called after throwing an instance of 'uhd::io_error'
>>     >   what():  EnvironmentError: IOError: usb tx2 transfer status:
>>     > LIBUSB_TRANSFER_NO_DEVICE[
>>     > 00:00:13.083166] Caught an IO exception.
>>     > EnvironmentError: IOError: usb rx6 transfer status:
>>     > LIBUSB_TRANSFER_NO_DEVICE
>>     >
>>     Well, the main reason is that your typical laptop compute
>>     environment,
>>     based on x86 processor technology, is going to be more powerful
>>        than the ARM on a Raspberry Pi4.
>>
>>     Now, you *may* be able to improve things slightly by adjusting
>>     the USB
>>     transport parameters, as described here:
>>
>>     https://files.ettus.com/manual/page_transport.html#transport_usb
>>     <https://files.ettus.com/manual/page_transport.html#transport_usb>
>>
>>     But once you actually start "doing stuff" on the Raspberry Pi,
>>     you'll
>>     find that it can't process as many samples per second as on an x86
>>        system--whether a laptop or desktop machine.  There's a reason
>>     that a
>>     Raspberry Pi is $50, and a typical low-end laptop is 10 times that.
>>
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list
>>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>     <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------858CBE1CA666FEDF517E65EF
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    I too was able to sustain around 12Msps on an XU4+B200mini, and was
    also able to get OpenBTS to work.<br>
    Marcus, hope it's OK to ask, but did you use a USB3 hub? When I
    tried it the XU4 was unable to supply enough current, causing the
    SDcard to get corrupted (I had a lot of fun with this!), the
    solution to this apparently known issue was to use a hub.<br>
    Cheers,<br>
    Dave<br>
    <br>
    <div class="moz-cite-prefix">On 03/11/2020 20:33, Marcus D. Leech
      via USRP-users wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:5FA1BE7D.7080504@gmail.com">
      <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
      <div class="moz-cite-prefix">On 11/03/2020 02:19 PM, Luke Stutters
        wrote:<br>
      </div>
      <blockquote
cite="mid:CAJr+t_rBcTQ_5_y3MdMTmgxbYbg3rOtvZS4LnOZ+tmcCkxu4gg@mail.gmail.com"
        type="cite">
        <div dir="ltr">I have only succeeded in running a B210 on a
          Raspberry Pi at lower data rates (closer to 12MS) so your
          experience is consistent with mine.</div>
      </blockquote>
      In certain very-simple DSP flows, I've achieved 14Msps on an
      Odroid XU4--which is spec-similar to the Rpi4 B.<br>
      <br>
      CPU/Memory/IO performance really matters.  Just because the system
      has a USB3 interface does NOT mean that it can<br>
        sustain high rates.   Even just moving samples through your
      system, without doing anything to them (as in the benchmark_rate<br>
        example) requires code-paths that are at least several hundred
      instructions long.  Multi-core doesn't necessarily help much with<br>
        this because there's no performant way to effectively
      parallelize the simple process of pulling samples off of USB and
      getting them<br>
        into the user layer.  The SMP aspects of most modern systems
      only really start to "shine" when you have a DSP work-flow with<br>
        lots of steps that can each benefit from running in their own
      thread.  But you *still* have a rate-limiting step of getting the
      samples<br>
        out of the device and into the work-flow.  In that portion,
      system details matter A LOT.  <br>
      <br>
      <br>
      <blockquote
cite="mid:CAJr+t_rBcTQ_5_y3MdMTmgxbYbg3rOtvZS4LnOZ+tmcCkxu4gg@mail.gmail.com"
        type="cite"><br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Tue, 3 Nov 2020 at 17:20,
            Marcus D. Leech via USRP-users &lt;<a moz-do-not-send="true"
              href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
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
            &gt; <a moz-do-not-send="true"
href="https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#:%7E:text=Thread%20Priority%20Scheduling,-When%20UHD%20spawns&amp;text=To%20address%20this%20issue%2C%20non,%2Fetc%2Fsecurity%2Flimits"
              rel="noreferrer" target="_blank">https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#:~:text=Thread%20Priority%20Scheduling,-When%20UHD%20spawns&amp;text=To%20address%20this%20issue%2C%20non,%2Fetc%2Fsecurity%2Flimits</a>
            <br>
            &gt; &lt;<a moz-do-not-send="true"
href="https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#:%7E:text=Thread%20Priority%20Scheduling,-When%20UHD%20spawns&amp;text=To%20address%20this%20issue%2C%20non,%2Fetc%2Fsecurity%2Flimits"
              rel="noreferrer" target="_blank">https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#:%7E:text=Thread%20Priority%20Scheduling,-When%20UHD%20spawns&amp;text=To%20address%20this%20issue%2C%20non,%2Fetc%2Fsecurity%2Flimits</a>&gt;.
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
            &gt;   Device: B-Series Device<br>
            &gt;   Mboard 0: B200mini<br>
            &gt;   RX Channel: 0<br>
            &gt;     RX DSP: 0<br>
            &gt;     RX Dboard: A<br>
            &gt;     RX Subdev: FE-RX1<br>
            &gt;   TX Channel: 0<br>
            &gt;     TX DSP: 0<br>
            &gt;     TX Dboard: A<br>
            &gt;     TX Subdev: FE-TX1<br>
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
            &gt;   what():  EnvironmentError: IOError: usb tx2 transfer
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
               than the ARM on a Raspberry Pi4.<br>
            <br>
            Now, you *may* be able to improve things slightly by
            adjusting the USB <br>
            transport parameters, as described here:<br>
            <br>
            <a moz-do-not-send="true"
              href="https://files.ettus.com/manual/page_transport.html#transport_usb"
              rel="noreferrer" target="_blank">https://files.ettus.com/manual/page_transport.html#transport_usb</a><br>
            <br>
            But once you actually start "doing stuff" on the Raspberry
            Pi, you'll <br>
            find that it can't process as many samples per second as on
            an x86<br>
               system--whether a laptop or desktop machine.  There's a
            reason that a <br>
            Raspberry Pi is $50, and a typical low-end laptop is 10
            times that.<br>
            <br>
            <br>
            <br>
            _______________________________________________<br>
            USRP-users mailing list<br>
            <a moz-do-not-send="true"
              href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
            <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
              rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          </blockquote>
        </div>
      </blockquote>
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------858CBE1CA666FEDF517E65EF--


--===============4951674207466414293==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4951674207466414293==--

