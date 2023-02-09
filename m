Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5370D691051
	for <lists+usrp-users@lfdr.de>; Thu,  9 Feb 2023 19:31:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 90AB538430E
	for <lists+usrp-users@lfdr.de>; Thu,  9 Feb 2023 13:31:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675967485; bh=ZE4jUBEfKGLJwv2wF24QKRHON0zdC63/UtZ5AkFR098=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=TGAryKanRWvf/1JrAIGQIaCbkl8XrhUaFbDrekdcrvaKuKRMaYdKqraKnp4jH75/Q
	 IeyAGaPu6sB0EiKL6dBpmlQiTFEJGJNkNg7Lf3LGoBm7b40K/mhpKDFooJcNYcF/Ov
	 pfUFBDN5eZ2Zv8ccEmeu425SxRd62p72OuQBctkGjYCaE0SmyTEsNmLmmFLbLx2hJu
	 p/CySxHcm11z5fQntibn0I5hEM4EGsft8FrnWWtYJC8Y31pNiYI96Hcffj7TNy8r5V
	 h4nNALP4woASn9tRRDD5dXNHbXPYNH6Usb8ZhPslls+tbStxXQwH8BI21uE1hhLtHH
	 F5lgAXjT9WynQ==
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id DCCFF3842F5
	for <usrp-users@lists.ettus.com>; Thu,  9 Feb 2023 13:29:51 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NMKRSUiq";
	dkim-atps=neutral
Received: by mail-qv1-f45.google.com with SMTP id d8so1939039qvs.4
        for <usrp-users@lists.ettus.com>; Thu, 09 Feb 2023 10:29:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oBee5BjCj8wp2PqMIL9DYfACzlwnhLiXTYo/301SsWA=;
        b=NMKRSUiqRqitaC/AUZago6kMsALKLIQwSiSLMo2IZ0Zm/AXTdUAs7lE9Py+SR8RVT3
         ColNStS2D1UuOHkXcGnisdXpY0rqGo1T6z0+B0pmXacgtVGbeCMNkL3kXo2QhcVnPKpy
         7VWKH0IjwkaUWPnxPIFCLTHtANYw7RbudnwHM2UZF7V+p75QYgDY8pSx51LCW20a5MDN
         DUDe9AUR4O7D+4+C3TtwjOvS+RJK77nl6aYisBisHWIgCH7M1pNqFhdQWdvnJMPy7U7u
         V7ShnyeJEHGXkh9oK77q6qS7vlKLE5jRVvxnWDF5wDz8LBUCvkhj4b5QVjEp0pP6BhKh
         Oo1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oBee5BjCj8wp2PqMIL9DYfACzlwnhLiXTYo/301SsWA=;
        b=tn7Hk87/EdEjPcI/xBuCAwkIe8upcrdQoLdx3YnyY9XEqYpWMYn55q0W37OfBUJNMt
         bEdIIQb5Qx02c9oexpPfb5udZydBIqKX8tRd2dl1qXjBiYXeoYvXdUSkGZ+xmkZY4Xvk
         ISVq0WZ2I4cXGGotmE2AYDpOEf2LGifoa3dBi5P+kj02NWwHy44dptz8Ne0/83oMzFal
         sAM/UTzFmFqeOmvSe6XxgmhgXcwkzVt+E4FTZzoJwOSQtLk+qQsL1o7q8DyZRhubjqbV
         2zB2K1TRu9zcm1Sd+E4WaY1erTXnbv6l3lPw4YVBWAkpCO+ln9sYKyr8+eBUODCmZjvF
         cKYw==
X-Gm-Message-State: AO0yUKXzD4kHfGJHXw7lXpkI4ChVsvrkVZaOdBsC8uuKGdad5qfdo122
	xKRG7/UMU9V0YJt+u6GtRInYx7d6ltk=
X-Google-Smtp-Source: AK7set/E4pLMJkJE18sgpniL/tSttaKrzcWrlgenjUT8S6ZG9K8pEUamt68KID8b9Hw9RYk+Kg3UAQ==
X-Received: by 2002:a05:6214:27cb:b0:56c:25dd:f738 with SMTP id ge11-20020a05621427cb00b0056c25ddf738mr5539551qvb.16.1675967391178;
        Thu, 09 Feb 2023 10:29:51 -0800 (PST)
Received: from [192.168.2.162] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id a23-20020ac84d97000000b003ba20fd91a4sm1737204qtw.11.2023.02.09.10.29.50
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 10:29:50 -0800 (PST)
Message-ID: <7c51e72e-36fe-c738-60b5-ea2dddc7472d@gmail.com>
Date: Thu, 9 Feb 2023 13:29:50 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <3e9ccf66-34e3-e379-d40d-b9b87a811300@3db-labs.com>
 <08cde01c-f15b-d4d8-404d-8f96d92f4e4a@gmail.com>
 <06b39c7d-a30c-3644-3488-8ee0f3a28a59@3db-labs.com>
 <2616b5ee-7b4b-7e12-359f-82272370c69c@3db-labs.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <2616b5ee-7b4b-7e12-359f-82272370c69c@3db-labs.com>
Message-ID-Hash: LOQ7NRP5WYMG6XMNGHR3SPQWBD3KS7WT
X-Message-ID-Hash: LOQ7NRP5WYMG6XMNGHR3SPQWBD3KS7WT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: MPM startup failure on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LOQ7NRP5WYMG6XMNGHR3SPQWBD3KS7WT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 09/02/2023 13:27, Jason Roehm wrote:
>
> Disregard, I neglected to do a full power cycle after updating the 
> eMMC. After doing so, MPM did start up successfully. Sorry for the noise.
>
> Jason
> _______________________________________________
Ah!

That's encouraging.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
