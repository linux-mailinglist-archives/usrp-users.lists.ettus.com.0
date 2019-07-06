Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFF2612FB
	for <lists+usrp-users@lfdr.de>; Sat,  6 Jul 2019 22:55:16 +0200 (CEST)
Received: from [::1] (port=44644 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hjri5-0005lI-Rg; Sat, 06 Jul 2019 16:55:05 -0400
Received: from sonic306-23.consmr.mail.gq1.yahoo.com ([98.137.68.86]:34816)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1hjri2-0005gG-Le
 for usrp-users@lists.ettus.com; Sat, 06 Jul 2019 16:55:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1562446461; bh=nzafhQAAGVa/HNH+/ZDQ4j6X4SQWkIhmZ6sj3wV5NEo=;
 h=Subject:From:To:Date:In-Reply-To:References:From:Subject;
 b=pdqy9Y3ZmOtqwKPHNGMQ9T9/sYqVA25MxekGBpGQGhQgvJZ4uIFu2FyGWo5lko9tJuPs/xK+X3LAOVtia43sSgnYy5CdUKSvnlKty8aS10bw1AIuBwXUnBdRVSsPb0kmXypnh1+67LZHN0IHrdMJ8PCaRyC7khvLeIctHZ7nMtyp42KOZb20BFg3iPTPD+euxsycH4AbHe/kdkxakYIcklxn6Ky3IdShtGHhSjhZYIZIs7ZW+ahPX0znHkgIqPOHEXSme5xdyYupUQLQpGH2UKV7WB4mRIJrCzOCVVniFQBl63M760GHHcgv5/hOUeSCnzEj5criAJJlMScKcJENWA==
X-YMail-OSG: SS3lbKoVM1lPrN4TS1L8t1CtCfagim9uEoudm8CPs0gqNZq2IyoTfLJy0rvzBn4
 UAwks.5pk9IR41.7IHlE0L6REsyz1W32YYCQFuKfm93F3igDi1QdSMLChvqgAATkcYz5DL9WVrcy
 vM1VlwLBarVGM6YyhOZ5AeNeynjCOMvbGXywb0nIO.0Z9nZi0hbXwTKitzT2yxk3rKP0qjjCbYlw
 JsVfiDUwLSN1MCaJB8WBZQ780VGR3AZTsnkxZZeEdsaAhnKvkxL.yzWtX2TUQZC1GxZAjUIV3opj
 poWx4Sdcv1msD39Svu8InYb7MLW1L4ABAq2HNVxA2paaXqSCQDN8C0_bkBBfzHW0MjY59sgblj0H
 wpCw0WzGZOpl7vJspqzhWql9yU7waAji3akGymjqSb7kP8VSGGjtgqztIzIvNr38pLXx2Qie0gBQ
 nLAcSkaXmHee6biimZCWVjZBPwMNFBmb2qmEOdN6r5TumZx4XTywK.AGxL5YSVsIwEOPAR.oH5L3
 YHQNzJKUf1_BS.7qijq0z.E2eXOLAAKQuWfzlcWPdislWSpSjf2VBbR2jFy7K9t0THVtieXpfaEk
 31HTBaiOKi9nMZZnT248qo9FTADAfeKJLpo.g7pdhfrO0Fv01Kt8ZvEEZGKIt2I4z018fIRLbAyb
 488.8fUM61iC5HykwZUrzCkUEVDVfwMvRrD1lKg.3ENuGzZ.0CaMBFqVZNJF2BKE9ixocKD6A64x
 0GPamkxN5yMJuDkUn4APdBqWe3W30XN2CnXq12u75qipRwOVX9IbuJPyChd1RorqyToYjLdAyS__
 gBVF9oi8XfapZ7tQNO57S9g1Zuin76Kkksx.ckdustZY8hBXIIVN1_Ol4rfsI3dWOV_CYKLyIOtl
 uyVmd0.5qu0DgVUEH.sFpop2EvGsQD3S5oMLHnKn9A_.KYl9algRIdNtg49Y9s_sJ5XXpLmGKypI
 Znmrubyq6cC4_aflZviLfQRSnF3GyueG_OmPfowmr4eTSPg2K_2H2KRUqUzH.H3irLicfiPOoZPU
 _r4TjFi0p5.Y238ynkUnvLV9PfVxczZCBLD8kDCZ3qV_hjkFBtAFLcuXx19SgpQKtMWs5RxYUynX
 3S1jecObdmRzSRBtFcSYNHuPR2Wd10l8zksznhE7qqcv4EMrJd0G2dgFb5n4vEpLij.0LWl8_pCP
 ZUBOK86bwcXFioXw_Pi7ud2WKBVFe8V5oowb4shTDDk9_VuBoI.0EzzS1
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.gq1.yahoo.com with HTTP; Sat, 6 Jul 2019 20:54:21 +0000
Received: by smtp430.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 684df502fe8226dd0108b8d3c777480b; 
 Sat, 06 Jul 2019 20:54:17 +0000 (UTC)
Message-ID: <831a326144598fd5b50c3fa217b073cbc5411ba1.camel@sbcglobal.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Sat, 06 Jul 2019 20:54:15 +0000
In-Reply-To: <9386c5638ac8cad2e327dcf47ea7dfbb6af57f7c.camel@sbcglobal.net>
References: <9386c5638ac8cad2e327dcf47ea7dfbb6af57f7c.camel@sbcglobal.net>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] E310 v3.15.0.0 pre-release rfnoc fpga images build
 but modules not recognized
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

It turns out that I was building the same image over and over again. 

uhd_image_builder.py doesn't work out of the box for the e310 because
of the directory name change at top from e300 to e31x. I'd modified a
line:

   build_dir = {
:
 #        'e310':'e300',
        'e310':'e31x',
:

This caused

uhd_image_builder.py window fft -d e310 -t E310_RFNOC -m 5

to generate a new rfnoc_ce_auto_inst_e310.v with every invocation but
then proceed to call the same old rfnoc_ce_auto_inst_e31x.v. that was
left over from some previous run.

I made link from the file that python generates to the one that the
Vivado build script wants and now images made from noc_block_*.v build
and enumerate to show correct modules.





_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
