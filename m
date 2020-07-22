Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E1567229D9B
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 18:57:41 +0200 (CEST)
Received: from [::1] (port=52652 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyI3n-0004Qe-PZ; Wed, 22 Jul 2020 12:57:39 -0400
Received: from mail-qt1-f173.google.com ([209.85.160.173]:45717)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carsenat@gmail.com>) id 1jyI3k-000458-Bd
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 12:57:36 -0400
Received: by mail-qt1-f173.google.com with SMTP id s23so2298800qtq.12
 for <usrp-users@lists.ettus.com>; Wed, 22 Jul 2020 09:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=BL+Lq6rvSE4M1xwzr611FxbWL2pqdLlWhMpC9MwBKNU=;
 b=og/HdCzRBNntH64x6Ffw1ckU7HEKaG1F1MN0NUpMzHSfMuS8+RceuV48nnaVnWCR3x
 0/YUcY9uJCUPnpXYt1y5BVR2XWGwQY+24Y9c6eRvh+/Ps4eB/S9iy1M1JwgWkEXkdK8e
 bn1jtqybw0iuowQD6WtsFOhQAOvqdMp4tMxDy5BdIPngkVeihdaV5yxKrsKlXOQiqMiZ
 OEGFwk52+Q79fK3/FSAZe3SjxpXrWs5PB5kiO8BX2PbrZBC6UXX9oUOxMngUpTu4rtVt
 tJweeta4zN0DbXBZ1Mz1r4q74VpNA2vqTFQ5Zd/EZPlP8mcuGc8sjzpKX/+tF3cVz1U0
 GG0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=BL+Lq6rvSE4M1xwzr611FxbWL2pqdLlWhMpC9MwBKNU=;
 b=lj+0lLM6HzEzFcMl03IyxLsCaA5CnMGTEv9a+eq3lFCni6t39qdHsDDBo/lPjFF4Oc
 TH6mKJ1E9wXh8lUvljhKv3F/ui2GIYDqSTbv2e0CahqYlk+CMR/J08wH/3D4WNB6DyPx
 zkn0/v5skihpWSv+BYQiroJOReg0637i7ShLzGbagJrQRgU5y4hO8fgWtR7A9a7nSXzh
 i+v1jXj903ONtJGHu5A9KTkr+7Ns2Y/yPoezeiXKtu1fgmkc4Rm7Xr06sl+4WHaLcHm4
 ujMQO749D6ji6V+RfGEF4jy3Map1QjnE0Z4OCvwiUkz5HRB//LaAh0LW25exsXmV73h9
 wQ4w==
X-Gm-Message-State: AOAM532+D/IQiToXkoDrc16zYV/atydbanXuLiVpPILArqU3EEoYuvsM
 gj+ET/+AB6EqINQ6HxSlEqlcD2JR1vvo3hHa/DGmJuqA
X-Google-Smtp-Source: ABdhPJxfmWw03D7q4GNSzLUcDX9sKHUrtlhuz48dw9dHEh/8IeNWM4qaEhPOXJPKDRdhcAQvfistJo7R0wufRSqPvb8=
X-Received: by 2002:ac8:3fcb:: with SMTP id v11mr278644qtk.348.1595437015317; 
 Wed, 22 Jul 2020 09:56:55 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 22 Jul 2020 18:56:44 +0200
Message-ID: <CA+w2ZysadneVug92CO58wFPBKZBBtoK31xdAfV89rt73qVD3Cg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] C++ thread Priority.
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
From: David Carsenat via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Carsenat <carsenat@gmail.com>
Content-Type: multipart/mixed; boundary="===============0651621814429797912=="
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

--===============0651621814429797912==
Content-Type: multipart/alternative; boundary="0000000000008f421005ab0aa065"

--0000000000008f421005ab0aa065
Content-Type: text/plain; charset="UTF-8"

Hello, I have made a c++ code which sends samples in the main function and
receives samples in a thread launched in this main function.
I have read that we can set the real time priority with the
set_thread_priority function.
I have tried to call this function (with parameters (1,true) inside the
main function but it doesn't seem to change the priority of the executable.
When I launch another application, I have lots of U and O.

Do you have an idea how to achieve what I want ? i.e. allocate almost all
computer resources to my uhd program ? What is the best way ?
I have already tuned my ubuntu with advice given on Ettus site.( cpu-freq
set etc...)

Many thanks

David

--0000000000008f421005ab0aa065
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hello, I have made a c++ code which =
sends samples in the main function and receives samples in a thread launche=
d in this main function.<br></div>I have read that we can set the real time=
 priority with the set_thread_priority function.<br></div><div>I have tried=
 to call this function (with parameters (1,true) inside the main function b=
ut it doesn&#39;t seem to change the priority of the executable. When I lau=
nch another application, I have lots of U and O.<br><br></div><div>Do you h=
ave an idea how to achieve what I want ? i.e. allocate almost all computer =
resources to my uhd program ? What is the best way ?<br></div><div>I have a=
lready tuned my ubuntu with advice given on Ettus site.( cpu-freq set etc..=
.)<br><br></div><div>Many thanks<br><br></div><div>David<br></div></div>

--0000000000008f421005ab0aa065--


--===============0651621814429797912==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0651621814429797912==--

