Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9399B585642
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 22:46:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9A197383E28
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 16:46:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659127597; bh=hGg3ECFSTtk/VR5pr0IBAEXB1nvv2OOj1Nx9SOOQcNQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=kSHnZBD69Pu88uyu9Q6oP56z5pKiFTN3G8UqOBYSbgSSqwHlmfPol+rXxJR9mfhww
	 gm3A89UoPxGq4LTrQcNfb2xjsdttLXi2PodkanEhZnSyy5bDd6X2AoSMp04JZPzAJT
	 fZp9RR1z4MiOhE01bknmkNfICnWGySNMDVj4nN5RkW+3unf9L+UuiKgGW+qJoH7+G/
	 zfhl8nmUUn4b46fRyhx6+uoUsw2YGXW7mYKUoYj6h0HfWs5mCh3aCld0wKumjFcwx4
	 QQP50CQicSoh+RJ0oQOzLIn7q5Okeh18G+zPY5aOPHlCwTtJ/6QEfVgerkKoxpZ1wE
	 NsewyWFygHAUw==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 60F283818DF
	for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 16:44:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cMuAsYTA";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id va17so10559728ejb.0
        for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 13:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Kw3anBc2/wuF9U1ZMgGwSK9OEQlpV4hYZ/qtXrQqIrc=;
        b=cMuAsYTAQRsg96nxLnwAvRV0+tvoGJwGHNi+XeB9Zjc7BV0GF+PhYjJp5XFUXJxKik
         i7kJdFrS8TstGKJlLxaL9yQ+d/DW8Uy3mIIDpuPZNxFoZhoJr3ENXCWMGafBSJ0+P1gB
         ryi3VV7dB5lnFwplb4co3Fm58r6elwpSBc8srNJx42BgwnS8Y3q5Ll+++5uchFg1pl6P
         IP8WhbJsjalmTTIq6HqxboJ/l7+W8xm2DrfydfIMLcJJf+gQMHh/erClwFKezCHqjQFe
         z4/bJ32II+h34Yzw+ZcVzeADGyFPx+nJrNlGEetBDa18LqHenWSAPrEldLMF6+g188r4
         l1iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Kw3anBc2/wuF9U1ZMgGwSK9OEQlpV4hYZ/qtXrQqIrc=;
        b=w1PugXXEwELckewKevUbaOCOkFN9HNfgKUCj4E9t9TvWcVFJEFuxD80l41oUvPJUV7
         Yta6noefuSwFpZhThQ3TOqLxaC9Pu+CbegbKm16E97jyJxzjKgNS4Fe38ZV52L4H/bXK
         fftIiePlRVNr2HCStDScKXk/2x2hT1ucrQJEfuUfAEiZE7wQ+xLk0qJARxTrU90k+Ho/
         mVSDxCvBGfs19mNS9rHc2zbsAlWonN3e5awgDbQmS9LlEABZ9UGDMDxkeYmVHtpZokrY
         QDPqrRdivM34MeJcA7PcQ79xZUtnWNsytO9Xa8ZQNa+1TdOmp0Lbn56Kzx7ythXUuu/Q
         9/tA==
X-Gm-Message-State: AJIora8VEoNwybfRHRAG04f06y5DCrbRWi9L9RnrrnElV/8DfYUqye6W
	D7mffOykuNry7RnkLi1FqlTmyo9q8AXcjRTFiyE=
X-Google-Smtp-Source: AGRyM1tsZ1C6HsWm++4Z3uh9eLqdayiwHW7tSJ3GGlGJ9cjUgT0E9kBo3KyN011vSUYokHRyiB230O//gH5Z9eW+Rt0=
X-Received: by 2002:a17:906:ee8e:b0:730:3646:d178 with SMTP id
 wt14-20020a170906ee8e00b007303646d178mr2997392ejb.426.1659127460129; Fri, 29
 Jul 2022 13:44:20 -0700 (PDT)
