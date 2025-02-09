Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 151E9A2DACF
	for <lists+usrp-users@lfdr.de>; Sun,  9 Feb 2025 05:54:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8C483385EA4
	for <lists+usrp-users@lfdr.de>; Sat,  8 Feb 2025 23:53:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739076806; bh=bFUKlp82uPdIj0XRJpJBKnE2igPsC9cKncUrwzHAyS4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=bo8JzqRPOPDVtZHam9obOluxMFlZSnEBWl+B/v0YmMNQSVS+9ayKMAi7VTbBjanPI
	 wMWKpaU4Hhd9g8Mpo3z/QJ/fkOZrVSZJy+J63TV8MxSO8B1UXmgPYJiJquHlO9LjBk
	 vbrBtiNRB0PefowuFDm8t10fqz5xch553GuHAXvwqTKR5p4u1rXj/JtHHfM3OEo4eq
	 R8XN4QWIGbfx9MdmIgfbRYsavIrBpPUwhoAvC4vkr+/NwT2cjPRm76Q5czAuc7hKYb
	 oSwPw0/AMlgNNo3y2XdDU5GHsw0BRc4vSHo1vF0HG1qpN4ISlkbJ+oFtPtarKjgPVB
	 lwdCFTdHSrDQA==
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by mm2.emwd.com (Postfix) with ESMTPS id EEF19385D92
	for <usrp-users@lists.ettus.com>; Sat,  8 Feb 2025 23:52:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="OzkixdZp";
	dkim-atps=neutral
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e5b16621c28so2590529276.2
        for <usrp-users@lists.ettus.com>; Sat, 08 Feb 2025 20:52:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1739076745; x=1739681545; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0CN2R+9ltDQluLrgkXq0oL3QU+uBaBgGjJkKZ5NPU/s=;
        b=OzkixdZpvW9VVNwnZbaEWnFWTVzRlGSYDyGlLe+sH0YXXGdlG4EUXYuQ/eq8m274rf
         gW8jLBWoiK9fnty4WXqZ7HaBPGGcxSHGizRM9Et3XtzjZWo+HdgcXv06beXvKuCIprqw
         uGC0ZlbFZXhmr+BZvxIfXeVpPVG8KqKmC7F8BwPp/5LUQK8EkQFP70ar3rQf1sZI/5xH
         dczj+rDwUqxJEV6qSrMjLmZ0g2pNPqQiDk/w0vPKB54hs7sRZDNrhCA/QzodTVfidqQD
         X28SLIgMSPBaR8Uw3FHfLhKCywiJscgTA8giqkK+BUmpVfpprPM64OI6s1+KmQBYAixi
         YqWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739076745; x=1739681545;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0CN2R+9ltDQluLrgkXq0oL3QU+uBaBgGjJkKZ5NPU/s=;
        b=RnXN/FdBBaUJgROaHObdyJzudVgoNTT4Q9rQ2wSilU7c+7wt45VW1UiLSkI+P9qw9R
         Pzwewk03wrjifKNQdDvCa/8A5+XikaOixDdudBKBJLGA6hFK8QKv01Qa6mBW1BaUq+hj
         PlgrrWm9fOtJUGn9tkUdlAP+0zYdG4kqWlg42U44NoP9LNBYEqj22c4/qJfc4yqZxc+3
         8AIZ+t4tI4Ch9HhGvNvAiR65edDLFjbCm8Snm5xJi6CtbUlGttWr6DyOTt2mbL5PneXK
         wohOb7bFq8/t+i9AEQV8r1bd/0cLE4+0BodPtKwD5JdC3h6DILOheOKjcpTvHoI3eyaj
         5Vyg==
X-Gm-Message-State: AOJu0YzyeHbjlIBzZSc5FOcRoRXuN/+fD1wyh+hiYdYtqkipfOdlNOuH
	b6AGDZvvQP1NADpm2tsjcL2xYt0xgl10ZbFZKEzs5kPuNLYTf2e3GpA6X7NNqZAn/aH8C86+I6J
	jxkyqKKY88piSvRmAXmSlR8trPHICKk0w+nzQzVbS
X-Gm-Gg: ASbGncu6QAssJWOE/iW2uWU6lcIRlOHS7KNGq11hKhSWJqL3sH3l5aVfqHe/ZrXSIQo
	AX4hNDJ/Epr75wTrwakIZiKuuBrvy2sv6qo51+Q9q1poPfp9QorTQ6zaR8oGPCcFIzE+UHX25
X-Google-Smtp-Source: AGHT+IHPgU/EkO+ojtP+PzY3zjb9KkYwXU4Jsw8xAUs3UHaJ21LSgsN33F5p0X43awgWQe1eTGxHD8kMY271VF7RqK8=
X-Received: by 2002:a05:6902:1702:b0:e38:8263:7990 with SMTP id
 3f1490d57ef6-e5b4629dbdcmr7490817276.48.1739076745210; Sat, 08 Feb 2025
 20:52:25 -0800 (PST)
