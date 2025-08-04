Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED07FB1A867
	for <lists+usrp-users@lfdr.de>; Mon,  4 Aug 2025 19:11:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E3072386234
	for <lists+usrp-users@lfdr.de>; Mon,  4 Aug 2025 13:11:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754327497; bh=d8fL/l6661VP+SHmnQ9+sm+ic5ItgRaI0h7XX4M0kgc=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=HG724aoWjjPLksW6JHxPTfkj8WMvCxs7C53YlPGd5AL8xDR1aKD1gjK1A0AxUdytT
	 aou+3ArpRqHGZI8aIoI8LaLyEKImJZI4I2Nnp8ta7IVGFzin+CPGYwzMLksYoi/mk7
	 29mew0QUej3l3kDY4USwvzywFyBjJQUjk+S4iEk1kN/rDiQ866GHNOqhoYhi7wgVVY
	 RZIOu5yRjGEV2ozDcKVrLNBn1DhkwD4u2PKM7BV6eioL7B0OplNtlLA4gX+AVWXTBJ
	 zuZ/WwYdCNo4slI/QBb+Ln+NfmnMBRK5ZaFp73j5CRNoRS6VBFop8Rvuhwzhodc3v5
	 vZ9SeSpNH3M5Q==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id DF5A6385B23
	for <usrp-users@lists.ettus.com>; Mon,  4 Aug 2025 13:11:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="MHEs+rO2";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-6157c81ff9eso6775075a12.3
        for <usrp-users@lists.ettus.com>; Mon, 04 Aug 2025 10:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1754327483; x=1754932283; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+VhMbRohZvAVTFTX4L0kk7/YKR4gBpfdNkqd3CJBfbc=;
        b=MHEs+rO2zpxeVpuqRgv/22SmwR7N0bR+NgGroOLJ3xuqmgJi2V1VOp/Jt9BSuSHrY6
         9xf/6MdfZoBR56xrgBbPpKRkGgaGHPkb0jydZAr70RQJn8TJb8dRzCSebbhpgXn9KRPp
         9mMZAPdIlfw1g/TUdzsrbBD92U5EmsJvlaI6CKV6ODm8wTYz2iRYZ/ydGj/L8wbZh5On
         TGRrEH7yGJWc6oOfU5Hzrm6D1RhJJwpVhPGcketelvW9FI2FSekfLq48ur6oQ3uCHYQU
         lPM3Vdno8utwbNjH6i8cuwmHX6BUQrGYg1Jnx4Z1BpA9zdoDCldWa82h34bX7SCyj1Dn
         zNVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754327483; x=1754932283;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+VhMbRohZvAVTFTX4L0kk7/YKR4gBpfdNkqd3CJBfbc=;
        b=eiDp/XiUrlt9RhJC7ttvgGCkMxu8ifHORKohd3BtdywJBzx6Ke8M5LdsU+YHLujfvX
         myyWTRZuE8yQ7qOzIZ90hZ/fmoUNHvWRjOUprIE2tefqsq4g0DG1GMnkgELMm0JEBnxa
         W0pQD6aaxAwSqxdTynKre2tZqMbeygHmuutdN4NFbXXCpRmiVrkVtxdWMCYfPswIuoAY
         Mn6qjsai2YCF23aWPT/xqTCuRYBy/ATZ+qlryrpXLt2um1hKn5rTMbp6pIEvd25el4Dm
         8/6+dB0uuNq6sXIrimJXccsROcLe0MZa2uBlNL7s5bPn8zNOCzIXsnGw4/Lg6YKuYhm+
         GFEA==
X-Gm-Message-State: AOJu0Ywvju33/j8JuuUgqdzG1ak2oeho8wbVojFpjOLEhTdJNLa/e4p3
	4CvlCnYCGGZhPfzeLO9jdgJ2pIIzCSbXi6DjMir9H776+48A+Xgxrnl7lup2Gk1kbBg7H8H13E8
	5lceXWfNMwv8YZiVvUcLC5N9q6/2+OKdywJ33GRE4P86z+q9w+BM=
X-Gm-Gg: ASbGnctUakT6Nt87Lq3kZvf0amFl1vC676GNgjx5T+bSuwuGq0IYJcG1qUGJpSjWPTZ
	NurinFGAERFCXzoptSPc9RWKwlY0Q5Jr1pvEXEygVnIEV9pzj1l9e9t/KnbjLNZm/26jHcLxfvb
	1X0rCYz8AZnXEJUWhO71l07YMiKc05IhF+LcW56nKodoGtEXjq5+HpaTof/ZGVy+Q2wu9WWhqJU
	aCVYw==
