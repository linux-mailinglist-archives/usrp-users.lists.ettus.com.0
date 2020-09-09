Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E232628A6
	for <lists+usrp-users@lfdr.de>; Wed,  9 Sep 2020 09:29:01 +0200 (CEST)
Received: from [::1] (port=58306 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kFuXJ-0003I4-KG; Wed, 09 Sep 2020 03:28:57 -0400
Received: from mail-ej1-f48.google.com ([209.85.218.48]:45152)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kFuXF-00034D-L7
 for usrp-users@lists.ettus.com; Wed, 09 Sep 2020 03:28:53 -0400
Received: by mail-ej1-f48.google.com with SMTP id i26so2025257ejb.12
 for <usrp-users@lists.ettus.com>; Wed, 09 Sep 2020 00:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=ywCL4+yzPRmrj0ynuMwzPdAqB4RG8oXmnkVhmhlaXA4=;
 b=CyTPOibkfvr2zkVTgpG4YLknOukPhFjBqWxYmaicN8eDwJj+VSzVzfDbboRqvzz/+J
 MnVJChhC6Hw3iETb+8TtB1+uw9JwzGOzaTvVm+xWdtME4G0uuQVfJOTxk28f8jv+v9d7
 HWruv5KB0R6rlEuZ6mqhAVMRmVZhIG6WGs9qosHgc865xv4dV6N7N197cfXu1j72i82u
 Ny1Oktx5PjM9EESMM9BgeegKXqA6vEGWh18thnQgqEimCsI2Qw4fyMniikQx5FAXPAP3
 BKYgNE0kLDSTOG57inADM3Dck9SufNoLQ/HZa4vf637wwHufxOZ/0Nmfui6RCENu3+MV
 eP8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ywCL4+yzPRmrj0ynuMwzPdAqB4RG8oXmnkVhmhlaXA4=;
 b=G9dC1WNdpIGkGH2A1nFJckhg9c/rfnFRe4SwQbqx3T81UwSjG+ol5irZ4Qzt7J6fn9
 ItmYrYYAr69pZHmIaupNSrFEHJUFlnOqFsp9AkNXrOINsVds5IFlNJgzmOWHpsuSJ2lF
 vCOVXvs65WObZHDQx+cvPJXYb+SsaGnp5EZHAN6ln4XzSfaRhzTZLPpSNdMoxy+/4E13
 vP+ApzP2iU58VmoA7QwHdEPqvpOtD3YdyMHfD+YEINPwAlMTLAXYXuCwtEqKJtnbxS8t
 qAMSmlkrKdFBctwrF3plKt/OGBZuQxU0t6JWIh0QwvPTpC14MsHgfDtRzJiJduBiTDzV
 mwTA==
X-Gm-Message-State: AOAM531/dJr87D2XRc5sm/ubqj13mSHcMBrlqMr9n1dbfuhvwuADj7g/
 ZsPSUx5EwrMrFiOAqd320nBOAQuiBW1uw27X4kU=
X-Google-Smtp-Source: ABdhPJw3IcLMdnS+IyXNVzf5748wHsTlVyP9VPg5Yg138mNX02a35TQYBaVDJjoMtoU7/6grmfxXeg==
X-Received: by 2002:a17:906:874f:: with SMTP id
 hj15mr2416348ejb.539.1599636492156; 
 Wed, 09 Sep 2020 00:28:12 -0700 (PDT)
Received: from ?IPv6:2a02:8071:2c80:c4f0::e6a? ([2a02:8071:2c80:c4f0::e6a])
 by smtp.gmail.com with ESMTPSA id k9sm1232763edr.3.2020.09.09.00.28.11
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Sep 2020 00:28:11 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <mailman.44.1599580802.32464.usrp-users_lists.ettus.com@lists.ettus.com>
 <CACDReSzm2jTnnq7YLENKr==RCZy2_epGo0Tce6yrxDtFy49sNQ@mail.gmail.com>
Message-ID: <9f6e3cf9-46ae-1fd8-bcb3-62cfbf0d2e8d@ettus.com>
Date: Wed, 9 Sep 2020 09:28:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CACDReSzm2jTnnq7YLENKr==RCZy2_epGo0Tce6yrxDtFy49sNQ@mail.gmail.com>
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

On 9/9/20 5:46 AM, Ofer Saferman via USRP-users wrote:
> Thank you Marcus and Martin.
> Maybe I will try to explain what I am trying to do and you can correct
> what I am doing wrong.
> I don't want to stream the samples. I understand the limitations of the
> ARM processor.
> What I would like to do is to record (capture) samples to DDR memory in
> real time. Only one block of samples.
> Then, write that block, offline, to the SD card as slow as necessary. So
> definitely no streaming to SD card.
> This should be possible and not related at all to the speed of the ARM
> processor. It should be handled by a DMA of the FPGA directly to DDR
> memory and the FPGA should be fast enough to handle the task.

Ofer,

UHD won't initiate direct DMA if you do that. Every packet of data
coming from the FPGA needs to go to the CPU first.

If you want your samples to DMA directly to memory, you need to do
something like this: https://www.youtube.com/watch?v=Y8QQ0sh5IhI

rx_samples_to_file is a generic tool that works equally with all USRPs,
regardless of their transport type.

--M

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
