Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C3D2E23CB
	for <lists+usrp-users@lfdr.de>; Thu, 24 Dec 2020 03:51:36 +0100 (CET)
Received: from [::1] (port=42024 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ksGiy-00079g-TY; Wed, 23 Dec 2020 21:51:32 -0500
Received: from mail-oo1-f42.google.com ([209.85.161.42]:42881)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1ksGiu-000738-IR
 for usrp-users@lists.ettus.com; Wed, 23 Dec 2020 21:51:28 -0500
Received: by mail-oo1-f42.google.com with SMTP id x203so204328ooa.9
 for <usrp-users@lists.ettus.com>; Wed, 23 Dec 2020 18:51:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=PTJ8ROLvLHl8vwc7ajMdtHudwD684aNvVu5OrAxIawA=;
 b=QznCoLQJxXYvoTbMklAJplObZjBlvDs08WAm7qps1NtJdvslqip2udzTbTPoaSe4BT
 jQ6EiGJHZTZfAhv3e2NP4ADspKCqhs3+B8mu1nmGcC3kgB3UJQJvkj47wTPB8/Z67vAl
 EAUcBxYxsoL8NTBvBfItx1tKUFbmcprQyjOD9UGUpdkXQbpL7IjNZ5JIImQVH0vg+H1Y
 yvlu/TWSjMuLRYnbJBTmQ4mOABV+P1UwmG00bz6kKyjrSP4gvmXVIRx3Np4v5TQ8R0dv
 +Trg1Yu5LuEnd0K8o2GgivnI3W3XDw6i46ebLGt0tn3z/JDAVIqxfTfcCZ4o20yzi/yt
 Bubw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=PTJ8ROLvLHl8vwc7ajMdtHudwD684aNvVu5OrAxIawA=;
 b=rSWY6LD0u8APHCk/9pddqru/u4ZYRUic5OSfLOkY33G7UhGiwNmTFDXBIHW168lzQQ
 z3ehGLtZinjGqpLygfknxL5b/0V1k6KAcCoj9N1w9zGv+7KAHXMGKEaC95rGywl9ZW5g
 K3M9HyDklfI7bdF4JXgGiRpxBkOOl+KxhEROIz33nY8p0+R0hkDtN4B1Cd1w/CLZ8UHl
 1AwYg4usy6Ju3/W3SR7GpfYm/qeH3iE6Kzpr8t6O5pwKHdBPYkKuyAY06wrC7l5APF2X
 tdalXuJrqh4DNCUS61CWAiqtYNWkS/Zs48qDJivG/co1N6ivvT1oOhahP9UZHAwZdUL0
 T0Nw==
X-Gm-Message-State: AOAM531uXKE4dlYJojkbBLLUt2PrIQrfuI1qaevXB6i3VZr+m64vnhnq
 4QEN5CRWtpbq4gT3oUeP7C/NqX0dwYJIrQDKPkNLu92b9czjyA==
X-Google-Smtp-Source: ABdhPJwge74rthnZ5mu7POYaVXBe+1Z3Qj4we7ZgwgzDiiVkReVrlXdlwzkB9VripUFCekkR6Syg+THwaM3ZJFVbiK4=
X-Received: by 2002:a4a:5590:: with SMTP id e138mr20178809oob.13.1608778247367; 
 Wed, 23 Dec 2020 18:50:47 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 23 Dec 2020 21:50:36 -0500
Message-ID: <CAB__hTS8pMUdZphefQQwY7UF2SPKDqY3dGdqEKCWANB7MdQMUA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Advice sought for custom FFT/Window RFNoC block
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============2571865931493936554=="
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

--===============2571865931493936554==
Content-Type: multipart/alternative; boundary="000000000000f5281605b72cdf40"

--000000000000f5281605b72cdf40
Content-Type: text/plain; charset="UTF-8"

Hi,
I created an RFNoC block (4.0) with both windowing and a Xilinx FFT IP
core. In order to address the issue of partial packets arriving (or packets
less than the FFT size of 4096 or higher), I added the axi_rate_change
module (after looking for all options). Even though my block does not
change rate, the axi_rate_change is convenient because it automatically
drops partial packets and handles the header for you in the event of
dropping partial packets. In my UHD block controller, I just set the M/N
registers the same since the rate doesn't change.

In any case, I am seeing some unexpected issues and now I'm questioning
whether or not using the axi_rate_change block for this use case is a good
idea.  Any comments/advice would be appreciated.
Rob

--000000000000f5281605b72cdf40
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I created an RFNoC block (4.0) with both windo=
wing and a Xilinx FFT IP core. In order to address the issue of partial pac=
kets arriving (or packets less than the FFT size of 4096 or higher), I adde=
d the axi_rate_change module (after looking for all options). Even though m=
y block does not change rate, the axi_rate_change is convenient because it =
automatically drops partial packets and handles the header for you in=C2=A0=
the event of dropping partial packets. In my UHD block controller, I just s=
et the M/N registers the same since the rate doesn&#39;t change.</div><div>=
<br></div><div>In any case, I am seeing some unexpected issues and now I&#3=
9;m questioning whether or not using the axi_rate_change block for this use=
 case is a good idea.=C2=A0 Any comments/advice would be appreciated.</div>=
<div>Rob</div></div>

--000000000000f5281605b72cdf40--


--===============2571865931493936554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2571865931493936554==--

