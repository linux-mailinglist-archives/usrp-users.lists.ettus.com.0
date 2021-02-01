Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB7630AFD7
	for <lists+usrp-users@lfdr.de>; Mon,  1 Feb 2021 19:56:26 +0100 (CET)
Received: from [::1] (port=37486 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l6eN5-00008M-5l; Mon, 01 Feb 2021 13:56:23 -0500
Received: from mail-ed1-f52.google.com ([209.85.208.52]:42936)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aaron.rossetto@ettus.com>)
 id 1l6eN1-0008UJ-Cq
 for usrp-users@lists.ettus.com; Mon, 01 Feb 2021 13:56:19 -0500
Received: by mail-ed1-f52.google.com with SMTP id z22so20108764edb.9
 for <usrp-users@lists.ettus.com>; Mon, 01 Feb 2021 10:55:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=iEOhrJoglqjHv5JCLf+r1hAKFykWoz17Q8G+YZhq4vY=;
 b=pqYaMfIAzgexw6EY7vJPNK2mQg1v0LaGPj2t/nrWGwroFvLx8+LzaGk73IA/1snv67
 vIIptw0hOPufyBEyn4sQOk18BxRY0XZa4LjGV14oNV4lFsIOMIFOuwkujXHO48+Dd/S6
 X2E5DfVOX6KJ4a3eRHgNsJER01HY7CASEB2mKXbhE/5E/ZOUSyJ07xoF2P0scaijDlf0
 wIA4qbm3absJ2Ka+gOH0KGtNikBTenfngllq19d8pUdEO166pjfpl6N9nP4r8K300o9K
 L3H9Z0155qSYUIqW0C1tWrZQwMUy8PC1ZPgncDqazIl727mBSf3GynupGDsl5HjepBxZ
 lbbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=iEOhrJoglqjHv5JCLf+r1hAKFykWoz17Q8G+YZhq4vY=;
 b=rHrESE6HagGCcDPodX1MtGU3gCAUssy+3Z+/tgWhUIF94bi6+jb6fRQ9qWnfULgM+p
 tlJIrx015Y2esPAywhdCWwkdslCVTRT2LNEeSkxAQBR4yUR647xJKqEOhA+w/DO7x8mF
 3M+PYgo6h7ia8+8RP0KbGGtFwFVrcwIt9xguig0Dk8mWJmCUzLaAjzn59gjLwoXqj3ML
 oULSO5YjULx1wpUwV4IcnvrlyweSos9RviIeVdDXS4x2z/IWGfqV5kfPoqlox22Nnl7a
 vR0EOV4p+NvfARmwLWBXqRPgeCJTqT+cThywaa7dVH4TYE23NXAPBz1S4OlAacZ+da0p
 npFA==
X-Gm-Message-State: AOAM532GD/qIOUzfRH29x6oMfVPibtw8JutR/Xio349Sj1zvwbS2JUzs
 ScMRDUguF47BsrXkU7vlmEnuDmiytXI5CWX+A7q2E10YPPgF7C+F
X-Google-Smtp-Source: ABdhPJyfdVxmCsxX87CUGvcdt9e5ljP8IkLZ5NSoRsQmcf2SaPAJgY/jx4a2qyKsR6W24+OILY624qyV4ys+3Lt9HQA=
X-Received: by 2002:a05:6402:149:: with SMTP id
 s9mr20341869edu.247.1612205738103; 
 Mon, 01 Feb 2021 10:55:38 -0800 (PST)
MIME-Version: 1.0
References: <CAOx6OK2_yPR6MY8YVfe8_P4TWRaouqmjLRZm=XXX3gPa-dF=Lw@mail.gmail.com>
In-Reply-To: <CAOx6OK2_yPR6MY8YVfe8_P4TWRaouqmjLRZm=XXX3gPa-dF=Lw@mail.gmail.com>
Date: Mon, 1 Feb 2021 12:55:27 -0600
Message-ID: <CAAg5+MwyMhHttUdR4jiCUx+5QBQkQUtFZ3LrLz5ePn5hkBkgGg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Issues getting UHD and DPDK working with Mellanox
 ConnectX-5
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
From: Aaron Rossetto via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Rossetto <aaron.rossetto@ettus.com>
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

Hi Jorge,

The '[WARNING] [DPDK] Detected use_dpdk argument, but DPDK support not
built in' message means that the version of UHD you are using (in this
case, the 3.15.LTS version you installed via PyBOMBS) was not compiled
with DPDK support. For DPDK to be available and usable, the UHD driver
has to be built against the appropriate version of the DPDK libraries
for UHD. If you build the UHD 3.15.LTS branch from source and have the
appropriate DPDK libraries installed, the cmake step prior to
compilation will indicate support for DPDK in the output:

-- Found DPDK: /usr/local/include/dpdk (found version "18.11")  (note:
this is the output for building UHD-4.0, hence the more recent
version)
:
:
-- ######################################################
-- # UHD enabled components
-- ######################################################
:
--   * DPDK
:

Then you should be able to proceed.

Best regards,
Aaron

On Thu, Jan 28, 2021 at 6:48 AM Jorge Arroyo Giganto via USRP-users
<usrp-users@lists.ettus.com> wrote:
>
> Hi,
>
> I am trying to get DPDK and UHD working with a Mellanox ConnectX-5 NIC.
>
> I am using UHD-3.15.LTS (the installation was done with PyBOMBS in order to have RFNoC support, I did it following the RFNoC Getting Started guide), with an X310 and running Ubuntu 16.04 on the Host.
>
> I have followed the guides Getting Started with DPDK and UHD and UHD's manual DPDK page with no luck.
>
> For DPDK, as I am using Ubuntu 16.04, I downloaded from DPDK's download page the recommended DPDK 17.11.10 (LTS) version.
>
> About the ConnectX-5, I installed its drivers (the LTS version of MLNX_OFED) with "./mlnxofedinstall --upstream-libs --dpdk". The drivers seem to work fine as I am able to run UHD applications using the X310 at 10Gb/s, however when setting "use_dpdk=1" I always get the "[WARNING] [DPDK] Detected use_dpdk argument, but DPDK support not built in." message.
>
> My uhd.conf file looks like this:
>
> [use_dpdk=1]
> dpdk-mtu=9000
> dpdk-driver=~/dpdk-stable-17.11.10/build/build/drivers   ; (not sure about this line as I don't have the /usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers/ directory, maybe this is a clue?)
> dpdk-corelist=0,1
> dpdk-num-mbufs=4095
> dpdk-mbufs-cache-size=315
>
> [dpdk-mac=04:3f:72:c3:70:fd]
> dpdk-io-cpu=1
> dpdk-ipv4=192.168.40.1/24
>
> [dpdk-mac=04:3f:72:c3:70:fc]
> dpdk-io-cpu=1
> dpdk-ipv4=192.168.10.1/24
>
>
> If anyone with this setup has gotten DPDK to work I would appreciate the help very much.
>
> Best regards,
>
> Jorge
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
