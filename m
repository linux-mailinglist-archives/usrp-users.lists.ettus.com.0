Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D5E40AC42
	for <lists+usrp-users@lfdr.de>; Tue, 14 Sep 2021 13:15:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BFE8F38489C
	for <lists+usrp-users@lfdr.de>; Tue, 14 Sep 2021 07:15:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Zyl8sbip";
	dkim-atps=neutral
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 4893738460B
	for <usrp-users@lists.ettus.com>; Tue, 14 Sep 2021 07:14:19 -0400 (EDT)
Received: by mail-ed1-f52.google.com with SMTP id v5so19271801edc.2
        for <usrp-users@lists.ettus.com>; Tue, 14 Sep 2021 04:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=7M99jQFJrY0fioamVbunNrwW3InC5e0V/puxd1Qm2R0=;
        b=Zyl8sbipXLLtlLnq5brkaftQXiMdzPOpBrSa515KxORL1jkB9u3OHAGh4YYhW7+xvX
         AUPb8EzaDcBMyJO8s+0pvGNhsH/AskSxkldRK4r/8uZ8WanloG/YfLH9lucL5oO2kdOy
         PltVcfrQCVtOv6xMKLkn9Ygzx12v+2yfjqLtk+gniU5Jx7UEMUuLby6pM6L1QbRJ0tur
         UffVriBTLLcre2bF6vC+FksFrtgt/9LAJL5bHJOB2pWT68BXS6HxnnUjHfRk+GUsR/Ku
         G0Hv+IWZHDqKMmubgDmdlFuJ96B1oqH2axjkNidrFs7fpdLU9eqx/VBj2oq0WkS2HfDz
         0qLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=7M99jQFJrY0fioamVbunNrwW3InC5e0V/puxd1Qm2R0=;
        b=KH1BPTCG9zXLRnVb7a1dt4nhI60hOBzIbArp4uhvGXVA0pihIFeVCqY0FWHi0GKqKx
         oH/jlbi34OXOdh2aUcQhxAkMmYFgyQq/2O86lFeAn4AW/qmm0Sruc4r6+EheMpu2q/2Q
         wuWCxo1rWse1Pm8WgzuWJ1K21gzA6R99yH5+QEvJfjZVBWahUZSkc1MyUBwvKSx4dllm
         PXn8+og0WUnf8PzDKiNHcE/UmTQCVcASCpjlrYBdvSR6+Ub421OHDyE1Lr5pgHIeWwAi
         dznP4QOkri/YI2SEVbFkex/VXRJaHzIRV6+9ipuzqFLul5zq2cFn6H+OS1fBa2mvPOwC
         F9kA==
X-Gm-Message-State: AOAM533bv7rfVzk/eu8VdShXczumd2cIHzfzsiDIvzvA4dFncsCUUTPc
	MaFa9WCbGj5+dLtpsrMdJKC6b7QXQ00U2evU
X-Google-Smtp-Source: ABdhPJwfGsfkRGK6q54jQlR3yMnyhTXxUWCRR65WCJfZnf0wfju4ZEBkN+LG7zptjSODcggxMfgZ5g==
X-Received: by 2002:a05:6402:2049:: with SMTP id bc9mr18735416edb.317.1631618057895;
        Tue, 14 Sep 2021 04:14:17 -0700 (PDT)
Received: from ?IPv6:2a02:908:1c11:83a0:711b:5400:643c:491? ([2a02:908:1c11:83a0:711b:5400:643c:491])
        by smtp.gmail.com with ESMTPSA id e7sm5731756edk.3.2021.09.14.04.14.17
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 04:14:17 -0700 (PDT)
To: usrp-users@lists.ettus.com
From: msfu <msfu666@gmail.com>
Message-ID: <fe386f07-0f78-749f-1d8d-ea32389d184a@gmail.com>
Date: Tue, 14 Sep 2021 13:20:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Language: en-US
Message-ID-Hash: 3WFBAPVIDZ5QR4CYA6HX2TWFK4GS2QUX
X-Message-ID-Hash: 3WFBAPVIDZ5QR4CYA6HX2TWFK4GS2QUX
X-MailFrom: msfu666@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] configure usrp to communicate with external pll-gpsdo
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3WFBAPVIDZ5QR4CYA6HX2TWFK4GS2QUX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

hello,


i have got a usrp b210 and am trying to sync it with my external
pll-gpsdo 10MHz 1 pps.

i tried the commands in the ettus manual for Device Synchronization, but
no luck.

Can somebody help me out?

thanks in advance
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
