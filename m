Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D310119E91
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2019 23:51:42 +0100 (CET)
Received: from [::1] (port=37444 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieoLz-00085t-GY; Tue, 10 Dec 2019 17:51:39 -0500
Received: from mail-ot1-f49.google.com ([209.85.210.49]:38194)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1ieoLw-000824-6A
 for usrp-users@lists.ettus.com; Tue, 10 Dec 2019 17:51:36 -0500
Received: by mail-ot1-f49.google.com with SMTP id h20so17094622otn.5
 for <usrp-users@lists.ettus.com>; Tue, 10 Dec 2019 14:51:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=99UNa86+uT+RJ/Q5Rl/i6QX/UCzUrSOb8/1h6tMyTIs=;
 b=Jw5L7jEkVbnLwGmW2fOgT6yQjOlV28aEZn+82xh6OyAdfzZpRcLP4AkODVHk0Gb+eZ
 3Ne7RhXCuE+TTmUXKKTpQ0kvvGcNalNLOTnUbX1qn09FNPPek6y14DuwPclA8hv01gtu
 8K6Kgr7epepe36T6rx6WUsTPo9Qe0sUsBT8KmBdfqWy6Rq+7XWisjArwALO095xCxIMv
 oO8eaZH6HcBivRK1GwvtKz9q3z/+yAHagSlxNO/U+HxROKQSKcpo7xY1cPvgTchz3L0A
 0Sc94JHwkrIzeDnvWSsgp37ZJmxAE73BtcCs8yAwmiInURK7HeyqLNad7INGecvORpW2
 Uutw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=99UNa86+uT+RJ/Q5Rl/i6QX/UCzUrSOb8/1h6tMyTIs=;
 b=Qrbd9XGlk+/G2JjR6WUlquz4QFUZ3RDUJqaS1YZ39tkB20BiZwPxUIzFDINPL+3I5L
 ZPHf86iu8miwqTjpKx8UPEA8qcpN1bfIo6hcB30+TN2z3LH7Uan8q0JZCIFHSOx1512c
 KHeup/WLwiNEZojK8tV6dJABNxI9/5bc/ZCfdVfi6brxqptnFshjoEJNQ/NBkkvZHLix
 dBtBcEvDIZpNLeqh3fldQ/9HBYiboD2qkpgu6y5N/innaoac26mQPJp/IjrCpWNPRiyY
 a5KKCkg6zfiyWYu30yIm5b1OR2BQTiJ+k/aY/9BT0uOZqN9PrNas5ic8W5LfEA+ZsIt+
 AeOQ==
X-Gm-Message-State: APjAAAUPCmkSvQK1L0niCiw3l7VoFL+KwTvBZKahVfOlcr/RLCg6wiGc
 wJ5FPciP1A1R/uro8uGUdRuvL928uxqxUueCVCPkbfxW
X-Google-Smtp-Source: APXvYqw9cmH98nCf9Z9+BeHrZLDu7CgSwOpi5bFE4QeTTZicDTtIwaX2xv7ravw3FK45XVUeeBcL3lxqF01F5zJwvN4=
X-Received: by 2002:a9d:32e:: with SMTP id 43mr114526otv.301.1576018254996;
 Tue, 10 Dec 2019 14:50:54 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 10 Dec 2019 17:50:44 -0500
Message-ID: <CAB__hTTmo8sGCkJOMey4wuAkNK=t4iJVnCGouHMw48bwoiUovg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Configure build for RFNoC block with custom IP
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1306073572056089963=="
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

--===============1306073572056089963==
Content-Type: multipart/alternative; boundary="0000000000003fdf9005996158c3"

--0000000000003fdf9005996158c3
Content-Type: text/plain; charset="UTF-8"

Hi,
I created my own FFT IP core and corresponding xci file using Vivado and
created a new RFNoC block to use it, noc_block_myfft.  I was able to
manually modify the makefile in the rfnoc/testbenches/noc_block_myfft_tb/
folder to add a new makefile which I created next to the xci file.  I did
this following an example from the stock noc block testbenches.  This works
for me.

However, now when I want to build an actual FPGA image, the IP core is not
found.  I can copy it to usrp3/top/e300/ip/ and then adjust the Ettus
makefiles accordingly, but this doesn't seem like the best approach.

Is there a preferred way to locate custom IP when used with OOT rfnoc
blocks and then configure makefiles such that they will be found in the
build?
Rob

--0000000000003fdf9005996158c3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I created my own FFT IP core and corresponding xci=
 file using Vivado and created a new RFNoC block to use it, noc_block_myfft=
.=C2=A0 I was able to manually modify the makefile in the rfnoc/testbenches=
/noc_block_myfft_tb/ folder to add a new makefile which I created next to t=
he xci file.=C2=A0 I did this following an example from the stock noc block=
 testbenches.=C2=A0 This works for me.</div><div><br></div><div>However, no=
w when I want to build an actual FPGA image, the IP core is not found.=C2=
=A0 I can copy it to usrp3/top/e300/ip/ and then adjust=C2=A0the Ettus make=
files accordingly, but this doesn&#39;t seem like the best approach.=C2=A0<=
/div><div><br></div><div>Is there a preferred way to locate custom IP when =
used with OOT rfnoc blocks and then configure makefiles such that they will=
 be found in the build?</div><div>Rob</div></div>

--0000000000003fdf9005996158c3--


--===============1306073572056089963==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1306073572056089963==--

