Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B454955D
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2019 00:44:57 +0200 (CEST)
Received: from [::1] (port=56552 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hd0Mv-0001t0-5y; Mon, 17 Jun 2019 18:44:53 -0400
Received: from mail-qt1-f179.google.com ([209.85.160.179]:46694)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <mitch@silverblocksystems.net>)
 id 1hd0Ms-0001nK-51
 for usrp-users@lists.ettus.com; Mon, 17 Jun 2019 18:44:50 -0400
Received: by mail-qt1-f179.google.com with SMTP id h21so12863952qtn.13
 for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2019 15:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silverblocksystems-net.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:user-agent:mime-version
 :content-transfer-encoding;
 bh=K5H4Zn1fw6WFxVcunNOysGPfgXBmmPC0iNIOCNBXYTw=;
 b=l/tUgKr1FQLsl4+SlcByjyB/EAmNZhxMccRApTtKexa/X1el3Am/yQiAjrO2do5jLd
 UO6EAI1zgbNVEdEkDgFThSbsIrRV6HAezPLQbfParUQ/py7aya2WjriWnGXBp1IffJ0z
 qPd4OPnvPAc2ij1BCqGHCJgFgzGeZHMlnZc9xAynSt58f1VxomyL2QllQ8/tPUIQ0B8t
 J7d7hPkRcD8JKuGREJpVRKPBTyct9GLaLkI8IFQaOx8QxhOcPrIPsRnmdkIKLsf/8vks
 +kpdkoXrYAtIx0+grDDbPElt0u0mXzaJAkinrjwY8AYVSrlIzzyP7rEnWGi4ts/nXEAg
 XMeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=K5H4Zn1fw6WFxVcunNOysGPfgXBmmPC0iNIOCNBXYTw=;
 b=CmQiDhyJxRgKo0Ub8PmRnVsYaxwP/20Mqc9h18Ck+GHX816XaIvJ0cT1i4MfWTn78+
 5tj32KChanmfbz667EwVzRjWGCtvmQr8BSO8GOrekl3EpicWoPAHaq3CunwEmPhfwbw1
 Oy1gXjqbkLYJVaXjXngSBkHQnl+MpvPyI69GyYE/rlVX433J1elIr3AsafL0DC7MG/hu
 oqCpRoBQVp+AN9/Wcp1VM26L8o+mrAICiJdXnSTJ7Fvkmhz7dUzPD45x7HZWw/KYEPbj
 Fgw7FMISfhTVc7U0yiqA+rTO4vUEC10gc8on59Npsvz4sV1/AvQtPS7vAKubFtq97VTx
 drtg==
X-Gm-Message-State: APjAAAUUQZZ7XpKjDzDdbb8O//d9BTNYYN9izL36uuscv4cg2EUiulWr
 eX6Iq2isM3TQD06WSzRZUsFgSi+Hur20cA==
X-Google-Smtp-Source: APXvYqxdPJsRh2NdKlYKPMjxN9+pWAE4apVOQVIDDS0pZs/IAQJuUikAzyOOuAYsrLpYf+lDP58vPg==
X-Received: by 2002:a0c:ff46:: with SMTP id y6mr23727478qvt.214.1560811449220; 
 Mon, 17 Jun 2019 15:44:09 -0700 (PDT)
Received: from mitch-laptop.silverblock.net (ip70-160-244-242.hr.hr.cox.net.
 [70.160.244.242])
 by smtp.gmail.com with ESMTPSA id e4sm7614186qtc.3.2019.06.17.15.44.08
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 15:44:08 -0700 (PDT)
Message-ID: <4ae5b15d06564dc5d1df676f52c389a2b5c9a8ac.camel@silverblocksystems.net>
To: usrp-users@lists.ettus.com
Date: Mon, 17 Jun 2019 18:44:07 -0400
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] RFNoC multi-driven nets
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
From: Mitch Davis via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mitch Davis <mitch@silverblocksystems.net>
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

My apologies for not connecting this message to the OP, I didn't
register this email account to the list until after the post.  However,
Peter had posted that he was having issues building the latest X310
RFNOC image (with an RFNOC block) with an error of multiple-drivers on
two nets (ce_clk and ce_rst):

http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-June/060013.html

I too encountered this same error.

On a hunch, I reverted the repo to the commit just before the Vivado
2018.3 update: f6890f227b40687b356c1e6c10d9eec2184691d0

I was able to build the X310 RFNOC image with an RFNOC block using that
commit without failure.

I haven't attempted a bisection yet.  Is there anyone else that has
observed similar build failures?


Regards,

Mitch Davis


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
