Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4AD6F47D7
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 17:58:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9DCB938482A
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 11:58:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683043135; bh=iaJEADuQflNATaKzFCQ2wyVkYoVcDUts5Y+SMUTPYuU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0DJ9eZpb89NcLYC2G6RaLsWN71LQxBDdUj2OuyXK8vs6ix40VGf57MtYODLgiIQop
	 KSsKM3m1nihkFqTDvlEK1H1+wt05Lw4VGxX//2t+4urmMCOcNapDPR10r7JeMILaRR
	 5qNEVdJa1zwwnMy5rujWxV+2NhIFwaYIZwIEWE2e/8jwUFCv/pHTA/YvhgK2xtBRls
	 znyBK7dwUqM9UmoTxq6SDY78JOxYK/qCqjraZ6v5ET+Hbvi8eX84eZdl42yY4iFOio
	 tqI/VpU51bQVH2jeLHp4qHml+c6K3pW1eEu9D+dE/2+TBQQh2QHENS2flh8RdlYZ6J
	 Cj72tswv6iBAA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2A1DF380DE5
	for <usrp-users@lists.ettus.com>; Tue,  2 May 2023 11:58:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683043095; bh=vhu9bjKvMQAGZAIjTrKR4NuTh12Q9MAgi1PFgj+MvNw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Lzj8BPIKkwhahYH95RSm+6WmD1wNK/EotFaaMA9lovMAMlYGmVBli8LWTjRqt7FS4
	 /nM6p1iEVyApkQqEkLtjf9oW2PB/CuVGih99ahvMdvV8kijM4QCIMTwVpbHZ7J9CDs
	 cUViaKoaIg04IE9hAiazY7jctJKj8zysdCEyDccyKquthOCbPjn38n3A3zd7BAuA6K
	 NN1XP+0q6F13n1znNCaOzXy/oVUsG5Is3gs4DpzUU4VvcHHZFSSHPMV7vteToGVal/
	 TATel6Aex0MYeB75XQ4tAyLNkd1SmH7h/O5FXyfaQoynf9r7lYS+0tBS7puyBM3PF7
	 oHHVqFjrAka0w==
Date: Tue, 2 May 2023 15:58:15 +0000
To: usrp-users@lists.ettus.com
From: david.fernandes@viveris.fr
Message-ID: <mZWoGRFigs4sc4MmfMcYGdgh1mLXImlGuaZLLOR84@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: Gx3Ebnyi2jdLIB5hO8uItoCTpVQvDiCvo1zccf9nbeU@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: J2XZLF7PLZTKGUAKKCESK4VNFUOXPM53
X-Message-ID-Hash: J2XZLF7PLZTKGUAKKCESK4VNFUOXPM53
X-MailFrom: david.fernandes@viveris.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Full duplex issues with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J2XZLF7PLZTKGUAKKCESK4VNFUOXPM53/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5543513589031357690=="

This is a multi-part message in MIME format.

--===============5543513589031357690==
Content-Type: multipart/alternative;
 boundary="b1_mZWoGRFigs4sc4MmfMcYGdgh1mLXImlGuaZLLOR84"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_mZWoGRFigs4sc4MmfMcYGdgh1mLXImlGuaZLLOR84
Content-Type: text/plain; charset=us-ascii

The cables I use are SMA.

--b1_mZWoGRFigs4sc4MmfMcYGdgh1mLXImlGuaZLLOR84
Content-Type: text/html; charset=us-ascii

<p>The cables I use are SMA.</p>


--b1_mZWoGRFigs4sc4MmfMcYGdgh1mLXImlGuaZLLOR84--

--===============5543513589031357690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5543513589031357690==--
