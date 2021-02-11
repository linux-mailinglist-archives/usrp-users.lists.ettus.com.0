Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E253183D3
	for <lists+usrp-users@lfdr.de>; Thu, 11 Feb 2021 04:08:14 +0100 (CET)
Received: from [::1] (port=51426 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lA2Kw-0003nS-4q; Wed, 10 Feb 2021 22:08:10 -0500
Received: from mail-qk1-f180.google.com ([209.85.222.180]:45757)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lA2Kt-0003b5-LV
 for usrp-users@lists.ettus.com; Wed, 10 Feb 2021 22:08:07 -0500
Received: by mail-qk1-f180.google.com with SMTP id r77so3949257qka.12
 for <usrp-users@lists.ettus.com>; Wed, 10 Feb 2021 19:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=wxNO6uOX/3splSrmQpARjTgT2B5h8fV4xflbYghxufc=;
 b=LvGDU+Q0RtMB9aYOMpPz/4xfdAwV9UFRYD+c9la4TzVQzWQ7Lqs7KFVlCNSWKt1bqo
 1BIB0bOIHnKRjV2VoGgW23SOr4ri5ksL6kRph4OJs/gz4KQMxyZwgzI1X6L8PwTXdDhq
 5fxa83K/RnicEb82RFCU0tElNKvLpQi2cS6peyCLJPUeYGI7JOylROFXRS49oVkUHlRU
 wgq75StzXVxXJA/84RnBvJa4zXj2PpLBQoPvtIuguXeKCYG+hrOTAga0ZmgI/m3RBmBy
 KKRjpNLRpoFUSb0YTxWyGZCp++dI3unaM0nVbHAtqt+AP7NBfkR9C3TNgmUqYaxBCLcE
 /8FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=wxNO6uOX/3splSrmQpARjTgT2B5h8fV4xflbYghxufc=;
 b=Z4UChrRLEiNu/LIq0MANSpuAkItEvLxKSYhKp+Fr9M4V4LWL5CMZvLylyqHQUethAM
 DoNvoEkqalZUfbxjki2eK+mrqU19RYOckFA02aJnE/Q5+CyMk1QY/oqtY0fZoW9UJ9yE
 VNYd7rd08XWHMLUjLUJO9BfCf1KKs1HJRE4+7swWJFksqLliOxQSJdvH0R5C0h5OrE7q
 QCMmmooW7RY5NxyLTLvlzeLXEcjp3AsS29Bv4cDvnlVcfdswHqRNj8JUmmiiV0+xhkxl
 f46RMazsuUsdolMIBjopZhtiDf0gjHT7jmVUo1D1/fbijMyBjn1dOD9cAN+LgzawTo3H
 PqEg==
X-Gm-Message-State: AOAM53063nNDpsEzsdYArQzshpLogcsiAcptwN0+ZCI+PG1xOnyb+CYo
 k5XYoA8o+g6hWHY4i9smTP3PBeWs8i0=
X-Google-Smtp-Source: ABdhPJwrtMd/v0hoh0l9zPBMNEsEhdNFR7V/89t1wwOdjE6OqgA3Ic90aYHDL5Mfu+S0JBrCZozgmg==
X-Received: by 2002:a37:a346:: with SMTP id m67mr6828770qke.301.1613012846891; 
 Wed, 10 Feb 2021 19:07:26 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id x15sm105379qka.53.2021.02.10.19.07.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Feb 2021 19:07:26 -0800 (PST)
Message-ID: <60249F6D.8050902@gmail.com>
Date: Wed, 10 Feb 2021 22:07:25 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Rob Kossler <rkossler@nd.edu>, dtrask1@tampabay.rr.com
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <dc7956e4d464ca7111db615edccaeb34506348a5@webmail>
 <CAB__hTQLPXG0EBWHoLOJnbUC0vBoHouHPsrbLSx190i6Mm=Tdg@mail.gmail.com>
In-Reply-To: <CAB__hTQLPXG0EBWHoLOJnbUC0vBoHouHPsrbLSx190i6Mm=Tdg@mail.gmail.com>
Subject: Re: [USRP-users] E310 with v4.0.0.0 Image: Configure Static IP
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

On 02/10/2021 10:01 AM, Rob Kossler wrote:
> I don't know about the E310, but on the N310, I found files in 
> /data/network which is where I needed to make changes such as these.
> Rob
Indeed, just programmed a V4.0.0.0 SG1 image onto my E310, and the 
eth0.network file is in /data/network.  This probably has to do with
   the fact that it's a mender-based system.

Changed the eth0.network file under /data/network, rebooted, and the 
address is statically configured as desired.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
