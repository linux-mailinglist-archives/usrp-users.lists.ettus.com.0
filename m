Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C19277CE9B
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 17:00:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC87D384AE5
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 11:00:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692111632; bh=VaL7gyYjrIYpl4p1bD1wOA0/Ct6A9vXptW68VTSysR0=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=soqsfdk4tTI48oLO1CoBe7v2zE4n6HgMZru1opiV3t6MGOluxZWbM+83H28UNzX8b
	 RQ9258n9DcGiXSwbClYqrICmX4VIndCNXzQzsxnJ0q+/jGgLUFYBFe1qebLa5AW6Y0
	 EkMjtCqZ6eEEHihk771a0bAke8S21m+GTHZp7kgmOj7G6xf+SjeKIGoUnbhB2YmtAk
	 DY7K00XtBUO8JEKm6MYPpiR6w1Wzj21RldsRKbtqtVh9SXeTxDtNidyHtdpn3FpAdg
	 2RFF3Gd32ua3ns+sbhJrhUJ7/mwUVp7JNeC4JoOqzozq4AgLHqxl6iEbPdoZX+R6Qn
	 Xjoln415FVfPw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 70ADA380987
	for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 11:00:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692111619; bh=i39Nqkc5p1ewDh84QZAQnVclUITtiExMIlYxprqH6+Y=;
	h=Date:To:From:Subject:From;
	b=Kga6jM9TiJgEknnJjFGfZjg4/3PqwwFqsRxXkQnh5C3inAZpInBllJxgDHepUUf5C
	 k8/1qDy95LBgxoMO76+ICZMPqkf7kskB4rKzCn0YMzJQ0eREMCBD1sA0z5DJFxnr5f
	 Q12N/DoKzFe/xSU5bDwpHwI7EXZwyWA3hCclGcnVMKoHCXYQ6LwqpcpTsrjX9ZSx0L
	 isCO5QEDgG+Bn5dIxFg/hxq+8dzHktqLrbuyZLNfMhRUITW7Tg0wJ1Bo1eblTLufvl
	 x+aYvYOUdPbd7CIrpt/d6MusOUoUQkpMds/A/vSh1AKQ6nhHFPra8T5jFVOZ3NVnLG
	 BPSbQAAGFWxmg==
Date: Tue, 15 Aug 2023 15:00:19 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <AlrlUbtJRqp9G75dpx0Ivd0jCFHjTxWhCCtERGNkQs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 3QCE5JM2BQ3B27TPX6M4HHVPSJGBYHL5
X-Message-ID-Hash: 3QCE5JM2BQ3B27TPX6M4HHVPSJGBYHL5
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Overflows with CHDR_W = 128 on x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3QCE5JM2BQ3B27TPX6M4HHVPSJGBYHL5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7535735873435929760=="

This is a multi-part message in MIME format.

--===============7535735873435929760==
Content-Type: multipart/alternative;
 boundary="b1_AlrlUbtJRqp9G75dpx0Ivd0jCFHjTxWhCCtERGNkQs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_AlrlUbtJRqp9G75dpx0Ivd0jCFHjTxWhCCtERGNkQs
Content-Type: text/plain; charset=us-ascii

Hello,

I am currently running into buffer overflows with the x410 where I am unable to stream for data rates larger than \~0.32 Gb/s when the CHDR_W is 128. However, if I stream using a CHDR_W of 64, I am able to push the data rate much higher(at least 3.2 Gb/s). I compiled a custom image using X4_400

My current set up transmits data over 1 SFP port, which is rated for 10 Gb/s. I guess is that since technically this port cant sustain the data rate of 500 MS/s(equal to 16 Gb/s), there could be at least 1 buffer than can not sustain the given data rate, even if I am not sampling continuously.

\
I tried increasing the endpoint buffer sizes (REQ_BUFF_SIZE_EP) as well as increasing the buffer size set by the host computer, but both seem to have no impact on solving this buffer overflow issue.

I saw a hard coded value in the x4xx.v where BYTE_MTU was set to clog(8192). Do I need to increase this buffer size as well? 

Thanks

Joe

--b1_AlrlUbtJRqp9G75dpx0Ivd0jCFHjTxWhCCtERGNkQs
Content-Type: text/html; charset=us-ascii

<p>Hello,</p><p>I am currently running into buffer overflows with the x410 where I am unable to stream for data rates larger than ~0.32 Gb/s when the CHDR_W is 128. However, if I stream using a CHDR_W of 64, I am able to push the data rate much higher(at least 3.2 Gb/s). I compiled a custom image using X4_400</p><p>My current set up transmits data over 1 SFP port, which is rated for 10 Gb/s. I guess is that since technically this port cant sustain the data rate of 500 MS/s(equal to 16 Gb/s), there could be at least 1 buffer than can not sustain the given data rate, even if I am not sampling continuously.</p><p><br>I tried increasing the endpoint buffer sizes (REQ_BUFF_SIZE_EP) as well as increasing the buffer size set by the host computer, but both seem to have no impact on solving this buffer overflow issue.</p><p>I saw a hard coded value in the x4xx.v where BYTE_MTU was set to clog(8192). Do I need to increase this buffer size as well? </p><p>Thanks</p><p>Joe</p><p><br></p>


--b1_AlrlUbtJRqp9G75dpx0Ivd0jCFHjTxWhCCtERGNkQs--

--===============7535735873435929760==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7535735873435929760==--
