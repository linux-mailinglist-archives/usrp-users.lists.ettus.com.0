Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B298F80B29
	for <lists+usrp-users@lfdr.de>; Sun,  4 Aug 2019 15:26:08 +0200 (CEST)
Received: from [::1] (port=51590 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1huGWU-0000vF-G5; Sun, 04 Aug 2019 09:26:06 -0400
Received: from sonic303-3.consmr.mail.bf2.yahoo.com ([74.6.131.42]:35127)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <royceconnerley@yahoo.com>)
 id 1hu38g-0002th-2c
 for usrp-users@lists.ettus.com; Sat, 03 Aug 2019 19:08:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1564873677; bh=ZVb1DaNGb3iCxI/2ROu6KdxtcCy4jFQ7KTAR4kts3l8=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From:Subject;
 b=NzXJLD9bxX1gWyfwPp4orreNhvHacEF4k2iGqm8rfiCe6cCiDivh7InfUwRRIAMdvRjuWccGopts2hLiUI9tcctDznglssSSdLivS503zwxgOIKAnb9cNwNfqH+Rz30EQdtt1cmnNOeJ30i10YM/gYtZZi15phDTcg/7WV3B0mehEDMZRAbcLshCsfbWZ5ZwOVwgGh8vpBGm7/MYxJq/GqTQG2i1r8WTUvrA5LDqAMLbsbxQ0pCMUiXGA5B6nIov0SOPqsydHVBzduv2VXOhHgGdB2bT+PNZgh5FsWWV8QVJJyExak3u8Q4lvYQQ1VGNLTuDVeWG2gsUOsDd04Km3Q==
X-YMail-OSG: B_jowacVM1mJRGm.7tiDZ1NDScmPg7BwUatgu5R.tX7KGeXLJV1FZhC8H1Ai7eD
 9otQqp5ctlSnqUcRRCeIUJN4uVNDTWPBb2V1hCQQhuTmngOxl6gUx0pEDKR2C3i.sPmTvWDIV8y_
 nczDv8JcNzlSKEsif._2OB_7c_TSaDqiAc.G1RsTxWn5T_33GvlhJYdv.z6ZEhMpaP9zzsPdPVMm
 bpvddXKrPmk6iQtTv_wDlXtEVEsqqHt.hNkUnuAqH5Qe0tnFjrljFwey0rGMWzlOdSzxiXOuhgwh
 9gjEjDmKQMnjipsHXEI9cuobh_mnC3sPYDL9Eukse5Ku9wggAM0nL9LjNeSPSMtqKaDrRWAfHrOD
 XsL39ixv2kyMF.3UICezovZcce9NAh8V6FWU3h0KjfpMqj9HqwaJnaaJ3SN0B8EULWPM.c7IkzqK
 QtY8yUf7Is4BR.2IElBjS2IpupC4nV5lyeE6LyeL0h54ZUaFQfmPYkbU4vl6TfT_9h3Hb1lSorB9
 _7Maf981Sh6Sa1FFDp01vcWJSFl0rAvkZ24QycWZGjWDOfj5t_gLF1Mxz20Jc2IHIXGR5AZY2yXA
 .jnGJxY3JKsqCoi31WJtY3ArxjcRxRD2_Zi_EblPWuuL3wHUVuY9_OPXEpcmE11ISTCHvdJvVcsk
 wQiSP2Sa1cNZhDiEp9_biwGQyKBbnE1wJvy51gx_jClQj05fMLPs0iIdxjUgSA6HkPb3BS6s_VlD
 Vq.P9wgmYtPMHjMnwAttuOd9C1LHMS375dM3nQidFzE5DIGiwds.5wgz8MbqXHWtw2I21wZ0oNYY
 xeAa_.eZ2qDuZF6iAqObVMH.HH_jEunTpMz.PqnA7_DO3SKWpGqUrhTTXt9GW1b4SsIdZvWO5X9H
 WukDipKC_ZJsEkTsxcm2Kp5LdbKlq3jaY1ESG56q8r2VxgnqsNpvRFhKxnFe.6vfhWTImY8zuHqv
 AybF6uPIJObr9iBN.DZiTKF32mmyysSkEnJ0lcf8hbpp2TvE.xbyv9JxhiTlXigr2.T42rhZmzer
 qYvWmEbm2bZGzpAhnPUB9KxwJzhfOZyjqtGiTZlQeZZyz9bFVw93.zClpREhR1bI7OKEvBITPK4W
 .zPOKV93lm6IihVGOOdcNkK9Ag8bTo77fmhMqufP8ez4BDp1JVZSymlVIH3quuzujQvMSvZqIELA
 rj1abXQJwjDuB7kwBuiCOr30nPvkblFq_SbRnaMRRoOWAmcrSn0HkA2mQ.pb_gDXARkbzbg9idVz
 Db.dBS3AWM1QJmwQgr3vxL3Jit2qRWE2.AQ--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic303.consmr.mail.bf2.yahoo.com with HTTP; Sat, 3 Aug 2019 23:07:57 +0000
