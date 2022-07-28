Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5F458486A
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 00:50:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3F18C383A42
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 18:50:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659048607; bh=18KcksOXbHxTEHKXZS3hid+hAdb997lsjW6/LSRPEow=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=onvGFNvI8lEyviKZ3GXqm+ZK2x2/qoKussCxLxyxSUg5AEETAjnwiextSJ2LbqdDV
	 1okuDq+EpMDHlcoteSmL+UdPLV2BcHeIdlxWZItui8Yr9bSMOo2ajwuEotUQLm1+xM
	 xShSnoyLH1SFQOmpHkxyYEHMpeMDzdvxm9pHObg7QEK2v5Sc+0KKIPNF+K7/J6XlMU
	 7kzIQ06xRaxAE7whuBtvuH4pwRRy7rF0z245AY1jZJi9JOJD8sd+mS34w9BvHfAlcq
	 6c5IeIOQBO63SBRdyVrgN5uNRRqP12+7dtyiKkyifni/Yz1ogxkNvB7n/P3dHh3B9M
	 PwDrOWXKghETA==
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 500B1383E56
	for <usrp-users@lists.ettus.com>; Thu, 28 Jul 2022 18:48:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GrxSVxXZ";
	dkim-atps=neutral
Received: by mail-ej1-f47.google.com with SMTP id tk8so5520662ejc.7
        for <usrp-users@lists.ettus.com>; Thu, 28 Jul 2022 15:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kr0FlhbSYN43MZnmXtqYsaxH/sV8SQI+D9y42+zO3hE=;
        b=GrxSVxXZQC3Ro2hfu0ACxK0shCPWiNaobmZ5xJSHRLof565iGNVqtYUxljC2OrLref
         /tl5vQOoKf0lwgBmsOm2u0DTh6w4QyLzpikWtHamwud1pG1Ux0syZB9Pqis1IaPdXp6C
         VEojDmoGUggenMCN5pdIvgSL+3hDy5m9DK3eeLZSaTAywhiR6aTh3zzpmv6Cq8Y3TD2J
         LPPyIjqO83I9HTV/Zt2r3M5Hv8gjGZffMtglJcAoTtrcwDwMFz/okOBGYm5c+XAcB2WL
         ldq4YZa0I9uGG41TqccTyxuimdp/Nj3k69c+hzEKIRRZ0dT/n6R3LLo2GNPuZ15uR1sJ
         8DJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kr0FlhbSYN43MZnmXtqYsaxH/sV8SQI+D9y42+zO3hE=;
        b=uyzcRw455cGO0hxX5zy6OF0qn6BsenqTeuEmODdHEatJF9j+14zshDoo2zHEEQorMu
         zqT70mY+OtIBOiCkx1rbQDY4jN6HZ49GHi2TRE/ugArCsT71LVj5K9AgAS+Il9lPgT+W
         DNGhpIYSncaoXFZzwxmDaeU7O2+MAqphqkMriJ00tVp51BgLqiMX5U5wmfP/0JfsCoq2
         NoFj9rEpGOyXZdvUTR5eHBJKL2fToSXipdXMGlt952PgpXbdO5Wo2eFOwCSmYJvdM6PF
         fFpgoIzYdu7PneyU6ZOGRRl1lj25+/pgok7Ak0GcEcqBHKaCq1gxrNhyQlNl4+RUz3LX
         UZwQ==
X-Gm-Message-State: AJIora/i6OFlp+sPoBj2VsuzZf736sbxgpLr+9S/VJaBV6d8pFf+2G/x
	TSkYOVzzgaj53I2QNIFlwlkchiOSbYerewY4pzRu8W6H
X-Google-Smtp-Source: AGRyM1sWLuL4ik+rAn7RqPLFT+3NwIlTgUVqdIs1G6hDPULt/QzYiFZJY4DuXIFXm1XWzouf9NC/dFtaPGIcYQ0asrM=
X-Received: by 2002:a17:907:3f12:b0:72f:b537:4a0 with SMTP id
 hq18-20020a1709073f1200b0072fb53704a0mr785957ejc.40.1659048481159; Thu, 28
 Jul 2022 15:48:01 -0700 (PDT)
