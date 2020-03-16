Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C80F01869B5
	for <lists+usrp-users@lfdr.de>; Mon, 16 Mar 2020 12:03:13 +0100 (CET)
Received: from [::1] (port=37384 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jDnWW-0004Sp-Sk; Mon, 16 Mar 2020 07:03:08 -0400
Received: from dnsmx.mpb.li ([185.16.174.81]:44548)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <matthias@mpb.li>) id 1jDnWT-0004OM-PR
 for usrp-users@lists.ettus.com; Mon, 16 Mar 2020 07:03:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mpb.li;
 s=20191222; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:
 Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=voQH28A9LqZ8wdYR+NK7KfKeVf6QapKWdhs3NqHtAz8=; b=MglbsR5OH6IESzOscHicX8uXLC
 Scv2UAcbJYMIob5JgH2+pBiIB99O5RZn0gJfN61gYBbrK4kIjDRHI6/IEtxCsj9yBOrrbIHSnJeGP
 TF/BLfAIFiC+cNrCukGXYbO1eSM2OhsOqhBVNEJxieNxIic7za2rsvCCQZ7wPtnMItNcSN7NfnhoX
 6FXFF+amkWL5Ycvex1qdzXLWtHCDbdzznCGhZe/We9f2UyhxJex3/0FWK4QoCUtgH9zQz8mXlg3sA
 eRhHBHJyw0A8h6SVnNxSr3FhvFBYjw7XeimnRumlt5xLQnXZd0LWqv9ItA4p1iJ2LqTpBtQysCinZ
 KeJh8bfQ==;
Received: from adslgva0461.worldcom.ch ([83.172.200.7] helo=[172.30.201.59])
 by dnsmx.mpb.li with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <matthias@mpb.li>) id 1jDnVo-0007S1-5K
 for usrp-users@lists.ettus.com; Mon, 16 Mar 2020 12:02:24 +0100
To: usrp-users@lists.ettus.com
Autocrypt: addr=matthias@mpb.li; prefer-encrypt=mutual; keydata=
 mQGiBEYMuHcRBACA+gOZ2kLr+D9EbTZaM+8FKSrB+W92gi82LlSnWIx5vQ2bs4u+3ZMGT4WB
 +euKj49/bQ99CoEDB94dGWDrVol3Qxx39UIhL8VSJpHMKQZaa7fHJgOeZLCyjM+qTm/yWcIC
 ND2n8CgJc6oRqmD8l/nRQqHTceSaYPJSIc82QC05zwCgsL7inGV7Xhb8kSJt4B1vOLUG1XMD
 /2swxqZ3QkER90QFGwThUhsPbscl7jVBUWalqHb8n7aM+CrxMuevS/dpOVRA1nEGGgWzEtfs
 UGEKMR7feOf9dnajULnUogLUboIlUrlL+JAwR0uGvI+wynOHMJEcWYhIZG43BQPLJrMitHyE
 HnTjCvZSEsnrDE31GBSCyIyLCkwtA/97MwVUBw0LxsLWK9fnNhuymjWWA07b2keNVUmETVPj
 KeyicE7d8xZUeyrm5JnBj61wm7PeeZBf+pq2mEDqdputuNNPuh8o7rYxua1Vc3HKbz068gN+
 YmA3yVLAEs1aJ5s+5KyP/aGVygSi5td0mNnqzlCfFntIPj3v1LS21pI+SrQjTWF0dGhpYXMg
 QnLDpG5kbGkgPG1hdHRoaWFzQG1wYi5saT6IggQTEQIAQgIbIwYLCQgHAwIGFQgCCQoLBBYC
 AwECHgECF4ACGQEWIQRQgfjVU8jOSc2gZI3uThRyhIPRdAUCXGq2XwUJGiBk6AAKCRDuThRy
 hIPRdA4gAJ90A0IL44gVL09jh3zq8hiT0rQ0XgCgnCYTCybgTT3KDcVV8gUPb8yMXB65AQ0E
 Rgy4eRAEAM99KgY6ujv19er4CU9lTx1Cuc6B9jHqlDutB921+1BKeCJcniz1d0z94+ZfTbJd
 UI/1TnXDPOPjJ3tJB4Nca/p2vwoOruW62yw9rCGV8qgFKSWEg+MqGs7Ks9Zk+xNHqL7Pg8Nr
 1rxkjTFNiDJABAHNuhg+U/2krnSP0ws25m+XAAQLA/9ibdsVCgSqCFkgnFTLnydQOSr4f6aT
 PeH1cZB6vgIZemt4mtnVrCKIYNSyUEwN05mlNR2hcXfaRyFRw2hhAVmqO5bYkLtrvXn2BLs9
 6lgyF/12tF7x7LydFPcdTPiu4MsP+rzOYlHUk5onqippMMfY6hv6exTB2dWSaeLgPqPclYhm
 BBgRAgAmAhsMFiEEUIH41VPIzknNoGSN7k4UcoSD0XQFAlxqtnMFCRogZPoACgkQ7k4UcoSD
 0XR1jgCdFz+aNIwDAbw75m0bivIINrQWIOcAn3s0DBAg48EhAFrPUuloCtLKbKm4
Message-ID: <1104df7c-06f1-a407-d811-70ceb4cab721@mpb.li>
Date: Mon, 16 Mar 2020 12:02:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-US-large
Subject: [USRP-users] Does linking against UHD require linking against
 boost_thread ?
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
From: =?utf-8?q?Matthias_Br=C3=A4ndli_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Matthias_Br=c3=a4ndli?= <matthias@mpb.li>
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

Hello all,

Could it be that at some point in time, linking against boost_thread
became necessary for programs that link against uhd?

ODR-DabMod [1] uses pkgconfig to find out how to properly link against
libuhd, whose .pc file [2] lists -lboost_system but not -lboost_thread.
ODR-DabMod isn't using Boost::Thread anymore (since about one year).

Linking fails (Arch Linux) with

  CXXLD    odr-dabmod
/usr/bin/ld: src/output/odr_dabmod-UHD.o: undefined reference to symbol
'_ZTIN5boost6detail16thread_data_baseE'
/usr/bin/ld: /usr/lib/libboost_thread.so.1.72.0: error adding symbols:
DSO missing from command line

and works if I manually add -lboost_thread to my LDFLAGS.

Same on a debian machine that has boost 1.67.

I am still a bit confused about why and when it started failing though,
so I prefer asking before opening an issue. Thanks in advance for your
insight.

Cheers,
mpb

[1]
https://github.com/Opendigitalradio/ODR-DabMod/

[2]
https://github.com/EttusResearch/uhd/blob/master/host/uhd.pc.in

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
