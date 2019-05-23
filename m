Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6147D28490
	for <lists+usrp-users@lfdr.de>; Thu, 23 May 2019 19:10:55 +0200 (CEST)
Received: from [::1] (port=52026 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hTrF0-0001ec-9j; Thu, 23 May 2019 13:10:54 -0400
Received: from mail-qt1-f175.google.com ([209.85.160.175]:41502)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hTrES-0001W3-5H
 for usrp-users@lists.ettus.com; Thu, 23 May 2019 13:10:50 -0400
Received: by mail-qt1-f175.google.com with SMTP id y22so7600738qtn.8
 for <usrp-users@lists.ettus.com>; Thu, 23 May 2019 10:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=4tEq5II9DbYUFpHeKSm7IksEVa7xOeNHssgW78yuoFc=;
 b=BnO2spAu0bigR/rYV3Pt0558SnX/2RWuDFUbReMijJbt5zGZ2WGRCbbE5bITbPJ1rQ
 Q4CspjnmZi8gxF/LBxhKERPCP9UiX7ZePOBwTPKdkwkZucJAAEyXEZi+KCz5BDLrMHRB
 ogqD6WupGDb1o4aVpuziGKFZtcE1YzPXao6PRlSBBHLB0sWFD5Xmw5joqYL5QlX6yTeI
 4VkjcYdm2EZ6F6wczKqC/uC6moEj4JuAkdAyxprQw/1+tc+N+K6aWUADeMSNjtFEL/XU
 MWXKE7ubrqPGs1hqxuO5uR5tp/Pgf+wFuW3OCnmBvnPjglcKE1OMOTygIH9zQec8d34G
 hI1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=4tEq5II9DbYUFpHeKSm7IksEVa7xOeNHssgW78yuoFc=;
 b=P/13dS74oMplJj/eVozD8giloWa+nosQ/O13/laeJNMoKKgJ5QKTTdEGIDoYttwZ3B
 j7Srq6jwoF1uClIH9ykEp2iUvo/IZKIPRjLDNJil6eyJ945N5YOP/5QJRvrZX5kz3siz
 sT2nHp4d6N+6LzRAhECrNI5bToTBYQGB3VB6TyE1oisZbbDCK/7/F50m2eEODBd4It5c
 RhekIxoL+S0yn76jfp87r3c6sMJfTz8INHSLc8uPIZWFd3Q2ADjKLZiax+EuK7vV4zw9
 xLB5NJ+UMOKIBZtyVshu+oxzUMPeImezk1SH1mKx5cpDW6eZsk50q2bS6j8pUanP9EnJ
 P6LQ==
X-Gm-Message-State: APjAAAXv/FOU05Hr0vznFWBJH8PailjFC7kJ3d5Sg6wIWQHkJQVNp0xJ
 vlmE5BB9+6bB7IxxtS7JGcM3VqREN2c=
X-Google-Smtp-Source: APXvYqwwdDhrwdI4gzrm13y2uIgrmmacmCk2Gh1jKSg5Wn+ALfx6HVN8Ykf9wqxniPfzr6/EbJOEsw==
X-Received: by 2002:ac8:2df9:: with SMTP id q54mr81433238qta.10.1558631379399; 
 Thu, 23 May 2019 10:09:39 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id u5sm15229697qtj.95.2019.05.23.10.09.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 10:09:38 -0700 (PDT)
Message-ID: <5CE6D3D2.3090209@gmail.com>
Date: Thu, 23 May 2019 13:09:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Vladica Sark <vladicasark@gmail.com>, usrp-users@lists.ettus.com
References: <e83f1284-23a4-ac57-8943-993b9d6201b5@gmail.com>
 <f57ef582-b99a-aaf9-0f0c-0e724dffacad@gmail.com> <5CE6C08E.8050302@gmail.com>
 <61986861-6b31-6286-6d98-7e4d4f66c8da@gmail.com>
In-Reply-To: <61986861-6b31-6286-6d98-7e4d4f66c8da@gmail.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Multiple TX streams
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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

On 05/23/2019 01:02 PM, Vladica Sark wrote:
> I am using 1 Gb ETH interface. The sample rate is the default for 
> tx_timed_samples, i.e. 6.25 MSps. I am getting no underrun indication.
> The tx_timed_samples sends the samples to the radio and schedules the 
> transmission 1.5 seconds in future. If I put only 1 radio, i.e. one IP 
> address, everything works perfect.
> With 2 IP addresses (two radios), sometimes reports success sometimes 
> fail. It seems completely undetermined.
Could you share the error output with us when you use tx_timed_samples?


>
> BR,
> Vladica
>
>
> On 23.05.19 17:47, Marcus D. Leech via USRP-users wrote:
>> On 05/23/2019 05:39 AM, Vladica Sark via USRP-users wrote:
>>> Hi again,
>>>
>>> I found an easy way to reproduce the problem. I use two x310's and 
>>> run the tx_timed_samples as:
>>>
>>> tx_timed_samples --args "addr0=192.168.50.2,addr1=192.168.130.2" 
>>> --secs 0.5 --nsamps 1000000
>>>
>>> sometimes it fails, sometimes it works. I use larger number of 
>>> samples to be able to notice the LED blinking.
>>>
>>> BR,
>>> Vladica
>> Are you getting any under-run indication?  What type of ethernet 
>> interface are you using, and at what sample rates?
>>
>>
>>>
>>>
>>> On 23.05.19 08:36, Vladica Sark wrote:
>>>> Hi folks,
>>>>
>>>> I have 2x X310 connected to Octoclock (10 MHz + PPS), each with 2x 
>>>> UBX frontends. I control them from a C/C++ program. Since there are 
>>>> 4 channels, I create 4 tx streamers in order to transmit timed 
>>>> samples on each of them. The transmissions are not at the same time 
>>>> and this is the reason for using 4 tx streamers. The problem is 
>>>> that when I schedule timed transmissions on all of the channels (at 
>>>> the same time for test), sometimes I do not get anything with 
>>>> recv_async_msg, i.e. the timeout expires. This also happens even 
>>>> when I schedule only a single transmission from single tx streamer 
>>>> (all 4 streamers are created).
>>>> Sometimes it happens that everything is working without problems, 
>>>> i.e. I make 200 transmissions on each of the channels and I get the 
>>>> proper response from the recv_async_msg, but many times, restarting 
>>>> the same program leads to just recv_async_msg with expired timeout. 
>>>> I am using UHD 3.13.0.
>>>>
>>>> I can probably use one streamer and transmitting 0's on the rest of 
>>>> the channels, but I would like to avoid LO leakage in the air.
>>>>
>>>> Best regards,
>>>> Vladica
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
