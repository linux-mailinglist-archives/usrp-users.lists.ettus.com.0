Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D251B63C8F
	for <lists+usrp-users@lfdr.de>; Tue,  9 Jul 2019 22:11:42 +0200 (CEST)
Received: from [::1] (port=40362 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hkwSj-0003Dl-0W; Tue, 09 Jul 2019 16:11:41 -0400
Received: from mail-lj1-f180.google.com ([209.85.208.180]:46570)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saeidh@gmail.com>) id 1hkwSf-000381-1t
 for usrp-users@lists.ettus.com; Tue, 09 Jul 2019 16:11:37 -0400
Received: by mail-lj1-f180.google.com with SMTP id v24so20811567ljg.13
 for <usrp-users@lists.ettus.com>; Tue, 09 Jul 2019 13:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=uO8M6ijZrF4AbbmYH6WR4Oi3VxKS00Z4Q1Q+waJHDVs=;
 b=kCF3HGVz0q6+0PJvmIYDtttAd0M8vEzZMJFHzoPxiKSYHUIQd/vKJ/Y69DasOqH+ZE
 v1VrWCzTxX0f3AphiiXrCP/wsXks06Elkuv3IaCCW7QEANADUF/jg4bXfnRQrEJ/3Wj4
 /o7UT6NmyGDl6c9MGRvg08T+CzEBFf2pvA18FIYQU/bMmhPsFAVTF63FLJXH7YSGOgoZ
 Ldp7AlULOcb7jNkIVx3jncTYFawF37A5LcEalBmqNBv55fNzgoJP15D39DZ5pfvlm2Qk
 sjC9Ra+6kT4o2VssayQN6FDEof9RbX+rC5rC/K28whxdjyX1CxlaDtoG73CYQcFE6hbO
 lIxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=uO8M6ijZrF4AbbmYH6WR4Oi3VxKS00Z4Q1Q+waJHDVs=;
 b=gzHNnBu3Wb/UZZfo24pY0a5TDv8THj/7j6YrfJOJttYeG4Cj3d0hEtiDCmGnfT81wm
 xw1PM8w6zp8aXFfTX1ahQWBDNfUdkQqIlWmI85P6yXWJv6zMCGNxP9/d5hYhxwmOXhuP
 Zd+Z5HDmtnE7V4QUhBMMGZj1CVtGDX7LO31EFPuQlHm7ZUl84ekOFL8kV3f/BjjzdRKJ
 CvFpyCYeUOXnl+CRnH1eZYpHrw8lv/eMu6jecL5tAkKJxoDqK63SoMqkRdbBkSdsJkfg
 62MMUmbSp7AGJqvj/a3tssCBc9xmE7quKRfGz0+Qsw/neD8Sm3jhF1Il0OC3W8fvxNvV
 +3sA==
X-Gm-Message-State: APjAAAU24srQGjSsTLxdGway7nIDuePa8aHyDwVloaMC14szMfwNbnZm
 da9QcWRBfR+pD3yWZHy4EJ7PUlCM4DR/MY1SF/0pMQ==
X-Google-Smtp-Source: APXvYqzwIpUd2lUbmxBW3WeHWXNCFha41kxMYs1QUMMfsG2g3qgIZfIEWGB5QOTtrqqZu4nNAcGqU5Yj9o3ThVG0fLk=
X-Received: by 2002:a2e:2c07:: with SMTP id s7mr15007601ljs.44.1562703054489; 
 Tue, 09 Jul 2019 13:10:54 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 9 Jul 2019 16:10:40 -0400
Message-ID: <CANQ3h38pXPO0OYEEYQ=NjKmbvnepaKJJiVHUyGAqtHntYMM3rA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Command uhd_fft throwing seg fault (core dumped)
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
From: Saeid Hashemi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Saeid Hashemi <saeidh@gmail.com>
Content-Type: multipart/mixed; boundary="===============4965531115698446012=="
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

--===============4965531115698446012==
Content-Type: multipart/alternative; boundary="00000000000073ca6d058d452893"

--00000000000073ca6d058d452893
Content-Type: text/plain; charset="UTF-8"

Hi all,

Running the command "uhd_fft" has been giving this result for me, would
anyone have a recommendation on how to fix the issue?

Thanks and regards,
Saeid

--00000000000073ca6d058d452893
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">Hi all,<div><br></div><div>Running the command &quot;uhd_fft&quot; has been giving this result for me, would anyone have a recommendation on how to fix the issue?</div><div><br></div><div>Thanks and regards,</div><div>Saeid</div></div>

--00000000000073ca6d058d452893--


--===============4965531115698446012==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4965531115698446012==--

