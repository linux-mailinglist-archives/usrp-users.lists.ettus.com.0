Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EE7745B4C
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 13:38:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7E77C384092
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 07:38:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688384289; bh=UxKvf+PEU3IUlV5Qfri2feBWvOSFnLrUBOaqRzQ7vjw=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=A+Z6kXKDvKu8jGFpECxics1Klz+aspnMbruGGGlvHxU7wZEtEOe3YqCNta+sixu9O
	 WIxbmMzksxFFbkk8W5bd77gF8/5rbUfxHtpKQbd4xzqKjzBiFOZYlnU4Wr2UoDNXpF
	 BuMLtlXEYBkCEKSmahp+Cqj4WNzzc7RC8FK6FubisdEWVtADF4W7ZD28M9gHI56gjI
	 aIZDMnEvUKpR/SP1G+9EBGsNbfuNn0OsKVZzHD4GXmq8TDjbedI0uXrUqWrknOJgnG
	 c+AWnT6VeLRQnVGqXRKA0AJF9GbITjbIOcQ6oVyolxU8NlRYEqJyS1xW6dNBzcMtOO
	 T4VwogwakSyuQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B693F383E2D
	for <usrp-users@lists.ettus.com>; Mon,  3 Jul 2023 07:37:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688384266; bh=CAe/zB6WOZteS14A0zdFwufbUilSDaTKB/R3LOIIiuk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=z9No0yFBTGLpncveIhpkw/JXD1YWfljZpCV31oNLydWS8TWdNOzHtw3DMfBPUxjOM
	 XMhQc/+WQGxd8e8BYi5ZpStdAD1eznebD3cqDFcTWNg/sAQ5Kl1Ncjg/asduswmLl4
	 yiunQ0pmBwg8h2Bdx4Oiv01p3NGo24g9Vzrfy/2Sdy8/f9rMJrg3uNPZ16cPWLPkZo
	 kZ3tOE0hv+hR8RbQkUdpOHDsjmfau/D38ji5XcMnemSSd/AOtSsNnvcPeedgEzGNkg
	 FI1XxIC46y9YIvSSTgly+lW3GqGhP4PCU435BXOwBSWayhu66I2Oe/GhtjFpqCxP4b
	 EIScNhN3XdDGA==
Date: Mon, 3 Jul 2023 11:37:46 +0000
To: usrp-users@lists.ettus.com
From: jnunez@cud.uvigo.es
Message-ID: <M4ebPUdPvCWqA1lWcYJP8o9SmdZJ5HNFPSZd91nMLM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: EsarLqoVOAiZnhnUTSwkNe1S6diOUbQVAUTVty5s@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: Z3IMS7SUCNTQCZMRXFBAVLM7LD6E3CLZ
X-Message-ID-Hash: Z3IMS7SUCNTQCZMRXFBAVLM7LD6E3CLZ
X-MailFrom: jnunez@cud.uvigo.es
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Understanding time differences in rx_time
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z3IMS7SUCNTQCZMRXFBAVLM7LD6E3CLZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1846927280381745574=="

This is a multi-part message in MIME format.

--===============1846927280381745574==
Content-Type: multipart/alternative;
 boundary="b1_M4ebPUdPvCWqA1lWcYJP8o9SmdZJ5HNFPSZd91nMLM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_M4ebPUdPvCWqA1lWcYJP8o9SmdZJ5HNFPSZd91nMLM
Content-Type: text/plain; charset=us-ascii

Sorry, here is the diagram.

![](https://drive.google.com/file/d/1T5YFFmp3YnpAxYVjEgDRf2ald0NrdhDv/view?usp=sharing)![Diagram](https://drive.google.com/file/d/1T5YFFmp3YnpAxYVjEgDRf2ald0NrdhDv/view?usp=sharing)

--b1_M4ebPUdPvCWqA1lWcYJP8o9SmdZJ5HNFPSZd91nMLM
Content-Type: text/html; charset=us-ascii

<p>Sorry, here is the diagram.</p><p><img src="https://drive.google.com/file/d/1T5YFFmp3YnpAxYVjEgDRf2ald0NrdhDv/view?usp=sharing" alt="" title="" contenteditable="false" draggable="true"><img src="https://drive.google.com/file/d/1T5YFFmp3YnpAxYVjEgDRf2ald0NrdhDv/view?usp=sharing" alt="Diagram" title="" contenteditable="false" draggable="true" class="ProseMirror-selectednode"><br></p>


--b1_M4ebPUdPvCWqA1lWcYJP8o9SmdZJ5HNFPSZd91nMLM--

--===============1846927280381745574==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1846927280381745574==--
