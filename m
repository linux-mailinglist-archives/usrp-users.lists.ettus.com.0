Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 459D43BE629
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 12:08:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C492F3841DE
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 06:08:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=free.fr header.i=@free.fr header.b="l6pdZ/A/";
	dkim-atps=neutral
Received: from smtp1-g21.free.fr (smtp1-g21.free.fr [212.27.42.1])
	by mm2.emwd.com (Postfix) with ESMTPS id 96D4D38414D
	for <usrp-users@lists.ettus.com>; Wed,  7 Jul 2021 06:07:54 -0400 (EDT)
Received: from zimbra9-e2.priv.proxad.net (unknown [172.20.243.159])
	by smtp1-g21.free.fr (Postfix) with ESMTP id 2154FB00533
	for <usrp-users@lists.ettus.com>; Wed,  7 Jul 2021 12:07:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
	s=smtp-20201208; t=1625652473;
	bh=8WNd6yl9dGBOzPkNSBjerBs3QIy1Hy74y9Ow7bklK/E=;
	h=Date:From:To:In-Reply-To:Subject:From;
	b=l6pdZ/A/grs0J7fbdkaf/NQjydGTojCIuRrfbZ4vSTPKdyi0sbCNEB8Nn3k+/H0F4
	 q94UiWDazxWrTBJmkyN4CQrT1HevCBmEO+I9NywEYw2+33zK44PedjqxxHper93ju1
	 jhU5Q7sDhj8AiG2imtvwupDombWz/5EzQqEIjdAQ0YY1iB7RMXixMkd3mxw/8DBvnj
	 WiLSN5D6UVEK62j0SaCK9ISCTTJhIDHQRk3b4pIe20T2LJmHc5dpIRPlwYO2KC7Umu
	 NxBd3aYspaHu1+L0/FJW0Uj2aFZUzUW8V1AQ6oGkcJSpiZSqKXBN6P0a0ceBrh36Dv
	 2VgPAZuwvxgMA==
Date: Wed, 7 Jul 2021 12:07:53 +0200 (CEST)
From: friedtj@free.fr
To: usrp-users@lists.ettus.com
Message-ID: <100428163.29631252.1625652473023.JavaMail.root@zimbra9-e2.priv.proxad.net>
In-Reply-To: <811837388.29608215.1625652252148.JavaMail.root@zimbra9-e2.priv.proxad.net>
MIME-Version: 1.0
X-Originating-IP: [194.167.45.227]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - FF3.0 (Linux)/7.2.0-GA2598)
X-Authenticated-User: friedtj@free.fr
Message-ID-Hash: K5RHZL6KHWWAN5V2RNXDHOHJ2VMWD2BB
X-Message-ID-Hash: K5RHZL6KHWWAN5V2RNXDHOHJ2VMWD2BB
X-MailFrom: friedtj@free.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B210 multichannel delayed start sequence ?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K5RHZL6KHWWAN5V2RNXDHOHJ2VMWD2BB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

We are using the delayed start capability of libuhd to control the time data start streaming
from a B210 FPGA to the host PC and hence add custom tags in the IQ datastream generated within
the FPGA.
Using the delayed start function seems to work fine with single channel acquisition but we are
wondering what is the delayed start sequence (uhd & FPGA) in the multichannel configuration:
our concern arises from the statement on the documentation
https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__source.html
stating

set_start_time()
virtual void gr::uhd::usrp_source::set_start_time(const ::uhd::time_spec_t &time) 	
Set the start time for incoming samples. To control when samples are received, set this value before starting the flow graph. The value is cleared after each run. When not specified, the start time will be:

    Immediately for the one channel case
    in the near future for multi-channel

why is the multichannel behaviour in a single receiver such as the B210 different from the single
channel streaming? I can imagine the different behaviour for networked multichannels USRP (e.g. 
X310) but how about the B210?

Thanks, Jean-Michel
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
