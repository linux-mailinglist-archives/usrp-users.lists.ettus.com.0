Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A98802A4C9B
	for <lists+usrp-users@lfdr.de>; Tue,  3 Nov 2020 18:20:39 +0100 (CET)
Received: from [::1] (port=54064 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kZzz2-0003PZ-MM; Tue, 03 Nov 2020 12:20:36 -0500
Received: from mail-qk1-f172.google.com ([209.85.222.172]:46510)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kZzyz-0003JS-Mx
 for usrp-users@lists.ettus.com; Tue, 03 Nov 2020 12:20:33 -0500
Received: by mail-qk1-f172.google.com with SMTP id a65so13168437qkg.13
 for <usrp-users@lists.ettus.com>; Tue, 03 Nov 2020 09:20:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=S9ax4dkEnsIziou8qK465Ea/Ti755kSKQKckGVSMEkE=;
 b=a4mF4A5/CeTeuqwgx7tiHmT4lClkLSLGywzYansh70DA9SMO51ODhQVuEZRNJErj4N
 vQNWDOYZ03C+U1EFG5ATgGdub5tg7qJDMhL4BnOFuM00JJ/g+Z2WckPj4lUf2842+NyT
 Zhaod2LW7H2oGFBrjtaqjORuz7Ow9Lw3HbaRY5X+eO1TIvoVIEP4dscpl5InvNMZTUnw
 DdenoXwUfAU5O59yzcrC0txsr+UGPwoNoMhBpF0y+wHek3mbv1MTQQGEJAZTqwYT6Fps
 ZvMmVuB9HoOYWwYrH3q2z1pHKE4OF+fKCCSOZKR56U/aEIeY+vqFg9kGqluqA82EGOXP
 xbSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=S9ax4dkEnsIziou8qK465Ea/Ti755kSKQKckGVSMEkE=;
 b=hhlPUkNKpkwDpE2HuKLuldv4oXhxOPMWB1zI+gImtGCEZSFo8r9f9RZvr+pZxBKSDF
 gLMQnMOT+RtE6zV76Hdt2G0i84CV8nnEo9p3cXlHNba0299ODgaLYNVnn4Q026m064Xe
 1uJSgXh8D285M5HUeyfFPas/pJKSC8tqTwdHxXc3nSPxgpS9hlS2YIjXgWD8uNzqsXcM
 +m0QWRJlsG726O0sVqu0xNZBCd0Am54nTmLxgbDlwkCWgB5j4jP6JF9eP2C2Iztr4VcX
 mJLP2oLHZKMS23bRHpawJiOog4D1cQS11GwjVjxG4co28y/9pMJ/HSdM0QyKrZDPzM+h
 l2eg==
X-Gm-Message-State: AOAM531SY51x49OUGmdStLaVfPVkxyyZWKUiPIv2r1Z4aNwzXAU0QXN5
 7a1VjLSu2V3sWkR/fupEig547X0EtBOXZQ==
X-Google-Smtp-Source: ABdhPJzi+dp++hqe+Xs50OoFOXK/PpBCp5KaBPM7vO9qCst2JNcev54QpoN621D+3xuCSmWn7a2hqA==
X-Received: by 2002:a37:a101:: with SMTP id k1mr17848248qke.263.1604423992864; 
 Tue, 03 Nov 2020 09:19:52 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id a206sm7910253qkb.64.2020.11.03.09.19.52
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Nov 2020 09:19:52 -0800 (PST)
Message-ID: <5FA19137.10205@gmail.com>
Date: Tue, 03 Nov 2020 12:19:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAAC=UJP-ZpTgGyAx0gVZ0ApfvnZmF6G27GOXPwJMKMStbF5W_Q@mail.gmail.com>
In-Reply-To: <CAAC=UJP-ZpTgGyAx0gVZ0ApfvnZmF6G27GOXPwJMKMStbF5W_Q@mail.gmail.com>
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

On 11/03/2020 10:49 AM, Alvaro Pendas Recondo via USRP-users wrote:
> Hello,
>
> I am using a USRP B200mini with a sampling rate of 40MS that works 
> perfectly fine connected to a laptop with USB 3. However, when I 
> connect it to a Raspberry Pi 4 (which has two USB 3 ports) and I run 
> the example benchmark_rate with the same sampling rate I get the 
> output that I copy below. It seems that even if it is also operating 
> over USB 3, this connection cannot meet the expected performance 
> anymore. If I reduce the sampling rate (down to 12 MS approx) 
> everything works fine. Any ideas about what might be causing this problem?
>
>
> By the way, I already followed all the instructions explained at 
> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#:~:text=Thread%20Priority%20Scheduling,-When%20UHD%20spawns&text=To%20address%20this%20issue%2C%20non,%2Fetc%2Fsecurity%2Flimits 
> <https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#:%7E:text=Thread%20Priority%20Scheduling,-When%20UHD%20spawns&text=To%20address%20this%20issue%2C%20non,%2Fetc%2Fsecurity%2Flimits>. 
>
>
>
> ./benchmark_rate --rx_rate 40e6 --tx_rate 40e6
>
> [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; 
> UHD_3.15.0.HEAD-0-gaea0e2de
> [INFO] [B200] Loading firmware image: 
> /usr/local/share/uhd/images/usrp_b200_fw.hex...
> [00:00:00.000044] Creating the usrp device with: ...
> [INFO] [B200] Detected Device: B200mini
> [INFO] [B200] Loading FPGA image: 
> /usr/local/share/uhd/images/usrp_b200mini_fpga.bin...
> [INFO] [B200] Operating over USB 3.
> [INFO] [B200] Initialize CODEC control...
> [INFO] [B200] Initialize Radio control...
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Setting master clock rate selection to 'automatic'.
> [INFO] [B200] Asking for clock rate 16.000000 MHz...
> [INFO] [B200] Actually got clock rate 16.000000 MHz.
> Using Device: Single USRP:
>   Device: B-Series Device
>   Mboard 0: B200mini
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: FE-RX1
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: FE-TX1
>
> [00:00:11.448560] Setting device timestamp to 0...
> [INFO] [B200] Asking for clock rate 40.000000 MHz...
> [INFO] [B200] Actually got clock rate 40.000000 MHz.
> [WARNING] [MULTI_USRP] The total sum of rates (40.000000 MSps on 1 
> channels) exceeds the maximum capacity of the connection (overflows 
> (O) MSps).
> This can cause 22.7428.
> [00:00:11.766752] Testing receive rate 40.000000 Msps on 1 channels
> [WARNING] [MULTI_USRP] The total sum of rates (40.000000 MSps on 1 
> channels) exceeds the maximum capacity of the connection (underruns 
> (U) MSps).
> This can cause 22.7428.
> [00:00:11.790580] Testing transmit rate 40.000000 Msps on 1 channels
> [00:00:11.891995] Tx timeouts: 1
> UUUUUUUUUUUUUUUO[00:00:12.078147] Timestamp after overrun recovery 
> ahead of error timestamp! Unable to calculate number of dropped 
> samples.(Delta: -3170 ticks)
> UUUUUUUUUUUUUUUUUUUUO[00:00:12.092404] Timestamp after overrun 
> recovery ahead of error timestamp! Unable to calculate number of 
> dropped samples.(Delta: -3170 ticks)
> UUUUUUUUUUUUUO[00:00:12.108355] Timestamp after overrun recovery ahead 
> of error timestamp! Unable to calculate number of dropped 
> samples.(Delta: -3170 ticks)
> UUUUUUUUUUUUUUUUUUUUUUUUU[OU00:00:12.123737] Timestamp after overrun 
> recovery ahead of error timestamp! Unable to calculate number of 
> dropped samples.(Delta: -3170 ticks)
> UUUUUUUUUUUUUUUUUUUUOU[00:00:12.132437] Timestamp after overrun 
> recovery ahead of error timestamp! Unable to calculate number of 
> dropped samples.(Delta: -3170 ticks)
> UUUUUUUUUUUUUUUUUUUUUUOU[00:00:12.142422] Timestamp after overrun 
> recovery ahead of error timestamp! Unable to calculate number of 
> dropped samples.(Delta: -3170 ticks)
> UUUUUUUUUUUUUUO[00:00:12.155257] Timestamp after overrun recovery 
> ahead of error timestamp! Unable to calculate number of dropped 
> samples.(Delta: -3170 ticks)
> UUUUUUUUUUUUUUUO[00:00:12.168528] Timestamp after overrun recovery 
> ahead of error timestamp! Unable to calculate number of dropped 
> samples.(Delta: -3170 ticks)
> UUUUUUUUUUU[O00:00:12.178400] Timestamp after overrun recovery ahead 
> of error timestamp! Unable to calculate number of dropped 
> samples.(Delta: -3170 ticks)
> UUUUUUUUU[00:00:12.193251] Timestamp after overrun recovery ahead of 
> error timestamp! Unable to calculate number of dropped samples.(Delta: 
> -3170 ticks)
> OUUUUUUUUUUUUUUUUUO[00:00:12.204356] Timestamp after overrun recovery 
> ahead of error timestamp! Unable to calculate number of dropped 
> samples.(Delta: -3170 ticks)
> UUUUUUUUUUUUUUUUO[00:00:12.224770] Timestamp after overrun recovery 
> ahead of error timestamp! Unable to calculate number of dropped 
> samples.(Delta: -3170 ticks)
> UUUUUUUUUUUUUUUUUO[00:00:12.235145] Timestamp after overrun recovery 
> ahead of error timestamp! Unable to calculate number of dropped 
> samples.(Delta: -3170 ticks)
> UUUUUUUUUUUUU[O00:00:12.247517] Timestamp after overrun recovery ahead 
> of error timestamp! Unable to calculate number of dropped 
> samples.(Delta: -3170 ticks)
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU[00:00:12.475571] Receiver error: 
> ERROR_CODE_TIMEOUT, continuing...
> [00:00:12.575910] Receiver error: ERROR_CODE_TIMEOUT, continuing...
> [00:00:12.676171] Receiver error: ERROR_CODE_TIMEOUT, continuing...
> [00:00:12.776414] Receiver error: ERROR_CODE_TIMEOUT, continuing...
> [00:00:12.876663] Receiver error: ERROR_CODE_TIMEOUT, continuing...
> [00:00:12.976968] Receiver error: ERROR_CODE_TIMEOUT, continuing...
> [00:00:13.077257] Receiver error: ERROR_CODE_TIMEOUT, continuing...
> terminate called after throwing an instance of 'uhd::io_error'
>   what():  EnvironmentError: IOError: usb tx2 transfer status: 
> LIBUSB_TRANSFER_NO_DEVICE[
> 00:00:13.083166] Caught an IO exception.
> EnvironmentError: IOError: usb rx6 transfer status: 
> LIBUSB_TRANSFER_NO_DEVICE
>
Well, the main reason is that your typical laptop compute environment, 
based on x86 processor technology, is going to be more powerful
   than the ARM on a Raspberry Pi4.

Now, you *may* be able to improve things slightly by adjusting the USB 
transport parameters, as described here:

https://files.ettus.com/manual/page_transport.html#transport_usb

But once you actually start "doing stuff" on the Raspberry Pi, you'll 
find that it can't process as many samples per second as on an x86
   system--whether a laptop or desktop machine.  There's a reason that a 
Raspberry Pi is $50, and a typical low-end laptop is 10 times that.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
