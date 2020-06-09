Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1C71F3D9E
	for <lists+usrp-users@lfdr.de>; Tue,  9 Jun 2020 16:09:41 +0200 (CEST)
Received: from [::1] (port=55340 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jiewc-0001G5-4F; Tue, 09 Jun 2020 10:09:38 -0400
Received: from sonic305-2.consmr.mail.bf2.yahoo.com ([74.6.133.41]:45849)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <farhan_uet08@yahoo.com>)
 id 1jiewX-00010d-OL
 for usrp-users@lists.ettus.com; Tue, 09 Jun 2020 10:09:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1591711732; bh=rW7/lXWdoQt4VjlcJMyDLkfewSKpeOYaaJEVYVKiVhI=;
 h=Date:From:Reply-To:To:Subject:References:From:Subject;
 b=nWDOyEOruECl7+9541ijQ8LOAOD2YoxQ7uz5gJ3w3xGg7KdIkQsSYVFKNWQgggBs2yl4DT6lZsSHlM8kZRnfz/gkV96UdDONbzvzhc5U61w/T5mDbhE4sqsJe1/49lMmPDCUdHoY2PELr1rqI+j3CytrLTYIldaM+cpnBPI2szbqKGSTIZYltrovPkEm4PBCYQ6+sHw7s2jtt/7Ecio6UPIT6E8+ciRLaRmr8n6OMGtVmPGKZRPr+5LZnDGVFt/tP8ii9wDJrxUQyqcr/lIfoViy+qg33a/5rTBzHBFgZeAjUIe5K8mMTt3lYOq68/u5xCH3/qOagViwg49GvGfv+g==
X-YMail-OSG: IN6eGa8VM1k3RvGqcKUtPdO_0SHs.4WdDaO.ZRTPmxIqnzLQCrjqyLU3nsIftkd
 r8AIRJQPrR9tb6JBDT0bu2lJugEwEnHuebN8ntJXLhvRn4MRKOR9uBfUC8kCxUBnNovSh7nqOX.t
 dKHHH0uiRnzq2YAThPrenHGg11AoEEgLhpjWDGUIB7tSCDeSx2C.q1_P57NUHHs1gEH3tZ7auYH9
 .zhQBKY3yOCl.dytTGO6cWykBE4JHEVQJHOp8KCUb99IoHmh95CrL3qUd_ylKkmKn62bdPgqkMn4
 8HPTK1OdVzmlg9qGFDWx_VVewg5D50cW_8j4R4J5oGhj.CCwm87l135342ygSP5e7YTmg3oAbeRC
 k8WvkNhmXU_yldvjwhaXfRLMRaF_DpvP.eTbL0nBqWRgadLZ3DVMGBxxf5YD5olKXkmE3b7cKiEM
 kabokVssG6KkfTJtWjf09km4Q1kvY_M9WQT2jG37B_sfbGqWpU44ibQaddkGjGKBrQabkvnAnFxL
 VtbaixLZvHtc0Uw7X4KBbTu2UtR1yrIqxFmQmacg2iAMPpdr9eMtcYFbk2boMjQL4X0UpAiGxhbZ
 fnPqXJhHHJEN8MB6M_GGz1qqS58dcsNymi3zYlxlqtsW7bX66h12S3bUS.3WQKIB4xArdZeovK8q
 MQCJLO6PfqQHE4PqP6At6XlPVgS.DUXQPhclAgbWiSwemUcGbJNpnoA6O7kS4TRL3YVh_oU8p48R
 1ylgv7j8OLKOv1BQYJ7q9265VLFonueWF.4r.PuR_erEaV4dkBfyXbYqKCsuvfhM0OUtKT4mnAaR
 jF5RxJDnc_NzUwfJK4tzelxGVulLCmaNmct092DB595L_ezaKUd5Z8qlGInBVzJ8h7Y.D8gEUnkp
 5Gck2BZ8fwUTRTavBTrQTXHH7FcqSfywzVcDKXkDn.DxdtE4MC0R_x4WlGqMd70943Kd27tijSbj
 ECPE3a9UgwWAq6q7bIVv6q2_BvnZqEZzSS407mTAJs720ZMVhs2XD.VuLUucIGf.LCTHxAASacSI
 KzEMaiXU3MU3cQIg_DDlR2atxj4k4iFS.4CQsK.fpCXYrlAKJTqWwsSdajfR8oj8EDgMe9.QPZFx
 Rw05V0dDDKgoAhM0kqAK.tp7JD2jPmFQE4v18EHwupVdl.LRPizGTrDq.nZTNu6SYrRzJ1pPOFg7
 H0ZxIBxyqcztcImOIBvdXD9NIIKadcjziLkjbJlLid_NDVWMIKH18CIeuRldGDl0o.4iw1V3_Wg2
 v6DdIikU4qB6mjUjaUAot1LqWUzRD4xhbg32wYh3xaXlfD51nHSbmBrtHn4odJP5OrcZCIKfGpnv
 FHOGpVVgzHK6WNSVQTQ3MFsQCMO1y9i_02m36GG5OPKVwcyhaJ1Ksylbao6jeTPkWkykgGl4H
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic305.consmr.mail.bf2.yahoo.com with HTTP; Tue, 9 Jun 2020 14:08:52 +0000
Date: Tue, 9 Jun 2020 14:08:48 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1782458469.1080360.1591711728131@mail.yahoo.com>
MIME-Version: 1.0
References: <1782458469.1080360.1591711728131.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16072 YahooMailAndroidMobile YMobile/1.0
 (com.yahoo.mobile.client.android.mail/6.8.2; Android/7.0; NRD90M; dream2qltesq;
 samsung; SM-G955U; 5.98; 2094x1080; )
Subject: [USRP-users] Help Required B210 GNU Radio
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Farhan Naeem via USRP-users <usrp-users@lists.ettus.com>
Reply-To: "farhan_uet08@yahoo.com" <farhan_uet08@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4408774748532854551=="
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

--===============4408774748532854551==
Content-Type: multipart/alternative; 
	boundary="----=_Part_1080359_1566253816.1591711728129"
Content-Length: 1248

------=_Part_1080359_1566253816.1591711728129
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello,
I have USRP B210 board. I am trying to find tutorials or getting started guide to use it with GNU radio but coupd not find one.
Can any one share gnu radio examples for this particular board and relevant documentation regarding Ettus GNU radio plugin. Thanks.

-Farhan
------=_Part_1080359_1566253816.1591711728129
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello,<div id="yMail_cursorElementTracker_1591711515104"><br></div><div id="yMail_cursorElementTracker_1591711515409">I have USRP B210 board. I am trying to find tutorials or getting started guide to use it with GNU radio but coupd not find one.</div><div id="yMail_cursorElementTracker_1591711575535"><br></div><div id="yMail_cursorElementTracker_1591711575820">Can any one share gnu radio examples for this particular board and relevant documentation regarding Ettus GNU radio plugin. Thanks.</div><div id="yMail_cursorElementTracker_1591711677279"><br></div><div id="yMail_cursorElementTracker_1591711677477"><br></div><div id="yMail_cursorElementTracker_1591711677594">-Farhan</div>
------=_Part_1080359_1566253816.1591711728129--


--===============4408774748532854551==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4408774748532854551==--

