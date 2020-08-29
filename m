Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B902565A5
	for <lists+usrp-users@lfdr.de>; Sat, 29 Aug 2020 09:36:45 +0200 (CEST)
Received: from [::1] (port=53782 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kBvPm-0007mL-3j; Sat, 29 Aug 2020 03:36:42 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:38938)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <i1ndp.nando@gmail.com>)
 id 1kBvPi-0007fi-5x
 for usrp-users@lists.ettus.com; Sat, 29 Aug 2020 03:36:38 -0400
Received: by mail-wr1-f65.google.com with SMTP id a17so299471wrn.6
 for <usrp-users@lists.ettus.com>; Sat, 29 Aug 2020 00:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=DeZf85JfpSwhiJE0XEwgD+3xRX+NDXAUdJR2MKPhbnc=;
 b=PTXXsJOfZMUdS+xkPtkbLBrwAJCdRa5OhVvXO1rMAc9yuFX1+YxS4XDOjmZP7aAlCR
 fqu4FJtnZ09kMuFl1vz4LeYuPppHnoqUe6uEdIFMJJ+FbepSQ4JYhZLiaPKpBcZdp+Ji
 xyd6kAAfW56y2G64E2mYMWuvqAIdJXWvPuewi7AIBU3afyxgWK1wShX7uHxn1BXR86lq
 y1Wxt8/ihBiH4zgxXo4+OQ/S8BBlpEAHdVnNW1CIUncVcpajeJ9dTtah1FaZZlalaC/Y
 ZgsFQGsniqoEfno3BLj6YsiE0FTYgiQa3upnwFvRAPmvxdkePG0xkvXJLYyaPUSQI1kc
 NUpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=DeZf85JfpSwhiJE0XEwgD+3xRX+NDXAUdJR2MKPhbnc=;
 b=bQ5ZwIT1ifTVN7GoMtgoo3Hjgf7Aoa1whlslNtGCID9S80UpjQSvI5ELUzObMXlkaC
 zl6wbZvJIBvM6hAQGcQPAP6nuIaf3qYuL2HKTCgnf1peFzQWBF1Nz4f+1mtA0BIz7GYE
 hb/B+3QgeGvX7+T3PD5jab7OaTVUAGtQsC1HtHY+LN978JFSIfXBSwwKIgxxNTGu4ErS
 YgBnW5IcyH27XqpBf9R5L2CQWiLqUIsEgBOilP0tP7Qv+dxKLR0GcUCMEt+jToGhHje/
 s9vNvVzKNx0WXI3yJnyWalhc78sRP5PuCaLwH2SXLmcQ0qIhLHV97+Vx+Ckm39rETrji
 Ujaw==
X-Gm-Message-State: AOAM530YC5BP+oQNdaLv3e2gFjD88YRxF77cgx2T7Y62S7ySulquj4U6
 vDVA+/4PrLQHQt4172b+negDuBGTH9VQ8A==
X-Google-Smtp-Source: ABdhPJyS7KdLud5eyAU93E1icnIKWti5LqLA0hBfyD5nLwIBUtnD0/+NwUm7HLWRgXBI8bYVkAYjgg==
X-Received: by 2002:a5d:55c9:: with SMTP id i9mr2361415wrw.31.1598686556857;
 Sat, 29 Aug 2020 00:35:56 -0700 (PDT)
Received: from [10.0.0.3] ([176.65.80.99])
 by smtp.gmail.com with ESMTPSA id h8sm2480954wrw.68.2020.08.29.00.35.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 29 Aug 2020 00:35:56 -0700 (PDT)
To: "Marcus D. Leech" <patchvonbraun@gmail.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAM4xKrrtSjhM1FFYGvuXrQFBop1d+H78JzQCx5OMh4iQ3rm3TQ@mail.gmail.com>
 <CAGNhwTMtPx8aygM-kUgcAyK_L2+nmLxtnJJDjpLXk5HpjK0uwQ@mail.gmail.com>
 <67e4d928-2f30-1faa-bb29-6e59916f6578@gmail.com> <5F492AC3.6070005@gmail.com>
 <e2e93aff-492b-4c4b-21bb-c510e4152ca0@gmail.com> <5F493640.4080504@gmail.com>
