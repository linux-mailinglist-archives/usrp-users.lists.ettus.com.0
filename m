Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 880842BC18A
	for <lists+usrp-users@lfdr.de>; Sat, 21 Nov 2020 19:44:35 +0100 (CET)
Received: from [::1] (port=59336 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kgXs6-0007OK-La; Sat, 21 Nov 2020 13:44:30 -0500
Received: from mail-qt1-f179.google.com ([209.85.160.179]:37631)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kgXs3-0007Kg-2S
 for usrp-users@lists.ettus.com; Sat, 21 Nov 2020 13:44:27 -0500
Received: by mail-qt1-f179.google.com with SMTP id e10so2288828qte.4
 for <usrp-users@lists.ettus.com>; Sat, 21 Nov 2020 10:44:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=1qrWT1S+h4/lXqUk3A42QEihYyvlcH5tOynKKxdWCmQ=;
 b=cfXseJKMAI0UhAMNZMsc22PK2moNT7oVBXYCKrzpz9b7fD3WWNSHnrR0FU0x1t1ZiR
 wx+Kp2oGR3kRQ4EFbREez/lx4MX5fQc4Dt69QZ+Twe5jCVcbFsu3GppPcm1Vp6rWhG1T
 +sQHgy2eVkbfKjIS+L3ksesJYqXZRl8UzDHpj6gvYUxeResFwLBLiu0toZ9UZPv981RE
 0jZPhbwJslI8ovQxnly+oXjxk0oQjxRN4/EVW4IH2lnxJ8oXaVD7JpZMq5jat5Yi1vrH
 eI+W6vgKkGnh48Aro5sJTffM4fIYo+i+3vVikB+Tr32FN5b2ZDba5v1djPjsY57PBYnD
 bAuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=1qrWT1S+h4/lXqUk3A42QEihYyvlcH5tOynKKxdWCmQ=;
 b=lrj78iuII0/txdEbl8sw1PGYayE4CBV5CTu19Tckt5+lWvAtRdk7Aetjd3J45L4xqa
 mG4iZ5fkBnGIC8/1AP8JmSeXrOiu+hU7Pn5CWw5elnyN4l7Zhkw6abHMERHQPXMkYXEa
 vMDxJWLbho6Opdx4mbSJ9dcgq63ij+jHNzrHs2dJQ0vHMHtYi9BnQ38OIywr5v/ySqxu
 FJSDXFzVdeoIJI0+bS6HwF3DnzCQlvly/7S7rGdWlCPPc43BEBwyGWWXwBZ7Ell2d+ES
 /iuAj8Sz7JCsPfivlrLThVcd1Jl8QWkMj2wCizCu2rzwzRcsH1Gk0T5MncY/jHLRkljC
 rd6Q==
X-Gm-Message-State: AOAM531MuUds6QPRI/2DCYXTn1tDcXnhaW47kHvyabAj6Kt+cDJ6huqf
 lH6E0mNr/JaAwC5/7cYfB9PBOofiswI=
X-Google-Smtp-Source: ABdhPJxatcS66x4F6YQlEHsvgja5DVsSUSK2fWIRSDP9VgUMOgM9mT3oY01GibBQbdJJAHnZILeQ7w==
X-Received: by 2002:ac8:4507:: with SMTP id q7mr22327775qtn.49.1605984226257; 
 Sat, 21 Nov 2020 10:43:46 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id o13sm414974qkm.78.2020.11.21.10.43.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 21 Nov 2020 10:43:45 -0800 (PST)
Message-ID: <5FB95FE1.3060206@gmail.com>
Date: Sat, 21 Nov 2020 13:43:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Dustin Widmann <dw2zq@virginia.edu>, usrp-users@lists.ettus.com
References: <389b50bdd4933609c1d2edf5aea66d272802475d.camel@virginia.edu>		
 <5FB5ADDB.4030608@gmail.com>	
 <7f74f5e9fd21affec4856445c013b9dea6f58c2f.camel@virginia.edu>	
 <5FB5C4E0.7060201@gmail.com>
 <7580d45f2b0de0676988b77bdfdebab22866e1b7.camel@virginia.edu>
In-Reply-To: <7580d45f2b0de0676988b77bdfdebab22866e1b7.camel@virginia.edu>
Subject: Re: [USRP-users] X310 UBX digital tune not occurring?
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

On 11/21/2020 08:28 AM, Dustin Widmann wrote:
> Marcus,
>
> I tried it without timed commands last night. It was landing on the
> same frequencies as it did with timed commands i.e. didn't fix that
> problem.
>
> Dustin
OK, thanks for doing the test.

I wonder if you have a precise signal generator so you can confirm that 
the RX side is on-frequency?


>
> On Wed, 2020-11-18 at 20:05 -0500, Marcus D. Leech wrote:
>> On 11/18/2020 07:34 PM, Dustin Widmann wrote:
>>> On Wed, 2020-11-18 at 18:27 -0500, Marcus D. Leech via USRP-users
>>> wrote:
>>> Marcus,
>>>
>>> Oh, sorry, I missed the first bit. I'm using the on-board clock.
>>> And
>>> perhaps I should explain the table with a little bit more detail:
>>> * 1st col: The *target* frequency. The RX was tuned to this
>>> frequency.
>>> The TX was tuned to that frequency + an offset (in this case, 50KHz
>>> for
>>> all datapoints).
>>> * 2nd col: Where the tone is expected to land, both bin and
>>> (baseband)
>>> frequency; in this case, a 50KHz offset for all datapoints, which
>>> corresponded to bin 524 with a 2^20 FFT.
>>> * 3rd col: where the tone was observed (both bin and frequency).
>>> * 4th col: difference between the target and expectation
>>> * 5th col: dsp freq (from uhd::tune_result_t.actual_dsp_freq)
>>> * 6th col: what the difference would be if I offset the observed
>>> frequency by the claimed dsp frequency
>>>
>>> Dustin
>>>
>> Right, I understand the chart now.
>>
>> So, this is rather odd.
>>
>> I assume this is under timed commands, yes?  What happens if you
>> don't
>> use timed commands--just to check to see
>>     if the DSP frequency change is getting skipped under timed
>> commands?
>>
>>
>>
>


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
