Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D294B350D
	for <lists+usrp-users@lfdr.de>; Sat, 12 Feb 2022 13:54:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0DEAD384581
	for <lists+usrp-users@lfdr.de>; Sat, 12 Feb 2022 07:54:36 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dDGnxgfl";
	dkim-atps=neutral
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 0B285384206
	for <usrp-users@lists.ettus.com>; Sat, 12 Feb 2022 07:53:32 -0500 (EST)
Received: by mail-ej1-f43.google.com with SMTP id p9so5199749ejd.6
        for <usrp-users@lists.ettus.com>; Sat, 12 Feb 2022 04:53:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=vIqy+Vo8qCYl6qznNz39H8ith6bf2ujZPLiOckkfd9U=;
        b=dDGnxgflDo/QXHCon/tKfISb+lL3nxnSJecl7tFgAeqV6cLkH2i2Jky35VxGHhDHHZ
         gBCiPPOM2RCsXBJKPM9glGGiJYRtRrdWvvSjcH0RuHjDDbTYFoKnC3CDPW+fLseuPXKu
         Enf0zHzRJCWYxSw/EusrZotS2kS3xpX9YP+Vv09U5I++trpPeCT2f5iWJgSAPkunkSkd
         pElYuTn5Y7S7RzDzhlBn46bNShnbHfhIxReUjLHTQNmT2mmY/wg9QudCINHTw4UTQKXw
         84A+0aQYimOeGTGenFs5bPb2sj3THxPPxn6ZKggaloVe37qZbntLphAThx5SZFNItdod
         xYpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=vIqy+Vo8qCYl6qznNz39H8ith6bf2ujZPLiOckkfd9U=;
        b=AcJ5z7+FflAYZLeUoQ49tY4XyX87ZscVykK7yAxKywm0Oi5pWAMvb2XM627uG0dBAx
         hbGN+yxqyIkjoOpQNJnso7VwGeO4y6ipmhBBGBTkbglx5+EklXJdR1Ayn0Nmt7fJHZEs
         WhgPdlnt7p3Qvpgr6oeykBDcH9TKEAY+Y0AK5kDZEtwDHnIiOWQqQr5OY5DIIw23IRA/
         uSJg9Pm/JNfk+5bIwr1UOvwZqoJ4m6pFqC6/9ceSoCKiNAt1BYz+SfLwTrKW+QoQHZjE
         My4p3UImEBeIGUXdYZZt9nHhT/LqZGrrfy0t6FNAvkoflQDHqveT3WpNfg1f5UHM65/i
         +GXQ==
X-Gm-Message-State: AOAM530pTqSugD1Ht0GAbUQp/DwjJME1AjhaL+Ue5P4VSX/1w2gkAAU6
	AutuI8AlZvHDb6f71GZDv+NrWhMu6OZxwfbKyM5tNYW9
X-Google-Smtp-Source: ABdhPJx2X4YnzndNnO0Lkkh9sGp9McZzuQL8xCCdTMKMtBN0xBqKMvm9+R3bUA0mIXpkykQOWpR+9JXNdT7RlzH/8rQ=
X-Received: by 2002:a17:906:5185:: with SMTP id y5mr4814044ejk.34.1644670411589;
 Sat, 12 Feb 2022 04:53:31 -0800 (PST)
MIME-Version: 1.0
From: Casey Wolsieffer <cwolsief@gmail.com>
Date: Sat, 12 Feb 2022 07:53:19 -0500
Message-ID: <CAM06atakJGZCyrZRnBciHc=ZUaSp6YJHiy7e3gJ0qwRG2dTiBA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: SJOG45K25XY3A6CCJGQ7HOFMNMBV27BC
X-Message-ID-Hash: SJOG45K25XY3A6CCJGQ7HOFMNMBV27BC
X-MailFrom: cwolsief@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E313 dropped samples and overflows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SJOG45K25XY3A6CCJGQ7HOFMNMBV27BC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2293018089443744322=="

--===============2293018089443744322==
Content-Type: multipart/alternative; boundary="000000000000a7cd7405d7d1ab6c"

--000000000000a7cd7405d7d1ab6c
Content-Type: text/plain; charset="UTF-8"

Hello,

I have an e313 that is unable to receive at rates above 1MS/s or so. At
first I thought it was my code but even running the benchmark example it is
limited this way. Any ideas?

Thanks!

--000000000000a7cd7405d7d1ab6c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,<div dir=3D"auto"><br></div><div dir=3D"auto">I hav=
e an e313 that is unable to receive at rates above 1MS/s or so. At first I =
thought it was my code but even running the benchmark example it is limited=
 this way. Any ideas?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Th=
anks!</div></div>

--000000000000a7cd7405d7d1ab6c--

--===============2293018089443744322==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2293018089443744322==--
