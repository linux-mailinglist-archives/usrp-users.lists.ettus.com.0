Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B671FCA6
	for <lists+usrp-users@lfdr.de>; Thu, 16 May 2019 00:55:15 +0200 (CEST)
Received: from [::1] (port=53918 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hR2nm-0000d4-IQ; Wed, 15 May 2019 18:55:10 -0400
Received: from mail-qk1-f178.google.com ([209.85.222.178]:35487)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <masdrgs@gmail.com>) id 1hR2nE-0000YX-Py
 for USRP-users@lists.ettus.com; Wed, 15 May 2019 18:55:06 -0400
Received: by mail-qk1-f178.google.com with SMTP id c15so1115880qkl.2
 for <USRP-users@lists.ettus.com>; Wed, 15 May 2019 15:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=cUseGHfX/Wie4CfSxz/qUrA1z8Cmdu0HWJyvm332WYs=;
 b=cQ2ul8FYgCoSbngxRAmLCNk88p81YdB7V82X0UXezt4WNgRSddnKATtNKRxJtGCv9Y
 tKvUHRBv/CcmgmhwXk0fq69Tin96ROMOzqAVFHb2CJNP53bQLH4nJ8ckv8+yDNnKSpDW
 xavsTtF20d4iOGhONX/2H8rcjfdi9okvfU5vorD8CRaDBoLeXUYuCfnqw4+LRHAh1x2n
 txJW+zAELPMvGW7tZRK7F4hsGDNQMlrPD+nUiDioBICrzrrBZPGpyGZRHj7pf/yjAEq5
 qI3MclFoKF3Pz5eWavNZFXiFG3E8ef/xgZels+lII0UKyM6zbb8byFDaDw4WAiT5olF7
 /UAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=cUseGHfX/Wie4CfSxz/qUrA1z8Cmdu0HWJyvm332WYs=;
 b=X4ALWLKxDFatyVm5OdsWNIXP9yd2z5W6H8rvNadMDk4XA484z7BxQE+2dp7E5czAQU
 G71nq3PpUJCvCOBDkdNDmZxmTJUKbOZRI9kYSmGgLvA0t87NYLe5nvVXi7genC81zRdA
 iBCP50195GUOCIvTx9xW4Q/X//Kb5wKKV9t1Lp0XvW41WJRUnm6YL7GwxXXi8Bm1txhu
 qHyRVlBm8jvfrgDDMSuVIPKEsCL9/NihuHyPMK4GiXWcVu3WnSIMHPARY+RESm0J0HC/
 nCkujLHoV7zF9gaxj0HYTOsgoLJiqx/Le7VD+6qQznIbP9Tk5ROCNgOJ0adKRaM9SNB6
 xvew==
X-Gm-Message-State: APjAAAWU7EEMTOPbsrdp55LN0zqLQOPs8B7AoU9KlKjdTo7tKtNMkzkp
 1mn/v7ntP9GSSoNl9h9VZTKbmgsY2RR0Ei57DRHLsxjt
X-Google-Smtp-Source: APXvYqyPGpAJbBItXlT5Q2EQ8WVAJ54YWqwjF6kVipdN90l1e+LXJNHmbj2Ni+yqY/PqtmXxjvvtXPP13O0hQ53grz8=
X-Received: by 2002:ae9:c20b:: with SMTP id j11mr35164780qkg.357.1557960835904; 
 Wed, 15 May 2019 15:53:55 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 15 May 2019 12:53:44 -1000
Message-ID: <CAH2gDtmquSDVaR3yyZWW8Ri-KmXnxrREL6oPEnDWKejkiDGN9w@mail.gmail.com>
To: USRP-users@lists.ettus.com
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Running network mode on E310 and N300
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
From: MASDR GS via USRP-users <usrp-users@lists.ettus.com>
Reply-To: MASDR GS <masdrgs@gmail.com>
Content-Type: multipart/mixed; boundary="===============3199443378021829043=="
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

--===============3199443378021829043==
Content-Type: multipart/alternative; boundary="00000000000032b8310588f5061b"

--00000000000032b8310588f5061b
Content-Type: text/plain; charset="UTF-8"

Would it be possible to run network mode on both E310 and N300 using the
latest UHD driver v3.14.0?

The N300 requires v3.12.0 or greater to run host mode and I currently have
release-4 with a UHD version v3.9.2 on the E310. But the condition to run
network mode is that the UHD drivers of radio and host machine must match.
I couldn't find any information on how to update the E310 UHD drivers
directly, but I have tried creating a SDK version using release-4 building
UHD v3.14.0 but wasn't successful running network mode with E310. Any
suggestions or help would be really appreciated.

--00000000000032b8310588f5061b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Would it be possible to run network mode =
on both E310 and N300 using the latest UHD driver v3.14.0?<br><br>The N300 =
requires v3.12.0 or greater to run host mode and I currently have release-4=
 with a UHD version v3.9.2 on the E310. But the condition to run network mo=
de is that the UHD drivers of radio and host machine must match. I couldn&#=
39;t find any information on how to update the E310 UHD drivers directly, b=
ut I have tried creating a SDK version using release-4 building UHD v3.14.0=
 but wasn&#39;t successful running network mode with E310. Any suggestions =
or help would be really appreciated.<br></div></div>

--00000000000032b8310588f5061b--


--===============3199443378021829043==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3199443378021829043==--

