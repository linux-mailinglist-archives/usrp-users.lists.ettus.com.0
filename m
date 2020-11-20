Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A802BAF8D
	for <lists+usrp-users@lfdr.de>; Fri, 20 Nov 2020 17:05:22 +0100 (CET)
Received: from [::1] (port=48390 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kg8uV-0003cf-JJ; Fri, 20 Nov 2020 11:05:19 -0500
Received: from starfish.geekisp.com ([216.168.135.166]:1793)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <philip@balister.org>) id 1kg8uR-0003W7-5q
 for usrp-users@lists.ettus.com; Fri, 20 Nov 2020 11:05:15 -0500
Received: (qmail 32531 invoked by uid 1003); 20 Nov 2020 15:58:34 -0000
Received: from unknown (HELO ?192.168.11.139?)
 (philip@opensdr.com@73.251.10.143)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 20 Nov 2020 15:58:34 -0000
To: Ben Magistro <koncept1@gmail.com>
Cc: USRP list <usrp-users@lists.ettus.com>
References: <CAKx8PBiYjS+iH+ZnPKKm2yhGHe3qWmVXZW=aXzgLRqVHZSwg_w@mail.gmail.com>
 <258c1b45-3f6c-b278-a5f6-47f08e4e3d8c@balister.org>
 <CAKx8PBhdgm0VYZQfHDUTOJZUbZfR8CWSiKORw1DV0j2BLs+rRQ@mail.gmail.com>
Message-ID: <34beec6d-a910-557e-c3fe-8e8589748f14@balister.org>
Date: Fri, 20 Nov 2020 11:04:31 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <CAKx8PBhdgm0VYZQfHDUTOJZUbZfR8CWSiKORw1DV0j2BLs+rRQ@mail.gmail.com>
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

The quick answer is switch the bsp layer from

meta-e31x-mender

to meta-e31x

and see what happens. I find I ahve to fiddle a lot with the ettus
builds, so it does help to know OpenEmbedded/Yocto.

Anyone know the status of the clock speed issue I reported a while back?
A quick scan of metta-ettus shows no updates since Sep 13.

Philip

On 11/20/20 10:44 AM, Ben Magistro via USRP-users wrote:
> I'm open to that idea but am not familiar with openembedded/yocto/mender or
> what that process would look like (and the little bit of googling hasn't
> shed enough light yet) so I fall back to the tools that I have found and
> that is the ettus docker container with oe-build (
> https://github.com/EttusResearch/ettus-docker/tree/master/oe-build) and the
> instructions there.  As far as I know I only need the sdimg, but this goes
> back to not being familiar with the build process so I could be off base.
> Looking at the `setup_build_env.sh` script, mender seems to be tied in both
> as a layer and what the image may inherit from.  I don't know if it is as
> simple as removing the references to mender in that file and calling build
> or if that will break the resulting image (technically already broken since
> it segfaults for me -- libfftw see
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-November/063062.html)
> but I'd like to know I'm not introducing new problems at the same time I am
> trying to resolve my first problem.
> 
> Ben
> 
> On Thu, Nov 19, 2020 at 5:22 PM Philip Balister <philip@balister.org> wrote:
> 
>> Build without mender?
>>
>> Philip
>>
>> On 11/19/20 4:51 PM, Ben Magistro via USRP-users wrote:
>>> I've been trying to rebuild meta-ettus (in this case -v4.0.0.0) with
>> debug
>>> enabled but am hitting an issue with image size being larger than an 8GB
>> sd
>>> card and can't seem to get past that.  It says I should increase
>>> `MENDER_STORAGE_TOTAL_SIZE_MB` if the actual size is larger but
>> increasing
>>> this in `local.conf` this seems to have no effect.  I am using the ettus
>>> docker image for oe-builder with the command
>>> `./meta-ettus/contrib/build_imgs_package.sh e310_sg3 v4.0.0.0`.  For the
>>> debug portion I've added a few lines to `build/conf/local.conf` to add
>> the
>>> packages.  Anyone know how to increase the total storage size so that it
>>> can build the image?
>>>
>>> Thanks in advance.
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
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
