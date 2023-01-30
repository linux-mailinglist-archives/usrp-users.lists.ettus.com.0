Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF17E6813CC
	for <lists+usrp-users@lfdr.de>; Mon, 30 Jan 2023 15:52:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DAC9F3817DC
	for <lists+usrp-users@lfdr.de>; Mon, 30 Jan 2023 09:52:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675090347; bh=P4YieUwx6oNpLbfSpXO+/pzDJhCPvWtyDgCyTk+MNo0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=W6402BTQwdgMG01DxSWiwzsniJFHBFJtIlKUJrhidvK8enZUylh34s8Bf1CvyE+VB
	 QSv5XYLpeGaahoSf04Y8wVlJ/qEzuLjpvWtyi8KubwRLp9vcioFXAOsm9Dsi1PP/kF
	 ElqOmbqTCZjtUdza9KpkODIoREKuMBedVjwAbaIfiN83e2SMrUH0HQ8ulk1nsp2lHB
	 XnjvTpRTnxAP3jkXJZcKrKFWhKYJCxz4dv+UbBYkfLO/3gXkNX9BsAm+adJzvRAjdc
	 A3BWAjKnYEhghHfMK/2E+xKUwvIKzMqDt17TYJzfx3tCbLnNPpK/mfj0f68QMF+sND
	 EfRhorLc6AxFg==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id C7E5B3810D5
	for <usrp-users@lists.ettus.com>; Mon, 30 Jan 2023 09:52:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="a2kr2Ion";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id m2so31978549ejb.8
        for <usrp-users@lists.ettus.com>; Mon, 30 Jan 2023 06:52:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lJFmN80YONf0m7aawC7bbNI15ZLnksOyfod5Ki10QwM=;
        b=a2kr2Ion7jIMYW2T7fi1QEZZ0GhyfrQrORLKofADOrJ+DzbEyqTNu1xfRv5rHw6j4r
         5jYOio+sktgaGeeFyAqM9CS26j8rGj/lRVMUogvyV1rQpA0EonmwVmqa3qyNAjV1Fzdc
         pGahhIAjPloYQNWWIxtix5ONL6DD2E1eZdHfrblAVXOlmmupqw7myK1wTnUKBfsJjlii
         uG0HSUcFJdKmGSjRK8KI96ycM15UFKZkK+V/G25cNyUMfo/a4Ky0mMr8sYxou0Gakcvb
         7yqc1wX1cn7/ILaiwJDluj2lqdveoqO7sNOW9gzh0QAuB5RzFVMeXlDRKO/El8ko7vbL
         641g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lJFmN80YONf0m7aawC7bbNI15ZLnksOyfod5Ki10QwM=;
        b=z4YqHBHJKWAhVyrLOMnuFsA1xmJFlj8/mkXaj8HEfkpiJxSvLgpSVPmdKIiE/3kAqz
         dKWCLshCvR3Dxsy/zOFyt20qUTRqft7QBa9yPeLL1ZDDA3vToKyzPHYYr/ww6g5UlD+C
         WkCitjmsSTe4k735yzx4jXSgy27Ij3jj9dcU7NP2/xXrFhuud2g+yTRbUGld0TeWz+lQ
         snCl/o7Azdp7o2wkQmFgz7arHHKAjUDiASV1TsLZ+3V97qDGRi+wD8qHsD9ttt1bL8Uh
         UCV4Ntnie+M/VTwT0NTgno2+RmG6GdB081Y+XuG1BvoY7phOP02JhfU+nHNCcOwkrVQx
         HnOw==
X-Gm-Message-State: AO0yUKVQ3dDqo5/j09cGjB182FreQuD9l82HGIMbOZlW7F0O+KJ0+rQ0
	QI3BBSP3GH3T9d2MAont/AVj81j0xLPQMfYL+JeiFw==
X-Google-Smtp-Source: AK7set/hMj84gMqwFDlS1oqF6pi3P+XxWK2irUG14yR9FsrmfYAU9eFdWnN0B3SO3dziHVRAlWfi8Y7X3qnNo109juM=
X-Received: by 2002:a17:906:5f8f:b0:881:93d1:cb8f with SMTP id
 a15-20020a1709065f8f00b0088193d1cb8fmr1984080eju.300.1675090339279; Mon, 30
 Jan 2023 06:52:19 -0800 (PST)
MIME-Version: 1.0
References: <RiTRGkDVwBQHnZ3CI92ZdUg91OIex1fSP9eD3aBQ@lists.ettus.com> <660259ac-e194-0522-7ff1-8b8835b08eb9@gmail.com>
In-Reply-To: <660259ac-e194-0522-7ff1-8b8835b08eb9@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 30 Jan 2023 09:52:10 -0500
Message-ID: <CAB__hTTXJs9kwGNB6nw8PtFAG8xXJiAnmFvth1e2zio0zL1cuQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: KURGK7LAL3ODS5UKXLYHTCBGIZWCJLSD
X-Message-ID-Hash: KURGK7LAL3ODS5UKXLYHTCBGIZWCJLSD
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Routing n321 TrigIn/PPS
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KURGK7LAL3ODS5UKXLYHTCBGIZWCJLSD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Jan 29, 2023 at 12:09 AM Marcus D. Leech
<patchvonbraun@gmail.com> wrote:
>
> On 28/01/2023 20:00, jmaloyan@umass.edu wrote:
> >
> > Hello,
> >
> > I am trying to develop an RFNoC application that starts collecting
> > samples when a trigger rises. However, I am unsure how to route the
> > TrigIn/PPS under the RFNoC utility. For example, I found the radio
> > RFNoC is used to interface with the TX/RX.
> >
> >
> > Thanks,
> >
> > Joe
> >
> >
> The PPS input isn't designed as a general-purpose trigger for sampling,
> per se, but rather as a way of synchronizing of the
>    T.O.D. (Time-Of-Day) clocks across multiple USRP units.    The
> "set_time_next_pps()" and "set_time_unknown_pps()" methods
>    in the UHD API implement this.    The basic idea is that each of the
> USRP units receives one of these "set_time_next_pps()" calls,
>    when the the next 1PPS pulse arrives at the unit, the time-of-day
> clock will be reset to whatever is specified.  This provides
>    assurance that all the USRP units will agree on what time it is, so
> that timestamping (and all the synchronized and
>    phase-coherent good that proceeds from that) can work.
>
> Using it as a general-purpose sample trigger has been a fairly common
> "thing" over the years, and it is possible, but with
>    some FPGA modifications.   Some folks have also used one of the GPIO
> inputs for this, rather than the 1 PPS input.  Again,
>    with some FPGA modifications.
>
> A general introduction to RFNoC is here:
>
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0
>

Joe,
As Marcus indicated, it is possible to use GPIO for triggering. If you
have flexibility in your overall system to use the USRP as a "trigger
output" rather than "trigger input", you do not require FPGA
modifications. You can configure the USRP to output a GPIO trigger at
the same time as your USRP starts streaming (or with an offset). This
is not trivial but it is possible with existing API commands.
Rob
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
