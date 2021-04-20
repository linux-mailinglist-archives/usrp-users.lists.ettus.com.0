Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E979C365B0B
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 16:17:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C1C10383FBE
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 10:17:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=o2.pl header.i=@o2.pl header.b="UMD2AjC9";
	dkim-atps=neutral
Received: from mx-out.tlen.pl (mx-out.tlen.pl [193.222.135.145])
	by mm2.emwd.com (Postfix) with ESMTPS id 1417A383C5F
	for <USRP-users@lists.ettus.com>; Tue, 20 Apr 2021 10:17:04 -0400 (EDT)
Received: (wp-smtpd smtp.tlen.pl 16201 invoked from network); 20 Apr 2021 16:17:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
          t=1618928222; bh=e91EtfvD9yLgDJ6Bd7xceLWkDVhkezZA5ocbfVcBltE=;
          h=To:From:Subject;
          b=UMD2AjC9oYuExChtTs82t+sj3pYMa+affmp2ui8TZNqTHkJYrf+hdlYoBX0/QjbTL
           GLroJ4KzHTcIhVVPmua29Dsh6qQQ8hhrNZN3waaHTUb3nD5SHDe6ycXIvWuNDz2QqT
           6QuUIIMJmYa75vWA9U1ACekORUJ0zJsJ+xMN1kU4=
Received: from 185.234.210.37.rev.toneticgroup.pl (HELO [192.168.1.215]) (perper@o2.pl@[185.234.210.37])
          (envelope-sender <perper@o2.pl>)
          by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <USRP-users@lists.ettus.com>; 20 Apr 2021 16:17:02 +0200
To: USRP List <USRP-users@lists.ettus.com>
From: Piotr Krysik <perper@o2.pl>
Message-ID: <202baba8-1113-53d6-8d35-6621f88b7d21@o2.pl>
Date: Tue, 20 Apr 2021 16:17:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
Content-Language: en-US
X-WP-MailID: 6cdcea78773b858dac9facb8e5ed692f
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [0XPk]                               
Message-ID-Hash: Q3DY5SEKXMQ33W6MOTU5LTUS7LMC3DH5
X-Message-ID-Hash: Q3DY5SEKXMQ33W6MOTU5LTUS7LMC3DH5
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 with PCIe transport: GPSDO reset on each application run
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q3DY5SEKXMQ33W6MOTU5LTUS7LMC3DH5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi All,

There is issue with GPSDO when PCIe connection is used on USRP X310.
On each start of any UHD based program GPSDO gets reset/power cycle.
Just after starting any program that streams/receives samples GPSDO 
sends through UART following text:
**************************************************************Firmware: 
rev 0.929b , built: Nov  6 2018 14:03:58

and UHD prints warning message:
[WARNING] [GPS] update_cache: Malformed GPSDO string: LC_XO, Firmware 
Rev 0.929b

This issue makes internal GPSDO in X310 useless when PCIe connection is 
used as it loses gps lock.

When using Ethernet there's no such issue.


I think it's because that for PCIe FPGA binary is reloaded on each UHD 
based application start. During programing FPGA lines change state, 
among them probably GPSDO_PWR_ENA line, what causes GPSDO power to go 
down for a moment.

Is it possible to avoid reloading FPGA code when PCIe is used, without 
changing UHD source?

--
Best Regards,
Piotr Krysik
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
