Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD867656CB6
	for <lists+usrp-users@lfdr.de>; Tue, 27 Dec 2022 17:00:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9A256383AF9
	for <lists+usrp-users@lfdr.de>; Tue, 27 Dec 2022 11:00:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672156834; bh=KTDfMQ3ma1JSPaRwB8TqZNxAkFoRe79fn69Wurhv5SQ=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=qMPmnHID6V487Z9d9m83qS2QDtYlVN+29hREDCrgfll/rNQylAi0KnP6l1CijQW6f
	 FqXBYP4UDh6cyOU4VvbLXv4g7eiK92lGttWndJ8HmPZfeWODGM8IeISiHZh6XKnacv
	 1khG3r6CG0rDZb+BoOukpJ5RLBBB+/WXCacSG2sC0tKNfar0G7fWriYaKrtF1YQgHf
	 B8TdLV+CC+FBehkl9zLA5CL+5jI4kSAHZLa4nRhNnDiNjjYDSJKkBJ0v3hcXW8Pvxa
	 h0sqbJHoimv1PWXwSvk23moPSFARWV4lsa1gqw45P0KsfTfZnH4A/pPE/4a1bv//ZZ
	 THQd2yUSPN0fg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6798138091A
	for <usrp-users@lists.ettus.com>; Tue, 27 Dec 2022 10:59:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672156750; bh=cH/yDpIgldNRtwxSOhi88SwbE+aY5VMMHXcexJZYXKc=;
	h=Date:To:From:Subject:From;
	b=H+/TiIyjkjcQFBOvWw6RBqIjJL1XjgKEhauYshPCl1+NgDEfm6yHCZvT6YzBe+91l
	 6CjxUM3sZs3dkikZAu8amgU3VnNZpO8SfZe85VagpQAfulSYg8WFt+CPrs/nSlw1CV
	 G+o+SaK6nSptvyHvB6jvyqJ4vs+AkEIplOmq7s2L8XrX1CBN8+lnDRIsZMNxADAqSb
	 GibljpuzmVeaGXhsKjAcqzXHqh5zuFzd5q4o1hI3dD0WphDAw9dNpe/V7HPVO43YzS
	 TZ91H+mGvjbuN/VnS0GURvRKgdKu+zNkhUQW9k8rFqWSVjViLAs0Ia6nn82MycQ08A
	 LLn0VZk4/lfjQ==
Date: Tue, 27 Dec 2022 15:59:10 +0000
To: usrp-users@lists.ettus.com
From: henry.powell.xx@gmail.com
Message-ID: <wP1hakZ8Y3g5JYu346i583R2H5I6iNVZ59n2HIo7wE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: LMQTMER4SXWUSY3UJHXLR2J4WUYUP2E4
X-Message-ID-Hash: LMQTMER4SXWUSY3UJHXLR2J4WUYUP2E4
X-MailFrom: henry.powell.xx@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Device and Connection
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LMQTMER4SXWUSY3UJHXLR2J4WUYUP2E4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6039954182693923354=="

This is a multi-part message in MIME format.

--===============6039954182693923354==
Content-Type: multipart/alternative;
 boundary="b1_wP1hakZ8Y3g5JYu346i583R2H5I6iNVZ59n2HIo7wE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_wP1hakZ8Y3g5JYu346i583R2H5I6iNVZ59n2HIo7wE
Content-Type: text/plain; charset=us-ascii

Hello, I am curious about USRP and i found one from my friend. My device is USRP B200.

I want to ask how to embed code to USRP. Is there any ide for this? and Do i have to always run this usrp from usb cable.

My other trouble is i try to view changes from GNU Radio panel. I design Rx and Tx sides. I changed amlitude but there is no difference in signal level. This time usrp just connected with usb cable. I plugged adaptor then the led pin on card changed. It always light blue but when i plug adaptor it change to like orange. Then i try to plug just adaptor without usb cable. It doesnt work.

--b1_wP1hakZ8Y3g5JYu346i583R2H5I6iNVZ59n2HIo7wE
Content-Type: text/html; charset=us-ascii

<p>Hello, I am curious about USRP and i found one from my friend. My device is USRP B200.</p><p>I want to ask how to embed code to USRP. Is there any ide for this? and Do i have to always run this usrp from usb cable.</p><p>My other trouble is i try to view changes from GNU Radio panel. I design Rx and Tx sides. I changed amlitude but there is no difference in signal level. This time usrp just connected with usb cable. I plugged adaptor then the led pin on card changed. It always light blue but when i plug adaptor it change to like orange. Then i try to plug just adaptor without usb cable. It doesnt work. </p>


--b1_wP1hakZ8Y3g5JYu346i583R2H5I6iNVZ59n2HIo7wE--

--===============6039954182693923354==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6039954182693923354==--
