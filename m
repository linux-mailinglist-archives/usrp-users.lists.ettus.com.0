Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 245E6255EE9
	for <lists+usrp-users@lfdr.de>; Fri, 28 Aug 2020 18:40:50 +0200 (CEST)
Received: from [::1] (port=44692 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kBhQm-0002Nl-1F; Fri, 28 Aug 2020 12:40:48 -0400
Received: from mail-qv1-f54.google.com ([209.85.219.54]:36781)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kBhQh-0002GS-UL
 for usrp-users@lists.ettus.com; Fri, 28 Aug 2020 12:40:43 -0400
Received: by mail-qv1-f54.google.com with SMTP id e5so700928qvr.3
 for <usrp-users@lists.ettus.com>; Fri, 28 Aug 2020 09:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=2RXLPiLspAEshH7qNnm8mqR7ZZPFq7clD4Uqw/tvZAk=;
 b=twKsSRHvtfOBtRefbR4xSqYctgXdXMphVzP1mDXu0CDhNszzYFCDCEgGC5v0Ik/vxI
 FlIN+nqgn8DvLzqtbpcS+TtppWtATggVPCLwMaI8CIEBWAbPcbZ8mZamvuvfoRnTc5EF
 AF1usFsZI4AUfa2a0g5WMhK25s6avo59W7aqgly6mm7eHq+AMtiC4zpX2bGiQrLBfueC
 m+XXkH9CKMJHHnZ5f851vOtq7NASlOGs3sGE+zSyqupUU0ySh5M+qAjlS+Hv5whQQNUM
 nYG0QfDtk9S+d6akpG9QUjJV40or2Q7OV+voCofj4F3OT56MnsSlhDU1o5FJFEugmAOQ
 vSnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=2RXLPiLspAEshH7qNnm8mqR7ZZPFq7clD4Uqw/tvZAk=;
 b=cqfSvNu8Ygt//zUNDbA1ljTABXyO/FXbPMihnYpTwNqA68GmkwEh2vhRaqcAzuhHvA
 WccWGQdurvk3nubhycpZIb4xwOscxID+VjFzsfgYdU9ULkD6oKixtYdpNoq0DupHHzQk
 UNJihwYPcaV+4B/Nlg5LizfwUrsgBZmoG0QEK4PSz4YrxZJEdsOAbuASQsTy1XyL5two
 p81+cy+JrPZYzQfewYXbVebKMMGSx/KJqG8Guu1v/fHZUjJ2Pk/zi0SKRZLb6/9Vmmko
 HdB+PEfdWcSBjLZbc6OjHXaI1NUK6DPXKLKht7PZiP3CdFeEModbCl9vdkb3G0K7xaBp
 6AVA==
X-Gm-Message-State: AOAM532fZK/uE+bbxg18CY460CHuzP5W7m7UCKWskRJX3Juarkdjs8LQ
 JqDpHq8T00CnA1jPOR2tuV59t7ceFmVJFQ==
X-Google-Smtp-Source: ABdhPJxgP/qwmt4prmxJDIcRpODPAzgUzSyLDGVAqDPdq+Z4E473mlOJT5uQxf/6yHkT+WGDsdqnoA==
X-Received: by 2002:a05:6214:724:: with SMTP id c4mr2741522qvz.0.1598632803179; 
 Fri, 28 Aug 2020 09:40:03 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id r5sm1406130qtd.87.2020.08.28.09.40.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Aug 2020 09:40:02 -0700 (PDT)
Message-ID: <5F493362.6050602@gmail.com>
Date: Fri, 28 Aug 2020 12:40:02 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Sylvain Munaut <246tnt@gmail.com>
CC: usrp-users <usrp-users@lists.ettus.com>
References: <CAM4xKrrtSjhM1FFYGvuXrQFBop1d+H78JzQCx5OMh4iQ3rm3TQ@mail.gmail.com>
 <CAGNhwTMtPx8aygM-kUgcAyK_L2+nmLxtnJJDjpLXk5HpjK0uwQ@mail.gmail.com>
 <67e4d928-2f30-1faa-bb29-6e59916f6578@gmail.com> <5F492AC3.6070005@gmail.com>
 <CAHL+j09qPSV6XAj-fvURxyR3KHwxjqc1y7rJmto-tjSZqTuqBw@mail.gmail.com>
In-Reply-To: <CAHL+j09qPSV6XAj-fvURxyR3KHwxjqc1y7rJmto-tjSZqTuqBw@mail.gmail.com>
Subject: Re: [USRP-users] [UHD] Announcing 4.0.0.0 Release Candidate 1
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

On 08/28/2020 12:21 PM, Sylvain Munaut wrote:
> Hi,
>
>> num_recv_frames=128
>>
>> In the device arguments, or left it at the default?
> I've always been curious why UHD doesn't automatically set those
> parameters depending on the sample rate ... because AFAICT the
> defaults universally sucks for high sample rate and changing them is
> always the first thing to do to get things to work.
>
> I understand at low sample rate you don't want useless buffering but
> UHD knows the rate of data flow, so it could have defaults based on a
> "time" measurement and then convert that time into buffer size /
> buffer count so that the buffering is always about the same time-wise.
>
> Cheers,
>
>      Sylvain
I cannot disagree.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
