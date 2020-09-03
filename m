Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B1D25BB88
	for <lists+usrp-users@lfdr.de>; Thu,  3 Sep 2020 09:23:17 +0200 (CEST)
Received: from [::1] (port=51682 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kDjaP-0001re-2N; Thu, 03 Sep 2020 03:23:09 -0400
Received: from mail-lf1-f52.google.com ([209.85.167.52]:44717)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <horvlint@gmail.com>) id 1kDjaK-0001mb-EM
 for usrp-users@lists.ettus.com; Thu, 03 Sep 2020 03:23:04 -0400
Received: by mail-lf1-f52.google.com with SMTP id d15so388776lfq.11
 for <usrp-users@lists.ettus.com>; Thu, 03 Sep 2020 00:22:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=BYjDLXW0LDVeRGsfZZ6iLG3J97xiIwqYelJ9F70WLrI=;
 b=CIUM94sNiuWmSuJ0dPfLj4S1WnG/f6v0ixfVmFJ3n6mc3260X76jMw6XZI9PIRxR7r
 TLcwO/ZsWVHQlz7vZmg0pBz9PL0hemrgfjTLNwU4NNWlpMh82IAKMQCAOhkcdlVHqWOi
 RQq139948IENDFGbUVbv0oCcgL3VlZ/XB3lThtxb21XoEfPOB618V3VDeTPs6It/fc7u
 Lr8e87h/9JDT0wQSNqy9BL40VAT0ii/gwXHGa4+/cQpU6yqDZ09CCL7uZz4FA/sh8d7y
 RXUIYCxON5Hg5sZxPj3MdiYJiraPl3YDSNqkCPtsMFOoN+E+jzoFOW8DXBML+P/SfN9+
 IT1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=BYjDLXW0LDVeRGsfZZ6iLG3J97xiIwqYelJ9F70WLrI=;
 b=VRIhLF1RfD3//RPJjmMRF5v70YyI6uOt0o5IRNHMhQN7WvqMf1Gf8m0vhG8wR4K+Cf
 vUlFu1psdlwTAnalvU1iNrt7rww873u8wxzoD9+93m4lea6m4BIuew/1oYiGmZUJz/5c
 Wb4ndWdEtEkuWIsXKQSTKjPCM2uM+ld6RSBxM5YlYCIRTKHXoGegzd8hy9vej/MUEXQF
 td8i2IxNNAhISG1Xf74Va0Ns4ShGGBMSfPlrc3WLr1g6em8HbLSYZcH9zuqosz3yYXPi
 m2YvMMoCOOYQNX8Z/KSr+2QErzunpwPhbmGtewOUMVJ/xKaN51UkpKHsCkMi3G9VQxiA
 Cd3Q==
X-Gm-Message-State: AOAM531QM4xvux2GhzIIGRfaG4vx8B4GRx/kjbnu+2E0Thdhc8O+A7o2
 BByQ1E9vK9pCK6+264d65Cvp7zL7/RP0cLFT34yzGMGqoN3jwg==
X-Google-Smtp-Source: ABdhPJwfTSp4Mnq7XHV9w2r+KZmObhM43K5smGMZMla3UrD/MNlMhM09FCroW8Xm0ZDaIqNh66c4Vk3CcD8VqNGlbSw=
X-Received: by 2002:ac2:5586:: with SMTP id v6mr528183lfg.71.1599117742689;
 Thu, 03 Sep 2020 00:22:22 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 3 Sep 2020 09:22:11 +0200
Message-ID: <CAL-X26Rgr9H=-bNKr2_O3OAaWc2=HZ1Ro7RQ_81UDkaFNWYodg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] N310 Late command/packet error
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
From: =?utf-8?q?B=C3=A1lint_Horv=C3=A1th_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?QsOhbGludCBIb3J2w6F0aA==?= <horvlint@gmail.com>
Content-Type: multipart/mixed; boundary="===============8720220051144177237=="
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

--===============8720220051144177237==
Content-Type: multipart/alternative; boundary="00000000000001d2d505ae639dc4"

--00000000000001d2d505ae639dc4
Content-Type: text/plain; charset="UTF-8"

Hello,

I have a USRP N310 and in my application I want to do a 4 channel loopback.
Transmit sources are files and the received samples are processed. However,
I ran into stability issues receiving a lot of Late packet errors (LLLLL).
To trace the problem I executed the basic UHD example txrx_loopback_to_file
on 4 channels with 1Msamp/sec sample rate. There every time I got
ERROR_CODE_LATE_COMMAND. When I executed it for 3 channels I got it
working, though on some occasions the same error would occur. With netstat
I see that in case I receive the L-s, the UDP packet error is increasing.

After reading through the manual and threads I tried several things but
could not resolve the issue.
- I set the net.core.rmem_max and wmem_max as suggested
- I set the MTU on both host and N310 to 8000 (also tried 1500)
- I put the CPU to performance mode with cpupower

My system config is:
- Ubuntu 20.04, UHD version 3.15, (gnuradio installed with apt)
- quad core intel n4200, 8GB RAM
- N310 is loaded with default HG firmware (sfp0 is 1GBit)

Do you have any tips on how to resolve this?

Thanks!

Balint

--00000000000001d2d505ae639dc4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I ha=
ve a USRP N310 and in my application I want to do a 4 channel loopback. Tra=
nsmit sources are files and the received samples are processed. However, I =
ran into stability issues receiving a lot of Late packet errors (LLLLL). To=
 trace the problem I executed the basic UHD example txrx_loopback_to_file o=
n 4 channels with 1Msamp/sec sample rate. There every time I got ERROR_CODE=
_LATE_COMMAND. When I executed it for 3 channels I got it working, though o=
n some occasions the same error would occur. With netstat I see that in cas=
e I receive the L-s, the UDP packet error is increasing.</div><div><br></di=
v><div>After reading through the manual and threads I tried several things =
but could not resolve the issue.</div><div>- I set the net.core.rmem_max an=
d wmem_max as suggested</div><div>- I set the MTU on both host and N310 to =
8000 (also tried 1500)</div><div>- I put the CPU to performance mode with c=
pupower</div><div><br></div><div>My system config is:</div><div>- Ubuntu 20=
.04, UHD version 3.15, (gnuradio installed with apt)</div><div>- quad core =
intel n4200, 8GB RAM</div><div>- N310 is loaded with default HG firmware (s=
fp0 is 1GBit)</div><div><br></div><div>Do you have any tips on how to resol=
ve this?</div><div><br></div><div>Thanks!</div><div><br></div><div>Balint</=
div></div></div>

--00000000000001d2d505ae639dc4--


--===============8720220051144177237==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8720220051144177237==--

