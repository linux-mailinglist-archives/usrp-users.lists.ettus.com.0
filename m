Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FA867EE4A
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jan 2023 20:38:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 18EE33844B8
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jan 2023 14:38:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674848284; bh=pNexI3+IF7OxYLmleaW6RSirPs+1Yz9jpS0Iw2MgIB0=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=k0ykrqTEAv2lbxWEIFGAdF+nun7yLTN9/sfnoYcpNvBm/jT7+c8e3BW9RYHoMppXK
	 P5W2rRQHQkaytDP2T8TbvvHvZlS2Psc2AyrgdgS4zA9wIoKbJRkPF38XnyVRjH1Gw/
	 gONoMk00NPUEnjmTbjJlMVHiH83AJYRTVVaFR6rG0NRukBuwTYlTptZDmYMXBHBzc0
	 rojOeNNAnsXADvxUI06S0G2FrgE2wHKlweDGbt14JUDgAUyP6zCmAddxXLDsdkmUlZ
	 zFMS/SgKr0lBTMCsJbNvGHNTdQfHFyJ2nxOleTFmxZpgMeKMcZFc7Vk26J1MxWI6Of
	 wCN/zXDlex1Fg==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id E9A4F3844A2
	for <usrp-users@lists.ettus.com>; Fri, 27 Jan 2023 14:37:09 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NLzPuvS5";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id s4so4951526qtx.6
        for <usrp-users@lists.ettus.com>; Fri, 27 Jan 2023 11:37:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B/WQjRGgoaF1pCGY8HktLHcXey8XevgRtME6ghHl9VM=;
        b=NLzPuvS51ofpO8vWWRXjKg9td8EJ2qtZLDQKE0yipy0pK6SD7eEc16tEYlblrqLts3
         k3BsHX4meb46QGs1QwxYepmSx5crju68ajagoVDqBNZRt9666UgZTJ90eMGYMHgILESA
         09ker1RMBc7C1e0MbVVFzhNDBVK4ZFdACaLHBIJCvu4fS5DS3KtqK/1ThytncKw6BwYm
         d11cUTikqqk/Lag23RFYGjDGTlhvOUDAubrQJxy2V+pOwohWH8Jh5M/re4XYUsGDMZp2
         3RTvr5ZV7xK3Cjy4Dc2NSNgSRgV3ZN3zd5eLwDm5t2TxZ2HMtFUcCljR53lwbL9OOTru
         qXMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B/WQjRGgoaF1pCGY8HktLHcXey8XevgRtME6ghHl9VM=;
        b=oK2wsINrcdUml6kW4Mj2KiQVIZ02nyzVAk5HEPVEQBPPZwC6GBHB+EOMaRDlgu15p2
         mYDc54f6zBm/HSqjSvVblUKTF9pCgn/3GnZnQ+Aw8bFauw9SiIHOBbzLF3RdDa6h79k7
         iabkMm7IxWAtlP7K9MxZpKny8blpxPFOeLKd0GyGPPfSQifovRAQ9MKq4C++3sV+dnWb
         JCq5C+MUt4qi/0+FOTS6TSkRrMtBCGCTpkmo3wrKbQpQxNbemxzmrueWH5gy1WU1wlr6
         K/VHaYKq83Tn3Zc88b5i1B/8FKstWp3To3Lts6yBijdxlkDzhZeziYLxACUi1az6AfTi
         LJjA==
X-Gm-Message-State: AFqh2kotmn1nkbhubzp2c9qn+lt//x09IxmXGHQCU0QOkT2D5sEE3hSN
	mcHkDD6WVL03KEu9gXwGFub63e5hUK0=
X-Google-Smtp-Source: AMrXdXsMRveVZvfey9P47gPQzvTkwXaVlPR46ixr9NpalgSlS3RfUjEjIPv7pGXkTAuYr7/4YP65/w==
X-Received: by 2002:ac8:4914:0:b0:3b6:3acb:7f70 with SMTP id e20-20020ac84914000000b003b63acb7f70mr60378641qtq.61.1674848229420;
        Fri, 27 Jan 2023 11:37:09 -0800 (PST)
Received: from [192.168.2.196] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id s20-20020a05620a29d400b00715c2c5b492sm3439616qkp.128.2023.01.27.11.37.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 11:37:09 -0800 (PST)
Message-ID: <d6538422-d08d-7f9d-ae19-d2ec18c7d199@gmail.com>
Date: Fri, 27 Jan 2023 14:37:08 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Mark-Jan Bastian <markjan@xs4all.nl>
References: <Y9Lxt1qeGzi9rym+@vm01308.protagio.nl>
 <b276bfdb-c59e-bb9f-92b1-c7ab94ad67da@gmail.com>
 <Y9NmFYlarlrd8xE/@vm01308.protagio.nl>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Y9NmFYlarlrd8xE/@vm01308.protagio.nl>
Message-ID-Hash: 6Q3ZCGKZOF7MRR27GWELHSU5MHCRWIG3
X-Message-ID-Hash: 6Q3ZCGKZOF7MRR27GWELHSU5MHCRWIG3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UBX-160 LO filtering
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6Q3ZCGKZOF7MRR27GWELHSU5MHCRWIG3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 27/01/2023 00:50, Mark-Jan Bastian wrote:
>
> When generating a complex +74 MHz and -73 MHz sinewave signal and adding them,
> I see 1 MHz spur about -30 dB @ -74 MHz, irrespective of LO frequency. Thus the
> spur might caused by (remaining) nonlinearity in the mixer or the subsequent stages.
>
> I would like to control the -30 dB spur to a lower value, or at least find out
> what the source of this spur is.
> Next thing could be the DAC, which supports rates up to 1600 MSPS, but is only used at
> 200 MSPS. Perhaps there is a way to modify the waveform in this step, similar in
> the way digital predistortion can help improve spectral output purity?
>
> Mark-Jan
>
>
Also, have you run these utilities:

https://files.ettus.com/manual_archive/release_003_010_001_000/html/page_calibration.html
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
