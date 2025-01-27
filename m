Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 922E2A1CFE2
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2025 05:05:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E397385C71
	for <lists+usrp-users@lfdr.de>; Sun, 26 Jan 2025 23:05:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737950703; bh=od/56Lb1UHtA/KplDLh/wAJZQhwHaMEgOfnaCwcLo5g=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=W0rS9xsbeB/OJn5riNtCLl4ONTuuTDgopvvKIeEfBcp3B1HEzScimYUcauD/KohZ9
	 Uckg8twq95EauIPPAmT3+hNYF+J8c5HfQa+7uZZ2Zd97wzNsXrgq79iOOROHWs192I
	 ftBH2/jz3X7sZLAOTjGLUPt+QOU90dYpq/atfdWMIFOvkID8uZgt9giZ5Dlx3/ADgL
	 PV8C8w5SsW/U+sFQnUx/90vcn2W7clybP11+ze47GuWGvQFL8ozHwtmSXSq44rDeo1
	 vQZ0IdbNcjEzmZxF8ylRZsRQ3yy9JDPP+XvovMOiUV8qWK77y+VjiQmxTxJODUk+c3
	 nSS+n2GmHOB6g==
Received: from omta39.uswest2.a.cloudfilter.net (omta39.uswest2.a.cloudfilter.net [35.89.44.38])
	by mm2.emwd.com (Postfix) with ESMTPS id 63E15385C71
	for <usrp-users@lists.ettus.com>; Sun, 26 Jan 2025 23:04:16 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=atindriya.co.in header.i=@atindriya.co.in header.b="UamJqss/";
	dkim-atps=neutral
Received: from eig-obgw-6009a.ext.cloudfilter.net ([10.0.30.184])
	by cmsmtp with ESMTPS
	id cEGdtwtxhf1UXcGMBtXlQ1; Mon, 27 Jan 2025 04:04:15 +0000
Received: from 119-18-48-61.webhostbox.net ([119.18.48.61])
	by cmsmtp with ESMTPS
	id cGM7tE55Cp6oLcGM9tzhiR; Mon, 27 Jan 2025 04:04:15 +0000
X-Authority-Analysis: v=2.4 cv=ANS2oedo c=1 sm=1 tr=0 ts=679705bf
 a=bPTgM9xNt4Vpxv/3Ws5fWw==:117 a=bPTgM9xNt4Vpxv/3Ws5fWw==:17
 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=MKtGQD3n3ToA:10 a=1oJP67jkp3AA:10
 a=VdSt8ZQiCzkA:10 a=j0z1oGNQ4lYA:10 a=JtIX179ICzFyXktR0mYA:9
 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10 a=IOVrdXkZsZi_Xkr5h5Fc:22
 a=iTWC1DL0K-q19goYTGrE:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=atindriya.co.in; s=default; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:Subject:To:From:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Zi6r4mbisXrsCHf2L+GyrBfkJJ2KvB57/tUPKGxcrSE=; b=UamJqss/NsHTDWksIDUy7hYhNz
	Tjn9RzFQL79OKnkNw1Lq8IuTaQqhVibn8rAJzYT7J4JSxH608KMhyliE14HraZWb9FZaEPdbZQUo+
	AzN5+RqrrfyLCrcn+CWTDFQQ48C6jOL6VY6Jh5tymQ4tSbgrHbA2rQWELPF9jxW/5TIHwTXZVbOJR
	t6ajEWoEkP0JlzJWHXjrMS+Og+XrMNC2y6c3pn+dUugWZ9leVwxFbA/DaAgyUmFWOWL08m7qdOXeK
	jVSMOHPDYxLTP8ypttrgBmxJccdfv18HpCZ+KRury8xpheh/spDnUmnqDW03+tAYXOuZkvkLiCQrg
	4HJgPZzQ==;
Received: from [::1] (port=35160 helo=server.atindriya.co.in)
	by server.atindriya.co.in with esmtpa (Exim 4.96.2)
	(envelope-from <kavinraj@atindriya.co.in>)
	id 1tcGM5-0001go-0s
	for usrp-users@lists.ettus.com;
	Sun, 26 Jan 2025 23:04:10 -0500
MIME-Version: 1.0
Date: Sun, 26 Jan 2025 23:04:09 -0500
From: kavinraj@atindriya.co.in
To: usrp-users@lists.ettus.com
User-Agent: Roundcube Webmail/1.6.0
Message-ID: <a86e6fcea1b27171c17c3d23defb87cb@atindriya.co.in>
X-Sender: kavinraj@atindriya.co.in
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.atindriya.co.in
X-AntiAbuse: Original Domain - lists.ettus.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - atindriya.co.in
X-Get-Message-Sender-Via: server.atindriya.co.in: authenticated_id: kavinraj@atindriya.co.in
X-Authenticated-Sender: server.atindriya.co.in: kavinraj@atindriya.co.in
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4xfILSXPipBeuTEZiiE6VXVjQw/cqS5h8ACEWS05HDziJj6eAkjdf59Ich7vpdbsg0Y9ejGv003EyD4pwPrtDiOLLCaQWml/vHsyZdLXnClpzc0rIZiX7J
 Q2PoRybl6uSveNCHU2RfcBAx97vxJpEd9euiB3N4QXmiRnljxGH+EVqr75cXsulfgUoShCRoYwEYXzrx8DtULPWW4Sn5FiKQimwHLmBJiTB2XR9d94BaI17D
Message-ID-Hash: QZL3I27IAUIA5AIOICAWX2DSZZGRAZ7R
X-Message-ID-Hash: QZL3I27IAUIA5AIOICAWX2DSZZGRAZ7R
X-MailFrom: kavinraj@atindriya.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] REG: GPIO in USRP B205mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QZL3I27IAUIA5AIOICAWX2DSZZGRAZ7R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,
    I have one issue in accessing the GPIO pin in B205mini-i board.
    what is the mask value in the API uhd_usrp_set_gpio_attr() function?

    I have written code to access the pin 1 and 2. For that I have given 
the mask value as 0x01 and 0x02. I am able to control the GPIO pin 1 
with mask value 0x01. But, I am unable to access the GPIO pin 2 with 
mask value 0x02.
    What may be the issue?
    The following is the code I have written.

const char* bank = "FP0";
size_t mboard = 0;

uhd_usrp_set_gpio_attr(usrp, bank, "CTRL", 0, 0x01, mboard);
uhd_usrp_set_gpio_attr(usrp, bank, "CTRL", 0, 0x02, mboard);

uhd_usrp_set_gpio_attr(usrp, bank, "DDR", 1, 0x01, mboard);
uhd_usrp_set_gpio_attr(usrp, bank, "DDR", 1, 0x02, mboard);

uhd_usrp_set_gpio_attr(usrp, bank, "OUT", 0, 0x01, mboard);
uhd_usrp_set_gpio_attr(usrp, bank, "OUT", 0, 0x02, mboard);

Thanks,
Kavinraj.
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
