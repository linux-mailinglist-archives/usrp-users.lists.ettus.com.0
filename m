Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF77B370D2
	for <lists+usrp-users@lfdr.de>; Tue, 26 Aug 2025 19:01:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 633D93860C3
	for <lists+usrp-users@lfdr.de>; Tue, 26 Aug 2025 13:01:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1756227675; bh=vPx6FgCOCQbNQjQv5IAoElW1R8MTcxU6u3mNf7sqMhI=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=EuiW1FcuKobEDdf13w8WIxGhC+He796PiSkg9ytnMbjYs5uKx8WVshXBehY+Zzy4S
	 S6/wvH+ZK3JY5CfQwjzxM7UZneGnmQs7PgVmSW7tmMI3XqZoEnO4QZehMGMoAbY4lB
	 m4Kk9aJ1PLJAaJ+BQHPSjtZzM6NdqY8F1Ik3+7NPE2P4tCA+wb7OvXg+cRLvleSd94
	 JpB7/ySgIAB3QccbkAEW+ywQfs2rjXwzWoBT3M7l17pI5Ax4YV6fLkAxtGRkU/Gk7H
	 HmDGaql5Ht0A8KxpXWSRkQG+56Wmx5Qkv6jzPGOPutkMrDh6pvVBN3mBepUJk4uDAo
	 Se+eWL99ZxO2w==
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	by mm2.emwd.com (Postfix) with ESMTPS id F3E1F385F00
	for <usrp-users@lists.ettus.com>; Tue, 26 Aug 2025 13:01:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=febo.com header.i=@febo.com header.b="F1C9WmEU";
	dkim-atps=neutral
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-3ee1ffc230cso14545935ab.3
        for <usrp-users@lists.ettus.com>; Tue, 26 Aug 2025 10:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=febo.com; s=google; t=1756227670; x=1756832470; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hpYC1J/Ce+LUtzpiQqfFPsTRFX8FZodkyxOV/zkwHE8=;
        b=F1C9WmEUc0Nw0yLiIFM+aXpZUugXXVqPSYinGO9vHDq2VKd9LwSI8nRTD7bZGvgQo1
         i0dqNgUEEf/trTuluji4Sz9XWJg4Czmk3sIFSXgDldaOA6T3NsP4G5ILjkzGXvX7MQUR
         YMZCcqG/M7bCSrabTtWpLeQDJtHjW48KYwhJZvfGBLVr/CXVHPCOe9LAo2k2dx9R3cCz
         9QHCpx3b0xrywkGHr/qWVvKaP+4cky+k5H+Ltjjf/b1b30QagNPjCdRTiSNeaeXI9dSc
         PLOsbCPQk4vWaDM4jecibxrovjyrUSempK0LsYYV3nHkHkbEeNP1V4x3HtqQAyS1WWkF
         txSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756227670; x=1756832470;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hpYC1J/Ce+LUtzpiQqfFPsTRFX8FZodkyxOV/zkwHE8=;
        b=k3sfXIzchE5iLOdqbgpnT+tyvCkXmbOCnHlitO5mzGUm52hZ10uLp//8Mq52T+TE2I
         IdaSf/rWMuoy99vq7i7xIpuutgpzHkZGwc3HsAJzJR9ZhFZTrcniadruG0lcf/NNgvFG
         TyOL+z92f5/vqw7FGnFlC6ksFZNPhidKzGkHJZgAKZFl0mnQaQ0YjgfSHx/IaPhObcaM
         ah5VWJACYvFEROtM8cMKD/nJH/rXE580GuMR5ylYoNwtzspwViaKBAYUPUMR8IlaSWzp
         ryqK0tY7EwIIePaY7z856MeVxrkpw3b6qvag1EUlrK2t6DnGe2K6WoN5wreubkL8V6Is
         qeRw==
X-Gm-Message-State: AOJu0YyFJZWlesJ39vtCFSU+yc65CZYOfmTTgTpV50KaCRKxhMOQl625
	w27a//Nlhn4OjzLRRq9XsVnUjAFAgJnbTV7nylM4jhNk4BB8zVFsTGqgZK3+WYiJKnU0oBewN9l
	dQnYv
