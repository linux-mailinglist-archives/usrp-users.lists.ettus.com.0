Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF6E26134E
	for <lists+usrp-users@lfdr.de>; Tue,  8 Sep 2020 17:17:34 +0200 (CEST)
Received: from [::1] (port=50577 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kFfNE-0005i1-16; Tue, 08 Sep 2020 11:17:32 -0400
Received: from mail-ed1-f47.google.com ([209.85.208.47]:33612)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kFfN9-0005bD-Hp
 for usrp-users@lists.ettus.com; Tue, 08 Sep 2020 11:17:27 -0400
Received: by mail-ed1-f47.google.com with SMTP id g4so16415343edk.0
 for <usrp-users@lists.ettus.com>; Tue, 08 Sep 2020 08:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=Fd3VpiaSVfdm0Xc5gUnKk4Z5c0lmcILO+E41Qm+ymJw=;
 b=fOCCEQtZL1HPCip2ZcgH2bMX8au3wyaXOeV/FE6buLoUBuTQAzc+1Q3TEtHYq+r2of
 2am8JEW1cs8tisel3O78+gnCr6oBsqILrVIDly7yWZFaoYMTMw558QYQz7GTjjMnunF0
 P+LwXUfc28pf9u7ptNXgrPGHINTc9DUvO11JaNWDk+gfxVaMEeZ1D7hh3Y74DxeDzX6d
 MTJVTwQdnFD40TBm8pEDLUrQkY9Vo4yvkUrcfMbhehP7LZ+WdXzrBT73EojlqVzYeNJN
 JdNyZ812dhYfdX4FT0nZ/Gu0tYTie5Ft2mm6gQBrfr9BdktBT6+eKYLwgKWn8Fd0ynoe
 rMng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Fd3VpiaSVfdm0Xc5gUnKk4Z5c0lmcILO+E41Qm+ymJw=;
 b=DWznYh7ICoEqhtnARHs+jc/6S29eExHatSIBd9r//WGfRuChK/mFDFHK5kJ7EjL9Kw
 D//uh4JXIZwfImugVWJa4cTh9PmXleP+AfMrJiddSIYVtdUUicG93sylLpZIF+tTS/2s
 wteqk3mjjlVQhOTkdx5YRGpjVzLjBgr0RvjqVJ/mUrIVE2i1nT0eSBNd+6vXN6RCgwvf
 9WmVuFWzW+RRMOzQq3CdjnooA7SdQb3WtcLJsH1m1coS9BFiKbsqFI3AqgTiD1v9POZO
 FfqbyktQim3qp54Bz1/7AQsnSTujKdK2fnzmIBEceAMQCz3duS++apNYMzfIhFe/HVwu
 wbFQ==
X-Gm-Message-State: AOAM533rY4BdhGL0floNnj4VF5PkVD++q+mt5X8yIAgXlP6tkZclEZvZ
 puY9suswePGU+YDDXNC/nUTaSTayGGNY50b2KOw=
X-Google-Smtp-Source: ABdhPJwjTrCqk++w61A9ejkwP/x6iKEnopwf8N4CHr6CUu4dKL49Eq9E41uqigasNWlx7Uh2MwGuTw==
X-Received: by 2002:aa7:dd01:: with SMTP id i1mr27870871edv.121.1599578206392; 
 Tue, 08 Sep 2020 08:16:46 -0700 (PDT)
Received: from ?IPv6:2a02:8071:2c80:c4f0::e6a? ([2a02:8071:2c80:c4f0::e6a])
 by smtp.gmail.com with ESMTPSA id k8sm15332377ejz.60.2020.09.08.08.16.45
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Sep 2020 08:16:45 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CACDReSz3C6hGmMmC48qd4O8hPE5Hvw4EarxGV5Tsq9ONUpMNYA@mail.gmail.com>
Message-ID: <80f4ff7b-ad3f-248f-e58a-da940ec917dc@ettus.com>
Date: Tue, 8 Sep 2020 17:16:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CACDReSz3C6hGmMmC48qd4O8hPE5Hvw4EarxGV5Tsq9ONUpMNYA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Rx sample rate for USRP E310
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
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

On 9/5/20 2:59 PM, Ofer Saferman via USRP-users wrote:
> Hello,
> 
> I am just starting out with the USRP E310 so bare with me.
> I am trying to capture samples to file using: ./rx_samples_to_file
> --freq 2.4e9 --rate 40e6 --bw 40e6 --gain 30 --nsamps 1000000 --file
> samp4.dat
> I get the following two warnings during processing:
> ------------------------------------------------------------------------------------------------------
> [WARNING] [RFNOC] [legacy_compat] No FIFO detected. Higher transmit
> rates may encounter errors.
> ------------------------------------------------------------------------------------------------------
> 
> Setting RX Rate: 40.000000 Msps...
> [WARNING] [MULTI_USRP] The hardware does not support the requested RX
> sample rate:
> Target sample rate: 40.000000 MSps
> Actual sample rate: 16.000000 MSps
> ------------------------------------------------------------------------------------------------------
> 
> Are the warnings related?
> I tried various combinations of number of samples bandwidths and sample
> rates and can't get more than 16 Msps.
> Why can't I get a sample rate of more than 16 MSps?
> Any help will be appreciated.

On top of what Marcus said, you need to specify master_clock_rate to set
other rates. 16 MHz is the default master clock rate. If you were able
to stream 40 MHz, you would need to do

    ./rx_samples_to_file --args master_clock_rate=40e6 [...other args..]

This is also relevant for other sampling rates. For example, 3 Msps is
something the device can handle (maybe even write to SD card), but you
would need a different master clock rate that is an integer multiple,
ideally an even one. In this case, I'd recommend master_clock_rate=12e6
which is 4 times 3. The USRP will engage 2 halfband filters to decimate
the rate. A master clock rate of 3 Msps is theoretically possible, but
not recommended since it will slow down other parts of the chip, too.

The FIFO warning is unrelated. You can ignore that. It should probably
not be there in the first place.

--M

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
