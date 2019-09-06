Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 146B6AC109
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 21:55:39 +0200 (CEST)
Received: from [::1] (port=44628 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6KKW-0007iX-CL; Fri, 06 Sep 2019 15:55:36 -0400
Received: from sonic306-5.consmr.mail.bf2.yahoo.com ([74.6.132.44]:42430)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1i6KKS-0007aq-Vi
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 15:55:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1567799692; bh=SRG//LGZZUM7eL13j4Bk8oK0SChjFwH6hq3VGntySBM=;
 h=Subject:From:To:Date:From:Subject;
 b=Yx4mZ2GbFEZtXG82bx8dBQ+B8eZ8+7vFyIPM1Vh30x4QlmMEvS9k7JOmX0Z/+jtFU3p0G+upOhrCYn+u10FItPa8yPQTnqlK6wVPqkw5XvONekOjuxpBSPhlGIXP1IET4r0ahFN5LxVwrbAzsQeKP9DzuSdm96+d+Yv+zMysFi7t9u1pLI9MzWVzMmDMqzOi3wZ0G7DOhHqv8fKDDpqvGCMF3ywCZII4PBzQ90Clc4aOGAu+m3HfHIXSfsovb+4lcW9kAeONS3dRni2WwLnT8kBpuf5ddOTu8t2sYTYQjwTuH5x7S/z7otRPewdoMXNQ+3z8PjF+qXMBCXah5wvb1Q==
X-YMail-OSG: C8IZm4oVM1mrHJ6LH9_xX7hs8pV6nAiZnVq6MDkWBqUTpOill2J_8bbm2HJovTx
 dwouTI95f2CzPLEVzsV9xwPKdt7wMyDIiCELnv5uwcw2l98QDjDvpo0rxIlb9oLdeik7XQyM6mby
 P7txMSqBzyD5KyovqHOg7ifzQOBrAaX3GZMBTflnF3jKlBArXWkEnR1jXvpBIzPA2jyj3kM6fS1A
 iANc7ihCR96v0w9xdtxY1eLEukFSePo_fG6iu87Rn5kxuyAsW4w_Q3hGk2ZqQn38B7GmcgvzogTP
 wr8GNZdLEsT5UoWNvRT_X3rYU_v4VGxYCwRtXqZgUT729Gk1SQ_YUS3CZRytfnMfacTfJNVDbJcc
 ZIzDhqFQbkCfwOK9tMzb9OkP2Q3v9HzXj_OJ0sblcm8fNjezG2CfPSCfcF3ao9C2.6gAHn4Mf43w
 Ya5W8WveXEz8fEydNH2OfjXsk97G2IdewcI4O5_.MIryGmss5dIPxACoNVGNgBZaDPDk8AEZSwvF
 TU0rYHKNryrUNaL4YvJ7g5DCsOg9FMoNlk_wGJTRUoAdFzodfP_BfcPZ09rCzZWl08mWuWfd34mw
 KRNMgioiv0XLvaekD32wOhDQI36W9NKqKZ.4Vdu01zAHQB_6yoev3a77XmDG71Ds_fk5DQdO2lbu
 EQzUQCuS6ulBwhHDh3_KI6hLNwApM.4hMTuCh9vtuZ3vrSYkz_ze6MVJ8dD_YXyukY_YwnSTOrCa
 wjyoNBSXYo8mrj0sU9It2NUHHTv.xcBo1pysINSIx8xtxfd3AiX9xjRVV2U2vw3OFJxLLrC4RZMG
 roPY26iCufpTfWH1nXMreghOMlF86M1KjtZNqdUupW7HvoQq3SYefPwgKcXsVLJeAKfAp4xsK28_
 0oMRivjCnzf2VprFA4MdShCsNfrlf6uOa8A5Kemeff4fMS6HKJWAe3ojCLr3ubLxbiJVcfPrQpqP
 ITGz7G9PtfllaKe7QRiD_Twi8ce78rJVyIbAu5lDMvyEdHU7zdOPucVOphEAaP23Rpk1vmmikbVq
 5UEH7Q3GLpg16BU0GOzE4iHJlRtZn_C4G8aRyVXTuPDQHS.qTxPHjcv8mn1rmxKJGEpECpeSCZcn
 Fhkk8u10IZqFWbNieXNGYRSBXMhem38SwfCpFuVK2cJp7stEQbSfQEN6c6ONsDrgYmmf8q.1gSPh
 22WiwXQBbPsADxsFUYAaz0hf8r8A512Wu8EIhvTZ3pRkvVD6Usqc5S4A9p3duyuujGubNRJzy457
 PXJjXNohps35hRlEn1KJJKCnIjaQfTysgl0rWi3QP_HmV3HA-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.bf2.yahoo.com with HTTP; Fri, 6 Sep 2019 19:54:52 +0000
Received: by smtp415.mail.bf1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 3e8c3cf4f7886db2ec02dde06c483430; 
 Fri, 06 Sep 2019 19:54:51 +0000 (UTC)
Message-ID: <6e40011e4fe6798f7d641567de5f2ddd4ed6ffe6.camel@sbcglobal.net>
To: usrp-users@lists.ettus.com
Date: Fri, 06 Sep 2019 14:54:41 -0500
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: [USRP-users] E310 RFNoC frequency change breaks channel time
 alignment
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

I have a two-channel signal conditioning block based on
noc_block_addsub between the radio and a DDC. The entire flowgraph is
radio(2 channels out)->addsub(2 channels in and out)-> two separate ZMQ
Push Sinks. I'm using the DDC as an integrator/decimator because a pair
of FIRs or moving average blocks followed by a pair of keep-one-in-n
blocks won't fit on the FPGA image. Those streams are intercepted on
the host side and displayed. The system works as intended until I try
to change the frequency with the XMLRPC client, or if I even include
the provision for changing the frequency in the block on the host side.
Most of the time (but not always) the two channels go out of sync by at
least one sample until I reset the program on the E310 side. I don't
think that the radio itself is capable of sending the two channels out
of sync so the issue must be somewhere in the addsub block. Peeking at
the debug file suggests that the system is trying to change the channel
frequencies independently. I wonder if that's the issue, and something
like a timed command would help. Any ideas?


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
