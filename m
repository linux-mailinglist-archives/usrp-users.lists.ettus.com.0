Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EC02F7449
	for <lists+usrp-users@lfdr.de>; Fri, 15 Jan 2021 09:28:58 +0100 (CET)
Received: from [::1] (port=42770 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l0KTV-0003D4-9E; Fri, 15 Jan 2021 03:28:53 -0500
Received: from mail-qk1-f180.google.com ([209.85.222.180]:38490)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l0KTR-00030i-P3
 for usrp-users@lists.ettus.com; Fri, 15 Jan 2021 03:28:49 -0500
Received: by mail-qk1-f180.google.com with SMTP id w79so10954559qkb.5
 for <usrp-users@lists.ettus.com>; Fri, 15 Jan 2021 00:28:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=lhFhqlQXrzg5jw5Gc11dhlWoCf8VCP31S7nlJSB+Vx0=;
 b=KAe/hV+C+78t0GQ9jhFwwCfB8VCGQtkuSrtMmHoaAbZizxcZ7JtkxRblv+R69p/LnT
 4xz2ZvhI+nVkKtG61PttSoID+XsducGL+4WkxAvbO8gitaQDGbJkymo/WJh04i9YEIZW
 hgwZ9Lg4zNuntPUcuB8syjULDfjQ9/xEWRfUKNKHSz07m6Uztj0rnmfcb+7S6a62/WbM
 e/gLeNXK5Pmz1dUa6uG5HUgQt9spU42R+PpmC+nDNmglXMN15Agbb2S/BPgu4Nw56td6
 qBXA4oc5Mow8dmZQJeyiCCMi2G381wTDpzEJE8JJADU4bjYZD1P3ANnmHJV5N2fQYyR7
 2xJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=lhFhqlQXrzg5jw5Gc11dhlWoCf8VCP31S7nlJSB+Vx0=;
 b=Y2DsdgGtuV4emZFlZySab53PliPTIFPTyrPZSwp2bxwUPBysfKSX3rL+j9HtDAYQcm
 HD4qZvHGx8QUAIseJbKQokqktJneR1xni749ZcIvmZgtZsoeFOG5Bg+/Amn5QC1D2v3Q
 jYw/tOCLGAzc3hZYE6el2v/yTWvQ9oJpHe6g4CIQ8gKzGN7AWLIem3/gPw/7Iie84LuY
 28oHXVy5PHxrqt80wskgHWaEGyOUaaMWm5pRc/sIxi+KeKGmdc5++qqSz0vFnd777eH+
 187JBPohzZE9L5nNc06JWx/oecE0NakXQbM3xAubJozrswOJJIp/FMJ2H448SixTEhuo
 k3Qg==
X-Gm-Message-State: AOAM5331jJzNwbKH26pavMXAy+GljRZWUUQ8UXXlF/GyIlCsXTxSMUCj
 q0+5OG0ezDL1dZKxZQ5e2xwxDivHejw=
X-Google-Smtp-Source: ABdhPJwJsH3TauWrIMU7Ufv1qEREBH97F4q169aXi9qgrkrcTQL+8+I0hRWh0MBoFuVHoaQP/69gEg==
X-Received: by 2002:a37:658e:: with SMTP id
 z136mr10932709qkb.117.1610699288924; 
 Fri, 15 Jan 2021 00:28:08 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id u4sm4327032qtv.49.2021.01.15.00.28.08
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 15 Jan 2021 00:28:08 -0800 (PST)
Message-ID: <60015217.2070507@gmail.com>
Date: Fri, 15 Jan 2021 03:28:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAFZDN5KC8vM2ir2UHJGxFH=fTTNgM8E0WAYnhNTQFpj9P_3Hhw@mail.gmail.com>
In-Reply-To: <CAFZDN5KC8vM2ir2UHJGxFH=fTTNgM8E0WAYnhNTQFpj9P_3Hhw@mail.gmail.com>
Subject: Re: [USRP-users] B210 TX from file of complex samples
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

On 01/15/2021 02:27 AM, Hai Nguyen via USRP-users wrote:
> Hello,
>
> I'm trying to transmit complex samples (e.g. BPSK chips) using B210 
> and GNUradio. My flowgraph is very simple: A file source connected to 
> a USRP sink (cpu format fc64), sample rate is 1e6. However the USRP 
> seems not to transmit anything (no red light, and nothing on the 
> spectrum) and also there is no error message. I tried with various 
> gain values but still saw nothing.
>
> I tried the same thing with an X310 and it worked fine. What would be 
> the cause for the B210 and are there any ways I can make it work?
>
> Thank you,
> Hai
What does:

uhd_usrp_probe --args type=b200

GIve you?

What TX gain setting are you using?   The devices based on AD9361 have 
an unusually large gain-control range, going up to about 80dB.
   So if you're used to gain range stopping at 31.5dB, you'll be "low" 
by about 50dB.

What frequency?   The B210 can tune from about 70Mhz to 6GHz.


> m 


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
