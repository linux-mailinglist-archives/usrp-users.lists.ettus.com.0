Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 609E621D31D
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jul 2020 11:46:41 +0200 (CEST)
Received: from [::1] (port=35436 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1juv2i-00048E-2H; Mon, 13 Jul 2020 05:46:36 -0400
Received: from mail-ot1-f44.google.com ([209.85.210.44]:34608)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <tido89@gmail.com>) id 1juv2e-0003z3-Lb
 for usrp-users@lists.ettus.com; Mon, 13 Jul 2020 05:46:32 -0400
Received: by mail-ot1-f44.google.com with SMTP id e90so9083620ote.1
 for <usrp-users@lists.ettus.com>; Mon, 13 Jul 2020 02:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=NuyfhuTo8RUceARrCFhgvbWQQpMWpQWF5g1W9xkh73s=;
 b=JOJ1UiCcSBOrKxnQek+4JxKt0NU8KmwR7VnytznCkP1o4MJJ3Kmx8JzdgwG5pz5HOc
 DrbRQGsgplxvD2iaMnFgI0lDJSXuv/JJIkXHUXVXLsaI72tED3zjuGPu02exA8T2LErX
 IP1eeG5eJ8FcbPeaI600XnADLaWbrkvPtDz42WkXE5QOSukLuESyZLXxqD3y6qhlRtKF
 vZgetfmdW4HmgZ/x2fHI21uhC0nFOTxeOSRpzvNih2HBFtoLZQDRhT3iWSPol5yI/kT8
 JPYk1S42oc5y/xX1ui7Uu5jFBC7OcxGCAvC9hSrzACDSD/y9IuQlpL5WnXwGpUH4I2/a
 ejgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=NuyfhuTo8RUceARrCFhgvbWQQpMWpQWF5g1W9xkh73s=;
 b=M4oFDNNTpoHi/UmypOxBb436eKe/Z08rM6ipz9GxQy8OGXRGUTDQ7U4kuBzlrZBcPT
 2XoPaRLYYHRLkmb6v+gwON2mLm0s3DYC5RMGdb7nwTMsUxzhD4aaowZQh3Nb7Zg+5CP3
 m0G9bjiXS5n0DUeE32MD1L0HXTPQ0cqCU1/oCdzkuiHTDN+9SnF/EfJVbwtvnfu7eYtR
 0yea7iQmeh1iJ7pogBxKyVCvfAfXfHDRPv9L5F5cuRoo86rq5Qe8fjUPEFdpCD7l6Djw
 /FD94R8hRyyBkSXJqJvWholMuL+QzBlnQHiQ/9ZNcnZIGthsG4CUUqxyFeBXYkiMey4/
 V2Yw==
X-Gm-Message-State: AOAM5330e2bdboCFvczSSdxacyyChTC8z2/VuQGnMIPSo90v2bgv6OIz
 OQghRT2acBJmzY8op8Cy9trF179FnhoEMPqZh+cfktM9
X-Google-Smtp-Source: ABdhPJyM6U4qpgJzVJkiMGyRmywjvbJNtY7Qc+hVA6xd/ZSBHtglXTCU51QV7QfnucV7N+FQtsLJWPEq+41+gqcpNJ0=
X-Received: by 2002:a9d:654b:: with SMTP id q11mr41668754otl.248.1594633551620; 
 Mon, 13 Jul 2020 02:45:51 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 13 Jul 2020 11:45:40 +0200
Message-ID: <CABL5g1BXseFxzCB-U2nwtTrF0F-HKkNT8zGOKm12=gLfpo_VJQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Help needed reprogramming B200 mini-i
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
From: Herman Tibor via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Herman Tibor <tibor.herman89@gmail.com>
Content-Type: multipart/mixed; boundary="===============6082907964660702654=="
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

--===============6082907964660702654==
Content-Type: multipart/alternative; boundary="000000000000642ea505aa4f8eac"

--000000000000642ea505aa4f8eac
Content-Type: text/plain; charset="UTF-8"

Hi Everyone,

I would like to use the B200 mini-i to receive and transmit radio signals
with as little delay as possible. I tried this using GNU Radio, but it
turns out the latency caused by the communication buses is too long, so I'd
like to program the FPGA inside the hardware to achieve the best
performance.  I found the firmware source on github, I managed to install
ISE 14.7 Webpack on Linux Mint 19 and the program(ISE) is running fine.
The problem from here on is that I have very little experience with FPGA
programming and no experience with the ISE. Can you guys point me to some
tutorial maybe or has anyone modified the firmware on the FPGA? I would
appreciate the help!

Thanks,
Tibor

--000000000000642ea505aa4f8eac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Everyone,<div><br></div><div>I would like to use the B2=
00 mini-i to receive and transmit radio signals with as little delay as pos=
sible. I tried this using GNU Radio, but it turns out the latency caused by=
 the communication buses is too long, so I&#39;d like to program the FPGA i=
nside the hardware to achieve the best performance.=C2=A0 I found=C2=A0the =
firmware source on github, I managed to install ISE 14.7 Webpack on Linux M=
int 19 and the program(ISE) is running fine.=C2=A0</div><div>The problem fr=
om here on is that I have very little experience with FPGA programming and =
no experience with the ISE. Can you guys point me to some tutorial maybe or=
 has anyone modified the firmware on the FPGA? I would appreciate the help!=
</div><div><br></div><div>Thanks,</div><div>Tibor</div><div><br></div></div=
>

--000000000000642ea505aa4f8eac--


--===============6082907964660702654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6082907964660702654==--

