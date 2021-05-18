Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 48AF5387178
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 07:55:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2DC39384201
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 01:55:15 -0400 (EDT)
Received: from mailout10.t-online.de (mailout10.t-online.de [194.25.134.21])
	by mm2.emwd.com (Postfix) with ESMTPS id C85203841D1
	for <usrp-users@lists.ettus.com>; Tue, 18 May 2021 01:54:25 -0400 (EDT)
Received: from fwd20.aul.t-online.de (fwd20.aul.t-online.de [172.20.26.140])
	by mailout10.t-online.de (Postfix) with SMTP id 1F32E66740
	for <usrp-users@lists.ettus.com>; Tue, 18 May 2021 07:54:24 +0200 (CEST)
Received: from [192.168.0.118] (bVI2aMZDYhx5aiwQQ7K11NTMOB-6RqplmuSIYYTYLjl3D9MV2xV4qNMds9GqPckguB@[94.31.101.112]) by fwd20.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1lisgP-1HmvqK0; Tue, 18 May 2021 07:54:21 +0200
References: <fb2e5614-926b-9c04-8288-ebdce945341a@t-online.de>
To: usrp-users@lists.ettus.com
From: Maik Scholz <Scholz.Maik@t-online.de>
X-Forwarded-Message-Id: <fb2e5614-926b-9c04-8288-ebdce945341a@t-online.de>
Message-ID: <080fe0ff-8503-b556-b7ab-20037c8b0094@t-online.de>
Date: Tue, 18 May 2021 07:54:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <fb2e5614-926b-9c04-8288-ebdce945341a@t-online.de>
Content-Language: en-US
X-ID: bVI2aMZDYhx5aiwQQ7K11NTMOB-6RqplmuSIYYTYLjl3D9MV2xV4qNMds9GqPckguB
X-TOI-EXPURGATEID: 150726::1621317261-00000BA7-E71C3678/0/0 CLEAN NORMAL
X-TOI-MSGID: 6661d3a2-76fd-4e97-856a-2b3ad5293819
Message-ID-Hash: 6YCN5XCVWE4R26TXMHPSSB4QH5UY6RFM
X-Message-ID-Hash: 6YCN5XCVWE4R26TXMHPSSB4QH5UY6RFM
X-MailFrom: Scholz.Maik@t-online.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Porting Linux QT 5.5.1 UHD application to Windows/MingW
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6YCN5XCVWE4R26TXMHPSSB4QH5UY6RFM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,
i like to port my existing linux/Qt5.5.1 UHD application to windows.
I can't find any matching libUHD prebuild.

The MSVC prebuild are not compatible with a MingW application.

Would be great, if a libUHD mingw release would be part of the regular 
releases.

Do you have any hint?

Is there a working howto compile lbUHD with a MingW compiler?

Maik
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
