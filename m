Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 553C7B2AE79
	for <lists+usrp-users@lfdr.de>; Mon, 18 Aug 2025 18:46:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3A08938625C
	for <lists+usrp-users@lfdr.de>; Mon, 18 Aug 2025 12:46:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755535576; bh=cCbPpbyTcCXT4BJt/XH/P2UrA/caWYqmeLEkCJhT2QQ=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=NVyBs2YEONeEAr5Z7L9v48xKfc0lTbN3UDkegSbh02vydod7Zzo5KHEC7UEPIDvrc
	 dMnRGIsrii3xPkiqwRLS802x2CKJrdXjx0c796TSdS+BT8NH/XfQ3n7cVgyCH8fzRh
	 bWsqx6plUcoU8gOIkja8SUKjxBoYhAn58pcrSwCN9gXYBSYwBAJQt1BbFLm9QKA4in
	 /q+CbrF9f8/GAQX6KoHASokVRQMO5Y6rvDZe52f+nLISOnwBAQI5H/fAoR0E6mHcF9
	 S1+8eLKGwgbtXwdJ/DrC4ssLNg6T7kKfN/JtWoHJnvkQJ63kseb+8sLlQurfHjCIXB
	 ukxfRpEyIZrQQ==
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 1C9863860F3
	for <usrp-users@lists.ettus.com>; Mon, 18 Aug 2025 12:45:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=febo.com header.i=@febo.com header.b="QppVyxGE";
	dkim-atps=neutral
Received: by mail-io1-f54.google.com with SMTP id ca18e2360f4ac-88432cbdb8bso32430139f.0
        for <usrp-users@lists.ettus.com>; Mon, 18 Aug 2025 09:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=febo.com; s=google; t=1755535524; x=1756140324; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tkZSBros8X4NZGRLn6sEC9px1T74AzTu1WDDNYHhutw=;
        b=QppVyxGEDQqQGXwcPuarHE5leh7NiE2tqrokqvUcQrmtj8aqfRxb4+WKuR2ZjYEgoJ
         S0obB35CW8SFrz6pV1kPWCUQqy68oVeqikxa2dLm3YfgLLayDMnwxgA5Qq62bodQByKc
         p+aX/XxpCfTSUEWmytsJ03vsA7s9HhSxYrr9o1F9CcVnwFuxeB9VFgz1xW4SkbC03PQw
         f+Tl5FzLLWQH/r3T+TyoI7AWmQJH18z4UMb7n6GWv6iW8TMfN2C1yjn8iAuLFl+BXFaM
         /dGxH8XOfK5dy0NQy6kGnI2gr5Xpc2Yv/Yurr4oFGXCmFXEAL41XCwQ8JQ/4/5bS0pTh
         AawA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755535524; x=1756140324;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tkZSBros8X4NZGRLn6sEC9px1T74AzTu1WDDNYHhutw=;
        b=pr8WtgNXWICV59ISe+RYXhjJD0iOX/ZnXea4NQDLxSsG8YoLzhIhgR4rb4i3dSzAzt
         Vkrdhf/4Z8sGzMZykQkEUUly9lfSQN6yq6URLZ75i6GRSsIrcKCh3cbgrMSu6J1/Iv1M
         FnbNosQT3iDz+7UZqrhl8BTfasFbFJFc5b2yQ9r8XpaJzAbk4Hk839dAAWMtyA2ABGkr
         0yNs7MlxOkmUY8kVPVvrDL6ppTU8MALL1gapm70aiQck/lWFRceXkue5wpoiWcDGSgGE
         msxEsdHJ92baqOiilBWPAAbO7+npLEJ8uKuxlz2Hu9khMkg6JWjgBR4wCbqqxgUBjI+k
         BsKg==
X-Gm-Message-State: AOJu0YyyIQkwvQ1K5Q9mgErIRPVgHXGqJM/7sGOXOyALp7I4UQHVIr5D
	NMPwCY9wNoa4Qh0ZWaBl/xFAOgan4fuo0vUALhmDwQJOCBkuhJ2eBF4RUZMoK4XklJJCt/Ll9Lv
	T8+rt
