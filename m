Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBED2BB7B5
	for <lists+usrp-users@lfdr.de>; Fri, 20 Nov 2020 21:50:17 +0100 (CET)
Received: from [::1] (port=50750 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kgDMD-0007MO-AN; Fri, 20 Nov 2020 15:50:13 -0500
Received: from mail-qk1-f177.google.com ([209.85.222.177]:45545)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kgDM9-0007GI-Hd
 for usrp-users@lists.ettus.com; Fri, 20 Nov 2020 15:50:09 -0500
Received: by mail-qk1-f177.google.com with SMTP id q5so10200930qkc.12
 for <usrp-users@lists.ettus.com>; Fri, 20 Nov 2020 12:49:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=j4vVpyPPtXXUwqpm0DMkUKBlfdeSFwkeor9/zJGrGpE=;
 b=GALsAngLFCm7ikR5dYjUUM1FJLXR5n0E2Xj4Vk79PbP6exnNXycnUlJkemLKMMoATD
 /GtcmfZFD9RZui1J4p1rn9r3mh01iWkK9ef4iM/+ZuYizS86xNFzB9sR3CKM9p/zuXOZ
 ftUbAjCVlU6F3RmmnaDlKQ0oHlSHIeoaqHDwQ/ljuJ0Uf3TKfjLJNGRJITc7Qvz5qYQA
 N9buaP165otGxac9I8MlypJ5Y26j2yTAPUiABFrXSOYwr4eY4v8Z8R4qlyMHrLz+jVkl
 jgNZbZ1GnSr7JfE7g4KC5GrPDAkwFGPCE+x0jvSJd3pVdOzor68pmpC4yuNjrnfWp4Ts
 x84Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=j4vVpyPPtXXUwqpm0DMkUKBlfdeSFwkeor9/zJGrGpE=;
 b=lmggJp3cywroEL0b1iW4qDKUEx+sdBWhzPi4Wnj5YloR5+c9/uq8LDaTBgyBvXcvIB
 oHGHlTJxp9iUiDKu9e7MNowMnr3kO2gJQq7RhbDBxgwcLXmJEhN/366ixcA4PMCU8fEj
 l2+ddggzqYO6g9iPKz9VRwqvpyRqCHoPLpElPhKdIAzUf8EqPv9wovtOzvqD70gwAaZx
 lZRm4QFruCFYbk5gV++SBRUfuogJZyjXYAJlyq9n7Y55y+bjXB6pbmEsbzUQUPJ8Q2Lj
 ARq14mfoI++nVUURAPcr1gO/+cYUiUmMhfiQOScKCgxkF1uCX5LsMDnK22QyrWSVPzrO
 jDxw==
X-Gm-Message-State: AOAM531azXvDeqLc6iYAB/UqQojL8zfhW0tek92W0P+Rd11TMdB4ctHr
 /lLPGq3blVQQ/1DVGdTKTX50RqkxFw0=
X-Google-Smtp-Source: ABdhPJxjOgzYqE7HAqfQI3/aT1cX7vPYpeQ+rEe0uDzrUl74ZEgCHVjLPyFlOOmmDYXgrp1juF2TmQ==
X-Received: by 2002:a37:d08:: with SMTP id 8mr1743732qkn.306.1605905368783;
 Fri, 20 Nov 2020 12:49:28 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id f14sm2665474qkk.89.2020.11.20.12.49.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Nov 2020 12:49:28 -0800 (PST)
Message-ID: <5FB82BD7.5060907@gmail.com>
Date: Fri, 20 Nov 2020 15:49:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Lamar Owen <lowen@pari.edu>, usrp-users@lists.ettus.com
References: <5aef8e21-77a8-e3a0-1542-8f9075039eb9@pari.edu>	<5FB2C107.60309@gmail.com>	<7c355116-88f5-35b5-2ba8-2d851ed4af68@pari.edu>	<7269bb32-af6f-1631-1c33-5b78e9b03ef9@pari.edu>	<96cd5a7a-0f92-d15a-280c-375e0a002144@pari.edu>	<5FB2FC93.4020809@gmail.com>
 <9b9979ba-bc4c-9939-fdc1-4fe9593439f8@pari.edu>
In-Reply-To: <9b9979ba-bc4c-9939-fdc1-4fe9593439f8@pari.edu>
Subject: Re: [USRP-users] UHD version that supports older DBSRX on a USRP1.
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

On 11/16/2020 05:38 PM, Lamar Owen wrote:
> On 11/16/20 5:26 PM, Marcus D. Leech via USRP-users wrote:
>> On 11/16/2020 03:32 PM, Lamar Owen via USRP-users wrote:
>>>
>>>
>>> [TRACE] [DBSRX] DBSRX: trying ref_clock 4000000.000000 and m_divider 4
>>> [TRACE] [DBSRX] DBSRX R:2
>>>
>>> [ERROR] [DBMGR] The daughterboard manager encountered a recoverable 
>>> error in init.
>>> Loading the "unknown" daughterboard implementations to continue.
>>> The daughterboard cannot operate until this error is resolved.
>>> AssertionError: m and ref_clock/m >= 1e6 and ref_clock/m <= 2.5e6
>>>   in double dbsrx::set_lo_freq(double)
>>>   at 
>>> /home/conda/feedstock_root/build_artifacts/uhd_1602712704625/work/host/lib/usrp/dboard/db_dbsrx.cpp:306
>> If you look at the context of this assertion--it should never be 
>> asserted.   ref_clock is 4e6 and m is 4, so the test is satisfied, 
>> and therefore the
>>   assertion shouldn't fail.  I wonder if this is a compiler issue, or 
>> an issue with the UHD_ASSERT logic?
>
> Yeah, I saw that; thanks for the pointer (to someone else's question) 
> about logging at trace level.  So I've filed it as an issue in the UHD 
> github.  Could be something similar to issue #304 at the UHD github.
>
> What it does tell me is that 3.15 SHOULD support USRP1 with DBSRX, 
> just need to fix the issue.
I can confirm that this issue goes back at least as far as UHD 3.13 -- 
just tried it after digging my USRP1 and DBSRX cards out of storage.


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
