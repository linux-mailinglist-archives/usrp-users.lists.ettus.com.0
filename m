Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F71235E450
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 18:48:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 633A73843B9
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 12:48:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cO67C7Dw";
	dkim-atps=neutral
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	by mm2.emwd.com (Postfix) with ESMTPS id DD54D383F38
	for <usrp-users@lists.ettus.com>; Tue, 13 Apr 2021 12:47:02 -0400 (EDT)
Received: by mail-lj1-f173.google.com with SMTP id u4so20116682ljo.6
        for <usrp-users@lists.ettus.com>; Tue, 13 Apr 2021 09:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=E3za5BvBE+Sk7nxqDGl/41HRYc38VYOzc8fatAMXa5c=;
        b=cO67C7DwLGhmYGt8FfR6mL/BDTOtDEEsifFunieYq+CUJpd2xyr+39ndODVpDFIKoB
         r80a7+oH5DpqOB+Z2C6oJxV+VONhWasNKa/0tnlvul5ufQ/vsy+ozFD6mEX6WP+g0qpY
         U/Sh2awSxjOdU40c3++hDw5U4biHTqsjlek+lh4k9F2VcUek1RPWkL00qNuJX1Zj9RlA
         W1SWuDrJT4R1nTqlBjrV55XEaoGv5rquroOd2LptCU2+1YwLSt3N+bzvYbUo8rEjw2Lw
         YUovqb/TWe3DwEgwcTbJCeZMwhjk/u+qhewcek4R/HBcNX6iI0ixSCis/cJUWgqnAH6q
         MduA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=E3za5BvBE+Sk7nxqDGl/41HRYc38VYOzc8fatAMXa5c=;
        b=rjGLJchnxWYI2KDluxCASpAQUTjFZK9fFPmvkNfOkTzv4cssHtqQWf+fvURaBxPu2d
         hknHoG/JK/469ThSUJ76GQdo+3q9qSQHvdUZKNsKXSQF9Q8TY33ch8HlxUqgKGM05Lt0
         e5riTDh77JwlJphwOJh63EKlSQg3zox0TwP5ycsi1H/Uyfnc+NfyEUbYBddUv3CGvhbF
         zBDTEmYJiBy01qJio6dHvXS7xLmcU6rL8s1UUF1lOfNEm1xm/69Cl3s0rZxMJMNsxovH
         Z7Pk7PrRdNKC6Hq5LQWRTJmjEVyql9Q9XokdHNH1gEOFmtjOyvh4su0mK172UNjRbxQG
         SuIQ==
X-Gm-Message-State: AOAM531XgQfIOccBe95TVQVHCWf79AGbD0iep6lgSaidBjs4Hnu/bf5c
	OHW8GpxKvmqcFewuTkgnSPHt/7f8xF3/CVS7+tR07gNdJOwD0g==
X-Google-Smtp-Source: ABdhPJyTl8y9nlspXry5NxfEb7Tmv3SKsi76VdIWb1SyXs7Rv3WzkqPkzVxzJcdwhPTd5/+A0HgduO7uTSqkiHD+7l0=
X-Received: by 2002:a2e:8885:: with SMTP id k5mr18876430lji.27.1618332421264;
 Tue, 13 Apr 2021 09:47:01 -0700 (PDT)
MIME-Version: 1.0
From: isaac mario tupac davila <isacctd92@gmail.com>
Date: Tue, 13 Apr 2021 11:46:49 -0500
Message-ID: <CAN+Y6vApiiOBML47F3ML9FPBXhQT1jO6JtOwqdZzEswf0rxgdw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: Z5TREY6DJBZVLDYNWTLP2FZSJKMPYFWF
X-Message-ID-Hash: Z5TREY6DJBZVLDYNWTLP2FZSJKMPYFWF
X-MailFrom: isacctd92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Using of tune_request() - python UHD API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z5TREY6DJBZVLDYNWTLP2FZSJKMPYFWF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5124013219036613207=="

--===============5124013219036613207==
Content-Type: multipart/alternative; boundary="0000000000001917ff05bfdd61be"

--0000000000001917ff05bfdd61be
Content-Type: text/plain; charset="UTF-8"

Hello everyone

Mi name is Isaac. I'd like to ask a question about the use of the method
tune_request(). I am thinking to tune my reception frequencies using the
method tune_request() and the time_spec() method with values of
microseconds. My question is: Is it possible that a USRP N210 could tune in
the level of microseconds? Would I lose any acquired sample packet between
tunes?

I will appreciate any help.

Thank you.
Regards.
Isaac Tupac.

--0000000000001917ff05bfdd61be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello everyone<br></div><div><br></div><div>Mi name i=
s Isaac. I&#39;d like to ask a question about the use of the method tune_re=
quest(). I am thinking to tune my reception frequencies using the method tu=
ne_request() and the time_spec() method  with values of microseconds. My qu=
estion is: Is it possible that a USRP N210 could tune in the level of micro=
seconds? Would I lose any acquired sample packet between tunes?</div><div><=
br></div><div>I will appreciate any help.</div><div><br></div><div>Thank yo=
u.</div><div>Regards.</div><div>Isaac Tupac.</div><div><br></div></div>

--0000000000001917ff05bfdd61be--

--===============5124013219036613207==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5124013219036613207==--
