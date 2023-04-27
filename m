Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B566F0A82
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 19:07:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D6B938403C
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 13:07:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682615221; bh=ZcRAoUCxGUWdLCjCFFMp7fmMEmQs+X8pe7Bdhf/IsTE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=nd1FV2I6NclLwHAvtdxWshG2rhKEIMY6TyhfYnhUCKOitTXrprNXQRsX4UbCTTprX
	 L/Fvt+VHFLnSLUMXLB+qyolSrXTWPT5/jjb0dz07JojqJ3cICAHXtLageIx5mPrrAi
	 btX80DhMAT1yQ9AiuGuMUFA0ppmcXgq8NyiZXuccX6mOGZsnSZsjW9eo2CWOIKY4ip
	 xIvu7dGBj6ODmW+c3A3A+2FQ66xJlPqoSPzOySQS2+VfP87eKUEZV2Zm5eXPEo6tKS
	 9NTwCzavjKephcUQ+A7621GRuS2M3tdYz78zkapnNIoqWo8igeYDGWbSVNgaypn6mX
	 MflR2OjC24UcQ==
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 77C9F3809B1
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 13:06:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EuK529HG";
	dkim-atps=neutral
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-5ef8af5d211so67465986d6.3
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 10:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682615181; x=1685207181;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8ame+ohnW55sZX0jOgjO3uYV2/t4I093XoB/xyFIKlM=;
        b=EuK529HGF6BNSnBwDaWXVjh7WoELq6Vrl+zSWS2HaaqYh3zXe30IzZgK3ZzLPXXwPy
         1O+NRqdPliveAUi/H7oKyP487/tlY5fHzd66l1TxX9GYZXhweVz2GykjZzPgoez3wOSD
         BtTO1J+9meWJG7PANmLoIpa9fEWdq/xeC1KJT+sGXsmA2ix3gjVT1ibCNi44yvtfktx7
         L52H0kvLfexufbTfkiRUTATNWrQ17LJhFb4tkCapoVbtT+iayKcrPzOu5X9GUsTZkSzB
         6Vk1dXpUbF/YyhljSj7pvgw0SPdNEeji3VVDzIe9P24im/fMz5nIE7WLWt4O3vc+bxLI
         u1iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682615181; x=1685207181;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8ame+ohnW55sZX0jOgjO3uYV2/t4I093XoB/xyFIKlM=;
        b=UeDgWv5z7QTvYWvg1nG+meo02TpKJHpgsJyD2vLhErFjnQVxUqZGDyQMNg9YiKj3vF
         OtaYvVtsW/EC2w6BZzk1VeiT8lL/F/NoQE5oPltrtbUEkCzoKufPvVPL4LXTK+/Rsyby
         InT9TnptUjfFarlCOoSRO8pSM2S4lnEfuP8Zc1w521PunNruF6Yr5c8c+e1Nz9NQKEwm
         t3vsh/Mx1GjhH+WfOx/9QYjPZmhDGbTwBkbk6jgKLKX4VZ/vGLVWEtuW8zQAKFsg7yco
         qDPzUY8fGWGmeDB+9vWPxbsZ9UCYsWWVNyPZEGFUoWOehpiycY6pdzPxa587WAoxxflg
         yYyg==
X-Gm-Message-State: AC+VfDy5ZlKbu/CcrbZOzwo9aHSB3o8wQnxWD68xZ42pc/gXNxqafpKa
	Zv8lvferOAttdDQQezQ0+MhY1IISOxc=
X-Google-Smtp-Source: ACHHUZ6OyS8nUNnmiuelv9QwQ9IYsSp5xfDRLBNoeIC8vlxjh98tjJxnboiS2I0n/gSB3pZ0Mdixbg==
X-Received: by 2002:a05:6214:d89:b0:5e9:5602:3af0 with SMTP id e9-20020a0562140d8900b005e956023af0mr2812566qve.46.1682615181363;
        Thu, 27 Apr 2023 10:06:21 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id z7-20020a0cf007000000b0061673c78317sm632807qvk.85.2023.04.27.10.06.20
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 10:06:21 -0700 (PDT)
Message-ID: <c46eccea-2b18-08eb-bc50-1e490ee14230@gmail.com>
Date: Thu, 27 Apr 2023 13:06:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <yt4UEZ687iUihgikr2ZxfqHpVGvs2v2Y7goikrlVPo@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <yt4UEZ687iUihgikr2ZxfqHpVGvs2v2Y7goikrlVPo@lists.ettus.com>
Message-ID-Hash: BC6CPKSAB4BTWXRGZFPOBEMOXYQ6PAPU
X-Message-ID-Hash: BC6CPKSAB4BTWXRGZFPOBEMOXYQ6PAPU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Full duplex issues with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BC6CPKSAB4BTWXRGZFPOBEMOXYQ6PAPU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 27/04/2023 12:48, david.fernandes@viveris.fr wrote:
>
> Yes, of course :
>
> [INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; 
> UHD_4.1.0.6-0-g1a5b4fd2
>
> [INFO] [X300] X300 initialization sequence...
>
> [INFO] [X300] Maximum frame size: 1472 bytes.
>
> [INFO] [X300] Radio 1x clock: 200 MHz
>
>
What happens if you physically loop the cards back to themselves--and 
adjust the source/sink configs appropriately?

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
