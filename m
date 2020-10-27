Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBC929AA37
	for <lists+usrp-users@lfdr.de>; Tue, 27 Oct 2020 12:04:30 +0100 (CET)
Received: from [::1] (port=49894 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXMmA-0000wV-IX; Tue, 27 Oct 2020 07:04:26 -0400
Received: from mail-ot1-f45.google.com ([209.85.210.45]:38996)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ashutoshsingh7589@gmail.com>)
 id 1kXMm6-0000rJ-1W
 for usrp-users@lists.ettus.com; Tue, 27 Oct 2020 07:04:22 -0400
Received: by mail-ot1-f45.google.com with SMTP id o14so739280otj.6
 for <usrp-users@lists.ettus.com>; Tue, 27 Oct 2020 04:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=CoVM30u9T3zFkBgLclRjSsrZzUuyAyWCCuiKwpNFrxk=;
 b=l7tej6TGlDst7pe7bQOZneMKwkZajCAD9l7qtUH18PbYN6rxCt4n5bGjaWr552sKKr
 qH9T2tHSt8Keld8KECV4RTcgWI6N9HSNIbYC04dHZPEEfbbZ+kRRDVzPHq87hecSw3Si
 RCVZJCWd8GrReRwEZXWarCknNDvq0qNv1oouo1wLRwc5audcig5we4whSqOOUdoSpurh
 EW1glPWvGikg7GkZ6Acd227FsLTA5X8qEKwk5DY2yWyTewZVqL3RuZ+2d31T7YTIpK8u
 Pr4ImeJ+ull3zrDmCB7BC4zWq/4eYVLcGhiVzGpFJsozHzTFruD27lGlDPBoAvmCK7VW
 32CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=CoVM30u9T3zFkBgLclRjSsrZzUuyAyWCCuiKwpNFrxk=;
 b=qbirc2WBGH1ktqtuJfvFo1q/mA3wgGUi00KT48CSEaes6xkWTgnSSElf4iKMxtuS+R
 waESxIThlexACp7lxKF/iWG3smZSVWJbNY8B9Q1JIGW9CFS+YYpibwEQk/OWT2GM8bnI
 pB7n58UkFD+6KUMbp7UtX6a+nRLEs0X2ab57Z7we1jupH6oWosk+r3MTHnPRc9zrguhH
 CAKuE0pLFpmX5J3Im2rTz4ATn5ANh1pEQoyU/BCvz6dZ5eT9ph4zJZaW4YCKqp076rEA
 GK5TQr0pM0QKRTa/UuA3lZ0Utf9IjV+J6vAViNCa6HD8ROiQvSNyaWTTD0uMtCH6rht+
 ZTLA==
X-Gm-Message-State: AOAM532aPihxI4bKzHnGMhTenqoG4+E7AakwnZqQG/PShEjH3UnpQWqo
 E/fkrmxe6yG01PIew9jxppHsslG5WvH+fwH6RQ5K2bquOnk=
X-Google-Smtp-Source: ABdhPJxbBsBoXl1bPiiBGTZYIJyMfZKsWXJ8/ZQofWx4K+IPTWAQSTmd3LPMJ9UuPJu7Ry6j1SZLbDqumekCqhddobM=
X-Received: by 2002:a9d:518e:: with SMTP id y14mr992337otg.138.1603796621229; 
 Tue, 27 Oct 2020 04:03:41 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 27 Oct 2020 12:03:30 +0100
Message-ID: <CAO38sJ6Omr0v6U=XeudGapGd=LPsdCNHd_Sx3krM1M+a7d_drQ@mail.gmail.com>
To: "openair5g-nr@lists.eurecom.fr OAI" <openair5g-nr@lists.eurecom.fr>, 
 openair5g-user <openair5g-user@lists.eurecom.fr>, usrp-users@lists.ettus.com
Subject: [USRP-users] Check on missed samples in USRP B210 on USB mode vs
 power supply mode
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
From: Ashutosh Singh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ashutosh Singh <ashutoshsingh7589@gmail.com>
Content-Type: multipart/mixed; boundary="===============5033201489004588231=="
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

--===============5033201489004588231==
Content-Type: multipart/alternative; boundary="000000000000e6820105b2a4ff37"

--000000000000e6820105b2a4ff37
Content-Type: text/plain; charset="UTF-8"

Hi all ,
How to check whether samples are missed and how many  while operating USRP
B210 on USB3.0 or with added external power supply?

Is there any option of it while running ltesoftmodem binary?


Thanks
Ashutosh

--000000000000e6820105b2a4ff37
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all ,<div>How to check whether samples are missed and h=
ow many=C2=A0 while operating USRP B210 on USB3.0 or with added external po=
wer supply?</div><div><br></div><div>Is there any option of it while runnin=
g ltesoftmodem=C2=A0binary?</div><div><br></div><div><br></div><div>Thanks<=
/div><div>Ashutosh</div></div>

--000000000000e6820105b2a4ff37--


--===============5033201489004588231==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5033201489004588231==--

