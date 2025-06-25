Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F5DAE80C3
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jun 2025 13:16:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1ADAF385AF8
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jun 2025 07:16:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750850205; bh=VvdDdmi0W0NEP8fhJPgPBDUO1kQqrL2hR5JhaCkXu/o=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Bf2fUxWDlW1eNVsJ1YPd2QdU11WStPe9rZpGnS7EyBlUgEALJxgzdwHi6zov48uEE
	 C6IUSyQJeKmWJ2rQADOo/yb6nlK4jF2bBc5Nsi5Dbn1EvcFWEqHTnOshRLKpURkrqP
	 EmqGkZqKQ6hA83E1JGVxBgpNeJnPt3ymYpKI4bCS51SZTFfRJkDqOSRwfI5X7ytbA/
	 G1YLuoj0Y+tJ+wXSm67CicIsEdoXWCyZkVupbcYlApTDvRO5Bn9ISVNdGawUCK1DIT
	 sConguoJ9FMFL7gcwtRy7dpCOQt6yFqdsVw7bvyRPfqpXrVVWBSv8DrlqRTl3XDFqI
	 3krPHDHZClJUQ==
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 94F1C38499A
	for <usrp-users@lists.ettus.com>; Wed, 25 Jun 2025 07:15:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Npv0G5np";
	dkim-atps=neutral
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-875dd57d63bso30971039f.0
        for <usrp-users@lists.ettus.com>; Wed, 25 Jun 2025 04:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750850146; x=1751454946; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VQCBcXcVkZUMvqJkwko/JZYV6ZOjo+vM+ezWhjhkXW4=;
        b=Npv0G5npeOlsFUdFm+axkTHeGlf4uw0Vce9XkbQIJ7jyXXyIAf6qPToEpxOWFzxbfF
         eNdO7Z944120scWIdinyFPM+XIs/PBiROHHRJ4fK7rJ12U6xHuvonhfUxl9Kx9GZwF7p
         ywjjI56OEXBt3sW2SjHwgpnpJvvAT5HTbG+568G1HkGRYDvsVynFE7iwEdaYLlbHDv7y
         H2kY8GKnBQ3511ACD4zdwH+p6fdgyTJG3HcuMO4x/KgjVtsDvgR4X+0uKOJ1gwc8rKxq
         wu3Hm5E9a0uhzW7/O0n0kjzSB5AIIUzvqn3T5CdkHJzMcmXrxMhU2SLgCFfpgGvnVKX9
         ePJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750850146; x=1751454946;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VQCBcXcVkZUMvqJkwko/JZYV6ZOjo+vM+ezWhjhkXW4=;
        b=R3l1+Mb5luMuSjlEOw6s/sneIgCDtKdZFsX7cYpwlq6qARJLafz5ahgeRoyuaNuwkB
         e4BZ2a6QsEaU+FaV5KtAO6RaPsfmT+ArH9wW+zTIHThJL+RuMqV9UmFWsmP9zTyN7F6w
         tfaW9SKn5aFjP9Mt9oSqnjXirB1KNynpnXpEmWkn7YPSNEvUjJUoFmXsChsABAoVJYH3
         oiSmWXkGI7S5Le9P6U2dg02qUQ3bGIxihEnkRWJ67q+HZ5caFc3yrNTpZ2oyLstH8pbF
         BRSvQS8JHNOo+uDaw8IhG1TYCPxCuz5JQ98rsNICw7tDSBVz9XxWKPQKzv/HqCMvOCz0
         uGXg==
X-Gm-Message-State: AOJu0YykhuR6sBe3alz1XQuvg/7UP1NvvsztYFrFi2tX7B7NHz+m/prr
	+jXFo+difcgduScV8z2c4x05skErq/h7aJtniGFIyjowCs1YCLyh3MRAfWiQiz2us8q0xIZkF9K
	SWg0UnInRMu8YT+8M4mG7w/5x5C+cjAFIjQ==
X-Gm-Gg: ASbGncs7IfLSXwkYP35QbHdG0ho9M979QDxDJhGeJ4wVwAD4CKnLVKfCrddwU/wVW5e
	Xl4wkG91Bh1dC/sHpkmcLDfM8hHoc+A4FTLQhTBZBcRVFIRqY+ueN5Tnm1zGHskYdDRyJGtDmjz
	uFz0x70FwE7K0fpjh5pjB2Rl9RyC3NNLygDQ1u5wpUwaIg
