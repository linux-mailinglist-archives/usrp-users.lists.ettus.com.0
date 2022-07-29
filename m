Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 455A858520D
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 17:06:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB375383793
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 11:06:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659107165; bh=UEt3sIIGAwZ1oEvSLZ0/jM1xaYxmh9l4+hFosfAyz3U=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=CShHDI9tedvksh6qYMl+6Ubl2wOL78IhTx6rKouWijSoLl7lsr0qL8tG1IWwybfJI
	 KSpjh5pK2sHwrZJB1wXBRKkFyoavxTKiYleM/JLAfbaZsg1iw78PKJocIuIJYDK41w
	 hawAQwDCzZuhimfPjbhLq37bPpm6jUsdEDYXNKJY1OSfdSFRBk5ogMqSCiDnqw2uTd
	 NYJnzeo+GvNIx6qw+aIFEHXXmyzLPId/kQIFLfozIvUdhUgHF7iOScDjgLUGTOIhJP
	 KaMEvk410W+FNNaQcqXCqtdhnJJpJJslK2NRvlsDe7Yvkyrgyop7Un5HmlSf6Sep6m
	 k74COtXv0t2Sw==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 9E3EF383E01
	for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 11:03:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="O+G1UqQ/";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id i13so6142213edj.11
        for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 08:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=avzDhWFvTQ8oIigqYddbDfgZrOBAKhZIzS0eSWTc38g=;
        b=O+G1UqQ/D4nijre8rMowApOOMiXLmMzP4wrl4iDvfIjdhiD3Zg6JglXdO5oHdxWQhE
         PxIuXSxJWoDEmW8rO0e+ju4Py2jl5lwKRR7nTYE1UhQnK6mAT9igwRrTBNnoMymRLtPC
         Wpui+mIulpuG+HZ8v3TZvi7/+WVreTeS9n63/mmNwMeQiM0M3LkiEx6H35JHxThkVPXz
         +ud82SdfDPv5Ar07jT5f/XSUtSUMWWnlVjKHUbdJrCcyeMprOsfDJ1k+4yM+LVtBFil0
         KnL9Mj/00alkT1WjHGa/h6s/D1CBVDsctFae0wdpR4SBnr3f8wM2EHbU3RCtTVqktHuD
         LWrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=avzDhWFvTQ8oIigqYddbDfgZrOBAKhZIzS0eSWTc38g=;
        b=URnLPwivufGKTYYOfUcdCRypDNmdMBXCHQQmGkVKJUpxUE+wDn+n4QOljGK9BApVPQ
         OkRJGkCdLZag6M/LieIzYJmRXvls1ul8+/PoFuTfEf9dPxfxci5QQEYXYiMWs7Y11hVT
         aomaAiRWvWdiGuReFnI3fAMJXn9RTUfzMyNDpATeCsK3YwNn6+nvX9lbUap8QbdKUQQc
         W75ZuIee3mw4GqpXcs1QafVcr9KlpvrKyieZVH1LqK10U7tJtrf2OWcvOP+beQSk8tfp
         /EgEN2qY+rv0Yivk1AkpGKRC7q9tDJKYTc6Up1khq/WM1NTZRZTr+QlHpIt/r2uHSa/w
         ThZg==
X-Gm-Message-State: ACgBeo0u3EZ9wnPuycMOUOKJNTvIq4jQIfRcKyOStLBUHqJiC+8wflAP
	4AxZb2LLKPJ6TOAiDMehyWNQzH+w/9fNHIi4038=
X-Google-Smtp-Source: AA6agR7Yi8PmheqFf5uuuhZdtawJUaV6pbNGFzfz+9h5QbhlPjkQjngw9WfTl40YmIvVMq9gPXo8BT+E5MxzqgbiwK0=
X-Received: by 2002:a50:bace:0:b0:43d:370a:e1c1 with SMTP id
 x72-20020a50bace000000b0043d370ae1c1mr1137499ede.193.1659107025575; Fri, 29
 Jul 2022 08:03:45 -0700 (PDT)
MIME-Version: 1.0
References: <WNuX1RAxDMoc9fWPv8LiDBJv5z5W2Y4T6qJKxpcDZ0U@lists.ettus.com>
 <CAAxXO2Hh7vns3bnQgbcAWEDr=Uo9ju+FSXEzhutpFqLRx5+25Q@mail.gmail.com> <CAJPBMpV1HMoK1c3MP-eB+geApi865UQ0s0nVWhopw6X99sSz6A@mail.gmail.com>
In-Reply-To: <CAJPBMpV1HMoK1c3MP-eB+geApi865UQ0s0nVWhopw6X99sSz6A@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 29 Jul 2022 18:03:32 +0300
Message-ID: <CAAxXO2H5X6x3kH5XoC__Sn=bHbDPCFQ0bS8V1+Hstjifc=O7VA@mail.gmail.com>
To: yan zhang <yanzhanggc@gmail.com>
Message-ID-Hash: FCLNOJITUNLW45G65BAU3SACNSZQMYWJ
X-Message-ID-Hash: FCLNOJITUNLW45G65BAU3SACNSZQMYWJ
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E312 low level access to control AD9361
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FCLNOJITUNLW45G65BAU3SACNSZQMYWJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Yan,

