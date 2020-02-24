Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1303E16AEA0
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2020 19:23:32 +0100 (CET)
Received: from [::1] (port=50824 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6IO7-00039k-HW; Mon, 24 Feb 2020 13:23:27 -0500
Received: from mout.gmx.net ([212.227.15.15]:44087)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <lukashaase@gmx.at>) id 1j6IO3-00033q-Fr
 for usrp-users@lists.ettus.com; Mon, 24 Feb 2020 13:23:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1582568562;
 bh=QrCZVWwk0e9met9VXz9RFyBFpdbdUu4WlIbx20qF35s=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=e9UV6drl5dNEDIv9ttNHKCkJzH8tOQixqfkrzyrCKIO6oTB2DTJ1q6A8tNR7Q7npY
 MRrTr5zecWJFTOsjVbLN5scMEUt0ixDjpsxFpNpi8B9iPse56Y8oHxpCCrkIKBZFZq
 ooHH/8PEK+TKcPEPMuDkhhsR07JP8/zypbHddqAw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bs61.server.lan [172.19.170.145]) (via HTTP); Mon, 24 Feb 2020
 19:22:42 +0100
MIME-Version: 1.0
Message-ID: <trinity-dcbc347f-cd14-4dcb-890c-9783cc458a06-1582568562308@3c-app-gmx-bs61>
To: usrp-users@lists.ettus.com
Date: Mon, 24 Feb 2020 19:22:42 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:iMwVuep9LDRkagH+cRj81LGALoqqn1RHdECLBlVfYOm5OaG9JpxP97mGhOmCiGizy5zL0
 Lqv0e/ixTSBc/DKEL5+WJfYCTnxNJXZDYHtJXra90to4OsMrgeqBttjH54ZvWMN1JVnaBIAMfkyc
 riPGOy/41GiKIo4xRZ1SHfWrT+f4tIu08Cy5dAk53q/w+dBF0J8oY7rST7veqyil4SlARS0vGEVu
 1/yjnQyh9nH9eX/1IO+GUmgwOw4thBDCjf4PeNM8A4A8h12hTFARSVaBvBhTeZIFJrHYQuT1y69W
 T0=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gVq8HXPZkMQ=:zMRu9HOSovIfidjXYv6D9i
 jjXmXr0UDuPGGrtvl/oGGHDMuLaItFBV2Vt7ibLLkj3L12RdpIBBCN5x0dexmwdKxIw6q3q+c
 ilSRF6cm4jkVTXnsHqNOgbNmCM4kCtiomZs8LAYcmJItGqii7mBrdgzRMB7rnB3zBHcGTPtZQ
 IhXhUjb4iPFYWTgw8OsaIEaV15E+1wvLGroCVUav+SpjCCJ893+lzmDomz5ge/jQXoUxIkKOz
 LpcAAZ10xUaEyAk37+0KBjx6/CA/m0o3GebkV36a1R2VO3an+ACBtPg91Ntx0+v7mQqZ0gHF4
 SKLMCDbM5G3Mx2bQDjyanV+OrE+bWCFO+b2PET0I8in/0Jk9TYGJE986gS0rTUgPSgaHCryyF
 Xlv/QonIkHcB3V0lpmTp4U3H/435bJ4L8ThIDGI4X1vtUUlzCqS53lLySfeb6ca4DpHQOBjIl
 5ms0CddYpeQjlcwshP2H44t9c38lfJaiuzamqYy/1b8sTeMWfpU28liJ5TgpkfF65a/Zff9Lh
 3LI+zLSflDqGfRbwSBA+2rLjlKrB3RQ6ud6SdsabXzl8MG9aI0LUzoTmMZwXaA5WTgzI5PYYM
 BqigsolSGMoErMz1pveCTjs/p4X3v1+RGyNkeik68sAv5WMBU9gW9J4dR4Z1VEIKFrEYnALSp
 9fgXyCjNqaEc9Ub67WNtXtMB6qa48sq1Wb0MknluIQUUk1FovqoDZCugIM+YE4mMphqA=
Subject: [USRP-users] USRP X310 over PCIe: Recommended setup? (Windows, Linux,
 which one?)
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

Hi,

I have used USRP X310 over PCIe and gnuradio on Windows for quite a bit. I suffered from large connectivity issues so I wanted to switch to Linux for quite some time. Also, I need to start modifying gnuradio/uhd source which is even more painful in Windows.

I set up an Ubuntu 18.04 system (which is not exactly new) and in the last step Linux NI RIO Installation fails. And https://files.ettus.com/manual/page_ni_rio_kernel.html states: "Currently, the latest supported kernel version is 4.2.x.". What a bummer!

Is there any way to get USRP X310 + PCIe working on Ubuntu 18.04?
If not, what is the recommended setup when someone needs PCIe, gnuradio, source code?
I would really prefer a Debian-like Linux system that's not completely outdated (such as pre-bionic).

Best,
Lukas


PS:

$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 18.04.4 LTS
Release:        18.04
Codename:       bionic
$ uname -a
Linux station 5.3.0-40-generic #32~18.04.1-Ubuntu SMP Mon Feb 3 14:05:59 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
