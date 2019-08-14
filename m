Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB3B8D544
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2019 15:46:29 +0200 (CEST)
Received: from [::1] (port=43820 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxtbf-0003ib-5F; Wed, 14 Aug 2019 09:46:27 -0400
Received: from mail-lj1-f170.google.com ([209.85.208.170]:42611)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <erivelton.thalesgroup@gmail.com>)
 id 1hxtbb-0003WZ-Lu
 for USRP-users@lists.ettus.com; Wed, 14 Aug 2019 09:46:23 -0400
Received: by mail-lj1-f170.google.com with SMTP id l14so2178320ljj.9
 for <USRP-users@lists.ettus.com>; Wed, 14 Aug 2019 06:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=6Zw3HG0MIc7Wai0QEgk/+/Vdt/8zPzFKo/jPrj2mizg=;
 b=VU48Dj0hYtKMptmI/a163jPqvqdRpJcFCKvATTAq+OFs8MfQMIjlxHy23qsmh88Oxh
 qh61WhYfdGmb86w/7InAHhpwD7EAeNXqLVTDdBjPRRl/eTokV7/G96+LHhaUenyPjCJZ
 fF29wHQURxmB6TTrZSjK9Hr9EX4HGNHSqXrQ6MIrVZU8juDxUQMut/gWwVC9b0IxoS4R
 nBgSojFq4V4Yd/nQCxThG4G2l9hNp1RewOLqVoo/RSDk4PzYukhyg5mvlFj9dbU2hVP7
 PgwtO97e4fhM7D3NS46PbKfQW+9pAPHaBO6uOnCg6azqaUFunmX01YMwc3Iak35uMzlN
 DjbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=6Zw3HG0MIc7Wai0QEgk/+/Vdt/8zPzFKo/jPrj2mizg=;
 b=R39JC69WH1P0z16fDQjx9giG/bSRPRAl+P8X10MPp9Z+u2gJvl63I2/DZvHvvmRJH9
 iFkEQBGo3ESLYHamFvda7CbtsHRGxO/95whf0B7BBhzEtLEQYyrqz0bsBilsMXipOF5D
 /oxzemy5xWQtO5CPcW/EcCwsCTeBL+kqgMBF5x28duI64Rfx9ZeA/25nZyt8kDHJYc46
 mm4z+ZvR2bOg1poRFGVMfSDxxAvqAINi6epSe1f5YhKI1YApmnBp8ig0UvbhIUdGdYqf
 1ZtbKiF6oSxsmvZWPzXSy+Tn1blXZvXR38LuDKgYcEXQ0n8MDoSY/Q75cxGjEtZpEC5k
 tfww==
X-Gm-Message-State: APjAAAV94SNr74mSYgurXGjbP21o/FwKAczZxpYtHEwWYpNNbgBOltAX
 3NcssGF76m9RwBy69gneX2NVGmEbMFt5z+0e/iOXS6ekvnY=
X-Google-Smtp-Source: APXvYqyg+BQlHrzw4HyfYfMIdaWZTTVK/MzCj4KiPGxcjDsPZDpnu+PDcGQ40ev1hmZYOeQuaDYABMPt9bhOU8QuUBQ=
X-Received: by 2002:a2e:6e0c:: with SMTP id j12mr24917976ljc.123.1565790342248; 
 Wed, 14 Aug 2019 06:45:42 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 14 Aug 2019 10:43:34 -0300
Message-ID: <CAGBdiiZ1Kb_Ht5ZEe4qiF3Yk_=Sj7X9AgHu+9NUNVztNwczytA@mail.gmail.com>
To: USRP-users@lists.ettus.com
Subject: [USRP-users] Interrupt Request on N310
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
From: Erivelton Castro via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Erivelton Castro <erivelton.thalesgroup@gmail.com>
Content-Type: multipart/mixed; boundary="===============9072295694346318517=="
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

--===============9072295694346318517==
Content-Type: multipart/alternative; boundary="000000000000247c0a059013f995"

--000000000000247c0a059013f995
Content-Type: text/plain; charset="UTF-8"

Hello,

I need to implement interrupt request on linux, using the N310 hardware.
There are some example on UHD? I need to read the I/Q Data when to occur
hardware even. I must to use interrupt request. The UHD has support for it?
Or I need to implement IRQ on linux embedded?

Best Regards

Erivelton.

--000000000000247c0a059013f995
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div>Hello,</div><div><br></div><div>I need to implement interrupt 
request on linux, using the N310 hardware. There are some example on 
UHD? I need to read the I/Q Data when to occur hardware even. I must to 
use interrupt request. The UHD has support for it? Or I need to 
implement IRQ on linux embedded?</div><div><br></div><div>Best Regards</div><div><br></div><div>Erivelton.</div></div>

--000000000000247c0a059013f995--


--===============9072295694346318517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9072295694346318517==--

