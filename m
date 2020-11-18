Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C115F2B8471
	for <lists+usrp-users@lfdr.de>; Wed, 18 Nov 2020 20:11:01 +0100 (CET)
Received: from [::1] (port=57942 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfSr1-0004FA-4m; Wed, 18 Nov 2020 14:10:55 -0500
Received: from mail-oi1-f180.google.com ([209.85.167.180]:40101)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kfSqx-00047I-Ej
 for usrp-users@lists.ettus.com; Wed, 18 Nov 2020 14:10:51 -0500
Received: by mail-oi1-f180.google.com with SMTP id m143so3398921oig.7
 for <usrp-users@lists.ettus.com>; Wed, 18 Nov 2020 11:10:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=wgBaj+em+xXX0UdtQyPWslog3eaAXnjmf8HCtfdByPk=;
 b=Yo3vBEG1DtO5QpBn10yyn37eQ2wVgLKwaHNkL5J2kB+Cs0KH+sVH+om+RxUklsljhR
 UvioJVQY7fx8tspetsuVzV1tkWHecfxusnrWl2ZLybE8But1UZrZVueFssvZq5OxcZ5K
 6StuAtIL7RsojWbgBkPRxn50KtXuXetHWkIhUM21Z7+yQ1xRhQC/eiW2e7iX6Ei1Pbf5
 6NrIsoRr2hp4czVGP7iNLNGB2jP/6G3xAd7TrKQJb1H/T77SyGV9EfWVMkgUottoDUyo
 ICcfimj2Ak1PcUytGNyRiCcwQ942C6UjwnpvD0F4VqQc73FuNWSZhkGUBQH0GZkg4s9Y
 ocgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=wgBaj+em+xXX0UdtQyPWslog3eaAXnjmf8HCtfdByPk=;
 b=t+xza/tZ9+zcEZT/nYtST6d298Bc96nfsbUV9VOCdKUi1aeO7FoLlE0QzhOp6WlaQw
 iDJD+hkUxEAg2VwlrP/2qfwrVHg8t/ox+qHUhJQcvjex5HgV3XLEDtSjV335f2hlxN6k
 1Zuj1lsbISRu/kGJrkg1JmsJhLAC/tU81oMQW5calbr1eI9zwdLLiHX28fJ4QCb+vEje
 D5oVSCzPurvCY4r3ekw56b7v1u/yS7GGUWSffi08h3snMnEsU4fpPpJpkIMQ7azgu7cT
 QKBTiuMp0Hl/TYYDHoPNOLRCbW+YPKieyrzpej74PkiSqM+995gIyE34rAQSG3wedcj+
 seIQ==
X-Gm-Message-State: AOAM532pNVbG33VxLqDvqCP7/nfOjcOmBPHrAFjAsmNlfG9neMv5QiVv
 8iUE4TRsHdrIoVo8KNVj4OtmlRrH3ux59RntjEMWzZ9NUgtYaw==
X-Google-Smtp-Source: ABdhPJyw23SgFRhtXBWDnpT8M8mNhnb82lLZGYnMB6L20xpM/p3INXkiCcj2A2Y48JARG2zIByldz7w2Ri+TbD/FwwY=
X-Received: by 2002:aca:4ccc:: with SMTP id z195mr410225oia.124.1605726609956; 
 Wed, 18 Nov 2020 11:10:09 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 18 Nov 2020 13:09:59 -0600
Message-ID: <CAB__hTTuHFM-TE=s2DvMzZ9MjUCG0b6qJntW3cdCACD1oBmCJQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] rfnoc_image_builder with Ettus blocks
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
Content-Type: multipart/mixed; boundary="===============2162828067794284709=="
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

--===============2162828067794284709==
Content-Type: multipart/alternative; boundary="00000000000031b99705b4665c78"

--00000000000031b99705b4665c78
Content-Type: text/plain; charset="UTF-8"

Hi,
I'm wondering what is the intended procedure for building an FPGA image
using non-default Ettus RFNoC blocks in RFNoC 4.0.  I am referring to using
Ettus-developed blocks other than Radio, DDC, DUC, and Replay which by
default are included (see Makefile.n3xx.inc which mentions that only these
default blocks are included).

I am trying to include the Ettus switchboard block in my image and I get an
error that this block cannot be found.  If I add a command line option "-I"
to add an include folder to the build, this still does not work (see error
below).  This command line option seems to expect an "fpga" subfolder which
does not exist for the switchboard block.

However, if I directly modify Makefile.n3xx.inc to add the switchboard
block in the same way as DDC, it works.  But, this does not seem to me to
be the intended way of doing things. Is there a better way?
Rob

************ HERE is the command I issue
$ rfnoc_image_builder -y n310_pulse_det_6_rfnoc_image_core.yml -I ./ -F
/data/rkossler/uhd/UHD-4.0/uhd/fpga/ -d n310  -t N310_XG -I
/data/rkossler/uhd/UHD-4.0/uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_switchboard/

************ HERE is the error message I get.
Makefile.n3xx.inc:53:
/data/rkossler/uhd/UHD-4.0/uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_switchboard/fpga/Makefile.srcs:
No such file or directory

--00000000000031b99705b4665c78
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>I&#39;m wondering what is the intended =
procedure for building an FPGA image using non-default Ettus RFNoC blocks i=
n RFNoC 4.0.=C2=A0 I am referring to using Ettus-developed blocks other tha=
n Radio, DDC, DUC, and Replay which by default are included (see Makefile.n=
3xx.inc which mentions that only these default blocks are included).=C2=A0=
=C2=A0</div><div><br></div><div>I am trying to include the Ettus switchboar=
d block in my image and I get an error that this block cannot be found.=C2=
=A0 If I add a command line option &quot;-I&quot; to add an include folder =
to the build, this still does not work (see error below).=C2=A0 This comman=
d line option seems to expect an &quot;fpga&quot; subfolder which does not =
exist for the switchboard block.</div><div><br></div><div>However, if I dir=
ectly modify Makefile.n3xx.inc to add the switchboard block in the same way=
 as DDC, it works.=C2=A0 But, this does not seem to me to be the intended w=
ay of doing things. Is there a better way?=C2=A0</div><div>Rob=C2=A0</div><=
div><br></div><div>************ HERE is the command I issue<br></div><div>$=
 rfnoc_image_builder -y n310_pulse_det_6_rfnoc_image_core.yml -I ./ -F /dat=
a/rkossler/uhd/UHD-4.0/uhd/fpga/ -d n310 =C2=A0-t N310_XG <span style=3D"ba=
ckground-color:rgb(255,255,0)">-I /data/rkossler/uhd/UHD-4.0/uhd/fpga/usrp3=
/lib/rfnoc/blocks/rfnoc_block_switchboard/</span><br></div><div><br></div><=
div>************ HERE is the error message I get.</div>Makefile.n3xx.inc:53=
: <span style=3D"background-color:rgb(255,153,0)">/data/rkossler/uhd/UHD-4.=
0/uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_switchboard/fpga/Makefile.src=
s</span>: No such file or directory<br></div>

--00000000000031b99705b4665c78--


--===============2162828067794284709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2162828067794284709==--

