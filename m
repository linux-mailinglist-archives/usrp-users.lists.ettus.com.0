Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9936F0F8
	for <lists+usrp-users@lfdr.de>; Sun, 21 Jul 2019 00:53:52 +0200 (CEST)
Received: from [::1] (port=43228 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hoyEd-0008GF-30; Sat, 20 Jul 2019 18:53:47 -0400
Received: from sonic316-10.consmr.mail.gq1.yahoo.com ([98.137.69.34]:36615)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1hoyEY-0008B1-Th
 for usrp-users@lists.ettus.com; Sat, 20 Jul 2019 18:53:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1563663181; bh=qL2Tfdqq6mWqy3H9kBqe8eBVrlNl53YrKKlej774h/g=;
 h=Subject:From:To:Date:From:Subject;
 b=JV2GyuTQGUOB5nrrH2GMZulNseDXbonF0T4yUw7odahYGKQ9jOyCszva2UxtgOW7OU8O1dTDoMuKoehRCSqUd98IpBwoRZVmU/noQ+EQfGAthu7Fbca2Oo5MPHkYtqioJweFNJ1woJn9+IYcBosGJM5K/OY/8MEQ46rG214qOieckBTlm3Pw/xQ/0hw4dVOev2w/xY5Izi1VIjaNMwJ51MYAjHTbZz/AZmFdgWdBPKGvIpqwShR/FvdXEQ887FzPjzaHTJsGnVRTI7VJn/kIldSZX1gMJQCS4V+ikUvQdibP80L8dI+lg+X7esfrHtQ9RLEQeHzcc0fW2pC5XRQhzA==
X-YMail-OSG: U7dEz88VM1ljh60gsrX7weMdhnvfr_K6wcj1hc9lmqqyhXLZBShbvpdXnYm0FdY
 PYHaDNMp3fopn8RfNUUb7y72iz2uZqjy3fsOBLgOnaJMHrtjBj_CCei9TnSUEGbScF8w1o0ggCjd
 nw5yArQedFluVG_f6ApqSEEUZgVVXrYgfWrNtY1N_uSLSKlYXAKHWm01wPQXsgUXfgRQuiqzLuNq
 DsuEC756zu9Awqj6cY4_yxu4l47bWC8G1zUskn4PLeE7vlTFDOLeWfpCTdjcOZu2rqZsWN7r7fiK
 wB_oAX8CNOBTxgUINHVy4k2iCR3OO82rYPJJD2M7JX6RTYApfEZO3B1m7rj3m8Kiz7VcYblJ1f8a
 rzQ9kUkonffRwgv2Pjdu_wTd_K5ZJmnTu4d4Hm8xc239.gfsDmOF_QqfxEJAh6DI0Mk3Rbq3XVtf
 a2Gzt_8RvDMvR.ccn2F0U9XDPLbtN9Xqr3t.yXVmB5QT2jZheqU96NfwZF85UbSSEETxixiaktQi
 jZCPcqXhd_ioGzXKT5XrhIoVujDu6etlMGm7ZHqYMtja9qfqvfxwk.UQrR_3aojh8cLziq_UIVEr
 evBV934VUIL7LfTDLr9CZu2OpmxX0zqB_5NwQZfPjJpFaY1LQbW17sGrrxaFBqwkuHGlwvPh6hdA
 qyprxJTILhOYTUoPyG1W3FzyCDOxkD1V_pR.s9K2aun.1MorpxwkVFBOmAwHCDlQjkKAIJSTFEU2
 1NWAxQSqMjg2Xx6Mk375.yieoDwIa1D.2HUrozEO9CXiAbAVYo4P3hgdzilEe.BY71YC.i0yac6d
 7xjnHb0yW7qGIMFtHNZowVmPqV5UWmFTRURE7wGbABpqPdGF4ixUZ6IP5MfH0g.g1.sZawJ1vzDh
 OiHWKbrh2cwQR5unFFrdD2AJk0h8R24rHuRjwnVcx.hQnUmk4bXBT7iCwMxkUDlH3avOOQKdx07j
 l657VXN.mZiN8hoy0PRKEBvMgqSciAGf2Nh.NDU8_3URmD_IkEaQ51lF5RDbUqV535k4Z4qcSZmY
 K.309G9xpnM5X8kF111XzBBwHijulneYCIHaucFc.D7STUAjYiTgwODbndFIOqDq2ukJoOV8Q6qF
 GJRrVOL9kR8e_aBbENVZg.5kxOtyeH9jmhGcbXovhOJdvZXfR7Q09M_M13XpXg2fTXcMO9fll4.g
 VR4t6hijhnFqBat4Pljl6Rp.S7qw3VhOuvhhpjXdvEoNZF9ditfDcok9nRg--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic316.consmr.mail.gq1.yahoo.com with HTTP; Sat, 20 Jul 2019 22:53:01 +0000
Received: by smtp420.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID ea9eef24c03d66ac9f6cc2b0c540712f; 
 Sat, 20 Jul 2019 22:52:58 +0000 (UTC)
Message-ID: <672fae556d9e3be289fac6db2c40e6479a6c9824.camel@sbcglobal.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Sat, 20 Jul 2019 22:52:56 +0000
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
Subject: [USRP-users] is there an E310 configuration with clean RF on both
 channels?
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

The good news is that my RFNoC module does what I want it to do. The
bad news is that every version of UHD I've tried it on has serious RF
quality issues on one or both channels. I don't remember this from the
last time I use E310s about 5 years ago so my next step is to find step
back SD images looking for one that works. I'm hoping that someone
might have done this and can report on a good version. Then I can see
if my RFNoC module will build on it.

so far I've tried:
3.14 (latest main branch): I can't build anything on the FPGA
3.15 e310 pre-release: FPGA images build and work great, but Channel 0
produces only noise.
SD image version 4 from the Ettus website: FPGA images build and run
with non-critical errors but noise on both channels pops in and out
every 30 ms. (I'd be curious about any theories on this)

All of this has been tested on serveral radios using stock FPGA loads
and rx_samples_to_file: the RF issues are dependent only on UHD
version.

Any ideas?


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
