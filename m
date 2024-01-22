Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BF9836D97
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jan 2024 18:35:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6BFED384C5D
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jan 2024 12:35:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705944906; bh=8vhvqxKi4XwITASJuTUfjGdMuPToAxnYXb/o1SSAOwI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=W+PWq90uHsKeSLRt2n39jKyMC4/YCjtRHXZcBFPMyzXQ+YEFBItbkAWUQJ50upm4N
	 xuCOteMMxoJarHJm6qsYuXgWYjrJ9mSvColTTGmATM1Buu/IgddpID3Z4mFavNofdg
	 KId/vn+GWcHvZhNUl/AbzcEOYiIFIrDB3G+/kn5l8nTZ7hs/yzWF8ELNlKGDqgfYsM
	 wR/ZfsWG5FP+YRrV2a0w2GTHmF0smfhuwg6jAbzXabavQhEbujwXx+kgKwPQ+kmFug
	 C3jicyIdYgF5Bm6ESyJn+S2FRxIsdbHBWlWYyAWwWok/bPQIaPQ03pMfqOuktd4ePf
	 ExBWao1kNO8rA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BC854384C4B
	for <usrp-users@lists.ettus.com>; Mon, 22 Jan 2024 12:34:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705944898; bh=rFxr60fFduOZWnTFAAdtvVdGfmnBqE++YL0O3UnMiPQ=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=P50CpUPwNEdlBfJNQFY2d/kfTlISzfQPqIZgBDvmNASsHfTMUVJKDCPrWshrem0+d
	 GAsMxwxLE9uinKNv/f2G+xtslmCyXfmvlyx5tch/xg08W7t7/iA1mb5FZZqzSFTZ6q
	 8heBEmIrOxqibCTXh9mwcEKtczolKdJQ7ZEfrVSH8Uz3iTMWT+0cq3DVpaH2veVDwU
	 rrmiQYnLd1swR4ZcF9m5+DzAfk1TnjFw+16z8TGL7vZpJ42g4xgd53o2TzC4c4e8IZ
	 t/whPPjq5uq6WrOBDwJj7BDEi9vZ6Ix9NfUBGgHwOVKyPWlqbqX7gx6clZvQPZuxtJ
	 tFuR+T8wyCi/g==
Date: Mon, 22 Jan 2024 17:34:58 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <3B6yP8wJVzCbjosbO7mIOogpNPkaF9eaAFREPzHTr4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: swWTYYcPZtDHx9LYT4fqpgyzBpAF9lcOEwYgePOhE@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: UEWIGAK4XF4EITEYMYWP627BSUCLYCZD
X-Message-ID-Hash: UEWIGAK4XF4EITEYMYWP627BSUCLYCZD
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting "S" error when using dpdk and replay block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UEWIGAK4XF4EITEYMYWP627BSUCLYCZD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2404176525320903841=="

This is a multi-part message in MIME format.

--===============2404176525320903841==
Content-Type: multipart/alternative;
 boundary="b1_3B6yP8wJVzCbjosbO7mIOogpNPkaF9eaAFREPzHTr4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_3B6yP8wJVzCbjosbO7mIOogpNPkaF9eaAFREPzHTr4
Content-Type: text/plain; charset=us-ascii

It seems like the issue has come back, which is a bit strange.

Is there a way natively in the UHD software to send samples to the replay block without dpdk then recieve samples with dpdk? If so, how? In my application the replay and radio block plays continuously.

--b1_3B6yP8wJVzCbjosbO7mIOogpNPkaF9eaAFREPzHTr4
Content-Type: text/html; charset=us-ascii

<p>It seems like the issue has come back, which is a bit strange.</p><p><br></p><p>Is there a way natively in the UHD software to send samples to the replay block without dpdk then recieve samples with dpdk? If so, how? In my application the replay and radio block plays continuously.</p>


--b1_3B6yP8wJVzCbjosbO7mIOogpNPkaF9eaAFREPzHTr4--

--===============2404176525320903841==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2404176525320903841==--
