Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A69A469DEA3
	for <lists+usrp-users@lfdr.de>; Tue, 21 Feb 2023 12:21:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 99AF6380AE5
	for <lists+usrp-users@lfdr.de>; Tue, 21 Feb 2023 06:21:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676978502; bh=j21l8c0gduli8KsWwIm0dGdCU4dAn8ro5qIYsPTnaZA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=hQbzVrjY6ZNWHAF+VuuBzcoL4N9TplvobxR7Z3UUqZdYYLuoWUmV82MAZdKZQAPZw
	 K8Bhrd50D+XtWH8kHAuckH56u69urwOIoqBPaxYHNqCGMSVdb0qc5MkD2S9Zb4ivrL
	 GMQpbrhHrXoEnfsGBlTb0Jczb1vi6EXBUyTe57Z+mkC9jCNaiF1th+UL4+92A4k1eM
	 1/Kit1BO41ECdjrzkw/7v1Mv/nzGXy0RYxsekwk/j0JBYWFXPqGcjalj2rh158C0Jx
	 mGNEsLJQv7eb/1mjWS+SJpWpyGCbbHfAhtYIRoDRXPrvMdLAnOvil2auXG/al2Wv2n
	 5fkI/VhH67mUQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B3F2D380AE5
	for <usrp-users@lists.ettus.com>; Tue, 21 Feb 2023 06:21:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676978496; bh=0NfG3ZxkYuLy/L5L/Xt+DOMdOhrxd79HgV2JFcCBKno=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=oEPnmuOfHIYwt5F/RTZPF0Dy68ouSn0MMaotV99ny41K3eP3RF/4Cd6MXQZmLBDOf
	 diGGRPkW/GgovqjNyL/2Mtmh8OMC6tmw0p3lpkKW2wjV38KlQzP8d5aWjErwPG9v8C
	 50A0OHREhVmcmvoZIzFgMgGMTpm19EMspCJ72wOYaxi0DDtW8JzeilR+zdKX5v/U11
	 djcXkfC4iRYqs6b9VIZnMacE18I56S8hwEfpOKPlQZlzM21SSfUmTs1Wd0/cRgsvRm
	 w+hn7fShlG6v2sZniRWxMq71CnRlmq06jM2bYNZvaNI0UFx7szT44UmZY0SJp9al9j
	 KBigShULYqcnA==
Date: Tue, 21 Feb 2023 11:21:36 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <U9JdLwwQx0ZjICasO5FTpdFkBEWOuVnkBpbXGNPM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: YqTjUfN4AxDgLJ6nU4B1SXzQ4KdtW09dM0ZNy9pOs@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: RA5M627HS3PHN2CXREJPYR7K2QFKO6IF
X-Message-ID-Hash: RA5M627HS3PHN2CXREJPYR7K2QFKO6IF
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X410 + QSFP28 network adapter from intel
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RA5M627HS3PHN2CXREJPYR7K2QFKO6IF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5222234631211795912=="

This is a multi-part message in MIME format.

--===============5222234631211795912==
Content-Type: multipart/alternative;
 boundary="b1_U9JdLwwQx0ZjICasO5FTpdFkBEWOuVnkBpbXGNPM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_U9JdLwwQx0ZjICasO5FTpdFkBEWOuVnkBpbXGNPM
Content-Type: text/plain; charset=us-ascii

Hello,

Answering my own question: these brochures are closest to answering what I need to know:

https://kb.ettus.com/images/f/f8/Open_Architecture_For_Radar_and_EW_Research_v1.0.pdf

www.ni.com/content/dam/web/pdfs/oarer_solution_brochure.pdf

They lists Intel E810-CQDA2 network adapter as a one that was validated with USRPs. Although not in 2xQSFP28 mode but acting (probably) as 8xSFP+ 10Gbit/s interfaces.

The card also seems to have quite good support from DPDK: https://fast.dpdk.org/doc/perf/DPDK_21_08_Intel_NIC_performance_report.pdf

Does anybody have experience with E810-CQDA2 + USRP X410?

Best Regards,\
Piotr Krysik

--b1_U9JdLwwQx0ZjICasO5FTpdFkBEWOuVnkBpbXGNPM
Content-Type: text/html; charset=us-ascii

<p>Hello,</p><p>Answering my own question: these brochures are closest to answering what I need to know:</p><p>https://kb.ettus.com/images/f/f8/Open_Architecture_For_Radar_and_EW_Research_v1.0.pdf</p><p>www.ni.com/content/dam/web/pdfs/oarer_solution_brochure.pdf</p><p>They lists Intel E810-CQDA2 network adapter as a one that was validated with USRPs. Although not in 2xQSFP28 mode but acting (probably) as 8xSFP+ 10Gbit/s interfaces.</p><p>The card also seems to have quite good support from DPDK: https://fast.dpdk.org/doc/perf/DPDK_21_08_Intel_NIC_performance_report.pdf</p><p>Does anybody have experience with E810-CQDA2 + USRP X410?</p><p>Best Regards,<br>Piotr Krysik</p>


--b1_U9JdLwwQx0ZjICasO5FTpdFkBEWOuVnkBpbXGNPM--

--===============5222234631211795912==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5222234631211795912==--
