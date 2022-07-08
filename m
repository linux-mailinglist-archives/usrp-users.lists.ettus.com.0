Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AC38E56B5A5
	for <lists+usrp-users@lfdr.de>; Fri,  8 Jul 2022 11:36:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5922D38436B
	for <lists+usrp-users@lfdr.de>; Fri,  8 Jul 2022 05:36:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657272985; bh=Ma08sB6bXFggq+NDzoMPiRumm+eIHqXHYmfZ+ZMO48w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=A+R8htZybQEn/3mMYDeKLKSywhqihTgRSKuTHn6yj9uj10AGCk9aXkjLzf/xjZhIm
	 /lH7vb6RoKn8HKHhH58G/gTmuO+fZf8ojrLBr2kaEhz4Pr0jSDXJmA9iFLNCudIn/q
	 yi5nx9UvGAdEor+0wM6nt6uq1cwIgtYBo4BHIGIh4HPgkdIFD6BxkzHbRCvVBs1BR/
	 oxfFHT94uxxaEzC+gyGGm1KT3PEiwcgJsYivVYghteREquS4BAq8J8Oev7H+pVeUPt
	 fiK149LVrIFiqOIJyJ20Ae9p7qT67IE1KxGT3yOsWE+nIxnoW9VlZPfqwcCgWaqrZw
	 48yNqNj2tX09g==
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mm2.emwd.com (Postfix) with ESMTPS id EB0AA3841C6
	for <usrp-users@lists.ettus.com>; Fri,  8 Jul 2022 05:34:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="KUl5nBr+";
	dkim-atps=neutral
Received: by mail-ed1-f49.google.com with SMTP id z41so26227560ede.1
        for <usrp-users@lists.ettus.com>; Fri, 08 Jul 2022 02:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=7SGThzXhvVdtXfHsyCJBsPKGKiYsPSuqzEW102GsMOo=;
        b=KUl5nBr+vNAz4JOstUjuxccaIT2n28pv/3GIy/2eVsmYAjkJJtejN8zIUJQz4wDQC+
         9O9ymNuWQKERAyXyQkdi7uk5qypjKOjGH0Q6FBMp2rIm+FpKa+F5iJ6cP129IjiX87vS
         T26z38QWrAzj3diLIBXdZDw/QUT9PuNghFEWmz9ajJTpYCbegRyrAhYQoQU33Ys+uhF4
         RY9pKzlOszMTbCVZIzc6Wh8Qhpj1jonfpJp8wT/qr9XDbsWoN5aILlJMzl2Sn+E7L/d4
         k3vugeYEQALWJ0gtGR/6YA3eaQp5chA9fGDrFKArd2vj/sLDTIs43/8uYXpUK3f5pJFS
         coFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7SGThzXhvVdtXfHsyCJBsPKGKiYsPSuqzEW102GsMOo=;
        b=HHLr5BNG+QdjuRzPmoMrPjIdGIpFFvAHvTtCKTniSU/4MlvYu7URgkUarNjFP9YRQf
         xDSUkUF38Te6vMQBoYoIctro8HLYvEUaF9dzgyg5FQnxyqHnjfoPj1/d8yDVup2asNH5
         j5cF5smmIaKUOujRgz3TA9xLbbgLcg4jUusZHKEALnIfaCUULsFexPBpBViNft/9kmXs
         m+H3IAAbOZyM+meHmrDpbmh6Il5PXad7K0e2zr9BDzl2QZ211gzN5zzpbgj0vkdsPUuf
         TPafvwDAS/mfbzruOSrJLWhGTBlyvcD9U7Ol1b/3iiGS1Oz23tZLc5fytjrafVaIjs3i
         hyzw==
X-Gm-Message-State: AJIora/Qs60hVh56MrDB69VYPDHxLJcOHRM4qIdwIfeTwW1E9A1FWf2x
	Zj1//b2Su2izqVZQ+csMbxll644obZi7aBJB
X-Google-Smtp-Source: AGRyM1sLZYYxCmp1+nRvmD+dMdBJKDQQrRhO2b+Zm/+/zVTSEqCCNAiDo2UyLIiWL7ZlKxBNALJdEQ==
X-Received: by 2002:a50:c209:0:b0:435:6b37:46cb with SMTP id n9-20020a50c209000000b004356b3746cbmr3434312edf.341.1657272872561;
        Fri, 08 Jul 2022 02:34:32 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3857:4cfc::d8d? ([2001:9e8:3857:4cfc::d8d])
        by smtp.gmail.com with ESMTPSA id g5-20020a17090613c500b00722fb3c99bcsm19995391ejc.203.2022.07.08.02.34.31
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jul 2022 02:34:32 -0700 (PDT)
Message-ID: <8a1552dc-5d08-f495-b648-e8060a645ada@ettus.com>
Date: Fri, 8 Jul 2022 11:34:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CABCBi__Sq5uusAREgs9eP24=xjUiJTVJzqvK6rQy8s5h5pqekA@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CABCBi__Sq5uusAREgs9eP24=xjUiJTVJzqvK6rQy8s5h5pqekA@mail.gmail.com>
Message-ID-Hash: JJLIWSQYV5FYNMZ7IJW25WT63KJU23MD
X-Message-ID-Hash: JJLIWSQYV5FYNMZ7IJW25WT63KJU23MD
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N200 - Tune request
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JJLIWSQYV5FYNMZ7IJW25WT63KJU23MD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi Gonzalo,

the tune requests work exactly the same.

I'd point out that 400 kHz is a sampling rate that's simply very very low, and might not 
work well on the N200, where the Master Clock Rate is a fixed 100 MHz, so the digital 
signal from the 100 MHz ADC needs to get divided by 250, which isn't even divisible by 4. 
Try a sampling rate of 2.5 MHz instead, and look whether things look nicer :)

Also note that 20 dB gain for the UBX and the B200 mean something very different!

Best regards,

Marcus

On 07.07.22 22:36, Gonzalo Figueroa wrote:
> Hello everyone!
>
> I'm having problems trying to understand how tune_request works in the N200 model (ubx 
> daughterboard).
>
> I've been working in the past with the B200 and I used to get rid of the LO using tune 
> requests. But doing the same with the N200 leads to a different behavior.
>
> I have a B200 and N200 in the lab. So,to illustrate the problem I've made this flowgraph:
> flowgraph.png
> Both USRPs are connected in loopback (TX/RX port with RX2 port).
>
> Running this flograph with a B200 gives me this:
> b200.png
>
> And N200 this:
> n200.png
>
> When I run the same flowgraph without tune_request I obtain this:
> *B200*
> b200_no_offset.png
>
> *N200*
> n200_no_offset.png
>
> Could you help me understand how tune_request works? And How to use it properly with the 
> N200?
>
> Regards,
> Fito.-
>
> PS: Attached you will find the output of the command uhd_usrp_probe for both USRPs.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
