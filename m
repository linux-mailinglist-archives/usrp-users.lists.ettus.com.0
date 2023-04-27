Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB83E6F06D1
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 15:43:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 55B003842A9
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 09:43:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682603026; bh=R8IOGffFW1Us+cptEdVVBWakqbbzjdpJ6JCykcXyRSo=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=JvXXSsZahRRaOxdGjPAmxOtz315+zzOh7vuTTCHf/K3kgy03bUoinuiaMTeYKmdZs
	 VJAznvFa2movK2YFRL/gxHcAPbn156GARq0VKjVng/rp8xi2UjfOS4bR008JLjOJGs
	 mE+AOtqBUBP0F/bwO5QOiikh5DwDcSXdtZCm7K+g3opedxEtxsRoB72skw3iWzoV4E
	 kBR6vR4+w1uS3pw0BafFCW6B5AvShrqxcAaNyTSey2SKjs3pdLhb/7ZVVuZHPQWbpC
	 tOK9Cx6J8VoZFIhGNFnfsR9al/EnyWumhVkjDxwa+J32288T0U1Rq8N8hNIBD6wM+O
	 RAZA4aHXLbmOg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 53CCC383E9F
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 09:43:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682602984; bh=eiE8opyBd/cDFUvbENay6Oqg08Lws/1/lrKk0+XgMWk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=UOZBoF4OQhz9He+zeF74cTU1HgkuOyeEHk1w0tH8cgEDS5kOc+gC43hOoIwvNJYK2
	 LrIinYWnvfP5rsHuU6iHm46dE5jWzqoqSc7DHQLFPWFpIgWUQ2re9qKMurYZlznW1u
	 7wJpBHG/+T5YQNSXxyRugiGMuPamlbZUi2+chJY8zFnCmmML2B2pRgadCkOZd5PhHJ
	 MjlO4LLgs0/HQ/hkRQwAiRe/DkTWKJCfs5988BjcVdTTj7ME6nqOpjB+Ha3yjx2h8M
	 ODOuE+7a2BsWjQI/RNyPrEYpsPYiqgS1g0e9IE0K/dSlnVg9dN2b1n1dHKjeOQX7ke
	 MvLsaM7pUWb0A==
Date: Thu, 27 Apr 2023 13:43:04 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <Sur3Om42XkRJ9jnH0oz5kDxfr5MyBBoQRzUyBXQiPs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 0b6be8ca-e9d1-8e9f-22d0-200e36b506f6@gmail.com
MIME-Version: 1.0
Message-ID-Hash: TWAXY7BIXV3BEG5P6YG5NHUJCNF5BL74
X-Message-ID-Hash: TWAXY7BIXV3BEG5P6YG5NHUJCNF5BL74
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus N321 SFP streaming issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TWAXY7BIXV3BEG5P6YG5NHUJCNF5BL74/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2464199856141504183=="

This is a multi-part message in MIME format.

--===============2464199856141504183==
Content-Type: multipart/alternative;
 boundary="b1_Sur3Om42XkRJ9jnH0oz5kDxfr5MyBBoQRzUyBXQiPs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Sur3Om42XkRJ9jnH0oz5kDxfr5MyBBoQRzUyBXQiPs
Content-Type: text/plain; charset=us-ascii

uhd_usrp_probe --args addr=192.168.1.151 successfully probes the n321

uhd_usrp_probe --args addr=192.168.20.2(or192.168.10.2) does not successfully probe the n321

--b1_Sur3Om42XkRJ9jnH0oz5kDxfr5MyBBoQRzUyBXQiPs
Content-Type: text/html; charset=us-ascii

<p>uhd_usrp_probe --args addr=192.168.1.151 successfully probes the n321</p><p>uhd_usrp_probe --args addr=192.168.20.2(or192.168.10.2) does not successfully probe the n321</p>


--b1_Sur3Om42XkRJ9jnH0oz5kDxfr5MyBBoQRzUyBXQiPs--

--===============2464199856141504183==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2464199856141504183==--
