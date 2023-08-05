Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 79237770CCE
	for <lists+usrp-users@lfdr.de>; Sat,  5 Aug 2023 02:59:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 71E5F384B76
	for <lists+usrp-users@lfdr.de>; Fri,  4 Aug 2023 20:59:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691197145; bh=EQPOQFFdl6bZzV11Jn6rZV96AjNDylu/nWoVIpGJt0g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=cGj8u1cvPIwNLJOeveVH9RVgcbywTi0UxIdcO+5ElGIujQAleqiCuDt5LpoFtjo2Y
	 j6/QnI8vZf2xqBXuthIg2Pvvrh5wlP5BjRc96fKZ2uWBl8BFKz/6KvpVQ/zGZKjMqD
	 /gAiiB5v/4KuDylElClx6c1/7nzG8v4NEh+0FvjFXg50KjUZy3Mj1rNWNcR/uAeL1F
	 0g6oN41l9F65ZfZd+mbiMiVdj1OOmd5aZSC8y+xl1GV46eeeN6mNA7noMa7whSWQjY
	 dmAXgC1saRY0NmFhkwi0lrza7XzvuMmgMJ6MSC3SlB8ReMSLDbIGkNouBfXFxYxInr
	 ZqY8NinZAnAjQ==
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	by mm2.emwd.com (Postfix) with ESMTPS id BAAFB384AD7
	for <usrp-users@lists.ettus.com>; Fri,  4 Aug 2023 20:58:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Gs3gR10S";
	dkim-atps=neutral
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-1bb717ece50so1921468fac.0
        for <usrp-users@lists.ettus.com>; Fri, 04 Aug 2023 17:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691197130; x=1691801930;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/IFHDBG/SQ4jf6Rtux1j9lB9yrUQXKhVjpaSIXDv6Vw=;
        b=Gs3gR10SYFh/ZKhMBZrimKsBqqfLchSKtJkZcTfbM//uRwNDizoF3PsugdbPwcmG7w
         8ppNM5TASNPp6JRQJ8W+4L6miB4hu+0kVm0p5oFky5rGgmnSTg++2L0k8Jrituhn6ymI
         9sgV7paL3jIgsIS+SvUXtW9roWXT99X2vLN8Nu5/CnVU4rDVYDCUYnm0YL0I4dCdfA5q
         PFubSCPxdax8dgxMHQlJrDNOS8bTwBvOCNu9H0df56ERy3NsEdsSrFuqcHiWFxmPwFJc
         eqVyZrtTaZD1x9K0BVIba8aOyMIMmK/E0w9nOMdDy5w5SRpRF3aMakmRW2NxOMQ7l7hu
         RBVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691197130; x=1691801930;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/IFHDBG/SQ4jf6Rtux1j9lB9yrUQXKhVjpaSIXDv6Vw=;
        b=iCYa2vc2l9AN+90+hWwg3AerydAw7aQzY2P0g0bkovh7sxepevs1PS7OSKwn1cB2R6
         94j3fx672HODUXPUB2scRgiXmYxZrQ/+H1dsPK/f19M0B5hcHyfcMm/5YzlTHfhKicIR
         UMkm414koidVy6UJEh6jZ3OOxrHmE9t4oD2w2baP3uMbv0VQUZ/+jJviTmu/aCM9B3lA
         Ei3ShfzhqnuACXofOQmvCcpsmkDK9mFp7z/XgCgaRfoj4AquTFFj8XQcyD3Yuiaz/fxT
         2dv0QFLN4F38sP2ywGoRVTk9AySQdL0HHbzRJS0ZHGiiLUwjARJSzS/Z8GtZfYZ9EZY/
         B6Cw==
X-Gm-Message-State: AOJu0YxzwcYIGHYPqW9TvmFt5d7SNycMvO7iYqFGmkeFNMPFfT3aRP8V
	7ITrH8V/kSuoFxdaTUg1xBwk0eMd258=
X-Google-Smtp-Source: AGHT+IG1AX3h9Pbreb4BVrGpz+EPi5qH8ocGnJXloGxXihDMCp+xsAhH9rKaWcHOqmfgh0PxPsBdsw==
X-Received: by 2002:a05:6870:b514:b0:1b7:670e:ad85 with SMTP id v20-20020a056870b51400b001b7670ead85mr3839286oap.49.1691197129728;
        Fri, 04 Aug 2023 17:58:49 -0700 (PDT)
Received: from [192.168.2.168] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id y24-20020ac87c98000000b0040541a8bd66sm1009681qtv.60.2023.08.04.17.58.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Aug 2023 17:58:49 -0700 (PDT)
Message-ID: <33990667-b547-dc4b-8e98-649b560df3df@gmail.com>
Date: Fri, 4 Aug 2023 20:58:44 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <JY69MVrXA1ftfNlnyzeN8KI5JuYFOwHyCm5H1oY83cU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <JY69MVrXA1ftfNlnyzeN8KI5JuYFOwHyCm5H1oY83cU@lists.ettus.com>
Message-ID-Hash: LYRBMSRTO3AMRH3QGLP6JCNZOZU7VXB5
X-Message-ID-Hash: LYRBMSRTO3AMRH3QGLP6JCNZOZU7VXB5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: What is the power socket on an Octoclock CDA-2990?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LYRBMSRTO3AMRH3QGLP6JCNZOZU7VXB5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 04/08/2023 20:49, shapkiquarry@gmail.com wrote:
>
> Below is shown an Octoclock CDA-2990. What is this threaded 6-to-15V 
> power socket?
>
> What would be a corresponding threaded connector used with that?
>
> (two images are attached)
>
>
I *THINK* one of these will work:

https://www.digikey.ca/en/products/detail/tensility-international-corp/10-00113/2123068?utm_adgroup=&utm_source=google&utm_medium=cpc&utm_campaign=Pmax%20Shopping_Product_New%20Customer%20Acquisition&utm_term=&productid=2123068&gclid=CjwKCAjww7KmBhAyEiwA5-PUSpaO7wV6n5IvvRxsvnUHHwehR7mf9c3mk9ioWTUhujMxV1MXJSGCehoCwYYQAvD_BwE

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
