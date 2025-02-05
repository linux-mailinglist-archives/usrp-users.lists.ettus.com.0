Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A6345A28B38
	for <lists+usrp-users@lfdr.de>; Wed,  5 Feb 2025 14:08:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 68190385CA7
	for <lists+usrp-users@lfdr.de>; Wed,  5 Feb 2025 08:08:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738760913; bh=3DCYU86QxnEOJ1XhHTcUSz/91MthggOn3nYyeDf+B4M=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=M0G8RG6FAkomSXd/ezVAReCQ7brb92rORe5knTjUoDQcWb8rklo9KKcfahsnjyG3k
	 q1Um6mQbOd3rgpIs7Wtpp6FyxWGxwdxFowOIA78BAD6dkz+8RKvj5QPh6b0OgCFOZ/
	 y8qM35AK5KmwVQhxTEXuHXeLVNOzvGKtexJv3I6SsrkIdcbm+KBEyAJ8fc1emIQSVc
	 HVR8bfAdKs+i87w3Jae20LSZ6x58wxB4T2TWlKiqRFZeEDz0ezUewQKNqhGucsUOoY
	 2CdSaIDwK+2q3F0HOSLqIKeRo1L0emMSov68mmY1FY4058ctFMY372Je41dlC73Ipc
	 rIIQ7mzaM1pJQ==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 93850385412
	for <usrp-users@lists.ettus.com>; Wed,  5 Feb 2025 08:08:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="jh+i2Zup";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5dccaaca646so1856351a12.0
        for <usrp-users@lists.ettus.com>; Wed, 05 Feb 2025 05:08:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1738760898; x=1739365698; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YPuVIw3I4OStHp7CX0IioQzyBhpzCkW1sK7g2Zx7lL4=;
        b=jh+i2ZupI5jJg05tY+w358zbOK7FRpFxc5GYP1NHAkgHuUPNi56Px6Ix+/Kppg+w3X
         srFOq6gZ9fnT+f0lzi43OCHulS3ElazbJUuRxiEoj7alWqQKkkcqZ4/84ska8hQJyMz+
         lZtg26RZMa32s3ul8qOxuXrNKUrY56T5YyOb6jk7sa2PCrXBhD469DEmW0gEofBGZ6BM
         +X6MYImLfbY/6/vrDUVRUaBUtLNbyW/Q+ZsIgrRqAcM8ToTg6bbxn+ayozVZCuvbKZJS
         H8eutSSzHbyG0mFzMd+79iKTjsNo9L4snHTBvIBU/MqW+CSFqRAFSK26BHlWkEABWmX8
         CjFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738760898; x=1739365698;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YPuVIw3I4OStHp7CX0IioQzyBhpzCkW1sK7g2Zx7lL4=;
        b=OVV5yR0Pwio9j8HahKpqYROQJy70Ar+qUvFaEbumDoI0plyULG0lQt9igivNN8S6K+
         LAkFXp1KmEf+MoB26GsWTMY3jXUeBJr8GIcm+2z9VCWgdoQLI5dRfCiWD+dbDGhipN+X
         MYtnZXy+ZBQNxCu6t0zxZMT1gohAMOAPDKKb7CnO4PjpAHO5ANx5/xw416ETqNHfuNi5
         5owW2czJzJOsvNh8HgBH+A2a+ePtvnTPbZKSblwWsLpEbIYYLOu6Y8HHOeZeTMGwBAri
         1XDxt+i05a7kxK2Nku5nrxy85+SSuQLLO4aLttp3zUTPnjYXHyt9KgMpDRbvaGRTrK8X
         g3eA==
X-Gm-Message-State: AOJu0YzBzu2MpBTX2O/ACQHZhIndh9VGKMBH9K4Q0N1xBuhtcpapRd9l
	EQnEKJcRBw+3TjGD8/DexCGvRU8dU8F7KAWX+V/X8HsOCGI8Idfcvgb6vLdJuVupOyBQIslpUEY
	q/nWQkgcyFlIFDAaxFb/jy7m/sVVnKS/MAliDHmx9KTXy8G4JyVA=
X-Gm-Gg: ASbGncvOSr1kdNXbL6Sdlp0YQeGlwoSl6ANkE3tTDQBkmcZ05wjLkCTJGq9F3Cp2Oz+
	rD6xZThGzDgZRvi0/tbukvuUcshT+UFHLx/MRZDxSRLdGsA7/+3kzlxM7ox2imuJ4sOcfr/M=
