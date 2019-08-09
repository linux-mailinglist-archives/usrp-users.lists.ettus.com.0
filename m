Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E86188EA4
	for <lists+usrp-users@lfdr.de>; Sun, 11 Aug 2019 00:06:24 +0200 (CEST)
Received: from [::1] (port=58146 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hwZVE-0004HA-Or; Sat, 10 Aug 2019 18:06:20 -0400
Received: from sonic310-21.consmr.mail.gq1.yahoo.com ([98.137.69.147]:37058)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <royceconnerley@yahoo.com>)
 id 1hwAtW-00088V-Gz
 for usrp-users@lists.ettus.com; Fri, 09 Aug 2019 15:49:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1565380145; bh=HhSRu1QDKvnRrVjBGZVvGIT4/JIX1u6LFTyCppofoqo=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From:Subject;
 b=m4JVxIxyA72KFb8a23zqPmSIFufooQWtx/NNAFowvZrTfdhmkXaaA1KAKrqaPxrV4WOnL9q7VPC/23OMfSx6ePAgoN3aRwEoBl54NVdAIdgbABRg1pyT8SmqqzCkfpkG0gMWtKoa5OU0OmNBVWPKv83Vokhw7kpnPSM7bhORJASM34OmysBL0GUGs/ovygD3hR6rU/V+SQPIMdGKo7jeO/L/e2fbvJC3pXTzHWDDRXXIEuLRe3QNXKS5qSR803/blY8r9RVjyazjjgegZr4xP0vxyWG1zjkcupEitM0F5z3uA7tegfjSW3pM0IyJzXdncIHcJ/+jZ6bNEE51Cw4Drw==
X-YMail-OSG: I8.gz3IVM1mH.0AI4tQ4pzSNlBuFyxESmaf3iHW33gmwzoVrvKLBpxarmE1POis
 dJzWr2lKHYuqoeO8OF7Qs1N8rJFeXPKQlV5M3ZGhhVrNEf_PGt2iTuHJjBIG5ZnuEt9ogWRQ_HxF
 27Xh_fPUL5GYXuFiXFzhv8WFkTbgUNgnWNUebYwN.THr0pIWOaXC9LgnYTNpApsafG9mcrlQNVf9
 vhfWVIFPMGDNBpa5toEtSWJupgJjEGOpWtVUNmgNwuPh6a0fMPBQnQiFuMYnNj3WXLerZjV_jLOI
 32N.JZIL.VS.haHhNaDM9LLxGR2W.kU20ph.5L5hdTOXRvk53ePc4rRrAt2oiwY7HqxCqfRQpAHQ
 XxQGvR0aPB09A4xFX07cox29ftEHSf5Q_mPubq2nlRb86RzMA5VsZ6drVBJfs7ha34WS9xguBmJC
 4dsFISHtFpJeMQAqed9.4XHpH5TvxKfp6l1LinjbI313DoqGI4O_LsHHVMeP2VxMqe7DQNnnHneg
 Wp9QUxgqI.XYx41d34eHr0V3OQWk_3u7uf80x8ADIiBerH_NNVw_8RlKpKA4Gl6_lpMT2UAt0__9
 W61Zh0.qKS_FVMgPZ3axrWjxnJPMoAhapNaPpys4G9gPfrY9ohspl5Ajn4GCQ7Lf8PGBoVDWvTGa
 2TBpIVxLuEme6Gl6vKUpsAiWE6C9bT3CMilSMuXP_9vzDglh372aoe4BnYrGzExCrXCGd_pXJgke
 3tXsBqdBqsWeb8edlGy8rPL6VJteCGlMqxHlDuM8JEhozDAiUItYlCBi1fXpKx9JHrNn8dvekoY1
 3Wl1eERdtxJr4IeQ5LQhrVb7ncVx8hVg4CirKZlqxmrb5Zc7c900l4aNSg3lxga4lyujpR5kQ94m
 jDdbwDHIJJwjrW2wFD9XFffPDglBctVGvnHA6JLcedS5.zLDxX5ahLXSqimwGeobyGdC05FmbJN2
 ycYSeaXn3GYwtiufm2XqZcULEHqj0Pc2j3SHeyPvuOGEfX2x4M8ihoxWkCGiN4oeijyVXV7Q6K1c
 u_q1Qr4qwSU9GpzPyx55ejhhk5.FH__HZ5GwwMk.X5hFVfxknWgVonOnihLnCwPJ0y.JZKqZM0NP
 ZDoedYqCLLmf2rQyk25RBdWM9ONtxQXJYK8KEdHk6BnweVr6F5qyehxSM7Mm8Q3Cb9iM9IPxZT8r
 _2YuMMrUNmIJor8B_yLiqqoGiN9Wo71VypwBZ518srtH_xmaTbD.HhGBedZGI60Jxludp8UAzZ.m
 8bEyG62aGK8XeCKL0kQxv
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic310.consmr.mail.gq1.yahoo.com with HTTP; Fri, 9 Aug 2019 19:49:05 +0000
Received: by smtp423.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 33b1bd8edb7e89f0735180718ec2cff2; 
 Fri, 09 Aug 2019 19:49:02 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
In-Reply-To: <0d611cff56dd21f83a488e6e227d3844b7e5eaeb.camel@sbcglobal.net>
Date: Fri, 9 Aug 2019 14:48:59 -0500
Message-Id: <D447B8A8-4967-4BBD-B5B3-0B263CA51862@yahoo.com>
References: <0d611cff56dd21f83a488e6e227d3844b7e5eaeb.camel@sbcglobal.net>
To: "d.des" <d.des@sbcglobal.net>
X-Mailer: Apple Mail (2.3445.104.11)
X-Mailman-Approved-At: Sat, 10 Aug 2019 18:06:17 -0400
Subject: Re: [USRP-users] latest E310 tutorial
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
From: Royce Connerley via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Royce Connerley <royceconnerley@yahoo.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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

Are there more than one FIFOs in the flowgraph?  If so, you may need to set the FIFO Select on each FIFO to select which FIFO block to use.

Royce

> On Aug 9, 2019, at 2:36 PM, d.des via USRP-users <usrp-users@lists.ettus.com> wrote:
> 
> The latest version of AN-315  
> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
> is a very nice update. It was great to be able to build a more-up-to-
> date version of UHD error-free. There still seem to be issues getting
> the example or my own blocks to run in Gnuradio, however.
> 
> Following the instructions when I run rfnoc_fosphor_network_usrp.py
> I get 
> RuntimeError: RuntimeError: On node 0/FIFO_0, input port 0 is already
> connected.
> 
> I suspect that there may be a difference in the version of gr-ettus
> that the the author used and the one I get from git following the
> instructions. One hint is that the file size for
> rfnoc_fosphor_network_usrp.py in the document is slightly different
> than my copy generated following the instructions. Alternatively, maybe
> Nate left out a few steps in modifying the python generated by GRC
> before running it. I'm also having trouble running my own blocks and
> examples such as addsub and gain with fresh-build FPGA images. These
> images run fine in rfnoc_rx_to_file, but they segfault when gnuradio
> attempts to connect the output of my blocks to anything else. I'm
> hoping that it's all related and the fosphor is a good example case to
> help a user such as myself get running.
> 
> I Googled the port connection error and found some threads that
> indicated that it was a known issue back in 2017. Since Nate had it
> working so rececently when he updated the Application Note I hope that
> he can share the last few pieces of the puzzle.
> 
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
