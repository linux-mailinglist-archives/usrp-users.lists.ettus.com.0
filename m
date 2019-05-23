Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E563C2819E
	for <lists+usrp-users@lfdr.de>; Thu, 23 May 2019 17:48:44 +0200 (CEST)
Received: from [::1] (port=59960 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hTpxT-00087L-DT; Thu, 23 May 2019 11:48:43 -0400
Received: from mail-qt1-f181.google.com ([209.85.160.181]:39454)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hTpwv-0007rw-5z
 for usrp-users@lists.ettus.com; Thu, 23 May 2019 11:48:39 -0400
Received: by mail-qt1-f181.google.com with SMTP id y42so7283302qtk.6
 for <usrp-users@lists.ettus.com>; Thu, 23 May 2019 08:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=0NdDWFaRXIFIgnXR2ysK7r3rhD0ygYvJTXIqgmnq7Xc=;
 b=Vgsi5vSWEvFSTzn3UQdSyrRPSKiID1sPv58Kg2PVnKG9PKhRwDCv2HJcWxCmE9PCPU
 wZsS20DDEXGitpwFxdbq5urDHQByclgFxS90CSpalPgqYpgyHPfbWiII8ZwsnHnkLT3/
 rUuWbHJku+008e0ZnDbo+EkkC+92WNLaSjM63bS1TEHQPlQvUcXmzmXj2PH50PpHkqFq
 SE9MmK5GAGfOTM1KUkSuaMk0yEJLFQFw/SkqvSksmS6Y5kmj+CNvaXZZyRAp94Kqw0n+
 v8cQxsxa31Hc3RF3vLVUYyongxpHZjnf7djvXIWavW9Qk0A7ya5V3OrOfOPi1C06Ud5j
 zMYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=0NdDWFaRXIFIgnXR2ysK7r3rhD0ygYvJTXIqgmnq7Xc=;
 b=PGVSWw5gmrkaFfyRvNk7wn8MZ0+z3KvTISJ4oO9VG+2eCe5lNTglqOQMDYYIhhl74T
 VAXc4UjzKCD9oR550Vxzkf/6zd+9f9v7yu0ms8L4Rabw6kDjC7DbXs9ZJSkxsdWVd/39
 nNBwPi2AvLw0lX90Hpv4hsKLcE+kQiwst0FyXam03YSNe7FLmrcYfuwNy/yACzY2gTNi
 jgUe81Ks/+nSbgDoQ9e5urmRowdWYALuvdBMEQYJqvrmBsBmtnre8yj7K2oBoGIs73gw
 ymyMMvQhuTCs3hoLP4NOf/4XX3UGE/sN/qHTJIuncAyxRiNI6aNZSRfDjo1o177aQ3dY
 TPPw==
X-Gm-Message-State: APjAAAWdvZXuP0bofoeqVTy2ck5CjVw3SHpLYZEFswVIr77UeZGVL/Vo
 jxgE6C4zRfzBNIN5i3nuW9fym9BnaLI=
X-Google-Smtp-Source: APXvYqwioTv9ILLVNzqli2aTtk18c3DZCfB/5R7Tg+WH6xRVVNaS3yYBZAQCuQ2S7rumoRM/XdCLnw==
X-Received: by 2002:a0c:932f:: with SMTP id d44mr70334912qvd.187.1558626448515; 
 Thu, 23 May 2019 08:47:28 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id m8sm18050096qta.10.2019.05.23.08.47.27
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 08:47:28 -0700 (PDT)
Message-ID: <5CE6C08E.8050302@gmail.com>
Date: Thu, 23 May 2019 11:47:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <e83f1284-23a4-ac57-8943-993b9d6201b5@gmail.com>
 <f57ef582-b99a-aaf9-0f0c-0e724dffacad@gmail.com>
In-Reply-To: <f57ef582-b99a-aaf9-0f0c-0e724dffacad@gmail.com>
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

On 05/23/2019 05:39 AM, Vladica Sark via USRP-users wrote:
> Hi again,
>
> I found an easy way to reproduce the problem. I use two x310's and run 
> the tx_timed_samples as:
>
> tx_timed_samples --args "addr0=192.168.50.2,addr1=192.168.130.2" 
> --secs 0.5 --nsamps 1000000
>
> sometimes it fails, sometimes it works. I use larger number of samples 
> to be able to notice the LED blinking.
>
> BR,
> Vladica
Are you getting any under-run indication?  What type of ethernet 
interface are you using, and at what sample rates?


>
>
> On 23.05.19 08:36, Vladica Sark wrote:
>> Hi folks,
>>
>> I have 2x X310 connected to Octoclock (10 MHz + PPS), each with 2x 
>> UBX frontends. I control them from a C/C++ program. Since there are 4 
>> channels, I create 4 tx streamers in order to transmit timed samples 
>> on each of them. The transmissions are not at the same time and this 
>> is the reason for using 4 tx streamers. The problem is that when I 
>> schedule timed transmissions on all of the channels (at the same time 
>> for test), sometimes I do not get anything with recv_async_msg, i.e. 
>> the timeout expires. This also happens even when I schedule only a 
>> single transmission from single tx streamer (all 4 streamers are 
>> created).
>> Sometimes it happens that everything is working without problems, 
>> i.e. I make 200 transmissions on each of the channels and I get the 
>> proper response from the recv_async_msg, but many times, restarting 
>> the same program leads to just recv_async_msg with expired timeout. I 
>> am using UHD 3.13.0.
>>
>> I can probably use one streamer and transmitting 0's on the rest of 
>> the channels, but I would like to avoid LO leakage in the air.
>>
>> Best regards,
>> Vladica
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
