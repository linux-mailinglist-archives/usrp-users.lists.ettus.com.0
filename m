Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DEB4BF6B
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jun 2019 19:14:42 +0200 (CEST)
Received: from [::1] (port=43904 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdeAS-0002Fq-KH; Wed, 19 Jun 2019 13:14:40 -0400
Received: from mail-pl1-f174.google.com ([209.85.214.174]:39328)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <mitch@silverblocksystems.net>)
 id 1hdeAO-00028l-GT
 for usrp-users@lists.ettus.com; Wed, 19 Jun 2019 13:14:36 -0400
Received: by mail-pl1-f174.google.com with SMTP id b7so75273pls.6
 for <usrp-users@lists.ettus.com>; Wed, 19 Jun 2019 10:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silverblocksystems-net.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=mqINJNaqb7qFByFj2gns4smiArGeIOt9HFLvXF1Dmoo=;
 b=Jk6o6GOjniNhWu8y5jHw6k93wIGrQBUYjQcuSx/KpcR0BSdIApToOJ6Ja8n9wxPfQg
 CGHnfpxY2fiDVww9gHxJw5l23aDVclgjBZOX3V9OWb0pHzGnfmTxDAhht9MXmzrSpwrV
 mZx5oD/dCdp3irzdeEv2xo34qN8B/n/niM4Y2BverTIwHyyPyRDNiTnsavh0kNoxpgHw
 7TDVBb1nVvPUHPGBSdkhFTRuhEWNkGklqDqhaIusfNO17VWCtuHCyIZdTRF/x4kss+7m
 fgawEe5uNpSkYllI2BeDrjBT0WXy+T4zHT5sZJiEpFhvj+NrEnOq4g1OM2m3/Bo8w38h
 kq9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=mqINJNaqb7qFByFj2gns4smiArGeIOt9HFLvXF1Dmoo=;
 b=a5hEeRSwwVio5CDaQa3BsHVnVNBXWJlgDp5NV8J3GUMkqrV+ZSQ7Qy7kacI0Dwse8I
 vV3aAPD/hdltSTGsqyawgRSU04v+uKjMb/O4bDRPv8gexnkdD41ErFY6FVpvkjOFoPCw
 UDZOX9eMTcfLcIXht+PS0eNfzUt8Gs0sv8h0/ICBvQT6p+nP4P5D8KS0DX/B9KauVZpw
 1tveFvCrrukNnKtoD4I/8eyVfPys0gBssB3xt+efv+s1QKR++Ye0r4Zp08iMt0Dt5lhk
 audx4OXukWrGPDnBZ8nwpvvSmQBh4AH4R6iZdepb4gqu1Ou81e6e/ghuSJKB1RDDpE7a
 WFnA==
X-Gm-Message-State: APjAAAXhbbzu64zEASKLeLnh/qTLkzTsrokysp4GPoG8Lif/MdXKNf1s
 BN/aZ/dwHKhY4YHKF/elPmDKKg==
X-Google-Smtp-Source: APXvYqw5RBQCliNXj13gh92mJ+tFB93GPTh8Cz0opwIZM3QaBaRZ1po4KbtoOJmvZeY2LNu6yWCW1A==
X-Received: by 2002:a17:902:467:: with SMTP id
 94mr64326357ple.131.1560964435192; 
 Wed, 19 Jun 2019 10:13:55 -0700 (PDT)
Received: from mitch-laptop.silverblock.net (ip70-160-244-242.hr.hr.cox.net.
 [70.160.244.242])
 by smtp.gmail.com with ESMTPSA id j14sm19130216pfe.10.2019.06.19.10.13.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 10:13:54 -0700 (PDT)
Message-ID: <861fdd8b6fef8a1f7af3efa3784be59a47e4c882.camel@silverblocksystems.net>
To: Roberto Michio Marques Kagami <robertomk@inatel.br>
Date: Wed, 19 Jun 2019 13:13:52 -0400
In-Reply-To: <BY5PR02MB60191C8CE67A2BE9C0AAFAC5AAE50@BY5PR02MB6019.namprd02.prod.outlook.com>
References: <4ae5b15d06564dc5d1df676f52c389a2b5c9a8ac.camel@silverblocksystems.net>
 <BY5PR02MB60191C8CE67A2BE9C0AAFAC5AAE50@BY5PR02MB6019.namprd02.prod.outlook.com>
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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

Roberto,

Just to clarify, the commit that I used that resulted in successful
build is f6890f227b40687b356c1e6c10d9eec2184691d0

This requires Vivado 2017.4

Did you try f6890f22 or 118a45d63?

I don't have the bandwidth to spare with any bisection to determine
what the actual fault may be.  I've found f6890f22 to yield
satisfactory results.

This is built in a CentOS 7 native install (with EPEL and some other
extra repos enabled).

Regards,

Mitch

On Wed, 2019-06-19 at 17:08 +0000, Roberto Michio Marques Kagami wrote:
> Hello, Mitch!
> 
> I've faced the same problem.
> I've tried the first commit after f6890f22 including Vivado version
> 2018.3 and the error is the same.
> Did you received any reply for this failure?
> I would appreciate any information.
> Thanks!
> 
> Regards,
> Roberto Kagami
> De: USRP-users <usrp-users-bounces@lists.ettus.com> em nome de Mitch
> Davis via USRP-users <usrp-users@lists.ettus.com>
> Enviado: segunda-feira, 17 de junho de 2019 15:44:07
> Para: usrp-users@lists.ettus.com
> Assunto: Re: [USRP-users] RFNoC multi-driven nets
>  
> My apologies for not connecting this message to the OP, I didn't
> register this email account to the list until after the post. 
> However,
> Peter had posted that he was having issues building the latest X310
> RFNOC image (with an RFNOC block) with an error of multiple-drivers
> on
> two nets (ce_clk and ce_rst):
> 
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-June/060013.html
> 
> I too encountered this same error.
> 
> On a hunch, I reverted the repo to the commit just before the Vivado
> 2018.3 update: f6890f227b40687b356c1e6c10d9eec2184691d0
> 
> I was able to build the X310 RFNOC image with an RFNOC block using
> that
> commit without failure.
> 
> I haven't attempted a bisection yet.  Is there anyone else that has
> observed similar build failures?
> 
> 
> Regards,
> 
> Mitch Davis
> 
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
