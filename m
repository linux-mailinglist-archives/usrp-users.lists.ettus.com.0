Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0E695E03D
	for <lists+usrp-users@lfdr.de>; Sun, 25 Aug 2024 00:17:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 63A723854CB
	for <lists+usrp-users@lfdr.de>; Sat, 24 Aug 2024 18:17:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724537878; bh=TlBJFW/bf+0O/jBO7btABNjJry6/PoGZlQ7SgnmHE7o=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=byo9+B4PKi0AXFGrShVHToAKiGXr9y8/2D8EYBsY8UZjQY5uu63xosbOSLPlc6tYV
	 HCEGozjU+Inis1xB4KDmemblmXVIp3yRsiq7ldq5EV0d79zzmNZ4GeYai6RyJxg/1D
	 G1MaBQVDxxdcA7k0q7D2XqTAXfFLbFIeiKKETZ7aFY64VjL64oRkkC+h7GdkMSJUQw
	 IlsGSgndkmSz7CB55S0Z0KTJvzVT9Uw52z7TTpbnY1MHdi+aiC0NZr9+wD7mdgM8H8
	 9BU1YYNxq8o6FAfQeAt+ZagsoZlltkt8kpsA3WOWbW2dx0GIWH/K5HSZr9Xy9VtKb3
	 o/XGrg8wjcz4Q==
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com [209.85.167.67])
	by mm2.emwd.com (Postfix) with ESMTPS id A6AD9385229
	for <usrp-users@lists.ettus.com>; Sat, 24 Aug 2024 18:17:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ourowndomain-com.20230601.gappssmtp.com header.i=@ourowndomain-com.20230601.gappssmtp.com header.b="FRDNEMES";
	dkim-atps=neutral
Received: by mail-lf1-f67.google.com with SMTP id 2adb3069b0e04-5334a8708a9so493532e87.1
        for <usrp-users@lists.ettus.com>; Sat, 24 Aug 2024 15:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ourowndomain-com.20230601.gappssmtp.com; s=20230601; t=1724537837; x=1725142637; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FAPTgJc5IqlGGe46aR3Z7zg85g/FXstefH4Y7QnmtCs=;
        b=FRDNEMES6zTP9ntuMruRG9/l9EEkdtrNKGM08ghd6tJ045OXK8XgXXybGO3vJFmiiF
         T0Zs+U5AP4n8upYhh3EcTPc3t8wihTnJwEhxuIqZ4xYovlRik9tdu2D90i/mBV5JFQLd
         tq1ZOzVnythnaBUThcgNdrECe5rk6153CvUr6JK+HB2n36LCOXz8YjO5su1irF9jU2uq
         5kPipUEyQiel3lwiazkAzgTvh16RVxlDJFgxvBgVP4vuaUaO9JvWqH03ySJSnP9LG/Ky
         stG1yW8fOyBL7JPOVd4h3VA3rmgd3vCtYZUN2eHYO7UEWbiWHz9RklMIBkpmReZkUaXy
         Z9Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724537837; x=1725142637;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FAPTgJc5IqlGGe46aR3Z7zg85g/FXstefH4Y7QnmtCs=;
        b=KJUrdfnHI043Lw1NF6zocA6mjsTe56kObLA09f2iQ89+DyM4wV468XN4ZwLHEBBazv
         77MX22NglLJjzN2wpA57htNCF9bv9I3ABbyq/q609ZzyYj02Fe2NZVeU7EBn3XcB8Wk0
         ANQO0FeDUH6178o7Oz0UgMhDBAlcFeUqr0A8YRtIYWqaWsmf1JZVFd8MkGPtGa8/IG+B
         MAVr84UR3oA9uys0/eFHCp85iXSF6nWuSfOldoCzamkYCZh6874bagxDWrqg1j8YD69L
         QNasaRSBm8A7lwWuvRW59H2qKgHMfMG4S8KGWgP6JQWIWAzlUEmq6Q61iz5wB8CKwbOR
         6I6A==
X-Gm-Message-State: AOJu0YxwdFRkXdRuD6aOjgT2qjBd8JnjXwK5rFEw19YZ/A1Q0WjTCGPw
	kbNOBzdsMW/Kevpx52RJUwzaDg+LUZMFsiKotBsQ/NLZzrolKODhPiWXxbGpQ+XRtiinhoFLeym
	ZwoR5zDxAfULKc0M5ERtJN/tzY/NuLw5vi56Yx5BH5BhXIsMatJGLyEg=
X-Google-Smtp-Source: AGHT+IELRDLLSO0p6iucu7Y+5Xq0rREpCepvEOpTRfrDu4D57l/6sm97PgtngVgRrYa65M99/x8TPsX0EXg9cfNdTDc=
X-Received: by 2002:a05:6512:39d4:b0:52f:e5:3765 with SMTP id
 2adb3069b0e04-534387bedbdmr2249972e87.6.1724537836548; Sat, 24 Aug 2024
 15:17:16 -0700 (PDT)
MIME-Version: 1.0
From: Rich Gopstein <rich@ourowndomain.com>
Date: Sat, 24 Aug 2024 18:31:50 -0400
Message-ID: <CANsNeapbGcs-8CwFC6q4dxcRQK8erxXKu2_G27425xmQ=+V2jg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 4ST6OTW44GFWAPA4USATZJFQLPIJFAIJ
X-Message-ID-Hash: 4ST6OTW44GFWAPA4USATZJFQLPIJFAIJ
X-MailFrom: rich@ourowndomain.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Help with building 4.7.0.0 FPGA image for E310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4ST6OTW44GFWAPA4USATZJFQLPIJFAIJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5356308209274637859=="

--===============5356308209274637859==
Content-Type: multipart/alternative; boundary="00000000000026533106207541b5"

--00000000000026533106207541b5
Content-Type: text/plain; charset="UTF-8"

I'm trying to build the UHD 4.7.0.0 FPGA image from source for the E310.  I
followed the instructions in
https://files.ettus.com/manual/md_usrp3_build_instructions.html and
successfully built and installed the UHD host, but when I try running
rfnoc_image_builder, i get the following error:

  File "./rfnoc_image_builder", line 56, in <module>
>     from uhd.imgbuilder import image_builder
> ModuleNotFoundError: No module named 'uhd'
>

I'm doing the build on an Ubuntu 20.04.6 LTS system.

Rich

--00000000000026533106207541b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m trying to build the UHD 4.7.0.0 FPGA image fr=
om source for the E310.=C2=A0 I followed the instructions in <a href=3D"htt=
ps://files.ettus.com/manual/md_usrp3_build_instructions.html">https://files=
.ettus.com/manual/md_usrp3_build_instructions.html</a> and successfully bui=
lt and installed the UHD host, but when I try running rfnoc_image_builder, =
i get the following error:</div><div><br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">=C2=A0 File &quot;./rfnoc_image_builder&quot;, line 5=
6, in &lt;module&gt;<br>=C2=A0 =C2=A0 from uhd.imgbuilder import image_buil=
der<br>ModuleNotFoundError: No module named &#39;uhd&#39;<br></blockquote><=
div><br></div><div>I&#39;m doing the build on an Ubuntu 20.04.6 LTS system.=
<br></div><div><br></div><div>Rich</div><div><br></div></div>

--00000000000026533106207541b5--

--===============5356308209274637859==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5356308209274637859==--
