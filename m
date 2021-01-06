Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC032EC32F
	for <lists+usrp-users@lfdr.de>; Wed,  6 Jan 2021 19:23:12 +0100 (CET)
Received: from [::1] (port=34346 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kxDSf-0001AD-2c; Wed, 06 Jan 2021 13:23:09 -0500
Received: from mail-ot1-f54.google.com ([209.85.210.54]:42356)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mattlanoue22@gmail.com>)
 id 1kxDSb-00012g-CZ
 for usrp-users@lists.ettus.com; Wed, 06 Jan 2021 13:23:05 -0500
Received: by mail-ot1-f54.google.com with SMTP id 11so3815101oty.9
 for <usrp-users@lists.ettus.com>; Wed, 06 Jan 2021 10:22:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=QqJlpsRsN/BEAukJWp1TAd7aZWRYFKRe97Nu29OQ1Jc=;
 b=AvMP0tOFRhsMB7AK2p8RlRmTTtUzhqagVv3n4L9r8hUE0JBz0aSSnzyDKcowbH6SrX
 XtCwpW2BJBi4suD32kYaZgKLJUhYvL/8sKF6RD+LmT7DmfOeIuZnN+jaYdT2TCLaOGnm
 HGsJtIrbbQZJZ4sWuwU2cLfeDJVe17+AbuhRvzAuKmvZvKrESFlYRCgMFW+A/kH7ylfM
 kfrIkuuqxhZ5cgBoVW4obVB1r5WrJJudNvNF/TI6vf0BMhvWzeFFF+Ci9aFQ0Bv8PMjN
 qKdm1wuYKB57xcbFGUYs6Zyph0GRlMvepq0Xl5juZJFVIczgjYZy62QEqzXkRrvz/Ayk
 9cYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=QqJlpsRsN/BEAukJWp1TAd7aZWRYFKRe97Nu29OQ1Jc=;
 b=XFaolONCzgf44wAm+hyTP28p6t1OApASbDqgDkqq1NTUCtMZvevVXF0zIs1NtqrHGy
 PAfgnACOg7qWP9Uw3fKimvIZR+hhhaywH4wDIFZ+nmMCytvGH8gdBuePs4LPX8zpGiAe
 9nSIGgktORaqu9UxS4B2n+xRmtDQBi//DgcuAu5STMopb4fCVJ0JejfkuuMmujctu3Nv
 T0rblq1DcRdQD/pKnzvNlcXVkPEg2eZ+QR7OQkXMs9p52Re5kYlsPKQ2G+y0Ia1vX/UL
 W26wTUw/xmaOvR+5WR2b5DMpAviapI6X+WrcrWaTwEWQDZbANc0x1m6cZCZ20ApmToBL
 6c7Q==
X-Gm-Message-State: AOAM530v95h90k/sqg1canhiu74b+mhkyABsgqu17Evsn2cFI76ZKY2N
 uxx3aLDzhdTdg3Cz+aXYxvbPSEbCCEOdLq/+bL0=
X-Google-Smtp-Source: ABdhPJz/3IaQq1uRZ8ywtZsaysSkJ6fQDSCKXUqC0sNlv0QEW9AhMO4nW2I3SVprU0Gxb8fUDRcy6wShUI6YV49HD6I=
X-Received: by 2002:a05:6830:1e14:: with SMTP id
 s20mr4142877otr.210.1609957344501; 
 Wed, 06 Jan 2021 10:22:24 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 6 Jan 2021 10:22:13 -0800
Message-ID: <CAMvz+5YESdxLKVL=XmZt6=5K3+Kq9pKkE91NAmkxbbk4thaksw@mail.gmail.com>
To: ashutoshsingh7589@gmail.com
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] USRP B210 UHD library installation issue
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
From: Matt Lanoue via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Matt Lanoue <mattlanoue22@gmail.com>
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

Ashutosh,

If you have already installed the UHD libraries for other OAI software
applications, then you can run your build command without the -I flag.
If your D2D build requires additional packages not currently installed
on your system (which I doubt), then you may have to install them via
your favorite package manager manually. Otherwise, you can modify the
build script to try a different PPA such as ppa:ettusresearch/uhd
(like Marcus suggested) or remove all UHD packages installed by the
OAI script and build UHD from source in the same target destination.
Be warned that the OAI scripts don't check if you have built UHD
libraries from source, so if you installed them via a package manager
at a future time, you might get version mismatches (Marcus helped me
figure out this same problem on this list).

If you are having troubles with the actual UHD library build, I
recommend looking into your "cmake_targets/tools/build_helper" file to
see what OAI actually does with " check_install_usrp_uhd_driver() " or
"install_usrp_uhd_driver_from_source()". The "check" function actually
performs the install and the "install from source" command doesn't
appear to be called. I have made this complaint to the OAI distro and
am working on pushing a better solution.

Cheers,
Matt

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
