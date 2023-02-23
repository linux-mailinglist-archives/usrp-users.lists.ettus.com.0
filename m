Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBD56A0C97
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 16:09:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EC1E3383F73
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 10:09:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677164956; bh=YcWvSxs33j7FTsGq8jzCcRJM9TOwFh1XWP+hVdjPwsc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=SYV/F9h2GkQFeNIajqJnfSikZhE8axXb/EilsTVfV0t2mUFYsEucR9ZK+e7P72MXc
	 PmAhrMTaSNxqQmsKBF2YfhXS0iwoMT9hUPZC1oKyw4DFrkUQFc0/g0P/ewCrhcONXi
	 YEc6/yDfwjwYud4AGB5iNlWolG7ggXxvn1U/KmZKcRGlGLC34m6die8OxV/8laweDL
	 busjRQQyfhpJhiSP9LCP56NgnIqTXtb/9Xftcp1l4M5yw/8dTV65XLlthYNQ/pWX2g
	 Rlqs326SJSRIc+qhzw0gXMGqeQagdT7peZPSEtOyOYTkFxSUL4MFfc5WryGKRUc4AC
	 LAgx5WCB3M1cw==
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by mm2.emwd.com (Postfix) with ESMTPS id B9B7F380E3C
	for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 10:08:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="VltaGG2g";
	dkim-atps=neutral
Received: by mail-ed1-f48.google.com with SMTP id cy6so37731709edb.5
        for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 07:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ogQgyVHVc7VQ/ujcLCU5RqTwad4LkucZQwueMClaKvE=;
        b=VltaGG2gdlIvJkkJIrbCDXaSJDwPax+5KjIh7taCmUJW3uwuSOA7S+bN6aLMmsnRwS
         k/moda6et3c6pzHmdfVaQ3Jv1LZbnJ7qj8M3KqIawJELPep5MRWqe2sQXD9QtYp4x83G
         1pXTA1aDwaFyVF3UTjX0ojEVuuhSSepsvKienClHwpicl44pj8s1ieCPivksNfnb7K2a
         7/0z+f5LVq/3U7LSE9cnz0Gz4o1JXC4qFV+zvLQzFSmpyIPdD1J/CKtT7qWFdgellqR9
         iRrREM1pVAXSBjXGrA5uh+T411mFVZwXP+/QBrzLqXieV7ANO09c8+vdiTsSIMBQCjEQ
         svnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ogQgyVHVc7VQ/ujcLCU5RqTwad4LkucZQwueMClaKvE=;
        b=wivoXhHN5R9fruR1E2Zso1k810YuL8Kzb9IYCHhcSM+b0MRsP3igQLLC8cHBIo8V+0
         KuuCscKb5v3/YgKs4BUfetwcajEdVVB6B7dIaZMaBo0t/6lk1FWskNFV+X+tprURRLsM
         8kNbbVkW6LhVuEP4iJOoFqLDqS6qXXxcG+FYdjfBpiCo4PvTaUfC/ZoKfVVEzfLZbxHu
         NbCGxs4A6U/PSbfWwbqOaiwNAnguBMBB5i5SKPvscNIh0iDBbW9ibYKg+m7gU59cMlTw
         o5d+PPnPbjkRTZehcTbHrLYaq0cZHrp4I3yIJAzyqh+IT93qMsOqlmgLgLTlBIqa60nS
         vvMw==
X-Gm-Message-State: AO0yUKUxai5hRlIqnaCxpuZCOoYdSrXyowScHluGHb6ZyCD+TpCV6gHX
	Rk6IxViOA4U0VgezkOx9MpMZAItFKpiCeMjgHZtwjA==
X-Google-Smtp-Source: AK7set/RjPeaBDAG/fbQC5uSrxoroOs4ebsLUQPm0BBEzmYSzwDCWn/3tgWh0sukidce6vLJ1evBpE9K+hVX+FIKCqY=
X-Received: by 2002:a17:906:8397:b0:8e6:266c:c75e with SMTP id
 p23-20020a170906839700b008e6266cc75emr2902455ejx.14.1677164917379; Thu, 23
 Feb 2023 07:08:37 -0800 (PST)
MIME-Version: 1.0
References: <uha8yb8Y42db0RlmUn44vZgPSebbGEYo14wZncYhQ@lists.ettus.com> <b1735491-697f-e19c-36eb-8452a22e4021@gmail.com>
In-Reply-To: <b1735491-697f-e19c-36eb-8452a22e4021@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 23 Feb 2023 10:08:26 -0500
Message-ID: <CAB__hTTv6gHj5n=wJtw8kGnjJwjxh=t3tN5XZse4zBWt1bQrdw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: BPW6PG2F7DJFBOBP352HGOXBYOVEPT4H
X-Message-ID-Hash: BPW6PG2F7DJFBOBP352HGOXBYOVEPT4H
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wrong Measurement Results
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BPW6PG2F7DJFBOBP352HGOXBYOVEPT4H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8574668793596589415=="

--===============8574668793596589415==
Content-Type: multipart/alternative; boundary="00000000000021c7bd05f55f634b"

--00000000000021c7bd05f55f634b
Content-Type: text/plain; charset="UTF-8"

Is it possible that you are using a CW signal with no offset such that the
CW signal is right on top of the LO leakage?  Perhaps the LO leakage
"interference" is causing problems.  You could try this experiment with an
LO offset.
Rob

--00000000000021c7bd05f55f634b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is it possible that you are using a CW signal with no offs=
et such that the CW signal is right on top of the LO leakage?=C2=A0 Perhaps=
 the LO leakage &quot;interference&quot; is causing problems.=C2=A0 You cou=
ld try this experiment with an LO offset.<div>Rob</div></div>

--00000000000021c7bd05f55f634b--

--===============8574668793596589415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8574668793596589415==--
