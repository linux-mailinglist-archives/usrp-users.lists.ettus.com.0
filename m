Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 255516A6857
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 08:43:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B271F3846B8
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 02:43:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677656593; bh=dBV8tj1KUdCTM//80lz06lj82zyGxbon4rgz7jHXvhs=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=iNwIGeUveRTtV05FZk8AZ6Z/xYBZ6aOYvt9hnhFSWtd+j1L098+4F9o1D3IRutj5O
	 zdyhjxYQ/hfjxgOb8P2ab69L/eGI/4ym0HVrS7ct4hVK3s+POT6jxtX0tmyk3vFP4F
	 6mg9A6I0iv9eiV+/NI6sL6U4WQJRu0w41Bhu5rc2Vq2uBTwLZ0GlCtnFhhAojMYv8o
	 e/o33kPB7UbmcFS1p7Lf7YYYeJl044ysibffBAIo/RTxVS3nAHHcWIcDE0TAFe5Km9
	 u2voGzw2EoGX5xLz0lAKpUwplDKP4LJilh8aS8Z67IAiYFpbIe1glcSCFgR2L+bdI5
	 lCLAC4qI2YZCg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8D0663846B8
	for <usrp-users@lists.ettus.com>; Wed,  1 Mar 2023 02:43:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677656587; bh=PxOebkSjWMo3w+JPrcZQzf8s8uz/pgWSD2KIgq98mlI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=jTQM/Nqqn4iR/p0gMl/Aje3BYbsDtvhnNgMG4mEmdSrZQdQdI5jGHU9qWYy5iK+Gu
	 M7XQ0Vaot00KAGn8ehuR5mh1bMiqWsjBlRqxPG104xgiWuvZDaE9PNmj+kBhIMVxJo
	 GO2BXdc5tAEkvScFjnI5JWWlrqR5FsyfkTpYnNye0KbKR0eiPURfBBXUZGG2vGHPlt
	 0+MoD/MNyTVARWKtpm6TRuJEK0NRiAF9X3R9LaESfEhKIQvMmZrEGVfYfuSFdMOEPv
	 7xfifhnvW0xNHxyAHAeasK7CoA+bE3sFBn916t9COaL4R5mUikVZM0Es0y/+G4VnJK
	 CWQL7E0Fb3uHQ==
Date: Wed, 1 Mar 2023 07:43:07 +0000
To: usrp-users@lists.ettus.com
From: henry.powell.xx@gmail.com
Message-ID: <PDmrDnsTcGVe9IXQDPSmm68JAbzFptc50o8eMuKxms@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTQtLQ-KDhOdRh46moKoCzKA-g2h_1uOk9HUB06r6_KZbw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: KB2DOH7W4AY25PX64YOAUHNSBZJLUTGQ
X-Message-ID-Hash: KB2DOH7W4AY25PX64YOAUHNSBZJLUTGQ
X-MailFrom: henry.powell.xx@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wrong Measurement Results
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KB2DOH7W4AY25PX64YOAUHNSBZJLUTGQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8455920346399571726=="

This is a multi-part message in MIME format.

--===============8455920346399571726==
Content-Type: multipart/alternative;
 boundary="b1_PDmrDnsTcGVe9IXQDPSmm68JAbzFptc50o8eMuKxms"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_PDmrDnsTcGVe9IXQDPSmm68JAbzFptc50o8eMuKxms
Content-Type: text/plain; charset=us-ascii

Hello, I am sharing how i did it. I set lo_offset=20e3 then i am changing center_frequency. Also thank you Marcus, have a nice day.

```
self.uhd_usrp_source_0.set_center_freq(uhd.tune_request(center_freq, rf_freq=center_freq-lo_offset,
                                                        rf_freq_policy=uhd.tune_request.POLICY_MANUAL), 0)
self.uhd_usrp_sink_0.set_center_freq(uhd.tune_request(center_freq, rf_freq=center_freq-lo_offset,
                                                      rf_freq_policy=uhd.tune_request.POLICY_MANUAL), 0)

```

--b1_PDmrDnsTcGVe9IXQDPSmm68JAbzFptc50o8eMuKxms
Content-Type: text/html; charset=us-ascii

<p>Hello, I am sharing how i did it. I set lo_offset=20e3 then i am changing center_frequency. Also thank you Marcus, have a nice day.</p><pre><code>self.uhd_usrp_source_0.set_center_freq(uhd.tune_request(center_freq, rf_freq=center_freq-lo_offset,
                                                        rf_freq_policy=uhd.tune_request.POLICY_MANUAL), 0)
self.uhd_usrp_sink_0.set_center_freq(uhd.tune_request(center_freq, rf_freq=center_freq-lo_offset,
                                                      rf_freq_policy=uhd.tune_request.POLICY_MANUAL), 0)

<br></code></pre>


--b1_PDmrDnsTcGVe9IXQDPSmm68JAbzFptc50o8eMuKxms--

--===============8455920346399571726==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8455920346399571726==--