Message-ID: <bea321bb-bcf2-3263-c2b2-75f044d9aecc@gmail.com>
Date: Sat, 29 Aug 2020 09:35:55 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <5F493640.4080504@gmail.com>
Content-Type: multipart/mixed; boundary="------------D1D9A0BDAADFAA25410E64E2"
Content-Language: en-US
Subject: Re: [USRP-users] [UHD] Announcing 4.0.0.0 Release Candidate 1
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
From: Nando Pellegrini via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nando Pellegrini <i1ndp.nando@gmail.com>
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
--------------D1D9A0BDAADFAA25410E64E2
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Marcus,
Attached you can find the results of the benchmark test.
I have been also compared the behavior with 2 different CPU and 
different USB type 3.0 for the older tower PC, USB 3.1 on the laptop, 
very strange the case of the older CPU generating an overflow every minute.
The conditions were exactly the same in all test with no other visible 
activity on the machines.
Release 14.0 seems a bit better with the benchmark but,sadly, the 2 UHD 
release are not comparable because the 14.0 as soon as generates an 
overflow indication drops in the timeout with no recovery but final 
consideration is that fast sample rate became unusable for long signal 
recording regardless to software release and PC.
I really hope for a solution.
nando

On 8/28/2020 18:52, Marcus D. Leech wrote:
> On 08/28/2020 12:23 PM, Nando Pellegrini wrote:
>> Hi Marcus ,
>> I am back with more or less same problem, trying to restore the 
>> former situation.
>> I did not add any device argument simply because i really never 
>> needed to change the default.
>> I do not pretend to have the problem solved at once on a release 
>> candidate , i was simply reporting them.
>> In addition but not sure how could help , and now i am talking about 
>> the low level of performance, my testing application is a simple and 
>> short code looping on a receive function (with high priority)  but 
>> unable to pull out all the expected data. The CPU load is very low 
>> and it seems like the lower levels of software are not able to engage 
>> the cpu. I normally set the float32 format as output but tried to 
>> avoid the conversion setting 16bit integer. Nothing changes.
>> Of course i do not know how lower starting from the UHD library end 
>> ending with the OS process scheduling , and , strange, but the same 
>> in two different CPUS where the fastest has the worse behavior.
>> I made also an attempt starting with the short latency version of 
>> kernel , exactly the same!
>> That's the status.
>> nando
> If you use the 'benchmark_rate' tool that comes with UHD, what are 
> your results with both this new release candidate and 3.15?
>
>


--------------D1D9A0BDAADFAA25410E64E2
Content-Type: text/plain; charset=UTF-8;
 name="results.txt"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="results.txt"


CPU Intel Core i7-10875H


nando@nando:~/Downloads/uhd-4.0.0.0-rc1/host/build/examples$ ./benchmark_rate --rx_rate 56000000  --duration 1000

