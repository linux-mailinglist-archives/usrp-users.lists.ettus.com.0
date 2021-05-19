Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B8F389724
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 21:58:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B3E703866AE
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 15:58:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="XoxN8JHs";
	dkim-atps=neutral
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	by mm2.emwd.com (Postfix) with ESMTPS id C0B38385ECB
	for <usrp-users@lists.ettus.com>; Wed, 19 May 2021 15:57:17 -0400 (EDT)
Received: by mail-vs1-f53.google.com with SMTP id u188so7350589vsu.8
        for <usrp-users@lists.ettus.com>; Wed, 19 May 2021 12:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CNQa6tO77pCZeJDq8Aibszk6JhgMj1ccPQ4jh7tjO7Y=;
        b=XoxN8JHshmrCWkuGSQG9Dffwf1lUhK0WFmLZ/r10IBeC9RIYhnBjMJ0A80MUDmqFJr
         N/eRyK1thJ5mfl7zXlLj2DBWNMr2KEJgIDZHUv8UkxWyIUPKJtxyA7przXhEJlLVZkPO
         tRG+u4d0nvBxNDozuGwRnCOo0fW6rX/AVahF7iuu+Iq4fn9vla8ofnkmyAO3isKz9+3i
         EmwsZ6KTe8MqHAXADhbVUXVpk3M+E3ywSKV89uZPwIPFTHN8+/nVk1/fQG6gEjBgZwpY
         pYx3aUTz82TmD4+al4xEtCry9zwb0sGDhYZZz1zjj6yLnT6XHWUdqepikxivVyLWfix1
         OdbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CNQa6tO77pCZeJDq8Aibszk6JhgMj1ccPQ4jh7tjO7Y=;
        b=MLMaIdmS5vn5Y/kzBvshZHEky/W5Elu4y8Uf3OxL5Vvm9TI7cla0dd1A1k6kbnQHZR
         o9CRCUvKJHmJGUoJQCSXNH7g1OrAY9ctukvN8cLhQF17uBt5c7Xh57Ft0P0nZ25WfMS/
         sDJvCSuzIzzINuSNjPKgo3tDllRU67GipaqUCfrHOt3QDm+0NNiVqRLfqRL1WJzIVuR1
         yLpy9xBHTB82LL8ZuoMBIjC1YUrZ+lugitAiTT0jhUT7MK7xnuarXIODkASAnX5i/nom
         23AIweAAdku1FdAFM3P2VC50kSRcnSmOvRcjFD7dACJoFGBMx6Fw0pi81JT3E+0QELuF
         TxXg==
X-Gm-Message-State: AOAM530ejR76vC/Hryfm4JfbZ97ywZZZekBwGP2KRxbSQtcuwil/mxN3
	G/xSvPW/WOdigTBeQD4xmcONavzX1cZg0GN2ec2fBaMj
X-Google-Smtp-Source: ABdhPJym7xABq/YKvdradrd8LDC0ajwcv6P91kI4jgFMuNO8ijMdHRoilvzxbyfqDAf0PhqbWnv5JIIH3Vq3QZKBjI8=
X-Received: by 2002:a67:efda:: with SMTP id s26mr891604vsp.8.1621454237176;
 Wed, 19 May 2021 12:57:17 -0700 (PDT)
MIME-Version: 1.0
References: <tFTja1ZN9eE13agHS8fF7Dgs1WekbFMEtdikGEPbQ@lists.ettus.com>
In-Reply-To: <tFTja1ZN9eE13agHS8fF7Dgs1WekbFMEtdikGEPbQ@lists.ettus.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Wed, 19 May 2021 15:56:40 -0400
Message-ID: <CAL7q81s8vivJaZ0fLNo7joN7-8yNZQkJn9sfK-qrx5TTbsef2g@mail.gmail.com>
To: Julian Casallas <jcasallas2019@gmail.com>
Message-ID-Hash: FCODBWZSDNNV42745BYMEDQQKI6IWAFO
X-Message-ID-Hash: FCODBWZSDNNV42745BYMEDQQKI6IWAFO
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: setting up gr-fosphor on uhd 4
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FCODBWZSDNNV42745BYMEDQQKI6IWAFO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6212820164774721872=="

--===============6212820164774721872==
Content-Type: multipart/alternative; boundary="000000000000d3abab05c2b43b94"

--000000000000d3abab05c2b43b94
Content-Type: text/plain; charset="UTF-8"

Hi Julian,

Does the segfault go away if you build gr-ettus with the flag
-DCMAKE_BUILD_TYPE=Debug?

Jonathon

On Wed, May 19, 2021 at 2:34 PM <jcasallas2019@gmail.com> wrote:

