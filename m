Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F352B50EB
	for <lists+usrp-users@lfdr.de>; Mon, 16 Nov 2020 20:21:06 +0100 (CET)
Received: from [::1] (port=35866 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kek3j-00082M-PG; Mon, 16 Nov 2020 14:21:03 -0500
Received: from scalix.pari.edu ([68.235.248.163]:57054)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <lowen@pari.edu>) id 1kek3g-0007x4-Hu
 for usrp-users@lists.ettus.com; Mon, 16 Nov 2020 14:21:00 -0500
Received: from scalix.pari.edu (localhost [127.0.0.1])
 by scalix.pari.edu (Postfix) with ESMTP id E9966640159
 for <usrp-users@lists.ettus.com>; Mon, 16 Nov 2020 14:20:19 -0500 (EST)
Received: from localhost.localdomain (localhost [127.0.0.1])
 by scalix.pari.edu (Scalix SMTP Relay 12.6.0.14933)
 via ESMTP; Mon, 16 Nov 2020 14:20:19 -0500 (EST)
Date: Mon, 16 Nov 2020 14:20:15 -0500
To: usrp-users@lists.ettus.com
Message-ID: <7c355116-88f5-35b5-2ba8-2d851ed4af68@pari.edu>
In-Reply-To: <5FB2C107.60309@gmail.com>
References: <5aef8e21-77a8-e3a0-1542-8f9075039eb9@pari.edu>
 <5FB2C107.60309@gmail.com>
x-scalix-Hops: 1
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
Content-Language: en-US
Subject: Re: [USRP-users] UHD version that supports older DBSRX on a USRP1.
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
From: Lamar Owen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lamar Owen <lowen@pari.edu>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
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

On 11/16/20 1:12 PM, Marcus D. Leech via USRP-users wrote:
> On 11/16/2020 10:26 AM, Lamar Owen via USRP-users wrote:
>> ...
>> AssertionError: m and ref_clock/m >=3D 1e6 and ref_clock/m <=3D 2.5e6
>> =A0 in double dbsrx::set_lo_freq(double)
>> =A0 at =

>> /home/conda/feedstock_root/build_artifacts/uhd_1602712704625/work/host/l=
ib/usrp/dboard/db_dbsrx.cpp:306
>>
> The general policy has always been that old hardware would be =

> supported in newer versions of the software--although it may not
> =A0 get "new" features.
>
> The problem with running an older UHD is that it may not support newer =

> Gnu Radio (3.8 and newer).=A0 My recollection is that the last
> =A0 time I tried USRP1 it worked, and that it was UHD 3.10.=A0=A0 I'm not =

> aware of any *conscious* decision not to support original USRP1+DBX
> =A0 in UHD versions going forward.
I wasn't able to find a statement to that effect either, and looking =

through the sources it looks like it should work.=A0 Perhaps I need to =

specify a parameter to satisfy the AssertionError?=A0 I don't recall =

seeing that back when I was using these three USRP1s on a frequent =

basis.=A0 The same error does occur with both of the other USRP1s, it's =

not isolated to just the one.=A0 I did find at least one other report of =

the same error, as well as your response, back in 2018. That one =

appeared to be cleared by checking to see if more than one copy of UHD =

in the path, and I don't find any.


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
