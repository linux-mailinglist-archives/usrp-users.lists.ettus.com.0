Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1392B25E7E3
	for <lists+usrp-users@lfdr.de>; Sat,  5 Sep 2020 15:26:31 +0200 (CEST)
Received: from [::1] (port=46766 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kEYD6-0007DE-PL; Sat, 05 Sep 2020 09:26:28 -0400
Received: from mail-qv1-f42.google.com ([209.85.219.42]:33304)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kEYD2-00075R-Fj
 for usrp-users@lists.ettus.com; Sat, 05 Sep 2020 09:26:24 -0400
Received: by mail-qv1-f42.google.com with SMTP id cy2so4481456qvb.0
 for <usrp-users@lists.ettus.com>; Sat, 05 Sep 2020 06:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=vqQWo3MDtpOO67m+asIUyHvEKn6eKTIHsch4ZYXbP9o=;
 b=Q0S9RdjXiZTScn8mf/Xy2cRYl8444d0fyuBh2URFxfb6NBpak7eVvUhLbMG3ORiZPS
 PToQXwrhaLKwfO0QoYhoOWwMzdWtgq916uNK4palYDUFw5pKjCbyH5URx/kNoT4/R4XQ
 ZJA2ZGKhjO0iTUcy51AnLM/6sTghz5DAfRsSPV3sgig+S8CNMRCZPzf6U4u2I5AQJaZZ
 5NH6qHiIaudwgBXYlSoQxJcHzYXddCvwj5m+NOA/s31MlzXpWUMRz4dSTBv1L9Ca+ELh
 BRda0Qmnzsh50PY+4TNtLAb79iyJ5fGyecueGKig+6ydckrztq+UHAtGtgyaEiPMgjBD
 bNFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=vqQWo3MDtpOO67m+asIUyHvEKn6eKTIHsch4ZYXbP9o=;
 b=sW9ynXK6DytfTWJHujwmd+TVG4o82Jo7DpEZl+awyS4pIPM92V9RqwxQEwNRmWA3n9
 AlNQTZMQqI3QWQloBtp+gq7vlEcvDoSjH83m/IXLL+4s7/RtTcEO/tWfkiMwjUgf0wbB
 JD/PjzJFtoOtQTdXwd70nlF1m29Qx6I0qHPpb8lhdaA8jAd+FuFb5Tn2VrEJuIJHPvFJ
 NK81DD2j+Vox+azRfgn834YxZPVLj65IPGqmN9+T+uIioNWP+yUak25uFkdWzNYtmNhg
 UPKutUUm8R/Mwbb69sut1myHLUnwG3YiQcyVHa2aMrCvbd1H0fWNPqQZ0eAwnQnMvRVW
 R2TA==
X-Gm-Message-State: AOAM530h+SQjFcfYVo6d+oRca5LO7GtrtQ4U1bMS+1oNlDdoxrvJSBxY
 3T2sYrYuLEzg3bt/HGp6LqhNJ0w1jsw=
X-Google-Smtp-Source: ABdhPJxjOAjYmQmSdPiQ6qJ3/jv/nisxYdbedoGmWqKEDIIM1WcY7hIl303CGWKKS7OcXgTZn085Mg==
X-Received: by 2002:a0c:f5c5:: with SMTP id q5mr12434320qvm.29.1599312343697; 
 Sat, 05 Sep 2020 06:25:43 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id l5sm7161860qtc.28.2020.09.05.06.25.43
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 05 Sep 2020 06:25:43 -0700 (PDT)
Message-ID: <5F5391D6.7010004@gmail.com>
Date: Sat, 05 Sep 2020 09:25:42 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CACDReSz3C6hGmMmC48qd4O8hPE5Hvw4EarxGV5Tsq9ONUpMNYA@mail.gmail.com>
In-Reply-To: <CACDReSz3C6hGmMmC48qd4O8hPE5Hvw4EarxGV5Tsq9ONUpMNYA@mail.gmail.com>
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

On 09/05/2020 08:59 AM, Ofer Saferman via USRP-users wrote:
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
> I tried various combinations of number of samples bandwidths and 
> sample rates and can't get more than 16 Msps.
> Why can't I get a sample rate of more than 16 MSps?
> Any help will be appreciated.
>
> I am running UHD v3.15.0.0_e310_sg3.
>
> Thanks,
> Ofer Saferman
>
The E310 simply cannot support sample rates that high through the ARM 
processor on the device.  The CPU operates at less than 1GHz, and
   it's an ARM device.

Further, trying to write to files on the  SD card at that rate won't 
work, either.

The intention on the E310 is that high-speed processing is done in the 
FPGA, with lower sample-rates being handled by the ARM CPU that is
   built in to the Zynq FPGA.





_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
