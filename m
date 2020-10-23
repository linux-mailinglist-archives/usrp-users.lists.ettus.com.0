Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C19E2974D5
	for <lists+usrp-users@lfdr.de>; Fri, 23 Oct 2020 18:47:10 +0200 (CEST)
Received: from [::1] (port=40184 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kW0Dd-0002vU-MF; Fri, 23 Oct 2020 12:47:09 -0400
Received: from mail-qt1-f182.google.com ([209.85.160.182]:37229)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kW0DZ-0002oK-RW
 for usrp-users@lists.ettus.com; Fri, 23 Oct 2020 12:47:05 -0400
Received: by mail-qt1-f182.google.com with SMTP id h19so1426328qtq.4
 for <usrp-users@lists.ettus.com>; Fri, 23 Oct 2020 09:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=luWv1tUXXKZC/T9ZU6hKA0szcwlH7hjkhqfFiOqVBU0=;
 b=obIeG5yoRsHdMjesHJobr2zaWlrrTMR7qgdPCME4jbM0jvp25LgnHTb4gc1uTodmqJ
 pWXeaLhv/cVpP7SFcs8lgsfwFt08TWscpM/I/JtBqg1YJC0X+UeuJTpjUGqvZiFhPpkK
 Xu1fcOtfJQY3Rs1FbdmpYm4iJMz9di/x7Rx8sXxyoZXTY56ctGXTckqdhrNo1Ggn7exL
 S5wSJc9qtUjyYxJibzysv3jA8GgXl0Q/nmJVEHg+qpKPO2uqy/bVPAlXvx1NRiYQ1Wxh
 jwiRO53ImHpUIQqWHQnqWbrLQIN19mvEAbelxoeL3UvNTfpB+9dWEy+nwcLQ1d8/XUCq
 P7zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=luWv1tUXXKZC/T9ZU6hKA0szcwlH7hjkhqfFiOqVBU0=;
 b=ToVwb0/jRfOr/9EMCai4n6/x1+za/io5lvDuLQVEEQYmPiDKICaqLMVkhpt0A8BWQQ
 YhgwcfLhtJIH3yLQxxPgla+fspx9Ng5UCQkL0/u+oxq+C/wLkEnn6nUewoncYeMgRKZM
 AkHKICWlQJzHEb2EJxjiiM/kD7g+4E6OU8DjXAom2TfEIfjuQc7SVOlSkemq4YdR+4jt
 cMggAVC8a3886sYEFBizhWkc7/GF7fDgUpDgmTJoU7M7EpFjvnWnPAlO98RerKDIMznw
 XbgqsJaSj/slgG6jsowGQhhTWUkrUjJjeCtxiqQI2h0scv2ncKlhzCDeBY16SzKalbr3
 /iUw==
X-Gm-Message-State: AOAM530yWhiLZGEbFH6gKQmEdG4QHXbzOeilEQas7fsB568eUmL83pjt
 halFx0ocuwiV4MFubt1lyE8kEHVmEVNqgg==
X-Google-Smtp-Source: ABdhPJwZm2ukc/zLng11u0A7olyi+B6itozy+DeabLG5Q+eFUO85dqA2z0yJIGl6tNELoYJvj7a4lA==
X-Received: by 2002:a05:622a:43:: with SMTP id y3mr2758375qtw.93.1603471581980; 
 Fri, 23 Oct 2020 09:46:21 -0700 (PDT)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id g27sm1084202qkk.135.2020.10.23.09.46.21
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Oct 2020 09:46:21 -0700 (PDT)
Message-ID: <5F9308DC.3000306@gmail.com>
Date: Fri, 23 Oct 2020 12:46:20 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <011c01d6a95b$6570aed0$30520c70$@beniston.com>
In-Reply-To: <011c01d6a95b$6570aed0$30520c70$@beniston.com>
Subject: Re: [USRP-users] B210 set_tx_bandwidth and LO leakage
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

On 10/23/2020 12:41 PM, Jon Beniston via USRP-users wrote:
> Hi,
>
> Would anyone please be able to explain the interaction between
> set_tx_bandwidth and LO/carriage leakage for the B210?
>
> It seems that the device meets the spec of -50dBc if  tx_bandwidth is set to
> a value greater than 10MHz or lower than 1MHz. However, at settings of
> around 2 - 6MHz, with max gain and IQ being driven to zero, I measure the
> carrier at around -1 to -2dBm!
>
> Thanks,
> Jon
Everything at that level is determined entirely by the AD9361 RFFE 
chip--although there may be some settings that make things better.

Does the LO leakage have a strong frequency-dependent component? What 
about master clock rate?

I'd suggest getting yourself a copy of the full doc set for the AD9361 
-- ADI will provide them (not just the datasheet by other stuff) if
   you "register" as a dev.




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
