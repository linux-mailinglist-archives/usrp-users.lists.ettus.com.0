Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFED256885
	for <lists+usrp-users@lfdr.de>; Sat, 29 Aug 2020 17:07:09 +0200 (CEST)
Received: from [::1] (port=58076 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kC2Rd-0007d0-H5; Sat, 29 Aug 2020 11:07:05 -0400
Received: from mail-qv1-f48.google.com ([209.85.219.48]:40761)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kC2RZ-0007XA-Me
 for usrp-users@lists.ettus.com; Sat, 29 Aug 2020 11:07:01 -0400
Received: by mail-qv1-f48.google.com with SMTP id s15so1014603qvv.7
 for <usrp-users@lists.ettus.com>; Sat, 29 Aug 2020 08:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=eRXT9iH0+4c5GDCYFUP+jd59V3vmCh0YtPKeZghNcoU=;
 b=pklq98YaKZtDy9631Zd/qRP0axnaeVcAytmh9CIesvVQfEP0GQYLKBlW8fFkd2OVnQ
 hVbjsHAIahKKO/Mfr9I4zeS4KXllDL6mI+OMGdIq54GzUDRTZ96ngiFIDZ5q9TQVn9kb
 G9OSivszZPm20uPuS73M6CC0yTox38KDqo/ysrvbVgwax/3LAx27expqbUwLD43lCJS9
 GGaipB7GAFk5OjiHRyPjXXHbWdpf3sfTamkCEIFltSTxaoQoD/Ok7lGMg56N1riQvyAd
 EEzLk7dXvCKseHl8wDUGyGINW4Q7X1aQtaBHxAi/cAKbQyDSL8RY7lxVBpUwdKr5hWtc
 Cflw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=eRXT9iH0+4c5GDCYFUP+jd59V3vmCh0YtPKeZghNcoU=;
 b=c0s180HdNcY8HNH//jHEpq05GPdsjHN7iLytUBp/1ZmImBqfdNdSsZRBuLqqWuu69+
 f9BzmgqcIfFCi/4UDHsLuv/TcZstEa4l5zf8wG0legIv+ZpApT5aD4ixFPkk68IlBMO5
 e7Q8WsMtpF568Efjo5lUtpw+5dXh3VDYO4hELLlh9YPZsyKwn5M0ofo8nJ/6Da5QWO5S
 xE6+Zzd+GfaIBDOxzu0XCDKobjReMIRlqJiZJZ+kQPA3Z83tq/grLwwLp5easllw+p/2
 BXMuFVRUAwvOa60vYYPgm7Wd+YcthNKCqhwGT3Kixa11V6eLNyIX+aprV1pMyIMwkH7A
 60JA==
X-Gm-Message-State: AOAM533X6N09XEm0/bZ/w52ouCuboIhbPGHgVRfP0Z0qfLTuf1s8XbHf
 o5ORWpFxASpiqvYsJX6vDe5r+Wz1/JF3Ug==
X-Google-Smtp-Source: ABdhPJyB768Qnp2EKGlAbnHXSbRQIhaHF5f318CqNvQ/2BljoQfBbl+BHcVO380H4YzANuhxfqdepQ==
X-Received: by 2002:a0c:ca87:: with SMTP id a7mr3169177qvk.17.1598713580850;
 Sat, 29 Aug 2020 08:06:20 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id g12sm2623087qkm.27.2020.08.29.08.06.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Aug 2020 08:06:20 -0700 (PDT)
Message-ID: <5F4A6EEB.4060202@gmail.com>
Date: Sat, 29 Aug 2020 11:06:19 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Nando Pellegrini <i1ndp.nando@gmail.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAM4xKrrtSjhM1FFYGvuXrQFBop1d+H78JzQCx5OMh4iQ3rm3TQ@mail.gmail.com>
 <CAGNhwTMtPx8aygM-kUgcAyK_L2+nmLxtnJJDjpLXk5HpjK0uwQ@mail.gmail.com>
 <67e4d928-2f30-1faa-bb29-6e59916f6578@gmail.com> <5F492AC3.6070005@gmail.com>
 <e2e93aff-492b-4c4b-21bb-c510e4152ca0@gmail.com> <5F493640.4080504@gmail.com>
 <bea321bb-bcf2-3263-c2b2-75f044d9aecc@gmail.com>
In-Reply-To: <bea321bb-bcf2-3263-c2b2-75f044d9aecc@gmail.com>
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

On 08/29/2020 03:35 AM, Nando Pellegrini wrote:
> Marcus,
> Attached you can find the results of the benchmark test.
> I have been also compared the behavior with 2 different CPU and 
> different USB type 3.0 for the older tower PC, USB 3.1 on the laptop, 
> very strange the case of the older CPU generating an overflow every 
> minute.
> The conditions were exactly the same in all test with no other visible 
> activity on the machines.
> Release 14.0 seems a bit better with the benchmark but,sadly, the 2 
> UHD release are not comparable because the 14.0 as soon as generates 
> an overflow indication drops in the timeout with no recovery but final 
> consideration is that fast sample rate became unusable for long signal 
> recording regardless to software release and PC.
> I really hope for a solution.
> nando
Nando:

Could you repeat the tests using   num_recv_frames=128 and 
num_recv_frames=256  in the device arguments?

--args type=b200,num_recv_frames=128




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