[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-0-unknown
[00:00:00.000507] Creating the usrp device with: ...
[INFO] [B200] Detected Device: B200mini
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test... 
[INFO] [B200] Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'.
[INFO] [B200] Asking for clock rate 16.000000 MHz... 
[INFO] [B200] Actually got clock rate 16.000000 MHz.
Using Device: Single USRP:
  Device: B-Series Device
  Mboard 0: B200mini
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: FE-RX1
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: FE-TX1

[00:00:01.626445841] Setting device timestamp to 0...
[INFO] [B200] Asking for clock rate 56.000000 MHz... 
[INFO] [B200] Actually got clock rate 56.000000 MHz.
[00:00:01.874374152] Testing receive rate 56.000000 Msps on 1 channels
O[00:04:42.9661629] Timestamp after overrun recovery ahead of error timestamp! Unable to calculate number of dropped samples.(Delta: -3170 ticks)
[00:04:42.211143190] Receiver error: ERROR_CODE_TIMEOUT, continuing...


	Version 3.15LTS


nando@nando:~/Downloads/uhd-UHD-3.15.LTS/host/build/examples$ ./benchmark_rate --rx_rate 56000000  --duration 1000

[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.0-0-unknown
[00:00:00.000006] Creating the usrp device with: ...
[INFO] [B200] Detected Device: B200mini
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test... 
[INFO] [B200] Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'.
[INFO] [B200] Asking for clock rate 16.000000 MHz... 
[INFO] [B200] Actually got clock rate 16.000000 MHz.
Using Device: Single USRP:
  Device: B-Series Device
  Mboard 0: B200mini
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: FE-RX1
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: FE-TX1

[00:00:00.963410] Setting device timestamp to 0...
[INFO] [B200] Asking for clock rate 56.000000 MHz... 
[INFO] [B200] Actually got clock rate 56.000000 MHz.
[00:00:01.202222] Testing receive rate 56.000000 Msps on 1 channels
O[00:11:40.614152] Timestamp after overrun recovery ahead of error timestamp! Unable to calculate number of dropped samples.(Delta: -3170 ticks)
O[00:15:25.712007] Timestamp after overrun recovery ahead of error timestamp! Unable to calculate number of dropped samples.(Delta: -3170 ticks)
[00:16:41.252526] Benchmark complete.


Benchmark rate summary:
  Num received samples:     55999810609
  Num dropped samples:      2
  Num overruns detected:    2
  Num transmitted samples:  0
  Num sequence errors (Tx): 0
  Num sequence errors (Rx): 0
  Num underruns detected:   0
  Num late commands:        0
  Num timeouts (Tx):        0
  Num timeouts (Rx):        0


Done!


CPU Intel I7-4770

UHD 14.0

nando@nando-desktop:~/Downloads/uhd-4.0.0.0-rc1/host/build/examples$ ./benchmark_rate --rx_rate 56000000 --duration 1000

Error opening log file: basic_ios::clear: iostream error
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-0-unknown
[INFO] [B200] Loading firmware image: /usr/local/share/uhd/images/usrp_b200_fw.hex...
[00:00:00.000580] Creating the usrp device with: ...
[INFO] [B200] Detected Device: B200mini
[INFO] [B200] Loading FPGA image: /usr/local/share/uhd/images/usrp_b200mini_fpga.bin...
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test... 
[INFO] [B200] Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'.
[INFO] [B200] Asking for clock rate 16.000000 MHz... 
[INFO] [B200] Actually got clock rate 16.000000 MHz.
Using Device: Single USRP:
  Device: B-Series Device
  Mboard 0: B200mini
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: FE-RX1
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: FE-TX1

[00:00:11.98049291] Setting device timestamp to 0...
[INFO] [B200] Asking for clock rate 56.000000 MHz... 
[INFO] [B200] Actually got clock rate 56.000000 MHz.
[00:00:11.342605768] Testing receive rate 56.000000 Msps on 1 channels
O[00:12:20.903040744] Timestamp after overrun recovery ahead of error timestamp! Unable to calculate number of dropped samples.(Delta: -3170 ticks)
[00:12:21.103358189] Receiver error: ERROR_CODE_TIMEOUT, continuing...
[00:12:21.203549013] Receiver error: ERROR_CODE_TIMEOUT, continuing...


UHD 3.15 LTS 

nando@nando-desktop:~/Downloads/uhd-UHD-3.15.LTS/host/build/examples$ ./benchmark_rate --rx_rate 56000000 --duration 1000

Error opening log file: basic_ios::clear: iostream error
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.0-0-unknown
[00:00:00.000004] Creating the usrp device with: ...
[INFO] [B200] Detected Device: B200mini
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test... 
[INFO] [B200] Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'.
[INFO] [B200] Asking for clock rate 16.000000 MHz... 
[INFO] [B200] Actually got clock rate 16.000000 MHz.
Using Device: Single USRP:
  Device: B-Series Device
  Mboard 0: B200mini
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: FE-RX1
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: FE-TX1

[00:00:01.851473] Setting device timestamp to 0...
[INFO] [B200] Asking for clock rate 56.000000 MHz... 
[INFO] [B200] Actually got clock rate 56.000000 MHz.
[00:00:02.092200] Testing receive rate 56.000000 Msps on 1 channels
O[00:00:23.852053] Timestamp after overrun recovery ahead of error timestamp! Unable to calculate number of dropped samples.(Delta: -3170 ticks)
O[00:01:24.854252] Timestamp after overrun recovery ahead of error timestamp! Unable to calculate number of dropped samples.(Delta: -3170 ticks)
O[00:02:25.854316] Timestamp after overrun recovery ahead of error timestamp! Unable to calculate number of dropped samples.(Delta: -3170 ticks)
O[00:03:26.854313] Timestamp after overrun recovery ahead of error timestamp! Unable to calculate number of dropped samples.(Delta: -3170 ticks)
O[00:04:27.854256] Timestamp after overrun recovery ahead of error timestamp! Unable to calculate number of dropped samples.(Delta: -3170 ticks)
[O00:05:28.854289] Timestamp after overrun recovery ahead of error timestamp! Unable to calculate number of dropped samples.(Delta: -3170 ticks)
O[00:06:29.854308] Timestamp after overrun recovery ahead of error timestamp! Unable to calculate number of dropped samples.(Delta: -3170 ticks)
O[00:07:30.854310] Timestamp after overrun recovery ahead of error timestamp! Unable to calculate number of dropped samples.(Delta: -3170 ticks)
O[00:08:31.854256] Timestamp after overrun recovery ahead of error timestamp! Unable to calculate number of dropped samples.(Delta: -3170 ticks)
O[00:09:32.854314] Timestamp after overrun recovery ahead of error timestamp! Unable to calculate number of dropped samples.(Delta: -3170 ticks)
[O00:10:33.854300] Timestamp after overrun recovery ahead of error timestamp! Unable to calculate number of dropped samples.(Delta: -3170 ticks)
O[00:11:34.854313] Timestamp after overrun recovery ahead of error timestamp! Unable to calculate number of dropped samples.(Delta: -3170 ticks)
O[00:12:35.854307] Timestamp after overrun recovery ahead of error timestamp! Unable to calculate number of dropped samples.(Delta: -3170 ticks)
O[00:13:36.854327] Timestamp after overrun recovery ahead of error timestamp! Unable to calculate number of dropped samples.(Delta: -3170 ticks)
O[00:14:37.854251] Timestamp after overrun recovery ahead of error timestamp! Unable to calculate number of dropped samples.(Delta: -3170 ticks)
O[00:15:38.854243] Timestamp after overrun recovery ahead of error timestamp! Unable to calculate number of dropped samples.(Delta: -3170 ticks)
O[00:16:39.854318] Timestamp after overrun recovery ahead of error timestamp! Unable to calculate number of dropped samples.(Delta: -3170 ticks)
[00:16:42.142516] Benchmark complete.


Benchmark rate summary:
  Num received samples:     55999780624
  Num dropped samples:      17
  Num overruns detected:    17
  Num transmitted samples:  0
  Num sequence errors (Tx): 0
  Num sequence errors (Rx): 0
  Num underruns detected:   0
  Num late commands:        0
  Num timeouts (Tx):        0
  Num timeouts (Rx):        0


Done!



nando@nando:~/Downloads/uhd-UHD-3.15.LTS/host/build/examples$ 



--------------D1D9A0BDAADFAA25410E64E2
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------D1D9A0BDAADFAA25410E64E2--

