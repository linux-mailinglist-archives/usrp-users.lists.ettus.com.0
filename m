Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5104C6313A0
	for <lists+usrp-users@lfdr.de>; Sun, 20 Nov 2022 12:23:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 19ABA3843F5
	for <lists+usrp-users@lfdr.de>; Sun, 20 Nov 2022 06:23:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668943420; bh=4YcyCWnoAXQQ7QKb6eH7Eu8KKOnAit2X3Et1wUxitdg=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=cZqHxTfsFaJIWDFvZPdWk6waBF3RdHwhGiM9US9luD+9njZIBfHGzeWfzDPnH/N5I
	 ocHWjDtmjxFYediQOk0iKDb8DdC70YUA7PE+NPli7RtYmPI760kOay/Svep/aQaylC
	 iiGh9t2/CGpv7uZMvX8g210iwlNjAwHhSyB9t+rpjDExhkw8HUatZh6ze7mG+8aJ5s
	 oE6fgOzRr29YdaxKoYmNyrUAr0W+9921Wy1PmqBYQh5EHBJLnrTClYYGoIZq9vrHVB
	 4+MiR1kvPyQ9OLGpwi/TtpsDWFzGQITJNujW0amSB9xjUM3aNYKQ8cQf2UhEfge23c
	 MgjLJk6+f0MVQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 402AC383D56
	for <usrp-users@lists.ettus.com>; Sun, 20 Nov 2022 06:22:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668943368; bh=r/OO/lZgRM67z5BBARkKu8eLXnWjqC601FVoqUahBy4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=adEhHX7vmvUkPyfC6SyVX7sw0zAxX2Kl+koo7ZdTy3/Vrz6vgt2E6AHbmfjkjZMNF
	 lYquB/oKinmPhDzCUUsZx4yZ9NEERgN5pHLQmZ89as5tD5n4GiXTO86yY1/m7TTpPL
	 X9PCieT8fmPFCvFAVQvw7uis9yRnDRDc7iYxaSrhZEOTBr639GF5mqstQQ/x04NQss
	 fn7dtkIniuFUDR/6OOLY5N6gYAuq8++8+opbqL/pp/MyVMu/M4X91LqwUeFKUVxuzY
	 mZ6HwkC4vfAuqpZ13Xc1imFV9IuFj8YGiOb8BlHArYda3CMaYTwEZPAoRkhjdidHZc
	 UouCtGjPvfabQ==
Date: Sun, 20 Nov 2022 11:22:48 +0000
To: usrp-users@lists.ettus.com
From: siddsubra@gmail.com
Message-ID: <6Q1xV2xZqtcJcLDlSOtOOjWt3x19BJbLqQ73Qoh5w@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: a664a3a7-b59c-c1d7-54f5-608fa3642d03@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 2STAYY7ZT3E3IKZ34PDHLMMWFZKWASG2
X-Message-ID-Hash: 2STAYY7ZT3E3IKZ34PDHLMMWFZKWASG2
X-MailFrom: siddsubra@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Jackson Labs LC_XO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2STAYY7ZT3E3IKZ34PDHLMMWFZKWASG2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8380477061625314706=="

This is a multi-part message in MIME format.

--===============8380477061625314706==
Content-Type: multipart/alternative;
 boundary="b1_6Q1xV2xZqtcJcLDlSOtOOjWt3x19BJbLqQ73Qoh5w"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_6Q1xV2xZqtcJcLDlSOtOOjWt3x19BJbLqQ73Qoh5w
Content-Type: text/plain; charset=us-ascii

Would the modified firmware present any serious differences that prevent it from being used with USRPs/UHD?

--b1_6Q1xV2xZqtcJcLDlSOtOOjWt3x19BJbLqQ73Qoh5w
Content-Type: text/html; charset=us-ascii

<p>Would the modified firmware present any serious differences that prevent it from being used with USRPs/UHD?</p>


--b1_6Q1xV2xZqtcJcLDlSOtOOjWt3x19BJbLqQ73Qoh5w--

--===============8380477061625314706==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8380477061625314706==--
