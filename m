Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 566D8256413
	for <lists+usrp-users@lfdr.de>; Sat, 29 Aug 2020 04:03:16 +0200 (CEST)
Received: from [::1] (port=50346 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kBqD3-0005HT-3B; Fri, 28 Aug 2020 22:03:13 -0400
Received: from mail-qk1-f172.google.com ([209.85.222.172]:44715)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kBqCz-0005AG-3e
 for usrp-users@lists.ettus.com; Fri, 28 Aug 2020 22:03:09 -0400
Received: by mail-qk1-f172.google.com with SMTP id p185so1377301qkb.11
 for <usrp-users@lists.ettus.com>; Fri, 28 Aug 2020 19:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject
 :content-transfer-encoding;
 bh=r+tJdwUPDB5cJ76hCWA90I+z24TjtpChA1+ouK5lCW8=;
 b=GU4GisFgDGHs10FdtMEFpdbzSZlPx8OHN5v+LGvjhK/fpl7XVpBh3mhIRDb9eaZ9mH
 YthVrXI3HooSe9dutZVA9KHrtmCume9ooW8EPt+gthdspyc160ie9zXVlGvcgvSo7Wj/
 tWgIS62eYHNIw7xW+Vsq9jjCcRIt33e1Px/sSUY6cC6Jvgn6ZJEOyPhyerXN07m86QAs
 hQCIdU6swYTqOZUDOp+7wMorO0WdWpkNtkKSVfyFwX+raM/PP8NIRYuJPbyxGKOmoWM/
 0bR2NWA2sohLKMIZI6rXOyXX+A2/6n+IyE9znYlrbFO2OlIUx6ko2ZYAJ+bDqLNv6FSR
 IkUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:content-transfer-encoding;
 bh=r+tJdwUPDB5cJ76hCWA90I+z24TjtpChA1+ouK5lCW8=;
 b=FQhstOnhvemK+pA8j5PD8sVwcZAbGmArIboH+fR1ISFXShZ574EBVJDoklglo7MQ+z
 cgx0mQmg01ogKk2enKqVpe8sV7gajUrOb5EjImYELzeYf6fVeuQU6HA+L/da/uSBTELb
 FCwF0GNBYcgnOfRSPdo0//ZM35zuc6kun0kkqKcdHVPOHSNFig6JjonJbnqZBR4OjbaV
 eMio8fC1zfk8P0xwbNq3x8Nx3p1i7tDjt10IhP0HvLFUGYSjGG95/WJA8smEpbNJUNdd
 u19i7RELiPSOTaXBEFOy9q1wcYd+fHWGRuwIGawuHntejMqNNiUnctl7HSmFaEsd9/ON
 Ztvg==
X-Gm-Message-State: AOAM5335zxlLhdTELQ2PRJH+xChR+s7JCrEJXzhU9hZ+jlvF2hgSxkec
 ZdCJPel/L9q755YWKbl21hHpnBtmrZkdzQ==
X-Google-Smtp-Source: ABdhPJyclcaKjJok7EcVzBB7iippfTLgCRSgUluLqd+ZHzP2aQg1Zy/H/2nwrOGZRUFfuZxa8+oJZw==
X-Received: by 2002:a37:8ac2:: with SMTP id m185mr1642598qkd.201.1598666548415; 
 Fri, 28 Aug 2020 19:02:28 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id i65sm895635qkf.126.2020.08.28.19.02.27
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Aug 2020 19:02:28 -0700 (PDT)
Message-ID: <5F49B732.6040903@gmail.com>
Date: Fri, 28 Aug 2020 22:02:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] B2xx/AD936x I/Q corrections
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

Does anyone know what time-scale the I/Q correct loop operates at in the 
AD9361?

I'm using a B210 with my pulsar software and it just occurred to me that 
the failure of it to produce anything useful might be due to
   the I/Q corrections loop, which is fine for many types of telecom 
signals, but may well impress additional "noise" onto a pulsar signal, 
rendering
   synchronous detection useless.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
