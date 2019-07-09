Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0691D631A3
	for <lists+usrp-users@lfdr.de>; Tue,  9 Jul 2019 09:10:50 +0200 (CEST)
Received: from [::1] (port=46120 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hkkGz-0003g0-Ve; Tue, 09 Jul 2019 03:10:45 -0400
Received: from core.mpb.li ([91.121.108.132]:49006)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <matthias@mpb.li>) id 1hkkGr-0003Sf-EQ
 for usrp-users@lists.ettus.com; Tue, 09 Jul 2019 03:10:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mpb.li;
 s=20161108; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
 :Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=INK2FNyepKqvMmVpXUMGIjOcw2qcyoJs0P/248Q9RI0=; b=Fy7ea96C8I1R7dBuEcBZ+S3Hfo
 T1gJPRF/AkdycWaGkKHho0mEux8eo5TEQNT5eyVCVHanenPWAFV5TvNuBL56DTjFqoJ+uqcXAcng9
 sexW/oKhm/bFObvJfeEk6+gKINQkYPpmAX+7h5C6KNOYAxyVtNnCXYYlhZusvSZZ86l0=;
Received: from [2001:1620:e6f:99:3341:cc0:da95:7b7e]
 by core.mpb.li with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <matthias@mpb.li>) id 1hkkGC-0001Ra-8Q
 for usrp-users@lists.ettus.com; Tue, 09 Jul 2019 09:09:56 +0200
To: usrp-users@lists.ettus.com
References: <CAM4xKrrb4MNYu8PZmt29f8R5FbSpiik7Q95XPqVMtBqQO7ZtPQ@mail.gmail.com>
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
Message-ID: <e50bf1f7-0bb6-84a2-edfa-0188a229fc63@mpb.li>
Date: Tue, 9 Jul 2019 09:09:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAM4xKrrb4MNYu8PZmt29f8R5FbSpiik7Q95XPqVMtBqQO7ZtPQ@mail.gmail.com>
Content-Language: en-US-large
Subject: Re: [USRP-users] [UHD] 3.14.1.0 Release Announcement
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

Dear Michael,

First of all, thanks for the new UHD release to all people involved!

On 08/07/2019 20:35, Michael West wrote:
> This release includes [...] a new bootloader for B200

Is there more information about this change? Does this solve a specific
issue? I had a look at the relevant commits, but I am trying to
understand why it was implemented and if there's any impact for our
application.

Best regards
mpb


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
