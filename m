Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1443453F5A8
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 07:52:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8C16338417A
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 01:52:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654581125; bh=tyYxtGJneVjoQotFQJjnPDjo1eNLZjfsOoT+bQWWkT4=;
	h=From:To:References:In-Reply-To:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=CNbLrSC1L5BDy8tt6B9HxVT8Yc7p4Ce0VDDcUc2uVua+/Wr10+KLdWqeltI/RR2yr
	 TLXxHSHN24H68XjRuJOII81LazcyEtD1bVaEe3hvorlDI9zpbNbw7siEL1PmUGv5J7
	 SqR34JJ+1YSGNM59gwGsGbj76q4a8S7RHT46tUSVV95TA+NolKBakGWQQ2GoiIQkzX
	 SD/dX+Qj0HAlegumuIBvA/OXXa3GnErH+DTSBk4fKjyNDTTzoeERWVtyWp1VZ/s0lb
	 XQ/c4fED0PtQJVLj4OGZdWj0zZDH5c37rCv3RRJiygw4qJLlFGhsnULJbKmQNFXKsb
	 NBJO6DN/kUCnw==
Received: from relay.hostedemail.com (smtprelay0016.hostedemail.com [216.40.44.16])
	by mm2.emwd.com (Postfix) with ESMTPS id CA08E383EC2
	for <usrp-users@lists.ettus.com>; Tue,  7 Jun 2022 01:51:04 -0400 (EDT)
Received: from omf11.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay06.hostedemail.com (Postfix) with ESMTP id 1726935303;
	Tue,  7 Jun 2022 05:51:04 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: jon@beniston.com) by omf11.hostedemail.com (Postfix) with ESMTPA id 11F5C20038;
	Tue,  7 Jun 2022 05:51:02 +0000 (UTC)
From: "Jon Beniston" <jon@beniston.com>
To: "'David Raeman'" <david@SynopticEngineering.com>,
	"'Marcus D. Leech'" <patchvonbraun@gmail.com>,
	<usrp-users@lists.ettus.com>
References: <0a7201d879c4$18b47460$4a1d5d20$@beniston.com> <7e9c6643-bffb-8a5b-915a-ff4524770449@gmail.com> <0a8a01d879c7$3bf7fbb0$b3e7f310$@beniston.com> <503463d6-879b-82b9-dfc5-6980f35f635b@gmail.com> <0a9901d879cb$7bcb4270$7361c750$@beniston.com> <2379689d-7bac-b90c-9cc8-1ff25fac9e67@gmail.com> <0acc01d879f7$429da3e0$c7d8eba0$@beniston.com>  <PH1P110MB16655B5C9FE3A2DF4EE550F3B7A29@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <PH1P110MB16655B5C9FE3A2DF4EE550F3B7A29@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
Date: Tue, 7 Jun 2022 06:51:02 +0100
Message-ID: <0ada01d87a32$933d4810$b9b7d830$@beniston.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQI+YnAXmM94U0s+mLR5vjW3De6oVQIwXGJkAsE1bssB782kfQKg/W3GAbhrefkCKxqXFgLYzKQPq/Wp+eA=
Content-Language: en-gb
X-Rspamd-Queue-Id: 11F5C20038
X-Spam-Status: No, score=-4.01
X-Stat-Signature: btxk5gyrf1t3uapo69ewq4fkhcy9ne1z
X-Rspamd-Server: rspamout01
X-Session-Marker: 6A6F6E4062656E6973746F6E2E636F6D
X-Session-ID: U2FsdGVkX18u+UfJdaaEqaNBT0axhEF0oDA4oWYLxrA=
X-HE-Tag: 1654581062-946930
Message-ID-Hash: 6U2BAZWAK6K6OSHBZ2C7P7REI4RWRCZ6
X-Message-ID-Hash: 6U2BAZWAK6K6OSHBZ2C7P7REI4RWRCZ6
X-MailFrom: jon@beniston.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Automatic master clock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6U2BAZWAK6K6OSHBZ2C7P7REI4RWRCZ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi David,

Ok, thanks. I was just going by
https://files.ettus.com/manual/page_general.html "Automatic master-clock
selection" which said it does. I'll add some code that assumes it is manual
only, unless the /mboards/0/auto_tick_rate property exists.

Cheers,
Jon

-----Original Message-----
From: David Raeman <david@SynopticEngineering.com> 
Sent: 07 June 2022 00:57
To: Jon Beniston <jon@beniston.com>; 'Marcus D. Leech'
<patchvonbraun@gmail.com>; usrp-users@lists.ettus.com
Subject: [USRP-users] Re: E320 Automatic master clock

Hi Jon, I did some poking around in the code, and I don't believe the E320
supports that feature. On B2xx radios, if you don't specify an explicit
master clock rate it has logic to determine an ideal rate based on the
sampling rate, and it exposes an auto_tick_rate property to toggle that
behavior from the application. Conversely, on the E320 radio if you don't
specify an explicit master clock rate it always uses a fixed value of 16
MHz, and the implementation has no logic that I see to perform the dynamic
tick rate calculations.

Since the B2xx and E320 radios are both based on the AD9361 RFIC,
theoretically I think the logic could be placed somewhere such that the E320
and B2xx radios could both provide the feature. However, the implementations
are pretty diverged - the E320 is based on the newer MPM code architecture
and the B2xx is not.

Short story is the E320 doesn't seem to support this, but I think it's just
a matter of missing bits in the software.

Best,
-David


> -----Original Message-----
> From: Jon Beniston <jon@beniston.com>
> Sent: Monday, June 6, 2022 6:46 PM
> To: 'Marcus D. Leech' <patchvonbraun@gmail.com>; usrp- 
> users@lists.ettus.com
> Subject: [USRP-users] Re: E320 Automatic master clock
> 
> Hi Marcus,
> 
> >> If I just try to re-make the device, I get an exception. Eg:
> >>
> > >                 m_dev = uhd::usrp::multi_usrp::make(device_args);
> > >                m_dev->set_master_clock_rate(61.44e6);
> > >              // How to restart a session here?
> >>                  m_dev = uhd::usrp::multi_usrp::make(device_args);
> >>
> >> ...
> 
> >However, there is a set_master_clock_rate() API call:
> >
> >https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a
> 99
> >254abfa5259b70a020e667eee619b9
> 
> Yes, that's what I'm calling above.
> 
> >What the consequences are for changing this within a session
> > is necessarily device dependent.   If I were going to do this, I'd tear
down
> the streamers, set the
> >   master_clock to the new rate, and then re-create the streamers.
> 
> The problem is, that method doesn't appear to support an "automatic" 
> rate, unless I'm missing something.
> 
> Thanks,
> Jon
> 
> 
> 
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe 
> send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe send an
email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
