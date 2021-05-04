Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CD0373289
	for <lists+usrp-users@lfdr.de>; Wed,  5 May 2021 00:43:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CAD903849F1
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 18:43:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ATafZM0I";
	dkim-atps=neutral
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	by mm2.emwd.com (Postfix) with ESMTPS id E7901384488
	for <usrp-users@lists.ettus.com>; Tue,  4 May 2021 18:42:51 -0400 (EDT)
Received: by mail-ot1-f45.google.com with SMTP id f75-20020a9d03d10000b0290280def9ab76so27473otf.12
        for <usrp-users@lists.ettus.com>; Tue, 04 May 2021 15:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pkUTq0MNV7poRlpjbE5fASkYjnsRS2aJaN0YWV1TaIA=;
        b=ATafZM0I6cwM/aFnFF1xWOuHEsftLK3zKJppaMXqKIo8/eL7i2NUN54sZ1X32yI8+i
         0M0DkGeP5McOgulfcKzYA0+pACtsnHakehsIfzEvwZu9oz4qJy98UK3ATeIn6oJ2wEBB
         xMy3CguRPbJAbWVDHZMyII1P45my/xyIg1rcxRu2baQqpz1TY8eI5o/VhGtce2mEsDC5
         OQ7X0RCnSeBdLkOCA4WWd/v0WTrVCC/T0nrPdXefG+ewWCX5CHJs7v6yLyzMKp+1QyF9
         Xnp9uFsPmwQbqSDat4p4RAZxqGG9S3Mh6jYbxYRtc8HFuafIWgTJ2H0x0l90ZnfYnMEI
         ONGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pkUTq0MNV7poRlpjbE5fASkYjnsRS2aJaN0YWV1TaIA=;
        b=i4yvIl4bkUTz6BFrghB2lRaYo22TPlT8zhr8NWL0Dookukv/0NqsJvAR7s+iAND4E0
         WXxGtIdXnqiAUtT+CwvIpStHOUCuR11fXG3RxO2c9XDRXNn/I0xPP+a2eNMmYvArLcEM
         VcdxD44BlHOrQpPwgtZdC2MfYNhivDT1XkpZ/rPBrBdAB0cHMCL5ATHEQls5eMp/hlMT
         v0n+xAoyFSaUXMTAs/+phPulMiCYYvY9Ak34g11ZnQdi1p2a/FACMwYWKdPLwCH8UIEs
         PuymlwV2TnYVIpsWmEz+n/v7wpermPvGxfkdGnRWFfqv+1F7UPkKKhS8+pfhTceCm+5a
         Tk+Q==
X-Gm-Message-State: AOAM532uovPn/Zi2DvxV8kEuDDygS+fRYhEhZl14PLu2rViiduKrBUdx
	mLkSHSxr3kOotdsNaa9Px/FZuKZYQ1Vn1zuLVco7Gw==
X-Google-Smtp-Source: ABdhPJwQanr6WK9ZUz5iiioodAR905rBlfWbRiaB6jPeUd9rN2v1A/qEzQ/HyapUVOdWiC14VkvA/SQVokC2iB1h8mA=
X-Received: by 2002:a05:6830:210a:: with SMTP id i10mr20827259otc.302.1620168170894;
 Tue, 04 May 2021 15:42:50 -0700 (PDT)
MIME-Version: 1.0
References: <jQ6mREj3qOFnC5tfAfgHPqiGcIe34JDLUQyocIA3I@lists.ettus.com>
In-Reply-To: <jQ6mREj3qOFnC5tfAfgHPqiGcIe34JDLUQyocIA3I@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 4 May 2021 18:42:40 -0400
Message-ID: <CAB__hTRGaXQj9JqCaEAXSQXkvpWVSB1HDZxHdjgE+vNpU2Kz0Q@mail.gmail.com>
To: jcasallas2019@gmail.com
Message-ID-Hash: N4SUHWNN7MQZKKFMPT5OW4VBGHVMMWOI
X-Message-ID-Hash: N4SUHWNN7MQZKKFMPT5OW4VBGHVMMWOI
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC FFT size > 1024
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N4SUHWNN7MQZKKFMPT5OW4VBGHVMMWOI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If you write your own RFNoC block using axi_rate_change, you can go as
large as you want.  I don't know what the FPGA can "fit". The Xilinx
FFT IP core allows you to trade-off throughput for resources. So, if
you don't need full throughput, you can choose either radix-2 or
radix-4 which will reduce resource usage.

Rob

On Tue, May 4, 2021 at 5:11 PM <jcasallas2019@gmail.com> wrote:
>
> In this case, what would be the max fft length we can use? the Xilinx FFT can handle up to 2**16 and the localparam in the rfnoc fft block is 2**11.
>
> Thank you.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
