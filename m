Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 232C43B7482
	for <lists+usrp-users@lfdr.de>; Tue, 29 Jun 2021 16:39:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 26F69384082
	for <lists+usrp-users@lfdr.de>; Tue, 29 Jun 2021 10:39:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="B/gyPgWI";
	dkim-atps=neutral
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id D59D2383E88
	for <usrp-users@lists.ettus.com>; Tue, 29 Jun 2021 10:39:06 -0400 (EDT)
Received: by mail-qk1-f173.google.com with SMTP id j13so4016987qka.8
        for <usrp-users@lists.ettus.com>; Tue, 29 Jun 2021 07:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=zGU0d6HD7XoKfvaLVmBsGdsHUl9HTIZsXufapXcPcwI=;
        b=B/gyPgWIijqrB46ahqhw3YuPq1brg5x9XZLst1Abu+j5dnMHBQZKdtILX/JughUIaI
         I9mm66XwoE1QmUiCVFD+7IxUmrj4xz1IgybKthGOulkwMNq1ICOpMh54VD5FlJIwGWCP
         8N/64qQpQQZ7W3pJfCNWwwthr+Q3FFrrOSqPMxyDMsienrmMVd/0v8XIHv9g/hZD67Qw
         TyZfEvor53a7asdd6VZ0LXMuORsAQcM0TBwlNNJcianTKD3PRbhobBQQdQfXY2+XDVog
         0wtBueKZ+Rlct/Lsa2mIRcHgAuVDLawPJkFwoxfwAUY3gX1HdSpztQLz7vbl96jLfFTP
         GYbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=zGU0d6HD7XoKfvaLVmBsGdsHUl9HTIZsXufapXcPcwI=;
        b=clrr/CSeyp+MQ2r20UXAikOXJCYpMxJzDOI8+umcnRzgffBAelV1CQ0HkqKd9k89i6
         +kRKctJLbOuayVtsaGn9jIgCl6JMnsmBouQutxmHLM1yEZzPDslApz0pGlGaU9yfhd79
         o7FTXfTMalYcyZdbHczbA78fVflcXY+34hwTBFkQUOZX8gi17xBGU1Q3DYYlgzar5H/M
         21qKmwSdG9bJFwWIsmaQ8iYYmT9EgfbQNIdICZ500tlYVONYupssHSB61nni0Yrwl5MN
         x+hJA8bfpADPCoXr19rXQA/xlY13ROpM6rLDRCFp0kDyX7leSe0kgJ/zdkFTJ1VfjW7L
         PzoQ==
X-Gm-Message-State: AOAM530XReuaN93/XSbWdMHDIA15p7c/Ju97zIdZAipOF1w5K6HipHf4
	dGcfiL3hIy/AarpNLGyQRAfLgVppnDnNag==
X-Google-Smtp-Source: ABdhPJyNIyVjs3oY5x/j4VFhoTIStNdR4i8gi+oBfPZuHJilfyv5i56yvLyscgswT4YwwOBfNrUULg==
X-Received: by 2002:a05:620a:1675:: with SMTP id d21mr30919678qko.390.1624977546209;
        Tue, 29 Jun 2021 07:39:06 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id d136sm3956062qkc.110.2021.06.29.07.39.05
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Jun 2021 07:39:05 -0700 (PDT)
Message-ID: <60DB3088.2030602@gmail.com>
Date: Tue, 29 Jun 2021 10:39:04 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <9gJ8YGQCerSDcqF04mlmG5UurcBIGwYZhKjgHo3HRLg@lists.ettus.com>
In-Reply-To: <9gJ8YGQCerSDcqF04mlmG5UurcBIGwYZhKjgHo3HRLg@lists.ettus.com>
Message-ID-Hash: DLWATPO4AFCL2QKRCGEN5G3Y656NJR4R
X-Message-ID-Hash: DLWATPO4AFCL2QKRCGEN5G3Y656NJR4R
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc radio transmit control
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DLWATPO4AFCL2QKRCGEN5G3Y656NJR4R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"; format="flowed"
Content-Transfer-Encoding: quoted-printable

On 06/29/2021 10:34 AM, rblack@swri.org wrote:
>
> 20 MSamp/sec. So if we, say, gate the signal on/off 10 microsec on/10=20
> microsec off, then we=92d have 200 samples on, 200 samples off.
>
>
> thx rb
>
>
Right so you could do that in software by multiplying the actual signal=20
by a 0/1 pattern that is as many samples as it needs to be. There
  will be *some* residual carrier during the '0' period, which may or=20
may not be a problem.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
