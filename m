Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6964B51544B
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 21:18:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 43F16384716
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 15:18:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651259880; bh=OgIikxTRKhm8Zz8h+TLBXP8uayq/mGKNW9wXMyzX8Ug=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Sjpu3Kqzsf6oLTXqdNOj0fCJhWMHghR6MGv+e4YYqh6V0jtzBt9aIcH3wr2H0i12b
	 It2syzzc0KmJE9GCkeKUzaiuSTLVjNtxhvu/lDyHuomkFfwpJTihbq8S12SYxEiVT4
	 qzBeUqT037uczVNqfZJ6d/8S75EYNoFEIz4EGjr2waUOWnbhl02eS9yVQOwBVuALaF
	 +yOS8iqhhvLR65+/KvWBTqvd9sZVctiSqXhqNFC1b5lVz0xxCOvVgrEZX93DHF1ecV
	 VdOTIYitN72uhGKq5HLLp5C71fOUIMTd401d1N9rOtWbw9ox4NDKq1IKAwS/7O86Dk
	 x3rWoCLt0d8aQ==
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 3145B384606
	for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 15:16:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mGRHAcPL";
	dkim-atps=neutral
Received: by mail-wm1-f42.google.com with SMTP id q20so5139986wmq.1
        for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 12:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=4chXVGKmNhcAnsO9kTSxaEvmoVoc6/MxEwseU+qiriE=;
        b=mGRHAcPLVnT5k9bxP/A7YPiqZMRPocTFhCq9caO10+4ydhTdHQ1egHrKHE0VuEk4GH
         HVKbol6C8H+SlR/CFh/IQhX2Lw7acqe060HSuTto4j8Z1ICA6EEkmy+v/TMKvUOo8qmp
         yaoy9bEqnSKPG3OAK05/krbdda+9N7ofKiO1AXGJTVItyawG/5lrgHDMVBeHsyXZz20Q
         tVQkWypaiu1ZBuE7NtGvncpsbgA2t9rrWrM/JCfWO2/v+DXig1OSv/w5wYx68b3ayi5N
         NR5/c0CAPO8NiwVMiHtJiv95jfKf802ePPpLVIUJ4Cg0o6aBXqDjY7qEGSEI9l/cQq8k
         qMHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=4chXVGKmNhcAnsO9kTSxaEvmoVoc6/MxEwseU+qiriE=;
        b=SQSoAWznVYfARL0GyUcd3HFFkEknKk7FuSwjrPNH1WSSGzfYmJb0nXlMVbJPbjphql
         Ps/JsiS2o04hlZ+9zNd9affeLXuQMC73O4PmUnRYj/+lnq6fapHTttvEtXH53b9ZS5ic
         6NuLLZc/KTVIZ/RsGpbLGIHniyeVhz4XO28gMzmi7ydmR0J9+e2Rw9r7pU7qR9zHqa8F
         5ZBP3CI7SfmTCmv6O/Ny9lkXyvx2SHRWsy/GrgmUghZTl8eAX9ZkmlhjNue+W7rSEyJ7
         F7dbhm2EUBuPYITCfsUpoGUokjziSgTjGS3aW6nUz0ZM1sDlKfFqk9zzgCxWSolZnjYU
         CSgw==
X-Gm-Message-State: AOAM530yjnfYYMGJtYmzc4JbWlYuybumdSqJFvdHnv+ndXhRol2PkDo6
	mW/R4/1HqK9maC5XrtVj9MiEw2Mo4934eob0tf4OqP4P
X-Google-Smtp-Source: ABdhPJybge1SwF/N9gyMzBXU7T0FpgR57/onMxmcX9b98FTt0BwaPF62zxjHvhcSLFN+7cXV5k1UNYzrjtTN6/ThIho=
X-Received: by 2002:a05:600c:34c7:b0:392:8d86:b148 with SMTP id
 d7-20020a05600c34c700b003928d86b148mr4641779wmq.117.1651259816190; Fri, 29
 Apr 2022 12:16:56 -0700 (PDT)
MIME-Version: 1.0
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 29 Apr 2022 22:16:45 +0300
Message-ID: <CAAxXO2HtAS7+TTxRhHz05fKpD98e7G9AMU7_GLuAL7ogysyY2w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 7KTRKAKHWYJ43DWPOD3U5YQTFSEXFDD6
X-Message-ID-Hash: 7KTRKAKHWYJ43DWPOD3U5YQTFSEXFDD6
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] uhd_set_thread_priority fails in Ubuntu 20.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7KTRKAKHWYJ43DWPOD3U5YQTFSEXFDD6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Uhd_set_thread_priority for uhd 3.15 fails in Ubuntu 20.04, with the
error (31). System error.

Nikos
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
