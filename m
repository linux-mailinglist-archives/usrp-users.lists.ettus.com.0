Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E95F14557
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2019 09:38:04 +0200 (CEST)
Received: from [::1] (port=56646 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hNYCB-0002X3-OD; Mon, 06 May 2019 03:37:55 -0400
Received: from core.mpb.li ([91.121.108.132]:53580)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <matthias@mpb.li>) id 1hNYBc-0002SF-Ul
 for usrp-users@lists.ettus.com; Mon, 06 May 2019 03:37:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mpb.li;
 s=20161108; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
 :Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pxWjatQNix9Vw/jXNoo7a3FrHUTbuBry61IWMGZnLcM=; b=xltd2SGiVgQrTZYGTnqJ6/GwaO
 +GUsOvPHC+RfpqHOFDmcjzfVji/BrZCXgJIB68XQIehuW6zJiYL5hqnbg+Dxs272bZSGu72uQN/2V
 GGJQJLZ42ga6SQhZjIj5IfaK9ZdCl8AH+ujMP+/6Y0qQewoeBbRa/MtCU7LaEmdf3lSU=;
Received: from adslgva0461.worldcom.ch ([83.172.200.7] helo=[172.30.201.38])
 by core.mpb.li with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <matthias@mpb.li>)
 id 1hNYAx-0008SF-Qy; Mon, 06 May 2019 09:36:39 +0200
To: Mark-Jan Bastian <markjan@xs4all.nl>
References: <2489f2eb-d1a4-2156-04b3-bf4611f16a57@mpb.li>
 <20190502220249.b4osh34vbasqm7a4@xs4all.nl>
Openpgp: preference=signencrypt
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
Message-ID: <e513e859-de38-e725-e217-e20f193a0d60@mpb.li>
Date: Mon, 6 May 2019 09:36:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190502220249.b4osh34vbasqm7a4@xs4all.nl>
Content-Language: en-US-large
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Plagued by sporadic TX underruns on some systems,
 B200
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
From: =?utf-8?q?Matthias_Br=C3=A4ndli_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Matthias_Br=c3=a4ndli?= <matthias@mpb.li>
Cc: usrp-users@lists.ettus.com
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

Hi Mark-Jan,

Thanks for your response.

On 03/05/2019 00:02, Mark-Jan Bastian wrote:
> For more in-depth USB debugging, there are external USB 2.0 and 3.x 
> hardware bus analysers available, for example from the swiss company
> ellisys.com.

I have experience in USB protocol analysis from a previous job, and know
the Ellisys tools among others. As a consequence, I have an idea about
what effort it implies to look at the problem from that angle (one could
call this a "bottom-up approach"), and I won't go that way.


> Some things can be very subtle, for example this (quite amazing)
> 2013 ethernet PHY bug:
> https://www.theregister.co.uk/2013/02/06/packet_of_death_intel_ethernet/
> Very tough engineering by the affacted customer, who made it reproducable
> and fixed by a simple EEprom update from the vendor.

Interesting story, but I hope it is not a parallel to my situation, and
that a simpler approach will fix it.


> Pure theory: What if this intermittent issue would be an issue with a 
> certain sequence of packetlengths, some of them on the boundary of the 
> maximum size for that endpoint and endpointtype, that are not handled 
> properly at one or both sides, causing a glitch/retransmission/faillure, 
> resulting in the application-level visible underruns ?
> How would you measure that ? How could you optimize the packetlengths 
> so that the issue is quicker to reproduce ? Or avoid the issue by
> anticipating and avoiding such packetsequences ?

It's a possible hypothesis, but I don't see how to test it easily.


>> Could CPU frequency scaling lead to interruptions?
> 
> It would leave that off [...]

I'd love to, but it's not clear to me how to achieve that nowadays with
the intel_pstate driver:

https://www.kernel.org/doc/html/v4.12/admin-guide/pm/intel_pstate.html

It's probably not even possible anymore given that the cpu and voltage
scaling responsiblity got moved into the processor itself.

mpb

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
