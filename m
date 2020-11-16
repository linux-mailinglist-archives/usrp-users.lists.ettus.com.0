Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF842B5474
	for <lists+usrp-users@lfdr.de>; Mon, 16 Nov 2020 23:39:32 +0100 (CET)
Received: from [::1] (port=37452 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ken9m-0007Ow-2o; Mon, 16 Nov 2020 17:39:30 -0500
Received: from scalix.pari.edu ([68.235.248.163]:42334)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <lowen@pari.edu>) id 1ken9h-0007HW-Ta
 for usrp-users@lists.ettus.com; Mon, 16 Nov 2020 17:39:25 -0500
Received: from scalix.pari.edu (localhost [127.0.0.1])
 by scalix.pari.edu (Postfix) with ESMTP id 63EA264012B;
 Mon, 16 Nov 2020 17:38:45 -0500 (EST)
Received: from localhost.localdomain (localhost [127.0.0.1])
 by scalix.pari.edu (Scalix SMTP Relay 12.6.0.14933)
 via ESMTP; Mon, 16 Nov 2020 17:38:45 -0500 (EST)
Date: Mon, 16 Nov 2020 17:38:40 -0500
To: Marcus D. Leech <patchvonbraun@gmail.com>,
	usrp-users@lists.ettus.com
Message-ID: <9b9979ba-bc4c-9939-fdc1-4fe9593439f8@pari.edu>
In-Reply-To: <5FB2FC93.4020809@gmail.com>
References: <5aef8e21-77a8-e3a0-1542-8f9075039eb9@pari.edu>
 <5FB2C107.60309@gmail.com>
 <7c355116-88f5-35b5-2ba8-2d851ed4af68@pari.edu>
 <7269bb32-af6f-1631-1c33-5b78e9b03ef9@pari.edu>
 <96cd5a7a-0f92-d15a-280c-375e0a002144@pari.edu>
 <5FB2FC93.4020809@gmail.com>
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

On 11/16/20 5:26 PM, Marcus D. Leech via USRP-users wrote:
> On 11/16/2020 03:32 PM, Lamar Owen via USRP-users wrote:
>>
>>
>> [TRACE] [DBSRX] DBSRX: trying ref_clock 4000000.000000 and m_divider 4
>> [TRACE] [DBSRX] DBSRX R:2
>>
>> [ERROR] [DBMGR] The daughterboard manager encountered a recoverable =

>> error in init.
>> Loading the "unknown" daughterboard implementations to continue.
>> The daughterboard cannot operate until this error is resolved.
>> AssertionError: m and ref_clock/m >=3D 1e6 and ref_clock/m <=3D 2.5e6
>> =A0 in double dbsrx::set_lo_freq(double)
>> =A0 at =

>> /home/conda/feedstock_root/build_artifacts/uhd_1602712704625/work/host/l=
ib/usrp/dboard/db_dbsrx.cpp:306
> If you look at the context of this assertion--it should never be =

> asserted.=A0=A0 ref_clock is 4e6 and m is 4, so the test is satisfied, an=
d =

> therefore the
> =A0 assertion shouldn't fail.=A0 I wonder if this is a compiler issue, or =

> an issue with the UHD_ASSERT logic?

Yeah, I saw that; thanks for the pointer (to someone else's question) =

about logging at trace level.=A0 So I've filed it as an issue in the UHD =

github.=A0 Could be something similar to issue #304 at the UHD github.

What it does tell me is that 3.15 SHOULD support USRP1 with DBSRX, just =

need to fix the issue.

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
