Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C80C6BE736
	for <lists+usrp-users@lfdr.de>; Fri, 17 Mar 2023 11:47:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C54A23810CF
	for <lists+usrp-users@lfdr.de>; Fri, 17 Mar 2023 06:47:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679050060; bh=isJWyii68o9YjAardgQn/k2xxeFEUf7E7667PnpoGIY=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=jZFH2/9YEEy5X/UuuNcWuR2kgxYpBke6l+HfTz0FoV2kBWSMDLCUeWtqIC+qpvc/I
	 tFUsN0TvYcCq3QBPu7cRzRoEZcToCaX094VIJ6OSIxRV0P1Gs+cjD528ft4SX2Qag8
	 qonSdrV1jJqUnpKfyjS3VdWblZOFCKglpGV5MnmwNpZhhU/2Jl0PcSSGQzLc5ilWs0
	 F7bAR5UWWS2mXjnoQL2mM+TOjO1dCsW1vm0iVIKgynKXOHYJa32gQZ9e1opYDshtPV
	 tdtzhRAYYIvTiDBbGZdPCaty2C8YSwLscG/v0/R28A0CIW4QhUbADCkCw7gQFNge0n
	 /+Xkf4QQH8XPA==
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 0B1E33810CF
	for <usrp-users@lists.ettus.com>; Fri, 17 Mar 2023 06:47:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=sma-rty-com.20210112.gappssmtp.com header.i=@sma-rty-com.20210112.gappssmtp.com header.b="7WYdFHB1";
	dkim-atps=neutral
Received: by mail-wm1-f52.google.com with SMTP id ip21-20020a05600ca69500b003ed56690948so2756845wmb.1
        for <usrp-users@lists.ettus.com>; Fri, 17 Mar 2023 03:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sma-rty-com.20210112.gappssmtp.com; s=20210112; t=1679050052;
        h=content-transfer-encoding:subject:to:from:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uMVwhcZ6+aGMGUCJ03qsv3GHVnm19OFtK/+V6PaUm8s=;
        b=7WYdFHB1k3CongvOaWcsIzl3mOwSMiZPNqFQrSRlaba9kAQVbnA7LOUXlw7EK1Gtl0
         SdK5Ku79RkHZGnCumWEKKmhdorBUhRPfgnDVLfbpoSuH0IzSV/4DoZH9YN/Xn4ywcilK
         1X6xl6frN/TWPezqw+0r4MiYVkpppI7n/1iVZUaweKPBSdJHVps5+EOn8AQzmAcFnw1B
         EA9TU19GuAaDabpPZ1LXP+dlSHJKLaJZEj6T2gRJCOzjygWqL45WhZ/KAO8H5MLm+2Rt
         mFwojfWxJiQpgI6vUnJgbp4bo32wdKy0K5vGQSNQMjTwfnC7G6TdCBSgqd/vglmmiwd4
         nG2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679050052;
        h=content-transfer-encoding:subject:to:from:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uMVwhcZ6+aGMGUCJ03qsv3GHVnm19OFtK/+V6PaUm8s=;
        b=HI6+ejNPvhy3/6lYGT5RoUQ/4Npp+NaTc4qEJ6WrMjc7f3pkxWof0pw7iMTet8xpsA
         2oxB/FVfPW+BGod3RKtFCOdJNft1HC9IFSSKSbK9tPoPusqdkuNUquKcgcLn+v1r70Pq
         01UcgUSsEskt9SW1MiPkfNm1bjPrTsmXfURyTPpiRzx2DDY/sgJOOHHtDGEVbtecF25h
         lzyb9dAGRveYuoNLI+e0IKMtqfgMOyULEiVeJpzvl5fsCdHQKmze7xxyZ/suY/GuHe+h
         +HEBK6uQvVZfiuNcGRyPpk5ME9YuaWRnCX0ooPmkIniW1oHcx6/qal8UjZBNN1w+RpU6
         VQRw==
X-Gm-Message-State: AO0yUKU7i3PkjWaBoFsqiLBLfmbznMQej0VPZzb8lso0f6n4ZXqtZmuM
	sMx3/QCbA4VDmunE2sMXnyh3Z0EI0m8+8PXdBXPXwg==
X-Google-Smtp-Source: AK7set8pHUa173r0IfAvBmDp/uzojVlS8Fq5B20T8mKKA2rEgG9zaKAROhtFJN3GrZlAcAFTyO/wiw==
X-Received: by 2002:a05:600c:468e:b0:3e8:f27b:a92c with SMTP id p14-20020a05600c468e00b003e8f27ba92cmr25456583wmo.32.1679050052522;
        Fri, 17 Mar 2023 03:47:32 -0700 (PDT)
Received: from [192.168.1.72] (93-41-34-254.ip79.fastwebnet.it. [93.41.34.254])
        by smtp.gmail.com with ESMTPSA id s11-20020a05600c45cb00b003e206cc7237sm8017934wmo.24.2023.03.17.03.47.31
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 03:47:32 -0700 (PDT)
Message-ID: <95ea5508-ba7c-d6b0-2536-81d3c41a102e@sma-rty.com>
Date: Fri, 17 Mar 2023 11:47:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
From: Federico Civerchia <federico.civerchia@sma-rty.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: FTULXG5KOD3NC53U7RA6V4ZCBJFECQGF
X-Message-ID-Hash: FTULXG5KOD3NC53U7RA6V4ZCBJFECQGF
X-MailFrom: federico.civerchia@sma-rty.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Info about processor frequency
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FTULXG5KOD3NC53U7RA6V4ZCBJFECQGF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Dear community,

I am working with a N310 in a 2x2 MIMO setup. What I noticed is that if 
I consider a processor with a base frequency lower than 3.5GHz, I have 
several real-time problems with many late packets (LLLLs). However, if I 
consider processor with 3.5GHz or higher base frequency, this issue 
disappears (or I may have few LLLs very rarely).

Have you already observed a behavior like this? What is the reason that 
links processor frequency with real-time issues?

Thank you.

Best Regards,

Federico
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
