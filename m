Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DD84EAEA
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jun 2019 16:43:53 +0200 (CEST)
Received: from [::1] (port=55866 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1heKlV-0001Uf-U6; Fri, 21 Jun 2019 10:43:45 -0400
Received: from mail-qt1-f173.google.com ([209.85.160.173]:44916)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1heKlS-0001Qf-Nd
 for usrp-users@lists.ettus.com; Fri, 21 Jun 2019 10:43:42 -0400
Received: by mail-qt1-f173.google.com with SMTP id x47so7107990qtk.11
 for <usrp-users@lists.ettus.com>; Fri, 21 Jun 2019 07:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=LV6ln/VLkXGaK+COiQvzYSkxs/BxQBmlnTPYkcs7cng=;
 b=kkzNVHED3fBTlf/wy0LUheS4MDFUn9N2lTZg/Q8XRWHWiRzfjtCTk2Ht0b29mFMBFB
 itnoYzNLYJS/dZ0RO7aQqdVjNay37MlfarsVuP4D2TVMO/GTtM/DrlxWiduZ/njScrOU
 +eeM7YuxdkAJCPQjfuYeuGAz6rSk+QoU1YZZNmBE52XPWE4yOfPnf38wInEgQk6pLM3N
 XndHwxGlxX1/ohQwpRz3PLl7mUFY5qafVHHJMWUo+/22dzzNPtZp9Bh5Ycp5xIx3ykf0
 wk5sAiveovKkcxYU1zGIZL48JSlapcwNYWBsRtTce+AaYPnFvI3qppMW+X//qrjYOWfQ
 8Mrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=LV6ln/VLkXGaK+COiQvzYSkxs/BxQBmlnTPYkcs7cng=;
 b=A96Agvp0Smz21KDgZ9Ko3ZUUp+EWkRUYeA05o9pT7mPYb6CM6BLIug3/l/wBY3fAu4
 BFqYYROAflaicFysUeRrzYbl9TvXeUhLWcTA23h+Qpvh1IYrZmp5RacxJc/KwQ16DUiT
 HaobomZSBVGUvi2avKiKoP2Sd0vv92BeMIv16CS+kUbuCHYqEzPZOSmYZvIdSrxl0NY1
 6ypKQlAMfolnWKzmCzhuvRcLSoAIOAn1k3RFAPV1Maw0LPXu8WYE+066p8I4pRSKChu5
 C3Bh1Wjp33V0oU9Ya7zIpIzVtQRTt30ofniZCkdX6iSym4V6/VUb36p6opK5TTyBFzUu
 l10w==
X-Gm-Message-State: APjAAAWCwKoDLa4WL6d24CpATjGsZOiP3o/vbnMWLFF49ca9o3uYNOKv
 tsYhjAWaAyIFLKGolB7yevLMT2jq
X-Google-Smtp-Source: APXvYqx+gbjlCF6Rj9XOrJooQ8I9nnbIGtKqmUBBrUiXweOXCIqKyUBzgBh2GpT7jE3qV7gCDwEXCw==
X-Received: by 2002:ac8:25d9:: with SMTP id
 f25mr116097356qtf.256.1561128182117; 
 Fri, 21 Jun 2019 07:43:02 -0700 (PDT)
Received: from lab.localdomain ([24.146.32.18])
 by smtp.googlemail.com with ESMTPSA id z18sm1638688qka.12.2019.06.21.07.43.01
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Jun 2019 07:43:01 -0700 (PDT)
Message-ID: <5D0CECF4.1090807@gmail.com>
Date: Fri, 21 Jun 2019 10:43:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <mailman.63.1561046404.5844.usrp-users_lists.ettus.com@lists.ettus.com>
 <CALSxwQHLo3kztZeL3GcTL-_WoKL9pQ4JEQqkfV3N448MnO9epA@mail.gmail.com>
In-Reply-To: <CALSxwQHLo3kztZeL3GcTL-_WoKL9pQ4JEQqkfV3N448MnO9epA@mail.gmail.com>
Subject: Re: [USRP-users] USRP-users Digest, Vol 106, Issue 21
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

On 06/21/2019 07:43 AM, Simona Sibio via USRP-users wrote:
> Dear all,
>
> I would work on the X310 with Vivado Xilinx.
> I have dowloaded all requirements but when I tried with make 
> X310_RFNOC_HG, I have the following error message:
>
> make X310_RFNOC_HG
> make -f Makefile.x300.inc bin NAME=X310_RFNOC_HG ARCH=kintex7 
> PART_ID=xc7k410t/ffg900/-2 BUILD_1G=1 BUILD_10G=1 SFP0_1GBE=1 
> SFP1_10GBE=1  RFNOC=1 X310=1 TOP_MODULE=x300 EXTRA_DEFS="BUILD_1G=1 
> BUILD_10G=1 SFP0_1GBE=1 SFP1_10GBE=1  RFNOC=1 X310=1"
> make[1]: Entering directory 
> '/home/uwave-lab/Documents/Vivado/fpga-master/usrp3/top/x300'
> BUILDER: Checking tools...
> * GNU bash, version 4.4.19(1)-release (x86_64-pc-linux-gnu)
> * Python 2.7.15rc1
> * Vivado v2018.3 (64-bit)
> ========================================================
> BUILDER: Building IP ten_gig_eth_pcs_pma
> ========================================================
> BUILDER: Staging IP in build directory...
> BUILDER: Reserving IP location: 
> /home/uwave-lab/Documents/Vivado/fpga-master/usrp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma
> BUILDER: Retargeting IP to part kintex7/xc7k410t/ffg900/-2...
> BUILDER: Building IP...
> [00:00:00] Executing command: vivado -mode batch -source 
> /home/uwave-lab/Documents/Vivado/fpga-master/usrp3/tools/scripts/viv_generate_ip.tcl 
> -log ten_gig_eth_pcs_pma.log -nojournal
> WARNING: [Device 21-436] No parts matched 'xc7k410tffg900-2'
> ERROR: [Coretcl 2-106] Specified part could not be found.
> [00:00:06] Current task: Initialization +++ Current Phase: Starting
> [00:00:06] Current task: Initialization +++ Current Phase: Finished
> [00:00:06] Process terminated. Status: Failure
>
> ========================================================
> Warnings:           1
> Critical Warnings:  0
> Errors:             1
>
> BUILDER: Releasing IP location: 
> /home/uwave-lab/Documents/Vivado/fpga-master/usrp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma
> /home/uwave-lab/Documents/Vivado/fpga-master/usrp3/top/x300/ip/ten_gig_eth_pcs_pma/Makefile.inc:41: 
> recipe for target 
> '/home/uwave-lab/Documents/Vivado/fpga-master/usrp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci.out' 
> failed
> make[1]: *** 
> [/home/uwave-lab/Documents/Vivado/fpga-master/usrp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci.out] 
> Error 1
> make[1]: Leaving directory 
> '/home/uwave-lab/Documents/Vivado/fpga-master/usrp3/top/x300'
> Makefile:112: recipe for target 'X310_RFNOC_HG' failed
> make: *** [X310_RFNOC_HG] Error 2
>
>
> Could you help me?
> Is it a licence problem?
> I have installed the WebPACK 2018.3.
>
> Thank you in advance.
> Best Regards,
>
> Simona
>
The WebPack (Free) edition DOES NOT SUPPORT those devices.  You need a 
paid Vivado license.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
