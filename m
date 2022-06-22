Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CCD5541F6
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jun 2022 07:04:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9BC5F384041
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jun 2022 01:04:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655874280; bh=toNtijmpJlQvKPT9f00EjSOUac3j5WHtoczpHGA9D1Y=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Vf+Y+/hZlBPm/Tc3cInUHDlJ/TaXoQd73AZplQJ+GR7pXP0mXORzQzpZaePUvrsx5
	 tVCfsv8YUUmOQpSzFHBox86R7Vimv3mixPUgvGxlemDwJiOaalE7Oo6uP6Ma/Mw5TL
	 VUjabAXO+FMWhhu8P2mvvraAvgjkKPGgTlg58o5to488ZLA5B8hL46JugFR1varM3w
	 /pPFmmI2WGkTEGNayCAl/KnsOEFa775ouV2Uc3yGLEnUTCBGLgKD8GaBXmJC/6idvs
	 g6XaW08WDXS/twu/Bh9xC9auOhUKB8/buNMgX5u8pf86HbRbIpCajwLTIh0vJcNFwv
	 v2XccfbPO7I7A==
Received: from smtp3-g21.free.fr (smtp3-g21.free.fr [212.27.42.3])
	by mm2.emwd.com (Postfix) with ESMTPS id 1E7F2383FD9
	for <usrp-users@lists.ettus.com>; Wed, 22 Jun 2022 01:03:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=free.fr header.i=@free.fr header.b="mnXAXrdw";
	dkim-atps=neutral
Received: from zimbra-e1-03.priv.proxad.net (unknown [172.20.243.151])
	by smtp3-g21.free.fr (Postfix) with ESMTP id BEE9813F7E7
	for <usrp-users@lists.ettus.com>; Wed, 22 Jun 2022 07:03:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
	s=smtp-20201208; t=1655874216;
	bh=2YZVBixFF+57JhYIRxqOxtA5jpERSWuss5rUbv7SrOY=;
	h=Date:From:To:Subject:From;
	b=mnXAXrdwqHAuSceaJX0uw5H1wirL/kyYF0JCPfruskmw5FwT4PJS2k4Zz8xNFF9zI
	 HtAUc0ChEi9O8C6BcVEX2ylJvKqB7j0H2AiqA2nGnc1thXcOWl+yG3XjMVSHZnjk3J
	 LA/AlydQ3LZsIu8/DgOfZ7XfiXxb9Ai42Cpk7F5Bzls6p6ZJkAlrLj4TqnHzsZ5+tX
	 f86I2KwV7UN6ZCdzaqBNlWvn186O2ALsS52vqip0Q8VkZTc3NMmlui0E0vQbINFNX3
	 G/oeHL4O0bMqHdqxnbfWAjRnV3nsct0JicQZbccgDIQX3LavlcvSXgtZq2mwafQMXP
	 X7FIS5jbA39Qw==
Date: Wed, 22 Jun 2022 07:03:36 +0200 (CEST)
From: friedtj@free.fr
To: usrp-users@lists.ettus.com
Message-ID: <1877361178.866110467.1655874216716.JavaMail.zimbra@free.fr>
MIME-Version: 1.0
X-Originating-IP: [194.167.45.227]
X-Mailer: Zimbra 9.0.0_GA_1337 (ZimbraWebClient - FF99 (Linux)/9.0.0_GA_1337)
Thread-Index: oai4/XTSnbq/E+qgmBN0CTImaooLKg==
Thread-Topic: 1-PPS trigger of B210 data acquisition
Message-ID-Hash: TLP45RJH7MN4AVOAW6BP3I6QGKPHCUHQ
X-Message-ID-Hash: TLP45RJH7MN4AVOAW6BP3I6QGKPHCUHQ
X-MailFrom: friedtj@free.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 1-PPS trigger of B210 data acquisition
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TLP45RJH7MN4AVOAW6BP3I6QGKPHCUHQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> That seems no longer the case: attached is the distribution of the time at which the 
> first sample is detected by a B210 triggered by the same PPS controlling a RF switch 
> feeding the B210 input, with the falling edge of the PPS allowing the signal to stream 
> through the switch. Fluctuations well above a few hundred microseconds to milliseconds 
> are observed.

It looks like the timeout rule was changed and now the sequence provided in the initial
post generates an Overflow, possibly corrupting the buffer and restarting the communication
at a random time.
Reducing the delays to 
        curr_hw_time = self.uhd_usrp_source_0.get_time_last_pps()
        self.uhd_usrp_source_0.set_time_next_pps( uhd.time_spec_t(0.5)+curr_hw_time)
        time.sleep(0.1)
        self.uhd_usrp_source_0.set_start_time(uhd.time_spec_t(1.01)+curr_hw_time)
seems to restore the functionality. Solution courtesy of Gwenhael Goavec-Merou.

Best, JM
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
