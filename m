Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDFE74E22
	for <lists+usrp-users@lfdr.de>; Thu, 25 Jul 2019 14:29:02 +0200 (CEST)
Received: from [::1] (port=56644 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hqcrk-00015o-A7; Thu, 25 Jul 2019 08:29:00 -0400
Received: from mail-ua1-f50.google.com ([209.85.222.50]:34619)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <smullin2@nd.edu>) id 1hqcrh-0000vR-7j
 for usrp-users@lists.ettus.com; Thu, 25 Jul 2019 08:28:57 -0400
Received: by mail-ua1-f50.google.com with SMTP id c4so19764800uad.1
 for <usrp-users@lists.ettus.com>; Thu, 25 Jul 2019 05:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=rZPx4PC1MXsHe/G0cOxLLUwkS953tvYxB8bV5spQTrc=;
 b=NuQsOybqqnU8ruLnb0zw8UU4YXqIXmsWLlSCE08apz8nJTAfMLW1QQxQS0+Mg99rG3
 vnlkDxcuWD2c1GMy1NGRvA7WAHxOo/qV9I72SyEcWXjdrBdx+BOl2sSmT1msg1BYpg1C
 mZUG+qKSZU7rjvHOdcFwvQy+fEqQxMpgU1zVUi1jJnjfhh6YT7v9zhFeO6OLagShEyJP
 mNr6SYIqxuAbN7JAz0rvhn3H6WLLhUuxwYoXksMRFsZwwGeUMkdC9Z8Lj+jYGooJDmPL
 8s7ARDIpo7hW/6pN9yL7FRkLdNdqWr174jQ5kSBN/lue6JERGQ8RL8qegYxYDvEtcYZB
 ay0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=rZPx4PC1MXsHe/G0cOxLLUwkS953tvYxB8bV5spQTrc=;
 b=EuZZ9/rGTLiF7EX0SYThhPnUZ7FyCkK25xy0GaS+4GYgS1fgUmb8G6Qjl3HYypimrQ
 kHv7kSPP3HHwzhtIkOoTPbpXwWpKa+NVWXj2GUcffdPNpaltYCdfEvyInrWWK7XBHYlQ
 WO06b1iIfa8erhqCeXF1QDXGhmyFriiJnIsFV2cgJe00VUvm4w9S+byGpnMYtYBWdXms
 ZpxpmphWDqiEBrHP3NYPJgtF+JY6FVcHw/9kMwp/NthXzkxy71MZRFxrMcJU6GhrV9Mh
 o4+j3e9yC1PiKvxTEza7Unp3YIu3hU69pTnk0B+1WY4LxzTzNmyqWFgJALxyf7tYvFgF
 B9ZA==
X-Gm-Message-State: APjAAAUZoD8+/f7bz1W1T9VWZbr9cnXgV3haFHq475A2wDzd+W54ruxD
 lIICThjxvB3HDIyi0jujLbOGYy7P+gcN9VKKsgUR7JXheb0=
X-Google-Smtp-Source: APXvYqxe7hUnmDsq5p/oWDG/kylGDLx990QK8t46B9xfqZBiS3LcIrzqlW5niLDEoGGFA0yuFSBv+OZelpWVY11AYIg=
X-Received: by 2002:ab0:e19:: with SMTP id g25mr4687383uak.71.1564057696144;
 Thu, 25 Jul 2019 05:28:16 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 25 Jul 2019 08:28:05 -0400
Message-ID: <CALVKaGftm5nAJM_c4_0mPHhiuq_9GUH6u_DbgGK79uWjj1GXMA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] noc_block_threshold.v ram issue
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
From: Scott Mullin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Scott Mullin <smullin2@nd.edu>
Content-Type: multipart/mixed; boundary="===============1008854937205590905=="
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

--===============1008854937205590905==
Content-Type: multipart/alternative; boundary="0000000000006341d6058e808fb7"

--0000000000006341d6058e808fb7
Content-Type: text/plain; charset="UTF-8"

Hello All,

