Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9110953F231
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 00:44:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3471A3840EC
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 18:44:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654555440; bh=gYw+vJNkUFopeB7zMn4Ar4jtLFyxiHdwPCaygCPt+ZM=;
	h=From:To:References:In-Reply-To:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Ohwx5b/TIG0HgY1S33tcMU0Vo7Rj2nK5uqx+Zzohcxe8mt3zZl6QvNFd4ELlPAoZr
	 gsrike8T8ow4dZcAOpUSQZuKLBuSz7235HpxAe4CmDmlfX/HUZL/VF/+afw/S859Dd
	 eIs8AYcTmcLFnb4emv1j3RxOOu5b4Uqr7GxyK60/+9LTIC+VEPwxyX1wmGr38tWLeY
	 CA8i5zMppVCg7yctoQoGguMZ3s1BjMsP5PzxJQrxHiSGl37WyTXzfhUGk/3SCHy0UJ
	 wh+Qf2U2E/V8XIEbcavT/TJ50p9YIYTUp7SOHlNLpD5bmt0duCyupvwOmgkcuKK9n+
	 Rap7FhmduSiww==
Received: from relay4.hostedemail.com (smtprelay0011.hostedemail.com [216.40.44.11])
	by mm2.emwd.com (Postfix) with ESMTPS id AF8ED383EB2
	for <usrp-users@lists.ettus.com>; Mon,  6 Jun 2022 18:43:02 -0400 (EDT)
Received: from omf06.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay13.hostedemail.com (Postfix) with ESMTP id 27AC060A30;
	Mon,  6 Jun 2022 22:43:02 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: jon@beniston.com) by omf06.hostedemail.com (Postfix) with ESMTPA id EF4832000F;
	Mon,  6 Jun 2022 22:43:00 +0000 (UTC)
From: "Jon Beniston" <jon@beniston.com>
To: "'David Raeman'" <david@SynopticEngineering.com>,
	"'Marcus D. Leech'" <patchvonbraun@gmail.com>,
	<usrp-users@lists.ettus.com>
References: <0a7201d879c4$18b47460$4a1d5d20$@beniston.com> <7e9c6643-bffb-8a5b-915a-ff4524770449@gmail.com> <0a8a01d879c7$3bf7fbb0$b3e7f310$@beniston.com> <503463d6-879b-82b9-dfc5-6980f35f635b@gmail.com> <0a9901d879cb$7bcb4270$7361c750$@beniston.com>  <PH1P110MB16654718196938A46B45E822B7A29@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <PH1P110MB16654718196938A46B45E822B7A29@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
Date: Mon, 6 Jun 2022 23:43:00 +0100
Message-ID: <0ac701d879f6$c771f680$5655e380$@beniston.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQI+YnAXmM94U0s+mLR5vjW3De6oVQIwXGJkAsE1bssB782kfQKg/W3GAf1vztWsGyoaUA==
Content-Language: en-gb
X-Spam-Status: No, score=-0.10
X-Stat-Signature: 8ecjq6ch3kuycwn73dizu3ax7xtufrmr
X-Rspamd-Server: rspamout04
X-Rspamd-Queue-Id: EF4832000F
X-Session-Marker: 6A6F6E4062656E6973746F6E2E636F6D
X-Session-ID: U2FsdGVkX1/txbViI49QQLnBLms3qYA/O7roMqvdmc0=
X-HE-Tag: 1654555380-849546
Message-ID-Hash: H32XULQ5O6XDTKX3CGESQCTH3ADCXYF4
X-Message-ID-Hash: H32XULQ5O6XDTKX3CGESQCTH3ADCXYF4
X-MailFrom: jon@beniston.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Automatic master clock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H32XULQ5O6XDTKX3CGESQCTH3ADCXYF4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi David,

>Hi Jon, you might try deallocating the original smart pointer before
creating a new one, 
>i.e. call m_dev.reset() before remaking the device. 

Thanks. I gave that a try - but unfortunately still get the exception.

Cheers,
Jon
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
