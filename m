Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E84C1FD6AB
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jun 2020 23:06:34 +0200 (CEST)
Received: from [::1] (port=42500 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jlfGR-0005JL-NG; Wed, 17 Jun 2020 17:06:31 -0400
Received: from mail-ej1-f54.google.com ([209.85.218.54]:41943)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jlfGM-0005ED-UG
 for usrp-users@lists.ettus.com; Wed, 17 Jun 2020 17:06:27 -0400
Received: by mail-ej1-f54.google.com with SMTP id dp18so4085475ejc.8
 for <usrp-users@lists.ettus.com>; Wed, 17 Jun 2020 14:06:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=lNMiXbDc5mbVaC9gVaLlyH12WOa3HGQ+r2v7im7kelI=;
 b=nrvTf/BtcU8lwmds0eU83sfT1VkvSao3m3/a987KRmAjemCfQgnOxFK0dKQBin5Yqj
 HthNTRfSwYEoS+gUemQLI3mpEO6d+U0X5HAbzrkTo0uUrXpwmW5echlu9WsPUCKjj6sd
 6WxsaguSNqBE7EKQ/Ugma9MDiU2zOAtD/Kgm423pLFnfcG045vrG8pBajNpew0ik6mjm
 P/eM5p7gtw6THo26kVu6DXmO2eP9mEqGjB1pWHt8YqkJQiw9NukgAtFnfby69SvRmMX5
 e7XYQIsvyRGOLwlmE/TUm1v8KQo+8dzDbYOjZsqr9QwBaQVZVtdRAUJELoeTW7P/vFV6
 9aVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lNMiXbDc5mbVaC9gVaLlyH12WOa3HGQ+r2v7im7kelI=;
 b=A28FaiXm8jIUEy8nOT/tgDH3rBzyxSz1XrDrFdAAS6dECPoqEQ8bVuCddrUYotgqNf
 zSm+4/0O6/KtoQZEJ90r5OBPh/OylCIzkx6fGL5uKiSEByd2pUtlQiiVZJ1XQKgGHmf3
 K5YcRueDhwEBJMeauAgAp+q+W5FOzCRXQWg/ZGWkfcXtmUqgAlkQvbIql812i4498BU8
 IoM/i0qmrW6ZHSeVZAbN/f73ECLjkXX7Pn9UszBqDpDP/zN6jmPbkUCbZpUDePtR+MPO
 +UwsZuTEgSWuBLTY8daRM0Xc80uLHdDxb5NyWA0tD/DpJEq+HAwnMNY5NelU1uqYJZpv
 yNJA==
X-Gm-Message-State: AOAM533x/zwIMT4jjAqQzHhkMCoGMt50ufd9q3h+iayVFXK3SIeRM6ky
 zE7/0nVE0x1U4qubQ3aGydpOLN05JOydjg==
X-Google-Smtp-Source: ABdhPJzSI5/Z1Z+HaLH5Bquq6bSvDBvOf+3nB9DWTIj0Hh+IV/uaUzvimB3kwcbW3+5OstqEmyzQxw==
X-Received: by 2002:a17:906:4ec1:: with SMTP id
 i1mr1005942ejv.152.1592427945667; 
 Wed, 17 Jun 2020 14:05:45 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-150.hsi.kabel-badenwuerttemberg.de. [46.223.163.150])
 by smtp.gmail.com with ESMTPSA id b14sm693197ejq.105.2020.06.17.14.05.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 14:05:45 -0700 (PDT)
To: Benjamin R Nold <bnold@purdue.edu>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <DM5PR22MB16599774727B85768E7F23FEC89C0@DM5PR22MB1659.namprd22.prod.outlook.com>
Message-ID: <1f007a44-2618-bc6f-6d8c-74784954475b@ettus.com>
Date: Wed, 17 Jun 2020 23:05:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <DM5PR22MB16599774727B85768E7F23FEC89C0@DM5PR22MB1659.namprd22.prod.outlook.com>
Content-Language: en-US
Subject: Re: [USRP-users] B210 GPIO mating connector?
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Hi Benjamin,

https://files.ettus.com/b2x0_enclosure/ has the dimensional drawing of
the B210. You'll find the Molex Part Nr. 87831142 in there; the Molex
page lists mating connectors for various applications:
https://www.molex.com/molex/products/part-detail/pcb_headers/0878311420

Note that you're not really stuck with Molex here; any 2.0mm pitch
female pin header should work.

Best regards,
Marcus

On 15.06.20 16:07, Benjamin R Nold via USRP-users wrote:
> Hi,
> 
> What is the mating connector for the GPIO header on the B210? I didn't see it listed in the docs.
> 
> Thanks,
> Benjamin N
> 
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
