Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DAF2B9D8D
	for <lists+usrp-users@lfdr.de>; Thu, 19 Nov 2020 23:23:24 +0100 (CET)
Received: from [::1] (port=41320 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfsKo-0004dx-JU; Thu, 19 Nov 2020 17:23:22 -0500
Received: from starfish.geekisp.com ([216.168.135.166]:34422)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <philip@balister.org>) id 1kfsKl-0004Np-4v
 for usrp-users@lists.ettus.com; Thu, 19 Nov 2020 17:23:19 -0500
Received: (qmail 14916 invoked by uid 1003); 19 Nov 2020 22:16:41 -0000
Received: from unknown (HELO ?192.168.11.139?)
 (philip@opensdr.com@73.251.10.143)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 19 Nov 2020 22:16:41 -0000
To: Ben Magistro <koncept1@gmail.com>, USRP list <usrp-users@lists.ettus.com>
References: <CAKx8PBiYjS+iH+ZnPKKm2yhGHe3qWmVXZW=aXzgLRqVHZSwg_w@mail.gmail.com>
Message-ID: <258c1b45-3f6c-b278-a5f6-47f08e4e3d8c@balister.org>
Date: Thu, 19 Nov 2020 17:22:37 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <CAKx8PBiYjS+iH+ZnPKKm2yhGHe3qWmVXZW=aXzgLRqVHZSwg_w@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Building Debug FS Image
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

Build without mender?

Philip

On 11/19/20 4:51 PM, Ben Magistro via USRP-users wrote:
> I've been trying to rebuild meta-ettus (in this case -v4.0.0.0) with debug
> enabled but am hitting an issue with image size being larger than an 8GB sd
> card and can't seem to get past that.  It says I should increase
> `MENDER_STORAGE_TOTAL_SIZE_MB` if the actual size is larger but increasing
> this in `local.conf` this seems to have no effect.  I am using the ettus
> docker image for oe-builder with the command
> `./meta-ettus/contrib/build_imgs_package.sh e310_sg3 v4.0.0.0`.  For the
> debug portion I've added a few lines to `build/conf/local.conf` to add the
> packages.  Anyone know how to increase the total storage size so that it
> can build the image?
> 
> Thanks in advance.
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
