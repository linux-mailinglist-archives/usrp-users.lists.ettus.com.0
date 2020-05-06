Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A4D1C65D8
	for <lists+usrp-users@lfdr.de>; Wed,  6 May 2020 04:19:09 +0200 (CEST)
Received: from [::1] (port=42670 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jW9eK-0008CM-4v; Tue, 05 May 2020 22:19:04 -0400
Received: from mout.gmx.net ([212.227.17.21]:52679)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jW9eG-00085d-HF
 for usrp-users@lists.ettus.com; Tue, 05 May 2020 22:19:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1588731499;
 bh=sTJNLUTbtk6ApUO2nxvs8HkDwgjXrzBEVWj6CtTuu3M=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=j1gBzJO4P+F5PpE2jKnJfpCRCFJlvRntnvNmUag6cRuVEzbvFrK1XRnf8s5NoJJvi
 SHiLUehPtkNURE7qvtzSyP25Yzu2L9+7pebjEuG7qu+XZnjZBIdC3HsWqpASHhmQFR
 KMFxDUb298RoJfTx70AWpTzbrE2CCdGW7LVEBYL0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [67.216.49.189] ([67.216.49.189]) by web-mail.gmx.net
 (3c-app-gmx-bap08.server.lan [172.19.172.78]) (via HTTP); Wed, 6 May 2020
 04:18:19 +0200
MIME-Version: 1.0
Message-ID: <trinity-a20a75c1-d648-476d-b9a3-d88b8484965c-1588731499457@3c-app-gmx-bap08>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Wed, 6 May 2020 04:18:19 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:nMTOOefAegKFkD6CemtZFdQlXh4gcXrVctXZ4E3/Wr8rFa35EuoDDWKobAihwpgAcsYTK
 vCiJilhL8frOW6pDhuY4fslAky8zCW9P3H45bQpOoV94vElKjUSzXRbd9AZw1Q1i/SXZODU0+aNr
 RqYXOeCCVP80RzMIJYnFqeLKmYk0b48i+3rEb+DjMK/Fpw2Vktd/gOJpRKBIhQAtHyw2wO7x/qXg
 IICj9vuMEKck2PSVSq8oVK8/zJ3BH4DRZDCEQrjoHr0eveCtgFhYwxCjuMVWPl+2sud+j2yKwW1c
 yA=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8DjaN8jl6n4=:4vAb2Ql/4zeniTlIn5S3Oq
 b8XPKd/0NyXkWlW8MnywNyXmqqFZTJygOoqblx7QW9h1kzL/4paYrPBwheAyj8SkuHYN+Kmym
 BOS5v3GC3tJqs/B7ChZrDX+HRiKQ1qKBA0lo/RQ++Cgc/9NoZHYUDfzUJcmQMR/4g4ic038+/
 mFyZrSLMXJcR8NZ/pvuLK6qsLMdila5/RoqayGwuooP7wR66mRaMJBIXVREthYagAp75/WHn8
 VxdV72SMLV0ucq55w2blMs6W/MCBbQMADE/niH8hJ6qKS2Omy4egPKU9psG/l38MrtbtMlwGw
 MQEzjrQdm7vhm7McnRdYap9jVIvokXfygEmxC7exffGUYPiHhW7oH9jVV+3N9OEupIBf+D+7T
 WEvkBlYmbr5sUrq1ECP7DTy1gkG7wM3ysQFK8d8qZq9wlIygzeXIcGe0g5C3q1fVwgxzq+yXx
 wg7GEMLixAwz7qIMfde4V0Th1hezHeeig15nVHn2taCCnon4DywlQcciDY9RHB2kV52w6njcR
 I2hyTqbMplBqvy4X6p7Urx+FfO7oKd4U068lmO0P8x5nPeDyhlgZ8fzZ9lt0ItUxd1gZ5Sckt
 Ndg4D3Slqvexu37GVzCe7Vl/z9zmczzmCLa6ZnhiY7/qu5yRLHZpusB6JJNBSVKxpZ02KCwRE
 4BQHvm0w2E1pA2cqbb6BdosZBQvFuGDcBRWGWNbGUmoqxS2KcORHvpt4iqF/Y+XZJAeU=
Subject: [USRP-users] Unpredictable delays in loopback configuration
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

I am using USRP X310+UBX+gnuradio for an application where my transmitted signal (TX) is reflected and received (RX).
For my tests I use the simple loopback config (TX -> 30dB Attn -> RX), transmit a pulse and plot both on the same plot (triggered in the TX pulse).

The response comes around a whopping 38ms later!
I added a delay block before plotting the TX signal but the delay is still random each time I restart the flowgraph (residual time delays up to 700us).

I wonder if I can achieve sample-accurate alignment that is consistent across flowgraph runs (maybe even USRP power cycles).

RX+TX Streaming starts at the same time to my understanding because both my USRP Source+Sink have two ports and I use the setting "Sync: Unknown PPS" as discussed some time on this list.


Thanks,
Lukas



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
