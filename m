Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2539A3E4A11
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 18:33:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 63A76384C50
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 12:33:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="l80sVVgg";
	dkim-atps=neutral
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	by mm2.emwd.com (Postfix) with ESMTPS id B5B74384BA6
	for <usrp-users@lists.ettus.com>; Mon,  9 Aug 2021 12:32:57 -0400 (EDT)
Received: by mail-ot1-f54.google.com with SMTP id h63-20020a9d14450000b02904ce97efee36so18654873oth.7
        for <usrp-users@lists.ettus.com>; Mon, 09 Aug 2021 09:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=GQnoO+Ys/R5yGbWAOTCmG7YBUUO+5cEbbitZh+BE6WY=;
        b=l80sVVggDVa+0XwZtoh5hy1ic16IoeQ0LSnu/f6iZR5GdYu8SVHXkRXM+kU7Lk0mSW
         4dMn17G+yn9InyxGcq/YYLtt/YZMEV6Ez1586up4AN5eLS2+Qgcz6ejRzdNCMKu2L7D1
         R+fc6l4eh7EneNXPHF2Az6ouWhj+/FSw13qTfG1RiAyKjGyCgoM7wLlRLljKLGhGuIyD
         CK4noL5jQCVM5jzZey4IvJ0mJnpH70eUFjlC6otJVOEMDkrrkNSmfWWtMBbjD9HtgmCO
         B5thdRoc4ymLSHyebESRsHWJJ8V07vIOnSe4G/ObNhyXjeT9YHHk2Wrje12J15U056/Q
         pTrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=GQnoO+Ys/R5yGbWAOTCmG7YBUUO+5cEbbitZh+BE6WY=;
        b=rqfQSGIQ+U3lhvHXD6a4MJBqGprra3AzzJ+g+IB+alM59WHiFYviRCYc+zjnSjGKAe
         724m6F/Sa5e9DjkAlxJKwbr4r3QBt/c1yHm2JxKxU8iiHMjGvm8c/mm8aLdiuE+jXQPO
         VqM/BYOPsOJl+7q/AB2uTDcHC4dgyNncPdV1dmxojA2TrpVatBhHfw3LPLbMdhFRdJEI
         b91EKtDEGxWtHn6xos5ZGJthfe+ZyNkJS5TlBqP5cvKa3nfKPRCxoQZ2D++a6lGI7dMt
         WQAye/NjzgXkqU7ccMS9oGuMd+iiDdXBB0ckkfceVIFsOQY8iRE693mdlvuQYwnMcrwc
         zsYQ==
X-Gm-Message-State: AOAM531f3xifa8feQeSz8mDH7gROTaYqfmD8BGwnqx5s9stxfANv9thA
	ijaKx1CKUz7LixuQiON1EEy0fR6j2kwNKLI0VacRBLI4VqvcRQ==
X-Google-Smtp-Source: ABdhPJx9wL20qlMQtIRPmz8Ks17FlxJwZ05ZQOfIc1nHgH/f1QK+gBrzzj2Nx9yi9NTVmtIAgjHuhIte2YwYodQt8Qc=
X-Received: by 2002:a9d:6945:: with SMTP id p5mr12770218oto.301.1628526776741;
 Mon, 09 Aug 2021 09:32:56 -0700 (PDT)
MIME-Version: 1.0
From: Ashutosh Singh <ashutoshsingh7589@gmail.com>
Date: Mon, 9 Aug 2021 18:32:46 +0200
Message-ID: <CAO38sJ5Bc2RS-RDVZ2YrWbL8GUg3cGRXAh3AmEu9nVBBuTFkug@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: MITYVHKQIEQUGC43AVQDIKHV4FPY6QRC
X-Message-ID-Hash: MITYVHKQIEQUGC43AVQDIKHV4FPY6QRC
X-MailFrom: ashutoshsingh7589@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Unsubscribe me from the list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MITYVHKQIEQUGC43AVQDIKHV4FPY6QRC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6289728472016409152=="

--===============6289728472016409152==
Content-Type: multipart/alternative; boundary="00000000000008f4c105c922f0ad"

--00000000000008f4c105c922f0ad
Content-Type: text/plain; charset="UTF-8"

Please unsubscribe me from your mailing list!!

--00000000000008f4c105c922f0ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Please unsubscribe me=C2=A0from your mailing list!!</div>

--00000000000008f4c105c922f0ad--

--===============6289728472016409152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6289728472016409152==--
