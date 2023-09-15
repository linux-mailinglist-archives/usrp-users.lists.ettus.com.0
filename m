Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3DA7A2016
	for <lists+usrp-users@lfdr.de>; Fri, 15 Sep 2023 15:46:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8BDD23849E6
	for <lists+usrp-users@lfdr.de>; Fri, 15 Sep 2023 09:46:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694785588; bh=7+plLkGZzSVUVXVERbmgJoLIF50UM6BD7e4dWqvYTT8=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=oQaqrmHZkBmmfE/ru0iyOtouucujNUUtUIi2WNfUpSMz2bM/TnEN5hi93OMCYiQTU
	 UHFpmdHXWiBgf2Gj0pQ63o/xyFkaQnoZ3zCajpO5cp9UrCJHYIvRH+XspYJHHRK8Kr
	 XLIbA4K/j2WUi3zF7MB/ZjUGfLVkpbXq/7uP4NwXTvlk9urzVkcBhhGm0zniaKbdZp
	 KZDs2CWD4WGRSU9ZJ/GkhaVZ9FuDVQSVxtlYFRDEiGLLUbfMZa/9Ovp2JAH/l9EUGk
	 ImRBeN0OJUI4QknANvOOImlQR8Gswb7OdPR1c1JNpv5wde55QdMlKm/4EvNufNswtk
	 /CLJMjD8yQbqw==
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	by mm2.emwd.com (Postfix) with ESMTPS id E179B3848B3
	for <usrp-users@lists.ettus.com>; Fri, 15 Sep 2023 09:45:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Z7oe231G";
	dkim-atps=neutral
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5029e4bfa22so3591849e87.3
        for <usrp-users@lists.ettus.com>; Fri, 15 Sep 2023 06:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1694785528; x=1695390328; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=x7PoQ+mZmGJPiEksrHM9igR4xZINbWTnRoHh0QQXXDM=;
        b=Z7oe231G07hKnt7Fo5hXOdnbP27zzHeygoZyCuElNlwc+8Y3f1O+ggzvU+SKYrhZ6t
         8sJMd49au8B+9xJbCXvwQ5Nsj7ZpRJtVhjdsV+nWMaUrc9fEI6nwj6L8MsE3Wv2H9nfv
         gWLOhWlw+dXcBf9od10tvU+BBGE6TRFtfdJZ22z7oeB3U/5qp2Jqn8BiFpvyZMlmk02K
         iQn9p0D142lI1oQ+Ft2fUZliXhp9cIZNzToXcRJ59JO5rWhQU9EFu8BYrOvWVO5wgfeM
         3cE2P1p0UpZn7YHSWDS6M8pZklAV3s0mLEVV+/e8EFSWr4Ke5Tz/2xZ9Vq6XMO6xuZ7M
         KoPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694785528; x=1695390328;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x7PoQ+mZmGJPiEksrHM9igR4xZINbWTnRoHh0QQXXDM=;
        b=badiiAzij96DQphgOqLLlYDqJNuDSlWCoUaLyrTyRc/GE7uWCXGZ8VZy3DqJ41Rk8o
         DrmugSGYGwb2Ip1F+VRizymtihPsIV5RXXEh8W0xokQeAqtzdnUBPRq5zymSFj3IpYRS
         EVHWEqlk2ta4Lu8v2AK23hut9MlBiIN0Ylzb8RxFibteQmM/cmb+Bz3tLaUTK/Pe7vkb
         GrHD3zp+YiWq2WCkjhmwiUtOPzf7OxznpEH3TyoCd6bZPcr8i2jb3izRqSczx76VYiuf
         /D5pqE8s5CTbSDH2vborAc4Y6wq2VrRQfdz5MAWQrcHfZBxpjCsIv4cZR+VPtS2ynR+/
         IL0g==
X-Gm-Message-State: AOJu0Yza0un6j5y7UwKDfbZTK9zeb1rcfKPSt80jc62M80fcmnTjvvzM
	QDgg+GKDDNHyfKlXqYzw3Q5vSaFJM4PJcdGVEVnTyg==
X-Google-Smtp-Source: AGHT+IHboDvUR6CvejQ50tGn25865x9JAKYhkiRK1s8hYbAJGHzHgXBZBEywtMYobj9/emansPQZQnHP76wn/I0fINk=
X-Received: by 2002:a05:6512:b92:b0:500:aaea:149d with SMTP id
 b18-20020a0565120b9200b00500aaea149dmr2004082lfv.46.1694785528145; Fri, 15
 Sep 2023 06:45:28 -0700 (PDT)
