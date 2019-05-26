Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6768F2A92E
	for <lists+usrp-users@lfdr.de>; Sun, 26 May 2019 11:33:10 +0200 (CEST)
Received: from [::1] (port=38244 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hUpWa-0001iI-08; Sun, 26 May 2019 05:33:04 -0400
Received: from sonic302-21.consmr.mail.ne1.yahoo.com ([66.163.186.147]:35684)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <felibol@yahoo.com>) id 1hUpW2-0001cH-Ck
 for usrp-users@lists.ettus.com; Sun, 26 May 2019 05:33:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1558863109; bh=pUFjMNSx8RxgtxM5UhmzzkJQfK6p91Vt8hOzaUvPGFA=;
 h=Date:From:Reply-To:To:Subject:References:From:Subject;
 b=ikm7W5P4Q6n64knxOwj1wl5HLGOv3ukjTcbkSa/FdFXgxBjv+gCkegjJYn8M/a4dDGSUDfuMl52fw4HJofZc7vCvjqcyBNhg9WJbr4QzF8BFgs87cv6YSxGHhgxCF08ZyYQnlCTIH3jExkjaPnmYgn2/eM1eE0kx8NMMig6l0iTChW8RkxvgnCkKSoI7mewV0RIv8C4WHpdwsg4kQw2Gi4/0vcWhQWJergwJCJ2PLbdq+wRq+lY12bsNo83dafm3X4jQgneR+ylNnQf/Y+/LLbg0rKLcapjj801jQDP07SmrzFVn1t0vGsa/Q0GTKzGLZKbX4cL/JoIAA5a99tUZLQ==
X-YMail-OSG: IBkxGh0VM1n0PC0r_KK9OERQ70FBPV8Tht55FfecUJXvfO_mPouLpcR_CihO6ed
 w8OOhJcXYm7ezF8g8jlWtqeX3eZ928QC4iRIu30kelPK8uu6d2YWr6.Ke4NcZLRMQRjiB4XZkJgE
 IqDbXiA_KhML9xKni4x30EamipotfGFXp1Nh0pipHuQ.syv45WtpEK7uf2U6lL69DtjOSxq2LVUw
 UCNXMyEME.3lT74BpbOhqUomKPmLD4RhYD.3yeoytSKE00Gnc5Y.vw7eakLsx2oVLaVuK.64PZuS
 5PwAVKepHdqwD0Tin_P7_gOON4b5LNXTC2cSPoRie2v23i8jSPZFBNbDVen0GYy_j33eJapHaq4K
 Vw_PtZiN86rJ1xeBNJxqVS06pF3IBMA6iyU.FRawH9tEi25e.BVOtPk5WZkMgW8lD.4qoLHpfQoL
 2PKSTxYBvHfxc8pLQNdlVQ6lhm4nEgAo1lbyOyGOayktnBldT_w4iWUYh_fBcYNOFRR2k4y1Nw9e
 PRmwexj8aaYDp2lrZS_3_NciLetVAn.pmg89TYsUcx553wdxIhpD1.PvmtcGAylsQcoNAaR8ApPR
 raX02QOey2Mw1tZnvUnS_qTLSQKiFf4SOzzgO0fo0cadBDriI8n6zLiHBL8Z028YBqUsMQbXe5jg
 cxeeo4plWgp_NYht38jROc09Cu3EO7r3Y_V5j8bHRGBWYfnZk3fqUeaXnBGvy8IldlZxQJClF8TM
 Wk53bj31D83TzvDNe3MX8ykxeIHM4Ep39bUz8Bf6T3.Ylo8YGngd0EnQAkas.isS7yTOqdnPtijT
 xnxwGVs5o2DuPC4DhVX5K9QqBvmomgx2Xn6w4FPO4nGBZdSx6PlMcCidJEc_CNPhhsGCDYCY0mm7
 aji3hWrOHtLrVttAmnk5.j01tdG8sgopMF7nVbCjsJpbRtZJXuEZNhtL_WXNwNaGRjj9fP9kHar0
 tl39NqskzBD5acFXn7bESPt80DBsG64i4tUIz7qUHAlJc7BCV3GGpZIMR0YBDmWEOpV_pTpJ40f3
 etrpIrya.Jj8aPm7UaSxNm2rj_8VA3DDlknDqWszpbc7dHNL.dCxV0Q._L5NkUw5vY3wzgYBgVkf
 UA5V0KdxwFtLaWDWxVuNyWEoO5wTf8xrdpLEncHIvxQIP4QrdIpUqiQEFJQx2E2w4nASNN0S7J1z
 UQAAYyXvV6eS.vWTU.yOCh8cSVhldFMQMYp5XY.B2eTTaDe0z2yAS
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic302.consmr.mail.ne1.yahoo.com with HTTP; Sun, 26 May 2019 09:31:49 +0000
Date: Sun, 26 May 2019 09:31:45 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1677305628.5132246.1558863105980@mail.yahoo.com>
MIME-Version: 1.0
References: <1677305628.5132246.1558863105980.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.13634 YahooMailAndroidMobile YMobile/1.0
 (com.yahoo.mobile.client.android.mail/5.40.0; Android/9; PPR1.180610.011;
 dreamlte; samsung; SM-G950F; 5.52; 2768x1440; )
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Sale Usrp x300;
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
From: Furkan Elibol via USRP-users <usrp-users@lists.ettus.com>
Reply-To: "felibol@yahoo.com" <felibol@yahoo.com>
Content-Type: multipart/mixed; boundary="===============8862611439513058897=="
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

--===============8862611439513058897==
Content-Type: multipart/alternative; 
	boundary="----=_Part_5132245_331004132.1558863105979"
Content-Length: 1493

------=_Part_5132245_331004132.1558863105979
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,=C2=A0
I am selling my usrp x300. It is used very rarely and in a very good condit=
ion. I will sell it to a very discounted price.=C2=A0I have also 2 wbx=C2=
=A0 doughter boards, if interested I can sell all of them or just the usrp.=
=C2=A0
I am living in Germany and I can ship to other countries.=C2=A0
Best regards=C2=A0Furkan=C2=A0


------=_Part_5132245_331004132.1558863105979
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi all,&nbsp;<div id="yMail_cursorElementTracker_1558862747384"><br></div><div id="yMail_cursorElementTracker_1558862747633">I am selling my usrp x300. It is used very rarely and in a very good condition. I will sell it to a very discounted price.&nbsp;</div><div id="yMail_cursorElementTracker_1558862817834">I have also 2 wbx&nbsp; doughter boards, if interested I can sell all of them or just the usrp.&nbsp;</div><div id="yMail_cursorElementTracker_1558862889951"><br></div><div id="yMail_cursorElementTracker_1558862892049">I am living in Germany and I can ship to other countries.&nbsp;</div><div id="yMail_cursorElementTracker_1558862917008"><br></div><div id="yMail_cursorElementTracker_1558862918784">Best regards&nbsp;</div><div id="yMail_cursorElementTracker_1558862921946">Furkan&nbsp;<br><div id="ymail_android_signature"><br></div></div>
------=_Part_5132245_331004132.1558863105979--


--===============8862611439513058897==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8862611439513058897==--

