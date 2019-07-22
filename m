Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE4B70B56
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2019 23:29:19 +0200 (CEST)
Received: from [::1] (port=35500 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hpfrx-000397-KA; Mon, 22 Jul 2019 17:29:17 -0400
Received: from mail-ed1-f53.google.com ([209.85.208.53]:38945)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <zzhangcsfsu@gmail.com>)
 id 1hpfrt-000303-Gr
 for usrp-users@lists.ettus.com; Mon, 22 Jul 2019 17:29:13 -0400
Received: by mail-ed1-f53.google.com with SMTP id m10so41879190edv.6
 for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2019 14:28:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=+GgGBOyr0jhYth3xffbSFlg6g5+vIjhb3Tc4rd+qsyo=;
 b=CBbfwMKosBsrwdhkzXKFQa4bW/yhhvsv7+hpZmN9Zh51s24h+YfR9GlNT/CN2C/zwq
 TQSHeB/Id0J9y21zQmd+1hOVlno8I77ivtSDwrmgYPZP3M0gv4V8D/fI4SnGHOEtteMZ
 CsKPT/AQN5dbE7rINLmxQSjwMQ/jbmWMjs34lstiMY5oRohFHNOPG0q7+kkCWstkMy24
 BrNukyZ8yIV5KJgRE6ckLT8IozxehkqwgPxmMStRf0kOc6T2GrstG2w6nL9p51N6oxOC
 SDIW4yKydEjkl3pzzLumsXjDIEcTzLXXTSBDSqwuWBy9ZMv0WySmFtj5e7hjtzrSV1Zn
 BzUQ==
X-Gm-Message-State: APjAAAUs6aY7kSeME19+SiVodaUb2rclCKKY0tUU5R3a5+lrudE9XKXc
 TitAXeyC2gYjYY47kFIQMh7oykZCe/zwI0bLS0u/r9xP
X-Google-Smtp-Source: APXvYqxTTIdzZydixx9Er+nVOS49SyEUgeyei/3u3YvEzrDphqkE3yeEEJugkLT7JJgb9RaC4Mrlu7LiEDOKBd3HukA=
X-Received: by 2002:a17:906:6bd4:: with SMTP id
 t20mr52549045ejs.294.1563830912258; 
 Mon, 22 Jul 2019 14:28:32 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 22 Jul 2019 17:25:42 -0400
Message-ID: <CAOtS0CmYe8ZuGWtRhp=uaDcXxVhFEfbN6WY0BpDcgu6HssMxiw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Transmitting data from 2 antennas of B210
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
From: Zhenghao Zhang via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Zhenghao Zhang <zzhang@cs.fsu.edu>
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

Hi,

I have a very simple task: transmitting data with two antennas of
B210. The data is just numbers in a file and I just need to play the
file.

I have been able to transmit data by one antenna with the command
tx_samples_from_file. I did a lot of searching but I was not able to
find a similar command to use two antennas.

I am sorry if this question or some variations of it has been answered
before. Any help is appreciated.

Thanks,
Zhenghao

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
