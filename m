Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EB6776EC9
	for <lists+usrp-users@lfdr.de>; Thu, 10 Aug 2023 05:54:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E3DE1384AD0
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 23:54:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691639680; bh=SVSMbUJp5UA43Scu9URseLFysWabN3GIqLH5qpL3bPE=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=L+ckjhXXB0Qe0xPTIgWAIkFv7XoP7roAlj8D3cUHBON2/JY0TQlsB+u388ZavMGVe
	 M84IsZ+Iyk+s5y3LJEGDm51aWfmgZpzQZ+ShPDDx8ooUM1MAlZQ/eXQQf6hEfd08WQ
	 zyauQzrGGrVcRXab/2FTSJd5mMWqSdxEZa94TgGwWT2jQm7cDb4rmxL+wpDy6vfB4z
	 cQMAlft+argzf8jUZ5XbQQenfNJc/PZ+Fh6FypPt81ZJM5jRB1AKMxz0vMuYR2wJTr
	 5+QW4wPzoOlbydoW/pNS6qFYRnNX1/MdwfFtFWkJiuTlrsu1OQK7KENwMQoudqMHAM
	 v5Va0RpMEhhPw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6C0DF3817DC
	for <usrp-users@lists.ettus.com>; Wed,  9 Aug 2023 23:54:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691639646; bh=9SiS9OTPm4N9gUWOqzyPKzxl3i/Y9lJIqASAIMDxcmk=;
	h=Date:To:From:Subject:From;
	b=J4x7lMo9DueWKWxIIniKb9HbeBLhfMpex5MIPep5h0UZFvNI3erxdQhXhbeXnbilE
	 x4Gt1bhEHXmFKDxHcKJ+ZUvk/ENuqBN1+tpulURI9ry2WX2OZFnAAWDUKYADsz0acc
	 I/H1GyvCArV3Rek8mFV9zmwLfUxlDEAfhRkm5B1p/sBxQGkQlyBSebmjNZPoq1f3Zh
	 KiTWl7qAQDjchoYkvBum4+x1/uPfSsnhNqUlTfEQqCzJqKaijoq0nCjItRTZjsWFRc
	 u3QIbp+3mO4ka1lziRXWG/N37Mm9UAYd5sKzwbHm0qhjeDsQ2pZluqdT6tPwpmSc2L
	 4kL8IGjv7L8/w==
Date: Thu, 10 Aug 2023 03:54:06 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <wdwzw97mfsKNjlOcBAPJ46kt5loLifQ6uew2bmDCE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: FEFFJVBFRZLGSHXZZBSE2BW62BUEADZH
X-Message-ID-Hash: FEFFJVBFRZLGSHXZZBSE2BW62BUEADZH
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] VCO can not operate for high sample rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FEFFJVBFRZLGSHXZZBSE2BW62BUEADZH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5021124773839568575=="

This is a multi-part message in MIME format.

--===============5021124773839568575==
Content-Type: multipart/alternative;
 boundary="b1_wdwzw97mfsKNjlOcBAPJ46kt5loLifQ6uew2bmDCE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_wdwzw97mfsKNjlOcBAPJ46kt5loLifQ6uew2bmDCE
Content-Type: text/plain; charset=us-ascii

Hi,

TX/RX benchmark works well even up to 245.76MHz of sample rate with my USRPX410 (on 10GbE link). 

While USRPX410 receiver channel handle high sample rates even far more than 100Msps (245.76MHz), I am not able to transmit high sample rate triangular FMCW waveform with USRPX410 in GNU Radio (by employing VCO to generate chirp signal). It seems VCO (and VCO complex) are not able to generate FMCW signal in high sample rate more than 50Msps, and It issue several underrun errors. Is there any solution to overcome it.

Or without using VCO, what are the other solutions to transmit triangular FMCW waveform through GNU Radio and USRPX410? Thank you.

--b1_wdwzw97mfsKNjlOcBAPJ46kt5loLifQ6uew2bmDCE
Content-Type: text/html; charset=us-ascii

<p>Hi,</p><p>TX/RX benchmark works well even up to 245.76MHz of sample rate with my USRPX410 (on 10GbE link). </p><p>While USRPX410 receiver channel handle high sample rates even far more than 100Msps (245.76MHz), I am not able to transmit high sample rate triangular FMCW waveform with USRPX410 in GNU Radio (by employing VCO to generate chirp signal). It seems VCO (and VCO complex) are not able to generate FMCW signal in high sample rate more than 50Msps, and It issue several underrun errors. Is there any solution to overcome it.</p><p>Or without using VCO, what are the other solutions to transmit triangular FMCW waveform through GNU Radio and USRPX410? Thank you.</p>


--b1_wdwzw97mfsKNjlOcBAPJ46kt5loLifQ6uew2bmDCE--

--===============5021124773839568575==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5021124773839568575==--
