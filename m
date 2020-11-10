Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C220B2ACB32
	for <lists+usrp-users@lfdr.de>; Tue, 10 Nov 2020 03:40:47 +0100 (CET)
Received: from [::1] (port=60198 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcJaO-0007M3-Pd; Mon, 09 Nov 2020 21:40:44 -0500
Received: from mout-xforward.gmx.net ([82.165.159.41]:47287)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1kcJaK-0007F1-Bl
 for usrp-users@lists.ettus.com; Mon, 09 Nov 2020 21:40:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1604975999;
 bh=2wPAkz09CBGV3YAXPQ+r8BYmeUg/58ENR1WvtZ++0Ds=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=HNvuOsbxwUieWZheIU6W3bD/4ZIFcPJlY6eB7/eDRZqz7n0W/fljHBLlM9ke7OhQl
 A7/4Ks11d2Q4E8PjyLkNyp7CPWK0IsJpyg/iqtsCRRq9o3mStTpyr16gWE/LTOwUUM
 FmtwODAiCSeFjVhaDpOfRZxvI08WaRAFQqp1xi4g=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [176.113.74.228] ([176.113.74.228]) by web-mail.gmx.net
 (3c-app-gmx-bs24.server.lan [172.19.170.76]) (via HTTP); Tue, 10 Nov 2020
 03:39:59 +0100
MIME-Version: 1.0
Message-ID: <trinity-04e63cb6-c192-4324-8b56-1f4eadb851e9-1604975998973@3c-app-gmx-bs24>
To: usrp-users@lists.ettus.com
Date: Tue, 10 Nov 2020 03:39:59 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:K30yp1+/eigZqTMtnllByXDYHsVXy1TwQJIXUawhEoFx8RJmtp3lIZO9Lp9edPlKQ4faJ
 qtLto7eJBeD8mQR4tBhclxLV3FV97UONuhEZCf2jHYh9OGGbmTWCiI8XaM3yXylz2mh3uXjAnsQd
 +Qwz4njwAVng1gFynle0aEi/US25Tyj3NGl1ygZocgbycysy+j1NpgBtjF8GXyt42ZZ1XpEJIaaH
 cVMnqSpyoNWtPCE8Ey+OPCAolRqThVseCXQQqTzR6Pbcn4TTJBWqlcS6JpTKGEQte+NlHO98EhxF
 zU=
X-Spam-Flag: YES
X-UI-Out-Filterresults: junk:10;V03:K0:XZOr2cFajvA=:degUytCY5urDqRYCvCoqKklq
 AV96Gs3WZQSaZBSAdU0Rjr3EWZyfjsgDnuYiKL1Ku5eQeJjNK2PBsn8+AD14UrmdrkVhb4KtC
 veAGpnK4VzHRehr2tl9frpoRnGiRmkGX5zl4VLmvTxRZfNCGSSbV46GfUlX/ZV9AAgzWzeykk
 7l+C0bEGTXLL1axnbY3iJkaFewY5HslOndxHMS7Ac6KL8izkvl/akGVOyBWFNHSgpMBIi/tdL
 A/XqX1d1WWDAark9w1V0vzDyzs4G87PV+nxIS2lQMWO7hcDrHtJtWLztLjBgKE2gjJ1XpxILQ
 xAztjvlWSrpmMZ6hNSBc25itzdz8bhp6iPOkRnx6TTyOpBzObVHvtxVkyBlxNW69Z2UkzPHiA
 AJ4YBiYncQZM95jbBEI/CGppMOHGGVsvW/Iwv3l8sSRrfthyYOlUKqkzXtTDgK0r00BzDIamX
 b1NDdUImbWpj5Bv+8crOZ1sxm1paEZrZvrWBVZEnz/eSPjrO0bX4pij9fiLBMEn0P+BlWBAzm
 FCDB0XxdNCh93kHyNTbO75r6/8b08LVydCPPlIJ2Zfpz+ODyArUXs/1eE7TsEs3cKOQWjm8tv
 T52nmR/3alUO3DDiGw6QccMxuZjdisYQ
Subject: [USRP-users] Limiting output power, best approach to connect HPA?
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
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
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

I need an output signal of ~32dBm (at 900 MHz).
I have a MiniCircuits ZHL-25W-272+ high power amplifier (25W).
The gain at 900 MHz is ~49.2.
Hi,


I would also like to filter out harmonics (USRP as well as PA) with a VLF-1000+; the max input power is 10W (40dBm), so more than what I want to obtain (32dBm).

My approach would be to connect the USRP output to the ZHL-25W-272+ and the VLF-1000+ filter afterwards.

Hence, the USRP should output a maximum of 32dBm-49.2dB=-17.2dBm.

I can achieve this by setting the TX Gain to 0dB and adding a digital backoff in my samples of ~5.9dB.

I think this should work but I am little bit concerned about safety if the software fails for some reason or the wrong program is started accidentially. The USRP can output up to 22dBm which would destroy the HPA and filter (and what follows).

Is there a way to program a power limit in advance?
What is the best/recommended way to handle this situation?

Thanks,
Luke










_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
