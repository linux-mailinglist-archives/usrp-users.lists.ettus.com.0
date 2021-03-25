Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 470263497D7
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 18:24:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3F0793838C7
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 13:24:01 -0400 (EDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 72FC838382A
	for <usrp-users@lists.ettus.com>; Thu, 25 Mar 2021 13:23:52 -0400 (EDT)
Received: by mail-vs1-f52.google.com with SMTP id e5so1309275vse.4
        for <usrp-users@lists.ettus.com>; Thu, 25 Mar 2021 10:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=SeYRPQh1hHkCv19aD6uN0+coX1cWhzAATB59UJad53o=;
        b=m1yHCHht4XC2mpFIaWOCVaBopR6ipmFHl0zFwXOsooRTQkGDFgx4t8IYNtS9nI0iMt
         HJp6W/sAmE5LbhiIq3cNOvRDFD/0ieA/G7Sv7gqlW8MKkMsBMoG+2xqN2tTr1oD6/bhT
         Q+6ZjEv/7jLYWMPW8T5AX3FWm+XeuxUE4c4krYiIm7ZpJGZT34Rtowqqa0biANI1xIJn
         +DiQhScvbY23pDOT8qR0TaT7QKtzfqNsyX7qf8hIXjXxblhkmZLgQm5iA7xjQTQqfUME
         2svtknc0qzQDi7lDVsSmKIrdGYqtgq+c3Df+7dENdHtWyev3Iid/jfjhLYnxFVF0mE8H
         bLig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=SeYRPQh1hHkCv19aD6uN0+coX1cWhzAATB59UJad53o=;
        b=ToY8r9yi3xxDPj5C5HBtgclQGho4+EzIO2daX2l2AUxhs6sjbIW7GELu9zZlIpQymF
         5vh8pRFTTt5Ajl52FlSkIwCdeft3z+ieMjbCCB3DAeHIVCLfFBbU9RYmnZWxbXnz8mLO
         ccka0QmuULXtoSEovQa9ZigwUFSvZCHFoJMZYZUlI8Te/O4dpYXIlDLgQcsr4SSeLC9i
         p/UzQSBE53a/uig4utSqwqUuO/GoEpqZymhPTolqzwfLiyUMuJQoPTrvWHoPj0rpG1tN
         for0/nRzvOKkPqMB0Z6LmWBfnQTYE6tctGqcYkruAF2fuJWGe7laxU+FLOImSoKbUqaL
         LSVQ==
X-Gm-Message-State: AOAM530m7h7eEPTb9kgrBDb3Fs7prpmjv2GQVYkL9H/vADIkGbvRdkml
	5G8pFkuLenftl0XeP8Up1YUohwl4CtzMewn/jCCv2i6E
X-Google-Smtp-Source: ABdhPJy87AX0864V29QxQkThaDlN9fVBiOmeHKLCrmTPhrvsb11N+ETJqElnhZz8dAH1BGG8zPT+1qqNcGHyDsdHUPc=
X-Received: by 2002:a67:ec87:: with SMTP id h7mr5969598vsp.34.1616693031511;
 Thu, 25 Mar 2021 10:23:51 -0700 (PDT)
MIME-Version: 1.0
From: Ben Magistro <koncept1@gmail.com>
Date: Thu, 25 Mar 2021 13:23:40 -0400
Message-ID: <CAKx8PBis-7ixP6A4Sqp=E2nN3N7ac0PQ5zUnWZ_O8-1aNg9dow@mail.gmail.com>
To: USRP list <usrp-users@lists.ettus.com>
Message-ID-Hash: EIQPBOXMZGZS3RXP6VE3CJ7UP5POKCLQ
X-Message-ID-Hash: EIQPBOXMZGZS3RXP6VE3CJ7UP5POKCLQ
X-MailFrom: koncept1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Shared UHD Access
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EIQPBOXMZGZS3RXP6VE3CJ7UP5POKCLQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0506219673296463533=="

--===============0506219673296463533==
Content-Type: multipart/alternative; boundary="000000000000daa99a05be5fad63"

--000000000000daa99a05be5fad63
Content-Type: text/plain; charset="UTF-8"

This might be more of a GNURadio question, but is it possible to share a
single USRP device (E310 in this case) with two flowgraphs?  What I mean is
the E310 has a "A" and "B" channel, could you use channel "A" with one
flowgraph and "B" with another or does everything have to be implemented in
a single flowgraph with the UHD sink/source configured to have two
channels?  I'm guessing the latter due to how UHD interacts with the
hardware.

Thanks!

--000000000000daa99a05be5fad63
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This might be more of a GNURadio question, but is it possi=
ble to share a single USRP device (E310 in this case) with two flowgraphs?=
=C2=A0 What I mean is the E310 has a &quot;A&quot; and &quot;B&quot; channe=
l, could you use channel &quot;A&quot; with one flowgraph and &quot;B&quot;=
 with another or does everything have to be implemented in a single flowgra=
ph with the UHD sink/source configured to have two channels?=C2=A0 I&#39;m =
guessing the latter due to how UHD interacts with the hardware.<div><br></d=
iv><div>Thanks!</div></div>

--000000000000daa99a05be5fad63--

--===============0506219673296463533==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0506219673296463533==--