I am trying to use the threshold block on two streams of rf data by using a
common tkeep signal to the two axi_async_stream modules. I used the
noc_block_threshold.v code and added a generate statement to create two
axi_wrappers and two axi_async_stream modules. Plus added some simple code
to trigger the tkeep signal when either rf stream breaks the threshold.
However when I try to build the image I get a block ram error (shown
below).  I assume it has something to do with the fifo in the
axi_async_stream module, but I am not sure?

I am building this for an X310.

Any help would be appreciated.

Thank you
Scott.

[00:05:12] Current task: Synthesis +++ Current Phase: RTL Component
Statistics
[00:05:12] Current task: Synthesis +++ Current Phase: RTL Hierarchical
Component Statistics
[00:05:13] Current task: Synthesis +++ Current Phase: Part Resource Summary
ERROR: [Synth 8-5834] Design needs 17067 RAMB18 which is more than device
capacity of 1590
ERROR: [Common 17-69] Command failed: Vivado Synthesis failed
[00:06:46] Current task: Synthesis +++ Current Phase: Cross Boundary and
Area Optimization
[00:06:47] Current task: Synthesis +++ Current Phase: Finished
[00:06:47] Process terminated. Status: Failure

========================================================
Warnings:           814
Critical Warnings:  31
Errors:             2

Makefile.x300.inc:106: recipe for target 'bin' failed
make[1]: *** [bin] Error 1
make[1]: Leaving directory
'/home/irisheyes5/rfnoc_2/src/uhd-fpga/usrp3/top/x300'
Makefile:112: recipe for target 'X310_RFNOC_HG' failed
make: *** [X310_RFNOC_HG] Error 2

--0000000000006341d6058e808fb7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello All,</div><div><br></div><div>I am trying to us=
e the threshold block on two streams of rf data by using a common tkeep sig=
nal to the two axi_async_stream modules. I used the noc_block_threshold.v c=
ode and added a generate statement to create two axi_wrappers and two axi_a=
sync_stream modules. Plus added some simple code to trigger the tkeep signa=
l when either rf stream breaks the threshold.=C2=A0 However when I try to b=
uild the image I get a block ram error (shown below).=C2=A0 I assume it has=
 something to do with the fifo in the axi_async_stream module, but I am not=
 sure?<br></div><div><br></div><div>I am building this for an X310.=C2=A0 <=
br></div><div><br></div><div>Any help would be appreciated.=C2=A0 <br></div=
><div><br></div><div>Thank you</div><div>Scott.<br></div><div><br></div><di=
v>[00:05:12] Current task: Synthesis +++ Current Phase: RTL Component Stati=
stics<br>[00:05:12] Current task: Synthesis +++ Current Phase: RTL Hierarch=
ical Component Statistics<br>[00:05:13] Current task: Synthesis +++ Current=
 Phase: Part Resource Summary<br>ERROR: [Synth 8-5834] Design needs 17067 R=
AMB18 which is more than device capacity of 1590<br>ERROR: [Common 17-69] C=
ommand failed: Vivado Synthesis failed<br>[00:06:46] Current task: Synthesi=
s +++ Current Phase: Cross Boundary and Area Optimization<br>[00:06:47] Cur=
rent task: Synthesis +++ Current Phase: Finished<br>[00:06:47] Process term=
inated. Status: Failure<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>Warnings: =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 814<br>Critical Warnings: =C2=A031<br>Errors: =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2<br><br>Makefile.x300.inc:106: reci=
pe for target &#39;bin&#39; failed<br>make[1]: *** [bin] Error 1<br>make[1]=
: Leaving directory &#39;/home/irisheyes5/rfnoc_2/src/uhd-fpga/usrp3/top/x3=
00&#39;<br>Makefile:112: recipe for target &#39;X310_RFNOC_HG&#39; failed<b=
r>make: *** [X310_RFNOC_HG] Error 2<br></div><div><br></div></div>

--0000000000006341d6058e808fb7--


--===============1008854937205590905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1008854937205590905==--

