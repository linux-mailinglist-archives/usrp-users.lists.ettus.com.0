Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B14DB200060
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jun 2020 04:43:43 +0200 (CEST)
Received: from [::1] (port=33864 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jm70G-0006uk-EN; Thu, 18 Jun 2020 22:43:40 -0400
Received: from mail-qk1-f180.google.com ([209.85.222.180]:39057)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jm70C-0006r7-9z
 for usrp-users@lists.ettus.com; Thu, 18 Jun 2020 22:43:36 -0400
Received: by mail-qk1-f180.google.com with SMTP id l6so4052824qkc.6
 for <usrp-users@lists.ettus.com>; Thu, 18 Jun 2020 19:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=K/QOROyZM3W5w7sGLvI93sU8YTeG5dgR+jaUVo8QYs8=;
 b=WZuFB/J6kF7mlsvWlnkCiaiVkZoAHjQ7F1OEWoHWhmrwFurTOzKXTPYR4wBAMuFGRZ
 W0Zh2hJRwBVfUNKzAJJSUlw0Y3nDlQTMDGbJ+q9msXj+CekCpDO2aPInWZtwPaauiUa3
 TNE7xEIedDM6Jbee8b2GuDC0Gul3CtDhqZeqjZgpdYIf4TdS4xACWxXPcn1+kdoCr4gb
 6MjFLwQu08chkb19OOcJlh9UGJC6a4INXjQFpg1wRjhOGuymU0ObSWIOB51IhQ/WyPgy
 Xthw2KbK0yOqF1VfNLegcWBKEcuDzdmyJBN+G9JpFNog6qXcP2yMVKrkINczo8zORkos
 KV2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=K/QOROyZM3W5w7sGLvI93sU8YTeG5dgR+jaUVo8QYs8=;
 b=VeQ1yIjT/qTokdWt6Hl3KuRKBhx19a4cR8dECGzsT5b5QcgGovF7yQecDO2BD2J9U1
 sKThWFTjJ69kVh1N54sAhHX+vo7W6DcgqC1hQ13LlndXUu6SpUeCTUO3/4hh42wot2mk
 kvah8qWBQd+mQSytNzaFRwrH/sV7AL+ILOdhzD0J/AAXFK47VdXJUFDP5MCeWKloQUYv
 wG/cuvLXQxoCBdhE5AMipy6CWcnVph1EAp+pg3Kedsu2OOG3srBmwSlsHjvGm+v6V7E+
 QG6r8tj/JACQOQaTsUdDuaXZILlq/uFi7E1UCTsz/cg9iYYyX2OONcH58PCG0p0dc+0J
 EO2A==
X-Gm-Message-State: AOAM531RRsAa/Gneb4G5L+91ErwRqJ0GLL0N4c5zXyPKwuvFdOui0WC5
 F4NAjRoah9qn5NHyOriXn2gzsuJS26zECA==
X-Google-Smtp-Source: ABdhPJxQNnZYXEGswOZrji6xN/QkR5HsaLZUpQp/tzfHaSbIyw48zbgX84nTwW7+PU/1bKd0Kb8IRg==
X-Received: by 2002:a37:85c7:: with SMTP id h190mr1372426qkd.345.1592534575571; 
 Thu, 18 Jun 2020 19:42:55 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id b22sm685210qka.43.2020.06.18.19.42.54
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jun 2020 19:42:55 -0700 (PDT)
Message-ID: <5EEC262E.9000309@gmail.com>
Date: Thu, 18 Jun 2020 22:42:54 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Colby Boyer <colbyboyer@genxcomminc.com>
CC: usrp-users@lists.ettus.com
References: <CACxOa3Zr_hPaEtu1_OGHfZn=7B_t1CWmYBYasVYVkrg4ZOaSpg@mail.gmail.com>
 <5EEB7DDA.2060403@gmail.com>
 <CACxOa3ZW4x+2+vXnpwvf34bUdx+F_rQ8pADBoyDB7WAHJnv1MA@mail.gmail.com>
 <5EEBEB8D.9060408@gmail.com>
 <CACxOa3ZtKxvsXeGCER7BO2-YJRoKYLWScE6TasFKw-X5aFrRFg@mail.gmail.com>
In-Reply-To: <CACxOa3ZtKxvsXeGCER7BO2-YJRoKYLWScE6TasFKw-X5aFrRFg@mail.gmail.com>
Subject: Re: [USRP-users] SW control of DB TX/RX DSA on N310
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

On 06/18/2020 07:57 PM, Colby Boyer wrote:
> Thank you Marcus.
>
OK, so talking to one of the developers, Michael West, only SOME of the 
notional control traffic goes through MPM (and thus through the RPC
   mechanism).

The rest is carried via VITA/CHDR in a more "traditional" manner, such 
as "peek/poke" traffic, etc.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
