Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B0B2E7D92
	for <lists+usrp-users@lfdr.de>; Thu, 31 Dec 2020 02:13:58 +0100 (CET)
Received: from [::1] (port=40828 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kumXK-0002pm-FQ; Wed, 30 Dec 2020 20:13:54 -0500
Received: from mail-qk1-f174.google.com ([209.85.222.174]:33699)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kumXG-0002Xh-QN
 for usrp-users@lists.ettus.com; Wed, 30 Dec 2020 20:13:50 -0500
Received: by mail-qk1-f174.google.com with SMTP id f26so15451937qka.0
 for <usrp-users@lists.ettus.com>; Wed, 30 Dec 2020 17:13:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=FE4Fr8ygz01L6IoUgkzcJjTDAhGd2L67XKw+tc8nj5Y=;
 b=rAw0+r+4Qu7AsCtm4YK0orOTFbo9YGExP/S9h9O0/583XVtE73PTNAHQy3d9p2t2Gb
 IzCv//uucjsjTCkGJGovMiF6HinARZD6l9mtZ85LlhAEp8f+AqMKLTxb5/UoebaoTWMV
 97DHKKrA0fSOOG0EB8ofuOmW1Einnmn1jW6u4eHz3r61ql/9nTpIHRXnM/U4wvHXPLEP
 o6wh7tWVUNpXU4D9ksqXAW/StjjAqXsfDkh/iKQsNwiH9zFyZfvd8SQKtpwL/ULXV6BY
 YGoxKtLeTGgHPrO4AAo0a6r4F35jmmH/frI+nsu85me8PXIL9cwvWRxoWYtufwFVtLTO
 hXdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=FE4Fr8ygz01L6IoUgkzcJjTDAhGd2L67XKw+tc8nj5Y=;
 b=sz6redi+NWl+pDtgCY1dz+8v+3fEGZI/I+/+1PaZlhpEIN/HjDywhwfh+5u31ISggU
 2q4S6RSLyLQMhy+iDuKSbAyoQssh9bG5wZUQzy28r41FhM6yogYQFX4+FGVldvS72KUW
 2GZWoXqsl6etDl1x91hXpW4awCw0Ho50NzA9+HM6PkLZ3n114+7liohJT65OQ0WXnYRg
 pLuyrEtAgM3JkY7kxLcoV3WAg4gpmVWrv2MHrHuLl9LtB2kBjbTl54t2VmA4RNRlI//k
 kVuFRn1prGm2+TR0SjEJYffHzqu5CLHlvyLHjn9ag/NX4FRWlG/qnWgFaAp2mtqH2gDa
 wv3w==
X-Gm-Message-State: AOAM5331IWMM1DiuKm0TCehOvSOLhbBXPGVXWXpJjfhGZznP1Ig+dfuG
 +od05cx3w0bvrLBoo0pj+zYag3zqmns=
X-Google-Smtp-Source: ABdhPJw8BsBpPVyZpiubX40mmzIOuksjFJQAYYEkdrEU64kZ2kHvAGvOKR+pcP65hSiiX/t8ITU/ow==
X-Received: by 2002:a05:620a:56f:: with SMTP id
 p15mr23122284qkp.349.1609377190145; 
 Wed, 30 Dec 2020 17:13:10 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id g26sm28682710qkl.60.2020.12.30.17.13.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Dec 2020 17:13:09 -0800 (PST)
Message-ID: <5FED25A4.7080507@gmail.com>
Date: Wed, 30 Dec 2020 20:13:08 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Ashutosh Singh <ashutoshsingh7589@gmail.com>
CC: usrp-users@lists.ettus.com
References: <CAO38sJ6jjGaAvuRteOLWzH3baLvxTnAOfvD6iXr=o8qNqjjZnQ@mail.gmail.com>
 <5FEB6721.9050100@gmail.com>
 <CAO38sJ7siw0ZLqUqOa0ghaLK9vMvFM=-qj0RcqYUWR_4k5U8Cw@mail.gmail.com>
In-Reply-To: <CAO38sJ7siw0ZLqUqOa0ghaLK9vMvFM=-qj0RcqYUWR_4k5U8Cw@mail.gmail.com>
Subject: Re: [USRP-users] USRP B210 UHD library installation issue
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

On 12/30/2020 03:54 PM, Ashutosh Singh wrote:
> Any update over it !!
>
I'll point out that unless you need the latest UHD, Ubuntu 18.04 
(Bionic) packages UHD already--

sudo apt-get install libuhd*

Should do the trick without requiring the PPA.




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