Received: by smtp415.mail.bf1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 7080e3740dd3e63c528ab99671b3d17c; 
 Sat, 03 Aug 2019 23:07:55 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
In-Reply-To: <CAB__hTQCZmat+4k0zPyyEGuPWB-4dP2ULZNmUCF_if1OuGSxeg@mail.gmail.com>
Date: Sat, 3 Aug 2019 18:08:40 -0500
Message-Id: <EF49843B-D676-455E-8953-D45EA9D71F09@yahoo.com>
References: <CAB__hTQCZmat+4k0zPyyEGuPWB-4dP2ULZNmUCF_if1OuGSxeg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: Apple Mail (2.3445.104.11)
X-Mailman-Approved-At: Sun, 04 Aug 2019 09:26:03 -0400
Subject: Re: [USRP-users] problem compiling example rfnoc testbench
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
From: Royce Connerley via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Royce Connerley <royceconnerley@yahoo.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
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

Rob

I ran into this when running the tutorial test bench. I was able to change the part used for the test bench by changing ARCH and PART_ID in uhd/fpga-src/usrp3/tools/make/viv_sim_preamble.mak

# -------------------------------------------------------------------
# Setup simulation
# -------------------------------------------------------------------
# Define part using PART_ID (<device>/<package>/<speedgrade>)
# and architecture (zynq, kintex7, or artix7)
# User can override these if needed
#ARCH = kintex7
#PART_ID = xc7k410t/ffg900/-2
ARCH = zynq
PART_ID = XC7Z020/clg484/-1

Seems like a hack, but it got me through the simulation.

Royce Connerley

> On Aug 3, 2019, at 2:27 PM, Rob Kossler via USRP-users <usrp-users@lists.ettus.com> wrote:
> 
> Hi,
> I just installed installed the latest UHD master with fpga source and installed the 2018.3 Xilinx webpack (I also have a 2017.4 webpack installed which was working).  I followed the rfnoc getting started build, but got the following error when I tried the command "make noc_block_gain_tb"
> 
> # puts "BUILDER: Creating Vivado simulation project part $part_name"
> BUILDER: Creating Vivado simulation project part xc7k410tffg900-2
> # create_project -part $part_name -force $project_name/$project_name
> WARNING: [Device 21-436] No parts matched 'xc7k410tffg900-2'
> ERROR: [Coretcl 2-106] Specified part could not be found.
> INFO: [Common 17-206] Exiting Vivado at Sat Aug  3 14:59:04 2019...
>  
> I fully understand that webpack does not support the X310 part, but my question is why is the part being selected?  At the point of running the rfnoc getting started example, I have not knowingly selected any part.  My assumption is that if I could change this part, the make will succeed.  Does anyone know how I can make it use a webpack compatible part like xc7z020?
> 
> Thanks.
> Rob
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
