Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71016A1C128
	for <lists+usrp-users@lfdr.de>; Sat, 25 Jan 2025 07:06:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5CF1B3859BF
	for <lists+usrp-users@lfdr.de>; Sat, 25 Jan 2025 01:06:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737785169; bh=VKglKE41b8bFES/Fd9yVQody8uJE0q5v6NQBeQr8TpQ=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=LBagvWZCN9T1q6vSzPakZVntDonlWhH9U1/QuXEBsQkX6JtGm6fSizLmeNPnhixD+
	 HgDVB7xvYJuXRjabD0tK/6JnKhPj2FfQLNo8dQ3UeUtuZDs2idx3/kTTqFONBlCb5u
	 B0sBB2Xrldp0lC9zAtPhKtjQlTuUhHw4cYOphVjBkG8Fwm7QwGC/BbHqINjozC+Zrb
	 egjGbpc5tb9ls4pVve+R4CEwxItKTT+vAqYf7plj+2WC94qSxEi+R71Pbzxu8ghpDB
	 voSjmYqaghOep0XLcq3edI0h0tLNYSEI10rbzhnjlP44BmAXHRJkoq+Kdy5PqMQu7t
	 9l8I9vEJY4Slw==
Received: from omta039.useast.a.cloudfilter.net (omta039.useast.a.cloudfilter.net [44.202.169.38])
	by mm2.emwd.com (Postfix) with ESMTPS id 0EE7F3859A3
	for <usrp-users@lists.ettus.com>; Sat, 25 Jan 2025 01:05:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=atindriya.co.in header.i=@atindriya.co.in header.b="vi4Ti1uH";
	dkim-atps=neutral
Received: from eig-obgw-5007a.ext.cloudfilter.net ([10.0.29.141])
	by cmsmtp with ESMTPS
	id bZD9tFGpR1T3hbZIctsCRb; Sat, 25 Jan 2025 06:05:42 +0000
Received: from 119-18-48-61.webhostbox.net ([119.18.48.61])
	by cmsmtp with ESMTPS
	id bZIZtSvpfG3qKbZIbt5Oih; Sat, 25 Jan 2025 06:05:42 +0000
X-Authority-Analysis: v=2.4 cv=PN4J++qC c=1 sm=1 tr=0 ts=67947f36
 a=bPTgM9xNt4Vpxv/3Ws5fWw==:117 a=bPTgM9xNt4Vpxv/3Ws5fWw==:17
 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=MKtGQD3n3ToA:10 a=1oJP67jkp3AA:10
 a=VdSt8ZQiCzkA:10 a=j0z1oGNQ4lYA:10 a=ZnlVjcO3iL6GKsllVt4A:9
 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10 a=IOVrdXkZsZi_Xkr5h5Fc:22
 a=iTWC1DL0K-q19goYTGrE:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=atindriya.co.in; s=default; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:Subject:To:From:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=E1PZUmeTmKmlb4g4w/Y6aUvER9f4Xtz7NfagvsjbuUQ=; b=vi4Ti1uHpcblEtk3zVuU/xd3F7
	1x8XW5mXZettXrK4Y3WRiiXmTTBXYmYcNGrojBhqCyax6yxtO2oQVszL9GjoMQ9MQhdmpinRKB7qS
	6UYKOlbKsCE/JSunEqlkJQv3fEOnr+x1TnBumbKWFIK/ujYRkpSSefj1pL8R27NQT+dD+W468qjNX
	GnG4JmNirzRdIFHZxWqTgD0IA/epkClmnXzi4KC/duIJ/aWU9o090sxuD8PkG66e6QNRu0SMU0ziD
	Tj4iMNev7xJ/T0MsxwDvr4QjS6DVUK3kgi3FjS4GeKr2MvmKTp9YW6sP6C9GXsbk8Hq8xLNY8dtfJ
	xAWUHYPQ==;
Received: from [::1] (port=47052 helo=server.atindriya.co.in)
	by server.atindriya.co.in with esmtpa (Exim 4.96.2)
	(envelope-from <kavinraj@atindriya.co.in>)
	id 1tbZIT-0001fR-0h
	for usrp-users@lists.ettus.com;
	Sat, 25 Jan 2025 01:05:38 -0500
MIME-Version: 1.0
Date: Sat, 25 Jan 2025 01:05:37 -0500
From: kavinraj@atindriya.co.in
To: usrp-users@lists.ettus.com
User-Agent: Roundcube Webmail/1.6.0
Message-ID: <ab60a559e8abcbfef267f09310a77d6e@atindriya.co.in>
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
X-CMAE-Envelope: MS4xfKjfF2Ka1xrf/cxgNzkj5LZjieaQaazgs7aJCwu+Nr+8/Lcmvg3bSV1ub0mo/Bx3LqRt30h5bj3Dhg/c2PwSV1LCrgiQ7Z20PVO5wmrc6dpxnk107ihA
 BoPm4O4yyh8G0xzTDfRfXQA6UPCHNgi/efS6CDQBpr0H1T7GsAlm86iJWgVTtHzKg/zG76qvvI8culTVq9RYk4/l6HnWQ8U9/MigeeUOqI47nVodRN0XkRbv
Message-ID-Hash: 6QPKVMGS2NAUOYX22A3OKVIGVVKIXKV2
X-Message-ID-Hash: 6QPKVMGS2NAUOYX22A3OKVIGVVKIXKV2
X-MailFrom: kavinraj@atindriya.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] REG : Receiving the Data In USRP b205mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6QPKVMGS2NAUOYX22A3OKVIGVVKIXKV2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,
   I want to receive the ADC data in USRP b205mini-i module. For that I 
have written the Rx streamer code using UHD API.

   Actually, Rx port is connected to some signal generator of 430MHz to 
470MHz. But, When i see the ADC data from streamer is not matching. Is 
there is any want access the Rx LO in the USRP. When I print the Number 
of Rx Lo names, it shows as 0. How to set the LO as 400MHz frequency? Is 
there is any default LO frequency is set?

   And I want to know the default decimation factor for this board?



Thanks,
Kavinraj.
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
