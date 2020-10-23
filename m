Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3699F297793
	for <lists+usrp-users@lfdr.de>; Fri, 23 Oct 2020 21:17:39 +0200 (CEST)
Received: from [::1] (port=41278 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kW2ZE-0004Am-0x; Fri, 23 Oct 2020 15:17:36 -0400
Received: from mail-qk1-f172.google.com ([209.85.222.172]:35848)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kW2Z9-00044E-UV
 for usrp-users@lists.ettus.com; Fri, 23 Oct 2020 15:17:31 -0400
Received: by mail-qk1-f172.google.com with SMTP id r7so2227845qkf.3
 for <usrp-users@lists.ettus.com>; Fri, 23 Oct 2020 12:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=Q/PQDBMmI0ykGqe/bVvt4dTrvMGXYxlasIV2ZgcbJZQ=;
 b=acjL8omiLiFgUHSPOaiNbfVQU3ykn2RQCZMl+237XTI5GdA3xPZ8ZzToEl+bBgs8dy
 JXJdtGJKjTizjdswIXHrw0vhjoFNe6micMIzDtXI2qc6+okeNTjQ4UHpNrHymPViWuTc
 3cBtN3vmBVDIYMRfR3wmXbxh9uD2oVYlZc/iI38Ibdk8Wvyq+GP1+DWCFbdM5Cufyspo
 HSe1looxjmyGfoeNHtw0SdYUmV+meNFlS+X+4LfoTp/bffjLcO8Oa7HhAhGbZmj332GC
 8MmCmksY4Yhq6Me8mTG8zK/8nPpFfhl4mX0g4YR69yB2Xw/OCg2/IW1+mZ4yJ9SBWR39
 txtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=Q/PQDBMmI0ykGqe/bVvt4dTrvMGXYxlasIV2ZgcbJZQ=;
 b=jfUFK5rU9RZh/aVneFQWxU6noUCBZslsWOufpLLReLbhHhpe/DlyAima3KBzPTIUcc
 AMViNJRS8xXJiqPdyyHKHIIdg+kWjLBL+Uv69St8scPnzz2x5l4SaLSFlMZj54ek0of9
 xJfQaGy/5l2WX6qvBOk48HCnkOh744iSOFanP6zdfHmm5ssmOIatsCbFIhWPDq2clm0H
 LNPCUiGIBEDWfjDd32X5vyovNcKzyok5Gif2+bLDkIbm9W/EP2WKpyZKJ88BRJDx8h2e
 ksMEJkAMcRZZHcyhLEfcA9Py7PX7fzQeo2L4bcIuNai6feHlcQ54kIA6QYckpLfomQ7e
 6rtA==
X-Gm-Message-State: AOAM530dNy2Ul7keihbvEee0gUyy1rb0d4RjXrMjsTB0Plff346e7Nu6
 ZMLQnB5ASyFUTzNQs4Ke77TjghX0fjur3w==
X-Google-Smtp-Source: ABdhPJwwvjkpnypaXufVJdczRKDG3iL2JXLd95VbSJUoyqX8m1f56tHRNSv/mREPMyVvj+RyxCbRkQ==
X-Received: by 2002:a37:474b:: with SMTP id u72mr3952695qka.333.1603480611133; 
 Fri, 23 Oct 2020 12:16:51 -0700 (PDT)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id v65sm1398542qkb.88.2020.10.23.12.16.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Oct 2020 12:16:50 -0700 (PDT)
Message-ID: <5F932C22.60505@gmail.com>
Date: Fri, 23 Oct 2020 15:16:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Jon Beniston <jon@beniston.com>, usrp-users@lists.ettus.com
References: <011c01d6a95b$6570aed0$30520c70$@beniston.com>
 <5F9308DC.3000306@gmail.com> <013101d6a96a$1e911360$5bb33a20$@beniston.com>
In-Reply-To: <013101d6a96a$1e911360$5bb33a20$@beniston.com>
Subject: Re: [USRP-users] B210 set_tx_bandwidth and LO leakage
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

On 10/23/2020 02:27 PM, Jon Beniston wrote:
>
> It seems to make a difference if set_tx_bandwidth is called before or after
> get_tx_stream.
>
> In the example programs, they all seem to do it before, however, it appears
> to work better afterwards. Please see the attached two programmes, which are
> basically just your tx_samples_c program, except I've added in calls to
> set_tx_bandwidth and set samples to 0.
>
> I run with the args: -f 868300000 -g 89 -r 6000000
>
> For lo_leakage_pre.c where bandwidth is set before get_tx_stream, carrier is
> at -1dBm. For lo_leakage_post.c, where bandwidth is set to 56M before
> get_tx_stream, then 6M afterwards, carrier is at -30dBm.
>
>
Yup, so the default behavior in UHD for B2xx is to set the analog bandwidth
   to be commensurate with sample-rate, and that is done inside the
   parts of UHD that set sample rate--sample-rate setting is done before
   you create a stream.

So a set-bandwidth call will only have an effect *after* the 
sample-rates are
   established.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
