Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CDDBEC6F
	for <lists+usrp-users@lfdr.de>; Thu, 26 Sep 2019 09:18:48 +0200 (CEST)
Received: from [::1] (port=44884 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iDO30-0005FJ-0D; Thu, 26 Sep 2019 03:18:42 -0400
Received: from sidious.ihf.ing.tu-bs.de ([134.169.78.12]:60932)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <fabian.schwartau@ihf.tu-bs.de>)
 id 1iDO2w-0005BS-BC
 for usrp-users@lists.ettus.com; Thu, 26 Sep 2019 03:18:38 -0400
Received: from localhost (localhost [127.0.0.1])
 by sidious.ihf.ing.tu-bs.de (Postfix) with ESMTP id 2078E83D2BA3
 for <usrp-users@lists.ettus.com>; Thu, 26 Sep 2019 09:17:57 +0200 (CEST)
X-Virus-Scanned: by amavisd-new-2.10.1 (20141025) (Debian) at ihf.ing.tu-bs.de
Received: from sidious.ihf.ing.tu-bs.de ([127.0.0.1])
 by localhost (sidious.ihf.ing.tu-bs.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TktvCubIh6B3; Thu, 26 Sep 2019 09:17:56 +0200 (CEST)
Received: from [134.169.78.184] (unknown [134.169.78.184])
 by sidious.ihf.ing.tu-bs.de (Postfix) with ESMTPSA id 904B283D2B9F
 for <usrp-users@lists.ettus.com>; Thu, 26 Sep 2019 09:17:56 +0200 (CEST)
To: usrp-users@lists.ettus.com
References: <4f9463d7bc9747498b2f2bda40f7b2ec@tudelft.nl>
Message-ID: <512807eb-9b64-0580-3425-b6016754157a@ihf.tu-bs.de>
Date: Thu, 26 Sep 2019 09:17:54 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4f9463d7bc9747498b2f2bda40f7b2ec@tudelft.nl>
X-Antivirus: AVG (VPS 190925-2, 25.09.2019), Outbound message
X-Antivirus-Status: Clean
Subject: Re: [USRP-users] One sample - 5 ns delay between the two RF
 signals/ X310
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
From: Fabian Schwartau via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Fabian Schwartau <fabian.schwartau@ihf.tu-bs.de>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
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

Hi,
I have very similar problem with X310. I am running a C++ application, =

so I have a bit more flexibility I guess. After I do the =

set_time_unknown_pps to sync to the 1PPS signal, I run the function =

get_time_last_pps and it sometimes has an offset of 10ns (it was 5ns for =

an old firmware due to a bug, which was fixed a few weeks ago). If that =

is the case I just do the sync again until the offset is zero.
I don't know if it is an firmawre problem or if it is because the signal =

integrety of the 1PPS signal is not good enough.
Maybe that is also a solution for you.
Best regards,
Fabian

Am 25.09.2019 um 11:16 schrieb Cherif Diouf via USRP-users:
> Hello,
> I am working with the X310 USRP. I have two identical custom blocks =

> feeding the RF frontends.
> =

> flowchart
> -----------------
> HW Block1 -> RF0-TX1 |---<
> HW Block2 -> RF1-TX1 |---<
> =

> The system is synchronized to an external PPS reference. The sampling =

> rate is 200 MSps and the signal bandwidth is 160 MHz for both channels.
> The two HW blocks start=A0 transmitting at the exactly same time. Time =

> resolution is 5ns.
> In most cases the two outgoing RF signals present a 1ns time offset. =

> Which can be understood as a phase offset.
> =

> But From time to time there is a 6ns delay between the channels. I =

> assume this 6ns comprises the 1ns delay due to phase offset + 5 ns delay =

> due to misalignment of outgoing samples.
> =

> What could be the origin of this one sample misalignement? Is it a way =

> to fix it? Or working close to the limits of the device should such =

> behavior be expected?
> =

> Thanks in advance
> =

> Best Regards
> Cherif
> =

> =

> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> =


-- =

--------------------------------------------------
M.-Sc. Fabian Schwartau
Technische Universit=E4t Braunschweig
Institut f=FCr Hochfrequenztechnik
Schleinitzstr. 22
38106 Braunschweig
Germany

Tel.:   +49-(0)531-391-2017
Fax:    +49-(0)531-391-2045
Email:  fabian.schwartau@ihf.tu-bs.de
WWW:    http://www.tu-braunschweig.de/ihf
--------------------------------------------------

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
