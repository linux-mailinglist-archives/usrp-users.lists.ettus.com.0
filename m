Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C2D175DD4
	for <lists+usrp-users@lfdr.de>; Mon,  2 Mar 2020 16:04:49 +0100 (CET)
Received: from [::1] (port=34070 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j8mcf-0002ZF-Fi; Mon, 02 Mar 2020 10:04:45 -0500
Received: from mout.gmx.net ([212.227.15.15]:59993)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1j8mcb-0002Tf-6s
 for usrp-users@lists.ettus.com; Mon, 02 Mar 2020 10:04:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1583161440;
 bh=uj3dLQV9KAviFkeWuC1Sscwm3FMkBS5qRI1MkR2pEnU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=AmkTYtcZTZA0bq1noU0uBO/dLxp5yzsgLBqzVmSS5E4y1eparPOMDXmxTS/1RT2uH
 /dfkHRuZI0s/w7LBuDuAIWwyech5c/APMuxl3jGRqtwNtUL+tMeYM9Hb6Z0JZP2EFg
 jl5U9BeAmRUpWaqMLrGIbMmf14sLkfQdvtQ+Pb8s=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bs64.server.lan [172.19.170.148]) (via HTTP); Mon, 2 Mar 2020
 16:04:00 +0100
MIME-Version: 1.0
Message-ID: <trinity-6d081d85-efab-4ee6-9dfd-d15b3f6ff1b5-1583161440082@3c-app-gmx-bs64>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Mon, 2 Mar 2020 16:04:00 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:WYbg9qhAzIR/VDFb/YUzz9iX9MhP3cludnZB8UxKSc4tWRvz1VhgqTFRyNIVGnGT9fh+t
 JrRLF0XZ3cuEOPOBgcO2jfdACuRVD+KNa9o8t6XEZ9Rpsa73vD3MeWzqUvkG8NFHTMal1JeP2pQN
 n6KJd12D8U2EwuIQ+42MSooKTjd0RIVN2eQaou+BhyWZ62Tm0JpaoV5E24DIAw5KXVsxedJZh04q
 coiK9sSNHSxb9pPaMJKIfpRtopTYq+VmBHCoJjPc9PQq40YGXC7fgPb5QpeapJW0R/3tipRi3qkj
 TQ=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qrlmeEkuvnc=:uCqflXWJuS+wuJvtyHRy/w
 XdMBkLrMG4skZN27bT8+qKaWkkRkWQu3DvPx5WyXt4os1dWfjX9HgZAFwzASy0oOXwk24d9Tr
 g7tCWHp84vT60bPuqYU5OEaWONbpQKADBFsJ0LQKeFxcSDSmr6EJFLtiI8TS5CcZggY1QwEzY
 GINUVYs62n5Ecz4vfk+gsim9VmrxfP6ax2V3AtAIfQ6YQWPDr7STIZAepnMgCqXw77ekLUjpB
 2noSg5oKD8hBw4t4eDV797WCgbuslXcwGicPz97SKfTnLnrzOGiIdNzkJD+oRlNBmp0bAytnk
 51sU/1s0PCvLIzV8h3wSLNvyhJ2q3UrjdTXlpZ/DsqtRt4AD1ETFFRijDzp40DsJ2znqVINvF
 urRqOyNRACuUC4c/U/kaQRZOlOa3jYpAg9fj/4DMM/j5JfEHIkbxfx3S1wkfi9plfE2Yv3kmz
 7wrWt66nR/j1SJGqULliKA7UPW6e8mu8jAjH8uH0u/Ie173LYUaJBCSuk/dXU0vTDvESpQZ5S
 gpQ3ZXZdtuoD/ZhRL/oObBjc11ut1UYrjXIbQEUBSZ8dGQxw9NxGXX4pJVCIkZKkOhX02EiR0
 x4ZL/MykVoqBLuSv7yvEr4F7FjsLDXTBKei66WoeIaCLyJJt0LBpkZjqX16ceX676nPqVEJYp
 hpbGkIbmFqQHkCquwpG+TrYJaCvmnJYcabFtOvafG64kK6XBlYKiU8LAaa5ZRXhXWMqs=
Subject: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a
 timed command
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
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

Hi Marcus,

Thank you that would be amazing!

I followed the tutorial and built everything from source:

$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 18.04.4 LTS
Release:        18.04
Codename:       bionic
$ uname -a
Linux sdr 5.3.0-40-generic #32~18.04.1-Ubuntu SMP Mon Feb 3 14:05:59 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
$ cd uhd
$ git status
HEAD detached at v3.15.0.0
$ cd ../gnuradio
$ git status
HEAD detached at v3.7.14.0


Thank you!

Lukas



PS: For some reason I sometimes do not get responses from this list. I just saw it looking at the mailman archives. Hence I cannot respond (to keep headers intact) but need to create a new message and manually "quote". I hope that still preserves the context somehow.



Marcus Leech wrote:
> On 02/28/2020 01:01 PM, Lukas Haase via USRP-users wrote:
>> Hi again,
>>
>> I created a minimum example (gnuradio) that shows the issue described below.
>> To summarize: Retuning to a different dsp frequency on an USRP X310 (+UBX160) does not work (command ignored) ONLY if a timed command (in future is used).
>> The code shows it in a simple manner. Commenting out the single line with set_command_time makes the example work.
>>
>> I am absolutely out of ideas and would appreciate any input!
>>
>> Best,
>> Lukas
> Lukas.
>
> Thanks for sticking with this.  I'll have a discussion with Ettus R&D to
> see if this is a known issue and/or if there's a workaround.
>
> Remind me which version of UHD you're using?



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
