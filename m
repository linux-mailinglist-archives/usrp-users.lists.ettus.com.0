Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB4553ED08
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 19:34:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 550FA383B69
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 13:34:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654536855; bh=lBBb9Qdah0P7l655DA15hMeGwLOh90U8Vgraj3yx/3M=;
	h=From:To:References:In-Reply-To:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=f68VDQ5wmNyNaisTaSqPn36Dx3LIxg+VXHI/wxomLJPUkG29N9KbhpGvxIfgGaARr
	 5nYLe4uhmy7Fc12AUukxkh2TInFFRCJTPlo33XNHqhnkGe/6RsLusKRxrCGb+XbQyU
	 l2QpmrzwV9CnNJftPZWMCuNXkCK+/BDTizhIp7saDuBRT2P5RKeyjkYs3D6AFuIscb
	 2Gj7h/JtrZQtPw5HkvkVnUsgYCpMfWuZv7yECqaP+GsSt99/isysLp6n/PLL6p5HpV
	 epbOiB3qSkkUxhzQ1nZiN7zXfPQw7tpaZzX+fWGEYWrwxxveMF/zMr/LOtkLt068ej
	 OFtPkmfEOAAgQ==
Received: from relay3.hostedemail.com (smtprelay0013.hostedemail.com [216.40.44.13])
	by mm2.emwd.com (Postfix) with ESMTPS id 04C403840A8
	for <usrp-users@lists.ettus.com>; Mon,  6 Jun 2022 13:33:07 -0400 (EDT)
Received: from omf13.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay02.hostedemail.com (Postfix) with ESMTP id CEED83411D;
	Mon,  6 Jun 2022 17:33:06 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: jon@beniston.com) by omf13.hostedemail.com (Postfix) with ESMTPA id DFAC92001E;
	Mon,  6 Jun 2022 17:33:05 +0000 (UTC)
From: "Jon Beniston" <jon@beniston.com>
To: "'Marcus D. Leech'" <patchvonbraun@gmail.com>,
	<usrp-users@lists.ettus.com>
References: <0a7201d879c4$18b47460$4a1d5d20$@beniston.com> <7e9c6643-bffb-8a5b-915a-ff4524770449@gmail.com> <0a8a01d879c7$3bf7fbb0$b3e7f310$@beniston.com> <503463d6-879b-82b9-dfc5-6980f35f635b@gmail.com>
In-Reply-To: <503463d6-879b-82b9-dfc5-6980f35f635b@gmail.com>
Date: Mon, 6 Jun 2022 18:33:05 +0100
Message-ID: <0a9901d879cb$7bcb4270$7361c750$@beniston.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQI+YnAXmM94U0s+mLR5vjW3De6oVQIwXGJkAsE1bssB782kfaw/w5Vw
Content-Language: en-gb
X-Rspamd-Queue-Id: DFAC92001E
X-Spam-Status: No, score=-0.14
X-Stat-Signature: rcm6pxh9156bc3u8f5oondtyxwge3cwe
X-Rspamd-Server: rspamout01
X-Session-Marker: 6A6F6E4062656E6973746F6E2E636F6D
X-Session-ID: U2FsdGVkX181auqgwBCa1A4+fppWjkPE40CvDFGtjuQ=
X-HE-Tag: 1654536785-891679
Message-ID-Hash: DQLPORMIPPBAQ65DM3AHXDHZNIDOZW5U
X-Message-ID-Hash: DQLPORMIPPBAQ65DM3AHXDHZNIDOZW5U
X-MailFrom: jon@beniston.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Automatic master clock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DQLPORMIPPBAQ65DM3AHXDHZNIDOZW5U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Marcus,

>The "master_clock_rate" specification is *per session*.   It does NOT set it in any persistent way.  
> In the next session, if you don't specify it, UHD will pick an appropriate
> clock value.  If this is NOT happening, then that is a bug or an under-documented feature.

Sorry for the basic question, but what is a "session"? How do I end one and start a new one within a single execution of a program?

If I just try to re-make the device, I get an exception. Eg:

                m_dev = uhd::usrp::multi_usrp::make(device_args);
                m_dev->set_master_clock_rate(61.44e6);
               // How to restart a session here?
                m_dev = uhd::usrp::multi_usrp::make(device_args);

...
[INFO] [B200] Asking for clock rate 61.440000 MHz...
[INFO] [B200] Actually got clock rate 61.440000 MHz.
[INFO] [B200] Detected Device: B210
[INFO] [B200] Operating over USB 3.
[ERROR] [UHD] Exception caught in safe-call.
  in b200_radio_ctrl_core_impl::~b200_radio_ctrl_core_impl
  at C:\Users\buildbot\worker0\Builder_uhdPackage_Windows_x64_vs2019\work\uhd\host\lib\usrp\b200\b200_radio_ctrl_core.cpp:68
this->peek32(0); _async_task.reset(); -> AssertionError: accum_timeout < _timeout
  in b200_radio_ctrl_core_impl::wait_for_ack
  at C:\Users\buildbot\worker0\Builder_uhdPackage_Windows_x64_vs2019\work\uhd\host\lib\usrp\b200\b200_radio_ctrl_core.cpp:227

Probably something trivial, but I can't see it in the docs. No close/release method I can see.

Thanks,
Jon

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
