Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 378609F2BA2
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 09:18:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C4B0D38578F
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 03:18:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734337106; bh=LSohdr62fNXPL6NveRozqEQHn06HJlKorBUx2LaihJo=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=mNs4T3a5Q2nt3mWZF7kgb/ytCwX7x3Yxe8PwRgQ/JpcTRZcnWjX/6u25ixUhnvxVb
	 SbFjTOgnbG34u2GIo5g5//Pd+LGL6GUqK7tsvv1PmkVjXJgkWYLHtDfX1SLzr2+F73
	 RqnxgHVfIX5x3lFE3ZG5X/+ClqrMmAgI/LjKlrFxWXPc4JKunC7YwR2SVzjCzoLLp8
	 i+ypg7pBW94f7r3gSyIMM1NxjiPKIj7kBW5U/j3t2prKyFEBo7aPhV+ywq3lqsflGJ
	 WH005H2zE2zc4y0PFFhTH243evPFKgcw8b9PFoSO7wSMRo8le4s4jDa7DzESLzpiVM
	 x5CaNW0+05WiA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8C0433854AA
	for <usrp-users@lists.ettus.com>; Mon, 16 Dec 2024 03:18:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734337091; bh=78yGebodlXNcMvLUth3HYy4JA+tzwohl1OZE/lhISxU=;
	h=Date:To:From:Subject:From;
	b=JxT8R5JPFs6tH7dJLvaIxypS1IsJBddAIsG6sAAtzatuhUSpp3yEk3duGjZpKkmUV
	 Dl1RhgPELjyrN9pS6DkTiRVwvHoqmeRX0JjPys6NpOFLEBReOnBBo/zTJ0QLphui9e
	 JAzwKdmDdsZSM7IvkFdKjOhYzZ4R+KAMQtiqBtaYH7z+PsoEMeE1ikG9UdCJMcbVHL
	 Sw/Fv9VA0tktYrkXlj3vMuRORfOJ63VvCMz/WTptouWRGXjGrRG0Q/dZXgJd7lo3BC
	 0SR1cC0Ud8QKy3FfKsf8yFz4iMjjVh6x6yIeArg86E05jEy5LZMxOyEo83jOhsNlEe
	 JMkJ6FlzfqUow==
Date: Mon, 16 Dec 2024 08:18:11 +0000
To: usrp-users@lists.ettus.com
From: yibindeng66@outlook.com
Message-ID: <0GeW5wQELK8LawMFObDDGAZ4rNe6MTTrdfErOIxZpNk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: XWKVUTUUVMX46TWA72UTBS6WFFBYF5HC
X-Message-ID-Hash: XWKVUTUUVMX46TWA72UTBS6WFFBYF5HC
X-MailFrom: yibindeng66@outlook.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N300 device not found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XWKVUTUUVMX46TWA72UTBS6WFFBYF5HC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8097419031414069869=="

This is a multi-part message in MIME format.

--===============8097419031414069869==
Content-Type: multipart/alternative;
 boundary="b1_0GeW5wQELK8LawMFObDDGAZ4rNe6MTTrdfErOIxZpNk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_0GeW5wQELK8LawMFObDDGAZ4rNe6MTTrdfErOIxZpNk
Content-Type: text/plain; charset=us-ascii

Hi all,

I encountered some issues while configuring the N300. The N300 responds to my ping requests, but the host cannot find the device using uhd_find_devices while correctly detecting b210 devices. 

I referred to this post on StackOverflow (https://stackoverflow.com/questions/33304828/when-trying-to-use-my-usrp-in-gnu-radio-i-get-a-no-devices-found-for?rq=1) but adding parameters and modifying the firewall settings did not resolve the issue. 

Configurations: MTU is manually set to 1500 bytes, IP address is 192.168.10.2, netmask is 255.255.255.0, and my UHD version is 4.7.

--b1_0GeW5wQELK8LawMFObDDGAZ4rNe6MTTrdfErOIxZpNk
Content-Type: text/html; charset=us-ascii

<p>Hi all,</p><p>I encountered some issues while configuring the N300. The N300 responds to my ping requests, but the host cannot find the device using uhd_find_devices while correctly detecting b210 devices. </p><p>I referred to this post on StackOverflow (https://stackoverflow.com/questions/33304828/when-trying-to-use-my-usrp-in-gnu-radio-i-get-a-no-devices-found-for?rq=1) but adding parameters and modifying the firewall settings did not resolve the issue. </p><p>Configurations: MTU is manually set to 1500 bytes, IP address is 192.168.10.2, netmask is 255.255.255.0, and my UHD version is 4.7.</p><p><br></p>


--b1_0GeW5wQELK8LawMFObDDGAZ4rNe6MTTrdfErOIxZpNk--

--===============8097419031414069869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8097419031414069869==--
