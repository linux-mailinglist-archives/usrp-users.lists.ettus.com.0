Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB1B1C9B3A
	for <lists+usrp-users@lfdr.de>; Thu,  7 May 2020 21:36:59 +0200 (CEST)
Received: from [::1] (port=45392 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jWmKG-0004jb-7N; Thu, 07 May 2020 15:36:56 -0400
Received: from mail-qv1-f67.google.com ([209.85.219.67]:36792)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jWmKC-0004Vg-Fp
 for usrp-users@lists.ettus.com; Thu, 07 May 2020 15:36:52 -0400
Received: by mail-qv1-f67.google.com with SMTP id w18so1259635qvs.3
 for <usrp-users@lists.ettus.com>; Thu, 07 May 2020 12:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=wH2Dwpou6B1ZDnlW9mRu4SB/cC9Y8zBt1scbZNsWTyE=;
 b=U0T+XVl21c0qRb4w4y1taeAI4UufCYM1ZFNihwQK4mkm3rYPrSB2RR2YOwhOrMqXCl
 8f6kGwadS4LIRf1wJB/RR0AiDmXjHg23CzeivwYweuLReqgVH/1IXswp9hSpVCUmDtYN
 msbt6fCAWvO6zd3tzDWlatjschq7j2KmovpRdLs2fZF0lTBhlkatp5FMseYMTJwnVxhh
 7NBagesYKRd/aGkE97QrDD8W3+7199uaGrrs2qS06zV+2781tDcOsDZCZYxP0y3MwolG
 SELCqSraXzlk5PmVkNA+eJ8sRCDfY+ZBlFiVYwlVXxrlLPFn0dIb9iVCgdMfHQGjIgcA
 KkcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=wH2Dwpou6B1ZDnlW9mRu4SB/cC9Y8zBt1scbZNsWTyE=;
 b=Lei9C+pdc1Zz29QaEsJnxxqMKio3iwtsCUYvmjY+c45MZs3eQ29IcEfsa7wmjlYDGN
 rIOABIZSRMMJmXcszP6Gv+gAXr7lQ48DU9oVspQErrQ5woSIRpMCuDqRiLCOjithBuC+
 01DnXq60m1JDyYNrbfAkrPNA1m0CcqVYlMj08GImM0ODimtnVR2+D6zNExBI5y1ZmmNq
 jbZ9bEEK+bNiV45CoaQI1OT+fHoMANbMONKJTdgh1U+/IacfjGoHuipSYbTaHYTVkdsf
 4YDN/PaohxBP30U4ZDtLaabcPxiTma8VU1KSffsDr2OHvRoXGErED83GI2wGTdlxOy3H
 1W9Q==
X-Gm-Message-State: AGi0PuZxX/H2dbIBtwPnYxRDdRVd4sobCLpARkRdg3dFZYCbd9TQVozH
 mLHOHfg6uZLBzMHDW3bHzCU2JCK69LE=
X-Google-Smtp-Source: APiQypLrJn5jTYccwNnYUfk8e0GLiJEdTUACTstjtl4Sr/Zhky5WKOyEurmQajbW/vole5hhu7wAbw==
X-Received: by 2002:a0c:a892:: with SMTP id x18mr14785688qva.247.1588880171735; 
 Thu, 07 May 2020 12:36:11 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-12-103.dsl.bell.ca.
 [174.95.12.103])
 by smtp.googlemail.com with ESMTPSA id w22sm5114025qth.87.2020.05.07.12.36.10
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 12:36:11 -0700 (PDT)
Message-ID: <5EB4632A.3070508@gmail.com>
Date: Thu, 07 May 2020 15:36:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <FE777AB1-6314-4C78-B763-82260D19A8A3@email.de>
 <CAB__hTR=aj5uxHFxtz0tEFyF8iUfygOVefy8=YYHLW_MhW931Q@mail.gmail.com>
 <3010bf0d-c84f-811f-6a61-f1ebbf9c0279@email.de>
 <CAGNhwTPdQpcTQZEGe916-EoXaWkTU3iztw-g=+Lccd6dCOhjyA@mail.gmail.com>
 <e17443be-6f0a-9c2a-a1a4-30f722ffb2e7@email.de>
 <CAEXYVK5SVxQH0KRHd1S+vOppUuEy01K0NL4g_s9NzwoXhTX=VQ@mail.gmail.com>
 <CAB__hTR1boA7o-FGP2Gng0rFNkY=cZqme199UgdNq5nL6nPEzw@mail.gmail.com>
In-Reply-To: <CAB__hTR1boA7o-FGP2Gng0rFNkY=cZqme199UgdNq5nL6nPEzw@mail.gmail.com>
Subject: Re: [USRP-users] TX underflows when using multi_usrp vs. two
 independent tx_streamers
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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

On 05/07/2020 03:09 PM, Rob Kossler via USRP-users wrote:
> My experience using dual 10Gbe is that things work generally worse for
> the case where the data can fit on single 10Gbe (which is the case
> here at 200 MS/s per link).
>
> I verified in my own custom application that I can have success with
> Tx 2x200 if I use separate streamers but only 1 multi_usrp.
> Rob
Multi-threading really helps here, so dual streamers with separate 
threads.  There may also be implications in the standard
   kernel network stack as well--entirely outside of the purview of UHD.


> On Thu, May 7, 2020 at 3:00 PM Brian Padalino <bpadalino@gmail.com> wrote:
>> On Thu, May 7, 2020 at 2:58 PM Max via USRP-users <usrp-users@lists.ettus.com> wrote:
>>> Hi Michael,
>>>
>>> thank you for the feedback.
>>> Unfortunately the X300 offers just one SFP+, so combining two links
>>> should not be possible. I also don't think the network interface itself
>>> is the bottleneck, considering two independent processes don't seem to
>>> have a problem providing the data.
>>
>> You can use a dual 10Gbe FPGA image and get dual links on the X300.
>>
>> Brian
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
