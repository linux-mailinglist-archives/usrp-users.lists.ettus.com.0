Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E044B5622
	for <lists+usrp-users@lfdr.de>; Mon, 14 Feb 2022 17:28:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CD25238599D
	for <lists+usrp-users@lfdr.de>; Mon, 14 Feb 2022 11:28:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="k+zyYGQq";
	dkim-atps=neutral
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 41B19385573
	for <usrp-users@lists.ettus.com>; Mon, 14 Feb 2022 11:27:05 -0500 (EST)
Received: by mail-qk1-f180.google.com with SMTP id j24so14797923qkk.10
        for <usrp-users@lists.ettus.com>; Mon, 14 Feb 2022 08:27:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=AULwzDBS3qAnL7NHLmJzu2DjPUhEze/wm0usMaa/Li0=;
        b=k+zyYGQqLZKDH7Vbk9iDGX/SawtwPyCGMYD6ELIFL4pDshnCl/CTodGxRF26Fgu1rl
         wuFXIkrmBGjqltdIYnPSldCfkkQObceqCYJzLgoAvLafv9aJ1nKaAFiqG9K7H1ZA9pZ0
         6pPeRO7vhP4Vdn2jlMonRd3/SUckw6RafkLe1H4ivp+4DR9Kd6uVjaFQ8dpoFKutONdy
         knRw12pwqPs6ZMurppkYJBeraezSoZYVs7U9XtNSVNr7PNAXWLr9Xu3lkfeTfm4wZ/25
         Uh4+73EGFz0lbkHvzRi8a2Zrzzg7XzV40Nvs/ZRWyOPqrKWlW1FcckxiSTfON5vMyr/M
         BHyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AULwzDBS3qAnL7NHLmJzu2DjPUhEze/wm0usMaa/Li0=;
        b=792Gg+X0dnL3e3fvCMmbct5uTkGlp0lPRi5mqYTsjOyuCzn9VPyTPefcszyVlPmRRN
         bS+Me1fjZa55bf9hMzj+xLScwm9yE8iUiyxgOG9i/baQTW6A5cJUiZ2O8Lp0Wb70HVDg
         WUn8IYssToVsU4JL0XEmhIIlVy2L9anUaYYaPUN7MeTTNxX4XIAwkAOAsRp4lv5xbFtK
         7nV2eW2rMzR5vG6+FkvkXB5wqlNwqZ6+Uuh54DrjgrYgpP6OfM82CrxUtHkAXI8XcwEC
         2/mRDaoefy74xesfk7DnlhkdUYuOWq6cApAuni8W3cZB4/aU3J15thDNPwlhhBpXC6ZZ
         95ag==
X-Gm-Message-State: AOAM530QsfmVjqZtlttXO6ltLuV9pFPn5/g4ATL0rLgydW1bLexIS0jW
	B38xu6mon2dloST9cz0ayru9JChJ/eiBsA==
X-Google-Smtp-Source: ABdhPJzRJF976rBUY6af/gPDiuugmks1LUslnpE46hysqYnundK/RZKYfn/oU5ZxoQDIlnNW5ty8qw==
X-Received: by 2002:a05:620a:2556:: with SMTP id s22mr226811qko.291.1644856024486;
        Mon, 14 Feb 2022 08:27:04 -0800 (PST)
Received: from [192.168.2.211] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id bs16sm15832080qkb.69.2022.02.14.08.27.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Feb 2022 08:27:04 -0800 (PST)
Message-ID: <ed848007-2bc2-d246-209e-3217bf37c1a2@gmail.com>
Date: Mon, 14 Feb 2022 11:27:02 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <deed8d5e-6ab5-21dc-5da9-9f580e859dee@gmail.com>
 <014601d81e26$cb469260$61d3b720$@zengyi-tech.com>
 <384482b4-b1ca-a497-86ec-46baa7c43472@gmail.com>
 <28e04eea-f737-f99c-c851-15b38b02388c@gmail.com>
 <ec67277c-80ac-db10-af63-c15987cf8042@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <ec67277c-80ac-db10-af63-c15987cf8042@gmail.com>
Message-ID-Hash: AS3RGVXIGE7ILWY5LJBUTNX62TPRA6VA
X-Message-ID-Hash: AS3RGVXIGE7ILWY5LJBUTNX62TPRA6VA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?b?UmU6IOetlOWkjTogTWVuZGVyIFVwZGF0ZSBQcm9jZXNzIE4zMTA=?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AS3RGVXIGE7ILWY5LJBUTNX62TPRA6VA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2022-02-14 11:25, Giuseppe Santaromita wrote:
>
> Now it works fine, but when I try uhd_usrp_probe this is the result:
>
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; 
> UHD_4.1.0.4-release
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
> mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3211008,fpga=HG,claimed=False,addr=192.168.10.2
> [WARNING] [MPM.RPCServer] A timeout event occured!
> [INFO] [MPM.PeriphManager] init() called with device args 
> `fpga=HG,mgmt_addr=192.168.10.2,product=n310,clock_source=external,time_source=internal'.
> [ERROR] [RPC] At least one PLL did not lock! Check the logs for details.
> [ERROR] [MPM.RPCServer] init() failed with error: At least one PLL did 
> not lock! Check the logs for details.
> Error: RuntimeError: Error during RPC call to `init'. Error message: 
> At least one PLL did not lock! Check the logs for details.
>
>
Did you actually have an external clock connected?

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
