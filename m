Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FCB2977CA
	for <lists+usrp-users@lfdr.de>; Fri, 23 Oct 2020 21:33:45 +0200 (CEST)
Received: from [::1] (port=41438 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kW2oq-00064X-CJ; Fri, 23 Oct 2020 15:33:44 -0400
Received: from mail-qt1-f174.google.com ([209.85.160.174]:34212)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kW2ol-0005xE-SF
 for usrp-users@lists.ettus.com; Fri, 23 Oct 2020 15:33:39 -0400
Received: by mail-qt1-f174.google.com with SMTP id h12so1873476qtu.1
 for <usrp-users@lists.ettus.com>; Fri, 23 Oct 2020 12:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=Kqke/tqb/zy/8MkILJqf/SM5fS4TNY7pDAYV94M1YGM=;
 b=vSIb4VaKM8UlklWZ+PYqz5sg7O1Vj+/3doNt25zYH2urplKo34gpFwz+Sivf9FQLfU
 8KLTtvw4lMlj1plAGMK33o9rBi1+gSxz35/EgOgtpYjlwrSNaMMCqeG49x/ClYPeb6qy
 8pKBN2yxBQ0TFuABdeZkFQK0SjfTHz40TWgbdUUvJsvWsoNusynxbHsQVHarJKliUXYO
 eagOKbE6tePTIEzrN5dxaJck10u4KzWLpUpctEyiIPKYWLSnpn+2Yq0WoqhgL5P5U9sP
 pI24C8AxGmFeGa/Ex2kJ2Q+AByx0z4SsaV7XgMQjpJQvqHzmHWagiwbXbyk/gRJ9A1pi
 FnTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=Kqke/tqb/zy/8MkILJqf/SM5fS4TNY7pDAYV94M1YGM=;
 b=UFQWe18uLBVeNRfyQnHo5GAKmUHHELOFtmEvlHEJxXKEf28WEvhWTW0vp93NN/IwbL
 MnXERN/7dQzgmD173AoUS7vLw8DNkvY60AT5Z5msHfvVdMEbtUryHdPOT0gr5vyTIlG8
 hDh9kioAeM8sO/rrr66rCH3elRShDUjS9Ctx8rbnabgQ9hwD3+lSsrg9QJ6k2rxWS5Xx
 MbF6bx0pHC59viAUu1fkCijrJaW/TZu2J6UIgT0fnBezGHyyZdrk+E8tx3UJ74UKE+H9
 yuwDdMI74Ue+gHiJ897z2KhMJ3/Ua4oJ9VAbPuUeDIu8VAVGkxxXmR/jXy4JK0p/gqtZ
 JXzQ==
X-Gm-Message-State: AOAM5334FvkoANZDZ1K8BfMKOIe7BAl1LCEDxUpViXY77stspv0oHZAy
 XDUSerC93uE+Z0ALzMb6cZ4aVpIbrmjflA==
X-Google-Smtp-Source: ABdhPJzDZEw0jVUn3qCo1wFpLMWpvc5S0YcmPDKBvITiROrnBX6c2uQc7QttoxNdpGpruNjcOqZqsw==
X-Received: by 2002:ac8:5a53:: with SMTP id o19mr3767830qta.183.1603481579078; 
 Fri, 23 Oct 2020 12:32:59 -0700 (PDT)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id b23sm1427892qkh.68.2020.10.23.12.32.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Oct 2020 12:32:58 -0700 (PDT)
Message-ID: <5F932FEA.4010402@gmail.com>
Date: Fri, 23 Oct 2020 15:32:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Jon Beniston <jon@beniston.com>, usrp-users@lists.ettus.com
References: <011c01d6a95b$6570aed0$30520c70$@beniston.com>
 <5F9308DC.3000306@gmail.com> <013101d6a96a$1e911360$5bb33a20$@beniston.com>
 <5F932C22.60505@gmail.com> <013501d6a972$dec8dd40$9c5a97c0$@beniston.com>
In-Reply-To: <013501d6a972$dec8dd40$9c5a97c0$@beniston.com>
Subject: Re: [USRP-users] B210 set_tx_bandwidth and LO leakage
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

On 10/23/2020 03:29 PM, Jon Beniston wrote:
> Hi Marcus,
>
>>> It seems to make a difference if set_tx_bandwidth is called before or
>>> after get_tx_stream.
>>>
>>> In the example programs, they all seem to do it before, however, it
>>> appears to work better afterwards. Please see the attached two
>>> programmes, which are basically just your tx_samples_c program, except
>>> I've added in calls to set_tx_bandwidth and set samples to 0.
>>>
>>> I run with the args: -f 868300000 -g 89 -r 6000000
>>>
>>> For lo_leakage_pre.c where bandwidth is set before get_tx_stream,
>>> carrier is at -1dBm. For lo_leakage_post.c, where bandwidth is set to
>>> 56M before get_tx_stream, then 6M afterwards, carrier is at -30dBm.
>>>
>>>
>> Yup, so the default behavior in UHD for B2xx is to set the analog bandwidth
>>   to be commensurate with sample-rate, and that is done inside the
>> parts of UHD that set sample rate--sample-rate setting is done before
>>    you create a stream.
>>
>> So a set-bandwidth call will only have an effect *after* the sample-rates
> are
>>   established.
> Sorry, but I don't follow. The order in the example programs is:
>
> set_tx_rate
> set_tx_freq
> set_tx_bandwidth
> get_tx_stream
>
> So bandwidth is set after tx_rate, but before getting the tx_stream.
> However, this seems to result in large LO leakage on my B210.
>
> What seems to work better, is:
>
> set_tx_rate
> set_tx_freq
> set_tx_bandwidth(56e6)
> get_tx_stream
> set_tx_bandwidth(desired)
>
> Does that make sense to you?
>
> The software I'm working on should ideally work with any USRP device, so how
> can it be written to support all devices?
>
> Thanks,
> Jon
>
>
There is likely some "setup" stuff done to the AD9361 chip during stream 
creation, because the chip needs to know about the stream parameters
   it would not surprise me to find that there's some filter-setting 
done during stream creation.

Calls like set_bandwidth, set_gain, set_frequency can all be done after 
the stream is created, so your ordering should work on any USRP device--
   although I'll point out that there are significant swaths of the USRP 
universe where set_bandwidth does nothing.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