X-Gm-Gg: ASbGnctrSPK/3APtwsfYniNkf1FU6a9SUaqfTaNXh+bWctNM+VxEYDCwJjUr+tNHAFa
	lF4F980UTtT/sllGSEyALygiceAXN2bmw1eaUNxuu3iKk32/eqM2Bo4ICKiNgmhlgGpOb3kcfFk
	T/rI4rWuvJQqU5o5yoyS1+mJ4v0Zorx9pmstwNPR7jR+hhE25EjI9XsMXHa+4VqDEyzKv4asRtX
	QyKPxqe0yEjWieybgqd6eEFDQnYKh3Jhz9kKUAr5d5NHI7C1WH3aCbZE7yluWRJia1s+WPUykvq
	mrES/ADEcRa4oF8jMXwm0jeSv9JAO/LAw+cSdtaaAzKSX+ckhYGDpQprZfUM7y+VlQuuUkNZOUl
	WvJ4UAavQKSjY5IjW9Fr1rQ==
X-Google-Smtp-Source: AGHT+IGGQ79tSC2N7aLaG8AHZ28+MTD9dngkbMe/yt2TT1J7sLBigXMkit/uvQB3+wz7Fy9KR0gH2w==
X-Received: by 2002:a05:6e02:1446:b0:3eb:5862:7cd0 with SMTP id e9e14a558f8ab-3eb58627ebbmr152455995ab.22.1756227669645;
        Tue, 26 Aug 2025 10:01:09 -0700 (PDT)
Received: from [10.73.3.60] ([104.185.8.17])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3ea4e457cc9sm73105115ab.34.2025.08.26.10.01.09
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Aug 2025 10:01:09 -0700 (PDT)
Message-ID: <0d34b260-fcfc-4669-9b4e-61b4196a727b@febo.com>
Date: Tue, 26 Aug 2025 13:01:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <URBT2oW9yHCCQED5wSMVTZS2picdEqDS37NNg6h5mmI@lists.ettus.com>
Content-Language: en-US
In-Reply-To: <URBT2oW9yHCCQED5wSMVTZS2picdEqDS37NNg6h5mmI@lists.ettus.com>
Message-ID-Hash: MW75YA6GQTX2MS2VW3I4I4ZJLUQSGEYX
X-Message-ID-Hash: MW75YA6GQTX2MS2VW3I4I4ZJLUQSGEYX
X-MailFrom: jra@febo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: PPS signal OctoClock-G
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MW75YA6GQTX2MS2VW3I4I4ZJLUQSGEYX/>
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

Agreed that it would be good for the datasheet to have mentioned this, 
as it's a frequent cause of confusion.

While SMA connectors are designed for 50 ohms, it's really not safe to 
rely on that to identify signal characteristics.  After all, most 
oscilloscopes use 50 ohm BNC connectors while their input impedance is 1 
Mohm or more.

As I mentioned, there is no standardization for PPS signals 
characteristics.  As an example, older HP atomic clocks have PPS output 
on a BNC connector that is well over 10 volts into 50 ohms (unloaded 
it's way higher).  They did that to increase the slew rate to get more 
precise triggering in an era before modern logic gates were widely used. 
  But the width is very narrow (~20us) so the total power in the pulse 
isn't that high.

Most modern systems use logic gate outputs don't always consider what 
the load will be and that can cause issues.  For example, running a 
u-blox GNSS timepulse output into coax cable does not work well at all; 
the source impedance is quite high and you don't get reliable triggering 
at the far end of even a fairly short cable regardless of termination. 
You need to buffer the signal before feeding it into coax.

I've designed several products with PPS outputs and use three 74AC04 
gates in parallel to provide 5 volt no-load outputs with enough drive 
capability to deliver at least 3 volts into 50 ohms.  That has worked 
very well driving many types of counters and other devices.

John
----

On 8/26/25 11:49, dennis.joosens@uantwerpen.be wrote:
> Hi John,
> 
> Thanks for this interesting insight!
> 
> However, I would think it is measured at 50 ohms as the outputs of the 
> PPS on the OctoClock-G are SMA connectors. As far as I am aware, SMA 
> connectors do not have a 1 Mohm impedance.
> 
> I found that inverters are placed before the PPS outputs, which have a 
> minimum output of 2.4 V and a typical output of 3.4 V. The input of the 
> USRP B210 (which takes in the signal from the OctoClock-G) has an input 
> range of 1.8 V to 5 V. So, I am not ruling out that mismatching or 
> matching at 1 Mohm can work too.
> 
> So it is not really an error in the datasheet. But, it would have been 
> nice if they had added an extra row in the table, pointing out at which 
> impedance this was measured, similar to the 10 MHz signal.
> 
> 
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
