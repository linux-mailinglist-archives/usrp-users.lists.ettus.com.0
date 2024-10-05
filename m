Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90943991905
	for <lists+usrp-users@lfdr.de>; Sat,  5 Oct 2024 19:51:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3A4A6385174
	for <lists+usrp-users@lfdr.de>; Sat,  5 Oct 2024 13:51:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728150701; bh=I2v6O0jWwxfIe8JloNd/OFvZC9glUgsJmKdmJsPI/ng=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=bY+erzNMPmeS/1cNMk/DQefBGuPtw1OUVzMVAJ5NH2D7SD+aDnHD1D72bcy6/FpfK
	 tAbd8ZZ+Nd/bwKKbkDkNnW/5ySc7/ZHJ8SGFt2wmP7cdnZm0yGL4PAc77pBuGXSfhA
	 6cA4HyXvY2oqnKuDYaG/kxLQiefphUnGIfFAJuyp9tYA6pxuGyziRQ7coJvXvrQhdb
	 JyGYgv9tdtsiUb05ugYJUcOtkjdmcFBjEkc4c+w0+a3nMwUb9S/4Wdw+fj9ojzHA+a
	 YF4odnph0VqiPSUI+ckVYoBMBAXwwyjJZycDep9O/ewv5QxUI6uAgzd54WsGI0cRvk
	 r6FaitYXQvPag==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 76D13384DD8
	for <usrp-users@lists.ettus.com>; Sat,  5 Oct 2024 13:51:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728150696; bh=r8vrC7Uepvrum0XQij7M7HM0TwYod8m0g7EgWLSvrxs=;
	h=Date:To:From:Subject:From;
	b=iE3QWgOgfZvxg4EsH4RyiFET2ZhhX4weUt90Rtpa1dmk70VTXXbh8rvq3yu8fSkuY
	 8zucsHiyvJfI3lENzS1M/FvlyR++M2hnr/zgB94gtn782T3GOQpuZW62vQexHqyomZ
	 j0274FbLjrAyzcUIbNjHanTp8IaAe1HQBbuzL0F9SGGK/IpSvoCqYjjYvTKJ5z5EoL
	 zaJehX6Rfgp4N0yLTcnP9vAZeyx/Yfmqo8XJF5CHGr+XGr7jBympXjN/UAI+HSUJbU
	 drdvwVkwl1eH3ljQcfesgOY5+vbKYulCkSZRzJ0Xw0MBwj6VHxTg+Yz6alLZxR5z9X
	 w/jwbpLbvykTw==
Date: Sat, 5 Oct 2024 17:51:36 +0000
To: usrp-users@lists.ettus.com
From: steve.wakelam@roke.co.uk
Message-ID: <632gFyE4Bg5NoYZHYekRTU9uAH6izA2QUKTS2TxObY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: BRCMVZTFDHI4OVSFRH4BCI5XE6CKAQ63
X-Message-ID-Hash: BRCMVZTFDHI4OVSFRH4BCI5XE6CKAQ63
X-MailFrom: steve.wakelam@roke.co.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Using 10GbE to stream receiver data to remote FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BRCMVZTFDHI4OVSFRH4BCI5XE6CKAQ63/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6377514521806941161=="

This is a multi-part message in MIME format.

--===============6377514521806941161==
Content-Type: multipart/alternative;
 boundary="b1_632gFyE4Bg5NoYZHYekRTU9uAH6izA2QUKTS2TxObY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_632gFyE4Bg5NoYZHYekRTU9uAH6izA2QUKTS2TxObY
Content-Type: text/plain; charset=us-ascii

We have a system in RFNOC that receives data at 100MSps. We want to stream this to a remote FPGA card over the 10GbE. 

Is this possible, and if so do we need to create our own RFNOC block to do this or can we use UHD libraries in some way?

 Tha nks.

--b1_632gFyE4Bg5NoYZHYekRTU9uAH6izA2QUKTS2TxObY
Content-Type: text/html; charset=us-ascii

<p>We have a system in RFNOC that receives data at 100MSps. We want to stream this to a remote FPGA card over the 10GbE. </p><p>Is this possible, and if so do we need to create our own RFNOC block to do this or can we use UHD libraries in some way?</p><p> Tha nks.</p>


--b1_632gFyE4Bg5NoYZHYekRTU9uAH6izA2QUKTS2TxObY--

--===============6377514521806941161==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6377514521806941161==--
