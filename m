Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 314B1586F09
	for <lists+usrp-users@lfdr.de>; Mon,  1 Aug 2022 18:53:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0CABE381426
	for <lists+usrp-users@lfdr.de>; Mon,  1 Aug 2022 12:53:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659372822; bh=FR+UwH9Mm0Qs4n/YXJJMKqxhv7IUHLBP+OG6u44mbDs=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=ur3Mo9r8vDNIWI5ozKNt1AoEhG75gZwW5STBur8he7GMXv6WBt+5y2AHwn5DyOvGK
	 RcXwOb3bY9R7rfTyZi5cQ3Y85NYqSA8Ge1yI4mVVMD6ci5hvyUek1GBPYq/GkO8pa6
	 mPrNDhTvShZX0deJGNKwa3q7SC3xdQDdioNCtarCSap/K9eHgWbmb4plpzhrUOGKV6
	 G9+CRM1x953WBWDsgyJKZJsPtvZzo9AndH7zHHPK9ZOMFbxpNwnL2P4wIb5M80eMLK
	 Pby1jMH67KdJlvrN6wj1raoBiBVIP0Lp2IcAeJ58dH0zMcYQIwfFKhd+AuA+8s8y6t
	 d8mTQW0bOewxg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 06095381328
	for <usrp-users@lists.ettus.com>; Mon,  1 Aug 2022 12:51:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659372705; bh=GtOGKo2q6j7nGFf7Lftx1ppbjTy0wMn5M53MjLh+zVw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=cxJpPPTGQDB/1ifXjFPSWp4J5Ye80rFsRCyKtVQPFw3mh8idnYTe/ups5g2OCsIKq
	 hqnRWySlpa71QAs/OfL25XN/SLzDnF4rX7I6kXfG1VMUtssg5NHnPqom/3Vg7rm4Q1
	 8PIxC+SP75Mya5NQkltl5tyGvfHQu/zUNlNxITsbRTznRDKla7dDQ4oQbNmI/QUKmP
	 eYTLd+TitKm4m31BbJbWD7bfX/lcaS8dT/d5S+y8sjLs0wG+MbmlMzoXNCdM1U+XDZ
	 7c8duuI+3JNEer0EfA9+gcxcA1T0XLN7vt/DNb0mWCnXRpA9fFnlpid1FeklwzI1Fq
	 //O/A5fpC2j2Q==
Date: Mon, 1 Aug 2022 16:51:44 +0000
To: usrp-users@lists.ettus.com
Message-ID: <F0mvFqndGqHXJ7XRUAMuypHftZXQIJg6h1ZGjQNrWM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: a8287173-e6cc-3923-7dcb-6954ff230b59@gmail.com
MIME-Version: 1.0
Message-ID-Hash: DDIF75QY3Z725F5PTQDPFTWWNQEDBNY4
X-Message-ID-Hash: DDIF75QY3Z725F5PTQDPFTWWNQEDBNY4
X-MailFrom: moklesur_bme@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I am trying to deploy eNb using USRP B2100. But, when I am going to compile and run eNb and I notice error( Error signal 11). I would like to mention that I successfully installed UHD and GNU and dependency driver. I did the work following the manual step by step.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DDIF75QY3Z725F5PTQDPFTWWNQEDBNY4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Md Moklesur Rahman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: moklesur_bme@yahoo.com
Content-Type: multipart/mixed; boundary="===============0669910166755606983=="

This is a multi-part message in MIME format.

--===============0669910166755606983==
Content-Type: multipart/alternative;
 boundary="b1_F0mvFqndGqHXJ7XRUAMuypHftZXQIJg6h1ZGjQNrWM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_F0mvFqndGqHXJ7XRUAMuypHftZXQIJg6h1ZGjQNrWM
Content-Type: text/plain; charset=us-ascii

what is the solution of it?

--b1_F0mvFqndGqHXJ7XRUAMuypHftZXQIJg6h1ZGjQNrWM
Content-Type: text/html; charset=us-ascii

<p>what is the solution of it?</p>


--b1_F0mvFqndGqHXJ7XRUAMuypHftZXQIJg6h1ZGjQNrWM--

--===============0669910166755606983==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0669910166755606983==--