X-Google-Smtp-Source: AGHT+IGMBQvQouNu7GzHG1fd3k90+u4znzl81dkt2AHbiqcdxbE0PNWh6w6gCybN/5M+t8yf5WsF73vqC3XJGRtWP2k=
X-Received: by 2002:a05:6402:1d55:b0:5db:f40f:1a5f with SMTP id
 4fb4d7f45d1cf-5dcc15d5c17mr7378885a12.15.1738760897166; Wed, 05 Feb 2025
 05:08:17 -0800 (PST)
MIME-Version: 1.0
References: <CAAc7u9oHPqk7A3AqrPWzMUOb39Tc7VcYunuqH2OFG-3C5bqRMw@mail.gmail.com>
In-Reply-To: <CAAc7u9oHPqk7A3AqrPWzMUOb39Tc7VcYunuqH2OFG-3C5bqRMw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 5 Feb 2025 14:08:06 +0100
X-Gm-Features: AWEUYZnKi1Af7P_LIblSHDdWPHAXRn4ImpC5pWlkSlEAq1z-UqMWe-_rI55RH9w
Message-ID: <CAFOi1A6LfxJYXY7YM09utBCy-LT5fsva945KDQbfpoj4cWa5+g@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: IZNEFAB7BQAWXORN5D6XUMKZTCURO5EW
X-Message-ID-Hash: IZNEFAB7BQAWXORN5D6XUMKZTCURO5EW
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Load uhd_power_cal calibration file
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IZNEFAB7BQAWXORN5D6XUMKZTCURO5EW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4478551583018308868=="

--===============4478551583018308868==
Content-Type: multipart/alternative; boundary="000000000000a01bdb062d64d1ba"

--000000000000a01bdb062d64d1ba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Tim,

it looks like you're doing everything correctly. What's the filename of the
cal file (you can blank out the serial)?

Are you building from source? If so, can you please recompile with

cmake -DUHD_LOG_MIN_LEVEL=3Dtrace

and set the environment variables

UHD_LOG_LEVEL=3Dtrace
UHD_LOG_CONSOLE_LEVEL=3Dtrace

? This will tell you where it's trying to look for the cal file.

--M

On Mon, Feb 3, 2025 at 10:29=E2=80=AFAM Tim Vancauwenbergh <
tim.vancauwenbergh13@gmail.com> wrote:

> Hi,
>
> I've performed the power calibration for RX on a usrp b200 mini. The file
> is saved at /home/[username]/.local/share/uhd/cal/
> When running print(usrp.has_rx_power_reference()) it returns False,
> despite the calibration data being available.
> The webpage https://files.ettus.com/manual/page_power.html lists nothing
> about required directory.
> My question: how can I load the calibration data, I would like to use thi=
s
> to determine the received power. Later on I would also calibrate the TX t=
o
> get a known TX power level.
>
> Thanks!
>
> Best regards,
>
> Tim Vancauwenbergh
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a01bdb062d64d1ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Tim,</div><div><br></div><div>it looks like you&#39;r=
e doing everything correctly. What&#39;s the filename of the cal file (you =
can blank out the serial)?</div><div><br></div><div>Are you building from s=
ource? If so, can you please recompile with=C2=A0</div><div><br></div><div>=
cmake -DUHD_LOG_MIN_LEVEL=3Dtrace</div><div><br></div><div>and set the envi=
ronment variables <br></div><div><br></div><div>UHD_LOG_LEVEL=3Dtrace</div>=
<div>UHD_LOG_CONSOLE_LEVEL=3Dtrace</div><div><br></div><div>? This will tel=
l you where it&#39;s trying to look for the cal file.</div><div><br></div><=
div>--M<br></div></div><br><div class=3D"gmail_quote gmail_quote_container"=
><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 3, 2025 at 10:29=E2=80=
=AFAM Tim Vancauwenbergh &lt;<a href=3D"mailto:tim.vancauwenbergh13@gmail.c=
om">tim.vancauwenbergh13@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi,</div><div><br><=
/div><div>I&#39;ve performed the power calibration for RX on a usrp b200 mi=
ni. The file is saved at /home/[username]/.local/share/uhd/cal/</div><div>W=
hen running print(usrp.has_rx_power_reference()) it returns False, despite =
the calibration data being available.</div><div>The webpage <a href=3D"http=
s://files.ettus.com/manual/page_power.html" target=3D"_blank">https://files=
.ettus.com/manual/page_power.html</a> lists nothing about required director=
y.</div><div>My question: how can I load the calibration data, I would like=
 to use this to determine the received power. Later on I would also calibra=
te the TX to get a known TX power level.<br></div><div><br></div><div>Thank=
s!</div><div><br></div><div>Best regards,</div><div><br></div><div>Tim Vanc=
auwenbergh<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a01bdb062d64d1ba--

--===============4478551583018308868==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4478551583018308868==--
