Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E74F49D3482
	for <lists+usrp-users@lfdr.de>; Wed, 20 Nov 2024 08:45:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB16B385E33
	for <lists+usrp-users@lfdr.de>; Wed, 20 Nov 2024 02:45:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732088751; bh=S+5oYkSlcEjtb09JaDi8+12KBMO7GMeb8yBptrRtllE=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ae6Jh76TYF+lGOmpn92GzDQfcc2fu4PMYmV5JLGEYmx5WeMFbcYTQ369EJ/otLBl4
	 glAXO+zeQ1Pri6r76/zyCTI/CcvngRSvK3F2EE0VU3JBFG2L6Ka0oUNctDZG++85th
	 FPegE0mY6WrvOYF8e1Xq+jczeDrJ2+eN51rUynx6tmlWxYiJwmv5GAJ12qK2eyVOYn
	 y96Uhku19sHYoyj3F37VGtIMWw8BHLSAZZJ8iYQrBHIHxqGchmWzquL3rfBx1rJ6oB
	 8skUZKPlv2xh+vXFsG1Oxx1WhtsZFeFutWpYtO/EZOHje94tfs5gOka4LmAwPnnvpo
	 lAvH41M0WIIfw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 40673385D77
	for <usrp-users@lists.ettus.com>; Wed, 20 Nov 2024 02:45:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732088735; bh=hnRxujhg9VsoIR5xcjNIBRKDbYdhoxwufQtD/AvR/lI=;
	h=Date:To:From:Subject:From;
	b=jKmiWc83NUmzuGaegjapQtv+CA8mRh1qfiTlnkdi1dB7rp9jqVDsyuYfNvEK04ubU
	 TzLYjomYFi0IqqMOpewTOiPts076Nnd9nKhR7O8CpCX8XD257lnqz0DIXrCKoZxf02
	 q2Pzih8EmGt5t5ucprsk3+EH3OZ0ue4Q+mmLNRCTm9EfsQGw1TwmUMO4z6eYpLZXyZ
	 zLa4taYC3e6gyOgVeOYCO5dbQAzQlKqH1acV2yjWPJvZhBDti60e9lMdqZAHF1/g78
	 byMyloqSqlyjEfuiobzERNQ35qCrNEfDs292GV/rSiC6TMVEsMCGZOIwzPuJvlTZOP
	 tq7Nkac4Mo5Gg==
Date: Wed, 20 Nov 2024 07:45:35 +0000
To: usrp-users@lists.ettus.com
From: johnhigginsgis@gmail.com
Message-ID: <XvncymCGEa3CMQFUGuPuo88hj6LwjTG56X8r9RxIw2w@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 3B2ZZQ4L62LR5OH3LEMVA5NSQN36FPYB
X-Message-ID-Hash: 3B2ZZQ4L62LR5OH3LEMVA5NSQN36FPYB
X-MailFrom: johnhigginsgis@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B210 power and gain levels
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3B2ZZQ4L62LR5OH3LEMVA5NSQN36FPYB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4549990616728190590=="

This is a multi-part message in MIME format.

--===============4549990616728190590==
Content-Type: multipart/alternative;
 boundary="b1_XvncymCGEa3CMQFUGuPuo88hj6LwjTG56X8r9RxIw2w"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_XvncymCGEa3CMQFUGuPuo88hj6LwjTG56X8r9RxIw2w
Content-Type: text/plain; charset=us-ascii

I have few questions regarding B210.

1) Ettus recommends -15 dBm for the max input power. Is this power at the RF ports (i.e. RX-A/RX-B)?

2) Max input power for AD9361 is given as +2.5dBm. Is the difference due to some additional circuitry preceding the 9361 or is -15 dBm just a value Ettus recommends to be on the safe side?

3) If my signal is guaranteed to be below -15dBm, can I set the B210 gain to its maximum, i.e. 76dB safely (except maybe ADC clipping) without damaging anything?

4) Is the 76dB gain solely due to the AD9361 or is there a separate LNA on B210? 

5) AD9361 is 12 bits, thus theoretically has 72dB dynamic range though in practice apparently it is around 60 dB. Although B210 is not calibrated after manufacturing what is the usual ballpark dBm level that corresponds to 0 dBFS level?\
\
Thanks!

--b1_XvncymCGEa3CMQFUGuPuo88hj6LwjTG56X8r9RxIw2w
Content-Type: text/html; charset=us-ascii

<p>I have few questions regarding B210.</p><p>1) Ettus recommends -15 dBm for the max input power. Is this power at the RF ports (i.e. RX-A/RX-B)?</p><p>2) Max input power for AD9361 is given as +2.5dBm. Is the difference due to some additional circuitry preceding the 9361 or is -15 dBm just a value Ettus recommends to be on the safe side?</p><p>3) If my signal is guaranteed to be below -15dBm, can I set the B210 gain to its maximum, i.e. 76dB safely (except maybe ADC clipping) without damaging anything?</p><p>4) Is the 76dB gain solely due to the AD9361 or is there a separate LNA on B210? </p><p>5) AD9361 is 12 bits, thus theoretically has 72dB dynamic range though in practice apparently it is around 60 dB. Although B210 is not calibrated after manufacturing what is the usual ballpark dBm level that corresponds to 0 dBFS level?<br><br>Thanks!</p>


--b1_XvncymCGEa3CMQFUGuPuo88hj6LwjTG56X8r9RxIw2w--

--===============4549990616728190590==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4549990616728190590==--
