Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21BBD2A8B21
	for <lists+usrp-users@lfdr.de>; Fri,  6 Nov 2020 01:08:05 +0100 (CET)
Received: from [::1] (port=47870 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kapIQ-0006Lm-PD; Thu, 05 Nov 2020 19:08:02 -0500
Received: from mail-qt1-f181.google.com ([209.85.160.181]:34005)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kapIN-00064l-90
 for usrp-users@lists.ettus.com; Thu, 05 Nov 2020 19:07:59 -0500
Received: by mail-qt1-f181.google.com with SMTP id h12so2524593qtu.1
 for <usrp-users@lists.ettus.com>; Thu, 05 Nov 2020 16:07:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=6bMwAW+vKq88ctSjt6AIsjGR/HlSdOPiNdNwBOUYDRg=;
 b=n6AlGx8ObU5rM7uBjOkRwCtHuypbv3J4d3q5s2lkgqqQhiTycpzQAJYrP465b4IK8U
 tQ+h0VRJquBJ/tik5MFJq7OENPvS4O/h989PMX4JzFg2J4kVNNgBjb5VfEPbDPl07OCT
 ATixl7JGdPcmYAOBgyaYit67m1p5HrNOKwgUpcZOkZwUmU9o0AAJHxsXlrb2zCqzipJm
 z+kuwaPi2EzpBqBqWnf8V1DjzBnQWrG/lDwGEe2jX3S7M4ZilUM9ptx3xgobJ/sJrsA4
 LxSKcC9PaNW3Vlg+QxHNoLUeqANX5Un/joIseD9+4OS3vfQpLiSJuuhPaq2GVhmBvUd9
 3Xyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=6bMwAW+vKq88ctSjt6AIsjGR/HlSdOPiNdNwBOUYDRg=;
 b=YLgCtAjMoeYKjTJJKSu8UY/zK7Wa/ZCyxmm0UYqzCelkf109WOC5wLPhMTK8R3LnQW
 ZqPlgJNPhFaH/uezmjfPg95ADqphw381+OTwY3wdPH0RTLihgACOXtpUz5fs++FLdbuw
 mIU+861LYh2HC46AiG8lUhUoyz73QaTrdhvvjQP9xZBJbi945k+N/VLM6AW5x/QarfLT
 sWNFstYflKIRUOnE3se4O4ZmMAZ1gCm2ZJCvEAqFpdWnNKYbv8scP0VmIQocmL+5OFr3
 e0Dtue+C1088igujs3DdKVuP76AYrKSzCbmXOKMAxAliZ6whF4l7VDOCc91ivPeeILBx
 5/yg==
X-Gm-Message-State: AOAM5301huNUYXnkmsXYJ9Pd8e2tUhkff/CgQDjJBBROV1WD92wJ2LUS
 uk27ACco8h7eMvCyV1kHK6zC7Q2WM7U=
X-Google-Smtp-Source: ABdhPJy3gaM6fvNRs1/EYmFie4ICgDeqxaWPuJhZrtsXEpvEC7ReA/7YI+kCMfbmiaItGpvDw+unBA==
X-Received: by 2002:ac8:6e8b:: with SMTP id c11mr4602837qtv.2.1604621238324;
 Thu, 05 Nov 2020 16:07:18 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id n81sm2276615qke.99.2020.11.05.16.07.17
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Nov 2020 16:07:17 -0800 (PST)
Message-ID: <5FA493B5.2040704@gmail.com>
Date: Thu, 05 Nov 2020 19:07:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <trinity-d956d742-6c11-4844-ae74-ae4878387766-1604619763606@3c-app-gmx-bs37>
In-Reply-To: <trinity-d956d742-6c11-4844-ae74-ae4878387766-1604619763606@3c-app-gmx-bs37>
Subject: Re: [USRP-users] How exactly is "Receiver Gain" defined?
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

On 11/05/2020 06:42 PM, Lukas Haase via USRP-users wrote:
> Hi,
>
> I m studying:
>
> https://files.ettus.com/performance_data/ubx/UBX-without-UHD-corrections.pdf
>
> How exactly is "Gain" in the "RX Figures" defined? Can it be related to the digital samples (e.g. in dBFS or RMS)?
>
> If, for example, I apply a exactly Pin=-20dBm, f=916MHz CW (calibrated via VNA) at the SMA input, I get -14.05dBFS (=rms value of IQ samples in 20*log10) when I calculate the RMS values of the samples.
>
> (Note: set_rx_gain(0) and I use 516MHz as center frequency to avoid DC correction).
>
>
> Also, the statement on the gain values is not quite clear: "Gain range for both RX and TX is 0-31.5 (the maximum RX gain seen in the tests of 37.5dB is due to the additional 6dB provided by the ADC in the USRP motherboard on top of the UBX's maximum gain".
>
> How does this relate to the value which is set with set_rx_gain()?
> Does that mean that a "Gain" value of 10 dB on the plot corresponds to set_rx_gain(4) ?
>
> What confuses me is that I *can* call set_rx_gain() with values of 0...37.5, and the output scales accordingly (i.e., the lowest value seems to be 0 and the highest 37.5; not 31.5).
>
>
> Would be great if someone could confirm.
>
> Thanks,
> Luke
>
The precise implications of the gain-setting function are highly 
dependent on the particular daughterboard architecture.  When you set
   the gain, you're typically (certainly true on UBX) setting a step 
attenuator, which is usually sandwiched between a pair of low-noise
   amplifiers, then a mixer, which may have either gain or loss of a few dB.

The only way you can relate the dB values in your FFT display to 
power-as-seen-at-the-RF-connector is using an external calibration source,
   and you'll have to do this exercise over your entire expected 
operating-parameter space.  RF analog components will NOT provide exacty
   the same gain/loss levels across their entire operating range.

The additional gain-range setting is due to the presence of a *baseband* 
VGA on some motherboards ahead of the ADCs.  UHD will distribute
   gain settings over the available gain-setting elements (in both the 
daughtercards and motherboard).  By default, it will distribute gain to
   favor noise figure over linearity.  You can set individual gain 
elements if you prefer:

https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#ad602e7681b796deddd9231f022ffef11


Now the names for the various gain elements will differ depending on the 
motherboard and daughterboard in use, and they can be
   shown using "uhd_usrp_probe".



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
