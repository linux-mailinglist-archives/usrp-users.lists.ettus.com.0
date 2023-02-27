Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6436A4677
	for <lists+usrp-users@lfdr.de>; Mon, 27 Feb 2023 16:51:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 48D65383E4B
	for <lists+usrp-users@lfdr.de>; Mon, 27 Feb 2023 10:51:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677513114; bh=tRp294BDfzlI+DP0Hb9QL8vXfeKxeg9fPZ0AZYA29uA=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=OLmoh3v6Jlts4ZGYCgZqI0cIW9nRJaMwbN0VNgFviGyT1JiLddQLVMzGCqmN9MaEf
	 5z/KV+8rY0AYejGH04eiHiWoui8x/7PcRS2/WqSBgdKbrQmjtl7WgvGAxcKOQwbJxF
	 vyL+cpOIqc9/6UWXkbsefK+d4Ws52D6KDDanLN6KwFNNeqhDd6FSWltQGSOIGFSanO
	 8jQn999iyinMKI3JjN0OCgaVZn7xGA4kIgGa1OzdmTaJF4cpy9gQA+G7bhOt8HLPlR
	 9/4HgPKwuAV0q4mHzlksyTaxYRinoum+uaC/YG9foWMmlvlgFUl4CERk4JplNVjzbE
	 87WHrgX7aJJqg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 78234383E4B
	for <usrp-users@lists.ettus.com>; Mon, 27 Feb 2023 10:51:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677513107; bh=CblDD4SwmSi2TpDNwlnNJYlsU3LVfpqJNWaYOm/qwUs=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=gl7FU1Uh8xd6b1IDyc32btAvIqSOTrYHA6ctpW1wJMO3IchY++AktfiQdIv3K+qC9
	 kCRZ0S8Pdu7pHu4iVO45guvTabZPcb5k2NCpTCf/e0b7CUeruDzEd/6hezijJSrNjw
	 NBh+4FNcV1s6hUuoIP84FAHdLu02xFCSbS+2Co6/lXB8nEK18MyQ4wJMqy/XqaAzta
	 ILJCcf6CpRolcVGRQ0d2ZeRBWYdVUoWcWaycV7wFXdg5EZ7auPYCXd/dsHr1xEwrT2
	 zQS9ymyccPqEa2aBVNrTcmcpKKMURNP1RH8Pj4ESRXHTi3J5dY3/T8TN5McQiu0VRJ
	 IgBrLSNxjWfKw==
Date: Mon, 27 Feb 2023 15:51:47 +0000
To: usrp-users@lists.ettus.com
Message-ID: <osETcavHyPI0cEbQMzcXwVVPN6RBmvCXZsuHCKZGuI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CALooG38d4mKoHNca16W+mzuRV6kbsHCd_8OBAz=nnSFVjj3fNA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: WNBMRU3AEPK5WQXTWW4OJGYAU2M44VKH
X-Message-ID-Hash: WNBMRU3AEPK5WQXTWW4OJGYAU2M44VKH
X-MailFrom: oiu13q2t5pibtq1@proton.me
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210: Receive Signales Sent by another
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WNBMRU3AEPK5WQXTWW4OJGYAU2M44VKH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: oiu13q2t5pibtq1--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: oiu13q2t5pibtq1@proton.me
Content-Type: multipart/mixed; boundary="===============7673886250383497197=="

This is a multi-part message in MIME format.

--===============7673886250383497197==
Content-Type: multipart/alternative;
 boundary="b1_osETcavHyPI0cEbQMzcXwVVPN6RBmvCXZsuHCKZGuI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_osETcavHyPI0cEbQMzcXwVVPN6RBmvCXZsuHCKZGuI
Content-Type: text/plain; charset=us-ascii

Thanks, that was very quick and very problem solving :D

--b1_osETcavHyPI0cEbQMzcXwVVPN6RBmvCXZsuHCKZGuI
Content-Type: text/html; charset=us-ascii

<p>Thanks, that was very quick and very problem solving :D</p><p><br></p>


--b1_osETcavHyPI0cEbQMzcXwVVPN6RBmvCXZsuHCKZGuI--

--===============7673886250383497197==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7673886250383497197==--
