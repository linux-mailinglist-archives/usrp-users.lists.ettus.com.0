Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CDBA40566
	for <lists+usrp-users@lfdr.de>; Sat, 22 Feb 2025 05:06:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B17F0385A73
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2025 23:06:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740197161; bh=OTlngqkLKz4v6+DnanznMeFZSF4fo46/cmg56q0Uvig=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=SaojZn5av24tIyRpnJDA2bzGkMm9wLc235P+z+wnYxKaD41lAUHq1pU7sZeysdmXK
	 0/XHMT85vtCslKKX+3H3xHlYiCi4Qi9LT4pQmgntaif2ogfS+LlQE/pzppz+f++49a
	 tv9My83s2K2ePPpyacNiswRJKAvlYfkztIiUdvLwWx9TLjXlVpL0Di48225NqTBp7T
	 +oUzKbgzLV4X75XJJQPs5WSbiQzUlxM+U0mmY6LNfmfTwOYXPWMbudkRy5dkyMOC04
	 CTvbztwrYoJ13un5p1fcGtt0PoqMQPuvtf65xDEDwJfukHev1h9Ypsr9ekgXvMQyUF
	 Fu4VjLUyZOJfA==
Received: from omta37.uswest2.a.cloudfilter.net (omta37.uswest2.a.cloudfilter.net [35.89.44.36])
	by mm2.emwd.com (Postfix) with ESMTPS id A57B5385A68
	for <usrp-users@lists.ettus.com>; Fri, 21 Feb 2025 23:05:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=atindriya.co.in header.i=@atindriya.co.in header.b="r2P4ZxvT";
	dkim-atps=neutral
Received: from eig-obgw-6002a.ext.cloudfilter.net ([10.0.30.222])
	by cmsmtp with ESMTPS
	id ldAdth8X8AfjwlglJtBSOY; Sat, 22 Feb 2025 04:05:09 +0000
Received: from vps.tictalk.in ([119.18.48.61])
	by cmsmtp with ESMTPS
	id lglFtcRjmPWBNlglItglE7; Sat, 22 Feb 2025 04:05:09 +0000
X-Authority-Analysis: v=2.4 cv=A/+nPLWG c=1 sm=1 tr=0 ts=67b94cf5
 a=bPTgM9xNt4Vpxv/3Ws5fWw==:117 a=bPTgM9xNt4Vpxv/3Ws5fWw==:17
 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=MKtGQD3n3ToA:10 a=1oJP67jkp3AA:10
 a=T2h4t0Lz3GQA:10 a=j0z1oGNQ4lYA:10 a=4OaNDWfJbFXal5JaNfEA:9
 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10 a=IOVrdXkZsZi_Xkr5h5Fc:22
 a=iTWC1DL0K-q19goYTGrE:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=atindriya.co.in; s=default; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:Subject:To:From:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=NvN3nA0hsYUABtiwUTbGIXcUy6/mLV0kNInCrzUHFQs=; b=r2P4ZxvTkJlC3rBTP8raKjFvjF
	rWDCmGhqg3OJ1zMBzOdC9yAnGmqpSrWaVTHXbLfJHXL1SZjUbYReM1MWDEkQgeGGvdheQhFAE8kP4
	mSGIRiQoURcfhH9fXxTHNtupNTXDPfuorhedLFnB/LX/lcBrJsm/bwNkh14/ilPGrbN0uNA3de4Uc
	GjKlepIR/WrYKCegUCe/G7a2sXe3HiaHTL4filTpeYrtKG2L677TwHMZy1Zm9Nh5HRxCuMhjC1XD1
	nsF9TmXtkoGdVkdf947R1G4SkY7Amfgj2kzKzT2c3SjW4t4JnBIHL4ZOBHf1J2wlJKi/b+YN37F9J
	80JS800Q==;
Received: from [::1] (port=48196 helo=server.atindriya.co.in)
	by server.atindriya.co.in with esmtpa (Exim 4.96.2)
	(envelope-from <kavinraj@atindriya.co.in>)
	id 1tlglA-00012n-0a
	for usrp-users@lists.ettus.com;
	Fri, 21 Feb 2025 23:05:04 -0500
MIME-Version: 1.0
Date: Fri, 21 Feb 2025 23:05:03 -0500
From: kavinraj@atindriya.co.in
To: usrp-users@lists.ettus.com
User-Agent: Roundcube Webmail/1.6.0
Message-ID: <4bf5c92ac30f933582427d87157a88c1@atindriya.co.in>
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
X-CMAE-Envelope: MS4xfCcyLmdpGzozrCziUQd3HUTGKkr8NR/mrSHcUvI9LqCDY4EFXJQ3MgjLPhkmySB5q7rqlSXMS0g/IZe8+8hf8EHULAeNWatcnwZKLv1ZYV+kYCy/mUOD
 CLJWp8Vx9oiws0Q8ROI1AHqUpdKpjtrTZ2UR9mosAjN4FTu6olFJH6AEfBlQwUo6KxQzVwENKSOHU0Z89WhmOaBnL95Av60nVSo=
Message-ID-Hash: YOOHBENRENJMPDTEM6PY3HHOOR7OGVE4
X-Message-ID-Hash: YOOHBENRENJMPDTEM6PY3HHOOR7OGVE4
X-MailFrom: kavinraj@atindriya.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] REG : GPIO in USRP B205Mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YOOHBENRENJMPDTEM6PY3HHOOR7OGVE4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,
    In USRP B205mini-i I am able to access the GPIO Pin. I have to create 
a Pulse in the GPIO pin. I want to make high the gpio pin for 
1microsecond and low for 999microseconds. How to achieve this timings 
through coding. Can you give me the solution for this?

    In coding after making high I am giving usleep(1) function but when I 
am check in the oscilloscope it is showing 64microseconds. How?



Thanks.
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
