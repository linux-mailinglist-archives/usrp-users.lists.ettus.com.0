Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB809FBD3A
	for <lists+usrp-users@lfdr.de>; Tue, 24 Dec 2024 13:19:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B72F738584A
	for <lists+usrp-users@lfdr.de>; Tue, 24 Dec 2024 07:19:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1735042765; bh=csj182r11+f3/jwMLIuSVOsjmWGhknilK6VQVReOG+0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=cVPIRfJHgtxNsMBkIhoWam9xNZ5sq+VGGq1N1Y4UlN96sI91MwPUdyNn7fSC4AnjV
	 pjUfaI1/eFp06tjAXKO7Nbwq0xUoDL25h4UuEi3wJoZ5zhzkLEELN/cXPi6wsmDBb3
	 UH4st33LTk3OmBGJltvhmWvVty2SEXzb05Y+ZJaSz9+S8s7H3cFYZvdvJDZDnGP7m4
	 GNjMK+aj+NHo5RZJ8mQvlv6wIM662r9Q3o/VtgKDvBkHkaiGTxeovkvIdVFVE9yd2j
	 e1IZgMrfZfKcMUzZf0rfSKxAXiiZwtZHvkCj19ieOphQ74axQabYEf7Tz62PY7wnOS
	 OyqDlnp7no1xg==
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DA82D3857E9
	for <usrp-users@lists.ettus.com>; Tue, 24 Dec 2024 07:19:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1735042760; bh=y1GYrpQqhGmgtnoSytASjazPcc7g4gcwMqkb7il+h1M=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=x8841n50gY0kuSiJ5ZgMRGNsRw7lOqNjbKYe19A83qkbOn+RAAQr5TteGQc64weiu
	 ijR+RG/DhqtwF61CE0dJosw0N603Dg35bNl/S5LdHMv69NE0+rTYj2GZrTAnlvbNMm
	 YXHQf4XOnp4/Dz/Eu5rXXrwmznOvTJwBnN7ZlpmcZ70exwkMAGq81BXBcrjM3QenF8
	 A/bwJOaFVQSJD35udseYpKyj9LMUaID81F1puS9z7kUXyBM62FwxR4eetlqaF47HST
	 sIei8lxEwon8Jsy5zLyMQWIH+U1koVlfA6xLVwRs5xrB7wmpfaBb4ML2RK2tfSlRJH
	 MpbvSPOREnynw==
Date: Tue, 24 Dec 2024 12:19:20 +0000
To: usrp-users@lists.ettus.com
From: elkana443@gmail.com
Message-ID: <uxtaNudbPyFG25odjZ6QsCBW5FQhqq8ZlHXc7A1RSI@mm2.emwd.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: Db9UUeiRsublnFKxAI359TDFxCairBAR8nM3wOY@mm2.emwd.com
MIME-Version: 1.0
Message-ID-Hash: QPPNWRU7ACJQKPEP5M7EVPYT43SA5ZIA
X-Message-ID-Hash: QPPNWRU7ACJQKPEP5M7EVPYT43SA5ZIA
X-MailFrom: elkana443@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help Needed: Issues Implementing RFNoC Example with UHD 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QPPNWRU7ACJQKPEP5M7EVPYT43SA5ZIA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8023130644443833072=="

This is a multi-part message in MIME format.

--===============8023130644443833072==
Content-Type: multipart/alternative;
 boundary="b1_uxtaNudbPyFG25odjZ6QsCBW5FQhqq8ZlHXc7A1RSI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_uxtaNudbPyFG25odjZ6QsCBW5FQhqq8ZlHXc7A1RSI
Content-Type: text/plain; charset=us-ascii

Hi, I successfully managed to implement the example block.\
Now, I would like to create my own example block. I'm working on the master version, as per your recommendation.\
Is there any documentation available for this process?

I tried to use the following command:

```
python3 <repo>/host/utils/rfnoc_blocktool/rfnoc_create_verilog.py -c ~/rfnoc-demo/blocks/demo.yml -d ~/rfnoc-demo/fpga/rfnoc_block_demo  
```

However, I noticed that this file does not exist in this version. Is there an alternative way to achieve this?

I would greatly appreciate any documentation or explanation on how to build a new block for RFNoC.

--b1_uxtaNudbPyFG25odjZ6QsCBW5FQhqq8ZlHXc7A1RSI
Content-Type: text/html; charset=us-ascii

<p>Hi, I successfully managed to implement the example block.<br>Now, I would like to create my own example block. I'm working on the master version, as per your recommendation.<br>Is there any documentation available for this process?</p><p>I tried to use the following command:</p><pre><code>python3 &lt;repo&gt;/host/utils/rfnoc_blocktool/rfnoc_create_verilog.py -c ~/rfnoc-demo/blocks/demo.yml -d ~/rfnoc-demo/fpga/rfnoc_block_demo  
<br></code></pre><p>However, I noticed that this file does not exist in this version. Is there an alternative way to achieve this?</p><p>I would greatly appreciate any documentation or explanation on how to build a new block for RFNoC.</p>


--b1_uxtaNudbPyFG25odjZ6QsCBW5FQhqq8ZlHXc7A1RSI--

--===============8023130644443833072==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8023130644443833072==--
