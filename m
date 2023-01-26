Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7111567D7CE
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jan 2023 22:35:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F32C3384066
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jan 2023 16:35:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674768923; bh=W1d/Woklegzxigm4otEjUNTj44ORxq1chbe3es3IhNY=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=tHWbUA6RzxysXl5wU7k0mb9/VOwZ8JGKijDqSJUDQk0fxiGH72vsQcYZtEYL2Kq8i
	 3kHiQuW+o136OlFissdvZDusBIFnoapf0hQYLoxmnNHzSoWaQ1usNPBI6ge62rextl
	 e2LWKBgMBNQ7JDcPD/9/OcEehfBm8H+nAg8kzFpxFVDJ7me4a6+qUXI+bO9xJcGq7G
	 N+fkLSOTuiQ0UGCsiPgzObIeWAJySjnaWiTWBhP6mgRKGxZxEUAp8V7cpxSOnRSwIz
	 KgmcHm3Efbo3YR/V8VYsQz5BJdMM43mAF5+raNsqQhPGGrjIOqkRTiq4S5YVNJah1+
	 gEivIPBrHyeWQ==
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.183])
	by mm2.emwd.com (Postfix) with ESMTPS id 4687D38436C
	for <usrp-users@lists.ettus.com>; Thu, 26 Jan 2023 16:33:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=xs4all.nl header.i=@xs4all.nl header.b="VkCP7XZN";
	dkim-atps=neutral
X-KPN-MessageId: f78b1e7a-9dc0-11ed-b08d-005056992ed3
Received: from smtp.kpnmail.nl (unknown [10.31.155.5])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id f78b1e7a-9dc0-11ed-b08d-005056992ed3;
	Thu, 26 Jan 2023 22:32:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xs4all.nl; s=xs4all01;
	h=content-type:mime-version:message-id:subject:to:from:date;
	bh=LZFGHHNjNLqrMgEGMWMZiI+QEWKYLaQ44siniK2/L/0=;
	b=VkCP7XZN8lBoiDmoUNx5Ncc5/PRuC5VqMpzdiJKYhOy+DzMnwi16sCHNI9u3tUYLTknoAEyYsTXpr
	 LdR/44ADV3iP6wpOetsDzmv8XkAMJoJy/eXoBXXoVY5PT5LwS/eoEZVNX5XbtQoME+5Qe37wTdDMEx
	 +POrjTRLhBRdUZ+DYo9r+SijTuasT2k9TgKM5+YJAII4lmSlQUznhccyHbTAgTswlQHDgid9G0wyDD
	 ZMqIydGVF/E7FO+DYQDEkvjY4cyRTRgLt6XyPSROzjZsFmcg3bO5YvbWvk4DHGB4R7HtbkFj4VGF28
	 KWV5UfzPdUy9JcVCUzoBPFCu43FGuVg==
X-KPN-MID: 33|JLM1LGZ80BatCZvI3VIInrRiBry9bikH7h95CF1BrV1BU6ZoOZD66MXrfTaYcVe
 WO3QbJ+OTXoPcJq8MHNtlwTEOVXLZC2jczjI9Pephjgo=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|hTHpNz097LBRCwJQa9X7ynQehm2pxYhDr3JfTNLDFqDAdCH6SzsM1r/Tuk0zF4I
 m+3y/Cq4cJjSc6EJY574yzQ==
X-Originating-IP: 185.206.232.5
Received: from vm01308.protagio.nl (shell.protagio.nl [185.206.232.5])
	by smtp.xs4all.nl (Halon) with ESMTPSA
	id 20dca0f9-9dc1-11ed-9e25-00505699b758;
	Thu, 26 Jan 2023 22:33:57 +0100 (CET)
Date: Thu, 26 Jan 2023 22:33:52 +0100
From: Mark-Jan Bastian <markjan@xs4all.nl>
To: usrp-users@lists.ettus.com
Message-ID: <Y9Lxt1qeGzi9rym+@vm01308.protagio.nl>
MIME-Version: 1.0
Content-Disposition: inline
Message-ID-Hash: RG52MVAOQCG2SRBAEMKYRQI3GJ6M6MF4
X-Message-ID-Hash: RG52MVAOQCG2SRBAEMKYRQI3GJ6M6MF4
X-MailFrom: markjan@xs4all.nl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UBX-160 LO filtering
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RG52MVAOQCG2SRBAEMKYRQI3GJ6M6MF4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

On page 7 of the UBX-160 schematics 
https://files.ettus.com/schematics/ubx/UBX-160_revE.pdf
there is a LO filter selection with three paths:
- 800 MHz-2.2 GHz
- passthrough (no filter)
- lowpass 400 MHz..800 MHz
Next to that, there is also a way to measure the LO on J3.

Question:
- Is this LO filter automatically selected, and where should I look for the rules ?
- Is there some way to control this LO filter selection via UHD, similar to a tune request?

- The IQ mixer ADL5371 documentation warns that the LO's 3rd harmonic
needs to be well suppressed. Is there benefit to be gained 
by using an external, more filtered LO instead of the on-board UBX-160 LO plus its filters ?

Mark-Jan
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
