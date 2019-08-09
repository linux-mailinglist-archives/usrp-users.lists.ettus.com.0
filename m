Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1390188358
	for <lists+usrp-users@lfdr.de>; Fri,  9 Aug 2019 21:37:17 +0200 (CEST)
Received: from [::1] (port=51080 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hwAhK-0007AY-Ky; Fri, 09 Aug 2019 15:37:10 -0400
Received: from sonic316-23.consmr.mail.ne1.yahoo.com ([66.163.187.149]:38329)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1hwAhG-00074h-Bg
 for usrp-users@lists.ettus.com; Fri, 09 Aug 2019 15:37:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1565379385; bh=V7RvP3Lle5S6L+L64sUPLELR6ekKJXOdFpG2TjHxu7o=;
 h=Subject:From:To:Date:From:Subject;
 b=iPJJ5utxsUXfhWrjuJqMP5C+BrQBaB/uu+Wdkm/KA3scGec4iEb6roDeX6FBssov/6bQ0kI0diKy1CGTrlQ4L1q2/u4OFylYlguR2fxd5MYgLJddX8L2xMW/MjFr31Ddi6lMkhpzRM7jJ6YkrTHHzXpFDwR+LFG007vP0LuwBSCq4DTXJyarXO1bqRpxIbcTsTfLQlweZFTEyyv64mEsR47JOrnRDNP9OV8VYPuYA9RPVvzZqH2USVtfWYrUlc2RRKyXN1hgLenlow5LV4bid3XXuFt5jL3C6gjY5p4qDyfIzxYNFGzz8+UvYlb6aTEeE7VkMg9fcENtycoxcGVLhg==
X-YMail-OSG: zODme04VM1luRnyWMOckucKeu0._ks2p1UKRf3l6qAsHJWZ7T4eiSG_hfvsc7Nn
 1Oj210qy8PdZ6jlTg.lZbUXnjx9dgDuHPMo9cwp_30MffydJSj3L43xYqiDw7xcAzrtMvzRIMvMr
 nBY1Ih88RqvgNG7dUK25.hhd1ECBh8LzvO8tBtI1f5o5rKVM_iPomFE83zguZk4sttUNKQfw41.E
 RjdKqcvwS3.CWG6Chuddas00DmA3Z7k0h6G8dWpY1e82vHEyGLjdXgiJx7ivZyt2OQeDUzGq8SKY
 9AQA_uj7s5uWXFtcuDBNlLKKlwMrLEi.EMlKOWVLhcnshLoBSGhS5LnWb4Cz6buEYtA8jWJuxb2N
 HZDpPYFEOums73j1n4_IosBmOariZ.2K9AcSbcyyzl7UpD8FrQccmZl6vnp.3qDbSU9sqS91Whz6
 6AkYr4HAHgK6I0uZNFfndSnUT61v6deZsV8RfZaSjs_5msG10xb7MBag5bDnPF7.TAxrgitKYuzQ
 yimcXR3iW02PLbqAiVLyG_v2uMSQrbiDykuLcuOD9u4E7JmyR_.09Kzm_LOAzEaJgvAMTBrZTe38
 uDxlO.vg0CQHWdbiDNB07azqz5ZtnvBZKKjcWGI3apA0e3ed3Tb7FZgly2MojshNF46NNJtHrS0V
 JijMwBJH1VTNd6zUNhNbmaNfCvcWMwwb1kbjWYbvH7HQkCRtGvtacbmQYlsUuTA1uQYOcaonNhxL
 5.EsDEzYD45DWT7G9wITVJYr98vsQ33.wpV9p7JXlijmEo1r4vC70aB7rIGjESlSSBG7hog8Wtsp
 vwvXhU9TNX1ZeHkqGLPf28sj4WKp.Hsx4etq7szRSfvwFKMFuMAi424DfMttd4wVrtSAcmq17mTB
 HFTyScAmvXqRgv7re5ONhQV6dsavF2egDzpja__lg.7ENSsgPR12Um2lc23npOwEc68GNwbF.LBS
 _9yhO0WANYFtOBf4by52iMdYg3mJISk15OZuo.Jcwxpbplp.hEL4OnWJn0rJZK1fNJkPtTEzwPPi
 0SaspG5yOhXEUXy8Ke.IjBZ6VGLCWA1uZrN2vG10N7fGDLnKyFFdn_o6lozUKG4dGTJ96vyU99oE
 _4Yn46aaMy7DfAIYXVe40iIyJcJ2mJmP4uwlU5N6uWKgf43TXH0Y3V4z6MWdItazi83LmxoDWpfe
 y3U88xzNtKF_yWUosEF6.irs9ftIJTniznRejlIFX9a.t4d8jMnMFi9R8a1Xv8z1UxTtNncFIqlT
 wxsiN55AAk60-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic316.consmr.mail.ne1.yahoo.com with HTTP; Fri, 9 Aug 2019 19:36:25 +0000
Received: by smtp425.mail.ne1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID bfa1073b6cdfb6a5349f86ab5eaaa057; 
 Fri, 09 Aug 2019 19:36:22 +0000 (UTC)
Message-ID: <0d611cff56dd21f83a488e6e227d3844b7e5eaeb.camel@sbcglobal.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Fri, 09 Aug 2019 19:36:20 +0000
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: [USRP-users] latest E310 tutorial
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
From: "d.des via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "d.des" <d.des@sbcglobal.net>
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

The latest version of AN-315  
https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
is a very nice update. It was great to be able to build a more-up-to-
date version of UHD error-free. There still seem to be issues getting
the example or my own blocks to run in Gnuradio, however.

Following the instructions when I run rfnoc_fosphor_network_usrp.py
I get 
RuntimeError: RuntimeError: On node 0/FIFO_0, input port 0 is already
connected.

I suspect that there may be a difference in the version of gr-ettus
that the the author used and the one I get from git following the
instructions. One hint is that the file size for
rfnoc_fosphor_network_usrp.py in the document is slightly different
than my copy generated following the instructions. Alternatively, maybe
Nate left out a few steps in modifying the python generated by GRC
before running it. I'm also having trouble running my own blocks and
examples such as addsub and gain with fresh-build FPGA images. These
images run fine in rfnoc_rx_to_file, but they segfault when gnuradio
attempts to connect the output of my blocks to anything else. I'm
hoping that it's all related and the fosphor is a good example case to
help a user such as myself get running.

I Googled the port connection error and found some threads that
indicated that it was a known issue back in 2017. Since Nate had it
working so rececently when he updated the Application Note I hope that
he can share the last few pieces of the puzzle.


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
