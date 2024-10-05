Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF249991A26
	for <lists+usrp-users@lfdr.de>; Sat,  5 Oct 2024 21:55:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6C61D3853CC
	for <lists+usrp-users@lfdr.de>; Sat,  5 Oct 2024 15:55:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728158137; bh=6c7CV0Q0DwRQue9pWsPFqgPyQ50FxFZGWwOA7pOtHQY=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=OE4Pra39powlQlxu9jNIQfewsyMWXQ8OQiaS8Qus0Gs7Mm8+64NDr36EgSh47X6xk
	 tRFMIpebXKExN5jY/wgdUEBsRWKt3vpF42Q0eDKUENxfq1P+cfVbpiRXDKcseGVPYb
	 bwVQkGTrF/u29k28dLWoTbXraArzorN5EEvmFMyCIMME9a4j7M6B+I7byrUj5peqLu
	 1FqT4hqH1xws4s/CHFlDmBWlPYBr0jR85ObRBenRWPPxGj3EIR4kmkCoS6j08K7uJa
	 1DmcCimsf3TlMGG4ez85HTlsqVH6ITkHcgkMOniKznJYMWHhkkgNQx5eVOE3xO7tBs
	 tkOK5hTJRfHBw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C2B87385297
	for <usrp-users@lists.ettus.com>; Sat,  5 Oct 2024 15:54:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728158079; bh=lxPaa+WnOtUNWm374EbPvibG3CF4FZmqhV7wmmuYOU4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=s6ggyTySAvB6PlQlwX7yf0u2hTLBGFf8IkArLaqoDoJcVh5CKb0AWN/3FxAq4yE8k
	 JYyUqPqce31vXhnn2XWZfjTAB7gS5KOzWkzyQnXUNF5iVQyEA5tYYEIaeeghBhBsHy
	 AoGhZcKRIdPI3pQZTt3kRX47qvpnIgf9GYegYINTocebPbQ49TVROpafbtc7nEjJ4y
	 5UG3JIvjahHBpieO2JsGpsc2Vdx5d4ebTeegZTLErb//28/6GhUqWD7ietwzvBvQPa
	 F0kMfLNQUhStPJc3tfSMbfcd0dne80gPd9AWJ9k9bmmKpr1UwMFZWzmmuWzxSnLQs6
	 /EKiJZsh6hH0w==
Date: Sat, 5 Oct 2024 19:54:39 +0000
To: usrp-users@lists.ettus.com
From: steve.wakelam@roke.co.uk
Message-ID: <Q8Zi4kYkuUCdqDwPBEJVCYuXvohIjLfcRdP4nn2w@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: ae621cbe-65c2-417d-ad67-e371035c5985@gmail.com
MIME-Version: 1.0
Message-ID-Hash: GM4DIZQJWZA5QIMHI3I4XK33624PLPFR
X-Message-ID-Hash: GM4DIZQJWZA5QIMHI3I4XK33624PLPFR
X-MailFrom: steve.wakelam@roke.co.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using 10GbE to stream receiver data to remote FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GM4DIZQJWZA5QIMHI3I4XK33624PLPFR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9196033354010939541=="

This is a multi-part message in MIME format.

--===============9196033354010939541==
Content-Type: multipart/alternative;
 boundary="b1_Q8Zi4kYkuUCdqDwPBEJVCYuXvohIjLfcRdP4nn2w"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Q8Zi4kYkuUCdqDwPBEJVCYuXvohIjLfcRdP4nn2w
Content-Type: text/plain; charset=us-ascii

Thanks, I am struggling to see how this would connect to the RFNOC block. Are there any examples as to how the RFNOC block is architected to allow a remote streamer?

Thanks

--b1_Q8Zi4kYkuUCdqDwPBEJVCYuXvohIjLfcRdP4nn2w
Content-Type: text/html; charset=us-ascii

<p>Thanks, I am struggling to see how this would connect to the RFNOC block. Are there any examples as to how the RFNOC block is architected to allow a remote streamer?</p><p>Thanks</p><p> </p>


--b1_Q8Zi4kYkuUCdqDwPBEJVCYuXvohIjLfcRdP4nn2w--

--===============9196033354010939541==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9196033354010939541==--
