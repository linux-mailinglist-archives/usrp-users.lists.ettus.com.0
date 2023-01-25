Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6586567B908
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jan 2023 19:11:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A4BD03842FD
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jan 2023 13:11:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674670283; bh=YWMFOTg72zf2gbMLzKLgIqGylQJvBuee6xxCMAwInhs=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=jOA6PBTVBdLuHOY98Yt7tSHauXvtydEToTwSUsHIgLiEo6WqlTwenNp+y21Ff6Ujs
	 CddDFUyKOobXgqzA2YPvcmZOh04F4XFUzbh/XkUkkU8c0xq0UJzTqvb2RULhL+v+SS
	 XqiJaGarsbN4SdTknou/Tb7RpN0HQ5yz9dzLefG1oXMPKSyXJV9DnlVAQQThPa9+OZ
	 Shr9JldNwKIreVn/ccyz51krfAUhHf0dbLSYQ0ZrIZvn6c4djEuD+a0hE2mQ0OHIE4
	 aAxohvVrsd1VMSbsEZuL1+xbwivYRLgQ0/yEqETv29VABbsRRnUvX7CJHT9A0c2J3W
	 Sw/6MGQkysEYg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3F59B384281
	for <usrp-users@lists.ettus.com>; Wed, 25 Jan 2023 13:10:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674670232; bh=MGYssES4xgLjhiYBdLXaoMUdbq/CH+yG0UtdWt07KBc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=dRXNVEXlroT+DlwXhKC42gRwT8E3wv5TQsqyrfZAAGw9Jc0doWfS+JEGntntAHhYy
	 h04k7XGUhdu9rncvMLPlzyJMBydRXCCnQd/xADpKyrWaMKpdGXtoNcKr/cTzmXAmQy
	 DKhtVgmh09w71udBc2m/thAOCtAS/p0pediBi9R9dJPNh5YaJ9iWdMM9SAdNsY7OIE
	 42pHqYu5VbvARzgb66ocseI3IZgwgOHYsy1OCh/Mypyd8HZCMNe+tE6OX+hCE0kVRw
	 +acjzxMU0oeWZuhsdrk9qMeXi0OMXRx67zyPZ+2CcR/ph71wxvHt9kvPGL1+Ob0iUZ
	 ed0yKjiWl36kA==
Date: Wed, 25 Jan 2023 18:10:32 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <vQf8lJzwYBnGEd7aA7DOs9vWtXsjnIME7j266t3YZ4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 2e5069d0-778e-2364-6741-8fbd6115480b@gmail.com
MIME-Version: 1.0
Message-ID-Hash: AWHWIW6KQKM6R6XA3QAO363FVRCZHBRT
X-Message-ID-Hash: AWHWIW6KQKM6R6XA3QAO363FVRCZHBRT
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Parsing dat file produced by rfnoc_rx_to_file
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AWHWIW6KQKM6R6XA3QAO363FVRCZHBRT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7522240709365849177=="

This is a multi-part message in MIME format.

--===============7522240709365849177==
Content-Type: multipart/alternative;
 boundary="b1_vQf8lJzwYBnGEd7aA7DOs9vWtXsjnIME7j266t3YZ4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_vQf8lJzwYBnGEd7aA7DOs9vWtXsjnIME7j266t3YZ4
Content-Type: text/plain; charset=us-ascii

This was the full line ./rfnoc_rx_to_file --freq 2.4e3 --rate 1e6 --duration 3, so my guess is by default it is using sc16. However, I would like to know the format of the bitstream itself(i.e what bits are associated with I,Q,etc along the bitstream).

--b1_vQf8lJzwYBnGEd7aA7DOs9vWtXsjnIME7j266t3YZ4
Content-Type: text/html; charset=us-ascii

<p>This was the full line ./rfnoc_rx_to_file --freq 2.4e3 --rate 1e6 --duration 3, so my guess is by default it is using sc16. However, I would like to know the format of the bitstream itself(i.e what bits are associated with I,Q,etc along the bitstream).</p>


--b1_vQf8lJzwYBnGEd7aA7DOs9vWtXsjnIME7j266t3YZ4--

--===============7522240709365849177==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7522240709365849177==--
