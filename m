Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A66E53E5BF
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 18:41:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B75C538403F
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 12:41:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654533684; bh=tlmTpTANPYriLCzxmoDcQGINMSBBB55HoQ+UFsJAVlk=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=JfvhONW7ulZTk2VVyokCVJZ8Mt/Xx2JxCNjzb8zDyPBPEu4EfoQxcRX57U91ZNGtN
	 IFoUncouWy9uASICPqeAmXc7pRMbBKSe+FwuauLGVqAOdE4RPbzNHEhsGi9y9nEoja
	 NfsMDtyCP960JbaogFOa2N2+mdkNMJGzSZJ5K/Iio4A+XxsggS04+hIGQG1bhcc3fE
	 YZ6qJzAm/OTPOF/q1ZI/64/8TnJvZps2MGhekQWyVbarpzTrjXnbiFb+dI7uv6vbi3
	 EFdp3Fdz1LvbX8GlxP+U/gNWcgV9qBVGPejxBjhodYY1vN7hA3eN37XV9nklNy+xKF
	 YyQ2sN5iaojPQ==
Received: from relay4.hostedemail.com (smtprelay0011.hostedemail.com [216.40.44.11])
	by mm2.emwd.com (Postfix) with ESMTPS id ABEC7383723
	for <usrp-users@lists.ettus.com>; Mon,  6 Jun 2022 12:40:14 -0400 (EDT)
Received: from omf15.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay12.hostedemail.com (Postfix) with ESMTP id 29ABE120882
	for <usrp-users@lists.ettus.com>; Mon,  6 Jun 2022 16:40:14 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: jon@beniston.com) by omf15.hostedemail.com (Postfix) with ESMTPA id 820BE1C
	for <usrp-users@lists.ettus.com>; Mon,  6 Jun 2022 16:40:13 +0000 (UTC)
From: "Jon Beniston" <jon@beniston.com>
To: <usrp-users@lists.ettus.com>
Date: Mon, 6 Jun 2022 17:40:12 +0100
Message-ID: <0a7201d879c4$18b47460$4a1d5d20$@beniston.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: Adh5wuwfOcnwu6yBT6ufwDfk6CD2uA==
Content-Language: en-gb
X-Rspamd-Queue-Id: 820BE1C
X-Spam-Status: No, score=-4.09
X-Stat-Signature: 6k45i8g8tb3iadqrxp8f9jb7sta3tdor
X-Rspamd-Server: rspamout02
X-Session-Marker: 6A6F6E4062656E6973746F6E2E636F6D
X-Session-ID: U2FsdGVkX19Wf3/sFz1U9ze0IvC+aDW3ydhWbekiz4Q=
X-HE-Tag: 1654533613-775153
Message-ID-Hash: 545MYVG6R2JZIOHZKONVGBTTBOKTYGJ6
X-Message-ID-Hash: 545MYVG6R2JZIOHZKONVGBTTBOKTYGJ6
X-MailFrom: jon@beniston.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E320 Automatic master clock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/545MYVG6R2JZIOHZKONVGBTTBOKTYGJ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

On a b210, after manually setting a master clock rate, it can be returned to
the automatic setting, by setting the property:

/mboards/0/auto_tick_rate to true

However, this doesn't seem to work on an E320. uhd_usrp_probe --tree doesn't
show an auto_tick_rate property. How can I set it back to automatic on an
E320, or any other USRP device?

Thanks,
Jon

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
