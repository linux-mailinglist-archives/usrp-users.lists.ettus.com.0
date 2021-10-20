Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0666D4346A6
	for <lists+usrp-users@lfdr.de>; Wed, 20 Oct 2021 10:17:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C6C333841BB
	for <lists+usrp-users@lfdr.de>; Wed, 20 Oct 2021 04:17:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=o2.pl header.i=@o2.pl header.b="eR9uS2mb";
	dkim-atps=neutral
Received: from mx-out.tlen.pl (mx-out.tlen.pl [193.222.135.140])
	by mm2.emwd.com (Postfix) with ESMTPS id 2A3FD383F1B
	for <USRP-users@lists.ettus.com>; Wed, 20 Oct 2021 04:17:10 -0400 (EDT)
Received: (wp-smtpd smtp.tlen.pl 18729 invoked from network); 20 Oct 2021 10:17:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
          t=1634717828; bh=6PewQlxveR+1H8CSEJtBM9RiOQ/VTkcYeDWbwa6HtDI=;
          h=To:From:Subject;
          b=eR9uS2mbLY3fqnp6IwJ6pHmO1aM86goOh/c5m9ep2104ljz5AA31q6bfoddvcOQ3g
           4K5jdzVltUOpNNhsjWfOxO5tObK2DopzoSLKPSDQ3zhb1pL8tVdxuN7OlzrK9DV+KK
           i0zddeXbLfFXXa42FeUVb49iWI8rTFia1V2rpaJI=
Received: from unknown (HELO [192.168.91.98]) (perper@o2.pl@[194.29.160.241])
          (envelope-sender <perper@o2.pl>)
          by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <USRP-users@lists.ettus.com>; 20 Oct 2021 10:17:08 +0200
To: USRP List <USRP-users@lists.ettus.com>
From: Piotr Krysik <perper@o2.pl>
Message-ID: <e6736e55-740d-dbae-1b5e-16baa9766af9@o2.pl>
Date: Wed, 20 Oct 2021 10:17:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
Content-Language: en-US
X-WP-MailID: f3f8f2523dabcc5d98bd4507ec5bdfe0
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [AeOU]                               
Message-ID-Hash: GKDY2TUX5FMADPPBPFRBIAQHVSUPURHP
X-Message-ID-Hash: GKDY2TUX5FMADPPBPFRBIAQHVSUPURHP
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Questions regarding USRP X410
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GKDY2TUX5FMADPPBPFRBIAQHVSUPURHP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi all,

I'm considering to purchase a USRP X410 for one of research projects.

I have some questions:

- X410 has 4 Rx and 4 Tx channels with superheterodyne paths - so there 
are no quadrature inputs or outputs. RFSoC ZU28DR (which is available on 
ZCU111 board that I have some experience with) has 8 ADC inputs and 8 
DAC outputs. If only half (4) of ADCs and DACs are used in X410 what 
happens to the other half? Are they unconnected?

- is it confirmed in practice that it can keep constant (~ without 
temperature drift) phase offset between Rx and Tx channels from across 
multiple runs of the device?

Best Regards,
Piotr Krysik
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
