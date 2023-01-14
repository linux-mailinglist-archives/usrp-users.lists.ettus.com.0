Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E3166A820
	for <lists+usrp-users@lfdr.de>; Sat, 14 Jan 2023 02:20:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9BCC23843F5
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jan 2023 20:20:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673659204; bh=mwRCDXLTAz0iG98c27fTGQKcZWLiJb/pShBjfSMz88o=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PBt9tP7gRs50Z2ETF6UTY2jRFPh0ju1IS2/zSXHwGqDfhCnIfbZ+R9Bcga9prL4q8
	 Nlk/1P16V6VL1hQAYK0xxnhNizPqj65Q0run9SxkMHuy0EkVeqAvypyy4OAmQwFiOa
	 7H2+WN647yhaTTXs4wQhTUXkc46o/Sl+dccZ8dGo+m6tEu2sk4o29R3FwafPdGKIng
	 3fSVONcUIa+9ygwrMuSfNpe/Ju+SMJTtEOsZWMzWhaJnZphiIO1PWy/Av0t+t1OJvP
	 pxUNUvAZOiiVrjqosJaLNyOUOEdLjmOdSWDiTd3OVW9efN8GaUMe6HUb08j49NuTJ6
	 iR+IjyRk8kY4A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D5F7438421D
	for <usrp-users@lists.ettus.com>; Fri, 13 Jan 2023 20:18:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673659133; bh=48uoevLFP09JT94K+kAMFcTAcKDS5rdqSnLDf4bittw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=G11mjfgcFOiEviKAkijk9i4PeqqUHXsfJw4pvF6sZkRInTY46urB3YGnS1weqvomN
	 zBRs3+O60zURIWpPQsMrKVstKj/Op1C5ZatXaOOU9jrfk77EpTG4t0VKVvrqo4A8O5
	 lKfhROEeBYjNmHZCYjRD08TcIqV5QzSQKOgDdQE91mKcOBQ10l/gTa/e49WXDUElit
	 op2ST//mtUC5RMD579DPDpcb7g9ncSP5g8Tpc/CuvE6Ayg0IrsqsUo/IlCWVKB3cor
	 nDd064df/oj8E/rwbI7617zDqF/KMws6h/yba6qL/qK2Mih3o4qluAY+5LusG5KqG2
	 lOlg/iRsbqr1g==
Date: Sat, 14 Jan 2023 01:18:53 +0000
To: usrp-users@lists.ettus.com
From: mgarrett@garrett-tech.com
Message-ID: <ifjNcMEAwyyNUc4C7ICKaoLiqU9LS82IoT2yQekew@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: cf9cfa63-0f79-155b-3475-7055f4076806@gmail.com
MIME-Version: 1.0
Message-ID-Hash: ZHBWPRYAFXK7QA6XDKM33JBIE3FNUNLQ
X-Message-ID-Hash: ZHBWPRYAFXK7QA6XDKM33JBIE3FNUNLQ
X-MailFrom: mgarrett@garrett-tech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Update e310, UHD 4.0 Cross compile "How to"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZHBWPRYAFXK7QA6XDKM33JBIE3FNUNLQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3760618045983090484=="

This is a multi-part message in MIME format.

--===============3760618045983090484==
Content-Type: multipart/alternative;
 boundary="b1_ifjNcMEAwyyNUc4C7ICKaoLiqU9LS82IoT2yQekew"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ifjNcMEAwyyNUc4C7ICKaoLiqU9LS82IoT2yQekew
Content-Type: text/plain; charset=us-ascii

Two quick questions for you:

1. Are you using the gnuradio 3.10 ins the stock gnuradio install, and did that install 4.1.05?

2. Did you have to do anythng special to get netowrk mode to work, We have it working in 3.15.0LTS, but were not sure if it worked the same in 4.1.05.

Thank you, I will update on the install progress, based on needing a cross compile chain, Im going to build uhd from sources, and probably gnuradio.

If I have an issue, ill do the stock ubuntu install and see if I can get the cross chain to work.

mcg

--b1_ifjNcMEAwyyNUc4C7ICKaoLiqU9LS82IoT2yQekew
Content-Type: text/html; charset=us-ascii

<p>Two quick questions for you:</p><ol><li><p>Are you using the gnuradio 3.10 ins the stock gnuradio install, and did that install 4.1.05?</p></li><li><p>Did you have to do anythng special to get netowrk mode to work, We have it working in 3.15.0LTS, but were not sure if it worked the same in 4.1.05.</p></li></ol><p><br></p><p>Thank you, I will update on the install progress, based on needing a cross compile chain, Im going to build uhd from sources, and probably gnuradio.</p><p>If I have an issue, ill do the stock ubuntu install and see if I can get the cross chain to work.</p><p><br></p><p>mcg</p><p><br></p>


--b1_ifjNcMEAwyyNUc4C7ICKaoLiqU9LS82IoT2yQekew--

--===============3760618045983090484==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3760618045983090484==--
