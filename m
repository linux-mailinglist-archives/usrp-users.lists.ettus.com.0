Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8342469C5
	for <lists+usrp-users@lfdr.de>; Mon, 17 Aug 2020 17:26:17 +0200 (CEST)
Received: from [::1] (port=36766 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k7h1a-00071V-Dk; Mon, 17 Aug 2020 11:26:14 -0400
Received: from mail-ej1-f42.google.com ([209.85.218.42]:36248)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aitamakinde@abuad.edu.ng>)
 id 1k7h1W-0006tX-B8
 for usrp-users@lists.ettus.com; Mon, 17 Aug 2020 11:26:10 -0400
Received: by mail-ej1-f42.google.com with SMTP id kq25so18226177ejb.3
 for <usrp-users@lists.ettus.com>; Mon, 17 Aug 2020 08:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=abuad-edu-ng.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=LTovHLchVwb0iqaXSY+P8QVs4Ih+/v/FrERASCHeCr4=;
 b=1DWIX82FKd5KoFa1rU+SIQQuz8vyDB4S1fOwIOclA+TQqmmQI2jKOxPYGnmHsWr82v
 TGKPVAo1yh6sbcb2MT1lrIYPAX4SId/yy+zsArbiMbQ+HnjRKK/txOeWVaRDwUqWT4ds
 eR3mhdTWLHXxlmKV1JibenxT9xO+9GDLKpBwLHse1z0rUfOXJGwphSzF877Z+sD9Xjba
 jelnhplvkz/h4Iwdz+wGlDupAWUdThplJ+5DqP6FKxrUxs8+6KKlWuYO3Phk0ZHpETri
 IdlQBzn/OgsGloRypTHTl1wfK7jrFufAsbqXcLW7NK9/LBXH10kMoc/dvFJJHIVHgn4f
 VSzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=LTovHLchVwb0iqaXSY+P8QVs4Ih+/v/FrERASCHeCr4=;
 b=SwECYcUSPA5Ww2NyEYx05hfmhfczTqhTkms4DHxv7a2DTaWvhG2tZUXURlYqDvJrUJ
 EGN4/sBYzSo/SUa4NE82S5vDK6A/tDUKPb4131yTq3p6X//f03Da7tHwJYZjws0VYORi
 /eO5PxkWEapvwGFtXyPcgpdNeFkHF6YjlArfKH64156zPH0hz71ncFTQebgJA0SIYqmu
 ijYTphsF9qc3MwJj/TdB/mn4nHv/f1702lo3EdIe6CyqBuNVwS4pkUXXhh8xeRHXNhDy
 +zjfS0DfzHVPYKMgx6V+B4LNd4n2kjuaVOGF5+vfTK6rJOZAzWxhZ6USFVgCqgCWE3Jy
 fsVw==
X-Gm-Message-State: AOAM533tE+DPiZxmPTMmF8Nj1OvhBtGWCWT/+PdhGrqVJifTSQ1yJ0Ov
 MNq0wkBxeF4OictkHwc03IO5KofRppbg7o9Za8MYhANkzUyFEbPq
X-Google-Smtp-Source: ABdhPJyJ9i4/Z7psPOGSKAEzsr19RL12x9vCv00/hIYqkhDd0jG1E7r16i0Zxv5F5ADnhDF/uAW21TroT9OQ2NRzmF8=
X-Received: by 2002:a17:906:1707:: with SMTP id
 c7mr15968207eje.498.1597677929157; 
 Mon, 17 Aug 2020 08:25:29 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 17 Aug 2020 15:25:18 +0000
Message-ID: <CAD-eGGorqxR-VL0hyGeRvoONya=HUL2wdXWtO86k06RS_00xHA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] UHD Error
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
From: AKINYELE ITAMAKINDE via USRP-users <usrp-users@lists.ettus.com>
Reply-To: AKINYELE ITAMAKINDE <aitamakinde@abuad.edu.ng>
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

 Please kindly help out. This error below appeared at the receiver end
 when I executed a sliding correlator channel sounding flow graph.
Also, the FFT graph got frozen. What could be the problem?

UHD Warning:
    Unable to set the thread priority. Performance may be negatively affected.
    Please see the general application notes in the manual for instructions.
    EnvironmentError: OSError: error in pthread_setschedparam
O
UHD Error:
    An unexpected exception was caught in a task loop.
    The task loop will now exit, things may not work.

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
