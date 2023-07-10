Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 680AF74D488
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jul 2023 13:24:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0D007384A77
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jul 2023 07:24:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688988297; bh=pzvCNRuk9qyk+YZ29rS1W6tWh+CjRJPpo2DDTD9bxF4=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=JgDKTfQrILiDIkLPN7rEIvPe62I5gUgJVhcCDYbe3wzdkwBSiyRflTbMTz9AeuKxj
	 2Kuq7jh075Kxukh7gWTcdNlqTTGlJ+B8gmk3ShzZjy42mLxaDllRFiZvmsCHhAT7We
	 CQwFkccb6ltLYHqxo3aw0xGGYqsghirbAur0S5HCe8T0mPqYLm1dqwv6EQ5KRJdXgp
	 Q089QJ0Lp6kvMxh4W4bQZoENn97fHcrKYL4vmHYUtaMLe10Pzv0ECC5u9PN09hH/bY
	 vSo2bXwGOax+yw03+eTfAEKbN5Mu3YDMTmi19V6+SOrh+NT0wKWv7oGFmF8tq+1eM7
	 UyS93Bxm4qzuQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D55DF38465D
	for <usrp-users@lists.ettus.com>; Mon, 10 Jul 2023 07:23:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688988238; bh=6wWgcjpjlD3Mb0DR8GlgX+jZzyQvKBfhkW6eO8iH2Mw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=BLLOoEAJ1SyjEyIPEUViGBI3PCKUpCqJM1bNusOh3wEZQUFqkOQXprBNCXW/awyJa
	 9W+VmRLCMgY4SEJaowa6gGtzrdI+a/6tF7JWh6JMv/99ctgygn2VxDqnHtKSQ6s4xg
	 sC9V93R4kzBYm/ik0eZ7//O3/Hp/81xJjk74mREABCOgmEbuJ54pGNkrPB8EtnxfWg
	 yvl9pc5aLPEd/+M9bgBu+o2LBQhjt9zPEBAJdwX96Op1P0u+uUeJ2RuOUxYPb/x3jh
	 pzmMFtgste7UfvcM03GcF7rPVpwKYpMyJ/WAIC5g4pYYqKT3aCG8rOPrWzkVDsPt/r
	 rzbImmTR1Q4mQ==
Date: Mon, 10 Jul 2023 11:23:58 +0000
To: usrp-users@lists.ettus.com
From: adrian.campos@integrasys-sa.com
Message-ID: <XEQIur209oSmb5nXuiVmTgvZ2NS8NaPXomugVEJxxU4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: yIUxl7jV9U50saIYD5vcLAhwizkvy5wRsa6IOCZvbQ@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: ZRA5BQNJ4LQMDNLWV7JKVGGP6WPYV3MJ
X-Message-ID-Hash: ZRA5BQNJ4LQMDNLWV7JKVGGP6WPYV3MJ
X-MailFrom: adrian.campos@integrasys-sa.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: M_Payload to S_Payload
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZRA5BQNJ4LQMDNLWV7JKVGGP6WPYV3MJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6886452394005916055=="

This is a multi-part message in MIME format.

--===============6886452394005916055==
Content-Type: multipart/alternative;
 boundary="b1_XEQIur209oSmb5nXuiVmTgvZ2NS8NaPXomugVEJxxU4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_XEQIur209oSmb5nXuiVmTgvZ2NS8NaPXomugVEJxxU4
Content-Type: text/plain; charset=us-ascii

Sorry, not FPGA, a FIFO. Now, I have changed that for the axi_fifo to check. The connections are: Input payload -> Axi_fifo -> Output payload. However, I don't get the same data at input and output. Also, it seems that the output is repeated.

--b1_XEQIur209oSmb5nXuiVmTgvZ2NS8NaPXomugVEJxxU4
Content-Type: text/html; charset=us-ascii

<p>Sorry, not FPGA, a FIFO. Now, I have changed that for the axi_fifo to check. The connections are: Input payload -&gt; Axi_fifo -&gt; Output payload. However, I don't get the same data at input and output. Also, it seems that the output is repeated.</p>


--b1_XEQIur209oSmb5nXuiVmTgvZ2NS8NaPXomugVEJxxU4--

--===============6886452394005916055==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6886452394005916055==--
