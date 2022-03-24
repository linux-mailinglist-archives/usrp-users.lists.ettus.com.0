Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AA34E6602
	for <lists+usrp-users@lfdr.de>; Thu, 24 Mar 2022 16:33:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4AE21384DBC
	for <lists+usrp-users@lfdr.de>; Thu, 24 Mar 2022 11:33:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648136031; bh=QcZCg/SYivzQuuO5+vnq/r8W6lzWKs1yOPy6zYPjSv0=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=l6tychVmSu2vLyRcEDkuTi1pwKM0fJNjkDDO5YWi3YkSWCguD5IgGeNimeVCBjVXJ
	 +5g1BtB/A0ODxJk05VeEWBdkJi8jFeausvyAzCeKPsdBM57uIeInL04D20gMO3dwJM
	 UFhNNMKARfn+RJZNLA5eoibtXvDnQcaVBXUOQFD3iJyGM/c0/nKe0FGnddnnIx9D+O
	 6bMufqYABlWkCSz29N8UEnl0SPBA6O/E4A55A6Zv8bNOs8I2P+4450Gz1eTDuZi9+7
	 CqgwkIkygP6yeiXRBVHXH8s2v3isUmvzzxuUKAZMUdRwCWoAlp93R4fehI38FVJi/P
	 Hwul3inCiQl6g==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 1EFB7384CA3
	for <usrp-users@lists.ettus.com>; Thu, 24 Mar 2022 11:32:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jux1QodD";
	dkim-atps=neutral
Received: by mail-qv1-f48.google.com with SMTP id f3so3950040qvz.10
        for <usrp-users@lists.ettus.com>; Thu, 24 Mar 2022 08:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to:from
         :subject:content-transfer-encoding;
        bh=laO0j9ipVH9CsksBPTvUnqo5X8lM4TkZJBgY9Z848H8=;
        b=jux1QodDVVTqUM1AXps0iibEyrSPcs7KO8Q994tdieHgdBcwUGzO8YwM3Enfx3vytp
         NHdm4B9v2UIYJkBNmg/7UhW2q6pwZ6qDSaE0cmubgmf52McXa8j6T3hac+/zLuZvNOqv
         ZnKzKKhMyg6HRJgQAjJvNAWhNhpbOLiuHmJGQEfJXiGZ769ldFc2EJDXT9H/i1pCoaJ0
         nO3P5RHG2y0CCyqxxqGhBQPraVaXE1+jgvi2/+fvzVFvPcUH1I9h7MqXFwqkISpTEcQX
         IQQsu317weHj60eVDBxNr5ltCILWyCDknoKw7OZLj2NBp9cT4ce1joc6dhwomvNl1GF7
         Zwiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:from:subject:content-transfer-encoding;
        bh=laO0j9ipVH9CsksBPTvUnqo5X8lM4TkZJBgY9Z848H8=;
        b=7O3X67RCDgbwzNx6KFNtaJsszYaBhFvcFpm/ZECJqIwALS29TCYJ0uWBXIQaCoMciy
         /jjYprpa0gIFVqFkPkvH5tXqmZEu7Oojt5stvK9UnsCfTBap1HKzhHAomztHT3OoTLTb
         ep6FAIY++AnmhS6wf5vJuOZSI8StxQ5HhgDj7meyhwAiHn7qSG4LCiZO3vpezL6UXir1
         8Aqw9dhhEZwbTYhJbvhePjRKMgNw+PFa5hWa7UG4Ypz+fuxYhh7ZwNbnW8/nxpEPWFT2
         8A7tDe7vohP4nrMgAU/Wq7nKGvzsG15srni1k8DaPyvVRtX/4JNbeAisV57fjfKDyuRl
         79TQ==
X-Gm-Message-State: AOAM533Ih6WSVaylCR6ayH3vsoPjrE69vnVmFehWxfNdN2Alngj19jmU
	uGExoiN4Y9bMvIOzIs1akXWbW6jJC5E=
X-Google-Smtp-Source: ABdhPJyTRvbKaejjGzCTNNGhS00EJePALpcq3GTxi+cnoF0HeHNHo/5yTDBK6DM644BEbfjbWrJ67Q==
X-Received: by 2002:a05:6214:d6f:b0:440:ffe0:be96 with SMTP id 15-20020a0562140d6f00b00440ffe0be96mr4785675qvs.103.1648135968263;
        Thu, 24 Mar 2022 08:32:48 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id j1-20020a05620a410100b0067ec5ecac66sm2096668qko.19.2022.03.24.08.32.47
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Mar 2022 08:32:47 -0700 (PDT)
Message-ID: <0d5c1d3c-a2fc-e874-73a7-7afb8e6b9478@gmail.com>
Date: Thu, 24 Mar 2022 11:32:46 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: PDYIS33GNAKATUYER7ZLASC66YBKXJA6
X-Message-ID-Hash: PDYIS33GNAKATUYER7ZLASC66YBKXJA6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] An RFNOC-on-N310 question
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PDYIS33GNAKATUYER7ZLASC66YBKXJA6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Good morning fellow USRPistas:

Some of you may know that my *other* role in life is to run this little 
outfit:

http://www.ccera.ca

I'm wondering about an RFNOC implementation of something for the N310 
which is basically:

Radio--->DDC-->FFT-WITH-MAG**2-->IIR-FILTER--->KEEP_ONE_IN_N-->SEND_TO_HOST

For all 4 channels, with an FFT length of 128.

Does anyone have a feel for whether there are enough resources in the 
N310 to achieve this?

This would be for the first stage of a 4-antenna FRB signal-processing 
chain.

Cheers
Marcus


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