MIME-Version: 1.0
References: <WNuX1RAxDMoc9fWPv8LiDBJv5z5W2Y4T6qJKxpcDZ0U@lists.ettus.com>
In-Reply-To: <WNuX1RAxDMoc9fWPv8LiDBJv5z5W2Y4T6qJKxpcDZ0U@lists.ettus.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 29 Jul 2022 01:47:49 +0300
Message-ID: <CAAxXO2Hh7vns3bnQgbcAWEDr=Uo9ju+FSXEzhutpFqLRx5+25Q@mail.gmail.com>
To: yanzhanggc@gmail.com
Message-ID-Hash: BM7OCEOP3JUNRYAFKBNEOTSVSIKBKZ6R
X-Message-ID-Hash: BM7OCEOP3JUNRYAFKBNEOTSVSIKBKZ6R
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E312 low level access to control AD9361
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BM7OCEOP3JUNRYAFKBNEOTSVSIKBKZ6R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

_tx_freq is an intermediate frequency.
It is defined in:
uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.h
If you need to modify uhd, you really need to install ctags, and grep
the sources...

HTH
Nikos

On Thu, Jul 28, 2022 at 10:42 PM <yanzhanggc@gmail.com> wrote:
>
> Hi, all,
>
>
>
> I have a E312 device and I just find that the tuning speed of E312 is very slow (~150ms) for each tuning. Thus I would like to modify the underlying tuning source code in the uhd software architecture.
>
>
>
> Here is what I found:
>
>
>
> I first create a multi_usrp object:
>
> uhd::usrp::multi_usrp::sptr usrp = uhd::usrp::multi_usrp::make(device_args);
>
>
>
>
>
> then I tune the usrp by running a loop:
>
>
>
> int count = 200;
> for(int a = 0; a < count; a++) {
>         uhd::tune_request_t tune_request(600e6 + a*10e6);
>
>         usrp->set_rx_freq(tune_request, 0);
>         usrp->set_tx_freq(tune_request, 0);
> }
>
>
>
> Basically, the loop tunes the frequency from 600MHz to 2.6 GHz with a step size of 10 MHz. The 200 tunings take 52 seconds, which is pretty slow.
>
>
>
> Thus, I traced the call stack from usrp->set_rx_freq(tune_request, 0). Here is what I found:
>
> usrp->set_rx_freq(tune_request, 0);  calls the method set_tx_frequency() in uhd/host/lib/usrp/dboard/e3xx/e3xx_radio_control_impl.cpp
>
> then the method set_tx_frequency() in uhd/host/lib/usrp/dboard/e3xx/e3xx_radio_control_impl.cpp calls the tune() method in uhd/host/lib/usrp/dboard/e3xx/e3xx_ad9361_iface.cpp
>
> then the tune() method in uhd/host/lib/usrp/dboard/e3xx/e3xx_ad9361_iface.cpp calls the method set_tx_frequency() in uhd/host/lib/rfnoc/radio_control_impl.cpp.
>
>
>
> The conclusion I have reached so far is the underlying tuning method is in  uhd/host/lib/rfnoc/radio_control_impl.cpp:
>
>
>
> double radio_control_impl::set_tx_frequency(const double freq, const size_t chan)
> {
>     std::lock_guard<std::mutex> l(_cache_mutex);
>     return _tx_freq[chan] = freq;
> }
>
>
>
> Then I just got stuck here, what is the _tx_freq[chan] ? I just can not find more.
>
>
>
>
>
> What I want to do is to modify the underlying ad9361 driver, so that when tuning a frequency, I can bypass the calibration in the ad9361 to speed up the tuning speed.
>
>
>
> Can anyone point me to 1.where I can find the source code for tuning for the E312 with uhd 4.0 or 2. how to use mpm to get low-level access to ad9361 so that I can write my own tuning method for ad9361 ?
>
>
>
> Thanks,
>
> Yan
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
