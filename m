Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A20397BB0
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jun 2021 23:22:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 005063840F8
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jun 2021 17:22:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Xk7gGfgr";
	dkim-atps=neutral
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 30C983840EB
	for <usrp-users@lists.ettus.com>; Tue,  1 Jun 2021 17:20:33 -0400 (EDT)
Received: by mail-qk1-f173.google.com with SMTP id o27so283843qkj.9
        for <usrp-users@lists.ettus.com>; Tue, 01 Jun 2021 14:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=Bw+n2Fz4J6IhEawEC4UQozf8ikFhh6yS+Ep1ndYyF7E=;
        b=Xk7gGfgrcjnfUxzQ8W+mhzBWOlfTmMRQ2R5KEXtNTjSRejo3UGSgs+XdCKQPzE8EvG
         0kCYe5E6UCtjlCCQiQJGfuDPfY6ul427+4uOSDsaM6uFwjoUeO44W9gLstDGk+hr/N+1
         iEWPrZryegm7BpxMvd+XyjBh+QpH3/fHTpB9DOuzenTNdcDeI20A6Izia8hl1AXKspCv
         vzR679AFl6ufQr4vZfzuGWO6Mw7CrEnFuc16eVmnVH4SgxzDFlROtIOa96pxOY3dUnUY
         RjqwjytCGPv1unHXEJUgf36xvqPeUutKgao0f8cipf/MrU/k8SoO3GzId9U2HhUlJzXe
         025w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=Bw+n2Fz4J6IhEawEC4UQozf8ikFhh6yS+Ep1ndYyF7E=;
        b=pFnuc8+t/pI7pf2/rJCvPdWW5TuQ8jVP4P/wEiUjAoTXmw7qyRRp5ERFHW6tv/5jR1
         UqvxabV/VXfF4/aTL1pjzh2QiPiYn+kVNvmTQxC4mSUUecDH2927StUYSftNbCFWECLN
         KN9me3WiJJd39oAi6XnUnVtijtG2neEPVQJ1ke9+o1Lbo8WX6xQW0LeFflWYPkKV0NSC
         1r86aIbZQUJOfkNMjjKRaMFddA+vn+X3vOh0X1tMibxHe7R/HXcYOuQHp+9avMdYUfuQ
         tQ5NgKNfuNW5pHtKyws1TGnd6OAFFWAKj8b41LMmwrmfPNpAbB3Us2IcBpAhndi0oOje
         3zbA==
X-Gm-Message-State: AOAM531IA21SmVC23kT00MfYcyBEmB+sNu1BN1zx2Ounc+1LiwEecCSt
	s9bZezMIqInTBlEv0wQGzjaPY11b5jo=
X-Google-Smtp-Source: ABdhPJyhKDBegpLKcicZ2SLYEke3yFxmE+HYcNY6LaOSsLCtPVMg67EAgZjh82+0mrpDyJi/ZHrz7w==
X-Received: by 2002:a37:46cd:: with SMTP id t196mr24278841qka.305.1622582433224;
        Tue, 01 Jun 2021 14:20:33 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id h5sm3534556qtu.75.2021.06.01.14.20.32
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Jun 2021 14:20:32 -0700 (PDT)
Message-ID: <60B6A4A0.1040502@gmail.com>
Date: Tue, 01 Jun 2021 17:20:32 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <R0Al8nughdEuPdHGrugD0vJrMlZ0tikvl1YxMcgiF8@lists.ettus.com>
In-Reply-To: <R0Al8nughdEuPdHGrugD0vJrMlZ0tikvl1YxMcgiF8@lists.ettus.com>
Message-ID-Hash: DUEBCGFAMNKPRPBBMCAZ6TXYCK25BKW6
X-Message-ID-Hash: DUEBCGFAMNKPRPBBMCAZ6TXYCK25BKW6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X300 and jumbo frames
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DUEBCGFAMNKPRPBBMCAZ6TXYCK25BKW6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 06/01/2021 09:37 AM, andrew4010 via USRP-users wrote:
>
> Hello
>
> After installing jumbo frames with 9014 bytes, my exchange with X300 
> stopped normally.
>
> Do I need to set some parameters during initialization for the X300 to 
> work properly?
>
> Thank you
>
>
Some ethernet controllers will happily accept an MTU setting of 9000  
but still only support 1500.  Learned this through unfortunate
   experience...

Also, can you ping the X300?

What happens if you back the MTU down to 9000?

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
