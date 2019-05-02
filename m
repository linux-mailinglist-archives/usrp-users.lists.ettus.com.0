Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C08118E2
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2019 14:20:05 +0200 (CEST)
Received: from [::1] (port=32790 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMAgx-0002HE-Vm; Thu, 02 May 2019 08:19:59 -0400
Received: from core.mpb.li ([91.121.108.132]:49200)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <matthias@mpb.li>) id 1hMAgQ-00026y-P4
 for usrp-users@lists.ettus.com; Thu, 02 May 2019 08:19:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mpb.li;
 s=20161108; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:
 Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=igawRXmCiCDYgNZr8/BgD5cqUYo54iH+abwZV1k3ZAY=; b=aT5qbR9LqpMoIJI+UOVF2VYy6Y
 kOogRMxQv/DiFU+hPJUioen4rXDYQsI1mn3W9HPXiXsUZy+h5XtHakDriTm9BXJmjI068CPbQ71Mu
 Z1Q2yqZD/YBzAEX8w4FD30jftwkjvx8VGINPZYMcxDlFQEbWARKcSuNchZaMUqZ0TVS4=;
Received: from adslgva0461.worldcom.ch ([83.172.200.7] helo=[172.30.201.38])
 by core.mpb.li with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <matthias@mpb.li>) id 1hMAfl-0000vb-B0
 for usrp-users@lists.ettus.com; Thu, 02 May 2019 14:18:45 +0200
To: usrp-users@lists.ettus.com
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
Message-ID: <2489f2eb-d1a4-2156-04b3-bf4611f16a57@mpb.li>
Date: Thu, 2 May 2019 14:18:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US-large
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Plagued by sporadic TX underruns on some systems, B200
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

Dear all,

I'm maintaining ODR-DabMod[1], a Digital Audio Broadcasting modulator
which uses UHD to drive a USRP at 2048ksps, in most applications a B200.

ODR-DabMod runs the modulator and the UHD output in separate threads, to
ensure that a few modulated frames are always ready when the USRP needs
one[2]. It requests realtime scheduling[3]. The system runs headless (no
X11 running), and generally doesn't have anything else running.

On some systems, we observe sporadic underruns. They occur in irregular
intervals, something like once a minute, sometimes rarer. Seen with both
USB2 and USB3 hosts, over several UHD versions. Until now we've mostly
been able to avoid the issue by selecting machines that don't show the
issue, but we hope we can find a mitigation in software.

Both the data source the modulator connects to and the USRP have a
disciplined time reference, implying there is no rate drift (plus, that
would trigger regular underruns, not sporadic ones).


There are some parameters described in USB Transport Parameters[4], does
it make sense to change those?

Could CPU frequency scaling lead to interruptions?

Are there other knobs to turn that I'm not aware of? Device, stream or
linux kernel settings?

Is the approach of using a separate thread for UHD output beneficial?

Anything else?

Sorry for the vague description of the issue and the many questions, but
I'm a bit out of ideas about how to approach that. If anybody had
similar problems I'd be curious to hear your experiences.

Cheers
mpb

[1]
https://github.com/Opendigitalradio/ODR-DabMod

[2]
Look for m_queue in
https://github.com/Opendigitalradio/ODR-DabMod/blob/master/src/output/SDR.cpp

[3]
For all threads involved in DSP and the SDR output thread. Grep for
`set_realtime_prio`.

[4]
https://files.ettus.com/manual/page_transport.html#transport_usb

Default send_frame_size seems to be on line 85 of
https://files.ettus.com/manual/b200__impl_8hpp_source.html

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
