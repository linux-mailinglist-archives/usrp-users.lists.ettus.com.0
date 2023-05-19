Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6D770910C
	for <lists+usrp-users@lfdr.de>; Fri, 19 May 2023 09:54:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 102AE3848EC
	for <lists+usrp-users@lfdr.de>; Fri, 19 May 2023 03:54:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684482878; bh=jAyI61K42gRLsm91jGW7c1JqQYDaUU+/9b1H+wOpFLE=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=aO2GU56leqJJo/3u3nxk0cuScw5GRyptXVtwyeDCd9Lgml8naw3iH6/wF4wDACvyW
	 zeu4IqU0zYFMOBek/XAw2I5MTFqZV/nfUX+fBflvaDTsUzVvsJMsjNz5D4jL5lPzCo
	 Q55tN3Jf1OMPdB2lmARZLvyZp0iwHrufIjPBCMcn8qDjeNcqYfS2buOFdkmemVRn08
	 WncqCNsoXAzvdUnnHHkG5oaM9WyLmsCEpWkbfhv5NWBOP2mQaJI32OHdRfKyYRVnbf
	 GSpa0MEo48CEDeJ5o9ptC10bVd6PJDkOkeJeJBo9P8coqjHu++Pwk3W2Ga+qOWaWt8
	 8+HgwYZoFXlTg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C2E793846EB
	for <usrp-users@lists.ettus.com>; Fri, 19 May 2023 03:53:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684482818; bh=jkGK3x+vR6ttuC3WAAvvoELbPKQgu5QQGi3DUu8m+3s=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Dymeljsz8xAg/pKYCURwDPd4yr0tyxEoUfJ1qy8+k+kq3VIUwHAXzyLLKXyQZQsT7
	 2OSnFvi14ytVfFLGfSAlJEr2ZLJMe+qnhDOb6mbyVvF3sVciXssmot7da/Lq3Ta/RR
	 sPVfy/EvUQDMbPll3SiUrtmI0o/wn+eQzOX14YqEifRZl87gkNcK7sOZhsZdFi/pMx
	 1klXl1X8LVVjjMpzIBmPEWmXg7Xnvg0XPqG1poF7ijU72lKsP9qXOFzhyBXQ/G7pgs
	 OcTkHnXIZiKas6wob/5/2Yrw3ruWF49tMXeQQmL09k/7MeQhdjyTLH6lnAFWoHQoT4
	 fcjB5JW8p6okg==
Date: Fri, 19 May 2023 07:53:38 +0000
To: usrp-users@lists.ettus.com
Message-ID: <MJqNiMd8Ab8YjNoIMk4H4CTTeDd9HlhMRNljp0XBe8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: WxEVJudNlhw77HdNGPVfsAUSfroiO8L5xxXJ1mIsbg@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: V4CTDIJ435CPFVUGFDY7NOV5DE2WAJNN
X-Message-ID-Hash: V4CTDIJ435CPFVUGFDY7NOV5DE2WAJNN
X-MailFrom: a.feta@rheagroup.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 not powering on
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V4CTDIJ435CPFVUGFDY7NOV5DE2WAJNN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Arjan Feta via USRP-users <usrp-users@lists.ettus.com>
Reply-To: a.feta@rheagroup.com
Content-Type: multipart/mixed; boundary="===============5053386540939318522=="

This is a multi-part message in MIME format.

--===============5053386540939318522==
Content-Type: multipart/alternative;
 boundary="b1_MJqNiMd8Ab8YjNoIMk4H4CTTeDd9HlhMRNljp0XBe8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_MJqNiMd8Ab8YjNoIMk4H4CTTeDd9HlhMRNljp0XBe8
Content-Type: text/plain; charset=us-ascii

Sorry, no question in the message :).

Had anyone had this kind of issue before?

Thanks,

Arjan

--b1_MJqNiMd8Ab8YjNoIMk4H4CTTeDd9HlhMRNljp0XBe8
Content-Type: text/html; charset=us-ascii

<p>Sorry, no question in the message :).</p><p>Had anyone had this kind of issue before?</p><p>Thanks,</p><p>Arjan</p>


--b1_MJqNiMd8Ab8YjNoIMk4H4CTTeDd9HlhMRNljp0XBe8--

--===============5053386540939318522==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5053386540939318522==--
