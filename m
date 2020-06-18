Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EC31FFE31
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jun 2020 00:33:34 +0200 (CEST)
Received: from [::1] (port=34866 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jm36B-0005eM-AV; Thu, 18 Jun 2020 18:33:31 -0400
Received: from mail-qv1-f41.google.com ([209.85.219.41]:39079)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jm367-0005Y2-5L
 for usrp-users@lists.ettus.com; Thu, 18 Jun 2020 18:33:27 -0400
Received: by mail-qv1-f41.google.com with SMTP id r16so3581133qvm.6
 for <usrp-users@lists.ettus.com>; Thu, 18 Jun 2020 15:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=ouXLk8Xo9duyU/OU5Wodb/Kke72ohuxzLDH8vi+/yvo=;
 b=A17N0tNszKnw4D47wsDunNOVqGWXHIeRMGU0+g8mBDl25WZVMNuQaeAu/TnVEqb0Q7
 qiVvUtRdCkZJltdETjcLAolkcpFadHEEPHlOZFs8pBbqxUTo8IRdzFAOWhPA6MHuDNhF
 vSc5EQZcNyDUUVP+9BgJes1fzysCp0phr5D91izM0iQtpHxQb7UR4x9+cwHfbBipiI26
 KnyKz0aecX//NoBu/HG/umd8h9nBvqtFf/GVQiYbD1P9vz8A0tmNoZCmAemJMZH7Daf/
 +NAQbf4bD9uzl9M1RzmGqNEagh9/0gpDy4L+nVincB/ZeoEgPpDvIijuwIE/kGNporj4
 5zvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=ouXLk8Xo9duyU/OU5Wodb/Kke72ohuxzLDH8vi+/yvo=;
 b=ZmcqN4LoNBLnZe6MuJUwnLF7pLoUvJ9/t1Ql7PHGdUAc3eCE3B0t0OOtx9VGhPJeBT
 ogKuYB9poWGHtwNvfVLtJDQvXfrutLj/PAnvtahELPgXLnrDvQ/TK+8KYjir/x/p0yF/
 SmM+xlrm4k2KMgdsGfPsLGSKne8XKojI+hUEyZek6U7UBmkB10og6JiCo8jfQ+EuUw2f
 PiWC3uwJMzGpG5gAYaLr+PZeSDnOLlAtqKQVNdZJBfZmiWYhNGdIyi2bdPkXUG0djSzF
 tdX9Q3oLOSG54EGEBi0H0FhQdC1OTjMxh7Mlx2zCOJS9bRFCmQWdnk4XwtzcdY0JQKY5
 qNdQ==
X-Gm-Message-State: AOAM530O92MSO8W0frCcREdf2TaAWDp4ZLthsM7GWBQnTMdBuFPMEYKg
 JcDFkk9zOtfDDAvBGYwzgv2O7YRWdVc=
X-Google-Smtp-Source: ABdhPJxRcQDhVd4xShdxKYysLYnliTT0zpToCSZLRD/YlLFn6ohyhESLtylpHPw1VTtkxJjCZIpj/A==
X-Received: by 2002:a0c:b712:: with SMTP id t18mr5809314qvd.245.1592519566425; 
 Thu, 18 Jun 2020 15:32:46 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id y54sm4935824qtj.28.2020.06.18.15.32.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jun 2020 15:32:46 -0700 (PDT)
Message-ID: <5EEBEB8D.9060408@gmail.com>
Date: Thu, 18 Jun 2020 18:32:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Colby Boyer <colbyboyer@genxcomminc.com>
CC: usrp-users@lists.ettus.com
References: <CACxOa3Zr_hPaEtu1_OGHfZn=7B_t1CWmYBYasVYVkrg4ZOaSpg@mail.gmail.com>
 <5EEB7DDA.2060403@gmail.com>
 <CACxOa3ZW4x+2+vXnpwvf34bUdx+F_rQ8pADBoyDB7WAHJnv1MA@mail.gmail.com>
In-Reply-To: <CACxOa3ZW4x+2+vXnpwvf34bUdx+F_rQ8pADBoyDB7WAHJnv1MA@mail.gmail.com>
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

On 06/18/2020 06:28 PM, Colby Boyer wrote:
> Hi Marcus,
>
> Thank you for your response and pointing me in the right direction.
>
> Yes, I see that flow now after tracing through UHD to a poke32 
> interface for twiddling the bits. Before I was mostly looking at the 
> Verilog FPGA code and how the registers were being mapped was not that 
> clear. It looks like the ATR idle register is being repurposed to 
> control the TX and RX DSAs.
>
> It seems that the DSA command is put out over the wire via the CHDR 
> interface with the following path for the N310. Host -> 10 GigE -> 
> N310 10GigE Switch -> RFNoC -> radio core. It does not interact with 
> MPM running on Linux, is that correct?
>
> Looking at the gain control for the AD9371, this looks to be 
> translated to an RPC call and sent to MPM that calls the mykonos 
> API/SPI transaction. Does that sound about correct?
>
> Thanks
> Colby
>
It was my impression that in an MPM-based system, ALL the 
control-traffic goes through MPM.   I could be wrong, as I haven't 
studied that code
   extensively.

I'll see if I can get anyone from R&D to comment.




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
