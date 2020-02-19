Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B06FD164722
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2020 15:38:02 +0100 (CET)
Received: from [::1] (port=60714 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j4QU7-0005Nr-0F; Wed, 19 Feb 2020 09:37:55 -0500
Received: from mail-lj1-f181.google.com ([209.85.208.181]:40715)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <luke.whittlesey@gmail.com>)
 id 1j4QU3-0005GR-Fv
 for usrp-users@lists.ettus.com; Wed, 19 Feb 2020 09:37:51 -0500
Received: by mail-lj1-f181.google.com with SMTP id n18so597867ljo.7
 for <usrp-users@lists.ettus.com>; Wed, 19 Feb 2020 06:37:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=5LK7KHW46Ehddlh1lhBH2hlaoNWggyDn1jy99fcHVeo=;
 b=iArFHzMqJ6O4CDXfCUBS7R/KgA59zGSbAFBQ2QCB2OBq/ny11y85NzWlsyvv+8vukc
 heynrr3JRfwmFzGF5eiqKrH9KXiLBQ+f8xlgtB1kuCPKrbhNIoLxKRyFjkcGK4Xy+rHB
 KYmcedMecAwVZHNIzoIk8p/gQdw+oKRqACj0Lrrm5dkAeeoCfOxhCAGUzG1lT7RzY+r3
 UCr/1TVAC2tFw1RC7vKYI3O0nSQtEZj33Bila4qAZ5bB97JGgEQSBiL60UXEiFzqoy7e
 PFBUR5COKbFiqXJ7TVuh5c4lRW8EbskpuNuyV7GhqhuAizdop0U5WJJJpHs48gwqvwEK
 SQ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=5LK7KHW46Ehddlh1lhBH2hlaoNWggyDn1jy99fcHVeo=;
 b=NcoMVwrinD6DFHUDMaoeva8WwCTnQd3WpFG4WsY4czDZL4rNckL67hpF4vp0qgW1Wj
 8omU2+wEwP0iYBzxFoIfv2ntSU7LxLwUS4KKLik/h5AdOBuJ1e3MfDo1+0l9sUnoGvVX
 o3mX1R9nR0fP7XlnDEoPxD2fbEYG30Fo96lXupCHHMC4/5nPSwYYof2bXtUhSqn/vOJ8
 DRb726jd/76bDPnTvcj/Xua/vnw7OksHPa7ur78MlMx8tC2Yl2mCSocRzVvnmKit5Zec
 qybqNvsuIQNrgSmyJzdC5CL2w+5DNdcQJXDrYTvmSB8IKgFaEmZH+HnMbPNAGe9PbCKW
 I/Vw==
X-Gm-Message-State: APjAAAU41iYrc5RnQDAwYpNEF935y6VpEu4vX++A4x2m6w3ADmiw+YZI
 h44omXfFgcOvNUYcKzSLA3onULlN8+jgAy1o4kuH+KHs
X-Google-Smtp-Source: APXvYqz02R/mclagKF6bCd4/ZSDRsRBq6aGxTXhEiN0ilIR/el5CitSYtvpsbouYfLCn+jgRE7wsXoj5Hrh02Fe+KEc=
X-Received: by 2002:a2e:730e:: with SMTP id o14mr16371227ljc.51.1582123029760; 
 Wed, 19 Feb 2020 06:37:09 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 19 Feb 2020 09:33:14 -0500
Message-ID: <CA+ce6i2VDa6NAXgCxcs7ZrhOV_nh3ege-Z+gOgsWcinZLqdhFA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] E310 and latest sdcard image
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Luke Whittlesey via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Luke Whittlesey <luke.whittlesey@gmail.com>
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

Hello,
I'm having trouble booting from the latest sdcard images for the e310. [1]
I've tried a couple of different sd-cards, but consistently error out
in uboot with the following error

````
Copying FIT from SD to RAM...
5866988 bytes read in 338 ms (16.6 MiB/s)
## Loading kernel from FIT Image at 02000000 ...
Could not find configuration node
ERROR: can't get kernel image!
## Error: "distro_bootcmd" not defined

````

Has anyone been able to successfully use the latest e310 images?

Thanks.

[1] https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e310_sg1_sdimg_default-v3.15.0.0.zip

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
