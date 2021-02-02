Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 190C630C68A
	for <lists+usrp-users@lfdr.de>; Tue,  2 Feb 2021 17:53:49 +0100 (CET)
Received: from [::1] (port=48584 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l6yvx-0003XO-1k; Tue, 02 Feb 2021 11:53:45 -0500
Received: from mail-ej1-f45.google.com ([209.85.218.45]:45895)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aaron.rossetto@ettus.com>)
 id 1l6yvt-0003Si-7R
 for usrp-users@lists.ettus.com; Tue, 02 Feb 2021 11:53:41 -0500
Received: by mail-ej1-f45.google.com with SMTP id b9so11428295ejy.12
 for <usrp-users@lists.ettus.com>; Tue, 02 Feb 2021 08:53:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=Nuy9ebv789rnYQUksxWqPGZb4tY+SxibPlQzBlGqq9o=;
 b=Uwy2pAOGc1UDCkEVtvNgq9nDve8zJqVlpatXKHteXgnrVxjGdGjltOLCBLmpRtGAqI
 EQWk6P49zBboBc8wAuEeuX12citsPY+DD1pV3nNLg8pVnVjWlVsyqFZqyKY0IQvIqtx3
 GthQAAVfFr3j+oCY9PkPdOUzk6myqlTbHRXGFUGvKKsqpiIc2M6lp/I5JnpqG4q+x4PY
 sGKaKK+q511SYKEVnAMKAWRcsGVlC6huHKqr/kEB3A7+9U2GaUEIMDlSDDiyI9NDBPuI
 MSViYKFfZjP7A010EHyt/SC/p2o+3ZIqltvW3A74cGaklLm40kF6S4ajCi6g4PPzGKVL
 EqrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=Nuy9ebv789rnYQUksxWqPGZb4tY+SxibPlQzBlGqq9o=;
 b=B75e3zOE2Rt0FIsjcd5BmfRWjLpMHnHUBp6gmc2FHshL/CGL9s+FxbGMFyZtiAydBO
 lmZS107nh2Dyjje6SAa/ulezaLf7ssNeYXgts352+t48HD96C/E9Fe7dFp4hIn4mtOj4
 /NXlC86rDOkLnFvEiITHBtk8LFNBoIK2bhPtjptHH5lOqnPMz+fzO2U1MnM3PJq0Aqbm
 tN1C7aBOoaIIiaSM1m4CHi7TT45tG7c22jzcn/JGwKa1b94HgQQaianK6ZFsZWJ41Yra
 Dg06wBFY8ddyAcfvsJQALokr5fPOL02HChx69vhLcQDqhIc+k498GsWuhDr+sC+vLZcx
 96ng==
X-Gm-Message-State: AOAM530GBkuMVQAzOcRVFZoNxPXBJG3+fE5LiCkeZFe8Y7vWF91el3pZ
 3/Qd/dUR30vfXVr2WHeljPAzV8q0V+qn/ubxiB2PBlpIH/UroA==
X-Google-Smtp-Source: ABdhPJzWja80kAb707nE6P4lws4jGNeHCAkDtwS7VrNOF7kw3e1v8lqX6xCwOSWSpL8WakJtpxQYfP3uxtPqG15dH/E=
X-Received: by 2002:a17:907:7347:: with SMTP id
 dq7mr7283086ejc.385.1612284780048; 
 Tue, 02 Feb 2021 08:53:00 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTQStkhRY1nLDuRrd51AGFabiCgzrJka8ky50F=bbp=pbQ@mail.gmail.com>
 <24D1670E-9007-41CF-99CF-5F90B0A96D5A@gmail.com>
 <CAB__hTR3mok9BOmgjA2B3PsSGDhVryMYX3wqzv_EqOyk8nYQXg@mail.gmail.com>
 <CAB__hTT69FnSPdLO9X+D=qbnV-mKnJt-n5QNV103_0G_6Lh55Q@mail.gmail.com>
 <CAB__hTTYidO4ewEURTMV-4LLdZ8XcknwwCZ7+vBrKEMH3SXgSA@mail.gmail.com>
In-Reply-To: <CAB__hTTYidO4ewEURTMV-4LLdZ8XcknwwCZ7+vBrKEMH3SXgSA@mail.gmail.com>
Date: Tue, 2 Feb 2021 10:52:49 -0600
Message-ID: <CAAg5+MyWcWoosJGfqvwkzqrXnhdxqk=vQptWbsK-G8jU=U=NAg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] DPDK troubles (invalid ELF header loading dpdk
 library)
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
From: Aaron Rossetto via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Rossetto <aaron.rossetto@ettus.com>
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

On Mon, Feb 1, 2021 at 9:02 PM Rob Kossler via USRP-users
<usrp-users@lists.ettus.com> wrote:

> Has anyone successfully used DPDK with Ubuntu 20.04, UHD 4.0, Intel XL710 NIC, and N310 (or X310)?

If I remember correctly, I believe DPDK tries to dlopen() *everything*
in the directory specified by the dpdk_driver parameter in the DPDK
section of uhd.conf, leading to a lot of errors similar to yours
('Invalid ELF header' and the like). Having the correct collection of
.so files in that directory is key.

What's worked for me in the past when using DPDK with an Intel XL710
is creating a directory (I used /usr/local/lib/dpdk-pmds) and copying
a specific set of DPDK .so files into this directory:
* librte_mempool_ring.so
* librte_pdump.so (I think this one is optional--I had been trying to
get packet dumps from DPDK a while back)
* librte_pmd_i40e.so
* librte_pmd_ixgbe.so (may be optional?)
* librte_pmd_pcap.so (this one is also optional, I think)
* librte_pmd_ring.so

(Symlinking to the actual libraries wherever they get installed
instead of copying them into the directory would probably work as
well.)

Then, make sure that the dpdk-driver key in the [use_dpdk=1] section
of uhd.conf points to that directory:
dpdk_driver = /usr/local/lib/dpdk-pmds

Hopefully that will resolve the issue and get you a little further
down the road.

Best regards,
Aaron

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
