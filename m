Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 494D6225741
	for <lists+usrp-users@lfdr.de>; Mon, 20 Jul 2020 07:53:13 +0200 (CEST)
Received: from [::1] (port=52106 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxOjc-0001Yt-FT; Mon, 20 Jul 2020 01:53:08 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:35058)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <hai.n.nguyen204@gmail.com>)
 id 1jxOjY-0001SX-D7
 for usrp-users@lists.ettus.com; Mon, 20 Jul 2020 01:53:04 -0400
Received: by mail-qk1-f173.google.com with SMTP id 11so4757060qkn.2
 for <usrp-users@lists.ettus.com>; Sun, 19 Jul 2020 22:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=a55KF3XQZihO6a7/NR155clvLlZra5jUoGjvVfiOLao=;
 b=rh2mgo2HtBGYveKcAe8lC7VrT1Kl5J7TVu9rGrg1TeVZRaoVD7d7HKNQGJJpTtF6CL
 gnEfvgYezSsbwGRlAt3NLreAR525Ycu5jutiIMJ+MNp+lGTjTgYMAwS+XpEppFfKia1u
 HqJLa1Yr3PjFtGk9Tqi1M9DDhAugsZ7S8/ZtDxQtP7wxXsqTsIO1J+gdJ2wNuRY7IfwA
 gYpgDRwgCCaVbz0uDs3INaEz6p05Xor/u8sdwva/24x8k2RKZWpCAWR5//awLKAeqXEY
 TCXqyTS10VLqRafEODyJTV+uGa5sXVUKzZ3InqncORFCV0crcqDWmXOsIJOaAxPtM6VQ
 47EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=a55KF3XQZihO6a7/NR155clvLlZra5jUoGjvVfiOLao=;
 b=FaDdDy0ZmIkRgc1jh7kpmNsY33wYH2hbC6qmkaUEK/Xaq1aMpZ90tfQEcDogbQnxjJ
 kdogAKq1tAAEsi9KidTnzgyMEk2wlxlt8y6CbbKNGH2V4Vskr3EZbh6qxieOTj5q7Ecq
 S4bJSwtWqsrSkGUI9mAPPf/hKL3EPz+S2fugOMjQNL+XlpY6EeOybehod+9H8JNxRg5p
 jYn0t6w1KVjt8L1x/P709owGPBc9CgPe1VuIv2/tBNWFF0SMeM7ABbOlAJDVVbCNH389
 jczfFzr1JJC2Vh9ZN51Zmev7tQHn76pJOtOzY4Y3Fv4Py7vES0y55DowOzvMxmFLUxAr
 8Zwg==
X-Gm-Message-State: AOAM530xv8sCqwXUF17DAZdhVczMysTUE55Yh0azciE6+oEiG02NnWmG
 XkjUYZjQ4rqlDct1xzJk5/QBLD5oAiyQdE/ZkIoXXf10
X-Google-Smtp-Source: ABdhPJz0un4YpPGTGnP8c8xjlBx4hcvcESu+Epz7Y/3pqivgO9l+B3oVoS5rErB+xp7bj0/uzBFTky7Di0pr6Vi4yW4=
X-Received: by 2002:a37:8fc5:: with SMTP id
 r188mr18754253qkd.447.1595224343569; 
 Sun, 19 Jul 2020 22:52:23 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 20 Jul 2020 01:52:12 -0400
Message-ID: <CAFZDN5J8ncEHAP1H=93cBUZ_sxOzydoXKc54sKgkCcFOHV9gYA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] Persistent red LINK LED, streaming samples valued zero
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
From: Hai Nguyen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Hai Nguyen <hai.n.nguyen204@gmail.com>
Content-Type: multipart/mixed; boundary="===============6974406105958737994=="
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

--===============6974406105958737994==
Content-Type: multipart/alternative; boundary="00000000000055e8c305aad91c40"

--00000000000055e8c305aad91c40
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm having an error where received samples from RX chains of a X310 (after
calling recv from the streamer) have values of 0 (both I and Q), and those
values don't change over time. One abnormal thing is that the LINK LED in
the front panel is persistently red during streaming. I noticed that when
streaming samples is ok this LED is normally persistently orange instead.

Do you have any ideas what would be the cause of this?

Thank you and best regards,
Hai

--00000000000055e8c305aad91c40
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I&#39;m having an err=
or where received samples from RX chains of a X310 (after calling recv from=
 the streamer) have values of 0 (both I and Q), and those values don&#39;t =
change over time. One abnormal thing is that the LINK LED in the front pane=
l is persistently red during streaming. I noticed that when streaming sampl=
es is ok this LED is normally persistently orange instead. <br></div><div><=
br></div><div>Do you have any ideas what would be the cause of this?</div><=
div><br></div><div>Thank you and best regards,</div><div>Hai<br></div></div=
>

--00000000000055e8c305aad91c40--


--===============6974406105958737994==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6974406105958737994==--

