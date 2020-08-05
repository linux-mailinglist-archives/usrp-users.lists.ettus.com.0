Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E44C323CCA9
	for <lists+usrp-users@lfdr.de>; Wed,  5 Aug 2020 18:57:27 +0200 (CEST)
Received: from [::1] (port=42334 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3MjD-0001rO-Ur; Wed, 05 Aug 2020 12:57:23 -0400
Received: from mail-qv1-f67.google.com ([209.85.219.67]:42189)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k3MjA-0001ky-9o
 for usrp-users@lists.ettus.com; Wed, 05 Aug 2020 12:57:20 -0400
Received: by mail-qv1-f67.google.com with SMTP id b2so10471711qvp.9
 for <usrp-users@lists.ettus.com>; Wed, 05 Aug 2020 09:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=PWZcc1fDZCi7zCrWsfE5dmRNOeUxCedgjNsdIBaWSdg=;
 b=GkN+oGph9gZJQCLbXqR9kwT9df3tms0OomvYb9o6P+bHvZ3hSTeVYOknUrbB3w/6yl
 7CM/Fg6OWGqSPVv+8fns/+FSqDN9T+bVUtMQ2vbTV8KSOKCJj2BNPj/hzpUExXOTNJmL
 SlntkQqkKLlYy4E3n3LqzPPFAlilt5E/7Lpg4QbcmI8O8EnxTopycMf3R/BWtopdsd8h
 dWH0+Gf2B+oWDJd0GK0FZ/HYtVKZ91lbiCG2P5wX7swtYwftZheRdxGvyjz1vFq5zW2m
 iCfDVKDizmjj5Yr6KmlApJtNGDpHQDX/+VWiumMKh2ul7Om/uh4ftLfoXvjTIt554p4Y
 5miQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=PWZcc1fDZCi7zCrWsfE5dmRNOeUxCedgjNsdIBaWSdg=;
 b=K/fSmQ6dufLakNfts3SAIw8P7Am/qN97ZeRQPDtBXOl/stI7vba0X6ze83o/4X6quX
 vdemd2G7A0a6wxVZJqs3TDqmSu/aa2kw8ig9PYpyDUClMFVUhkwCUDfjAVH02AtG9tW+
 B6IwxoK5BhGU3vUjsVErwkSBUDWs6Ms36yXg4wHYxpbw9JCNduWZnycBxv1PybmhZHA+
 FtPW4jn2fnMoAnwCcnxh9wZw0/pUkbstWynXVnZMOhKXl7ltQS5aTmtclVD52vdr8ToF
 lLJRIxiXlo9qDc27kagoxKMTQF6+rvJq3AjcuZZV7Pe/xGXNWrukPeR/vQAF+mTrC647
 WpDg==
X-Gm-Message-State: AOAM530FIaMQWiZpcXfOrCsqi4106PsuzqoqkFCIUE0tA3Xg1GXEMU38
 fVT7yEd6L22EVeLUvDNlbjx9vtbqtl8=
X-Google-Smtp-Source: ABdhPJzRNtw/T3WsSJstk4LFbsiNpNKFliILF+5gZgrBiAcKqswIgWSCpx6iiotXSxBSoEztrStzbg==
X-Received: by 2002:a05:6214:2f0:: with SMTP id
 h16mr4608358qvu.201.1596646599224; 
 Wed, 05 Aug 2020 09:56:39 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id q16sm2024897qkn.115.2020.08.05.09.56.38
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Aug 2020 09:56:38 -0700 (PDT)
Message-ID: <5F2AE4C6.7000402@gmail.com>
Date: Wed, 05 Aug 2020 12:56:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAH2Hh73H+WuztDZjzi3EgtACouxp7teR8y=aA6qYthZ24vyvsQ@mail.gmail.com>
In-Reply-To: <CAH2Hh73H+WuztDZjzi3EgtACouxp7teR8y=aA6qYthZ24vyvsQ@mail.gmail.com>
Subject: Re: [USRP-users] B200 GPSDO Specs
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

On 08/05/2020 11:38 AM, Aaron Smith via USRP-users wrote:
> Hello,
>
> I am trying to understand the spec for the Ettus TCXO for the B200, 
> and for GPSDOs in general.
>
> The performance when the oscillator is unlocked is clearly stated as 
> 75 ppb. The spec says this deviation is primary driven by temperature 
> (Frequency Stability Over Temperature = +/- 7.5e-8)
>
> What spec should be most indicative of the performance while locked?
>
> I notice the ADEV is 10 ppt at 1 second. Is this the timescale that is 
> most relevant for the B200's PLL?
>
> Is there a component in the B200 that would limit the radio's 
> frequency accuracy or stability, given a perfect external reference?
>
> For example, if I bought a GPSDO with an ADEV < 5e-13 at 1 second, 
> would the radio be able to realize this improvement in reference 
> stability?
>
> Thanks,
> Aaron
>
Yes--all the "bits and pieces" inside an SDR that takes an external 
reference are generally 'locked' to that reference.  The most critical being
   the RF synthesizer hardware and the ADC/DAC clocks and the FPGA DSP 
clocks.

Now, in terms of *precision* the B210s DSP chain can "tune" to a 
precision of under 1Hz across its entire tuning range.  I can't remember
   the exact value, but it's well below 1Hz.  This is true regardless of 
the *accuracy* of whatever clock is being used.

There will be residual phase-noise--with contributions coming both from 
the  reference, and the properties of the loop filter(s) in
   the PLL synthesizer(s).  In any synthesizer design there will be 
trade-offs between lock-time and residual phase-noise in the loop filter
   design of the PLL.

So, here's the thing.  In the 16 years I've been involved in SDR in 
general and with Ettus radios in particular, this class of question is 
usually
   driven by "my application isn't behaving well, and I think it's due 
to clock quality".   In a generally-deployable digital-comms type 
application,
   if the clock quality provided by a GPSDO isn't "good enough", then in 
general, you have an architectural problem with your application, usually
   in the RX chain.  It is *inevitable* that there will be some 
frequency and symbol-timing offset between any two pairs of TX/RX in a 
deployed
   system, and your job as a DSP designer is to build mechanisms into 
the RX chain to resolve those.

Now, it could be that your application doesn't fall in to that 
category--perhaps its a precision radiolocation application or some such.

I once had a user who insisted that the frequency had to be *exact*.  
When we got into the discussion of external clocks, he felt that
   even a hydrogen maser (fairly spendy), at about 3e-16/day stability 
wasn't "good enough".  I never got to find out exactly what
   application had an accuracy requirement better than a hydrogen maser, 
but I'm fairly sure it was a misunderstanding of both
   physics and the requirement of his application.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
