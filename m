Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 20040114515
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2019 17:47:53 +0100 (CET)
Received: from [::1] (port=50906 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1icuIA-0004tY-0d; Thu, 05 Dec 2019 11:47:50 -0500
Received: from sonic306-5.consmr.mail.bf2.yahoo.com ([74.6.132.44]:36925)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1icuI6-0004nu-EN
 for usrp-users@lists.ettus.com; Thu, 05 Dec 2019 11:47:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1575564425; bh=rF9lTBjrvlHfEEKr/RFhIiWl3BSygrIxg6Hml3LmOEY=;
 h=Subject:From:To:Date:References:From:Subject;
 b=l7OLCulBR0xELTlH1j6dZXJsTR3s32q05bac00VaJRTvrYNSezAbR0hQJRLxYTso3LbCTcLRQjCAfXQfZB+HO6v0pbZh6oFdr0Z5rEa8NnmMDBbNVWModdySMGF0pjo6wBtghC4E4AqRLGU7ArPECLF+hl/3SRF3Mkebf7f+LPt14SRaQjn+7iVggjFulZE3dffj1KexTNj+J8kDhXgDZLImwM6Gpo65MWOyMMZo2d4l85xTxKeN1INS06uVIUxpqL6rwBEZrN+/YygJtmkI+0g2F1sL+4T85RF10Mhh3dUwEldDu/jWuZUchyVVZysymxDTbrwwL40IMI0Zx2o5Qw==
X-YMail-OSG: 4MZ8ROMVM1njNUqZ6k7xCDLuYz0l5f4g2wisL.3mmsS390ChlVQNJvH64.YXXOs
 cVTMEpOUKax0qmEFwlPh7kZ5Q_8I8SzZjXDJraYZ_3HdDdUrasSG6Vd6Suirn_WmBCfu1lakAE4x
 qZpwJH0l87p93LPxId3qXDU6XtPnQpmUJ4d6WFhMU9jfSMt5i4jIXmY1lusapXeYcmU.M9lF67Zp
 bUpfKsohAKfbChxvT2ELbGx6NXwRD4lLVMZ0Y_g2KD3NwvaEpC6JxUobOol2sTF1FsQ3RLboTw.W
 bGXOFy89V570KdZs7xjKhkfAWoIGvUHEFQvwLEmCFFS85xGzZAbgPtd8gfvITwMSWm3qBjJ31VL0
 vzYAIHUrnMrA1hk3WwvII5cjfLMyFIEPwpYS9WOAiuWBjpcjqGyFZVVvIz92b4c8U6kZZLRFRmgV
 pGBVdw8EtWMKlNhIx.a8cbrQrahbnC2PjkjG1f_8KHqsZZlzUUXbSaoMKQQwVBZUN299REKcwYvU
 ljvDfptgIqTMG3XEf0R7wBzUsWJBGzADlYzCeU9.swP1h4s0xCl3TBz1cS5WN_k68bbvMuadePcI
 mEq8XUUK_GAQHDRYjf6D7a1tl5bW3AgC1WiHgqdKXLYgTPzxCQt5vuKawxtl7QtDmVeG5DMPvkb3
 rBRl8IgnV6CbfiL68Jy3JL6Ac_rksdbGci3ps5aRUBWEtCVE8G945eqH3E00XN3nzxdFPtora_MX
 z8pKCP6o7LN3SxxV3bpukhKGG64LX6c3_O0ijf6f6mboOtDsPBfGjuwiJOEQI7CdlHPlQS9zST83
 Xb82zSo_dcBDcNl.YJcgcwIkTB2kJ8fWfNbG1Am8FqGhaLcqveYh_xliXw9RLxY_SGk.qcZkmX3n
 bzqT15nn4AdMLcY2irQZesbI0WWBl04.wGRu4MoX875C3OkNUH4B.Wo5t6rK2sqdvgMWI3im8.kC
 Xiy1Wzr.B2vTlGc37KJVJbSZuzTxE7g2.dNaP_VUw5LuInugbAS0s4vrUhnS1SQfn6gTlP09oVog
 wFsoT3R.6xleAr_i0C_TW4lZqCTzQ6uGaeQyEl7m6x17ogk5gAdRuF2oEFe8wxp7iVzBqgvzOaYL
 pE.AEC_I8NexV62sRtZedzG9Gh92Yh_ThtT_RyMtaGRHAAIHXUWx9kaou8ue5rHvbRTQ.nJxTKqs
 eDcgnZEOQOjf2vxjMN3ybGGT5m9A3_A2oTXNNQN99aYBlCb86ogFySwPMk.g88AaqvdF.9UTotZx
 .B7YTylsq8iBr8yFCydbb1BBrIECNw_7qmmQP6NJbc3IArQbxXA1.cXucXiVyU4e22AZnUek9kY4
 UBmudIrUiiFK.aw8WjYDSr2uf8Q3iDQ4tNm3n25yZYZUwWFvVtkrGmzMVAuzG4mz1UPM-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.bf2.yahoo.com with HTTP; Thu, 5 Dec 2019 16:47:05 +0000
Received: by smtp415.mail.ne1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 42d25c6e5691feac4180bf49f1851518; 
 Thu, 05 Dec 2019 16:47:03 +0000 (UTC)
Message-ID: <6fa462218f8ff4ad02063d2a6e5c4a768ec313a1.camel@sbcglobal.net>
To: etus list <usrp-users@lists.ettus.com>
Date: Thu, 05 Dec 2019 16:47:01 +0000
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
References: <6fa462218f8ff4ad02063d2a6e5c4a768ec313a1.camel.ref@sbcglobal.net>
X-Mailer: WebService/1.1.14728 hermes Apache-HttpAsyncClient/4.1.4
 (Java/1.8.0_181)
Subject: [USRP-users] RFNoC time-allign 2-channel TwinRX -- timed commands?
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

I'm trying to process multi-channel RFNoC streams in Gnuradio but would
settle for using the c++ API if necessary. I'm using just one of the
two TwinRX card in an X310. The simplest example of the alignment issue
is seem by comparing 2-channel recordings made at a 1 MHz sample rate
on an aperiodic pulsed signal:

(1) 2-channel usrp->ddc->two file sinks
and
(2) 2-channel RFNoC radio->DDC->two file sinks

The usrp example records time-synchronized data regardless of "Synch"
option built into the block (internal or gps). The RFNoC example,
however, shifts one of the outputs by 10s of microseconds. This seems
like quite a trick since I'm sure that the TwinRX is delivering the
samples synchronized. I thought that it might be something in the file
streaming so I tested with a stock addsub block that works correctly in
the testbench. If I connect

radio->DDC->addsub->two file sinks

and compare data from addsub and a separate receiver I can see that the
sum and difference signals are obviously ingesting out-of-sync data.
This confirms that the random delay is being added between the RFNoC
DDC and addsub blocks, letting Gnuradio transport off the hook.

I've searched a lot and seen suggestions to use timed commands but
haven't figured out how how to do that in RFNoC with Gnuradio (even
editing Python). I'm also having no luck with creating a 2-channel c++
recorder based on rfnoc_rx_to_file.cpp: it fails with "Invalid recv
stream command - stream now on multiple channels in a single streamer
will fail to time align." but I can't figure out how to get or set the
streamer time without a usrp object.


I'm using UHD 3.14.1 because I'm also working with E310s but could
update if necessary.


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
