Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FCEC2838
	for <lists+usrp-users@lfdr.de>; Mon, 30 Sep 2019 23:07:42 +0200 (CEST)
Received: from [::1] (port=34122 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iF2tN-0005Og-9K; Mon, 30 Sep 2019 17:07:37 -0400
Received: from mail-qt1-f177.google.com ([209.85.160.177]:43373)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <frestuc@gmail.com>) id 1iF2tJ-0005K1-Bn
 for usrp-users@lists.ettus.com; Mon, 30 Sep 2019 17:07:33 -0400
Received: by mail-qt1-f177.google.com with SMTP id c3so18867622qtv.10
 for <usrp-users@lists.ettus.com>; Mon, 30 Sep 2019 14:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=7YWat55ksrHZr+RIdv9VETG01V8lqT+iGr49o2NhAN4=;
 b=IEDZS9Z20UBhk06djKcMV3OKLtd38KExruPhjkOLEXswR0BtZJF59pCCcKdaKsQglo
 pv0v5eK9aa1OePoW1rUR25hgw98mWJD149z92tjpuMF4w0iNTlKgWn/1xe4TrubBgp/c
 w1W1vkC5hqCUPJHMfrgJJFxsj3utKF3G5+evuqGaoEnPEUS/OT4+0JdAMnFbNsOS/euS
 mzrQw71muWH4ui3sgS5BJiIfqMk+CreBqTGiQLnW+pXwm14xVjaEf+yFsrlL9+yrGWzH
 6LeDrMb+jH2qyJFmMxmUhOZkOCpP9npY8dXw5n/9src5Jv6WfbcroF/RXYQj5QAAp4R9
 TPVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=7YWat55ksrHZr+RIdv9VETG01V8lqT+iGr49o2NhAN4=;
 b=NE/YRMzA3J3ZtgsPRi0Mv2rbaXd3RQG0SswivS7nmejgbQ86WNZfbW9pzFMxS6MBdp
 UKsjfEHDBEVwYqSbEVixauPB0emE3gEL6RpqJbD2kt8h809NRZ5aZ5+XZElULK5eAOzu
 psl3jgH3+daruMzJuhGrM3hIXSX1CY0/4NbciolMtfQHtG1J0Fh40REc3vtyPWrjewoB
 Hy69uzToc4e8AHZzfpjSrGLs+FA82MF0W4HSggVHBTpOFBmeejtK7XdHspNO5gifEHET
 sHjqYj7+U5YBzK8v+5W/wI2FVBUzTFDc/En2p50l2dEPG36F5hyZJhAP/a1oNSy/jV7L
 42EA==
X-Gm-Message-State: APjAAAVNs2Q6AY0B8WNwblDXcqZbotqtqLixu8KmnSrp9pMsJEAyuHJj
 SJoU1BwNT4uBqVGJU8Nqx/j2S7e73ZM=
X-Google-Smtp-Source: APXvYqxGhPvnpE/BBrumzLmlQ5mslPRs/MI8HaslcHxPLLAMmeTLvydVnhgctT4l9E2gpXf94VLNuw==
X-Received: by 2002:a0c:8961:: with SMTP id 30mr22221741qvq.140.1569877612232; 
 Mon, 30 Sep 2019 14:06:52 -0700 (PDT)
Received: from [10.75.8.38] ([129.10.163.26])
 by smtp.gmail.com with ESMTPSA id a3sm10598867qta.68.2019.09.30.14.06.50
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 30 Sep 2019 14:06:51 -0700 (PDT)
To: usrp-users@lists.ettus.com
Message-ID: <b9a5e62a-1eed-95cd-9061-8ab7828ead6f@gmail.com>
Date: Mon, 30 Sep 2019 17:06:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [USRP-users] X310 image 8 bytes too large with default image
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

Hi guys,

I am responding to the following thread: 
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-August/057669.html

I am having the same problem while running the uhd_image_builder.py with 
the default images for X310.

See below:

frank@frank-iMac:/opt/uhd/host/build/examples$ 
"/opt/uhd_gnuradio_installs/bin/uhd_image_loader" 
--args="type=x300,addr=192.168.10.15"
[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; 
UHD_3.15.0.git-71-g18bc320d
Error: RuntimeError: The specified FPGA image is too large: 15878040 vs. 
15878032

Any idea? I guess that this should NOT happen with default images 
downloaded through uhd_images_downloader.

Note that the USRP works by burning the default bitfile (HG version) 
directly via Vivado and JTAG.

Best,

Francesco



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