> I would like to also add the gdb backtrace result for that segmentation
> fault:
>
>
> (gdb) bt
> #0  0x00007f851c000ee0 in ?? ()
> #1  0x00007f85f827cd19 in ?? () from /lib/x86_64-linux-gnu/libgcc_s.so.1
> #2  0x00007f85f827d605 in _Unwind_Resume () from /lib/x86_64-linux-gnu/libgcc_s.so.1
> #3  0x00007f85f3de6f03 in gr::ettus::fosphor_display_impl::start() [clone .cold] () from /usr/local/lib/libgnuradio-ettus.so.3.8.0
> #4  0x00007f85f374302c in gr::block_executor::block_executor(boost::shared_ptr<gr::block>, int) () from /usr/local/lib/libgnuradio-runtime.so.3.8.2git
> #5  0x00007f85f379675c in gr::tpb_thread_body::tpb_thread_body(boost::shared_ptr<gr::block>, boost::shared_ptr<boost::barrier>, int) () from /usr/local/lib/libgnuradio-runtime.so.3.8.2git
> #6  0x00007f85f3789f04 in boost::detail::function::void_function_obj_invoker0<gr::thread::thread_body_wrapper<gr::tpb_container>, void>::invoke(boost::detail::function::function_buffer&) ()
>    from /usr/local/lib/libgnuradio-runtime.so.3.8.2git
> #7  0x00007f85f37a38f8 in boost::detail::thread_data<boost::function0<void> >::run() () from /usr/local/lib/libgnuradio-runtime.so.3.8.2git
> #8  0x00007f85f3c4543b in ?? () from /lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
> #9  0x00007f85fa763609 in start_thread (arg=<optimized out>) at pthread_create.c:477
> #10 0x00007f85fa89f293 in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:95
> (gdb) disas/s  0x00007f85f827d605, +10000
>
> Thanks
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d3abab05c2b43b94
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi=C2=A0Julian,<div><br>=
</div><div>Does the segfault go away if you build gr-ettus with the flag -D=
CMAKE_BUILD_TYPE=3DDebug?</div><div><br></div><div>Jonathon</div></div></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Wed, May 19, 2021 at 2:34 PM &lt;<a href=3D"mailto:jcasallas2019@gmail=
.com">jcasallas2019@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><p>I would like to also add the gdb backtrace =
result for that segmentation fault:</p><p><br></p><pre><code>(gdb) bt
#0  0x00007f851c000ee0 in ?? ()
#1  0x00007f85f827cd19 in ?? () from /lib/x86_64-linux-gnu/libgcc_s.so.1
#2  0x00007f85f827d605 in _Unwind_Resume () from /lib/x86_64-linux-gnu/libg=
cc_s.so.1
#3  0x00007f85f3de6f03 in gr::ettus::fosphor_display_impl::start() [clone .=
cold] () from /usr/local/lib/libgnuradio-ettus.so.3.8.0
#4  0x00007f85f374302c in gr::block_executor::block_executor(boost::shared_=
ptr&lt;gr::block&gt;, int) () from /usr/local/lib/libgnuradio-runtime.so.3.=
8.2git
#5  0x00007f85f379675c in gr::tpb_thread_body::tpb_thread_body(boost::share=
d_ptr&lt;gr::block&gt;, boost::shared_ptr&lt;boost::barrier&gt;, int) () fr=
om /usr/local/lib/libgnuradio-runtime.so.3.8.2git
#6  0x00007f85f3789f04 in boost::detail::function::void_function_obj_invoke=
r0&lt;gr::thread::thread_body_wrapper&lt;gr::tpb_container&gt;, void&gt;::i=
nvoke(boost::detail::function::function_buffer&amp;) ()
   from /usr/local/lib/libgnuradio-runtime.so.3.8.2git
#7  0x00007f85f37a38f8 in boost::detail::thread_data&lt;boost::function0&lt=
;void&gt; &gt;::run() () from /usr/local/lib/libgnuradio-runtime.so.3.8.2gi=
t
#8  0x00007f85f3c4543b in ?? () from /lib/x86_64-linux-gnu/libboost_thread.=
so.1.71.0
#9  0x00007f85fa763609 in start_thread (arg=3D&lt;optimized out&gt;) at pth=
read_create.c:477
#10 0x00007f85fa89f293 in clone () at ../sysdeps/unix/sysv/linux/x86_64/clo=
ne.S:95
(gdb) disas/s  0x00007f85f827d605, +10000

Thanks</code></pre><p><br></p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000d3abab05c2b43b94--

--===============6212820164774721872==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6212820164774721872==--
