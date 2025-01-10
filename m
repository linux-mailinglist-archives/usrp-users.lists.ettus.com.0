Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A4444A085E2
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jan 2025 04:24:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3DABB385C3B
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jan 2025 22:24:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736479471; bh=rwzOVXApD+LFT4tnDewO9Y2BXT8sK/G8EQ/MtjEXbik=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=CU1YyHIgDotGCE9YRDxmi1h9UKkWfQThXnw+Ayf7fLf99sy2INMQmWMCHWnzk2cL0
	 SQ0ArlfcTG7iG/59y3KYgx3bvkH1L/lf2J5zCvRY0c0lL8FYvyguEHlNFWkjjQDyco
	 chKPdFytlU1bQuMqEtNuy7bVuKRQjiG7ak+LlZJhz8QP5T2ZI/aniHon+zdGP+JGVm
	 IjVnqOAtBN804g+vAF54jWGuAkUhf51bXW/6e/5ry2hCqnheapCl1R7QXCSZW67soc
	 BSUoxfwe853Ma3OodNvknXZlpKZGDtsCT6+uijR3rmRpu+oDn0AoTJkJYR8A5DBtsP
	 aL8rBZgn5lpcQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A08CB385C06
	for <usrp-users@lists.ettus.com>; Thu,  9 Jan 2025 22:23:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736479426; bh=5GEAPMFFuF8aA8dDT4mLbgtzh9duRZIoNilVqCJU/20=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=V9KpTluEp5SRXfIT4xvOf6ynMy3i6OyV3A6TCaSDgiRSPzJa8yUyf6R5ozxhdaX7s
	 1kKxhja9sZXFgVu3octSaWfe/ry2pjnQTb8EH/JWcRy9Na2nJzmSf8uvOEr+hD3fDK
	 shJThaT/c3FrWupt/3ofCN2BBanPyO1rCNrvj8eK5ikVmRogE4icppOa9VsgVTymZ2
	 b/4UpbpcYFclqB/UIGbc0SYTX1xjOJ5+EnUpvfZfg3jTkp7tkN38GXUpwIAGYBBkGB
	 xjbqD9e/Sq4Ybi8AX5cFvLTwjWoInW7i0nOjesM4dmL2FecwyJsjMt4Fvau3jrSpet
	 ae2ajQvSkQk9Q==
Date: Fri, 10 Jan 2025 03:23:46 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <P0aQim8oOP68fuSSxYNakwJrxkytWewyOfYZsgVhz7w@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: xZnq67c6k8BLxyN1UzqZnvW7RFrPIFtL1GCh14PE4@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: HAZQMZ7LAZGUSD2N3BBRJOIGGFN7F5VK
X-Message-ID-Hash: HAZQMZ7LAZGUSD2N3BBRJOIGGFN7F5VK
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Bursts/Buffering with Timestamp data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HAZQMZ7LAZGUSD2N3BBRJOIGGFN7F5VK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8026117803389247967=="

This is a multi-part message in MIME format.

--===============8026117803389247967==
Content-Type: multipart/alternative;
 boundary="b1_P0aQim8oOP68fuSSxYNakwJrxkytWewyOfYZsgVhz7w"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_P0aQim8oOP68fuSSxYNakwJrxkytWewyOfYZsgVhz7w
Content-Type: text/plain; charset=us-ascii

Hi Rob and Team,

I enabled the `streamer=replay_buffered` option as shown below. However, I did not notice any difference, as it still buffers 64 packets.

Is there any additional configuration or step I need to take for this to work as expected?\
\
uhd::device_addr_t addr_args("addr0=192.168.30.2,streamer=replay_buffered");

uhd::usrp::multi_usrp::sptr usrp = uhd::usrp::multi_usrp::make(addr_args);\
\
Best

--b1_P0aQim8oOP68fuSSxYNakwJrxkytWewyOfYZsgVhz7w
Content-Type: text/html; charset=us-ascii

<p>Hi Rob and Team,</p><p>I enabled the <code>streamer=replay_buffered</code> option as shown below. However, I did not notice any difference, as it still buffers 64 packets.</p><p>Is there any additional configuration or step I need to take for this to work as expected?<br><br>uhd::device_addr_t addr_args("addr0=192.168.30.2,streamer=replay_buffered");</p><p>uhd::usrp::multi_usrp::sptr usrp = uhd::usrp::multi_usrp::make(addr_args);<br><br>Best</p>


--b1_P0aQim8oOP68fuSSxYNakwJrxkytWewyOfYZsgVhz7w--

--===============8026117803389247967==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8026117803389247967==--
