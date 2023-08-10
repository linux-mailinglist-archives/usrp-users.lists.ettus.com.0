Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8128E776EA0
	for <lists+usrp-users@lfdr.de>; Thu, 10 Aug 2023 05:37:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 89F4D383C09
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 23:37:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691638652; bh=DuWPhqWCIci4SDWCeZy3bBN5VWpq0z5nUQDwEtXP89A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=xUV8zFCo9TYGLRCWxwv/Jq5cDvUXKIBhwcvZ4r7zyPnn0RPRp0EfdSnMLpgLjr3fP
	 kyugi1Aqd4+KNaoA9+oNNq33vXX6qSfTehp25IFNSfAXSVWeTrix7VBTzelb++42Zc
	 0HSHTsCuPnbc9NEawizQ91BvUzFhzrjw3VmKvDRKHYvRQoWLQYuoHiI+/dTQGP+tKS
	 3k8bh8Ipj3H6YvrglGVemVQAThBUD6WV8IsUGQI4PqlCLdLfv3QmaNSgayzLq8/zna
	 QhOuNhsSUhfsG0msaAkK/ALrqWYf6Br4KH5Zvc2aglj0mVLd66H2QIzQBpBqy2O9e8
	 4exOK1kHh4BNg==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 86CFE3839AF
	for <usrp-users@lists.ettus.com>; Wed,  9 Aug 2023 23:36:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GYHm8suO";
	dkim-atps=neutral
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-63cf69f3c22so3330216d6.3
        for <usrp-users@lists.ettus.com>; Wed, 09 Aug 2023 20:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691638618; x=1692243418;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TSNNkaPltDzvRqvPQ5AURytQA+f7zbY3FYgxLyQ5bDI=;
        b=GYHm8suOppg+hftggO5i/D07NnyzBQON016/ECH7Yu73OsiYYNlQEzxb9IEcfaZDH+
         E+5g881gAke7GyWMZPmz1QWq8vV169RKrrSumK/lgJagY3hwgMi4sbQPI8qDhou6B00p
         XAQ08WP1XKrmBC+rEsXTP7Ph5gnCiWFKcqpbdBTZO4cp9vz8jrclbHe9Rh9BkWEW1TO8
         GZjGVmEKAC+8f6IxvPLw9lx1VYkj5toXbqjSH2xRq8sS/6xu/228EPupua0I/d/LHxbX
         Je9c6QWGtlsqMDOMY/MNwH0sAb8TIz0VOmArZkV2MYAmSFbm8mxHAuRr5KDbkFU7Rx1w
         EzKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691638618; x=1692243418;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TSNNkaPltDzvRqvPQ5AURytQA+f7zbY3FYgxLyQ5bDI=;
        b=drajDb2a8jI6RZg271/eBosyb8b+s1+rH2pB+yB4V46dgdBY0CPgOuIfGtJmKqhpjL
         +WaR0DK4qvpeO+AWSrOUfV9smoEGb+LvQejDyOM7GmDiCrgtWWqtvg9ze0mIBG4yNXPI
         FTOllIlEtYNNfokv4V+gsEmuD7FWdxlOdi4DA7ZwHpQ+909yV6yJNikaalPTIXn6mxh7
         yVd1ot8Wrdfs9SrtG2etbx8OfZvHXE6kaG7cUvsQoiapMARbdppeQ68Ja77Spnw4WVqp
         1YoNwA3QQO+J5A+4An30p6bnpDwvIRyTxTT2xLtxayS2eDtsh9YfIZ8pBtgEaaIOcvC4
         60qA==
X-Gm-Message-State: AOJu0YyL9e86UF2XUcWKyggar31qAAsKPZPcLpdWCmglMR3evECuHSEK
	8CfLFGe5qd6roVOOrsICKQycY3cKLjE=
X-Google-Smtp-Source: AGHT+IHAJXeFOoupdnNxL9OaIahptUSabO3Ro+Ym2zXJFqeyUgrNnFRs9RV0CYAzmgX8c47xl3baDg==
X-Received: by 2002:a05:622a:13c7:b0:403:a701:1ac3 with SMTP id p7-20020a05622a13c700b00403a7011ac3mr1856201qtk.46.1691638617777;
        Wed, 09 Aug 2023 20:36:57 -0700 (PDT)
Received: from [192.168.2.164] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id m19-20020ac86893000000b00403cce833eesm218576qtq.27.2023.08.09.20.36.57
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Aug 2023 20:36:57 -0700 (PDT)
Message-ID: <d9cca6a2-6205-df89-7dd6-a831c380fb9f@gmail.com>
Date: Wed, 9 Aug 2023 23:36:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BEFoLHF2r898syrQEbsDN5oFaMIkJEa5kZRiyiyaU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BEFoLHF2r898syrQEbsDN5oFaMIkJEa5kZRiyiyaU@lists.ettus.com>
Message-ID-Hash: HMHSG5ZD4PY3UBNT6CUTKJ7JCSSY3CVT
X-Message-ID-Hash: HMHSG5ZD4PY3UBNT6CUTKJ7JCSSY3CVT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRPX410 transmitter issue underrun for higher sample rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HMHSG5ZD4PY3UBNT6CUTKJ7JCSSY3CVT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 09/08/2023 23:33, h57jafari@gmail.com wrote:
>
> On the powerful host with intel core i9 13900k, with 24 cores (Ubuntu 
> 22.04 system) I installed DPDK, UHD v4.4.0.0, GNU Radio v3.10.7.0.
>
> USRPX410 is connected by10GbE link (intel X710-DA4 card) to host. I 
> also set all the tuning for high performance.
>
> benchmark TX/RX can work well with almost perfect without any errors 
> even up to 245.76MHz.
>
> When I run GNU Radio, receiver works well for high sample rates. but 
> for transmit side, since I am generating triangular FMCW waveform, 
> chirp, with using triangular signal source and VCO, I see several 
> underrun for higher sample rates more than like 50Msps. Any suggestion?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
You might post to discuss-gnuradio, since this is squarely a Gnu Radio 
performance issue.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
