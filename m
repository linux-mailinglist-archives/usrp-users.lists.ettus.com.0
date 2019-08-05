Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9287F82839
	for <lists+usrp-users@lfdr.de>; Tue,  6 Aug 2019 01:40:18 +0200 (CEST)
Received: from [::1] (port=52656 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1humaN-0005px-B3; Mon, 05 Aug 2019 19:40:15 -0400
Received: from mail-wm1-f45.google.com ([209.85.128.45]:39976)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1humaK-0005k8-80
 for usrp-users@lists.ettus.com; Mon, 05 Aug 2019 19:40:12 -0400
Received: by mail-wm1-f45.google.com with SMTP id v19so74597495wmj.5
 for <usrp-users@lists.ettus.com>; Mon, 05 Aug 2019 16:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=pNep4viCgOjaiJpGnc/nbo0bg4FyH/R/f5DdXOEOhAA=;
 b=kSPEo6k3Jl8kXD1R7ZttUyZZErQPY8vHCnmUIobwOURxTQsMlgHO28LuzmFQfVf3OA
 2wa/ScwTNqaKG33mS46TXZDupzXq0DE6P5tAyeZVf41ahtakYwidW09RwL92cKa4p1yf
 rCBNDA/Wz++kU7aQ4CIw5627I5JGI3vt1AjkYs2R9fGdthIsHwVwUu2dhYnMq3cugwWw
 M6gqHb72XQE5CFwZSHzZAhckBFoILbFp7AW0KZVIQuSIOEeP0fcBmkeDNi7UFPVlOedk
 LP6RU8E+t62PFZVXdaE5rrsbbJjNilJNpzDH3xZDU2/fZnaXexvc3vn5D3dE/3XcpCvd
 Wbcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=pNep4viCgOjaiJpGnc/nbo0bg4FyH/R/f5DdXOEOhAA=;
 b=Piy/ltqwFGS09bMw/bOlPPPY5CXYMzGG6ER37C/u3Eqx7g9s+EnVZ9p8IpJgu3ffLI
 hQfsteSljW0AiTPvR0ZyUzhk356McCA/l9xPP5XSzYcnGQWRbVZgtz0MD0tFz/fMdvSB
 Tl44t3y5zzgN6ALwql0GfM4BySGKr0UU7xXy4JAc2rpEL1YW3n6vMGHLnDLQ5kckPW6L
 4Z3rwPdadFF1gCrK2Q+mWFcaC2dnqKcSri5rXxolcPvY/UrnM3O78MaKnID85NcnZnKO
 YlDfkGHvWQmzt8QTJ063Vm5koAVRzap3jju9msqCxt1+rJ/YbnEOZimh3kdRSekyKbj8
 tvAw==
X-Gm-Message-State: APjAAAVpao/wn9QFTzueM6AOE/LX6Hd+KBPHjPdkRnQ1Ga9EMeMno4k0
 mjmDD+dnxP5qxZ6e/YhCVN6N8hVf
X-Google-Smtp-Source: APXvYqyQW/te4PHVf7QpT+0weIktA68Cbr6+ICQgwZpKvDj4q1E1WKqvnOLmPJq/nta+abPgVrKizg==
X-Received: by 2002:a1c:cb43:: with SMTP id b64mr483729wmg.135.1565048371136; 
 Mon, 05 Aug 2019 16:39:31 -0700 (PDT)
Received: from workhorse.lan
 (HSI-KBW-46-223-151-10.hsi.kabel-badenwuerttemberg.de. [46.223.151.10])
 by smtp.googlemail.com with ESMTPSA id o7sm76065426wmf.43.2019.08.05.16.39.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:39:29 -0700 (PDT)
Message-ID: <7c1e67d831b187fd3fb311b982cbbf91de26e6aa.camel@ettus.com>
To: hossein talaiee <h.talaiee@gmail.com>, usrp-users
 <usrp-users@lists.ettus.com>
Date: Tue, 06 Aug 2019 01:39:28 +0200
In-Reply-To: <CAAiBEBTT25JUU6Uybf6WLYakOLYGbKz4T_NUG5wTm_ydKpox-A@mail.gmail.com>
References: <CAAiBEBTT25JUU6Uybf6WLYakOLYGbKz4T_NUG5wTm_ydKpox-A@mail.gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Subject: Re: [USRP-users] USRP B2xx Tx Peak power mode
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Reply-To: Marcus =?ISO-8859-1?Q?M=FCller?= <marcus.mueller@ettus.com>
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

Dear Hossein,

the B200 does NOT have a TX power control that would compensate that.

Are you perhaps either not changing A very much, or are you perhaps
clipping? Driving your B200's TX amplifier into saturation would of
course mean that you'd not see much of signal power reduction when
reducing signal amplitude, until you cross the threshold where things
become linear again.

Best regards,
Marcus

On Mon, 2019-08-05 at 17:00 +0430, hossein talaiee via USRP-users
wrote:
> Hi
> 
> I want to manually control output power of my USRP with signal level
> not usrp gain,for example I want to generate a sinusoidal signal with
> equation:
>  
>    s(t) = A * sin(w*t);
> 
> and want to change A to control tx power, but when I change it,
> somehow USRP compensate my change and tries to hold tx power! like it
> is trying to hold average power.
> 
> Using NI-5672 signal generator, I am able to control power with
> setting the power mode to "Peak Power mode" instead of "Average Power
> mode". I think USRP has something like this to control power. How can
> I disable it?
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
