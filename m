Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E71124E6B
	for <lists+usrp-users@lfdr.de>; Wed, 18 Dec 2019 17:54:14 +0100 (CET)
Received: from [::1] (port=56792 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ihcaR-0001Ym-Pu; Wed, 18 Dec 2019 11:54:11 -0500
Received: from mout.gmx.net ([212.227.17.20]:55407)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <lukashaase@gmx.at>) id 1ihcaO-0001Sb-1k
 for usrp-users@lists.ettus.com; Wed, 18 Dec 2019 11:54:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1576688006;
 bh=V5KxGsHQpAJGNfznzdrrWm85aOaOmGOAbny6ABtOTQA=;
 h=X-UI-Sender-Class:From:To:Subject:Date:References;
 b=dVHjpTGXfy23YjCq660zeV2WnwC+9P2fK1QWOqTiBg57wBJR1U/4U1M0bcbevyU+A
 v8MINwo2g0I23yCRkRaDJ5Y/kgsBWO8f2Nbfx/r6L26GP+M/uUE858ao9JENAKgxNp
 MCvr+PwjZP2gLsxSsebDVm1nYfoG9hhUSdhPk+gU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bap35.server.lan [172.19.172.105]) (via HTTP); Wed, 18 Dec 2019
 17:53:26 +0100
MIME-Version: 1.0
Message-ID: <trinity-8bb4682d-afc9-48fa-89d1-73cb93c2545c-1576688006803@3c-app-gmx-bap35>
To: "USRP-userslists.ettus.com" <usrp-users@lists.ettus.com>
Date: Wed, 18 Dec 2019 17:53:26 +0100
Importance: normal
Sensitivity: Normal
References: <trinity-6c4af0fa-52cb-4d53-9353-13491cb25809-1576295403539@3c-app-gmx-bs40>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:7pDEyQlLNIiVN9/J9ihzGJRmtqNa6W1s8Kk672y7MZ1N0RI9xeORaY7CBojRfTM5tcO5a
 C3vDVhPwv89IoE/5O1w5rgIYD8kFKz33ppTUGHRJJdVynlQ0UqgSFv/MZyfjwXpEdSD/jxDJTf+G
 AT+qnd8V8V4kIBviPGSyz1PuX517sSiqr8QR2ixACM8+jTE7vo69xwBFULBZVObY83T/+5cA8XN/
 lsQ5fOVtU9206ZWnj05tM42XEK2d+BTvIApa8F8byxhI142Q9FEo6o1XlVAu221fhCz4PF3DKCfh
 ho=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AfGuvryo6Po=:/7aPjWd9+q+7+t+dIeu0F5
 wZ8qjpLwMqYRR95MVmW5EEqGjOH0eLtO91X/1/RtTROuRZuEQuW/iF+mO2g9/P2obEcZ78BXm
 8Y+y8w8T0G0+v/fTYl/xAON2yOq2ekjrDxVFz95O4hDG1QyqwyNF/iXnq40H5NhiHl/ohZnGo
 /ffUX2dLVHZdaCk8T6vKRf+eKqOlPlV6XSm7Doe9UBOil5h72iMX6QjxLzun1npOL1yHFrYku
 Ucc8m07Cjb4f1dZSHrWZaPkatfxbhoTlCSU+an1rLpa/c4/aD7/Ur4G4QeN5XSfG6sMb49vXv
 U6L9+3UZSskceFo9LiJpAvCiVGh1cNnaYN8gpq6uFXhd3lbS1QP0WsytcZ+Lh2GSggAQKI5FQ
 yVJ05DnWxyft9QbyXZS7eu4BuOxCSE78JY5c5mGtpvgitcOWwZ/eyeeN1qpupqYREXQMdgwPo
 fF6hqc+CVrlNNC/nb6PMQLF4X0w/uQW3tn0Wpq1lf10spK4kOANwCmHEuP9dcm7EHUMMpEknD
 rYYaZw1dFrDvlHyCuo1iZS1M5P2fkJuxPOQ1cBQd4ETv8Ewdg4JojdyIiJDog26VtCSNu1CBT
 upPG+7dy9MSU4qv6TEOUy6swJm//PADExlsn610CiofKrk1nf30TVcH4H/r3fsrkoWjo/Bke8
 XbnO+vvfp1fvyNsUa40a321PozBSR086vg1XuHRPQxlw/CA==
Subject: Re: [USRP-users] Config USRP Source/Sink integer-N mode and timed
 commans via messages
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

Hi,

I just wanted to follow up on the question below.
I am currently (ab)using the "Function Probe" to execute the tuning code at the "Poll Rate". But I'd like to avoid this because it does not seem reliable.

My main concerns are (a) setting integer-N mode via the messages port and (b) obtaining the current USRP time (get_time_now) for the timed commands when using the message port.

If this is something that's just not possible, that would be a valuable answer as well.


Thanks,
Luke



> Gesendet: Freitag, 13. Dezember 2019 um 22:50 Uhr
> Von: "Lukas Haase" <lukashaase@gmx.at>
> An: usrp-users@lists.ettus.com
> Betreff: Config USRP Source/Sink integer-N mode and timed commans via messages
>
> Hi,
>
> The UHD interface supports messages to change center frequency etc [1].
> I would want to send the following commands via messages to the USRP Sink and USRP Source, respectively:
>
> now = self.uhd_usrp_sink_0.get_time_now()
> timeStamp = now + uhd.time_spec(0.1)
>
> tune_req_tx = uhd.tune_request(fcenter-1e6, 1e6)
> tune_req_tx.args=uhd.device_addr(','.join(["mode_n=integer", "int_n_step=1000e3",]))
> self.uhd_usrp_sink_0.set_command_time(timeStamp)
> res1 = self.uhd_usrp_sink_0.set_center_freq(  tune_req_tx, 0)
> self.uhd_usrp_sink_0.clear_command_time()
>
> tune_req_rx = uhd.tune_request(2*fcenter)
> tune_req_rx.args=uhd.device_addr(','.join(["mode_n=integer", "int_n_step=1000e3",]))
> now = self.uhd_usrp_sink_0.get_time_now()
> self.uhd_usrp_source_0.set_command_time(timeStamp)
> res2 = self.uhd_usrp_source_0.set_center_freq(tune_req_rx, 0)
> self.uhd_usrp_source_0.clear_command_time()
>
> The first issue is that the "tune_request" described in [1] is a simple pair. However, the real uhd::tune_request_t is more comprehensive and includes the "args" element that I need to set to "mode_n=integer", "int_n_step=1000e3" for integer N PLL.
>
> The second issue is the timed command. It seems usrp_block::set_command_time translates into "time" with "timestamp" and usrp_block::clear_command_time translates into "time" with PMT_NIL. However, how to I obtain the current UHD time (uhd_usrp_sink_0.get_time_now)?
>
> Thanks,
> Luke
>
>
> [1] https://www.gnuradio.org/doc/doxygen/page_uhd.html




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
