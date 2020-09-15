Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C56526A622
	for <lists+usrp-users@lfdr.de>; Tue, 15 Sep 2020 15:20:04 +0200 (CEST)
Received: from [::1] (port=38310 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kIAsK-0005cO-4W; Tue, 15 Sep 2020 09:20:00 -0400
Received: from mail-ed1-f51.google.com ([209.85.208.51]:38195)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kIAsG-0005Xd-45
 for usrp-users@lists.ettus.com; Tue, 15 Sep 2020 09:19:56 -0400
Received: by mail-ed1-f51.google.com with SMTP id c8so3012275edv.5
 for <usrp-users@lists.ettus.com>; Tue, 15 Sep 2020 06:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=Zk/aTs5toqLI3v9U6R2zEGbqhdiLhI/1zXnmRJ1YQ9I=;
 b=xreZYdNSZ8dWgxOg0egex6fluJKuSTQ/KCh1ZbI7eqzVZT4jY+8CmVoovR8r6l3s1+
 Idl/k3m4rnxlbiURafEBdwO8Mi2S8VwarpXo7v3EWfXT3sYLpugPdns1Yjm1xN5HNAxK
 p1AOobZ0r/GizfhZh2xpozNE9ESfDIr0FFGTd/slxQm27aUSo0FIefXUIst9Vks3OwXq
 AYNt/A/IFzW3vkfjKr/0RhcQAu+Ao4jr/uIrrMn2yEtc+rKL1HOvOPvg9N7dxxsl9n7e
 VDuNMhIAcP1duxa+k0hS429l6kpag0j/yXl/ipLM/OlRb06LsqjWLR6tF52CsffyRjr1
 nG+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Zk/aTs5toqLI3v9U6R2zEGbqhdiLhI/1zXnmRJ1YQ9I=;
 b=aU+K5IBCx+npZiGlCSruVoYktK59lQmzFTeMdpsRDkgGSLuTy1ldyzmGS7JF4szJJM
 HNH0V4zgnZ5/DmDO8rl+VVVbnwxIZ4OtiRtq1VVHAYrX5Mv8DW+SDSyqTbik15X19cGe
 qyspxTG4ZVtA9XTKidtBj2mP10z19u4E1LuDiuGevlPntBnTpaZAGgNgmsFJmCEOIS/Z
 xlndwB9ftLGkFJ6kavDYQ4dEaF99oAov8zXnNOT/OtdRm+IA7auwmTzGfoZrKRv/SsNl
 B+rWsBvAGqgbGZKxmXZ3SeY/Bx7JOAaNGzBIx4ltHhYcykGlXpCh4fyg9ilOu2cUwHed
 +yAQ==
X-Gm-Message-State: AOAM531lyuLIb7L08FJGLZvkBkj2GbsgZdofuZdhnbEXm42PoQJAI9rq
 +jhjLDh57HIqQ6DzHcBrmQmoHmFjnqZPNk1D
X-Google-Smtp-Source: ABdhPJypxQJdXBv5nnf2uhA4Pw2MALO6Q9Kk7mtDGe0db4InmTJFJvOSxnwBrYVyplFpoquy9FH3NQ==
X-Received: by 2002:a05:6402:b68:: with SMTP id
 cb8mr22637815edb.350.1600175954903; 
 Tue, 15 Sep 2020 06:19:14 -0700 (PDT)
Received: from ?IPv6:2a02:8071:2c80:c4f0::e6a? ([2a02:8071:2c80:c4f0::e6a])
 by smtp.gmail.com with ESMTPSA id r16sm11865747edc.57.2020.09.15.06.19.14
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Sep 2020 06:19:14 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <MA1PR01MB2588860E8055E12D760E47D590200@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Message-ID: <53af74de-6008-a04c-0931-73eee3947808@ettus.com>
Date: Tue, 15 Sep 2020 15:19:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <MA1PR01MB2588860E8055E12D760E47D590200@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Content-Language: en-US
Subject: Re: [USRP-users] 100 MSps in usrp 2955
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
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
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

On 9/15/20 2:14 PM, Koyel Das (Vehere) via USRP-users wrote:
> Hi,
> 
> When we set sample rate at 100 MSps in usrp 2955, is the actual sample
> rate 100 MSps only or 128 MSps?

This USRP can do 100 Msps, 200 Msps, or 184.32 MHz. It can't do 122.88
or 128 Msps.

--M

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
