Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DED25A0B2B
	for <lists+usrp-users@lfdr.de>; Wed, 28 Aug 2019 22:17:31 +0200 (CEST)
Received: from [::1] (port=35350 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i34Nl-0003X0-0K; Wed, 28 Aug 2019 16:17:29 -0400
Received: from mail-wm1-f43.google.com ([209.85.128.43]:40275)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <martin.klingensmith@gmail.com>)
 id 1i34Nh-0003RF-1B
 for usrp-users@lists.ettus.com; Wed, 28 Aug 2019 16:17:25 -0400
Received: by mail-wm1-f43.google.com with SMTP id t9so1385366wmi.5
 for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2019 13:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=vC/ZkoK0paFRuYISQTxv4EDGNo4waa02m3C3/mZDY3Y=;
 b=tVhxWE1j48fPoGBBFeYrNNQG5osZaWovhIhZ01SPgeRPi0zE4GJvdjmrdinq8FTj88
 nY2BNTlk7MJ3WAjgaMQs0vBYAHzCvrdb+jTTyBvurVyErShcA7qEqYQLb9eMVxK20vf+
 r5fPQ7umTwgjozQVpTb4bBObIP1WpSntrIMNAvZyn7/XEa020BDBhiyRJNm7Usr3JAZ9
 CBpjR1NLJxbrxKuxp2XnDjCCnXMHSZq2GhdRqpAsKWvak5sNcFEtfRP4mmBQ/S9NZI8N
 ADRRDnhWWQpGtLfK9hR0mb42tfbQvTKLtcH9yjBr4Pucf7elpO81/+7tiBglAGiIri7/
 nT0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=vC/ZkoK0paFRuYISQTxv4EDGNo4waa02m3C3/mZDY3Y=;
 b=KA24bTF++avLFlVbbhyvhp0+QReioS676YNJA1zRobOcQgZjSg8LmEK1RuGDN3++t5
 +haWNjc/XuDoGbSvPsaJqg/UDohpWbK52OQZ5P/kILeDtZe5cEx6l8blsj/LPN9WGv6H
 YXxebIu3FPEs8oPCbp4b9kQWG6/J8XNRZI+NevX5oWmjt8HYxe3HW1DhE4U0M4xAk6qe
 /4yToKyUDhbSpkUKI9Va8zpAG46E7SlBoqDj6cBNfqTNRJtGuFcami4M5Df+pkDJBpr1
 5D05L1QVcU93S07VecnxCeWrqey4THvgaIXfg+d0h4BQc/QtGZasjekIRnrYszAoAz73
 Clag==
X-Gm-Message-State: APjAAAUVUsbhiJBuJlXVWlDzhbMrzfAyjHsh9NsWylGj4YyQx8WQ04qs
 9+kPfDbjQt+hpfywpV0eXfDZDKx8Yb6LNaZI9EL7Cw9n
X-Google-Smtp-Source: APXvYqweDSwD7s8Sg2UKRgsEnmYPGN6PWzsGg/5AgTC3Wik4eE3tIHTbpkRFQiEh54QkxNFoo9UY/qfdkViqrh6citY=
X-Received: by 2002:a1c:f106:: with SMTP id p6mr6485465wmh.148.1567023403458; 
 Wed, 28 Aug 2019 13:16:43 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 28 Aug 2019 16:16:31 -0400
Message-ID: <CA+QOOBtfJo_5K_oZUfF5Kcjps_wbSRRjN0-UifROY6Dx8RdS_Q@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Building UHD installer
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
From: Martin K via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin K <martin.klingensmith@gmail.com>
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

In Windows I am attempting to create an installer for a custom built UHD.
UHD works as it should, however the PACKAGE target does not finish. I
get the following error. This seems to be a common error when
specifying an absolute path rather than a relative path. Is there a
way around this?

85>------ Build started: Project: PACKAGE, Configuration: Release x64 ------
85>CPack: Create package using NSIS
85>CPack: Install projects
85>CPack: - Install project: UHD
85>CPack: -   Install component: libraries
85>CPack: -   Install component: pythonapi
85>CMake Error at
C:/martin/uhd_stack_build/uhd_build/python/cmake_install.cmake:42
(message):
85>  ABSOLUTE path INSTALL DESTINATION forbidden (by caller): C:/Program
85>  Files/UHD/Lib/site-packages/uhd
85>Call Stack (most recent call first):
85>  C:/martin/uhd_stack_build/uhd_build/cmake_install.cmake:73 (include)
85>
85>
85>EXEC : CPack error : Error when generating package: UHD

-- 
Martin K.

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
