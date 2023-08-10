Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C0B776EB3
	for <lists+usrp-users@lfdr.de>; Thu, 10 Aug 2023 05:46:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 275E4384B40
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 23:46:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691639214; bh=G2tZtJu5iBl2pEeRvhIv05iXVR7WbVxfNA/wr6yiJVI=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=cCPRxU1GV9Vfe02C7JXDmXqonenDBrQTJTK5ge2/rg4Y1VN6Si38K3mzYXnAcbJ2C
	 WXdiD7cSNWivSg+0SkqiYT3ZydTR5/RC/+mg1EWPcSrM5UJLChOct2E46KV6ZOdehl
	 GwJ7wN/JNoVC7nLFwQ9FdkRBL74Lp+EmfQ15EfP+AbctYF2Yd/1v+3lr5ZSC3EfKqy
	 443N28Y67lOCYQ74dYvk8qoKVCmM7A0h1eda+AbNdRYmUIKOttb8c57VrNsxm0r4gj
	 Pu8begRHFKMkB/s7/+5J7yM5URtQSznt6K+xrR8PBLozewb2zSJJVc90iwgY+O9jdT
	 Fpfk8uQr94vWw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B5341383B75
	for <usrp-users@lists.ettus.com>; Wed,  9 Aug 2023 23:46:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691639180; bh=sSDZ1bdxp2qEO0rZXbjpriKOY+8gOHwtpRABHTNLabw=;
	h=Date:To:From:Subject:From;
	b=pyKgXJG5AHo4qTnMDTigOaidjb+ScKHUqfnsRj4lApcBCpteDFsQCz2gXXsaYfHUG
	 S5KDuIVgQoduU8bmJiWC3NC5rU46F63ub+QCBqmjPlx4xU8obe1FY/8dquuzNwkmn4
	 waKQdUTus1bgDgZLTBhwMw6uQM+9E6IHbOObb5fgV+gUDJQ0goa3XELkBMHrWsGstB
	 5UGIMoGrKNaeltSdTIgZJM15dDAd+8gb2RFR5ORXHTvSEvv5gBrgjNSOsJUcOASuYD
	 3+lolXSOZ3GjtictjuRpOnZbKHjHiw820Jql+mOu5GUTVr4TXdFcwfyjvYIN9VBXuG
	 86R3O9bQPeA8A==
Date: Thu, 10 Aug 2023 03:46:20 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <wU5ggH7A8jPgWglcDnphKM6xakfgEbsVjLau8zhdSM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: OJHFVWDLPUI6RPTKLUZWSI5LMUFXS6BS
X-Message-ID-Hash: OJHFVWDLPUI6RPTKLUZWSI5LMUFXS6BS
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RF vector signal generator for triangular FMCW waveform
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OJHFVWDLPUI6RPTKLUZWSI5LMUFXS6BS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7377873245743870634=="

This is a multi-part message in MIME format.

--===============7377873245743870634==
Content-Type: multipart/alternative;
 boundary="b1_wU5ggH7A8jPgWglcDnphKM6xakfgEbsVjLau8zhdSM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_wU5ggH7A8jPgWglcDnphKM6xakfgEbsVjLau8zhdSM
Content-Type: text/plain; charset=us-ascii

Hi,

Although TX/RX benchmark works well even up to 245.76MHz sample rate with my USRPX410. I am not able to transmit high sample rate triangular FMCW waveform with USRPX410 in GNU Radio (by employing VCO to generate chirp signal). It seems VCO (and VCO complex) are not able to generate FMCW signal in high sample rate more than 50Msps.

While receiver works well, I was thinking to use USRPX410 only as receiver and searching to use RF signal generator (or RF vector signal generator) for transmitting triangular FMCW waveform.

I appreciate if you could recommend any RF vector signal generator that can handle it, if you have worked before?

--b1_wU5ggH7A8jPgWglcDnphKM6xakfgEbsVjLau8zhdSM
Content-Type: text/html; charset=us-ascii

<p>Hi,</p><p>Although TX/RX benchmark works well even up to 245.76MHz sample rate with my USRPX410. I am not able to transmit high sample rate triangular FMCW waveform with USRPX410 in GNU Radio (by employing VCO to generate chirp signal). It seems VCO (and VCO complex) are not able to generate FMCW signal in high sample rate more than 50Msps.</p><p>While receiver works well, I was thinking to use USRPX410 only as receiver and searching to use RF signal generator (or RF vector signal generator) for transmitting triangular FMCW waveform.</p><p>I appreciate if you could recommend any RF vector signal generator that can handle it, if you have worked before?</p>


--b1_wU5ggH7A8jPgWglcDnphKM6xakfgEbsVjLau8zhdSM--

--===============7377873245743870634==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7377873245743870634==--