MIME-Version: 1.0
References: <f775309f76844190a9c5ad474c531a08@iis.fraunhofer.de>
 <902b4da8-293d-91b3-6524-ddf2626ce4e7@gmail.com> <CAB__hTTCu8-43c7=_gDK6SYHkeFoq9WGKxb3tFrvJx-=bMEAWw@mail.gmail.com>
 <a6da16894f9d45b28d0352ccb0b9923a@iis.fraunhofer.de> <CAB__hTTAch8skU_VCX1TJoqJFnxmEDyshMR1K7ZRC9PgO0xOsw@mail.gmail.com>
 <786ad148287d46a8bdffd792914dbd73@iis.fraunhofer.de> <acd9439d-9d9d-d538-12c5-3a5c80cce611@gmail.com>
 <CAB__hTT8-dmWsY=15xvjYYLLq+Pa2f+8c1dJ-A7N4Ydd1S6dEg@mail.gmail.com> <f0d63d45-20ce-10e1-da51-4c2e846e0035@gmail.com>
In-Reply-To: <f0d63d45-20ce-10e1-da51-4c2e846e0035@gmail.com>
Date: Fri, 15 Sep 2023 09:45:16 -0400
Message-ID: <CAB__hTQYNOGSJHtVXf+K2HgSTSnzBrXPQa7Vxvrt1PQOHqhC=g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 6Q2HNOB6WJR7A2NVENQWUCUYKGBL7ACL
X-Message-ID-Hash: 6Q2HNOB6WJR7A2NVENQWUCUYKGBL7ACL
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "Nieland, Michael" <michael.nieland@iis.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC: strange behavior of FFT block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6Q2HNOB6WJR7A2NVENQWUCUYKGBL7ACL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3678732686813864589=="

--===============3678732686813864589==
Content-Type: multipart/alternative; boundary="000000000000606286060566013a"

--000000000000606286060566013a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 14, 2023 at 5:43=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 14/09/2023 17:40, Rob Kossler wrote:
>
> Hi Luca,
> The problem with FFT lengths > 256 is an Ettus bug in
> "rfnoc_rx_streamer.cpp" (also an issue in "rfnoc_tx_streamer.cpp").  The
> following snippet from the atomic_item_size property resolver shows the
> issue.  The problem is that "spp" has units of "samples" whereas
> "ais.get()" has units of bytes.  If you modify this code to use "spp*4" a=
nd
> recompile UHD, you can run with fft length 1024.
> Rob
>
>                 if (spp < ais.get()) {
>                     throw uhd::value_error("samples per package must not
> be smaller than atomic item size");
>                 }
>
>
> This must be a relatively-recent bug, because I clearly remember using FF=
T
> > 256 a few years back.
>
> Thanks so much for finding this, Rob.   Did you file a bug?    I'll try t=
o
> point R&D at it.
>

I didn't file a bug. This bug is recent because the concept of "atomic item
size" is relatively recent.  The concept has the nice feature that it
automatically coerces the radio packet length to be an integer multiple of
the FFT length (or whatever blocks are in the RFNoC block chain). Thus, it
is not even necessary to explicitly set the radio SPP because it will be
set automatically by the RFNoC property resolution process. Although the
code seems to work fine to do this, the bug is just the improper throw-ing
of an exception because of the "byte vs sample" unit issue.

--000000000000606286060566013a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 14, 2023 at 5:43=E2=80=AFPM M=
arcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 14/09/2023 17:40, Rob Kossler wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi Luca,
        <div>The problem with FFT lengths &gt; 256 is an Ettus bug in
          &quot;rfnoc_rx_streamer.cpp&quot; (also an issue in
          &quot;rfnoc_tx_streamer.cpp&quot;).=C2=A0 The following snippet f=
rom the
          atomic_item_size property resolver shows the issue.=C2=A0 The
          problem is that &quot;spp&quot; has units of &quot;samples&quot; =
whereas
          &quot;ais.get()&quot; has units of bytes.=C2=A0 If you modify thi=
s code to
          use &quot;spp*4&quot; and recompile UHD, you can run with fft len=
gth
          1024.</div>
        <div>Rob</div>
        <div><br>
        </div>
        <div><font face=3D"monospace" color=3D"#0000ff">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if
            (spp &lt; ais.get()) {<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 throw uhd::value_error(&quot;samples per
            package must not be smaller than atomic item size&quot;);<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
          </font>=C2=A0<br>
        </div>
      </div>
      <br>
    </blockquote>
    This must be a relatively-recent bug, because I clearly remember
    using FFT &gt; 256 a few years back.<br>
    <br>
    Thanks so much for finding this, Rob.=C2=A0=C2=A0 Did you file a bug?=
=C2=A0=C2=A0=C2=A0 I&#39;ll
    try to point R&amp;D at it.<br></div></blockquote><div><br></div><div>I=
 didn&#39;t file a bug. This bug is recent because the concept of &quot;ato=
mic item size&quot; is relatively recent.=C2=A0 The concept has the nice fe=
ature that it automatically coerces the radio packet length to be an intege=
r multiple of the FFT length (or whatever blocks are in the RFNoC block cha=
in). Thus, it is not even necessary to explicitly set the radio SPP because=
 it will be set automatically by the RFNoC property resolution process. Alt=
hough the code seems to work fine to do this, the bug is just the improper =
throw-ing of an exception because of the &quot;byte vs sample&quot; unit is=
sue.</div><div>=C2=A0</div></div></div>

--000000000000606286060566013a--

--===============3678732686813864589==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3678732686813864589==--
