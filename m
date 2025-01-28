Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B822EA20B52
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jan 2025 14:31:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 83260385B45
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jan 2025 08:31:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738071062; bh=p6xsWBBMHlO2YR/Ut5KvHDMwPBwax1vkTygMhtFlHYE=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=TArou1ZQ4UiFZW99Ub9A//1M8Q3AEjkU4Y6s4Hcmktl2UscZDaB/9MhO+bO3GQtl3
	 BAP0aeJUEgGeJldrwij+/ad8FvzIW9zfOS+5MOCEaJx7F6Z/1THLp16MAAEB8YgL5W
	 k6ccTq6g5wYOipctXwqLBDbG/9Lx1rXvwQrk5rpPoNIlIHriPZicGi6h/xa5T2uB5w
	 0Q5MoiNHS6PuhQwzUct/vBFEVsCYgowYJmWL1pjGDp6MIwpOBPFfIUUl6IFrSJxgEL
	 t2o2RQGexGGfmhUjzrlV2wOfr90OrwQEKIQ2MiYCBMJNgKCusYWP7p8XwjPCd7yxNO
	 X7b2Rpt6/r7qQ==
Received: from omta037.useast.a.cloudfilter.net (omta037.useast.a.cloudfilter.net [44.202.169.36])
	by mm2.emwd.com (Postfix) with ESMTPS id 4F641385849
	for <usrp-users@lists.ettus.com>; Tue, 28 Jan 2025 08:30:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=atindriya.co.in header.i=@atindriya.co.in header.b="Nq1SasdG";
	dkim-atps=neutral
Received: from eig-obgw-6001a.ext.cloudfilter.net ([10.0.30.140])
	by cmsmtp with ESMTPS
	id cULAtMrIxiuzSclg1tIGVj; Tue, 28 Jan 2025 13:30:49 +0000
Received: from 119-18-48-61.webhostbox.net ([119.18.48.61])
	by cmsmtp with ESMTPS
	id clfwtbSsB2Zy0clfzteOOe; Tue, 28 Jan 2025 13:30:49 +0000
X-Authority-Analysis: v=2.4 cv=Q4EZ4J2a c=1 sm=1 tr=0 ts=6798dc09
 a=bPTgM9xNt4Vpxv/3Ws5fWw==:117 a=bPTgM9xNt4Vpxv/3Ws5fWw==:17
 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=MKtGQD3n3ToA:10 a=1oJP67jkp3AA:10
 a=VdSt8ZQiCzkA:10 a=j0z1oGNQ4lYA:10 a=xkuWf8YXTg2F0jaYcMAA:9
 a=CjuIK1q_8ugA:10 a=IOVrdXkZsZi_Xkr5h5Fc:22 a=iTWC1DL0K-q19goYTGrE:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=atindriya.co.in; s=default; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:Subject:To:From:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=64bDSJ/hK/Q3+1l7WThJGSKvJpnS+DNqAVsdckNkONw=; b=Nq1SasdG7uzuZ3fC1ZeipTgMxL
	LCOL0Id5vG+rL1cS8quzEsTGKSaksc62LrPwG8zBpjSF/B3ieqU0oYO98p7Ev3Vkl9VqLTgg5L/kY
	rrWmFjPGVufFvzqKtwQ3PQ0gs/FXtVY/KVMvqmmAFLlt7s1mYk/jrVDUNKd1Rf5CiBjzgSa58V8+f
	rtfPaPvTVY6kh+3ezzMA+ZJz0JhLMlyioYDfCPqAs/nF2dH3P+YgPT33c5okFv7FzP88PL/p3SHOj
	Iwtnj8DPIxrXFAOo4ijtQmDKvvqBPcxTam/uxf3z7fL4W4uMQ5l9GgmZ8jcMns3BO4xDFOJZ0DyPW
	LFE+mQ4w==;
Received: from [::1] (port=58868 helo=server.atindriya.co.in)
	by server.atindriya.co.in with esmtpa (Exim 4.96.2)
	(envelope-from <kavinraj@atindriya.co.in>)
	id 1tclft-0008KZ-0c
	for usrp-users@lists.ettus.com;
	Tue, 28 Jan 2025 08:30:43 -0500
MIME-Version: 1.0
Date: Tue, 28 Jan 2025 08:30:43 -0500
From: kavinraj@atindriya.co.in
To: usrp-users@lists.ettus.com
User-Agent: Roundcube Webmail/1.6.0
Message-ID: <250a24b3e4ee0bffbf2315561316cba5@atindriya.co.in>
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
X-CMAE-Envelope: MS4xfLgWVAI1pHCOSHJgu+/voABrNv/23W/kb3YTsReM1e6U9O6Ekg1vOJD2AEz+td/Qp5T+CL1RRXdWpUwXXtvp287tZ8O2MXLfvcCHVw0VffDayHSAJn+2
 KRQHRRguED5PQPsxHDnaFWYYrtzEPV8jNpV9bfNYZefFrmliNnPTN+n0grbB63xtYO/T9naM6EVoDwrdLKZNA/nPFyMSTX7PUx+nCu0KPhoGjdK33kgzGqYY
Message-ID-Hash: JFMHNXAEQXEJROXJHAX2LTGYMH5RWSFX
X-Message-ID-Hash: JFMHNXAEQXEJROXJHAX2LTGYMH5RWSFX
X-MailFrom: kavinraj@atindriya.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] REG:USRP B205mini receiver
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JFMHNXAEQXEJROXJHAX2LTGYMH5RWSFX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,
   I am working on USRP B205mini board to receive to samples. How would I 
configure to receive all frequencies data on that board.

Thanks,
Kavinraj.
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
