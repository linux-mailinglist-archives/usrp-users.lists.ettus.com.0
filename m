Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DED43A1AFED
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2025 06:34:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B54AE385AA4
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2025 00:34:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737696863; bh=QvgwM0IFKMHqmaj4IWEeMf6cxAsynyC/ZYBFjHkqokk=;
	h=Date:From:To:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=gtrhyEBuc+PLs8ADMIVr0tB3iAa8wSlnDuNmtRlsN/qViNU0Um87b9vixNX+twUg/
	 aELhCfowqyvkcvZ3usHeu8RSLpBCo8emhi+n9xyHc/q+xIiAKbuhuPo5uOV4sDq5un
	 AL9T7paM6BooWlJlxtLfQrzplkmXaG8vH4dCoRLyIxiK/0I0pO8YsJevFglHrQXVjk
	 7dV5oUKnndu7w7aNwksgZNgUrUb+TH33/35RAMqFQwU5+Y8CWOcDsoa2a4ycI3oto3
	 oRx/qQegSglDzuU7RUJILl7HhT8i8zsCQcJ0OzIxm3Fmk9PRAO3JMKEkQocKNHnF5u
	 MsFI34yR/4CcQ==
Received: from omta033.useast.a.cloudfilter.net (omta033.useast.a.cloudfilter.net [44.202.169.32])
	by mm2.emwd.com (Postfix) with ESMTPS id 4F0D7383ED2
	for <usrp-users@lists.ettus.com>; Fri, 24 Jan 2025 00:33:43 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=atindriya.co.in header.i=@atindriya.co.in header.b="GfwhFzM/";
	dkim-atps=neutral
Received: from eig-obgw-6005a.ext.cloudfilter.net ([10.0.30.201])
	by cmsmtp with ESMTPS
	id b1UqtXncQXshwbCK6tMm5k; Fri, 24 Jan 2025 05:33:42 +0000
Received: from 119-18-48-61.webhostbox.net ([119.18.48.61])
	by cmsmtp with ESMTPS
	id bCK2txgXnvt5YbCK4tZ9bl; Fri, 24 Jan 2025 05:33:42 +0000
X-Authority-Analysis: v=2.4 cv=c9JgQg9l c=1 sm=1 tr=0 ts=67932636
 a=bPTgM9xNt4Vpxv/3Ws5fWw==:117 a=bPTgM9xNt4Vpxv/3Ws5fWw==:17
 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=MKtGQD3n3ToA:10 a=1oJP67jkp3AA:10
 a=VdSt8ZQiCzkA:10 a=j0z1oGNQ4lYA:10 a=Ghay-zAP8vCvOpKok4AA:9
 a=CjuIK1q_8ugA:10 a=IOVrdXkZsZi_Xkr5h5Fc:22 a=iTWC1DL0K-q19goYTGrE:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=atindriya.co.in; s=default; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:Subject:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=NKgvBhrWPyoO8tS3hMeYKFWBKGurKFAFpsYT7N9JmMg=; b=GfwhFzM/DpimzMIlCguJD6KeFd
	BDiffv2VSpwDDRab/W4heSwPHCHeJb/KGS7CPbFVuOEz2eUe0Vqer2sYhbpUJ1ruwlFIyNrzB8uur
	NLEeynQPqRO6KptYvoXw3fY13bHSqM1L47yLHgTX7XABjtlvwmDcBOCLCV7bZ5DpyMh7rAbZPPnz9
	WCBnwpL3lLnsdK7nKtgG4Fac9phfdyYsUNWGjlxKwm2MVkCgupMA8kZbaU2YlH7saj8u2uyN1Gxqf
	eLkyyt/fEGghNkJ2gZYgZLoJizbNJNCJdUUX9ao/Yn006JL9KTzDszVzLSxl5oClfb/qHZsChtHhr
	xZ5oRrwg==;
Received: from [::1] (port=46554 helo=server.atindriya.co.in)
	by server.atindriya.co.in with esmtpa (Exim 4.96.2)
	(envelope-from <kavinraj@atindriya.co.in>)
	id 1tbCJx-0004Gn-2v;
	Fri, 24 Jan 2025 00:33:38 -0500
MIME-Version: 1.0
Date: Fri, 24 Jan 2025 00:33:37 -0500
From: kavinraj@atindriya.co.in
To: usrp-users@lists.ettus.com
User-Agent: Roundcube Webmail/1.6.0
Message-ID: <c0b8b26f43b81d3bc15a37088f15b44d@atindriya.co.in>
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
X-CMAE-Envelope: MS4xfDOU2dcGsQ0Atr1ZZvLx7ZnrTreaCpdbd5dO3f4uE4780B1TlAp02B1AkgJv5i4OqO5hkb9fLt2DkHSyX8s8QcLZ3lN6btKyh7sX85VDwYXGpfHK/K71
 qRPKJIIEh+H54oiqqLPAgP/lKKVQO6dFbBwLaPi0ey4Pc0UVYTBit7qX5LsAqJfIp+ldczBoOFZYlzB4eaLhy0VW/BxxtkvOMICq2dFOhX6uK1jrCn0jaQ7s
Message-ID-Hash: QP56Y5DY5GPP2SGOTNYSCZCHE4IR5MAW
X-Message-ID-Hash: QP56Y5DY5GPP2SGOTNYSCZCHE4IR5MAW
X-MailFrom: kavinraj@atindriya.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Pradeep Kumar <pradeep.kumar@atindriya.co.in>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] REG : B205MINI-I board
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QP56Y5DY5GPP2SGOTNYSCZCHE4IR5MAW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,
    Recently, I have bought USRP B205mini board. I am working on it. I 
have downloaded the UHD driver from the ubuntu package(sudo apt-get 
install libuhd-dev uhd-host).

    When the board is connected to the PC it is detected when I give the 
uhd_find_devices it shows the serial,name,product and type.

    So, I have written the code for receiving the data. When I am build 
the code it doesn't show any error. When I run the program some API 
functions are working fine. when it reach the 
uhd_rx_streamer_issue_stream_cmd(rx_streamer,&stream_cmd); and 
uhd_rx_streamer_recv(rx_streamer, buffs_ptr, SAMPLES_PER_BURST, 
&rx_metadata, burst_duration, false, &items_received);  it automatically 
terminates the program.

    When I debug line by line, after reaching the above function it shows 
like No source available for "uhd_rx_streamer_issue_stream_cmd() at 
0x7ffff7227cfe" .  What may be the issue?

    Also I want to configure the GPIO pins in the board. For that I need 
GPIO bank name, Can you give me the GPIO bank name of this board?


With regards,
Kavinraj.
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
