Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B05392F4DA9
	for <lists+usrp-users@lfdr.de>; Wed, 13 Jan 2021 15:51:20 +0100 (CET)
Received: from [::1] (port=50784 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kzhUU-0004gN-Ih; Wed, 13 Jan 2021 09:51:18 -0500
Received: from smtp.emailarray.com ([69.28.212.198]:20408
 helo=smtp2.emailarray.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <philip@balister.org>) id 1kzhUP-0004Xz-EV
 for usrp-users@lists.ettus.com; Wed, 13 Jan 2021 09:51:13 -0500
Received: (qmail 8605 invoked by uid 89); 13 Jan 2021 14:50:31 -0000
Received: from unknown (HELO ?192.168.11.139?)
 (cGhpbGlwQG9wZW5zZHIuY29tQDczLjI1MS4xMC4xNDM=) (POLARISLOCAL) 
 by smtp2.emailarray.com with SMTP; 13 Jan 2021 14:50:31 -0000
To: Ben Magistro <koncept1@gmail.com>
Cc: USRP list <usrp-users@lists.ettus.com>
References: <CAKx8PBi=-d5=yfyPf_=AVJYrvQq1-eshS5EW=jLzogS9uO6nRw@mail.gmail.com>
 <CAGNhwTMz2w-kD=a4m9EeLHqsXP9cKgXhok+jsW1Tu=einSvgyQ@mail.gmail.com>
 <CAKx8PBgNoL6bAf8o-hXr0HnJnNaAj5XknPF5RPamY3Cs_hYCEg@mail.gmail.com>
 <CAKx8PBjjDas_yuBxOgM6O8R1zqgZUiYavqFfidu87n1_qEsDrA@mail.gmail.com>
 <c53ab9dd-b83a-80e7-f3d9-c54dd639b201@comcast.net>
 <7dd171e1-ee65-358a-6ad0-3a76fc234957@balister.org>
 <4a0ab3d4-4650-b896-b856-08a53a3309b8@balister.org>
 <CAKx8PBhYvNhRKkHfPft1o_=LfYy15QECbaOGyr8B5xM4j9p+iA@mail.gmail.com>
Message-ID: <0d505ca6-2b16-bd7d-99d9-4a257587078c@balister.org>
Date: Wed, 13 Jan 2021 09:50:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <CAKx8PBhYvNhRKkHfPft1o_=LfYy15QECbaOGyr8B5xM4j9p+iA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] meta-ettus-v4.0.0.0 segfault
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

I haven't :( I have been looking at packaged testing for volk and
gnuradio. Once I have this sorted, I'll spend a little time looking into
setting this up for fftw to try and catch this problem faster in the future.

Philip

On 1/9/21 3:29 PM, Ben Magistro via USRP-users wrote:
> Finally getting a chance to circle back to this and I would rather be on
> dunfell but the bsp for the E310 doesn't appear to have been ported yet.  I
> made an attempt but cannot build an image successfully and need to do a
> better set of diffs on the kernel patches.
> 
> Has anyone else started on a dunfell port?
> 
> Ben
> 
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
