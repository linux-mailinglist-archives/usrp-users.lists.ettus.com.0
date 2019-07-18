Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CB56D421
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2019 20:43:52 +0200 (CEST)
Received: from [::1] (port=46356 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hoBNe-0004Jn-OL; Thu, 18 Jul 2019 14:43:50 -0400
Received: from sonic314-24.consmr.mail.ne1.yahoo.com ([66.163.189.150]:39796)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1hoBNa-00047P-K8
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 14:43:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1563475385; bh=pTrGOoIlKOVvmmlHO1iq3rdlDJY/tdnQJUAuTD/e2zI=;
 h=Subject:From:To:Date:From:Subject;
 b=jXj0l4A2otZPHvVkIIO5TUcAatPXzGl4nIcGXMmxuUMVm2NfKoOcbeczkpePfH0rvYaldigkMiDZHXVVZuoKqFJqOXJMZbbVvl84T9nwbooks2fCUTip28yEKguaJQF0fB/U0WXRVPLFfHTXhMK+dqugGrAtIh7C4yTIM+MC527o99E9bwHCJW61ZQ2meUvS1Hsg+xj5MjmD5TG8bcEb7kOzMLwRJqJazUwmExT8IQtzGRjPmZimC9tcJouYIrY6fV1WNrbVWoEt1Rd8cv/habUJDvvJgOAsMRhwcqT6cBwYjm3RWa3oQLqVVziic4YvjAODR8OqWkpMbcPzJOR/Tg==
X-YMail-OSG: r9qJ0ZYVM1k7zk3F7rBYqEZ_z9H_Lecf0lwMPA6pKbUPuYTBILBjCuQSo1vzeIf
 i8TfVCoceAZFMs7df1GoWDzjJpay__mVxiRHUue5VAFnFsII3Dh00ZZY5NtGwKONO3VzrxiUge2B
 zZLommGITAoaMBeN9K63gxRuV61N51A31GtHiIUVpH6haeh3cOREjKvEq95sraTrRlo282NdWWqu
 _WrDRWP1YOAn2XtXG4UNxkHmNaIcXsLRls5tbFYBGDPC9RLk0jF0ZaJJSFUaoXsIIA.TA284lam9
 Hy7iyN7BR1Dh8MSLUEBKJXbUTGhG2foRB0l2yxNw85UX1B3kdFjbMdxfPtpwxfO9VwJynbytmDDK
 WoVwpMdU2dZi.7aiCONQvK7vj67.un.VEfnGq71K.7InBcf2dS9IeurbtxRunM3xbOD_xolk4PVg
 zTJ3v8XBTXSQqV5mMtopOYAMBbXmDqw98bZb_t1KnuThZ9R9BMiWbg.xXMvVLTO7e1Jc89TML.Jj
 yIXY35W.WBQcbNG4b1sF0NEzQX8mgGWyhz6LxjwOiQsfeXHcjeiIFeceVkkiMsPY.FE7CYJOnT.L
 dKddP1T_ysGgJMtK4Milkw7cWWJpahN_toftFarGLezjcEkBd6sArKYFFaHdcQT.7qe60GRn8bDs
 o9AEjdqy_CUuOOA63ryQugrkdFHJAgHBY1jnUr0ddi98gmBswzCLznwCsDsalJCp.gSbohm3jsLU
 M55X3dO3JLaDjMffX48_wrXWJ8Yd2da76FAKTjUsMN9VS4PU2VrZ.Kpo6vMj1oMnP1yaKRUsq5Pq
 zjx5639Ipuly25tUXCts2EA0dlsCza4AaxJZdiBlrolWAGHeT2b9nfNHkSsrAhHA2yc8h8T1qFXE
 zRCHmwSiPRVMxsZKaqVlGhmjbOlHI04YzxkgFIUU_oTIIUU61DNl5Qkf7weTvWyw9Bly__nsQI0N
 qie9M4G_F.A4Nt_9XX2msrT_.QUeaaApKgn_GaFPXSzPjBIfagpfAXDnhNzF1N.2wNgr_3Cp7Ph.
 PYLL4ddS05euv4m_N7_byiVVJpzMriyNXQ8W5y6EarNGXDY.H3rrQdrBGC7JX0rOw9p2d.5PUQOH
 UqSYl2AXK999x4C.MhXiGKe62fz9sxlUqP2A7fWSP5fSb3tzzddHcS6FkO_KseTEpWjUIxCUQ0.4
 k29iZ_JIzsfz._GsRd9KdMYLDwzIa9REU1ra8Hk1KEmQQNGEmrfk8dF1GH1CHRg--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic314.consmr.mail.ne1.yahoo.com with HTTP; Thu, 18 Jul 2019 18:43:05 +0000
Received: by smtp403.mail.ne1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 3c15f7c6b07f85bf3a8b2c780cba03b7; 
 Thu, 18 Jul 2019 18:43:01 +0000 (UTC)
Message-ID: <fed5f87c2b898035b7ad3024136d703f54b6f5e9.camel@sbcglobal.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Thu, 18 Jul 2019 18:42:59 +0000
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] USRP E312 configuration
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "d.des via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "d.des" <d.des@sbcglobal.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 


At the risk of being repetitive, has anyone reading this checked to see
if anything but receiver noise is coming out of Radio Port 0? As of a
git pull of 3.15 last night Channel 1 looks great but Channel 0 is
still useless for me. It's as if neither antenna switch is connected
even though the LEDs light up. Backtracking to Jethro gets two working
channels but both have large noise level jumps every 30 ms.


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
