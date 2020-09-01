Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9192597B1
	for <lists+usrp-users@lfdr.de>; Tue,  1 Sep 2020 18:17:35 +0200 (CEST)
Received: from [::1] (port=34078 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kD8yU-0006Pf-AK; Tue, 01 Sep 2020 12:17:34 -0400
Received: from mail-qt1-f172.google.com ([209.85.160.172]:44363)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kD8yQ-0006HB-Cb
 for USRP-users@lists.ettus.com; Tue, 01 Sep 2020 12:17:30 -0400
Received: by mail-qt1-f172.google.com with SMTP id e7so1315488qtj.11
 for <USRP-users@lists.ettus.com>; Tue, 01 Sep 2020 09:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=QQXGZUyvcV1i6NEt8x8NXghoWiiLqz0MxOtkaXf4pw4=;
 b=OxQdhsYYt7b9IS+QF7FnXMw258bPrF9/WTLxoTDnve4gCHf2303Er0J2xRehnXU2lv
 hl2PtxfpsBFxRItQMymH2TZrTAtgrPb+McB1LwCzR9zrJgWTB58JJpqLTmV6q1Z+jaNR
 WfsnbJPgiPfqH78C/8JF+YGS6e/zfaTQbQ4BQ02cu7Dj2hAEIv6ADXAi51Cgw/1lrqzx
 IUESQFpRl9sOJaotkCJ1eSRbJqmNcDqpZFg7BWW75pgxk3Fx9BLYR54/haJbBBzSVTOv
 xNkSshURNQ8fZ80Z20Sb+cMTWEtbEbpGsHD9hkGNMQFdha2/ptcADXaDW+zJpvbpL22V
 biCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=QQXGZUyvcV1i6NEt8x8NXghoWiiLqz0MxOtkaXf4pw4=;
 b=XDMR2Rug88LJGBS8U78Rmt0v5Rza59xiIy2KDDfuUKuPdqYjz3OpqlH8ZtCZdPOfSw
 NTHpgIDFZSDI2/zygk1lQdJO4Z4GWUyF/uS6TzNXUeItzPxuuKMRfuFMxCzz7d8mqqpz
 zQ+T9NVHp0l77RFZFAgda7bzi6AGfp5BH32rnaApInvAFCoobDYmfJlaCPwsytdyT1GB
 uKRt8EG/zJe3Q1a6FywHL52mWL6cfFGbApwug9cvy/rQ1+XKcPRWXcex+QQihi3Vqt7e
 EclnZ9Pzp9CaTmUDMYZAi8utgqHmefWmi+eNio8JYYLHyAhpjMBCDDMDwQcdo4tfKryr
 itvA==
X-Gm-Message-State: AOAM533zleaOyLBiAcgknOZeyHbedPEVu/feAkzvGC8+zAc9T8kU/eiY
 AVIh4x2YLKYvicsB5o047kjiDBBWd7U=
X-Google-Smtp-Source: ABdhPJx/vTEwwOQ0RD9PyI6Z1zU44UUu/QDczUNatPaxpBZAoanUalDPzWsqg+OWJr5BVnR7oZicdQ==
X-Received: by 2002:ac8:3902:: with SMTP id s2mr2663840qtb.258.1598977009708; 
 Tue, 01 Sep 2020 09:16:49 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id y9sm2122353qka.0.2020.09.01.09.16.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Sep 2020 09:16:49 -0700 (PDT)
Message-ID: <5F4E73F0.9010302@gmail.com>
Date: Tue, 01 Sep 2020 12:16:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Christopher.Flood@colorado.edu
CC: USRP-users@lists.ettus.com
References: <CAM+cdhJvnNTRtukiKPx9OhGQAqeFOTBz+Vp3yc1ye4CYV44+OQ@mail.gmail.com>
 <75B13EC1-5F7C-4E97-9614-26221D8E5C20@gmail.com>
 <CAM+cdhJQbH0s+rLMcfH8dVgYNqcnZVEodQCqhtLynupdChz92g@mail.gmail.com>
 <5F4E70FD.4000400@gmail.com>
 <CAM+cdhJ9F4v7q2Nq7NxoqkttPgB6eR1_6v9bJkpefoQKpQONLg@mail.gmail.com>
In-Reply-To: <CAM+cdhJ9F4v7q2Nq7NxoqkttPgB6eR1_6v9bJkpefoQKpQONLg@mail.gmail.com>
Subject: Re: [USRP-users] External Oscillator with Ettus N310
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

On 09/01/2020 12:15 PM, Christopher Flood wrote:
> I have not looked at the output spectrum of the Rb, I kind of just 
> assumed it would be okay since it's the most stable oscillator that we 
> have in our lab. I can take a look at the spectrum and report back.
>
> If I do see output spurs, do you have any suggestions / tips on 
> cleaning up the signal to the point where it would work as an external 
> reference?
>
> -Chris
>
I have an Rb module that I had to send through a 3-element 10Mhz crystal 
filter and Schmitt trigger to get something clean enough to use...



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
