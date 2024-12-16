Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D239F351C
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 16:58:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 495E03851E2
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 10:58:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734364686; bh=WbKLiFJtCSLgFJ2DmhbuMuGbdqxADhbEvP2rjKM8AO0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=rhr4yAAYCEpP79nYdVlfP2p0cnERD/r56gWxIQB87cTHuRT1i9Fkhc9DhWUB6cWDY
	 EoPgolUQr8B+FZPyA0tmeSnDhm6+RlM7YTpcwnrBWB1x0lROAYAOFxqZTJ0wnV9ti9
	 VQkqJFTwA++dIxt39p78SzwsGTjsGRuB/27njtBibTxlhW4xKdqjPV5KqbKF49+DyD
	 OOTgv5kuwWJqaI0NWNIs3FX84PyzofR2lxMADRFVDm6h0OTRJKxQJe9mB0LLYmASOa
	 7Nkfy9gWKQJLaspGuauUMcJQhQBmtjcoNHkLSPB2AQEAGxaoackp9gt47zGRsPNxa4
	 gEalBB3TNMBfw==
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 1E5C13809C5
	for <usrp-users@lists.ettus.com>; Mon, 16 Dec 2024 10:57:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HLV+8jgf";
	dkim-atps=neutral
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6dcdf23b4edso12883396d6.0
        for <usrp-users@lists.ettus.com>; Mon, 16 Dec 2024 07:57:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734364630; x=1734969430; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2pt1YI/1qpG4DqCUI0J8IDDsPpQ+dD3ZOsNgbLbrUwM=;
        b=HLV+8jgfINoJyif+yb2pBkk+FPEnNQsLre60lkMPOC0NL5oM4GOBMjSOZ3Vd5Q21pE
         hodSvjAFyUZIYsYryt6asb6Vu/y3hsaa5ZMMQpv+ubkbLgpIbf/rtkIxVcXJUWKsT9hQ
         gTNDnFfZf/FH8J8Z4sQXAWCROtA1TO1BTGZ01fzRJNqiRKtGKqadFwUHWBc8sgOEg2JH
         rWtIX5PhCLDqMX17HEEzcSTgx/Snf3VRemITZ/E1pukVmOPT/5urVSQNyrqhMksO/vDf
         e+e+uZs18OMUVnS5i1UOsl8+2+in3BNeqp03NaN5IANr73+UAo3rfjosC+rgK3iB1BoZ
         8fRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734364630; x=1734969430;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2pt1YI/1qpG4DqCUI0J8IDDsPpQ+dD3ZOsNgbLbrUwM=;
        b=hujMJfjEbEASfeAGxfZLg7U6s/wfq0kf2AvQf5lZxholJhgq3gIQhW3GlBE4Ftr/OY
         1xd8gg2O8FEoAYzbxYOwQEzI18qE7PGfuRVqVrpIcBhhBfVrJv+PTPExQXHpJcpc9+fN
         LNmGljxKRjj8+XwORzO1dDf0ZnewqzqadPmh/9Ww2F08mDRs+S6OdcKEqZxnxAsDUYKr
         Ed7ATG04u/bynP5ER1tlZmvT7c5AZQTAu0yL49PU2go/qGWegMIHmtSOFJnRyqyR8K5V
         0EKvsP6ytvye5DhK1hJBycJLg32v2TZncW6T9c8QWKWTm7egVk+4mufbufkOq+6XOF4T
         zZHg==
X-Gm-Message-State: AOJu0Yze0BCJ6+LUQ5kyA21855bKcVSdXPbSWSb/yhDgreGcx4bsOoRn
	VDFo0b3gQyIOKFmVxLqfqPQheuxKgNXIgRQH/VcdGCNooUV+doDo0oVCLQ==
X-Gm-Gg: ASbGnct/la7CCtSIUITQE690tCWM4kK3hbgpCSLwLa/FOtHWdbyqp8dLq6SrCVsAr+E
	uzR+wfX76pLllns1Rjc8LucRf1JqJs+tS6o/PjeIIRIClD5jqkVCHtQyDB6BEBslXhIgvK+EMDu
	ucovrK3gmsLn6wFxASUQY+R3bHwHNVoAqjU4xutFmrouD5+f6ntni1d/hmrAzkU4KtPgyg9o9tc
	e7CvPJ8EMZbYoZ5H+/fWWAW8ua1lmQDGy0slKJuuWkVf5lJ4PEFKNJWrNk2zzKNUd0=
X-Google-Smtp-Source: AGHT+IE07fioSACQLtEGVIPLdPPASXbRiEPkde6ew2qCIdndEavHsAoAUZ5TX142NlkGr7WfkM6D8Q==
X-Received: by 2002:a05:6214:4002:b0:6d8:b2f2:bcb8 with SMTP id 6a1803df08f44-6dc8ca419c6mr218373166d6.8.1734364630129;
        Mon, 16 Dec 2024 07:57:10 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6dccd256e25sm28845506d6.43.2024.12.16.07.57.09
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Dec 2024 07:57:09 -0800 (PST)
Message-ID: <a8d675c5-4103-4f08-a5d2-cc3f5aa7af79@gmail.com>
Date: Mon, 16 Dec 2024 10:56:59 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <0GeW5wQELK8LawMFObDDGAZ4rNe6MTTrdfErOIxZpNk@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <0GeW5wQELK8LawMFObDDGAZ4rNe6MTTrdfErOIxZpNk@lists.ettus.com>
Message-ID-Hash: IDUMLHGXLC22IOL7MRUMC44GZSCZCL5B
X-Message-ID-Hash: IDUMLHGXLC22IOL7MRUMC44GZSCZCL5B
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N300 device not found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IDUMLHGXLC22IOL7MRUMC44GZSCZCL5B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 16/12/2024 03:18, yibindeng66@outlook.com wrote:
>
> Hi all,
>
> I encountered some issues while configuring the N300. The N300 
> responds to my ping requests, but the host cannot find the device 
> using uhd_find_devices while correctly detecting b210 devices.
>
> I referred to this post on StackOverflow 
> (https://stackoverflow.com/questions/33304828/when-trying-to-use-my-usrp-in-gnu-radio-i-get-a-no-devices-found-for?rq=1) 
> but adding parameters and modifying the firewall settings did not 
> resolve the issue.
>
> Configurations: MTU is manually set to 1500 bytes, IP address is 
> 192.168.10.2, netmask is 255.255.255.0, and my UHD version is 4.7.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
Rather than using uhd_find_devices, which requires that broadcast 
processing be allowed as an ordinary user, try:

uhd_usrp_probe --args "type=n3xx,product=n300,addr=192.168.10.2"

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
