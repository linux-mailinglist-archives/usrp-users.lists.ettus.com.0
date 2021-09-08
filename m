Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D03C25B8E64
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 19:55:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5CBA3383BC0
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 13:55:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663178136; bh=OParpb8+HWf7+ce4FD6Rs/3M4Ocdu7Q4cPyNd1YU7hs=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=jIaR/n7pxqo8pFjOHPNtpL2LPjXzdiAsoBm1iUuY1E6D6mq3x2UQ9ynV+/fJmZU3B
	 NaomlPgcKAaTPUeX8TZr8Dj6BAIeGVHa/tFqRV4ACVVi8HmuusALXkihdtLe2T/9Gi
	 5WEvA0WCX4vJLO/kl2ti70G3yVpArUxUfnOuL9pK3RR8UkvafrVX2gTXm0Bb4KG2ne
	 PMPK/XcWCTegNyfVRVlCEf6AFdYO2lvkoVZnFRsfEsyyTEOpIMVoEtzUZ983qg9u62
	 NTb4MG5kecMJ7qQ3wber5XyUSG+Gt9bPY3Izg2FmJxreTRdOpmSHNcEx06Z0KLrboM
	 FI5tLe4LTBxwA==
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 55E4D3841B2
	for <usrp-users@lists.ettus.com>; Wed,  8 Sep 2021 02:04:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kuFpXLYe";
	dkim-atps=neutral
Received: by mail-lj1-f178.google.com with SMTP id h1so1550080ljl.9
        for <usrp-users@lists.ettus.com>; Tue, 07 Sep 2021 23:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=W5MGRBGoab+5bPDfw8HE1RYW/ZoAtK/9N9xAOp5t/pg=;
        b=kuFpXLYe8HKZFr9Em34DGom1PcqPx8rrMC7TTf7bWjhaMqxzfC80DEOHGoSpbdanvd
         Q2eH8vfk24G1k9vuj/Iqsy/KM5Yesewc9zL2ocThRmmFgajKfxBbbVYjvcqTZ/uvHSqI
         /1Bx+A1y1tJRlpL0wPGgFN0Whoxtml3Tg5uXNuJ8NEyYhpyGfMLdifdkcq093WTpj8OF
         IwsaJ/QJ2DvS2bIXE85lu26lrtGxnPNhYSVc/OaXV+52Dk6Kv4o3chuqKcQDY8uns4J7
         C+PbunTxDkkPTmQ6Cx3JOJkepL6FuwU0/Lk6KbVEBk8rpL9W3gHDsQ6ljLWnciRRH5kk
         IwXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=W5MGRBGoab+5bPDfw8HE1RYW/ZoAtK/9N9xAOp5t/pg=;
        b=VH2NaEwW6LgKNGVFVHemYOx7puCjzYRYvjvVjbpHnrtzyKulwkgKIBW6qzQf/z9qyA
         hfPS47XWQNNBvyqx0yoifA2TJJ8dXG4fHIdDepCCI6ORWdD8x+RRlb7icQ+fp6nB6N/j
         IDY19onXyDeiMy4nzSxKZtIChcfm3q00Y/LoP33VZgoiw207Bil4+Ya4cVy78STsJQkv
         YvqFa4lUC17VJs5s5he1r70BktEYiKwCcD6/Fx+6xKKjz2nVZu7xAFMdthFOE3XKI/t2
         CHTuAvy63f+On16ZrXMbiyJ+ixsxN3X32ASW6uhIo/In4Iu4JRpwQ5xn4x05PCje1PCE
         1xiQ==
X-Gm-Message-State: AOAM532wWXM9j34f7C7jBgxKjEMg8WaQR66canedetxitW0s29VGWa4C
	89es4r3H8OQE4RdG6s7WT4IeAWYRDVOwhTe8fQDApjaEfvQ=
X-Google-Smtp-Source: ABdhPJwIjyb8OAAXR3yGF8Zyvh5X8jUXZa0CpOr1ZyfBR2WnYBBoflwvFnQjDys2He5kLt4MG6AatQkr183teEEe3ps=
X-Received: by 2002:a05:651c:1504:: with SMTP id e4mr1453917ljf.524.1631081046345;
 Tue, 07 Sep 2021 23:04:06 -0700 (PDT)
MIME-Version: 1.0
References: <162880885644.11274.2887363906677329405@mm2.emwd.com>
In-Reply-To: <162880885644.11274.2887363906677329405@mm2.emwd.com>
From: Mostafa Shabani <mostafa.shabani@gmail.com>
Date: Wed, 8 Sep 2021 16:03:54 +1000
Message-ID: <CAMZrk7Qi=SmLpX8B-n3Jo=EbDB5+=Eb4jOWQ+AM9Bn76V5Ayjw@mail.gmail.com>
To: usrp-users@lists.ettus.com
X-MailFrom: mostafa.shabani@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
Message-ID-Hash: IPLDRMAQFI4XITJM2CAO5EIHAABFKR5P
X-Message-ID-Hash: IPLDRMAQFI4XITJM2CAO5EIHAABFKR5P
X-Mailman-Approved-At: Wed, 14 Sep 2022 13:54:45 -0400
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to learn FPGA digital design of the SDR
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IPLDRMAQFI4XITJM2CAO5EIHAABFKR5P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

I hope this is the correct way to start a thread and ask a question.
I have a B200 board and I'd like to learn how to design the DDC, UDC,
decimating and interpolation. what's the best way? Is there an open
source project targeting B200 that includes FPGA logic design?

Kind Regards,
Mostafa
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
