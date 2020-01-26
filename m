Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8A0149C26
	for <lists+usrp-users@lfdr.de>; Sun, 26 Jan 2020 18:48:40 +0100 (CET)
Received: from [::1] (port=56250 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ivm1S-00036Q-W8; Sun, 26 Jan 2020 12:48:35 -0500
Received: from mail-qt1-f176.google.com ([209.85.160.176]:41203)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ivm1P-00032U-Cw
 for usrp-users@lists.ettus.com; Sun, 26 Jan 2020 12:48:31 -0500
Received: by mail-qt1-f176.google.com with SMTP id l19so128586qtq.8
 for <usrp-users@lists.ettus.com>; Sun, 26 Jan 2020 09:48:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=hsJ32V8TYJVYwjrBRYcDlRiqAvRkEVmm+Z8tFynIJ+A=;
 b=RqomUY36CzRNzs8e6KNhocEtHXWqOF98MHTYC5ctBTvBqGu/O1pAzbvdF7Yuj4ikaQ
 0bARbftL8f9/RB94Efmo3FOkHIWPJs4q1W+sasSRKTgVD5K0Ofr/xoeCHBQUzDdiP/by
 q8mf63NI+owqNKP3fMBcLmtFzaGZiOkA/4qs3w4dOxyoYb7ol7XraP1BxS1yIfIVxgYX
 Y9ELMhRQ/96lNof7+tN57ZyRgoQn1tvTkq3uDhfvvDn1bxGvaEpBqCa3Z89qlbEiPVUx
 A3olzcrmVdz7RykYvAE587wn6b9sKPbmJBtgP1wMS0enwTTarQqOGlUKe3mBKhaaDmTk
 Ot1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=hsJ32V8TYJVYwjrBRYcDlRiqAvRkEVmm+Z8tFynIJ+A=;
 b=BYa6hqgsbWVL9X7bWOGFvT6YMj89Wq8iIQybhY8MLSDfwIiq0MqmcUjDdqbsQI07Fk
 hz2bCXDiwJLEHFj2IwAP8GhijtusA1HaY1xY+VZ0IiEGaV1BDIfNgKebQdDhniy5jILu
 G4CvasSrUbro558mG7GjrM2mjGwbknWunk8+zBInE22aw7wAxtLRW4Fy1aE3u92Ct9c7
 tGK3V1ecWtzZINTMBDHbESCUtifjEO9BXTl6AdPwh0O4tdWl4zz1Ewz7nVvqcd/rwgpy
 U3jmVvmKq0sxzjzpLlUA0nAgeForRf+ELLvEm3PE8OC4Ys0RnL5ja6vSpqpUMMV595Sc
 RQSA==
X-Gm-Message-State: APjAAAW8wDlDtGhPnEahioUV+MNac4ECxzubPocg4GlaFdtgtorcMxhQ
 IJ3t8am/3N990QpNb2slyOvzsCxDmlU=
X-Google-Smtp-Source: APXvYqzsG2rJRU24ktXsXMVUXCOkCyueS5Ndtn6RCu6q5OzFVIDjdgDekq7KdMMMYuSJXCOrSFAXSg==
X-Received: by 2002:aed:2dc2:: with SMTP id i60mr8658505qtd.8.1580060870551;
 Sun, 26 Jan 2020 09:47:50 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id x16sm7677740qki.110.2020.01.26.09.47.50
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 Jan 2020 09:47:50 -0800 (PST)
Message-ID: <5E2DD0C5.6010205@gmail.com>
Date: Sun, 26 Jan 2020 12:47:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAKA0MUiUUxp2ko=4A9vM4u1D4tmGP4HKpeGbe5FCKi=_q9WVUw@mail.gmail.com>
In-Reply-To: <CAKA0MUiUUxp2ko=4A9vM4u1D4tmGP4HKpeGbe5FCKi=_q9WVUw@mail.gmail.com>
Subject: Re: [USRP-users] Simultaneous TX and RX from the UHD
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

On 01/26/2020 06:57 AM, Varban Metodiev via USRP-users wrote:
> Dear USRP Community,
>
> I need to do a realistic loopback TX-RX communication (via a feeder 
> and attenuator) of my B205mini device.
>
> I took the examples from tx_samples_c.c and rx_samples_c.c, and tried 
> running them as two different POSIX threads. However, this way I could 
> get only transmission working, without any reception. When trying from 
> GNU Radio - both the source and sink modules work simultaneously 
> without any problem, meaning that I have done something really wrong 
> in my approach...
>
> Could you please advise what is the correct structural pattern for 
> simultaneous RX and TX on a single USRP device via the UHD framework?
>
> Best regards,
> Varban
>
Varban:

There's an example that does this:

txrx_loopback_to_file


You can look at the source code of that example to get some ideas of how 
to properly structure such a thing.





_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
