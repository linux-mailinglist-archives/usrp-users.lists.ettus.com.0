Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A6C1F4E40
	for <lists+usrp-users@lfdr.de>; Wed, 10 Jun 2020 08:31:31 +0200 (CEST)
Received: from [::1] (port=45658 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jiuGm-0006kf-57; Wed, 10 Jun 2020 02:31:28 -0400
Received: from mout.gmx.net ([212.227.15.15]:49851)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jiuGh-0006hX-M3
 for usrp-users@lists.ettus.com; Wed, 10 Jun 2020 02:31:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1591770642;
 bh=bDVrYXpoMX4dmXwMIjUL9ybUDIh2vyiifPDD2kYMRDw=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=NAWXAgS0jtwueqNzmDl6l641+WN+0SSVnd5wB46M6jwIQ4MhH1oK+1I+VnJR9ybAn
 vW4hbtyaR9PtUus4yCJRjZvrnQUe2Shd+VjwTd9cGJEZPw8KsN+GWfhHlry0S6AX/t
 tvNMZHub07GHDPUYMiFx+CBkNS4FrztUgWRpj5OQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [87.101.54.176] ([87.101.54.176]) by web-mail.gmx.net
 (3c-app-gmx-bs66.server.lan [172.19.170.210]) (via HTTP); Wed, 10 Jun 2020
 08:30:42 +0200
MIME-Version: 1.0
Message-ID: <trinity-ba8bb5a5-c5df-431b-8626-79fdb3b336d3-1591770642546@3c-app-gmx-bs66>
To: "USRP-userslists.ettus.com" <usrp-users@lists.ettus.com>
Date: Wed, 10 Jun 2020 08:30:42 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:TDVtS7+faAQZHm/WOUOPBi0UMc05w1Mt5TvvpzNuXXreT2eXSxxef0f732jHSwA1t9CF/
 HrSyFPGxdx+T9g75efTdCai7fsNXkw/Pbtelfiyttwa76xkkgrhZMo+6GrUEEbLkmR1iv7Hl9rTm
 YX5jVCZLz5S0u8MMdD7+nmV1ExNXl8ItM+FqIaIBy97XqihauF7f0K2/VHgYICvvIWjp+/vxd+Zm
 OH/4dC/ukyv8aMzjEWVp+ATn2nofzA+Glb4tizWYwtEo5f73EAPnOwKO8xF6jS1Lmx4Ag00eKYBW
 aE=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MSkhkLR0hLc=:DSO2JBBc/eGPgXS4LMMk9L
 59V9rIVaMAuHHdYJldh/4HCpxOmMUtwENEFxw0i4VgbsxNhRjVsyMunwBamjZhGvLeydyDYtX
 +4hcBMu+insS0e2MPzEd2jdtlPOPEP2NfIbuFt4VlG/Nb9wNrQ+5lNt4x2qRdKJLtUFvBvXPW
 Ns9Xp2nWGNQn+qJAhKA3ug36mm4ZCUR26JwIa3OBwsg5rLRFJWggwWthocC3HRp7EaZpN0bNo
 6r8MAGBsNOpfTzMLcwLoAj8XixSIRRGi7Ra0Yj8IZZkaPo7rPjSKWT8GiNZhSJOZ1UjMK14b/
 n3B2y2CyOc/SXujlP2/ZQoebob7KGeq0yMVWXRRuSiEen40eFx2tphRcPT4dChufmmusE3Bez
 gxV3BAqnc9WRh9nEZOVBQfd/UdpWAnbBnDVEBuv6Fd5bUqcWXHXddjgMIOuFjy+9sHK1UIVK1
 3ULrd4qi44LTxHY4np9vQHkriosAL2OctvDet6N67byVYBbqmlKbl9jE38Qo//aOudZC9Tho4
 lnE1SfujF83ucdOmHBa/0XJEUu8L+tMw+saEy3cmEmYkd5nTx+C1liQh55l90H/A4RWC6J+Ej
 dFEoU1oAMwjagS4wumvEINojTzgyhiiDNkMXptHpSdb1PmGs+6X4B2ssRWSStfGSOrkNnvb1M
 vGa8tQaDQg9cK4aCWiGXazpeIBcUqYyTQO9dX0j0px1uYe2n+buH6uR53fDdzzoMc6Jc=
Subject: [USRP-users] How to debug timed commands on FPGA side?
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

Hello,

Is there any (somewhat straight forward) way to debug timed commands on the FPGA?
In particular, I want to know:
1.) if any timed command is not executed as timed command but right away (because it had a timestamp but the command was late so it was executed right away)
2.) if any command queue overruns
3.) Any other sort of information that causes timed commands to misbehave

I use "tx_command" for USRP Sink to send timed commands. The "tx_command" tags are injected with an embedded python block. I use "Tag Debug" and save all tags to a text file. Works.
Then, in exactly the same block diagram, I replace the embedded python block with my C++ implementation that generates tags.
Suddenly, some timed commands do not execute at the right moment any more (these are just few and consistent across re-runs and reboots).

However, the tags generated by boths blocks are absolutely IDENTICAL! A diff between the "tx_command" outputs results in NO differences. Hence I need to know what the FPGA actually processes in both cases.

Thanks
Lukas



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
