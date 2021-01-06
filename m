Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BBA2EC5B6
	for <lists+usrp-users@lfdr.de>; Wed,  6 Jan 2021 22:29:03 +0100 (CET)
Received: from [::1] (port=35620 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kxGMV-0001VG-8P; Wed, 06 Jan 2021 16:28:59 -0500
Received: from resqmta-po-12v.sys.comcast.net ([96.114.154.171]:40255)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <w6rz@comcast.net>) id 1kxGMS-0001Qp-7a
 for usrp-users@lists.ettus.com; Wed, 06 Jan 2021 16:28:56 -0500
Received: from resomta-po-06v.sys.comcast.net ([96.114.154.230])
 by resqmta-po-12v.sys.comcast.net with ESMTP
 id xDtokld2ysJ0MxGLnkLXxA; Wed, 06 Jan 2021 21:28:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1609968495;
 bh=3qcM4W+1MTXuF2Wg5cXK+5LBjUyxICSJdw/KN4f8mFA=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=2IBa4NJ3007iDJxNeSm75JoKDX8N9QaM+m/D66m5NheIPw2tIE3ytMzalgRjt2Z4L
 GPIRmkLt4J9FSZ61JJxLLY1YReYwcj3qswP7lpevVXaQylQ9aK0+0EuKHt5y1iXrhU
 g/34yVgud7G241wGwlGtIlYS5hakaSjGhIUHvprxzGfycgxY+kMCih7N4u8yLSR1Ox
 juqIx0wj2zWc/npdwvwrZ2Xioztn+xejKkaBBA4ILYU4VSUUBNdiS+oLulj+Gfy9OS
 0uSpA7b2mne4U0Q6B+lYT4XUTLCxJ7f0j2BQRFiIU1Mcbj6QYBNIELDoAcuFZgSgvc
 UQWwJ1L30dMqg==
Received: from [IPv6:2601:647:4200:ea30:cc8d:cfff:7aad:401]
 ([IPv6:2601:647:4200:ea30:cc8d:cfff:7aad:401])
 by resomta-po-06v.sys.comcast.net with ESMTPSA
 id xGLjkf6u61WFpxGLmkueKb; Wed, 06 Jan 2021 21:28:14 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <3e23eec0-0ae2-edbf-724f-78a03ac13f46@dcsmail.net>
Message-ID: <5acb9450-e1b6-28bf-6e4a-5e9c7054cf7e@comcast.net>
Date: Wed, 6 Jan 2021 13:28:11 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <3e23eec0-0ae2-edbf-724f-78a03ac13f46@dcsmail.net>
Content-Language: en-US
Subject: Re: [USRP-users] Transmit underruns
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

It was attached. ssbtested.grc

Ron

On 1/6/21 09:22, Barry Duggan wrote:
> Thanks for your reply. Did you forget to give the link to the GRC file?
>
> 73,
> ---
> Barry Duggan KV4FV
> https://github.com/duggabe
>
> On Tue, 5 Jan 2021 17:33:24 -0800, Ron Economos wrote:
>
> Here's an ssb flow graph that's known to work. You can select the
> sideband with the default option of the QT GUI Chooser block before you
> start the flow graph (you can't change filter taps on the fly).
>
> The test file is here.
>
> http://www.w6rz.net/ssbaudio.wav
>
> Ron

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
