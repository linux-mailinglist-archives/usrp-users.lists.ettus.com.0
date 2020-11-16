Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3CE2B4EED
	for <lists+usrp-users@lfdr.de>; Mon, 16 Nov 2020 19:13:12 +0100 (CET)
Received: from [::1] (port=35438 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kej01-0004Gs-Ap; Mon, 16 Nov 2020 13:13:09 -0500
Received: from mail-qk1-f177.google.com ([209.85.222.177]:44178)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1keizy-0004B5-0U
 for usrp-users@lists.ettus.com; Mon, 16 Nov 2020 13:13:06 -0500
Received: by mail-qk1-f177.google.com with SMTP id d28so17673509qka.11
 for <usrp-users@lists.ettus.com>; Mon, 16 Nov 2020 10:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=t6ECJNBIvdQFWqvB9j6T/SMPH0Pj2cfqpCXy7gr+4V8=;
 b=IzJDqsZaBrC11hw9qCzXYV3tUIQRBag6yb3oGcFS1ahRev2mlx4pnLMtyr3st1BOtH
 alD0etcJiwJNPjaiB+I3E+h7SH2+pd0/3JNTMXHzegS/E8YRkGDwEK7TAaKv6KeeqdLk
 /6ozq//GzbNeo5cCCHpUzr9Y11JOulrvDUn570sobZJtpu+00UNAO5SWtn2EaHgF7IFL
 f/Q/pCqEU6samBZmVS3NF8C0tjWP+ErP9Xvn6pIcNXj6qzG6est8wGYBlVaeJ/IbeBaB
 i9F6qcS7GQwth38rVCj0fCQpfJGyXX3BUJXgQedGnBBl0HCgbBlNOs6F+o1AcaYVsaoj
 bzgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=t6ECJNBIvdQFWqvB9j6T/SMPH0Pj2cfqpCXy7gr+4V8=;
 b=W4FEjqlZFS8MxkAtoNhc7VkGhVLxU+7cTA0BETT4woT8z0Nb7u+7UaQJ/7KCkKOJ9S
 V3mPuSbrkBmfanJVX67DhPdcHT3Mtho3rd3Qzbt7yi880QZTdFE+Iz/TPvtF1/hAUTlY
 YmV+Zy8aPQcjNESu5ctlW8as2sChjEDRTaA1PPwx58maOKEBJKUxCrfHKQWzxE2RHX24
 ehADBJ15o/z+APS0czrd+l7nxDJP1fFQNUERfIY+k1KYFqNT7fdvXxo4N+DJhvq5w7hr
 HVQt104vT7PURclvNpzjK7V6S2wZLlOePxM25acOGPYQzJ3WN2M3gxWkxneIkX47Og6B
 QDAg==
X-Gm-Message-State: AOAM530uNtHwWcdJyw5SnQYZeY8/liAXkMkpfH6yzEehwVLaQh75gg8x
 0EAXVgGCpkuc74ZG3v3+F5elAmi3Auk=
X-Google-Smtp-Source: ABdhPJxYkjHPqRKAQfzdLo9Sl+rOFWnb3IERKfhES0Hc6aEVKDjd7Nf1ACDRsDcEEPDHVIVLdJxKTA==
X-Received: by 2002:a37:4c4:: with SMTP id 187mr15733354qke.391.1605550345101; 
 Mon, 16 Nov 2020 10:12:25 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id
 p72sm13215654qke.110.2020.11.16.10.12.24
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Nov 2020 10:12:24 -0800 (PST)
Message-ID: <5FB2C107.60309@gmail.com>
Date: Mon, 16 Nov 2020 13:12:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <5aef8e21-77a8-e3a0-1542-8f9075039eb9@pari.edu>
In-Reply-To: <5aef8e21-77a8-e3a0-1542-8f9075039eb9@pari.edu>
Subject: Re: [USRP-users] UHD version that supports older DBSRX on a USRP1.
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

On 11/16/2020 10:26 AM, Lamar Owen via USRP-users wrote:
> System: CentOS 8 using Anaconda3 with the conda-forge GNURadio 3.8.2 
> and UHD 3.15.0 loaded.
> USRP: USRP1 with a DBSRX.  Behavior is replicated with the EPEL8 UHD 
> 3.15 packages, run as root.
>
> Question: what version of UHD do I need to downgrade to in order for 
> 'ye olde DBSRX' daughterboard to be recognized and used?  I am not 
> interested in upgrading the USRP at this time (unless someone knows of 
> a newer unit that can be donated to our 501(c)(3) nonprofit; we'll 
> take a donation of equipment, for sure!) since we have three USRP1's 
> loaded with DBSRX daughterboards already that have worked in the past 
> and are already characterized for our application.  Yes, I know the 
> USRP1 is old, and the DBSRX is old, but they still work, they cost 
> quite a bit of money under a federal grant (NSF), and they're 
> characterized for our application here.  Plus, in this application I 
> actually need the extra 100MHz from 2.3GHz to 2.4GHz that the original 
> DBSRX can tune.  The USRPs have been stored for a few years; they were 
> used for a couple of years about ten years ago and then shelved, but 
> we want to start using them again (long story).  (It should go without 
> saying that I'm not interested in running a ten year old OS or really 
> old GNUradio; there are newer modules that I need to be able to use; 
> just looking for last version of UHD that actually supported DBSRX).  
> Or if there is a workaround for UHD 3.15 to get a DBSRX to work.
>
> Here's the output of uhd_usrp_probe:
> (base) [pari-sdr@dhcp-pool167 ~]$ uhd_usrp_probe --args="type=usrp1"
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_107400; 
> UHD_3.15.0.HEAD-release
> [INFO] [FX2] Loading firmware image: 
> /home/pari-sdr/anaconda3/share/uhd/images/usrp1_fw.ihx...
> [INFO] [FX2] Firmware loaded
> [INFO] [USRP1] Opening a USRP1 device...
> [INFO] [FX2] Loading FPGA image: 
> /home/pari-sdr/anaconda3/share/uhd/images/usrp1_fpga.rbf...
> [INFO] [FX2] FPGA image loaded
> [INFO] [USRP1] Using FPGA clock rate of 64.000000MHz...
> [ERROR] [DBMGR] The daughterboard manager encountered a recoverable 
> error in init.
> Loading the "unknown" daughterboard implementations to continue.
> The daughterboard cannot operate until this error is resolved.
> AssertionError: m and ref_clock/m >= 1e6 and ref_clock/m <= 2.5e6
>   in double dbsrx::set_lo_freq(double)
>   at 
> /home/conda/feedstock_root/build_artifacts/uhd_1602712704625/work/host/lib/usrp/dboard/db_dbsrx.cpp:306
>
The general policy has always been that old hardware would be supported 
in newer versions of the software--although it may not
   get "new" features.

The problem with running an older UHD is that it may not support newer 
Gnu Radio (3.8 and newer).  My recollection is that the last
   time I tried USRP1 it worked, and that it was UHD 3.10.   I'm not 
aware of any *conscious* decision not to support original USRP1+DBX
   in UHD versions going forward.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
