Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 636912C807F
	for <lists+usrp-users@lfdr.de>; Mon, 30 Nov 2020 10:03:16 +0100 (CET)
Received: from [::1] (port=58232 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kjf5U-0002FA-Hl; Mon, 30 Nov 2020 04:03:12 -0500
Received: from mout.gmx.net ([212.227.17.20]:42771)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1kjf5P-000296-Em
 for usrp-users@lists.ettus.com; Mon, 30 Nov 2020 04:03:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1606726946;
 bh=9Sp9I2BsUfeFsBLxfF7s2dxy7MSy73h8SLrDAR/NpxY=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=UFEgcOudXDZ18cCwqbVUUKYW3PvLIDj3Lg+zG5qmDo8+ul86clPZXmHaM0Hr1tOKo
 znc2+WQrRH6s9/hzznYefV3t0yFzV1LtpLxLGqnCXtXi0m61/NsvRUJBZ2Hi8ZohAi
 Nuw101yy37P39+8X4oRzVEX5ptufr50+C7qW83TI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [107.173.69.236] ([107.173.69.236]) by web-mail.gmx.net
 (3c-app-gmx-bap15.server.lan [172.19.172.85]) (via HTTP); Mon, 30 Nov 2020
 10:02:25 +0100
MIME-Version: 1.0
Message-ID: <trinity-a9e545d1-8706-4d8e-aeb5-1c2492fc8b6c-1606726945931@3c-app-gmx-bap15>
To: usrp-users@lists.ettus.com
Date: Mon, 30 Nov 2020 10:02:25 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:FGGGFGkOXVwwuKgyLx7iwfTLiaI/5dmlwy0NXUyHqOOztRe1DEZWQdKAx5qvflN/83SMs
 Ni55TM7TxcO1QgnfMCB70QoOMYu+X7YDPPFPV87/2i52aMo/aN718rTqTKIh3AIlNarIyHR3R4xF
 WkGQUwPBy0QIfiuaM4aOuENCdbukoQsNpei56OCsI3I8VOYtE3frl0LmAKj4E7jSRx4KOHL8M/7K
 AtfxjmibkIEujuI3kkVPDhaWW002I5qw3aYlblThzYd3u5o9MiQHwJyTnS1nBCQep6tUPKvWULJV
 0w=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vzjGz9il65s=:tK20ldy+RvEpeti6KA1U2j
 EmfYMT4RF74nnwa10mbWjtV2HUuHN3atspMgaO2UMiVnMGYPfHIewXU9QK5srZ7tcYy6GfUR2
 v+k8sa6fxzCO+L6ty4h1a9xzTXiMubAi+4p2bBGhF74ll59qVeZjuYOgNNcQQ2PLeT3a+gegh
 V0OMzXzO79wgnz2TMtDHLBvo1LxwzjfnxINPexmGAC3K2yhuKG0LoWM5d1YetTO56aBRx4az4
 1aIaIm5tWXxcEJNz248iMDfojGLIxOyx5Ou1/a2k1FADF6fmNBBVdlQrwx/zo8I9VIHrS42Wi
 /x1PuocE5Xw/n/CMbW9sLvM62/diRmcqEIv7Yv0bKkAdW6w7/bSFJXE7jYqxeQuVCguamZBXE
 X6TrrNj4FgYCmoP4L/ZMSDtmr9j/sa55zAqCcBolGBm5NGH/OaT4i/DOyh+qTEyOLonqvWzZn
 TXGpKpDfxWKmJ79WarTcmLaQb/Z62cgkS/kjndcPSN8EBv32plZ6mMdygoEECke6lKzZ4WLcm
 1i03ERfywWZ0v8YgkDtHKfKrB13ODRKGxoGjfnkwTL1ZL8/BaD/2Houwhp+XVmrCbUjEVNCzQ
 psdUq/nNcgItc=
Subject: [USRP-users] UBX160 TX "noise figure"?
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

Does anyone know what the *TX* noise figure (output SNR) of the UBX160 is?
Roughly?
For simplicity, can neglect phase noise and assume white noise floor.

In words, if I transmit a full-scale sinusoidal signal, what will be the noise floor around that signal?

Of course, this will depend on TX Gain setting.

For example, a -3dBFS signal at TX gain 25 gives -3+25-5.56 = 16.44dBm. What will roughly be the noise power (and hence SNR)?

Thanks,
Lukas


PS: Usually we are interested in receiver (not transmitter) noise but the TX SNR can be relevant for self-interference.


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
