Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 865F22777CE
	for <lists+usrp-users@lfdr.de>; Thu, 24 Sep 2020 19:29:20 +0200 (CEST)
Received: from [::1] (port=50010 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kLV3W-0001iH-TD; Thu, 24 Sep 2020 13:29:18 -0400
Received: from starfish.geekisp.com ([216.168.135.166]:27571)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <philip@opensdr.com>) id 1kLV3S-0001Qg-Vq
 for USRP-users@lists.ettus.com; Thu, 24 Sep 2020 13:29:15 -0400
Received: (qmail 14035 invoked by uid 1003); 24 Sep 2020 17:23:35 -0000
Received: from unknown (HELO ?192.168.11.139?)
 (philip@opensdr.com@73.251.10.143)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 24 Sep 2020 17:23:35 -0000
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Autocrypt: addr=philip@opensdr.com; prefer-encrypt=mutual; keydata=
 mQENBE6PN4EBCADXwOSVOvTrJ370tH2RmiR22OuCBcKfnKTLztyV5zA0veDB1kmrIajh+sJe
 HWNqsib0v19S3wdrvqzKrztSfNAgUctvkAuTOloU81dmbAjDSge6nFxjzIIz6XjNvmP5xl9J
 rstPm4i4dhAs5436xf4Bh0vn3C/Bp4fKwXBSW/Xto7vuiuSK03ojon3F8O2WNEmKxHyubFP1
 2tNvXOp/PeAR4LTnYq6fdAAofvbpbPDBg8qICe6j1UXaIyU93IbW+bJp1RFbeakWxiTw+eQ2
 fVjG5XnubNX0YBlmjHDJhjeqV1uwkImNHlZknecLjT7g37vIMwz+PTfPIhmIGffzqtHlABEB
 AAG0JFBoaWxpcCBCYWxpc3RlciA8cGhpbGlwQG9wZW5zZHIuY29tPokBPgQTAQIAKAIbIwYL
 CQgHAwIGFQgCCQoLBBYCAwECHgECF4AFAlgzUPgFCREo52oACgkQwMl3iuvSZ6uB2AgAy9gW
 ohjdrM5M86NbGPR6oysosmC6yabL1PBzRK/B86HwWaH29S71ptFvHfitbK37uWI/b3KGO18Q
 d6cD9MM9da/G/zjTrakw9KMmZcY12Mtotm0vZjv8dzdqoyNZnIFlGNAT92zTLWUiUQqV8CvS
 1lxDubidjoyXlQi7YJmzQbETYsGZZmErRRjSK//fgl/ceaak0lPYnwuVlxuEOcqmREg5UfAf
 AeFH0a6csdF3T9COH4bOQVNBwjUSCfs6jsTE/lw8ujZfhbFbFb/7/BYZYnfED1unj+6vrDRn
 VI20tLTKmDG7vcE55HiaHvVmx+1rb1wDL8aspyoeg/bjGQv1mLkBDQROjzeBAQgA+z5kLRGA
 XhuWtEiJUd2QBGdwDFTBJRu2Lkq7bd1DSIGLOjOHhga5yBbjyDGy8kKQJz2z/gL17e9iIJkZ
 UYLzHouXe8TvHBFD965WonSZcbu00rXMA+lKAjpqig9JkJbs8G/Bjy4y/PMLM/4QF3T6gDm5
 dBIRzI4lRjLht596ugdSIGMGTI136/aJol/sqMBhjEk5w++2er9UvT2GWa0IPnOCE6fzSu0u
 oXroEmQeYBOilJbKivWrPuCajB0KQWRQkM1bvIlPXBUA2oN30/kDy9iGeDAlMey9dV+2a8GA
 uImNi4qy3fobYA4eCbiWzmNExr+TuNa57VEozkvHOAG0tQARAQABiQElBBgBAgAPAhsMBQJY
 M1FsBQkRKOfkAAoJEMDJd4rr0merWpgH/3dqIF16cC67Qf/MZYQUUHXhx2ENHhLirQRt9eXX
 P2jcitrPDpYy0t7XbMnj9eXjUyH8gfz/4CAOeKCKyuQpE3VOSI4YNRWdLRqSSEwvc41t4V2h
 xgTAEA8NPEBpY2jKMN79s5GiRImffVwWgbpBjLNRy3v2ekeittpdbTNb4oLvsOjnfJQpDz6J
 xal+IIyTVjNIcKvTLk1k1XFpz1rT4gPMf9gFs10ks1oy9dy56B7VCrPzml1HQ/he4JVEPaNk
 BtwYnNleW71nOkgeO1mjIXylolExDDNYQ7f9PGSyabsrx67xPPYlWmOI4iPjgw5MqhEYqM7p
 5R+vS7sLCcTKqJA=
Message-ID: <3226c6ec-fac3-8c0f-5927-b2d5c76cbe2e@opensdr.com>
Date: Thu, 24 Sep 2020 13:28:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [USRP-users] E300 sg3 images with uhd 4.0
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
Reply-To: Philip Balister <philip@opensdr.com>
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

I booted an image from:

https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.0.0.0/

on a sg3 unit. The BogoMIPS display suggests the clocks are set to what
I expect for a sg1 unit though. I couldn't find any knobs in /sys or
/proc. I compared with the ancient release-4 image and that has the
number of BogoMIPS expected from that unit.

Anyone at Ettus have any insite into how cpu clock speed is handled with
that image. Diffing the ps7 files didn't show many diffs in clock setup.
(And they looked like they came from a source besides vivado)

Philip

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
