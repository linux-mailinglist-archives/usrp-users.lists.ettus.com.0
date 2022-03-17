Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5984DC25E
	for <lists+usrp-users@lfdr.de>; Thu, 17 Mar 2022 10:12:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C76BB385188
	for <lists+usrp-users@lfdr.de>; Thu, 17 Mar 2022 05:12:47 -0400 (EDT)
Received: from dd41508.kasserver.com (dd41508.kasserver.com [85.13.141.232])
	by mm2.emwd.com (Postfix) with ESMTPS id 823A5384C86
	for <usrp-users@lists.ettus.com>; Thu, 17 Mar 2022 05:11:54 -0400 (EDT)
Received: from [192.168.178.36] (p4ff2a034.dip0.t-ipconnect.de [79.242.160.52])
	by dd41508.kasserver.com (Postfix) with ESMTPSA id F05657000CD2;
	Thu, 17 Mar 2022 10:11:52 +0100 (CET)
Message-ID: <739292fd-3940-788d-43fd-56c599035ee4@elitecoding.org>
Date: Thu, 17 Mar 2022 10:11:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: armand.fontes@syrlinks.com, usrp-users@lists.ettus.com
References: <pMJt13hKIG0H5eDyn6OUWFHlog07KhItvBFzBIuRQTk@lists.ettus.com>
From: Julian Arnold <julian@elitecoding.org>
In-Reply-To: <pMJt13hKIG0H5eDyn6OUWFHlog07KhItvBFzBIuRQTk@lists.ettus.com>
Message-ID-Hash: T5QIIYENBNWJPJGLYUN6KM7WMI4YKTMP
X-Message-ID-Hash: T5QIIYENBNWJPJGLYUN6KM7WMI4YKTMP
X-MailFrom: julian@elitecoding.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [USRP E312] Disable bb dc offset tracking
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T5QIIYENBNWJPJGLYUN6KM7WMI4YKTMP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Armand,

take a look at

void ad9361_device_t::_calibrate_baseband_dc_offset()

in ad9361_device.cpp.

You could play around with the parameters in there and see if that helps.

However, if I remember correctly, it is the bb tracking that can be 
disabled via UHD and the rf tracking will always be active
(see void ad9361_device_t::set_dc_offset_auto(direction_t direction, 
const bool on)).

Anyhow, you should be able to replicate the register settings used by 
the ADI tool in ad9361_device.cpp to get to the desired behavior.

Cheers,
Julian


On 3/17/22 09:49, armand.fontes@syrlinks.com wrote:
> Hello,
> 
> I'm using usrp e312 for acquisitions on modulated signals and i have 
> undesired power variations in time domain (2 to 10%). Thanks to analog 
> devices tools, i discovered that disabling bb_dc_offset tracking on 
> AD9361 settled the problem. As far as I know, uhd only provides 
> "rf_dc_offset" and "iq_imbalance" control and this doesn't settle the 
> problem. My question is how, on an uspr e312, can I disable bb_dc_offset 
> tracking ? (Or at least modify bb_dc_offset loop parameters).
> 
> Thanks for any help,
> 
> Armand
> 
> 
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
