Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEFB718667
	for <lists+usrp-users@lfdr.de>; Wed, 31 May 2023 17:32:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 81246384767
	for <lists+usrp-users@lfdr.de>; Wed, 31 May 2023 11:32:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685547149; bh=+YLhP9vZJVz8vbvYImKz74JEm7AKwaaTT7ED2wouceA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=lPqakR3sr5O+Ej2xyLAoFBMInp3B4wgSw8VroGTwH8ic8ANu8pnEDdXdNTm2GnHrw
	 5CXmLj1kzGDPrQuAy7yARLHiZNZZgfNo4Nu5xBo8XVPKC7Kl3IWoqiMq0+Lx6vLFne
	 D2NQWjCD09JyiDb1ISwV5JGW6pqgVE32Toq6Zpn91XmRiSECRTBlulqlMsvHcsFl6L
	 qWeaGk+r+M/64N6ZMgcQ5yWtwGTa0QjiNZmQAV9ITj/torCcPSzxjKoaPy0nq1jZ3a
	 A7usqUTBYd9Z2Y/iqH4P96lmloE3K2Z4Ml5ccJb8C66JPHbwK3NO70xaLGJja8ShKZ
	 FJ2wCqshpO5EA==
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 137EA384157
	for <usrp-users@lists.ettus.com>; Wed, 31 May 2023 11:30:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZVxLanw7";
	dkim-atps=neutral
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-6af896f0908so4204140a34.0
        for <usrp-users@lists.ettus.com>; Wed, 31 May 2023 08:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685547030; x=1688139030;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5OH2Eq9WqtO3m2Y13E2qegwWHAhFKJJOot1ZbgzvdfE=;
        b=ZVxLanw7/oI8dd1YA+rygPDi3nBSFtftpvGhW+HMLVDWYzoygH9vhO9jFHbGpz1eOj
         Lx32bzD+5eiWwAXAFKrFEfDPfZCN70TcjPgtIIGx6ejYYC+rKi/nvw3A4X+KA8gqPwqG
         Bx/Zlme0x4k9uhvbI/ex9mEt84lyz1NXJq/EpuIHw+wrCNCkzLuYt3tXQ1bKiEzEkqZ9
         H3Sr1AX8lTXO7vLL66esFIenfE/Zhem1+W0G2xl+oaSAahWaBiR7oylWIJ1/Ad3VdZdc
         aaw8Dz/xqljUxpr/H6/Bhgl7diza1X3igPjQGqDWUX6FIGicoXEOW6mSQ7yUPe1cUIu5
         18xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685547030; x=1688139030;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5OH2Eq9WqtO3m2Y13E2qegwWHAhFKJJOot1ZbgzvdfE=;
        b=kgvYD+1uVIYmJh4A9mVF1RQO+O/nx+wdJ3DZBPp8yL5q5cXZJyYgHHFLRq0ZYdEA+I
         IUvjqJcC5tMtaD9A7Bh7SyvNiGvtDwjNuQPOTlCbeCx5vKHb2ULwN5NWrRJqJexumfF1
         G1Xuv3x96hDIPmR1CbqevqMjbU/wLFyiPSmxN2GlMW4kbyqb5g9A+XkJv3e+gqwuonDx
         feFMnijliQr1IN8QZkib1QqJS5pXnm/IncycK5iXwICs6578mIsYKrzMezD60+FxK/Aa
         glz8jP9DgSZQ0RWb56PEDgIaL0jDUbXge/7gOBsVHF9yEVfdT8TaRN5sE6+Gr044f8Go
         XDCg==
X-Gm-Message-State: AC+VfDzK1bQqUrUt+//h7ww5h3XWjvyO/N32ktnC0eJ0fIXXqqtIo9QG
	OsqHK94I6MmssL2Elwa8T91lPvkUMxAMyA==
X-Google-Smtp-Source: ACHHUZ7PwxXr8M4KKhp92m8zSWU9rIRRzYaeH3+uSTsg+j/DDaceevw4KYHuHnV8gXRVVyn1VJZJyA==
X-Received: by 2002:a9d:7551:0:b0:6af:9404:b40a with SMTP id b17-20020a9d7551000000b006af9404b40amr1589956otl.24.1685547030015;
        Wed, 31 May 2023 08:30:30 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id f7-20020a05622a1a0700b003f4e1cf23easm6072580qtb.73.2023.05.31.08.30.29
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 08:30:29 -0700 (PDT)
Message-ID: <8c36be07-11f6-61b1-f14e-51965b4a76d1@gmail.com>
Date: Wed, 31 May 2023 11:30:29 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <AO5ozBGqz23O7t5MdERBSKVbhVFt94ICiSwVwtqd4Jo@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <AO5ozBGqz23O7t5MdERBSKVbhVFt94ICiSwVwtqd4Jo@lists.ettus.com>
Message-ID-Hash: 3ZV5RWCLLXAJUMN254VWXC6BBKDK3UBP
X-Message-ID-Hash: 3ZV5RWCLLXAJUMN254VWXC6BBKDK3UBP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 help
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3ZV5RWCLLXAJUMN254VWXC6BBKDK3UBP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 31/05/2023 10:35, pistachio6981@gmail.com wrote:
>
> I agree that it is probably a simple networking thing. I can ping each 
> of the addresses and the device pongs back. I did try to run the the 
> benchmark program while specifying an IP address and USRP type and got 
> the same error as shown below:
>
> /usr/local/lib/uhd/examples$ ./benchmark_rate --rx_rate 10e6 --tx_rate 
> 10e6 --args "addr=192.168.10.2,type=x4xx"
>
> carboxymethylcellulose propylene glycol[INFO] [UHD] linux; GNU C++ 
> version 11.3.0; Boost_107400; UHD_4.4.0.HEAD-0-g5fac246b
>
> [00:00:00.000281] Creating the usrp device with: 
> addr=192.168.10.2,type=x4xx...
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
> mgmt_addr=192.168.10.2,type=x4xx,product=x410,serial=326B6ED,name=ni-x4xx-326B6ED,fpga=X4_200,claimed=False,addr=192.168.10.2carboxymethylcellulose 
> propylene glycol
>
> [INFO] [MPM.PeriphManager] init() called with device args 
> `fpga=X4_200,mgmt_addr=192.168.10.2,name=ni-x4xx-326B6ED,product=x410,clock_source=internal,time_source=internal'.
>
> [ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on socket: 
> Connection refused
>
> [ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. 
> EnvironmentError: IOError: recv error on socket: Connection refused
>
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: 
> EnvironmentError: IOError: recv error on socket: Connection refused
>
> Error: RuntimeError: Failure to create rfnoc_graph.
>
> Any other suggestions?
>
>
Do you get the same error when using: uhd_usrp_probe --args 
"addr=192.168.10.2,type=x4xx"
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
