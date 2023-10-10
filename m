Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 586AD7BFB18
	for <lists+usrp-users@lfdr.de>; Tue, 10 Oct 2023 14:19:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 04F9E3849F5
	for <lists+usrp-users@lfdr.de>; Tue, 10 Oct 2023 08:19:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696940377; bh=1oSV3mbdfP118/JEZ/aeLrTBJILeD31Jh6eAkCr1NSs=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0aUCeOHozZ2PARKkl2bh9fvYyra75fp7p75v5g+wV0htJc5Fw5srrKLEMznm1NSzI
	 zC3ODw9bpQigcDTexW9i3ZSixfFippT2ltDC5OuX0ot0qb3oCX4AL0fWCKry/G1pwk
	 9UWK0lapMJWr5trCpOpkez8Bbj3q8W+VckebasePI8ZhvXbG0XgAY5BOusUEjQDv6F
	 Pq/fYf7XBKGljv8zB+ddRBT4JEnxoxlMRhlVy1weL53IJb86qjYpC7C0GUz42+tlCw
	 yh2QO4sXGQkbxNf6j0dlnabkgpAm5rANpXzn6Oe/3aMcs+AAYK/sR7Ub3eB2Hpebs8
	 a+XguUUSPbLBw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 02E623845DF
	for <usrp-users@lists.ettus.com>; Tue, 10 Oct 2023 08:18:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696940337; bh=oI+/3ov6Bh1UKknbBwR/GmjL81ZNIwHlXDwKc5M/18U=;
	h=Date:To:From:Subject:From;
	b=jSJfIDxcPoA4ZAZ2+6W95aeAlFa2Dg43Aqb3z0bDo0C9r16ogzZ67sdUpUhIm4NLm
	 ajNleD/Sbu01M9MYaA1UuIKnpEDhPK2n9e0nsAKq3jchkomzaQJ8k53pNxk1VF0Sxg
	 Gbvl1q5QjiLsmM8hY7+myZV/hC1i3t8y56RAOOVjkUy7pnm5a/eX2Nl6HEeEDJOP4C
	 pwZ930O2Y8TzFJFjdU+Krp7krAdDCIbdrmnu3mUuyLdE0eRqC30eFs9c1f4yP7MAlU
	 XLG+ITH724buM0kIxkbxeMt0j0JRSexyeh1Vw5xlR+y9DaqVVzAE8STWyOIed6ylvY
	 CUMmBgEW6kzdw==
Date: Tue, 10 Oct 2023 12:18:57 +0000
To: usrp-users@lists.ettus.com
From: adri96roll@gmail.com
Message-ID: <44KOO8DxRyYMwQ7Lvs6MUkXW4X0jZTqVAIQl8l2ofc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 5RIDF2NTHW7WG673FHPBT4MWNHSMQONS
X-Message-ID-Hash: 5RIDF2NTHW7WG673FHPBT4MWNHSMQONS
X-MailFrom: adri96roll@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNOC TB
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5RIDF2NTHW7WG673FHPBT4MWNHSMQONS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3837160534929185050=="

This is a multi-part message in MIME format.

--===============3837160534929185050==
Content-Type: multipart/alternative;
 boundary="b1_44KOO8DxRyYMwQ7Lvs6MUkXW4X0jZTqVAIQl8l2ofc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_44KOO8DxRyYMwQ7Lvs6MUkXW4X0jZTqVAIQl8l2ofc
Content-Type: text/plain; charset=us-ascii

Hi every one,

I would like to use the rfnoc testbench but with my own signals and remove this condition:

\
`` `ASSERT_ERROR( ``

`          sample_out == sample_in,`

`          $sformatf("Sample %4d, received 0x%08X, expected 0x%08X",`

`                    i, sample_out, sample_in));`

In conclusion, I would like to read the inputs from one file and write the output to another.

Is it possible with the configuration of the testbench?

Thanks in advance

--b1_44KOO8DxRyYMwQ7Lvs6MUkXW4X0jZTqVAIQl8l2ofc
Content-Type: text/html; charset=us-ascii

<p>Hi every one,</p><p><br></p><p>I would like to use the rfnoc testbench but with my own signals and remove this condition:</p><p><br><code>`ASSERT_ERROR(</code></p><p><code>          sample_out == sample_in,</code></p><p><code>          $sformatf("Sample %4d, received 0x%08X, expected 0x%08X",</code></p><p><code>                    i, sample_out, sample_in));</code></p><p>In conclusion, I would like to read the inputs from one file and write the output to another.</p><p><br></p><p>Is it possible with the configuration of the testbench?</p><p><br></p><p>Thanks in advance</p>


--b1_44KOO8DxRyYMwQ7Lvs6MUkXW4X0jZTqVAIQl8l2ofc--

--===============3837160534929185050==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3837160534929185050==--
