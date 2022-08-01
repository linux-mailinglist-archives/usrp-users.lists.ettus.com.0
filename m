Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 844B35872FE
	for <lists+usrp-users@lfdr.de>; Mon,  1 Aug 2022 23:20:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D09FB3812DB
	for <lists+usrp-users@lfdr.de>; Mon,  1 Aug 2022 17:20:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659388846; bh=HIxkjiARvgvEqAHHuuFr6/O5krtgsJcKpLXZTnkahrA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=sVtIYM37YecXmHActOPKaowNftq/2XXYQHob5qzJX2E7c2ClDNOoVhvw9QPHZlHbb
	 Z0ROdU+agZRamEsE/a9wrCmTYIJSaFtdHwTw3gtLbvxAqGDA1v1Y7rdpeV97lqM4TT
	 +W9GmfkkVAW1hjdc0Vs0WIszTIlHivu2KZWeG3ndp8UNqJXOlrt5cGvGjdkjvQS+HH
	 OkFJML9gdVI/nZxzYOq6QYtiQztjN/3FvBUkcDyvW45nGO1WWKCBf7vle1fb2nFESH
	 sDKZAeUsjJzIRgLVoTJ/X4PHQ6gaYn58uDAIS8tiXv7idcqQH6QDPE5WGXxGO2kGWN
	 eAqN2LvuZoGMA==
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 9DCC8380CE3
	for <usrp-users@lists.ettus.com>; Mon,  1 Aug 2022 17:18:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EJVOS5Ov";
	dkim-atps=neutral
Received: by mail-ej1-f52.google.com with SMTP id k26so6906927ejx.5
        for <usrp-users@lists.ettus.com>; Mon, 01 Aug 2022 14:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZtTH76J5TorXRM8VKXGy2sEchMq05EKqG2Kxc9DZzho=;
        b=EJVOS5OvrbXoN07myJ8PPJggB4eJ360+5z5fZI4gqc3sqAt6dhv12BOAkF8ameQXRQ
         ahGtPQ5f0oaF14KkNaRIluFleaioEefi174JPHCyEphQfGgGyZIp+0CvEwqHhlmzOtVx
         HOHfd3xfWXEtfKK7HrvJTx/o1KNupVf/z77auJ6lX88yztIDjq5m8J3nTZDVNNkhljz2
         9QR1uiyb8BOnq7p6JVxGVC/GFQDPI2xofBkuZ/keA4tIIxXW8YMeWe5JKZmd7kL5BFkw
         b+8+bXnjvJFitLI4BsT01tm4Fk37DY0KjJBq/PZ9KF/xw41fNjEFdu2CiMXvaGPGD0r1
         SWMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZtTH76J5TorXRM8VKXGy2sEchMq05EKqG2Kxc9DZzho=;
        b=577T1TbE5nea8U8lim/Quk8o2bFCmxA3CAg7zwLxgGYc2YX2IUpCCXVBqB9EVwfiO6
         4nMFQG9ygKWg32D4h7hpjjSLAOvB/EwfXfozP+0lhT0ZmVpvazwh/RXmE/9RNRzYUchc
         LgubRZamGFdzF0x32ts7fmPMz+Q+g70dayrVShjekw67joguiQOPUrD4lvUGcg91+f+c
         tNVcpQXS92ZD0i1a8VYzoy+9jc2u5/96QcLb4+NWRBWI7fV0NGLpxji55OzhH0lUrLu7
         2md/OQICJ/8tGNbGtgO8fdP8VUcnHjlenNkBEWIloZDSd6cj0Kad0CthgctChIfAJOZv
         Xuaw==
X-Gm-Message-State: AJIora/t5ePlyWPLKHIHl+VZiHWQc/KLaL8ee1+nVX6VGptUSu5AmoWQ
	+9UhXL+GWGTXia8tA8gQw8qa/PDahhIKujsD9ek=
X-Google-Smtp-Source: AGRyM1uwvy2/X/CuLomspSFwQGOg28pWGuWMrgEUgllXs6h22xo/uNVeuTHQwvYyQPhRYPR4PNv9/oUFh2298acSNyE=
X-Received: by 2002:a17:907:7209:b0:72b:924b:60a8 with SMTP id
 dr9-20020a170907720900b0072b924b60a8mr14314589ejc.442.1659388706605; Mon, 01
 Aug 2022 14:18:26 -0700 (PDT)
MIME-Version: 1.0
References: <F0mvFqndGqHXJ7XRUAMuypHftZXQIJg6h1ZGjQNrWM@lists.ettus.com>
In-Reply-To: <F0mvFqndGqHXJ7XRUAMuypHftZXQIJg6h1ZGjQNrWM@lists.ettus.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Tue, 2 Aug 2022 00:18:15 +0300
Message-ID: <CAAxXO2EEmXvAkn76nBD_JMQ=JcrMj-rSPYC86qJTQZtrSEaXdA@mail.gmail.com>
To: moklesur_bme@yahoo.com
Message-ID-Hash: RJLYC5ISAASJRD45NNB3WZ546FHXMCAW
X-Message-ID-Hash: RJLYC5ISAASJRD45NNB3WZ546FHXMCAW
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I am trying to deploy eNb using USRP B2100. But, when I am going to compile and run eNb and I notice error( Error signal 11). I would like to mention that I successfully installed UHD and GNU and dependency driver. I did the work following the manual step by step.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RJLYC5ISAASJRD45NNB3WZ546FHXMCAW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

1) Type:
-> sudo find / -name "libuhd.so"

This will find if you have multiple uhd installations. Uninstall the
extra ones you may have.

2) If in linux, run your application through valgrind to locate
corrupted memory.

HTH
Nikos

On Mon, Aug 1, 2022 at 7:53 PM Md Moklesur Rahman via USRP-users
<usrp-users@lists.ettus.com> wrote:
>
> what is the solution of it?
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