X-Gm-Gg: ASbGncsU1VpN/tKBwrFQYzvqZGo6QUUNv2oYldQudMtrcsenXsWlKiIK6Dxhsjas+uq
	OZsosUB4vhV1VEnXnfNZZDnvJKQ03prfyQHx3lgTWRo802YXdpULHjRsjcbsjyjSHLQr/JGA0Q9
	5U9OHdG2JWeRHGMjKGQl4a0rOY2UI9N9d4bIc55M2Hai5SFSOzLCQSHWZ6YdPhb922SwfrJ6Yhq
	mBJhbPFvhL4nnsg24I66cJqII2PPtt+Tvj7ntReb2yD9rOuoG/MiazK2hPEjgVAJPrjp1+lZWIi
	ipdnMl63gj2qCXQUxGzhXhz5nhTtkpo3UXKwOY9aFk25q9334UkvGnGpegl8GFsP2g1VEJHUwFp
	N/vqCpQeMNpHRAzqb11Is8g==
X-Google-Smtp-Source: AGHT+IHkbdLYTsysQ1g1Oult7+U8Wa11WfBe7XeRTebCOd4ln7TYDwoHp4UhzF7h0Me4L17/p5tDaw==
X-Received: by 2002:a05:6e02:1785:b0:3e4:ac3:ffd6 with SMTP id e9e14a558f8ab-3e57e9c0eb9mr235654525ab.20.1755535523909;
        Mon, 18 Aug 2025 09:45:23 -0700 (PDT)
Received: from [10.73.3.60] ([104.185.8.17])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50c947b3790sm2652549173.25.2025.08.18.09.45.23
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 09:45:23 -0700 (PDT)
Message-ID: <2e747d9f-1d80-4eba-bd6d-9de663a1cbf1@febo.com>
Date: Mon, 18 Aug 2025 12:45:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <WFA4BByCp6lqiQcPr6H6px5FERuRyBLpFraiJHLAs@lists.ettus.com>
Content-Language: en-US
In-Reply-To: <WFA4BByCp6lqiQcPr6H6px5FERuRyBLpFraiJHLAs@lists.ettus.com>
Message-ID-Hash: WPGF7CV54OSAAH6BE4FFMGGQ2VCZ54JW
X-Message-ID-Hash: WPGF7CV54OSAAH6BE4FFMGGQ2VCZ54JW
X-MailFrom: jra@febo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: PPS signal OctoClock-G
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WPGF7CV54OSAAH6BE4FFMGGQ2VCZ54JW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: John Ackermann N8UR via USRP-users <usrp-users@lists.ettus.com>
Reply-To: John Ackermann N8UR <jra@febo.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

The Octoclock outputs are TTL gates that deliver 5 volts into a high 
impedance.  Such gates aren't designed to drive a 50 ohm load, and they 
will show a significant voltage drop in that case.  Just how much drop 
depends on how much current the gate can source (ie, what its source 
impedance is).

The Octoclock spec sheet doesn't specify a load impedance for the PPS 
outputs; it just says "5 volts".  (The 10 MHZ output is spec'd at 50 
ohms, but not the PPS outputs.)

For historical reasons, there isn't a defined standard for PPS signal 
levels or termination, and this makes things "interesting" to say the 
least.

In most cases, a 5V pulse through 50 ohm coax terminated into 50 ohms 
will cleanly trigger a 5V logic gate at the far end, but the margin can 
be small.  If the far end has a 3V3 input, it will usually work very well.

Using a higher load resistance will increase the voltage, but may cause 
ringing in the coax and that could result in triggering issues.  Often, 
something like a 100 or 200 ohm termination is a good compromise that 
delivers sufficient voltage without causing too much ringing.

Hope this helps.

John
----
On 8/18/25 09:44, dennis.joosens@uantwerpen.be wrote:
> Hi,
> 
> Is it possible there is an error in the datasheet of the OctoClock-G 
> regarding the 1 PPS output?
> 
> It states that it has an output of 5 V, however, when measuring with an 
> impedance-matched scope, I only get about 2.5 V out. When switching to 
> 1M input on the scope, it is around 5 V.
> 
> Datasheet: https://www.ettus.com/wp-content/uploads/2019/01/ 
> Octoclock_Spec_Sheet.pdf
> 
> 
> 
> 
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
