Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C36EE460C7F
	for <lists+usrp-users@lfdr.de>; Mon, 29 Nov 2021 02:57:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B94773849B3
	for <lists+usrp-users@lfdr.de>; Sun, 28 Nov 2021 20:57:27 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="O+sVScJ1";
	dkim-atps=neutral
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id C79D43846ED
	for <usrp-users@lists.ettus.com>; Sun, 28 Nov 2021 20:56:31 -0500 (EST)
Received: by mail-qt1-f182.google.com with SMTP id t11so14980283qtw.3
        for <usrp-users@lists.ettus.com>; Sun, 28 Nov 2021 17:56:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=c0rZQN/L3gEd67vPTqNMyHaEf0OWHr1sbxgs7CpDs50=;
        b=O+sVScJ1NW8+klbIv070AXm2g7gKsCOPL7/WSk295VV9BpQhwFJ42ujCKPPbdrjtw9
         evLfG2XBaUaMp+Chgj2QXU3Mly5Lu9ulWgh2ErCio+XHm1ZXatAxSaFpey4e92ToPn6s
         PNid/HmaFGGyDNHYuD1aC83Fu09UVxlluZLAtXTM7E3SIWk3ex0G3SOCETI+U0sKIJmT
         YxJuryTaBfgHfGR9fD9F2+wwaMxSdTk9NtL53YNMW8nG12udQJoWOTrUClTL/1NICSjy
         AmQswedzdXWRVmfEYeyfyHCVAhbS+cPBbUfP6BXf8PXGUWkkIGyrj7GLMxFn7H1ROS4y
         ZsHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=c0rZQN/L3gEd67vPTqNMyHaEf0OWHr1sbxgs7CpDs50=;
        b=rU4osPNtJGaTk7rLWPb7dfDtB+o/4uVvkXr+jqDjov2l/NThCCISvfpuNu0YCBmX1p
         HjmRco9HzoFmHyQa+NpXIbjSZLBqp4DPaSWwiAixgYJG6E1M9Tsibr4P29j/G+vOkcGZ
         4J0wBoKdYZ5W2qKMdRmet460/OcQRShi/0YHOa7HIc7zGzsTDrVSnku3vRgK/3BJNjSB
         WehXRUqW5uq7laMZLkPR0j53fNoG+ro8jlQcGE3nwaoe6ikLkB1nWP3bWaF1zC1sCkxy
         zQKjESVRm8nXDhmjVpZR0Fk04nuh7HxaKpl8CsO5EcY06rAoqcGIs/ojMCY4pJfMpOFM
         QvcA==
X-Gm-Message-State: AOAM530EOoHi5jSEFjxhN0maq2zXiQrzFwjemnX75QFnD7DyjVjuD/ue
	rVXIRZ56sMYpVd8GLf9/ivwAfG1HQuQ=
X-Google-Smtp-Source: ABdhPJzUQ7Mhf3WaA2L/CM3Ga97c5I0hFrsp2AFMmiMrUbeKLT2AiQQkwvgfexMocnFiW92+j6SRBQ==
X-Received: by 2002:ac8:7d47:: with SMTP id h7mr41827763qtb.188.1638150991115;
        Sun, 28 Nov 2021 17:56:31 -0800 (PST)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id v125sm7513011qki.63.2021.11.28.17.56.30
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Nov 2021 17:56:30 -0800 (PST)
Message-ID: <170e25b9-f82b-d115-8ce3-fbc876072038@gmail.com>
Date: Sun, 28 Nov 2021 20:56:30 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <163791543546.11274.3597442325475239539@mm2.emwd.com>
 <955e1cc.c4e.17d694997bf.Coremail.lt4839@163.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <955e1cc.c4e.17d694997bf.Coremail.lt4839@163.com>
Message-ID-Hash: XRIO75YLFUPXF7F2WKJTPASWZN2YWRTH
X-Message-ID-Hash: XRIO75YLFUPXF7F2WKJTPASWZN2YWRTH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP-users Digest, Vol 135, Issue 61
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XRIO75YLFUPXF7F2WKJTPASWZN2YWRTH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2021-11-28 20:22, HalaMadrid wrote:
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
See above

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
