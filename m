Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F98660BA
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jul 2019 22:35:21 +0200 (CEST)
Received: from [::1] (port=52648 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hlfmh-0008Mb-Pi; Thu, 11 Jul 2019 16:35:19 -0400
Received: from mail-yw1-f49.google.com ([209.85.161.49]:35552)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <mikedon1@gmail.com>) id 1hlfmd-0008Hl-Tt
 for usrp-users@lists.ettus.com; Thu, 11 Jul 2019 16:35:15 -0400
Received: by mail-yw1-f49.google.com with SMTP id g19so3744346ywe.2
 for <usrp-users@lists.ettus.com>; Thu, 11 Jul 2019 13:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=zC1AC08LghuJ+qHIb2UyEKoGUjbTGHY60N2OtCsCl38=;
 b=IEE9A6hjymH9Ctl8Jgsu70T72zyGKYhzQmcW59MiZsfx1cGveRQlJCwYafgj0fGmky
 zpKmMVDVprqKdVb1vFqw4ov2SxwqXm9SfuC2Io7+DEBSF0az7IEJ2fo8XiWgsPucbE5K
 p+ume1GvwnyX3+9CX7qSFtDKCDsnquYCbNMDtf2hSuhQRqqmCkIt4By9IVTs+0QsYNKZ
 DQesW5uGSmrfrbf+Q0UWm5bmYvOH2xWjC0Np6AOk+dFYc/VwS7o5cf+GT+PH802HS/xM
 UMVWyBW9guiXYrUZZH69Yuc+9QHBdufyiM8eL0RqEtnOs6M0/X4Q/DOHzsHF3m375xWY
 JIpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=zC1AC08LghuJ+qHIb2UyEKoGUjbTGHY60N2OtCsCl38=;
 b=ZfLfMZYRnZxhBDpmBH/mknvPfXrJer7sbLqR8Brt1G5Uaaw+6YYL+K/J4mkmj/YMfK
 UtCPOFtmkXfWZ9VL8Y1PTj9yh1GQ9nQrrZ0uloE1GGe0yjkUWXksRRI8H2au4oj/qqTH
 nI3a5522Mi8QWNwmImnbCi14BblqzK+LFl3DuOB0/145rqrDBp4dg8o6qIsLwW+vHYN+
 9Y0MYi9y4rq9AcXo+xuMkbhZRVe+Zu9fLJGe0v4enS4+loXQoioXJ1tr0xB6TekhBhuv
 6ATO2wz+huM39rZuOe1podZGuZUwhfHv996xfTsRL8T9LbVIc1yoCPRi2LTPhjskHDnQ
 AlKA==
X-Gm-Message-State: APjAAAUlyetFCC252MmJyZSeot2TyitV7ezfuStbeSVBPqnXYtmPL2Tb
 MqrYbkq8U47cH6OEQxneufx0WgmkC9Blm8PPsH0oD4O7
X-Google-Smtp-Source: APXvYqxtepBLCr2KdXAEeEMWFi08TDADOaYLTV7yvMEZ9S4o3Hfc9ulqsfoEZrLfKfTEobjWv84R69Luj04WQizjMwI=
X-Received: by 2002:a81:50c:: with SMTP id 12mr3721862ywf.380.1562877274884;
 Thu, 11 Jul 2019 13:34:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:9982:0:0:0:0:0 with HTTP; Thu, 11 Jul 2019 13:34:34
 -0700 (PDT)
Date: Thu, 11 Jul 2019 16:34:34 -0400
Message-ID: <CAFTvvjN+tyOUPJKKOBbjZOYSPATFwg=79hDVuy5H56syyHe+Ag@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] rx error code: 1
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
From: Michael Don via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Don <mikedon1@gmail.com>
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

I have 2 E312 units.  On one I have a gnuradio script that works fine.
I cloned the sd card from the first E312, and put it on the second
E12, and am getting the following error:

WARN: USRP Source Block caught rx error code: 1

Is this some sort of hardware problem, since the 2 systems have
identical software?  Anyone know what rx error code: 1 means?  Any
suggestions on how to fix this?

Also, while playing around to try to fix this I'm pretty sure I set
the rx gain to 50 on one of the units, and got the "rx error code: 1"
error, and reduced the gain, and the error went away.  On the unit
that is currently failing, I set the gain to 0 and still get the
error.  The unit that's working has the gain set to 25.  I thought the
max gain of the E312 was 76, not sure what's going on here.

-Mike

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
