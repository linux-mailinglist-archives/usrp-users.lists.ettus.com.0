Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD565156C4
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 23:27:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 46A29384927
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 17:27:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651267639; bh=u3td+/xyy38ZFYBjf0YA/YFDYhKvCne/yyXMtE7yGi0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Wvi/BXmTu1P4MP2kd9aLVdO5eu7E7OMVwYqXTcMOTSNcS6FaxpUFcRz/OhTty9AqA
	 w1ebOnhvuGM9qY9ppS5mAX8SP7RB+mzgmY+pTz0/p6qCiF5nRTEEOuWlGdIPRbyyDA
	 h3dNKXORN5TzqX0202Agv7FqAmd9MYDGMMPLCpPURkWqTPsGg8DC9BVlF0oqgjq+/N
	 DkdckZ0HbF0q+FA8FtyNcgYPaaBziXD6omASeYBlf8JdqVZmYNiNGRSH5KpqQRrK/h
	 2evB62SbARizNbEQ/Ntm4F42WpVxIck8ueKtJnYBsxXdid2weFeIJQR9RaeMkgn8Bj
	 N4ROJpM85AvCg==
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by mm2.emwd.com (Postfix) with ESMTPS id F14033846BB
	for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 17:26:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cVaGB2da";
	dkim-atps=neutral
Received: by mail-wm1-f47.google.com with SMTP id a14-20020a7bc1ce000000b00393fb52a386so7084843wmj.1
        for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 14:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/KCg7+byJNKDfuauzUsSsh+tTHAWqwmta093zbpnrgg=;
        b=cVaGB2daNCxaiP04QbFdZHNIM2jy7WHvr0YpOFDsDQM7hsW+5N7nreHeQHUms6gleW
         fAkDNe2mRXD0RleoCLVY0fjWPJfDt0bec2i/vxBB+aFhmrn8ioxCo5s/JmEOtNByIgAl
         P7QFwT9fARGAMayujnGQdzoxYlNJRuo73kfDtBiy8Mh5OR4E2+nX7zJfsoW7hn3y7Vif
         yiUGT+GUtAVE4hGqCpk077zGbJQb6iGZ4ssUEKoI9WETcSCF5ZQhu7HN+973tP6Ph3lg
         32FEqiThcm4N2OZpiYvpVlTIEudExVQHsI7kZ6S1WyKjF5wBVPpafEJivLbwB1YZFtcM
         8JvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/KCg7+byJNKDfuauzUsSsh+tTHAWqwmta093zbpnrgg=;
        b=BldS8LY2sA9UNdNGzoYpWlOn5AZtNPH+I6GAAEnbg0kB9CVTvAZMzv0XBC+pgKgt4+
         FnOqOy9FewYt4y+SwDYc/MaFTWv08USM4N9Adki/vuQlhNcCi4iRdPS0n7jEoJACHOQ1
         HCbJT/SXtIt6Pa1S1nPu6U6OuaQGzPoPVfHx/qGZQeCnh8B4YPExmbT14Nei5w0aXttT
         RiiOM8dCYBqp6bYGwTsqk7fr/FDyaaKUMwdzuabvcSWSBxhK1KTpx8c+iGz0Y9L7uy+i
         TQVwKDEq9Clri0EIUY9lv8281shOdjf3caWpy8fEiTNrBiHqlHn8jfKFvfBWNkNGLnFy
         Fe2A==
X-Gm-Message-State: AOAM531HjbkCvWJ5k8TZtiaNzQNQUE/3yVbwCQl6hwHxkjEmEPdVRLfY
	Py6vB1tsl8/P+Ti+s4ouLXXVfJ/vAdlRSjHcK54=
X-Google-Smtp-Source: ABdhPJysneJ7WhsY9A/dC/tvh601TIlFA5gsYDkKeP4tCs3hov+ydi9F/e6IegNU/jEnnppZDIWFcz2TCDMC/axs60Y=
X-Received: by 2002:a1c:f415:0:b0:37f:ab4d:1df2 with SMTP id
 z21-20020a1cf415000000b0037fab4d1df2mr4832933wma.75.1651267578834; Fri, 29
 Apr 2022 14:26:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2HtAS7+TTxRhHz05fKpD98e7G9AMU7_GLuAL7ogysyY2w@mail.gmail.com>
 <f49e1bc4-5667-8795-0bc0-8efc856b3f4a@gmail.com>
In-Reply-To: <f49e1bc4-5667-8795-0bc0-8efc856b3f4a@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sat, 30 Apr 2022 00:26:07 +0300
Message-ID: <CAAxXO2E+5yWXZOGUytwAgmmAeQsaajau8WsxivO9d7EXxiUU4g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: IXBZVYK6K43NM2JJZAMZ3HYVKP4I2OB5
X-Message-ID-Hash: IXBZVYK6K43NM2JJZAMZ3HYVKP4I2OB5
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: uhd_set_thread_priority fails in Ubuntu 20.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IXBZVYK6K43NM2JJZAMZ3HYVKP4I2OB5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thx:)

On Fri, Apr 29, 2022 at 11:32 PM Marcus D. Leech
<patchvonbraun@gmail.com> wrote:
>
> On 2022-04-29 15:16, Nikos Balkanas wrote:
> > Hi,
> >
> > Uhd_set_thread_priority for uhd 3.15 fails in Ubuntu 20.04, with the
> > error (31). System error.
> >
> > Nikos
> > _______________________________________________
> >
> Because your user likely isn't in group "usrp" which is listed in
> /etc/security/limits.conf as being allowed to ask for real-time scheduling.
>
> User your user-management tools to add your user to "usrp" and
> log-out/in again.
>
> This would have been set-up on your old system, but you probably forgot,
> since this requirement has been around for probably a decade.
>
> I often just ignore that warning, since it has only minor consequences
> for performance....
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
