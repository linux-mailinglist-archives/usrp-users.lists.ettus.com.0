Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5477AA3D157
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2025 07:23:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0BFF13861D8
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2025 01:23:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740032587; bh=phcysOpfNyBxbZH9FE8ySCbRkIlYnLVTFESY2nUbSeI=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Jn9/oBb0xLwDl+GCAz+XGWRNp7ep/diC8gMGLUleA6sJsLYeyiFmB5iylPtn0AWNQ
	 6aEojpckf2M7JsrCoRIvwZctupWom/lAf0Ed+pP9TvtJUhVvGKBW7gmFtmF3KZYJVB
	 MyQ+GHRUrIFtI3yQ3xN28R0A8W8nl2aoRSXQ7W2+C2ApOUg2a99YJeL34yBpb6KEWx
	 JzSeMLQw5HtH+XLhTRcdS45zGRbzEl/V9atv4uOMF1NT1Fvl+05zv23WpP703eiTFg
	 g2eRHzt8hwCkM7jJLGhQmteALh54Y/drVTk8Sw4LcoehqBsisWzdqVgHyYinUbZurk
	 iQqUSpmcPGHtw==
Received: from omta37.uswest2.a.cloudfilter.net (omta37.uswest2.a.cloudfilter.net [35.89.44.36])
	by mm2.emwd.com (Postfix) with ESMTPS id 39F02385D5C
	for <usrp-users@lists.ettus.com>; Thu, 20 Feb 2025 01:22:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=atindriya.co.in header.i=@atindriya.co.in header.b="jW5p3z8U";
	dkim-atps=neutral
Received: from eig-obgw-6001a.ext.cloudfilter.net ([10.0.30.140])
	by cmsmtp with ESMTPS
	id kw9WtXZzLAfjwkzwstv21G; Thu, 20 Feb 2025 06:22:14 +0000
Received: from vps.tictalk.in ([119.18.48.61])
	by cmsmtp with ESMTPS
	id kzwmtQw6zsTV2kzwotyYtx; Thu, 20 Feb 2025 06:22:13 +0000
X-Authority-Analysis: v=2.4 cv=GquJ+V1C c=1 sm=1 tr=0 ts=67b6ca16
 a=bPTgM9xNt4Vpxv/3Ws5fWw==:117 a=bPTgM9xNt4Vpxv/3Ws5fWw==:17
 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=MKtGQD3n3ToA:10 a=1oJP67jkp3AA:10
 a=T2h4t0Lz3GQA:10 a=j0z1oGNQ4lYA:10 a=sBmplVBClv23PmrkQgoA:9
 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10 a=IOVrdXkZsZi_Xkr5h5Fc:22
 a=iTWC1DL0K-q19goYTGrE:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=atindriya.co.in; s=default; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:Subject:To:From:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=T/lc9/meAy7pGDmFp1EJRmcYZFvCeh+B2mSsAmLYDWU=; b=jW5p3z8UBd8i9lGvvpmiAtUBC+
	9RK766wmd6VW8lPZIczCvygOMvjQB2+SrHPF7XQ1aP27xs/LHRpbGhapUIqr9pAd1Sr8zO6G92h+u
	MB5AFkKn8bq5A/e9s8RwBDBkNihGOqkKxyhylma+vP3Gkc2X78ORWPhJG/koZkfyXA5uxg/Jqacb6
	TizBvmQBSvR2dz+txWdrXclcITL+Z1htLIx+23ixqLX1RPhfx4wNfLifywKlePPyMakIA/IjLEDsx
	KeiDM3tkpaIffVpNb8zJtld17bpErfH5k8NFDiNJZqQuw+asX80UZoqtF0jvMjJFklrSHLphSTmu1
	BXNt80xw==;
Received: from [::1] (port=46886 helo=server.atindriya.co.in)
	by server.atindriya.co.in with esmtpa (Exim 4.96.2)
	(envelope-from <kavinraj@atindriya.co.in>)
	id 1tkzwj-0004JL-08
	for usrp-users@lists.ettus.com;
	Thu, 20 Feb 2025 01:22:08 -0500
MIME-Version: 1.0
Date: Thu, 20 Feb 2025 01:22:08 -0500
From: kavinraj@atindriya.co.in
To: usrp-users@lists.ettus.com
User-Agent: Roundcube Webmail/1.6.0
Message-ID: <9f5ab4765e004de6a89e7352edbf7773@atindriya.co.in>
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
X-CMAE-Envelope: MS4xfPlL+OAz7IU8XzCG/waSQEJMtgfGv2O6j79bAHKiF1YuV0Qb0id9RmIm/1/c+nf37rfAsNUKXKE9QgHhHPuQx3vOgAmxuqZzaAYGMhnl4/Z1GI+KswKS
 0owrw6h6U4e4H/uCcg8H3xZytU0CJCpT1NuPIZIrkFMu20NUZutq277piBvm5c/2qP0030qqtg6BRsS+2j/wj2+l7c36ivg9yeU=
Message-ID-Hash: 3ADMIVA45OBETVVFZG3XN5OUC2KFBLBG
X-Message-ID-Hash: 3ADMIVA45OBETVVFZG3XN5OUC2KFBLBG
X-MailFrom: kavinraj@atindriya.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] REG : USRP B205 MINI-I
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3ADMIVA45OBETVVFZG3XN5OUC2KFBLBG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,
   How to access the same USRP board simultaneously in both GNURADIO and 
Eclipse software. For transmission, GNURADIO is used and for receiving 
Eclipse software is used.
   If i run in gnuradio for transmitting means In eclipse it is showing 
error as empty devices found.
   How to resolve it?

Thanks.
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
