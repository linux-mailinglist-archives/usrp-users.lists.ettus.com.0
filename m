Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A2F746785
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jul 2023 04:23:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E25E7381833
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 22:23:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688437433; bh=iW/EWs0FKCGLtIrVE7u/s0kg/3zibnT3TPWOKdf0nOI=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=LS1wyrVPD8rsvWpjmCb/70lrfplUPeg7ck4wwtVrC06QdXOSKgA8FM6hwKVP172tV
	 O6qSirihKoAibuypHMdgJTG/tDLmp5SGVilrTqkefO9uDY5JNa9xntFWQdErohCW30
	 ibd7yRL/nXhhZSnVHkWqPI4UkKJ3Gvp8FXHflIdeo7ZA4xLbt7JCqm1VW3Ito4olYH
	 Wk1NnMn3qwJc7dfFZkD1knJIzOJ8UyyrFLloVESbaVvLBV9JQIdye8I4ST+RQ1ALm2
	 3M0bvs+vaElssnzkK5RHbjg6pVkLcRbLrBG4YLvzH1U+UmKwOPa45QBk9G8LvFKo6B
	 jMt7X8i6PzqzA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E4E97381504
	for <usrp-users@lists.ettus.com>; Mon,  3 Jul 2023 22:23:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688437411; bh=ast6bq1OI0qXEazqt51vYUZf5HaY2dfNcpgJcPUaJfU=;
	h=Date:To:From:Subject:From;
	b=QhrgApKWS6TOjUOOGSHPOlqjmqylrzYDr88WRJqjempRTmsP4qIxK11nXpXK+M0Qg
	 seCywxpo/ET5AZXkhfNeNOF4uejDmDnVP6otQOYRURIVl0ywxfsXcNYtSw9pUF6cT0
	 4xvt9+0hFC/N3QMScKH8sY80Hpk8GTTCJWjU9F8uvGb7RvSPxx/izQgVc8fOGbIUrN
	 U8/pzvVMedxc90jLCdaD46LyBhA+N0b0HWQelzuq2emAz13EFbxUOoJkiHzdvf9I6p
	 JKYMprQ3C3OnCdoNMRteBeo7e33f4gc+obIMY9JtbidBmypxZwouo62ehjTaxhnf4R
	 EP/lWMMs/jKPQ==
Date: Tue, 4 Jul 2023 02:23:31 +0000
To: usrp-users@lists.ettus.com
From: yangamelia2333@gmail.com
Message-ID: <OeUulMx5M7plIog6vT8gCEmw5bsKRqfdg3QOAkZuU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: DI7VAZ6NBWRUYMNWFISX35OX4NGMUN33
X-Message-ID-Hash: DI7VAZ6NBWRUYMNWFISX35OX4NGMUN33
X-MailFrom: yangamelia2333@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Control GPIO pins in a custom RFNoC block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DI7VAZ6NBWRUYMNWFISX35OX4NGMUN33/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2150831682202732770=="

This is a multi-part message in MIME format.

--===============2150831682202732770==
Content-Type: multipart/alternative;
 boundary="b1_OeUulMx5M7plIog6vT8gCEmw5bsKRqfdg3QOAkZuU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_OeUulMx5M7plIog6vT8gCEmw5bsKRqfdg3QOAkZuU
Content-Type: text/plain; charset=us-ascii

Hello.

I want to control GPIO pins in a custom RFNoC block to send a stable GPlO trigger output (X310+UHD4.4 + Ubuntu 18.04). But I have no idea how to implement this because l didn't find the GPIO interface in the RFNoC specification.

Also I don't want to use the `rfnoc.radio_control.set_gpio_attr()` command. Due to the host's uncertain delay, the output triggering interval may differ.

I really hope someone can help me and give me some hints

Amelia

--b1_OeUulMx5M7plIog6vT8gCEmw5bsKRqfdg3QOAkZuU
Content-Type: text/html; charset=us-ascii

<p>Hello.</p><p class="">I want to control GPIO pins in a custom RFNoC block to send a stable GPlO trigger output (X310+UHD4.4 + Ubuntu 18.04). But I have no idea how to implement this because l didn't find the GPIO interface in the RFNoC specification.</p><p>Also I don't want to use the <code>rfnoc.radio_control.set_gpio_attr()</code> command. Due to the host's uncertain delay, the output triggering interval may differ.</p><p>I really hope someone can help me and give me some hints</p><p>Amelia</p>


--b1_OeUulMx5M7plIog6vT8gCEmw5bsKRqfdg3QOAkZuU--

--===============2150831682202732770==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2150831682202732770==--
