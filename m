Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 508333ABEE
	for <lists+usrp-users@lfdr.de>; Sun,  9 Jun 2019 22:58:46 +0200 (CEST)
Received: from [::1] (port=48862 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ha4tg-0003AN-U5; Sun, 09 Jun 2019 16:58:36 -0400
Received: from sonic317-35.consmr.mail.ne1.yahoo.com ([66.163.184.46]:33813)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1ha4td-00035p-HK
 for usrp-users@lists.ettus.com; Sun, 09 Jun 2019 16:58:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1560113872; bh=zhjFkIUIoOM8j13Ms8+zUBxPC3MB4flEjY7jx6LiyQg=;
 h=Subject:From:To:Date:From:Subject;
 b=LqUA9gFMk0JEslnmE/sCbD/a+HgAjR301Wwtc6cZ6r3u0LFS/BLm0vr+5lVUag/CgfC+l8lKeOixtvAecoI/Nhd1l9/MzEQZyo0dLJmiAyELQhxMFSzN59Q64eK07DDWZYqKRus3P1AfEzT6JbcebKKrVS0pxBJhx7mrCfW4iK721rVZf1VxwLz0UQKUCVRVZj4FU0DOWHKnfoCEMPathqnJ/NQLhIz4M6HdtSbtdebibJEaz18E6itZYNeofQEd3tTWRcCMkt1jMKv20FY3z5CstHlapMzDUum42L4JkLhw4xaTCuw56L9P958l2yZ3LIrJ5Dv/sN/sHQIMT+sKbQ==
X-YMail-OSG: w0GBbJUVM1knP5fIAOceO5nEjAewzZeoHs981Q5EtRn1vTBs.vUIV6Wur8Fe5vT
 20XoLWMHXDU_8pdISD4cKNDtnwpEWq.1BvcpiYlgLJvtpBOvIJ5wFrNqAcbqGR851OA5Htw9LYib
 7pRgeDTLE65FG01IONziyXT2YioXwngD2dzww3G_cMufmTt6EpaUgjNBCG2Stn8oloNdI70N34hS
 54_Ll6O0.gQL7w1iWiC3.VmiFXP59_0GvNLJ1JPef.Y2isx2wMzyIM4G8BIZbRbLIPhW01EObMcv
 Xymbx0PmY6hO.igy54zY0rFcWioJPshdvI6LvFybTsyt9f6YnPuiTedhTzyH8PSn54sbYQp0hYmK
 0OrrUC9S89HP12TMC2VCwI8.rpboCRxczjwCb55MayWi1HfO5MHkDBY5zubCQV.d9NYu.a2BahaZ
 ABVof80.xy..1Fox8OsiTcE1_kaZMYZyw6lQlinQO1.FNRygXlzzJsLi8inC8OHbqmuGffM6Usyz
 0t_DjIGucxxPpPMfBuiccMo8RmrSqnFNZ_NX0ZGFMin8xNIsRjgJzKkrW3N_SFpt8NqStMoYKqgL
 4ooWVJEA0GC06j9DOGh9cg9OLkBx0K5c8AZBX0Tm2S5hhtmI.5Koy5iwiHiFxL1e7Ega_M0_zWTh
 6guo3zloH5cG2r9tCHT2vGCOQtf.0ODHhP6RzWPx1YVnFWigeTx1xSa237UvRSRdgP_eh2MWWI5O
 fT4jut7QDlFdc33_z7r2awZHEOdLDZ12zr071i1FlfsgEi6jLfQOdnRJ_Tb3UmcKAR6LQ6w86hEK
 DgqjbAcZK1Bo9JxQfkmdDVCLKaj1ZLpGU40ef46ptR0pfclNq8CyJN6O8.lT.bItAHjR1jcGS59d
 dbuFrEnmmprxNHhZAji0jpm.06y6ki6XGroDl5FLuhdntNuEn6uBV3Z8nJgDH5_sZuiVDwZ9t51y
 pYqMYM9r559I5ZK9jCB24.v5SD52T5gjonaP0Pvo9ldq40bo.6Fauxv.xdetKtdGttBFYxQ08nSq
 RMXmkIvKbrA4p24mEV9MTwiWZe71Xp6r0vVvmlBPVn8rocYjo.5UH4MvNLlXijlAclFAsHd4NfvI
 NTl99PZ3N25qsGb6TkssAjNlMbtU2y1dQhvvSmPIp0H8KP8IaHsGd.YjwQoEzQ0.mceZD.QK.AgK
 DGEARHHiC3QdX5R7A4nonIUn7eoYDNBqw6siuxnww9m3QUYpGdHyXqYlAKEJrRDw-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic317.consmr.mail.ne1.yahoo.com with HTTP; Sun, 9 Jun 2019 20:57:52 +0000
Received: from 108-202-218-101.lightspeed.rcsntx.sbcglobal.net (EHLO
 Serenity2) ([108.202.218.101])
 by smtp407.mail.ne1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 67165ccb8add705bdcf90e3a4f547e4c for <usrp-users@lists.ettus.com>;
 Sun, 09 Jun 2019 20:57:49 +0000 (UTC)
Message-ID: <7e4c6d1a587c93149b4aa336451f777415b697cb.camel@sbcglobal.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Sun, 09 Jun 2019 20:57:46 +0000
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
Subject: [USRP-users] updated E310 RFNoC guidance
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
From: "d.des via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "d.des" <d.des@sbcglobal.net>
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

The instructions at 
https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source

are pretty good and with a little tweaking to account for changes in
image file naming and storage location conventions. The process 
produces a partially-useful system, although only three RFNoC modules
seem to have made it: Radio_0, DDC_0, and DUC_0. After those,
uhd_usrp_probe returns: FPGA image loaded 
/home/root/localinstall/usr/share/uhd/images/usrp_e3xx_fpga_idle.bit
[ERROR] [UHD] Exception caught in safe-call.
  in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
uhd::endianness_t _endianness = (uhd::endianness_t)1u]
:
:

I'm using a fresh SD card with the latest applicable image downloaded
from Ettus for my PN ....D-01L E310. I just installed Vivado and built
fresh verions of usrp_e3xx_fpga_idle.* FPGA image files from source but
the results were the same. The rfnoc_rx_to_file example runs so I know
that the Radio module works.

Some searching indicates that this has been an issue since early 2018 
https://kb.ettus.com/Getting_Started_with_RFNoC_Development
and is related to the rfnoc-devel fork. Someone reported in early 2019 
https://github.com/EttusResearch/uhd/issues/232
that in response to an email Ettus suggested that the guide was out of
date and that users should switch to the current master uhd branch and
set -DENABLE_RFNOC=ON. I tried this but cross-compiling for the E310
requires a version of CMake higher than that contained in the cross-
compile tools supplied by Ettus. Rather than try to construct my own
cross-compile environment I wonder if someone could point to the latest
(or best) version of UHD that is supported by the E310 build
environment and contains more working RFNoC modules.

There appear to have been changes in image file naming convention since
the table in  
https://kb.ettus.com/Getting_Started_with_RFNoC_Development was
published so I don't know how many or which RFNoC modules to expect in
pre-compiled form. Maybe someone who's run this down can point to a
current list.

Thanks!


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
