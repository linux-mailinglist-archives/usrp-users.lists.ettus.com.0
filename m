Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 218993BEB0
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jun 2019 23:31:58 +0200 (CEST)
Received: from [::1] (port=47906 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1haRtS-0003Mk-Rl; Mon, 10 Jun 2019 17:31:54 -0400
Received: from sun60.bham.ac.uk ([147.188.128.137]:38440)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <J.Subash@bham.ac.uk>) id 1haRtO-0003FI-Qq
 for usrp-users@lists.ettus.com; Mon, 10 Jun 2019 17:31:50 -0400
Received: from [147.188.128.54] (helo=mailer3)
 by sun60.bham.ac.uk with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <J.Subash@bham.ac.uk>)
 id 1haRsj-000375-Om; Mon, 10 Jun 2019 22:31:09 +0100
Received: from exhub01.bham.ac.uk ([147.188.135.84]
 helo=exhub01.adf.bham.ac.uk) by bham.ac.uk (envelope-from
 <J.Subash@bham.ac.uk>) with esmtp (Exim 4.92) id 1haRsj-0006WI-Es 
 using interface smart2.bham.ac.uk; Mon, 10 Jun 2019 22:31:09 +0100
Received: from EX12.adf.bham.ac.uk ([fe80::f4ba:37ad:3fc1:631]) by
 exhub01.adf.bham.ac.uk ([147.188.135.84]) with mapi id 14.03.0439.000; Mon,
 10 Jun 2019 22:31:09 +0100
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Dip in frequency spectrum.
Thread-Index: AdUftR0JrixkOBqEQi6ikCEaJ2yYmQABBcEAAAaTG1A=
Date: Mon, 10 Jun 2019 21:31:08 +0000
Message-ID: <7269FF47698D4B4F8BAB63029E1D659A0A9E1960@EX12.adf.bham.ac.uk>
References: <b53bf201-38fb-01bc-5bd8-7d70c1548c4a@bham.ac.uk>,
 <5CFEAD86.3000305@gmail.com>
In-Reply-To: <5CFEAD86.3000305@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.188.216.203]
MIME-Version: 1.0
X-BHAM-SendViaRouter: yes
Subject: Re: [USRP-users] Dip in frequency spectrum.
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Joeal Subash via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Joeal Subash <J.Subash@bham.ac.uk>
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

I will double check that with a noise source. Which methods in the API can be used for offset tuning?

Thanks.
BW
JS
________________________________________
From: USRP-users [usrp-users-bounces@lists.ettus.com] on behalf of usrp-users@lists.ettus.com [usrp-users@lists.ettus.com]
Sent: 10 June 2019 20:20
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Dip in frequency spectrum.

On 06/10/2019 01:51 PM, J Subash via USRP-users wrote:
> Hi,
>
> I am recording a 20MHz wide signal centred at 370MHz.
>
> Attached is an averaged frequency spectrum, and there is a 6dB dip at
> the centre of the spectrum. Is there a obvious reason for this. I am
> using the python API and a B200 for doing this.
>
> Is there any way to avoid this from happening?
>
> Thanks
>
> BW
>
> JS
>
How do you know that your signal doesn't have this dip?

Use of a good flt noise source allows you to differentiate between the
case of your signal, and the receiver.

There is DC-offset removal in the signal chain, so if you aren't using
offset tuning, you can see some amount of "over-correction" for the
DC-offset,
   leading to a dip in the response, although it's usually fairly small.




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
