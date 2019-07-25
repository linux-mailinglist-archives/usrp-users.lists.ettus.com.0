Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C76F4759EB
	for <lists+usrp-users@lfdr.de>; Thu, 25 Jul 2019 23:57:15 +0200 (CEST)
Received: from [::1] (port=53654 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hqljX-0000SQ-L0; Thu, 25 Jul 2019 17:57:07 -0400
Received: from sonic316-10.consmr.mail.gq1.yahoo.com ([98.137.69.34]:34757)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1hqljT-0000OA-Hl
 for usrp-users@lists.ettus.com; Thu, 25 Jul 2019 17:57:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1564091782; bh=EXvSIVMBnYte8TSF3yKTVkuaId44fpZf6DDKHxTTKEA=;
 h=Subject:From:To:Date:From:Subject;
 b=iECW6npjhVbANTVLBunGtgZXbSamlnX8qHCJdbph/dhoZQagxRFXTSDOtN0zOlrqjutAkqa+/dq3xvlhIOUMYCYZB2Rw0u3iWRDhd7c94tOxNayKT+bvSc3K5Svi/K5Bx1OaV8FPt42uRvh+u9ZIldFT18OHnfRZgVQJ9o5XbaMjEX6FlH7viPgj6Cyki6ClN1thUVe11nHfXtrhcaQoBAbbyckJoWakmNAky9o0g4BVe9XVDJ1qMfw1TjGUNCBkrr9EUv2SmNoKdElAnKmQX+852RClbdYoLdXT3Lo1PHhNoVlCE5a4rtUD+dmqiKWNJ8jnv7SQ0Ad0QUap9XuU6g==
X-YMail-OSG: efeTP5wVM1nLRZbt3FOMKZJRqMCHFzYil37iKl9.bMtaDW.Imos4WU3ZJYea.bz
 BMxixxSiXf1JjbYD7p6aycB4MB7QDdxPMzwmunKbtL1QkFUfI8x6WH_VynWLEJXUNJBh3aY1RTJh
 GiF.eeam36BmJ3g39C2T3vYepY2493WOIiDLzZiB6J42ObW4BgOn7LrpwBQlwaEdjc0iRrxb21QL
 cTpZCOv9LRFb23ul.Pz4dGLppHkBrY9Ifx43Dl.XByiAy8.JNv4OuYkh5V8mGqG2DIatEQVQ_iwZ
 7qDn3Av08ZjMBTb7EU7yUCXXb1y8y6kgAyUDjNb0xhMZ0vPEzf0AoMVrT5ao.4siLlZIh4i0grlx
 hzjOrC6dLMuDZ.9ga9znrE9R6oFEVRdUGed0g803qPNK137GSniv_u7JroGj4aMAN_kMKIDvc3ic
 jdea.oFCYE6SUL5azQfE3Du.52r0YGLR0c9XS4viFXunDjQdFPk4zZKKVAJ9hYYFBOztpykzPAq9
 YDVqC1Pw1lwByOPrU6u7yRV4xv3V.LO0RMrw5pI2uky7FObdIX1hNOkkWb43VQz_hODUHNYLZbT0
 LzEL7nrPCuNXKg1DyOwsEO9iRd8aPKha0gMYSbJOsW31gyP_66B4V.PeXBmK2HzmG3oFTbYXHA_t
 Hplm5VS59z71LETmu3PKkRf4B4JJPV_vBhW4gPzyyaDWpziOdOCkWj0Qk5Q1JWnZwKWJWlKf8sIh
 4bpJ0q_A7f.lqOXC6j5QEMPW55KhhfmtStQ56UuonOnfqktY4bfnrjSBk94G.rjJ1tAMP1EnAvzj
 L32X8M268gPy.cfOY7KhuJdwdqm274wGxv7GKBtfZ.r2iEuTmCrMvs182MxD2BTxfsiDiZliNfJl
 8TjuH4mZBoVRcdmz5fLk1ukT3Ey2JsWE4_mdrRkEFNFl370fwil_Ze_oFhYU4uHuYe0m0QS2JlKJ
 7HZI_oRoDs6ZylFMq1R1tho7wPpki90vGiaw8LH.bgFhJtz0wvmCJ5N2Wn8EBQEoWXjIsMGjU_pT
 uCHGowR9iIPnAqZXCeVYIq6naBV_hgJFk0GLidICjIEzbHjXJ_JNKyaPJmX4KfHt2ulkC53MCzUP
 23iIi_sz42CeVrJEJwOEishZQxFeNNFoEonBJP67nrE6C.m_qynlRU_Yji.SKQW2AKj.V2TDi9c5
 ai0zD27dIZXsb_5cr.jV6GMY3pHSX9om8dGJ1dFkoompTe4qR83jRq82v4CLQ_X8uVv87_fnf24L
 6OmjLxxk2tDUvQkhJJNgiIfIKpxStTvfZ
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic316.consmr.mail.gq1.yahoo.com with HTTP; Thu, 25 Jul 2019 21:56:22 +0000
Received: by smtp406.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 01c0f12f4b50048d64cdf91163d5749e; 
 Thu, 25 Jul 2019 21:56:19 +0000 (UTC)
Message-ID: <c840c1fdf11feacfb72785e13450ac6a1b7194a0.camel@sbcglobal.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Thu, 25 Jul 2019 21:56:17 +0000
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
Subject: [USRP-users] the VCRX2_V2 bone's connected to the ... antenna
 switch?
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

I'm still trying to revive Channel 0 on the E310 in UHD 3.15. I've
swapped SD cards with 3.15 from  
http://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0-e310_prerelease/
and several older UHD versions such as 
http://files.ettus.com/e3xx_images/e3xx-release-4/ in several E310
radios and have confirmed that Channel 0 works in older versions but is
as dead as Monte Python's Parrot in 3.15. The noise that the dead
channel produces changes with gain changes and is similar in level to
the noise from the live channel so I'm wondering if somehow VCRX2_V1
and VCRX2_V2 are both turned off despite what the LEDs say. I'm trying
to trace how the antenna switch physically gets activated. I see
references in the code to VCRX2_V1,2 but can't quite trace
e3xx_radio_ctrl_impl.cpp's commands through the various components of
UHD to fpga action in the form of voltage on diodes. Can anyone point
to a reference that might help? Can I measure a voltage directly with a
meter to see if this thread is even worth pulling?


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
