Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8569F99B2
	for <lists+usrp-users@lfdr.de>; Fri, 20 Dec 2024 19:44:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4F269385F0B
	for <lists+usrp-users@lfdr.de>; Fri, 20 Dec 2024 13:44:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734720275; bh=aFrhXYxe8XU/qcDjjwjO12UPbMjY2Ej5EKrIefEV1Cc=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=fSgoQgsBheVIIJo30mPiaQYxSkr2aCazSS+jlbunyuseE8oDfT7KZjBx4GjBbFep6
	 D+4TTJYGaMKUvnthnB7D66JZp1dvRU9uG8tlVbCnDTTaSFkZBLiO8gx/7dpgKMbuRS
	 o5TxNhudJdlX5CXc7Dov+9y/2wqu3I64t5GOvIf37u899gmSMrovFRrWJhzyLJGHMp
	 RSbRdNaYwTcx2eKZ0xayqthCW5rr1bK9iUHeyVJ/NQMmqo4I3FiNrc23UGEr48xr3X
	 3GWO7pwpFMXrIrxyU9a1d/840G3aNLyVELLM4iVlvP4FGQQ5zXbARG/wMvd7PckcC+
	 Qg9X4HBkBUQiw==
Received: from smtp5-g21.free.fr (smtp5-g21.free.fr [212.27.42.5])
	by mm2.emwd.com (Postfix) with ESMTPS id 5D9C9385EAE
	for <usrp-users@lists.ettus.com>; Fri, 20 Dec 2024 13:44:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=free.fr header.i=@free.fr header.b="PXonuBVR";
	dkim-atps=neutral
Received: from zimbra-e1-03.priv.proxad.net (unknown [172.20.243.151])
	by smtp5-g21.free.fr (Postfix) with ESMTP id 288BF6013B
	for <usrp-users@lists.ettus.com>; Fri, 20 Dec 2024 19:44:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
	s=smtp-20201208; t=1734720257;
	bh=5TKT9Xv5cjuEkpnDh5g2BRTZTKl9nrd29s/zT/xvNNY=;
	h=Date:From:To:Subject:From;
	b=PXonuBVRU+HrNSmdPINgeN3xej0jOqsm/RcaabG3g7SzoICyaYv85O2kBkY8nUGZt
	 7fZKCS8bgpcA4s58Km+fUFrPQkeQ/8XYkmaRI96XpyqDdDv26q7pe96vydUypFAcwX
	 h/ecQs1RHzRpiy4hSBfM8TwffX2cHR6uPrZH9iIf0vNEAuaq4pP3Cs/R4vVE8bokiP
	 n1rCG0A2rPVQJIsRxEBzhyG2IiBxbUotfKW9hVcLdW9fKwAm5q4emoEgt0fnrj9eGf
	 I8HtM+Pp5KkM8jygA7F8ITYkApt/CURElVr7iu9EFKf8k19vJdfMpexpYxNtwQP1fl
	 c67If1c8y+3Aw==
Date: Fri, 20 Dec 2024 19:44:17 +0100 (CET)
From: friedtj@free.fr
To: usrp-users@lists.ettus.com
Message-ID: <1619323082.632403599.1734720257129.JavaMail.zimbra@free.fr>
MIME-Version: 1.0
X-Originating-IP: [194.167.45.227]
X-Mailer: Zimbra 9.0.0_GA_1337 (ZimbraWebClient - FF133 (Linux)/9.0.0_GA_1337)
Thread-Index: YdL4pJbFXZeLh84tGSOKLWtiCUcgNg==
Thread-Topic: X310 clock signal for aliasing (BasicRX daughter board)
Message-ID-Hash: WWCL3TGIPHDZJWQXH3XGLUZ22MAZJX5M
X-Message-ID-Hash: WWCL3TGIPHDZJWQXH3XGLUZ22MAZJX5M
X-MailFrom: friedtj@free.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 clock signal for aliasing (BasicRX daughter board)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WWCL3TGIPHDZJWQXH3XGLUZ22MAZJX5M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I am investigating chopping a signal with a fast track and hold to bring a 
microwave signal to baseband without relying on a mixer (I can explain why 
if needed but I'll skip this background part for the moment). 

To achieve this result I would like to fit a BasicRX board installed in a X310 
with a HMC760 [1] evaluation board, clocking the latter with the signal driving 
the ADC in order to use the upper Nyquist zones and aliasing on purpose. 

My questions: 
* I am confused between https://files.ettus.com/schematics/x300/x3xx.pdf 
page 4 which shows pin 11 of J3 as DB0_RX_CLK and pin13 which seems to be grounded 
(if I interpret the symbol correctly), and https://files.ettus.com/schematics/basic_dbs/BasicRX.pdf
which seems to connect J2 pin 11 to clk_p and pin 13 to clk_n leading to J38 pins 
2 and 3 I am connecting to => is this clock a balanced (differential) or unbalanced signal? 
Connecting 11-13 of the BasicRX to a Minicircuits T1-1T balun and watching the output 
signal is not very convincing, but neither is connecting a RF probe to pin 11 either, 
so I am confused with this signal (signal visible when the X310 is idle, a bit more 
noisy when the X310 is running an acquisition flowgraph) 
* I understand that the X310 is sampling at 200 MS/s, but it seems that this clock 
signal I am looking at is 100 MHz. Am I looking at the right signal for aliasing 
a signal synchronously to the sampling, or should I be looking elsewhere? 

Thanks, best wishes, Jean-Michel 

[1] https://www.analog.com/media/en/technical-documentation/data-sheets/hmc760.pdf
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
