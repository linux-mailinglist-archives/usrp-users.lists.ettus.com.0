Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0807BA3E2
	for <lists+usrp-users@lfdr.de>; Thu,  5 Oct 2023 18:00:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 75C1638580A
	for <lists+usrp-users@lfdr.de>; Thu,  5 Oct 2023 12:00:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696521612; bh=BQRR0nTE1Ks6gIwPia0H4Qt82zUgh1yUyvOBAr66Znw=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=igBjQOpEdWg2I1scy3JnzKDkQrtggFTfPCgpIHFP5UeNIX8+JHfYvRkcJGiRF3npH
	 uECYQpDXujE7Ulj57P5mBiaDseXBx4ehLMAM3CT8sgfh6ktWzGd+htcVtX4B2alsty
	 RbN94J4Jib4Argcb4gTrQ8JQBZUwDDbppJoLvokYxwgms/mQF/JpYygdiXnVoJmtVb
	 /eBeZ6t4V9Mt89vVVtDucopjC5jrITQNGZ0zSh7/MzJipHGfpiy6JJZj8iMj7Wf4UL
	 iRW8t7FenNNIZ0mzyM8gqx09JL97MqL5h7Za7dw0MD7+jIzGrqX6v4Pn+KK1FoCx9f
	 q3OY+j5wLkSbg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5FE2B38567F
	for <usrp-users@lists.ettus.com>; Thu,  5 Oct 2023 11:59:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696521584; bh=pGgcN/7aY7DHcGs+Lud0+Z8t7FiSg+U2OqnbTyYmb1s=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ttVpvi1Hw6diTg+q+nWTgE+PvXzUIs1XAQbYZvNghFhmqZs7G7K4Vo+vv03n/mVXe
	 pAj2mEr53/GYM6k9aEAmvErMho/ucWuTPMnM1nkVQDwbDOUKq85TWuDEKvEvFcblG6
	 OgM7+znZ9Q032KZE6jQdUBlPCoKYPLBzFnQmrwURL9MjGaFgUObOeWRvthZBUllJc+
	 jZ0vyb8ziGXgkbuZUhddI+I9s7I/ANmvQKMBok6LQG7YaqODVNxUCqG6AD2ckjMjDt
	 wwXOPAdVnO4j4ll+YKmERd+EXKBPwsQzCggIxMLr+iaRk5tvNGGlWM63lt0t493bwi
	 7x0hPlmTlwzXg==
Date: Thu, 5 Oct 2023 15:59:44 +0000
To: usrp-users@lists.ettus.com
From: usama.khurram@hotmail.com
Message-ID: <i8dUAyn9XxrruS53poxdnFRv3hfXZSPOot5yXYLM2Q@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: xsjvd6L7WlNj5YG4BqDINkcFGIgukObDoJzOXQbw@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: HWRR4KEQRMCQLQVDDIKJUNKAASSLRCK3
X-Message-ID-Hash: HWRR4KEQRMCQLQVDDIKJUNKAASSLRCK3
X-MailFrom: usama.khurram@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus, USRP N310, MPM major compat number mismatch error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HWRR4KEQRMCQLQVDDIKJUNKAASSLRCK3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1947295206358928263=="

This is a multi-part message in MIME format.

--===============1947295206358928263==
Content-Type: multipart/alternative;
 boundary="b1_i8dUAyn9XxrruS53poxdnFRv3hfXZSPOot5yXYLM2Q"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_i8dUAyn9XxrruS53poxdnFRv3hfXZSPOot5yXYLM2Q
Content-Type: text/plain; charset=us-ascii

by the way I am not allowed to program USRP SD card, I am only allowed to downgrade it to lower version.

--b1_i8dUAyn9XxrruS53poxdnFRv3hfXZSPOot5yXYLM2Q
Content-Type: text/html; charset=us-ascii

<p>by the way I am not allowed to program USRP SD card, I am only allowed to downgrade it to lower version.</p>


--b1_i8dUAyn9XxrruS53poxdnFRv3hfXZSPOot5yXYLM2Q--

--===============1947295206358928263==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1947295206358928263==--