Throwing an error (exception?) is a bit drastic. A simple printf or
cout should be sufficient...
Yup. That seems to be controlling the VCO. That should be in your daugtherboard.
What daugtherboard are you using?
If you are using it and it doesn;t print/err then you should be
looking elsewhere...
Are you sure you are using the ad9361 driver?

HTH
Nikos

On Fri, Jul 29, 2022 at 4:41 PM yan zhang <yanzhanggc@gmail.com> wrote:
>
> Hi, Nikos,
>
> Thanks for your reply! I will try to learn and install ctag. Here is what I further find:
>
> Following your directions, I can find the _tx_freq variable in "uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.h".
> I assume that the " _tune_helper() " function implemented in "uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp" is the underlying function that tunes the ad9361 front end.
> The problem is that I modify the _tune_helper()  by throwing a uhd error at the beginning of the function, however after I re-compile the modified uhd and re-install it and then re-run my tuning loop, I didn't find the error message I throw in the  _tune_helper() .
>
> Does that mean the E312 uhd does not run the  _tune_helper() function in  "uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp"?
> I really would like to find where the underlying tuning source code is and I need to turn off the calibration procedure in the tuning code to speed up the tuning.
>
> Thanks,
> Yan
>
>
>
>
>
>
>
> On Thu, Jul 28, 2022 at 6:48 PM Nikos Balkanas <nbalkanas@gmail.com> wrote:
>>
>> Hi,
>>
>> _tx_freq is an intermediate frequency.
>> It is defined in:
>> uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.h
>> If you need to modify uhd, you really need to install ctags, and grep
>> the sources...
>>
>> HTH
>> Nikos
>>
>> On Thu, Jul 28, 2022 at 10:42 PM <yanzhanggc@gmail.com> wrote:
>> >
>> > Hi, all,
>> >
>> >
>> >
>> > I have a E312 device and I just find that the tuning speed of E312 is very slow (~150ms) for each tuning. Thus I would like to modify the underlying tuning source code in the uhd software architecture.
>> >
>> >
>> >
>> > Here is what I found:
>> >
>> >
>> >
>> > I first create a multi_usrp object:
>> >
>> > uhd::usrp::multi_usrp::sptr usrp = uhd::usrp::multi_usrp::make(device_args);
>> >
>> >
>> >
>> >
>> >
>> > then I tune the usrp by running a loop:
>> >
>> >
>> >
>> > int count = 200;
>> > for(int a = 0; a < count; a++) {
>> >         uhd::tune_request_t tune_request(600e6 + a*10e6);
>> >
>> >         usrp->set_rx_freq(tune_request, 0);
>> >         usrp->set_tx_freq(tune_request, 0);
>> > }
>> >
>> >
>> >
>> > Basically, the loop tunes the frequency from 600MHz to 2.6 GHz with a step size of 10 MHz. The 200 tunings take 52 seconds, which is pretty slow.
>> >
>> >
>> >
>> > Thus, I traced the call stack from usrp->set_rx_freq(tune_request, 0). Here is what I found:
>> >
>> > usrp->set_rx_freq(tune_request, 0);  calls the method set_tx_frequency() in uhd/host/lib/usrp/dboard/e3xx/e3xx_radio_control_impl.cpp
>> >
>> > then the method set_tx_frequency() in uhd/host/lib/usrp/dboard/e3xx/e3xx_radio_control_impl.cpp calls the tune() method in uhd/host/lib/usrp/dboard/e3xx/e3xx_ad9361_iface.cpp
>> >
>> > then the tune() method in uhd/host/lib/usrp/dboard/e3xx/e3xx_ad9361_iface.cpp calls the method set_tx_frequency() in uhd/host/lib/rfnoc/radio_control_impl.cpp.
>> >
>> >
>> >
>> > The conclusion I have reached so far is the underlying tuning method is in  uhd/host/lib/rfnoc/radio_control_impl.cpp:
>> >
>> >
>> >
>> > double radio_control_impl::set_tx_frequency(const double freq, const size_t chan)
>> > {
>> >     std::lock_guard<std::mutex> l(_cache_mutex);
>> >     return _tx_freq[chan] = freq;
>> > }
>> >
>> >
>> >
>> > Then I just got stuck here, what is the _tx_freq[chan] ? I just can not find more.
>> >
>> >
>> >
>> >
>> >
>> > What I want to do is to modify the underlying ad9361 driver, so that when tuning a frequency, I can bypass the calibration in the ad9361 to speed up the tuning speed.
>> >
>> >
>> >
>> > Can anyone point me to 1.where I can find the source code for tuning for the E312 with uhd 4.0 or 2. how to use mpm to get low-level access to ad9361 so that I can write my own tuning method for ad9361 ?
>> >
>> >
>> >
>> > Thanks,
>> >
>> > Yan
>> >
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