MIME-Version: 1.0
References: <WNuX1RAxDMoc9fWPv8LiDBJv5z5W2Y4T6qJKxpcDZ0U@lists.ettus.com>
 <CAAxXO2Hh7vns3bnQgbcAWEDr=Uo9ju+FSXEzhutpFqLRx5+25Q@mail.gmail.com>
 <CAJPBMpV1HMoK1c3MP-eB+geApi865UQ0s0nVWhopw6X99sSz6A@mail.gmail.com>
 <CAAxXO2H5X6x3kH5XoC__Sn=bHbDPCFQ0bS8V1+Hstjifc=O7VA@mail.gmail.com> <CAJPBMpU6mzq9p_+VvcFEbRw7uGLdUegb+GgK7mv7XjZBLWEsUQ@mail.gmail.com>
In-Reply-To: <CAJPBMpU6mzq9p_+VvcFEbRw7uGLdUegb+GgK7mv7XjZBLWEsUQ@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 29 Jul 2022 23:44:09 +0300
Message-ID: <CAAxXO2E-8KRjd9m6k5t2F7ND25Awj4hkeFxE0CRjyH1Lq7e+Dg@mail.gmail.com>
To: yan zhang <yanzhanggc@gmail.com>
Message-ID-Hash: 25TXZ6T5M3A7LEOQBYCEOFOO4V3VTJOH
X-Message-ID-Hash: 25TXZ6T5M3A7LEOQBYCEOFOO4V3VTJOH
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E312 low level access to control AD9361
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/25TXZ6T5M3A7LEOQBYCEOFOO4V3VTJOH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You can also try with fprintf(stderr... in case stdout is redirected.
Tiy can put prints in several ad9361 files to see which ones are called,
If all fails try gdb...Press <ctrl-c>  when timing out in tuning and
check the stack...

HTH
Nikos

On Fri, Jul 29, 2022 at 10:02 PM yan zhang <yanzhanggc@gmail.com> wrote:
>
> Hi, Nikos,
>
> I am using a E312 device with ad9361 frontend and I am sure the frontend is ad9361. I have searched for like two weeks and can not find the source code for tuning.
>
> The most possible code is in the ad9361 driver folder, but that does not work ... (with printf())
>
> Yan
>
> On Fri, Jul 29, 2022 at 11:03 AM Nikos Balkanas <nbalkanas@gmail.com> wrote:
>>
>> Hi Yan,
>>
>> Throwing an error (exception?) is a bit drastic. A simple printf or
>> cout should be sufficient...
>> Yup. That seems to be controlling the VCO. That should be in your daugtherboard.
>> What daugtherboard are you using?
>> If you are using it and it doesn;t print/err then you should be
>> looking elsewhere...
>> Are you sure you are using the ad9361 driver?
>>
>> HTH
>> Nikos
>>
>> On Fri, Jul 29, 2022 at 4:41 PM yan zhang <yanzhanggc@gmail.com> wrote:
>> >
>> > Hi, Nikos,
>> >
>> > Thanks for your reply! I will try to learn and install ctag. Here is what I further find:
>> >
>> > Following your directions, I can find the _tx_freq variable in "uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.h".
>> > I assume that the " _tune_helper() " function implemented in "uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp" is the underlying function that tunes the ad9361 front end.
>> > The problem is that I modify the _tune_helper()  by throwing a uhd error at the beginning of the function, however after I re-compile the modified uhd and re-install it and then re-run my tuning loop, I didn't find the error message I throw in the  _tune_helper() .
>> >
>> > Does that mean the E312 uhd does not run the  _tune_helper() function in  "uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp"?
>> > I really would like to find where the underlying tuning source code is and I need to turn off the calibration procedure in the tuning code to speed up the tuning.
>> >
>> > Thanks,
>> > Yan
>> >
>> >
>> >
>> >
>> >
>> >
>> >
>> > On Thu, Jul 28, 2022 at 6:48 PM Nikos Balkanas <nbalkanas@gmail.com> wrote:
>> >>
>> >> Hi,
>> >>
>> >> _tx_freq is an intermediate frequency.
>> >> It is defined in:
>> >> uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.h
>> >> If you need to modify uhd, you really need to install ctags, and grep
>> >> the sources...
>> >>
>> >> HTH
>> >> Nikos
>> >>
>> >> On Thu, Jul 28, 2022 at 10:42 PM <yanzhanggc@gmail.com> wrote:
>> >> >
>> >> > Hi, all,
>> >> >
>> >> >
>> >> >
>> >> > I have a E312 device and I just find that the tuning speed of E312 is very slow (~150ms) for each tuning. Thus I would like to modify the underlying tuning source code in the uhd software architecture.
>> >> >
>> >> >
>> >> >
>> >> > Here is what I found:
>> >> >
>> >> >
>> >> >
>> >> > I first create a multi_usrp object:
>> >> >
>> >> > uhd::usrp::multi_usrp::sptr usrp = uhd::usrp::multi_usrp::make(device_args);
>> >> >
>> >> >
>> >> >
>> >> >
>> >> >
>> >> > then I tune the usrp by running a loop:
>> >> >
>> >> >
>> >> >
>> >> > int count = 200;
>> >> > for(int a = 0; a < count; a++) {
>> >> >         uhd::tune_request_t tune_request(600e6 + a*10e6);
>> >> >
>> >> >         usrp->set_rx_freq(tune_request, 0);
>> >> >         usrp->set_tx_freq(tune_request, 0);
>> >> > }
>> >> >
>> >> >
>> >> >
>> >> > Basically, the loop tunes the frequency from 600MHz to 2.6 GHz with a step size of 10 MHz. The 200 tunings take 52 seconds, which is pretty slow.
>> >> >
>> >> >
>> >> >
>> >> > Thus, I traced the call stack from usrp->set_rx_freq(tune_request, 0). Here is what I found:
>> >> >
>> >> > usrp->set_rx_freq(tune_request, 0);  calls the method set_tx_frequency() in uhd/host/lib/usrp/dboard/e3xx/e3xx_radio_control_impl.cpp
>> >> >
>> >> > then the method set_tx_frequency() in uhd/host/lib/usrp/dboard/e3xx/e3xx_radio_control_impl.cpp calls the tune() method in uhd/host/lib/usrp/dboard/e3xx/e3xx_ad9361_iface.cpp
>> >> >
>> >> > then the tune() method in uhd/host/lib/usrp/dboard/e3xx/e3xx_ad9361_iface.cpp calls the method set_tx_frequency() in uhd/host/lib/rfnoc/radio_control_impl.cpp.
>> >> >
>> >> >
>> >> >
>> >> > The conclusion I have reached so far is the underlying tuning method is in  uhd/host/lib/rfnoc/radio_control_impl.cpp:
>> >> >
>> >> >
>> >> >
>> >> > double radio_control_impl::set_tx_frequency(const double freq, const size_t chan)
>> >> > {
>> >> >     std::lock_guard<std::mutex> l(_cache_mutex);
>> >> >     return _tx_freq[chan] = freq;
>> >> > }
>> >> >
>> >> >
>> >> >
>> >> > Then I just got stuck here, what is the _tx_freq[chan] ? I just can not find more.
>> >> >
>> >> >
>> >> >
>> >> >
>> >> >
>> >> > What I want to do is to modify the underlying ad9361 driver, so that when tuning a frequency, I can bypass the calibration in the ad9361 to speed up the tuning speed.
>> >> >
>> >> >
>> >> >
>> >> > Can anyone point me to 1.where I can find the source code for tuning for the E312 with uhd 4.0 or 2. how to use mpm to get low-level access to ad9361 so that I can write my own tuning method for ad9361 ?
>> >> >
>> >> >
>> >> >
>> >> > Thanks,
>> >> >
>> >> > Yan
>> >> >
>> >> > _______________________________________________
>> >> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> >> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
