Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9446115982
	for <lists+usrp-users@lfdr.de>; Sat,  7 Dec 2019 00:11:25 +0100 (CET)
Received: from [::1] (port=55962 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1idMkt-0006Dr-2P; Fri, 06 Dec 2019 18:11:23 -0500
Received: from sonic306-6.consmr.mail.bf2.yahoo.com ([74.6.132.45]:42347)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1idMko-000673-E8
 for usrp-users@lists.ettus.com; Fri, 06 Dec 2019 18:11:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1575673837; bh=CxbO/148tyd8onOC8L6DXZixCaD2DYUqhS/fwb6wxqQ=;
 h=Subject:From:To:Date:References:From:Subject;
 b=ocY/exKdlTNQcAGvdIVnoJfdlOlxtZISlmbgwThUjkUNMQZl1btSYhbYag9wySdRPtjiGj/cblDTz8H2fFK59hbknIWl5SPysTnjx0C02IuAN2s1vytwPEOltMsjLC02vd012dY/dc5aMecc+M3So1zIkYf5OLxs9UBGqwoJ2L71CVGYQep0SUV0sbVeyzEU5CKmJdx83ffLiBrc/7K7+g5X7tvUcq0P+8FJ+mAKxb0jVIcRSJf+cruqhUpssABV1ZMvxRkLRGpuQgRB5YFz2Ku44qzI7En8Pq/6dJBS03/WyJbcjsR95nX+QV3igS0Si7pkq9Ws8o4GNismzs8iUg==
X-YMail-OSG: resKVYMVM1mA6VmBV7aRVyZjziFJkAyTtVm_izZNpKld8Pm4EoBNp1wjtmFBr0_
 poybcOZahUNn3kp_0C6jLs3qC5uXk4tBG19w4CkCJAS1HCwDj_VeFDxtmUX3nfJz8QyJWesOgNFU
 03sNWnSV2auj2lOnXHZDrRb9Z5XVwoFK7FlhRDPlA7DtV7Y4le59Lv3owbWoRP0FCn6ex.qOAUOe
 omUDjeK2AxWT53pOIwiAvEXB8ZFP6p_XYeTO.zn3m.EmFLmPr1ZKOIhydxjX6DOhFNsbgGQ6yHNE
 jzZs46IWTResQs1bSBdaa2gblWs4uJ8HOVm8mGod_tdxjuSUwortPRlOxE_TBhPEYvsQcJWWz7fh
 wVzuiOZQgblKA_sGqNUtqpyozJ2zAvDhnVkqQBvUVYUFdJXFDbNtZX0wM90ELeHJXzJGyVGFSrzk
 x6j2iDpXlheasNJEEDMfNW2SWoLAmCj6whEy1kLf0BuM.kiv3eaWs.devKx.Hiv.ex8vDKInzBod
 qd44LHqKX.jLfkJddEckk0Sr2OBF6Z1u0WScAWyuPREuy1ex663BOQGhF53m_E5lkMytxfJMhW_C
 bd7_albiPjzSi0mcnvDLx1j7kdk8.d8kIsSQS91.wsZAf.ob7vpPh8jfiVGa16.iINpW8NO7viBo
 _CzYLUgR0lLxMKuU4ZIhAZp1wEIBh8RPV1P5pNMBCDjp6X43z677ZFdVN3Yr95Lus9svVdcSR65x
 0PbGG5tfi20Sj0RrZBSS9aO4lzuEJD19KOSBSFTzF13epe4F1S9j4BV15EkRQuhJYv8ujoDY8nDW
 9fPTtPkjsmB_VW3t_cnRVzeC0.C3qfF.bvDxclGtJdplDPROnuzkiCLHG5DfGc1PdzC8dLGhare1
 0R.uYeD07.sVLIjFEqjqs7.8Diw38QO.a68u6VD0DPNW1XC1aHQV.r7qYr3xg9JjpqC3K85UFlKC
 kaOcY2x9cSNf6uW5w389AIVo2CO1Jb0ZKeC3IFwOpoqJrkxBMUVBiQkbwVTJRfD2hsAC1NrFufzl
 jrBT3wdWwM7NG8rtYgqo052PwKm1sRS82EClQJ9Y69eJZ0nFq3CJM5v93DkvWmjaa90Y5Ru.JN.T
 tv_mwT7EZULu7Nkov_vVwDveJw_8UXS7nbUQpVlGd_R9Ol.KFf0jiJK4IShdTXIPQqx4c.LrfFsd
 JkaGyxqdpVxCQPkaTF3DhyA3x5WzgK1n6D9TcHgh7JrkbKt5qbkspaix1tl9c34bKndsZM1hAFnx
 5yIql22kjsE2JhbDrO5s3pQmw9S2cNYwArFrAc68aW364rgCBSqNfJKZo3Z1kAmLQfc99QPXYXD8
 A7iPZVRRuvtmZNiPts3z5Ancw9TPUBogVoltVzi86573nG0ciNg1PU3N9HkK3RSjY8Q--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.bf2.yahoo.com with HTTP; Fri, 6 Dec 2019 23:10:37 +0000
Received: by smtp427.mail.ne1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 69c743ffa187ef431522b422d4484a48; 
 Fri, 06 Dec 2019 23:10:35 +0000 (UTC)
Message-ID: <25ac7bcd70763b0f3176d3bb40874640c15afff3.camel@sbcglobal.net>
To: etus list <usrp-users@lists.ettus.com>
Date: Fri, 06 Dec 2019 23:10:33 +0000
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
References: <25ac7bcd70763b0f3176d3bb40874640c15afff3.camel.ref@sbcglobal.net>
X-Mailer: WebService/1.1.14728 hermes Apache-HttpAsyncClient/4.1.4
 (Java/1.8.0_181)
Subject: [USRP-users] RFNoC Radio+DDC vs USRP source
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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

If I build an FPGA image that includes a radio and a DDC and use the
Gnuradio USRP block to record 2-channel data on pulsed signals at a 1
MHz sample rate it runs fine and the streams are time aligned.

If I build a simple flowgraph with the RFNoC radio+DDC it also runs
fine but the samples are mis-aligned in time.

If I manually add the line:

self.uhd_rfnoc_streamer_radio_0.set_command_time(self.uhd_rfnoc_streame
r_radio_0.get_time_now()+uhd.time_spec_t(1.1))

the X310 seems to produce time-aligned streams (although I haven't had
much time on that machine) but the E310 sputters with timeouts,
overruns, and "oh-noes" and when I do get data the streams are still
mis-aligned. I've tried different wait times in the set_command_time
and different spp settings but nothing produces 2-channel data with
aligned streams. Since I know that the USRP block has managed to get it
right with the exact same FPGA load, I've been trying to figure out
what it's doing so that I can eventually add my custom block between
the radio and the DDC. I set UHD_LOG_CONSOLE_LEVEL=trace to look under
the hood but I haven't seen anything helpful. I've tried messing with
spp also with no luck.

any ideas?


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
