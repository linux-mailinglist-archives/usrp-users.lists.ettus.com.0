Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5539DA34F39
	for <lists+usrp-users@lfdr.de>; Thu, 13 Feb 2025 21:17:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 228D8385E1A
	for <lists+usrp-users@lfdr.de>; Thu, 13 Feb 2025 15:17:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739477820; bh=hGjhAQfvoV/5B4brSEcyHkZUga9wLuUbVrmMwnC2ovA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=y/OIaAJXqEzGbSECRZ62qCfebxFXeoc/uYbNGSxzewlMdA5M9YlE7fGsXghFLT8k8
	 nOgAyC/VCU4Vu5qPzQTcevGlr7ax1fGw5zZL7ggS4WDYLmZZ1ysiP4DcUBnGOk1tP8
	 bkPSvXwf6KB5i5ZaHnRhvlx7p5vD+Mnk7Vv+hCDASv56PdBl4OsEYWxxzNnTlnfGGY
	 OekLh/msFlOmmJ6Rm8ywWQ2e86YLZauyZWPb1N3jlnIEhCDQ4SnZVUE6+Bx/9u9jBO
	 XoxonrENMk7xrLO+htRE3GAxPEo4aOcQVW/AFg/VEpNpfg9gZgnL0NKDnAi1ZKfzH2
	 g+I+WCGoMzMmg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EFBB8385E19
	for <usrp-users@lists.ettus.com>; Thu, 13 Feb 2025 15:16:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739477774; bh=o+AE74h1hhQxCdZX+PEp7KC0mAvqiPASE5ynOT1ZqP4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=lmJXU4tR52DxzPWut/NZliW8KM+dX2Mu07tT06v0UDSUhwILO8kqnwSdJznh3sieO
	 1RuA38jQaWUrh19bGrVZCPLme+CyNV+GBTCSjtnLPs7lfEG+q3YTeyeYZ+eUg4fM+j
	 ix+SR+A9y+o8bawe3tkm+hY+imK+ooaTQr2qikmHUVmdXSFwObf5nP9gb/3tfodox7
	 6Vp/4KIKCggjGGbMc7fTMp3fH6ijS+j/RcleGs196sN8eAZifncUQPpzZ72Gdk6q4z
	 yYEEEHe6IU2E4uHEFRX2+wjOUgJHGlVI4kRMbQYcAg0IiVEZ812FhZscWH9gwg/pN8
	 D49tV0fMOkekw==
Date: Thu, 13 Feb 2025 20:16:13 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <t5XM0SPgDq4GtQkEsa3p8w3Q8ZboseLEq4aYivL6q4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A7E=4-5wW-5K7_Mn6D=+ungwLvYPhb_6SGdnxmT33unXg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: E7PKB5KPZJFLBLWZYRRZ4CORR7MH6PB5
X-Message-ID-Hash: E7PKB5KPZJFLBLWZYRRZ4CORR7MH6PB5
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E7PKB5KPZJFLBLWZYRRZ4CORR7MH6PB5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0450610295060588357=="

This is a multi-part message in MIME format.

--===============0450610295060588357==
Content-Type: multipart/alternative;
 boundary="b1_t5XM0SPgDq4GtQkEsa3p8w3Q8ZboseLEq4aYivL6q4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_t5XM0SPgDq4GtQkEsa3p8w3Q8ZboseLEq4aYivL6q4
Content-Type: text/plain; charset=us-ascii

Hi Martin

Thank your for your reply.

This is a software question, related to register peek and poke.  For example, if a register read (via ctrlport_endpoint_impl::peek32) is performed, is there a chance that the software can block (or get stuck)?  

Note: I am using UHD-4.7

kind regards,

Marino

--b1_t5XM0SPgDq4GtQkEsa3p8w3Q8ZboseLEq4aYivL6q4
Content-Type: text/html; charset=us-ascii

<p>Hi Martin</p><p>Thank your for your reply.</p><p>This is a software question, related to register peek and poke.  For example, if a register read (via ctrlport_endpoint_impl::peek32) is performed, is there a chance that the software can block (or get stuck)?  </p><p>Note: I am using UHD-4.7</p><p>kind regards,</p><p>Marino</p><p><br></p><p><br></p><p><br></p>


--b1_t5XM0SPgDq4GtQkEsa3p8w3Q8ZboseLEq4aYivL6q4--

--===============0450610295060588357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0450610295060588357==--