X-Google-Smtp-Source: AGHT+IEbQfUXRwT1gGZ7TBZpS5HLyOLBXDe+Q6r4Kt7rR7jqDJco48Ds1DlvF5wEBQJdavbVXamPx5bA9K6lMNoWJho=
X-Received: by 2002:a05:6602:6809:b0:85d:ad56:af88 with SMTP id
 ca18e2360f4ac-8765d517663mr593720739f.1.1750850145818; Wed, 25 Jun 2025
 04:15:45 -0700 (PDT)
MIME-Version: 1.0
References: <T0tH8wS7Q7K2ZFo9GsXZdrO0O4tVRr8JhkKG78t7E@lists.ettus.com>
In-Reply-To: <T0tH8wS7Q7K2ZFo9GsXZdrO0O4tVRr8JhkKG78t7E@lists.ettus.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Wed, 25 Jun 2025 14:15:34 +0300
X-Gm-Features: Ac12FXwIZbFQciKmR2JZpSQRVl3AjPoa8KPOOGEj3ug7fEo72KYYq-KWpNbfJms
Message-ID: <CAAxXO2HKPGxw0eVcRx3mRq0gM5g_asZb2nyXR2T5NMhD61A9aw@mail.gmail.com>
To: zhiwen_zhou@seu.edu.cn
Message-ID-Hash: MHLI6TZ5Z3M3AG2U6PY7BEJPAA3ZL4BK
X-Message-ID-Hash: MHLI6TZ5Z3M3AG2U6PY7BEJPAA3ZL4BK
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Fosphor: rfnoc rx streamer :warning: Received fractional vector! Expect signal fagmentation.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MHLI6TZ5Z3M3AG2U6PY7BEJPAA3ZL4BK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9074466265033909313=="

--===============9074466265033909313==
Content-Type: multipart/alternative; boundary="000000000000ff1d1306386390a1"

--000000000000ff1d1306386390a1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Nice! That is what it should be over a 10 Gbe line.
You can raise it with spp, but it will cause fragmentation in a 10 GBe line=
.

So fft NOC block is limited because it is general for all applications.
The fosphor I use, uses it's own OpenCL FFT and cl/gl shared graphics.
It loops to create that "live" spectrum fill, but also to refill its FFT.
FFT is still 1024 complex samples, and it gets filled up each time in the
loop!
Any excess is padded with old input and FFTed again:)
But this is a dedicated FFT not a general block...

BR,
Nikos

On Wed, Jun 25, 2025 at 4:47=E2=80=AFAM <zhiwen_zhou@seu.edu.cn> wrote:

> My MTU is 9000 and uhd_rx_streamer_max_num_samps returns 1996.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000ff1d1306386390a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Nic=
e! That is what it should be over a 10 Gbe line.</div><div class=3D"gmail_d=
efault" style=3D"font-size:small">You can raise it with spp, but it will ca=
use fragmentation in a 10 GBe line.</div><div class=3D"gmail_default" style=
=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-s=
ize:small">So fft NOC block is limited because it is general for all applic=
ations.</div><div class=3D"gmail_default" style=3D"font-size:small">The fos=
phor I use, uses it&#39;s own OpenCL FFT and cl/gl shared graphics.</div><d=
iv class=3D"gmail_default" style=3D"font-size:small">It loops to create tha=
t &quot;live&quot; spectrum fill, but also to refill its FFT.</div><div cla=
ss=3D"gmail_default" style=3D"font-size:small">FFT is still 1024 complex sa=
mples, and it gets filled up each time in the loop!</div><div class=3D"gmai=
l_default" style=3D"font-size:small">Any excess is padded with old input an=
d FFTed again:)</div><div class=3D"gmail_default" style=3D"font-size:small"=
>But this is a dedicated FFT not a general block...</div><div class=3D"gmai=
l_default" style=3D"font-size:small"><br></div><div class=3D"gmail_default"=
 style=3D"font-size:small">BR,</div><div class=3D"gmail_default" style=3D"f=
ont-size:small">Nikos</div></div><br><div class=3D"gmail_quote gmail_quote_=
container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 25, 2025 at 4:=
47=E2=80=AFAM &lt;<a href=3D"mailto:zhiwen_zhou@seu.edu.cn">zhiwen_zhou@seu=
.edu.cn</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><p>My MTU is 9000 and uhd_rx_streamer_max_num_samps=C2=A0returns 199=
6.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000ff1d1306386390a1--

--===============9074466265033909313==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9074466265033909313==--
