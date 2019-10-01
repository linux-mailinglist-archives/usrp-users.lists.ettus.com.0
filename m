Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 234BFC342C
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2019 14:26:24 +0200 (CEST)
Received: from [::1] (port=38938 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iFHES-0007PE-1o; Tue, 01 Oct 2019 08:26:20 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:35292)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <frestuc@gmail.com>) id 1iFHEO-0007JU-P4
 for usrp-users@lists.ettus.com; Tue, 01 Oct 2019 08:26:16 -0400
Received: by mail-qk1-f173.google.com with SMTP id w2so10981314qkf.2
 for <usrp-users@lists.ettus.com>; Tue, 01 Oct 2019 05:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=P2UgvDMznyH5Asf81pA86hWTF+url8pgFTIHRcSvHik=;
 b=vhke5PAxmmQdGdivXrJ0lkRhPw8fo2s/T86RmuO/I67BWHFR6FruF7yT62O/8IQ60i
 eN2iu6+NlX1UEONNcwn0tAiV9SSSoz+58bzZ+Kdjk/33GwdSxJCiW7z/JN9gyFYp2POF
 JhYGk/K04jaTMesVZW38ULx/TNoOM71VzPp9q/xel39YXctBuO/7L0sPdZncg7DMY5IM
 jDiG+/8YfLcQ+YBykIvpVuoIHbdWuAMaGjtnP8h4O65dHS5LRdqsJCBJ7gAa7WQMmp6Z
 kGcJW1FCj65KVQRnhplQBZ82YcaPscSAsl5iQAeRn1knL4iuVGUs8OaSq1LlHm1UwS1q
 tQ6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=P2UgvDMznyH5Asf81pA86hWTF+url8pgFTIHRcSvHik=;
 b=BqZbHJ98s+tlpHUjXO830Hxk5wiFEmLLyo1VGRUoLZCNLL/R1Z4slG9gKflscuHHXg
 V/eNbOWSuNf38QH2NVRJI2AwjqZNGmumtU5tmDh+VLx5jo3YV7vn0XKVpxpvssbHwdZS
 8KVqfAlBRMaGc7M13RScSmvpJQUW5xNpoXyFWczQ3/I7WfOgirCCzXF5171eiAtfsnVA
 uHKmrs9bYhP2E64Wpqtz9Ak1FYLGWJQUXL7m50oRsbMMJwHqevwiqdWkSBQVQXXBLLJZ
 ncmmQ0E0rmCqJ6Ygvux8H6nDsmGbA9AdwuvXM/0ms58Ry1uYr/XmTzA3RPeDyC2L7IZ8
 x0ZQ==
X-Gm-Message-State: APjAAAXiXsIi2mqEcH1S4MeADZi0uvjuqFGc5VHLFZbUO63UlvBb1Hg3
 afAhTFLkOR43GxYdPQvTx3Q8ECpJ5Yc=
X-Google-Smtp-Source: APXvYqw1wh951c8gnSMDaeQ8DbTKadC7un8/jTX3nN6VgzoCyVZnpoe7s22QFVBAWakpswFCweoP3Q==
X-Received: by 2002:a37:4c54:: with SMTP id z81mr5676036qka.18.1569932735687; 
 Tue, 01 Oct 2019 05:25:35 -0700 (PDT)
Received: from [10.75.8.38] ([129.10.163.26])
 by smtp.gmail.com with ESMTPSA id y26sm10905413qtk.22.2019.10.01.05.25.34
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Oct 2019 05:25:34 -0700 (PDT)
To: usrp-users@lists.ettus.com
Message-ID: <b358a6cc-0275-3f56-1533-178c9b837c0c@gmail.com>
Date: Tue, 1 Oct 2019 08:25:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [USRP-users] uhd_usrp_loader script defaults firmware to pre-built
 bin file
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
From: Francesco Restuccia via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Francesco Restuccia <frestuc@gmail.com>
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

Hi Marcus,

This is the output of the command:

frank@frank-iMac:~$ which uhd_image_loader
/opt/uhd_gnuradio_installs/bin/uhd_image_loader

And yes, the file should be ok:

frank@frank-iMac:/opt/uhd$ ls -la 
/opt/uhd/firmware/usrp2/build/usrp2p/usrp2p_txrx_uhd.bin
-rwxr-xr-x 1 frank frank 16383 Sep 30 17:26 
/opt/uhd/firmware/usrp2/build/usrp2p/usrp2p_txrx_uhd.bin

Francesco



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
