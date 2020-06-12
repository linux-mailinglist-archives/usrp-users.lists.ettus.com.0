Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2451B1F7C84
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2020 19:33:57 +0200 (CEST)
Received: from [::1] (port=58830 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjnYv-0005op-Sy; Fri, 12 Jun 2020 13:33:53 -0400
Received: from mail-ed1-f51.google.com ([209.85.208.51]:34569)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jeremy.vezinet@gmail.com>)
 id 1jjnYs-0005jw-88
 for usrp-users@lists.ettus.com; Fri, 12 Jun 2020 13:33:50 -0400
Received: by mail-ed1-f51.google.com with SMTP id w7so7007454edt.1
 for <usrp-users@lists.ettus.com>; Fri, 12 Jun 2020 10:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=xQj3g/vpOLxqGtvvkUehCTI1fwjhqFzRZRu+w/X1PfU=;
 b=N8fFxKGUgnNk3U0519yEyAhZ7wkydVX3I9yxAwKJ+7ba90LRkOpFjIAEJyKUNjNFhV
 31WMTZi1jlhwNOgFuTS5XCftSDxlIg6kNgt1eMXXc7HWz4A5KABkGzObz3AeHYCtrriV
 8ZxQ6x4XgubOSjwfZMmBkdEW+qKxFq4qL2oyFFBkU0obDt1c/XWMzfNdOFQGQQaW3Pt/
 2FTAQ/AofAu1q1Mx5FpvJdlP9UhjRjdLpNjwcA2D6plx2beXfjiir1YE4GNWhmwzYEBA
 IJq68iM0pDG6bpAwjVD0b4kyTNRikvwG+Y4c1JlMLY+rldRy5rqTcg9K4J4HixfRSHyI
 Islw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=xQj3g/vpOLxqGtvvkUehCTI1fwjhqFzRZRu+w/X1PfU=;
 b=A+Msoq8B6eeanSNdQTQHlamjjCEKGsXWNruhDItIRa2sxf6T+naGmr6nUW0Ro26D/0
 xpvwMDQOtijCqZhkwe2keJqqMsEuytGPuJAGKzS2olmWuPB0tCDA9/kKRjpHWL1u07sP
 FJuB//gGDPK55YaJHDRBhjB2TrbD1Nitc0LJMrpnJzTxws2+2XzXe0Ky1ZR/qdTTNUbp
 Uk7woiaK3ksaLuOnGzcvrufQZGUHvfUjA0D9tTrHzGYtI4XN6+28Wu5679vGjcKwX2gE
 V8WbVI/0nEZPxLhyP7BNZ3eWFSvfurYny8tEEa6jR7xAvurszcrNUR9z6JYGvtBBex1q
 ketQ==
X-Gm-Message-State: AOAM530rmKxTH+3ZuL+9jyTDmWimV+pA1d6tjooGR3iNFhhliXbbJ+tA
 qnn51H4yL0Je8vIzFtHavYeGNT9yQYsLewkyCxCTViIh
X-Google-Smtp-Source: ABdhPJxSpCoKc+J0gfvdSUSpPQIFHsF8DO1hxLHgiVpuU6f7TR1bwgynmSFMNxujORf10zq81eSTDEHzpHBfnBU9pYw=
X-Received: by 2002:a05:6402:a42:: with SMTP id
 bt2mr12446371edb.42.1591983188869; 
 Fri, 12 Jun 2020 10:33:08 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 12 Jun 2020 19:32:57 +0200
Message-ID: <CANka2Pwqgc=sk6mutxNwbO2fzUQe4k4W_A5_DFzaWWY5prxYug@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] DPDK support not built in with X310
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
From: =?utf-8?q?J=C3=A9r=C3=A9my_Vezinet_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?SsOpcsOpbXkgVmV6aW5ldA==?= <jeremy.vezinet@gmail.com>
Content-Type: multipart/mixed; boundary="===============7797382111647212709=="
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

--===============7797382111647212709==
Content-Type: multipart/alternative; boundary="00000000000076063b05a7e67896"

--00000000000076063b05a7e67896
Content-Type: text/plain; charset="UTF-8"

Hi all,

I recently bought a X310 usrp and a 82599ES 10-Gigabit SFI/SFP+ Network
Interface Card (the one recommended on the Ettus Website).

I first set my connections and a benchmark test shows a lot of dropped
samples and some overflows.
So i decided to try using dpdk to improve my setup.
I have UHD 3.14.1.1 and I installed dpdk with my apt package manager (dpdk
version 17.11.9).
I followed this guide https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD
and when I run the benchmark with use_dpdk argument, I got the following:
[WARNING] [DPDK] Detected use_dpdk argument, but DPDK support not built in.

I really don't understand what's wrong. I tried so many things. I tried
with dpdk 18 and went back to 17 because it didn't solve anything.

Could anyone help me with that please ?

Jeremy

--00000000000076063b05a7e67896
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><p><font size="-1">Hi all,</font></p>
<p><font size="-1">I recently bought a X310 usrp and a 82599ES 
10-Gigabit SFI/SFP+ Network Interface Card (the one recommended on the 
Ettus Website).<br>
    <br>
I first set my connections and a benchmark test shows a lot of dropped samples and some overflows.<br>
So i decided to try using dpdk to improve my setup.<br>
I have UHD 3.14.1.1 and I installed dpdk with my apt package manager (dpdk version 17.11.9).<br>
I followed this guide </font><font size="-1"><a href="https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD">https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD</a> and when I run the benchmark with use_dpdk argument, I got the following:<br>
  </font><code>[WARNING] [DPDK] Detected use_dpdk argument, but DPDK support not built in.</code><font size="-1"><br>
  </font></p>
<p><font size="-1">I really don&#39;t understand what&#39;s wrong. I tried so many things. I tried with dpdk 18 and went back to 17 because it didn&#39;t solve anything.<br>
    <br>
Could anyone help me with that please ?<br><br>Jeremy</font></p></div>

--00000000000076063b05a7e67896--


--===============7797382111647212709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7797382111647212709==--

