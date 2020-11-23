Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F46D2C089A
	for <lists+usrp-users@lfdr.de>; Mon, 23 Nov 2020 14:16:39 +0100 (CET)
Received: from [::1] (port=47568 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khBhl-0001gW-1K; Mon, 23 Nov 2020 08:16:29 -0500
Received: from starfish.geekisp.com ([216.168.135.166]:33130)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <philip@balister.org>) id 1khBhg-0001aN-Ks
 for usrp-users@lists.ettus.com; Mon, 23 Nov 2020 08:16:24 -0500
Received: (qmail 14346 invoked by uid 1003); 23 Nov 2020 13:09:45 -0000
Received: from unknown (HELO ?192.168.11.139?)
 (philip@opensdr.com@73.251.10.143)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 23 Nov 2020 13:09:45 -0000
To: Joe Crossen <jmcrossen80@gmail.com>, discuss-gnuradio@gnu.org,
 usrp-users@lists.ettus.com
References: <CAEnX9dG87HxLnGoNeeEgK+QBYcB7idJnN4A715BzPye_4XYT2Q@mail.gmail.com>
Message-ID: <baa5b7dd-b792-6208-cc27-ea2035f28b21@balister.org>
Date: Mon, 23 Nov 2020 08:15:43 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <CAEnX9dG87HxLnGoNeeEgK+QBYcB7idJnN4A715BzPye_4XYT2Q@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Poor Data Rates with the USRP E312
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
From: Philip Balister via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Philip Balister <philip@balister.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

With the downloaded images for UHD-4.0 I saw a couple of things:

1) The CPU clock speed is set for speed grade 1 parts, not speed grade 3.
2) UHD-4.0 hangs after a while at higher data rates, I've also seen this
on a b200.

If there are fixes for these issues, you might get a bit more transfer
rate. Not sure it will get you the speed you need though.

Philip

On 11/22/20 9:20 PM, Joe Crossen wrote:
>  Hi all,
> 
> I'm attempting to use the USRP E312 as a wifi node using the gr-ieee802.11
> module...
> though for now I'm testing basic USRP functionality with a couple of simple
> GNU graphs.
> 
> Here's my setup:
> - the host is an Ubuntu 18.04 virtual machine with a bridged adaptor.
> Firewall disabled.
> - the USRP is the E312, connected via ethernet to the host network.
> - the host and USRP are both running GR3.8 and UHD4.0 (Zeus branch).
> - the host can see the USRP with uhd_usrp_probe.
> - the USRP is running the following GNU graph - UHD:USRP Source -> UDP Sink.
> - host is running the following GNU graph - UDP Source -> QT GUI Sink.
> - all block parameters are default.
> 
> I'm experiencing the following issues:
> 1. For sample rates > ~2Msps, the USRP spams overrun "O" and "D" characters
> (what does the "D" signify?) , regardless of whether the host graph is
> running or not.
> 2. At any sample rate the host graph spams the following message (when the
> USRP graph is running) - "gr::log :WARN: udp_source0 - Too much data;
> dropping packet."
> 
> And a question:
> 3. What sample rates are realistic for this setup, and what are the
> limitations? wifi channels span 20MHz, so I'm hoping to run at 20Msps
> 
> Thanks,
> Joe
> 

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
