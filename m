Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B230C4459C2
	for <lists+usrp-users@lfdr.de>; Thu,  4 Nov 2021 19:30:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8713C3849FB
	for <lists+usrp-users@lfdr.de>; Thu,  4 Nov 2021 14:30:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MffOd0Xx";
	dkim-atps=neutral
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 87BC738483C
	for <usrp-users@lists.ettus.com>; Thu,  4 Nov 2021 14:29:50 -0400 (EDT)
Received: by mail-qv1-f45.google.com with SMTP id a24so5870922qvb.5
        for <usrp-users@lists.ettus.com>; Thu, 04 Nov 2021 11:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=y0y9Hh4TwvRPnFw26vn2/igFvCGjkX2cPK7kPzjNXdM=;
        b=MffOd0Xx+ACnF8TzUV+JPr8X/5jeYuiYxty0Jmu1UV3bFjPSHYuvA1c7tkn7HSQGDJ
         yRAYNkUVUpIYHjZQWUCW1RmgyX/SL8MjMYSWYgsw1Jzl+UotBjUt5+vF5DkPBlhNiFNK
         5jwu03HDpXonf6IzaKINNiPuxuzHqo8Dro41H7HfAJuUBDyMrHE2u6ygyWM9FYON7Yv8
         F7Ng9uMD5tJEHjfRf375NYEVflrJEI7BFuewxoBASKWY+an76tOv5cErSdmzYilf6vq+
         G3p22UGLErenFcTK/1siPbhuQp8/jSb4uLCU4tQh53TFRG7oJCzmzlvZ3yothgqyN2Ow
         A8qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=y0y9Hh4TwvRPnFw26vn2/igFvCGjkX2cPK7kPzjNXdM=;
        b=Nge3LZ24FM6LqkO1fJ7MLW1rlGyQfM1/M7lrJpl64sHLPJVxXlD3jWXhR/Cn/9386K
         26Dm279Bpu6O0sZeVvplkeDJo69uO043Fl5xQrqqqfNuUCDU/kGiCzGI9npeIsnRHsJv
         EsqGtmx8X2Og3F2nAu/iQuDOFLBawlno64l+U1s7SEnN9jjAPbFI6sXYMWuRtjSzuTLN
         BLNkv3WJy57I0JLESLI+gAMGMCN++7houznxBDKtS67ZdVWgOFrQi+SlFhbd1m+4obNo
         NOSeRdwU5f3z4jtsPiqvmfyykPQjp4QoJOYfs6wEt1O8wwQAIumpKyh+VWAE6mfwjzz7
         GUzQ==
X-Gm-Message-State: AOAM530KPTN35UBQWFftW1yLvoQ3JyXVMNv2UznReW6/84c2gEqKyp7X
	kvp1gRjB+mcr1XCHvkBZaXWbBQwTxXY=
X-Google-Smtp-Source: ABdhPJy9Lcat85/brEhf0qiWnnyXJBAz7K36pSAQGP0KHCYBRE6h3rbjUaIFVSgbXlV7lMWyTJsApg==
X-Received: by 2002:a05:6214:5190:: with SMTP id kl16mr32518761qvb.36.1636050590037;
        Thu, 04 Nov 2021 11:29:50 -0700 (PDT)
Received: from [192.168.2.248] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id t64sm4077925qkd.71.2021.11.04.11.29.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Nov 2021 11:29:49 -0700 (PDT)
Message-ID: <00ea86bf-958c-4a74-0580-adae20e8458a@gmail.com>
Date: Thu, 4 Nov 2021 14:29:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Content-Language: en-US
To: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV"
 <Carl.L.Wolsieffer@erdc.dren.mil>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <97776b25089c4fec9a2cd5e9b4bf5d8c@erdc.dren.mil>
 <3eba92d0-2cb7-262f-9786-528042cc4679@gmail.com>
 <86f20ba533bc43c5890137771456becf@erdc.dren.mil>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <86f20ba533bc43c5890137771456becf@erdc.dren.mil>
Message-ID-Hash: 4NYTU2EPV4QWOO4KZUTPLRNQORTXJFDM
X-Message-ID-Hash: 4NYTU2EPV4QWOO4KZUTPLRNQORTXJFDM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem with error_code_late_command using two x310's
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4NYTU2EPV4QWOO4KZUTPLRNQORTXJFDM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2021-11-04 14:26, Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV wrote:
> Ah I see, originally I did have it set such that, if I request a set number of samples (which I almost always will in my application), then it sets mode to STREAM_MODE_NUM_SAMPS_AND_DONE, but have change it to AND_MORE.
>
> In my case I am still getting "L"s somehow. I can do about 1000 chirps at 1ms spacing with no issue but it I start to get L's after that so I must be lagging somewhere
>
> What inherently is different between AND_DONE and AND_MORE? Could it be causing the receiver to "fall behind" and receive late commands? Does the AND_MORE mode require any additional stream commands sent aside from updating when the next start time will be?
>
>
> Thank you as always for your help
>
>
I'm not sure what the difference is in the hardware, but "AND MORE" 
conditions things to expect more streaming requests in this session.


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
