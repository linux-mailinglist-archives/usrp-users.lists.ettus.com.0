Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 370C2A0AF0
	for <lists+usrp-users@lfdr.de>; Wed, 28 Aug 2019 21:57:57 +0200 (CEST)
Received: from [::1] (port=53648 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i344o-000126-Jw; Wed, 28 Aug 2019 15:57:54 -0400
Received: from mail-qk1-f174.google.com ([209.85.222.174]:37311)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <zenghuacheng@gmail.com>)
 id 1i344l-0000we-0s
 for usrp-users@lists.ettus.com; Wed, 28 Aug 2019 15:57:51 -0400
Received: by mail-qk1-f174.google.com with SMTP id s14so897263qkm.4
 for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2019 12:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=EYfmNqD76VcazRj7dqNL7l/PTTfeKLhkSeZ0QPJ4a9o=;
 b=AAj6gjedyz31DEvJqvNsb34ycfHkMUToVmLzNi6lb4t8O1DRZsco9dUFHl3RYAXDui
 2KYrRmLiUjQ20N8Um8AjZ7FaYvJIwqenDewhj1EaMGAOqaPBLrGdyo6qJeJPP6FpNpk1
 XKcXP6PReA9/A1H27HVvMqMSzac7GDUB2tKWJTBGSooNxP97U1Sy/KzQBc+q+XrWIeEd
 4U6R0S0xlV6JH5UWwURO5tjolqJKfcoP5NUQLRTn73ee3oE5u5q7fpfnnRJNHeyS+Hfh
 l9iEKbGXk+nFkneVkGxF0s0DHwqztzoaRY4d9NWd49z/HSpXsoki7x16MIumiBSl7uoD
 Y2nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=EYfmNqD76VcazRj7dqNL7l/PTTfeKLhkSeZ0QPJ4a9o=;
 b=rvBayblq3QMDJ5EUCsU6T8Uid7N6N5nwb3AmQaLiVafDUsqTM4o5WJNv744SWoYlXS
 M3jXXaXF6FQmOXAZkTZXjHS3EXtuiV7WMIQIwUzSOMz6DR2KqsOpSBNFiSBmlrIGazp6
 LqMB4xfGFByMW8jkYzxikDPhnKSSEWQCOQjVKwC/ZqqBQFCPOPL/2MKhDKmu6dFK1EDm
 PybWh82LWcundKD6Wr5dPXt951gECs5q1KWPzzKlutIpJk7VIcmCHQAeHMrJf3f1jNgt
 1DmMXRm75xZpy7odgYSjBplo2/916N8evxxwcN7EvkFORBZlfSHoMnW2CwDNNM76LjSH
 oX1A==
X-Gm-Message-State: APjAAAXAR/GgwL0NsMUCLR2IKngfwICMVtnS7uPmQM6qfguKiSYahEuT
 OQbUGKxE6HkLrxSrQxV1lQBFWhEKAW7JHu3tW3+1Q6cM
X-Google-Smtp-Source: APXvYqwyJxOECSZ2zul4SAPY+2TVVofIKL0ICZADbQd70dt11uzB5TP92reGy92NWknx/3HOmgrTU3Uvs2zGNPo1IAE=
X-Received: by 2002:a37:aa04:: with SMTP id t4mr5895590qke.359.1567022230181; 
 Wed, 28 Aug 2019 12:57:10 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 28 Aug 2019 15:56:59 -0400
Message-ID: <CAOR0_ui_9E3Mub_j4grbCAs+7bX-iD+gvbXtgOhyT3Pc8nz4uw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] RFNoC OFDM FPGA Build error on X310
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
From: Huacheng Zeng via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Huacheng Zeng <zenghuacheng@gmail.com>
Content-Type: multipart/mixed; boundary="===============4525358972800888806=="
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

--===============4525358972800888806==
Content-Type: multipart/alternative; boundary="000000000000629bd7059132cb0d"

--000000000000629bd7059132cb0d
Content-Type: text/plain; charset="UTF-8"

Hello,

I have been trying to build FPGA image for the RFNoC OFDM blocks -
schmidl_cox, eq and ofdm_constellation demapper.

I have tried different combination of build with just schimdl_cox or eq or
ofdm_constellation_demapper:

1) For eq build, I always got the following error:
ERROR: [Opt 31-2] SRLC32E
x300_core/inst_eq/inst_axi_wrapper/header_fifo/fifo_short/gen_srlc32e[64].srlc32e
is missing a connection on D pin.

2) For schmidl_cox or ofdm_constellation_demapper, I got the following
problem:
ERROR: [Builder 0-0] The design did not satisfy timing constraints.
(Implementation outputs were still generated)

Can anyone help with these issues?

Thanks,
Huacheng

--000000000000629bd7059132cb0d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>I have been trying to build FPGA image for t=
he RFNoC OFDM blocks - schmidl_cox, eq and ofdm_constellation demapper.<br>=
<br>I have tried different combination of build with just schimdl_cox or eq=
 or ofdm_constellation_demapper:<br><br>1) For eq build, I always got the f=
ollowing error: <br>ERROR: [Opt 31-2] SRLC32E x300_core/inst_eq/inst_axi_wr=
apper/header_fifo/fifo_short/gen_srlc32e[64].srlc32e is missing a connectio=
n on D pin.<br><br>2) For schmidl_cox or ofdm_constellation_demapper, I got=
 the following problem:<br>ERROR: [Builder 0-0] The design did not satisfy =
timing constraints. (Implementation outputs were still generated)<br><br>Ca=
n anyone help with these issues?<br><br>Thanks,<br>Huacheng=C2=A0<br><div><=
br></div></div>

--000000000000629bd7059132cb0d--


--===============4525358972800888806==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4525358972800888806==--

