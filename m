Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D5943117604
	for <lists+usrp-users@lfdr.de>; Mon,  9 Dec 2019 20:39:11 +0100 (CET)
Received: from [::1] (port=47516 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieOsA-0003kS-8T; Mon, 09 Dec 2019 14:39:10 -0500
Received: from mout.gmx.net ([212.227.17.20]:33591)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <lukashaase@gmx.at>) id 1ieOs7-0003dP-5H
 for usrp-users@lists.ettus.com; Mon, 09 Dec 2019 14:39:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1575920306;
 bh=L5y++5RfMNgbmtXnH1WofiTlHOVn1kjuJFEyyHag/eo=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=iEowSBpkKvBqpAgahlkDFWO32K9x3QfD0AR4lAnA+wbniODZvOyIQ3irKGm2W4ejm
 nLm9EsGPd7uDOofqMWuYeijBtF9KI5h8u4e6hRyA0jaizrpDY0HbwEyGvkd1LL3a14
 eX2Dj2L1xclfJYrY3bc0Wv4vKRg3ss4pvlQFXcio=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bap48.server.lan [172.19.172.118]) (via HTTP); Mon, 9 Dec 2019
 20:38:25 +0100
MIME-Version: 1.0
Message-ID: <trinity-8e728448-2993-4aed-830a-473bf70242bf-1575920305869@3c-app-gmx-bap48>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Date: Mon, 9 Dec 2019 20:38:25 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <5DEEA191.8000704@gmail.com>
References: <trinity-7cb4be4f-5d41-4268-b5a8-2084b39834b6-1575702620460@3c-app-gmx-bs13>
 <CAL263iwG9u0mE_uQPLM+pxk-RJ2B5fHpsxBaeKg1dnzOZnrzuw@mail.gmail.com>
 <trinity-0ce9eefc-d9c2-4f7a-aa5b-342a8c0f5f36-1575747306151@3c-app-gmx-bs76>
 <CAL263iyCdU5b5p2SUJ92eNy+c7YLNuxbzi_NzrYCNOvb5OFQ5Q@mail.gmail.com>
 <trinity-43a8d710-cd0a-4b9b-a1e8-f62e485ff30c-1575843547979@3c-app-gmx-bs36>
 <5DEEA191.8000704@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:UDH/ZVqRtfOZAhT9qJzG5sZjrB3gy3dAOUGhm5nUdOKnjJvseIAwky+s2mrI1tcIrILLh
 8grySt5mEdDoCdKI3sDkoWoNFTpkeBupK2fOjrWJhIWDeibFdDUlAnVQZ8z9bbZP8ja7ualZZpFi
 mtfS0VE4WRZ2CopliNSZfQu0AB9mkFarszwJlBq/kB5pc1TnZLn19dWkEXVY6hD2z81YmAjiwjfK
 qcm6OgJ7awZYrr5GExIkIzCOj8tpmFrCpZW57QhhZfHV4Q7A7cmLAuzj1eYQfrwPhWoetzOQ4Qw1
 sk=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WD26fTXsWuM=:lysv8SzvVJePj7VVKlFjXG
 MkIzSpqrIQmUGNs8eCp3ojq/5pRg/FFjzZ+c2lFYZ5zH9TpsNVQ1PKslE3ndrM0ympmiP0VAk
 CABQZ14oJLRjr+P+vLH7kEmscB8Ry+ku59NC5/2s1tlJqexya88z0I/oHrOiDBXPF2qH3sBqF
 j70iMVv8azAHokZ/IwIdIRZxjAsU6/+ljf5QutRNk0zSBSVv5EOg7kDDgAdpVR6khRVQImUYL
 qBG4Fl5BoOqwuPjNo9vujWKs/Kk4m8aAk2zl4GwlHi/oLd7ELbpsm/r1h4gmhyfQZ6Meb3vS1
 nSpGCk2Gqwu6cT/gTglhHrJeo+c0uE/TQWEE0EOSo0QaP02HyLwbJRl5qsQrlscKGil5VUErW
 xiot+9W6XhivoNa21oxJcazr15fDpeHpNhpgDPOW6IO+hoM/mtQEmD5URBsonEyOSsq562DK8
 w+sRhw/Hilx62OaSkqosforPnIxXI1VIE7mqmdHEf9ae0a70Et00wJ23l3124POLER5SjniWx
 0XffOfv6Pm14fVY0gtYNXNTqmEn4KqGU1l5+1aIrRZ6b+ZUPIhzGwjaAwUo1XQxAE6Z7cFPNw
 nidRy2kHZlKe39BwnKAkhZVtiBa3ENlrCl6eswJC3NxpscVO2IBAYE2+7CvIr1euYVzc+YlY1
 oSutp7MBP+nIvgD8McqdgRz4bCOGGiktuUzWG7n67Wsq6+A==
Subject: Re: [USRP-users] Phase relation between RX/TX LO
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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

> Von: "Marcus D. Leech" <patchvonbraun@gmail.com>
> On 12/08/2019 05:19 PM, Lukas Haase wrote:
> > Hi Marcus,
> >
> >> You'll need to look at the API here:
> >>
> >> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a191b78b00d051d3d51c2f719361c1fb5
> >>
> >> and here:
> >>
> >> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a607aee766d21228a7aaabde2771eb46f
> >>
> >> Basically, GRC will generate python code where it calls the
> >> set_rx_freq() method (or set_tx_freq() method), and you need to modify this
> >>    code to have set_command_time() and clear_command_time() wrapped
> >> around those operations.
> > Thank you.
> >
> > As I understand you referenced the USRP driver whereas GRC creates gnuradio objects (e.g.: usrp_source https://www.gnuradio.org/doc/doxygen-3.7.2/classgr_1_1uhd_1_1usrp__source.html )
> >
> > My dilemma is that I need to set the center frequency of the TX to "fc" and the center frequency of the RX to "2*fc" and its phase relationship should be identical for each "fc" (at least as long the USRP does not power cycle).
> >
> > The gnuradio API als exposes the USRP API you mentioned so I tried:
> >
> >          now = self.uhd_usrp_sink_0.get_time_now()
> >          self.uhd_usrp_sink_0.set_command_time(now + uhd.time_spec(1))
> >          self.uhd_usrp_source_0.set_command_time(now + uhd.time_spec(1))
> >
> >          self.uhd_usrp_source_0.set_center_freq(2*self.fcenter, 0)
> >          self.uhd_usrp_source_0.set_center_freq(2*self.fcenter, 1)
> >          self.uhd_usrp_sink_0.set_center_freq(self.fcenter, 0)
> >
> >          self.uhd_usrp_source_0.clear_command_time()
> >          self.uhd_usrp_sink_0.clear_command_time()
> >
> > But this this the phase still jumps after a frequency change.
> So, you're trying to measure the 2nd-harmonic energy of the TX signal?

Precicely.

> What frequencies are involved here?

Example: Transmit 900 Mhz (USRP Sink).
Receive 1800 MHz (USRP Source).

The received signal will have arbitrary phase phi1.

Tune to frequency 950 MHz and receive 1900 MHz. The phase will be phi2.

Then tuning back to 900 MHz and I need to read out phi1 again.
Then tuning back to 950 MHz and I need to read out phi2 again.
And so on.

Does this make sense?


Thanks,
Luke




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
