Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6758574BEE9
	for <lists+usrp-users@lfdr.de>; Sat,  8 Jul 2023 21:16:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EDB85380989
	for <lists+usrp-users@lfdr.de>; Sat,  8 Jul 2023 15:16:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688843784; bh=FuZBt0JURKwzMKLmLEOgMThFcs0ktm+8x836bD+U1K4=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=j1L92sYQdbr3eM4wjgoD8k6yDkw+k+o9m1ljiOXHX6CMYDRjT4k+lGzI7V9dSGv4L
	 APvM7F9Ds9TYTp/PM6kCZe8KofDmIrO3Ypfr/VH+ylSxnZ3qTRD5qUZElaxISdyrLD
	 Qw1uOyJio1u3Zbf030SLDDPThjkXU7GpRkYdXaEqCWqKNgVsDyi/FzAtyfEJOhgGKR
	 KsWxlEYv+sWISwnYVX4CdiwwfI2TrKeFPxTMKhyYukUmLzUFJ2d7G8+OlLZRgKrpx+
	 HUou3oSoiFlK2qbffNztKS17LHLVQpsugRtOco1QZxQ4JWnQAxa62PDdj3YKB/bVT3
	 ISSoTygmypu8A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CCB5D3844F1
	for <usrp-users@lists.ettus.com>; Sat,  8 Jul 2023 15:15:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688843730; bh=MmhtnEleiBjenonmPgJdSIJuw6xNJa2janvVGijPFGQ=;
	h=Date:To:From:Subject:From;
	b=DRd9pZqT0Zwf5pUcHvyocBer1aIhRfTIKf7NwMwVXP1yWARKcupBV63BX8Xic9HYZ
	 WqIV4wOV+m/KmFCfgI94f5dtR4CQP2websQ85Ghm8IDevnLYfv08/AiC40wWRglxWm
	 zh2l0f5swN5fyWAOk6yHCkWsNMTDQoUGhuENBcqSghFjUoqv0GtMmvegGsfabQzQXv
	 ZsOET/uIhKmTBWmWQbY5VIt1SyqANr4Pm8MiQrg/0EQDxtGQYQzkGeLHe0YOIJKtqL
	 TYEuA8cMzmKkhxQBQsUHXQPw1vkY4lJAGXL74aDCHLfifpabS1qYg6Yq3N0X7eWaDy
	 /zGJ4cSWg+nXg==
Date: Sat, 8 Jul 2023 19:15:30 +0000
To: usrp-users@lists.ettus.com
From: adrian.campos@integrasys-sa.com
Message-ID: <yIUxl7jV9U50saIYD5vcLAhwizkvy5wRsa6IOCZvbQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 2SFST7H3RJHCVPCWJRZQKL6HKI7C2USL
X-Message-ID-Hash: 2SFST7H3RJHCVPCWJRZQKL6HKI7C2USL
X-MailFrom: adrian.campos@integrasys-sa.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] M_Payload to S_Payload
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2SFST7H3RJHCVPCWJRZQKL6HKI7C2USL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2584822346245391647=="

This is a multi-part message in MIME format.

--===============2584822346245391647==
Content-Type: multipart/alternative;
 boundary="b1_yIUxl7jV9U50saIYD5vcLAhwizkvy5wRsa6IOCZvbQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_yIUxl7jV9U50saIYD5vcLAhwizkvy5wRsa6IOCZvbQ
Content-Type: text/plain; charset=us-ascii

Hi every one, 

When i created a new rfnoc, always the m_in_payload_ready is assigned by s_out_payload_valid. However, i want to separeted this. I want to get data at a different rate. To do this I created an FPGA that controls the ready and validation of s_payload like the m_ready but when I test it it doesn't pull any data. I guess I would have to maybe also the context part or I don't know. I hope you can help me.

Thanks in advance

--b1_yIUxl7jV9U50saIYD5vcLAhwizkvy5wRsa6IOCZvbQ
Content-Type: text/html; charset=us-ascii

<p>Hi every one, </p><p><br></p><p>When i created a new rfnoc, always the m_in_payload_ready is assigned by s_out_payload_valid. However, i want to separeted this. I want to get data at a different rate. To do this I created an FPGA that controls the ready and validation of s_payload like the m_ready but when I test it it doesn't pull any data. I guess I would have to maybe also the context part or I don't know. I hope you can help me.</p><p>Thanks in advance</p>


--b1_yIUxl7jV9U50saIYD5vcLAhwizkvy5wRsa6IOCZvbQ--

--===============2584822346245391647==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2584822346245391647==--
