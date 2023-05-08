Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 089366FB583
	for <lists+usrp-users@lfdr.de>; Mon,  8 May 2023 18:50:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1838C3846E4
	for <lists+usrp-users@lfdr.de>; Mon,  8 May 2023 12:50:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683564619; bh=5HXHH0DNJjgqqokERX0SrXMaWvss9jxl8Vk/Mox7dGI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DBtYO2hkvjHqkOqNN1QP18ChU/FMM0Hefe/xqYk0mWzPQrzBERgJ+FGZAhKKx006C
	 +jPZHv5Bhj4TFhN2tEjSQFddzpKFmPgGD5zXzJVr9W3EzoH/raKtp/JpmN9YJzPkzT
	 pHf95vDywyDZSac+I0rh3pn9ZdFBevkYW1G/FQ5p4J7sFjbz05BjyNhMdzpB+dGqoM
	 z1ud4EbrMLDxtaRRDlRN/LH6R3DMkzpnJtdGmXLM5pFrMTzse/v+//QrnQS/8+HGJn
	 k772zswFJUucrGBNGVUOSGc7SFCybahCKSNGjCitKuEuiXDBq1iX+J8wKdOlnd/nRX
	 BEkwxAeJExc9w==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 54B48383E8A
	for <usrp-users@lists.ettus.com>; Mon,  8 May 2023 12:49:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dXTJTm8L";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-757742c2e5fso137421585a.1
        for <usrp-users@lists.ettus.com>; Mon, 08 May 2023 09:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683564575; x=1686156575;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rr6NT+I4hXeUuVRHyvLlKJMfmQZvtimNLkWqS5QTnVY=;
        b=dXTJTm8LWDDTKsEV9r+D2qjdHQNpfnSF904gKVTbkdnEkHWEWZ55Rm9WEtwiM7zlS3
         8Pg0b104VqIHz2iZJB9ckcvlSBfiChR/ZsUld032UdQGs3a89soxErGlAgyrps7TsyE5
         0vIg5UmPa/n102kyI4S0bu9lRtlYbNKxxUin3+2AN5i0VmuFo0COoWqST5GL7j7M7Vqd
         0JvJF/NNZ2PZJ3/rwnheZz6IzA5AZeMvxV1PU9mYWwVZpz2P5OHyVlzQJ029IhZX6vnX
         qQjHUHp5A+F2m9sY+LsGN8N5xSl+7E4bvTR+EeAEvBa5h00zQBWkDNIar8QAD8ZphC36
         c4aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683564575; x=1686156575;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rr6NT+I4hXeUuVRHyvLlKJMfmQZvtimNLkWqS5QTnVY=;
        b=bseqhalXhlk1qHT/xslYgGX58oXDQRbySvYdW8GoHfQjxjjwJeuq3N6vVTFbjxr/1h
         t2mOSnBB23rzvp8ZkNXjnOzEIOfL7b1AKSN8d9cZ1rnI1mgiUGF7eLP8EeSL+y6ERcWT
         Iu6yqXTjUkO8vWWt/WyBWGeSZC2WhvQFU46I2nose3tw4Tfo3ZUlVPh90Z77KQ+jY/yd
         msVHPWhenxdVLqgZra7Fx80pMfJl2Tjwly4SAopnUYPE/iSF/BXXN7lL95elKDPIQrZe
         0/M1Mq0ft10Uozvj1qb7RKHFsFRLdOWqp1uLiu55/nPo7+AmXw8et0mOSTiHNp36ZAO6
         X/4g==
X-Gm-Message-State: AC+VfDyA/iPiU0G0NmS1XF2bY4R/gdlwIw56V6cKWnXZCtmfAncgzoKR
	ms/WtyEzrHwRKNbepPq7pRRnswEUTRQ=
X-Google-Smtp-Source: ACHHUZ7SZsyPVBoRo8m6d43GTRA/10g8JJngZMi6zuP8t7BVs0V8mvq9URo0sw2arrth+LvAamfSOw==
X-Received: by 2002:a05:622a:2ca:b0:3ef:3bad:6d24 with SMTP id a10-20020a05622a02ca00b003ef3bad6d24mr16354000qtx.47.1683564575537;
        Mon, 08 May 2023 09:49:35 -0700 (PDT)
Received: from [192.168.2.168] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id ey13-20020a05622a4c0d00b003f3932e7f6esm420311qtb.93.2023.05.08.09.49.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 09:49:35 -0700 (PDT)
Message-ID: <298db07e-f340-02c0-568f-550a89ca9569@gmail.com>
Date: Mon, 8 May 2023 12:49:34 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: usrp-users@lists.ettus.com
References: <CAH2Hh72v_VNihdeC2H5__G02eTf+b=i4og+9VNg9mcGu+nhyVw@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAH2Hh72v_VNihdeC2H5__G02eTf+b=i4og+9VNg9mcGu+nhyVw@mail.gmail.com>
Message-ID-Hash: VWWKO5FSIZCPM5SGJY47NQ6YCZ27HX4J
X-Message-ID-Hash: VWWKO5FSIZCPM5SGJY47NQ6YCZ27HX4J
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Time synchronization over many hours
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VWWKO5FSIZCPM5SGJY47NQ6YCZ27HX4J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 08/05/2023 10:02, Aaron Smith wrote:
> Hello everyone,
>
> I am using an X310 with a UBX-160 daughter card to playback many hours 
> of recorded samples.
>
> After a few hours, even when using a very powerful server, some 
> underflows accumulate. This impacts the timing of data being played 
> back. In some cases a 24 hour playback will accumulate 100 ms of error.
>
> I can obviously solve the problem by periodically stopping the flow of 
> data, and realigning the sample stream and the radio clock, but this 
> isn't desirable. It would be unfortunate to drop seconds of data to 
> handle a few underflows. Is there a standard way to handle this with 
> the UHD API? I'm calling send() on the tx stream with 10 ms of data at 
> a time. If I use a time spec for every 10 ms buffer, and an underflow 
> causes a late packet, will the X310 just drop the late 10 ms of data, 
> and realign itself on the next buffer? Or will every subsequent buffer 
> be late? All of the UHD examples only ever set a time spec on the 
> first buffer of samples, which suggests this will not work.
>
> Thanks,
> Armon
>
>
What sample rate are you using?

Which version of UHD?

For timed data, the hardware will simply note the lateness, and send it 
anyway AFAIR.

I assume you've applied all the optimizations suggested here:

https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks




_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