MIME-Version: 1.0
References: <lGIYOZyz2CQOcVPhVCFBLmBewwlajc0rrTfkBxof8A@lists.ettus.com>
In-Reply-To: <lGIYOZyz2CQOcVPhVCFBLmBewwlajc0rrTfkBxof8A@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Sat, 8 Feb 2025 22:52:09 -0600
X-Gm-Features: AWEUYZmyuNZ7DPtCcLe5_0cUK5ZxsrrAMcK4qdeBoIoqB26mK7_A3626GnmiMyw
Message-ID: <CAFche=iiEjbPh7eDpMQtrMbnLVQXxn7-y-Yu2ZYGtN8zKrJ+gA@mail.gmail.com>
To: dhpanchaai@gmail.com
Message-ID-Hash: GYHMFHG5OAI5XQLJP3CVYF7HPEEBDIVN
X-Message-ID-Hash: GYHMFHG5OAI5XQLJP3CVYF7HPEEBDIVN
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Build custom fpga image for x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GYHMFHG5OAI5XQLJP3CVYF7HPEEBDIVN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7790934612163153566=="

--===============7790934612163153566==
Content-Type: multipart/alternative; boundary="000000000000a2d042062dae5b97"

--000000000000a2d042062dae5b97
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You can find information on how to build FPGA images in the user manual. Be
sure to use the Vivado version and patches indicated for the UHD version
you're using. The current version needs Vivado 2021.1

https://uhd.readthedocs.io/en/latest/md_usrp3_build_instructions.html

X410 natively supports 250 or 245.76 MSPS (200 MHz bandwidth) and 500 or
491.52 MSPS (400 MHz RF bandwidth). If you really want a sample rate in
between, then you'd have to write your own custom logic/code to do it. If
you want to add a custom processing block to do this, then I suggest
looking into RFNoC.

https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0

But maybe you could use 400 MHz bandwidth? It might be overkill, but it
also might be less work.

Wade

On Wed, Feb 5, 2025 at 4:23=E2=80=AFPM <dhpanchaai@gmail.com> wrote:

> Hi,
>
> I would like to build an fpga custom fpga image for x410. I would need to
> be able to TX/RX anywhere between 250 to 300 MHz. The prebuilt UC_200 is
> too low and the CG_400 can=E2=80=99t be adjusted and a bit overkill. Any
> recommendations on how to best do that? Which version of Vivado would I
> need? I currently am using UHD 4.7 and have Vivado 2023.1 installed on my
> machine. I was wondering if its possible to tweak the UC_200 prebuilt ima=
ge
> to do that? Thanks
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a2d042062dae5b97
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You can find information on how to build FPGA images =
in the user manual. Be sure to use the Vivado version and patches indicated=
 for the UHD version you&#39;re using. The current version needs Vivado 202=
1.1</div><div><br></div><div><a href=3D"https://uhd.readthedocs.io/en/lates=
t/md_usrp3_build_instructions.html" target=3D"_blank">https://uhd.readthedo=
cs.io/en/latest/md_usrp3_build_instructions.html</a></div><div><br></div><d=
iv>X410 natively supports 250 or 245.76 MSPS (200 MHz bandwidth) and=20
500 or 491.52 MSPS (400 MHz RF bandwidth). If you really want a sample rate=
 in between, then you&#39;d have to write your own custom logic/code to do =
it. If you want to add a custom processing block to do this, then I suggest=
 looking into RFNoC.</div><div><br></div><div><a href=3D"https://kb.ettus.c=
om/Getting_Started_with_RFNoC_in_UHD_4.0" target=3D"_blank">https://kb.ettu=
s.com/Getting_Started_with_RFNoC_in_UHD_4.0</a></div><div><br></div><div>Bu=
t maybe you could use 400 MHz bandwidth? It might be overkill, but it also =
might be less work.=C2=A0</div><div><br></div><div>Wade</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 5,=
 2025 at 4:23=E2=80=AFPM &lt;<a href=3D"mailto:dhpanchaai@gmail.com" target=
=3D"_blank">dhpanchaai@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><p>Hi,</p><p>I would like to build an fpga=
 custom fpga image for x410. I would need to be able to TX/RX anywhere betw=
een 250 to 300 MHz. The prebuilt UC_200 is too low and the CG_400 can=E2=80=
=99t be adjusted and a bit overkill. Any recommendations on how to best do =
that? Which version of Vivado would I need? I currently am using UHD 4.7 an=
d have Vivado 2023.1 installed on my machine. I was wondering if its possib=
le to tweak the UC_200 prebuilt image to do that? Thanks</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a2d042062dae5b97--

--===============7790934612163153566==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7790934612163153566==--
