Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1190953E5CF
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 19:03:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4BDEF383F7F
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 13:03:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654535024; bh=mx7k2cUWwjNy1U+ILR/JDzXS50vN5FheweiK04p/uAU=;
	h=From:To:References:In-Reply-To:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=NPChExgZaZTpUFLMy53f3K9PJvzJjCgjGXrH0wp4bVNiaHKw+elgazacmD4l/YGx0
	 sThqUTCUOAm+dylBl7tQ2v7dOmRsK1GQmWw706xme98ikG1gObuGnGVRMduui/AlCn
	 U0W+Pb9v2//PndaKo2SoXLkoUrTFqqrHPPAka99/pAaPYIZ0GXxOHKpqR8ZEkkvc/e
	 WlzZ/wGqdin4WDJlnLWJN7rRth05BR1ozY/DWBJ9XAeRZ1OLjZA7rsv+oIYWSVkPUN
	 y7PbOsA/U71wsA1QSgHWJlxZvqI1UCda8+5vXLgoK1vc3OJXK/WfQkKUEFL3jIypyW
	 t24h2hNI3zY0A==
Received: from relay4.hostedemail.com (smtprelay0014.hostedemail.com [216.40.44.14])
	by mm2.emwd.com (Postfix) with ESMTPS id 51B9B383D52
	for <usrp-users@lists.ettus.com>; Mon,  6 Jun 2022 13:02:42 -0400 (EDT)
Received: from omf04.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay10.hostedemail.com (Postfix) with ESMTP id CD32D94E;
	Mon,  6 Jun 2022 17:02:41 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: jon@beniston.com) by omf04.hostedemail.com (Postfix) with ESMTPA id 03DE02002D;
	Mon,  6 Jun 2022 17:02:40 +0000 (UTC)
From: "Jon Beniston" <jon@beniston.com>
To: "'Marcus D. Leech'" <patchvonbraun@gmail.com>,
	<usrp-users@lists.ettus.com>
References: <0a7201d879c4$18b47460$4a1d5d20$@beniston.com> <7e9c6643-bffb-8a5b-915a-ff4524770449@gmail.com>
In-Reply-To: <7e9c6643-bffb-8a5b-915a-ff4524770449@gmail.com>
Date: Mon, 6 Jun 2022 18:02:39 +0100
Message-ID: <0a8a01d879c7$3bf7fbb0$b3e7f310$@beniston.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQI+YnAXmM94U0s+mLR5vjW3De6oVQIwXGJkrGVFJcA=
Content-Language: en-gb
X-Rspamd-Queue-Id: 03DE02002D
X-Spam-Status: No, score=-2.71
X-Stat-Signature: cadj8sn5zspa3srho6ysh4hedkswcf87
X-Rspamd-Server: rspamout01
X-Session-Marker: 6A6F6E4062656E6973746F6E2E636F6D
X-Session-ID: U2FsdGVkX18rSvFh6o2AGmb78ixUNJRRhp3UKTuwSVc=
X-HE-Tag: 1654534960-198341
Message-ID-Hash: WXZTSN6DCCVA5NYZISFXDUGKRIXTVTAI
X-Message-ID-Hash: WXZTSN6DCCVA5NYZISFXDUGKRIXTVTAI
X-MailFrom: jon@beniston.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Automatic master clock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WXZTSN6DCCVA5NYZISFXDUGKRIXTVTAI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Marcus,

>I'm pretty sure that if you just *dont specify* a master_clock_rate in a session 
>with an E3xx device, UHD will simply pick an appropriate
> master-clock rate.  

This seems to be the case - but the question is how to restore this behaviour after setting it to a specific value?

The reason it is being set, is I'm trying to determine the min/max rx sample rate - and on the b210, the values returned by get_rx_rates() depend on what master clock is set. So I set it to min/max before returning it to automatic. Perhaps there's a better way to do that?

Thanks,
Jon
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
