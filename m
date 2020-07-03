Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED77213074
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jul 2020 02:29:56 +0200 (CEST)
Received: from [::1] (port=39272 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jr9aR-0003Bq-FV; Thu, 02 Jul 2020 20:29:51 -0400
Received: from mail-qt1-f177.google.com ([209.85.160.177]:40636)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <siddsubra@gmail.com>) id 1jr9aN-00035U-Oc
 for usrp-users@lists.ettus.com; Thu, 02 Jul 2020 20:29:47 -0400
Received: by mail-qt1-f177.google.com with SMTP id w16so2581352qts.7
 for <usrp-users@lists.ettus.com>; Thu, 02 Jul 2020 17:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:content-transfer-encoding:mime-version:subject:message-id:date
 :to; bh=ysL0i2dlPyD46B5fLXsnVsrHpzUApSV5K+2QGiJn9x8=;
 b=ffgr/dpheGXy60/TOKUuYiAJdPQYvGQm33vIFuksa1t3lvVhDViigW2+2Jv12SerQw
 /MRaZgZ9ZVcmco/Xw06liExDAjlm396WiOc6wFZRphwsBnmlI8FgHQMyGsg3KPeG+c/O
 A8N/z2ogy14u+LijG5rg+wpp6Lb9yQmUoSngP1+KkfqFAdu2e5moJksKvVy8cj0YKEiT
 91o70Y/3i52EdYJnoSOknQVSNaiXsnhmzKlmr6ibsV+U9kK5onSZ++3zdb+cv24wsZTa
 wyacrbfiWIt1Syu9LpCv0xSotZh6RQjoYoC05kXv84nTq4N0DTPQ/dfi9wOV0jV7XLeL
 86VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:to;
 bh=ysL0i2dlPyD46B5fLXsnVsrHpzUApSV5K+2QGiJn9x8=;
 b=WHYpyH/vj51usQFWb0vZDjjFMGeajlizS9JGdeOc0tF24mpSQT4JfgR5oM3wWB+Xr6
 GgIzjVnz+goPB26sN2Lmyu0jbQ3OsSZ9PKPxLgi/a2UNu4wW7V9Ts0UET6LmwlQrLdfJ
 YCJmrLvlMG7ht7oSX+9KgfinGQ3Dy1AIdmy+9s+PwvvlptK3+z2/eWbarI6dsrT7Me8h
 Iwag1ZD0OdP0qCq09nDBKOsTdIV6EAxJFcCY/y6bQ0pemBtTDQhTC+HzqEYYD5It/yS1
 487+bNPEXdFDp6sSHpnYyaKSRjwZhYoOmCFphec/xNVZcg4LWv46VGXWC+UVOPIF1Nn5
 EtNw==
X-Gm-Message-State: AOAM530Bg+VLhFqfHH5dvJdKx1GTD/75tuELO8JtnNap6aaigN1BLLGJ
 /Oj2Ki4AF/NOrBvjx9lNhdbZAJdA8KM=
X-Google-Smtp-Source: ABdhPJys8zEkiKjaV6oLC0ALtFALwb8gV7wyo1sSHSRYVQiftzbFxu+fpcg5x2Jve8uG2Be03M4d5Q==
X-Received: by 2002:aed:3789:: with SMTP id j9mr32721428qtb.91.1593736146813; 
 Thu, 02 Jul 2020 17:29:06 -0700 (PDT)
Received: from siddharths-air.lan (c-73-236-113-201.hsd1.wv.comcast.net.
 [73.236.113.201])
 by smtp.gmail.com with ESMTPSA id 23sm9411634qkl.52.2020.07.02.17.29.05
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 Jul 2020 17:29:06 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3645.0.6.2.3\))
Message-Id: <79E41B66-2253-4D2A-B97A-81962C93F4E6@gmail.com>
Date: Thu, 2 Jul 2020 20:29:04 -0400
To: usrp-users@lists.ettus.com
X-Mailer: Apple Mail (2.3645.0.6.2.3)
Subject: [USRP-users] B210 Timed Commands, Samples over time
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
From: Sidd Subramanyam via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sidd Subramanyam <siddsubra@gmail.com>
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

I am running a B210 USRP with the built in GPSDO. My goal is to collect a fixed number of samples (4 Million) at the start of every minute over the course of about an hour. I am setting up the script to make use of the STREAM_MODE_NUM_SAMPS_AND_MORE collection mode. For my application It is important that the collection starts precisely every minute, hence why I am synchronizing with the GPSDO. Because of this, I am attempting to tune the LO with the GPSDO every minute before the collection starts in order to keep the LO from drifting. Furthermore, right before starting the collection, I query the GPSDO for the location and log it as well. This seems to have a blocking effect on the whole USRP. How can I use timed commands to ensure that I synchronize time with GPS Time, tune the LO with the GPS 10 MHz, and start collection of my fixed number of samples, with a known time spacing between each of these so that I can minimize any LO drift by the time I start collecting my samples.

Thanks,
Sidd
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
