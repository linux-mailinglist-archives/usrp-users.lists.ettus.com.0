Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7593B3E89E3
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 07:49:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 312EC383D01
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 01:49:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="sX2ZMyAM";
	dkim-atps=neutral
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 522D1383D01
	for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 01:48:41 -0400 (EDT)
Received: by mail-lf1-f43.google.com with SMTP id z2so3253788lft.1
        for <usrp-users@lists.ettus.com>; Tue, 10 Aug 2021 22:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=gnwyO8eIu8iJQijapH95OhNA36AtJfPv+PZ8qj1Im+A=;
        b=sX2ZMyAMpIhLM1oZ/7znMNFeDgJlDwp6nJeQfQOVLGzrRxfX8cPbDhifJNufom5p4f
         khwVDhU/a+yprfl3arP1KANbDt3nYzd5s1YD/XX/Z8pWg+cay8MDv6PPEV0PaHPSqpl7
         QXwQaCw7bT2Bg7vZkt4Q32PHRxQKbNbB/Zvw0gsgtYKFEJq5A6Updt6bMojNvTw4OU9s
         zJoRdPgiLN6SjLgtXLlh3JdwE51E8qEkq6RTx8Bb03SJejshQpSPVTYMZjKPCpsbmr/n
         5SJDP3ZiHokgwBxDCgv63p1DKYyT7b4m24B2BDKMXacHhjG469qdvOoXfBMG9T863avx
         9IvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=gnwyO8eIu8iJQijapH95OhNA36AtJfPv+PZ8qj1Im+A=;
        b=nvgJzx7poXDvkTBO9kzpJ39TfBjbCSa+9OIQ5irkA0Kuj2e8tXNJcjy98NV3BRPaIv
         ezLewT7Ad+FVG1uy7JSGmnYNbNqE7mAgMyi8jmAnSWtee4PQw72zPcwPCLkveE7J8HrY
         GD+T9lJZCp6s0CEJ5t61UAba6vko4mrVl69qWCBLhHCFuFiRXum3T7O8VczLvNVJl/9N
         Dw1NxXSfG/hJhXNAhBohvJiRWBtYfq6PCPA+11emSc5doHJl2cOysul95Kc6PiFumUPm
         2BZ0mNtSESpXcb3MWeUwAJftpQSXV5iKCD95JW6Uri//KCzTwuRMFbAxSOd8HR3U251H
         Q+9w==
X-Gm-Message-State: AOAM532X78zGfXQq9WUJyv2CaaZXdWLb2TIUobMY3DAYS0HZbxTv56Vy
	xT/rjm1cgt/6Tqpkeu2mwk6qxbbd4DxhYM8HtSttA+Ur
X-Google-Smtp-Source: ABdhPJy03j88U4NyJY4OuTkj+kPkWGb1OrPvwWP3HOJQnb7IJJ2e2n6aN9zTV47h3Zfdilo8vtdt6WJ/ooVuOj3NV5o=
X-Received: by 2002:ac2:4116:: with SMTP id b22mr23898601lfi.587.1628660919751;
 Tue, 10 Aug 2021 22:48:39 -0700 (PDT)
MIME-Version: 1.0
From: Paul Atreides <maud.dib1984@gmail.com>
Date: Wed, 11 Aug 2021 01:48:29 -0400
Message-ID: <CACwKM9K-UMZ8kUPZ-FSV4anR1UgJiP0e67Uw6-gpgdPo2WCJeA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: LKDC5N7ASCNFDYA64KZTVFKUEC57H4A7
X-Message-ID-Hash: LKDC5N7ASCNFDYA64KZTVFKUEC57H4A7
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B2XX radios don't continue on overflows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LKDC5N7ASCNFDYA64KZTVFKUEC57H4A7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5139390509511352995=="

--===============5139390509511352995==
Content-Type: multipart/alternative; boundary="00000000000094d77105c9422b74"

--00000000000094d77105c9422b74
Content-Type: text/plain; charset="UTF-8"

what is the current guidance until this bug is fixed? i've recompiled UHD 3
times now.
UHD4.0
UHD4.1
master
all of them have the same issue, if i get even one overflow in gnuradio the
screen locks up, in rx_benchmark/rx_samples_to_file the program terminates
early.

when will this be fixed?

--00000000000094d77105c9422b74
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>what is the current guidance until this bug=
 is fixed? i&#39;ve recompiled UHD 3 times now. <br></div>UHD4.0<br></div>U=
HD4.1<br></div><div>master</div><div>all of them have the same issue, if i =
get even one overflow in gnuradio the screen locks up, in rx_benchmark/rx_s=
amples_to_file the program terminates early. <br></div><div><br></div><div>=
when will this be fixed?<br></div></div>

--00000000000094d77105c9422b74--

--===============5139390509511352995==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5139390509511352995==--