X-Google-Smtp-Source: AGHT+IH4FC355hEMNrdCoqq0ORSE5b7LXQ1t3vNssoxodJAjqgfpZXNYB0bkCYrZvnN7+4PMcDjwdUHh8klXCfaXIfY=
X-Received: by 2002:a05:6402:3553:b0:615:78c6:7b18 with SMTP id
 4fb4d7f45d1cf-615e716d69fmr7658194a12.23.1754327482673; Mon, 04 Aug 2025
 10:11:22 -0700 (PDT)
MIME-Version: 1.0
References: <WH61oPt2oe8Oodkd0Yex04qNxewfZGKS6qS9E5hXBM@lists.ettus.com>
In-Reply-To: <WH61oPt2oe8Oodkd0Yex04qNxewfZGKS6qS9E5hXBM@lists.ettus.com>
Date: Mon, 4 Aug 2025 13:11:13 -0400
X-Gm-Features: Ac12FXyVUjtjKnVWUO5lRT8Q09UxR8whjGNRgwrfnuEjVr-nkp6WfRK-kJP0W5A
Message-ID: <CAB__hTTg+V11HrAx4=zHe+0QhxnsS3H_=P6ZJbjiMH7CFuww1A@mail.gmail.com>
To: gechb21@gmail.com
Message-ID-Hash: 7KTXVZXFFQDHMHNA6LXPARHVG44EPAQ6
X-Message-ID-Hash: 7KTXVZXFFQDHMHNA6LXPARHVG44EPAQ6
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Re=3A_Subject=3A_Inquiry_Regarding_Maximum_FPGA_Buffer_Capacity_for_Transmission_on_USRP_X310_=C2=A0?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7KTXVZXFFQDHMHNA6LXPARHVG44EPAQ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1552655992817156059=="

--===============1552655992817156059==
Content-Type: multipart/alternative; boundary="0000000000006cc89c063b8d3213"

--0000000000006cc89c063b8d3213
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A couple of questions: is this for single channel or both channels?  what
is your sample rate?  which version of UHD?  Do you happen to know if the
replay block is inline with your transmit path (used as a large FIFO
buffer)?

Part of the motivation for these questions is that the DRAM on the X310
(1GB total) can be used as a large FIFO (using the replay block).  But, the
DRAM memory bandwidth cannot support 2 channel operation at 200 MS/s.  So,
if you are trying to run 2 channels at 200 MS/s, the DRAM cannot be used.
Otherwise, it can.
Rob

On Mon, Aug 4, 2025 at 11:10=E2=80=AFAM <gechb21@gmail.com> wrote:

> Hello,
>
> I am currently working with USRP X310 devices equipped with UBX-160
> daughterboards for both transmission and reception of data streams. To
> ensure continuous transmission without encountering memory underflow
> issues, I would like to know the maximum buffer memory size that the FPGA
> on the X310 can support for handling transmit data.
>
> Could you please provide guidance or recommendations on this?
>
> Thank you,
>
> Getaneh Berie
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006cc89c063b8d3213
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>A couple of questions: is this for single channel or =
both channels?=C2=A0 what is your sample rate?=C2=A0 which version of UHD?=
=C2=A0 Do you happen to know if the replay block is inline with your transm=
it path (used as a large FIFO buffer)?</div><div><br></div><div>Part of the=
 motivation for these questions is that the DRAM on the X310 (1GB total) ca=
n be used as a large FIFO (using the replay block).=C2=A0 But, the DRAM mem=
ory bandwidth cannot support 2 channel operation at 200 MS/s.=C2=A0 So, if =
you are trying to run 2 channels at 200 MS/s, the DRAM cannot be used. Othe=
rwise, it can.</div><div>Rob</div><br><div class=3D"gmail_quote gmail_quote=
_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 4, 2025 at 11=
:10=E2=80=AFAM &lt;<a href=3D"mailto:gechb21@gmail.com">gechb21@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p=
re><code>Hello, </code></pre><p>I am currently working with USRP X310 devic=
es equipped with UBX-160 daughterboards for both transmission and reception=
 of data streams. To ensure continuous transmission without encountering me=
mory underflow issues, I would like to know the maximum buffer memory size =
that the FPGA on the X310 can support for handling transmit data.</p><p>Cou=
ld you please provide guidance or recommendations on this?</p><p>Thank you,=
</p><p>Getaneh Berie</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000006cc89c063b8d3213--

--===============1552655992817156059==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1552655992817156059==--
