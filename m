Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 985D84C1B5C
	for <lists+usrp-users@lfdr.de>; Wed, 23 Feb 2022 20:05:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 914D2384A60
	for <lists+usrp-users@lfdr.de>; Wed, 23 Feb 2022 14:05:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XOexJ9Tl";
	dkim-atps=neutral
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	by mm2.emwd.com (Postfix) with ESMTPS id E34523845C8
	for <usrp-users@lists.ettus.com>; Wed, 23 Feb 2022 14:04:20 -0500 (EST)
Received: by mail-pf1-f180.google.com with SMTP id x18so16261724pfh.5
        for <usrp-users@lists.ettus.com>; Wed, 23 Feb 2022 11:04:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sFD/iLof4Qu/gC0NSx/oMfKw969RFe5pEAgtTS8nx+Y=;
        b=XOexJ9TlSD1/gLiceOXvzOCDgGPTUG1v0XQBg8Po1qS/6KlcQLd2+WTb8MgxDX8AMl
         GRQzNJMU+phPzEaEAEWcX6LKyPyBfzFVhP4FN25V3Q8haNVsXvt4rPOywHe1mZSWpnxs
         bIAigHNIL5BoYBRrGImqfsHi7zCME5aFbR+yCMkXL0SZ3BILOri0J1VUN/CIzwnQg9xU
         BryEuJN2MaDSk+OvQBBLlhrDOXvTQYyQh7y+BFSpk8yGgFP+i0u1EWSFNe35qdZ2sHh5
         kuC8sev3lE0o66Emm0fII7ERW6B9jt3vATqBxXYjzHcJxU/Naiy5WuEc3C1MBo4bB1UK
         1NJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sFD/iLof4Qu/gC0NSx/oMfKw969RFe5pEAgtTS8nx+Y=;
        b=4afF1HncSHCKaWiHD+w/WsUEFFX7OX4Lp3dJi+XQYXIFXdhBoNZXdvzvW34xHaFSKd
         mAYXeOKD2fy9hrvwu3sAOyW90+fWbiKMgZG9LnH2c5FFDh/CCAzejEzruf6uulVGZS5C
         xCjVMzpz/gIjHZvZh+QmYk+d2mrdJWDYQ/wG27qLwQ5nHOuG/m14A7cQ/wftL41hXW8v
         8Xf6dZLc5C+AwipgYFopL3TM+t2UueIWdJUP1f6uilmncu8i5E3Jv0umgXmT3pKsAWwC
         tAYWqCpN6RKHzSG9Mg3Yu2HYKGL0gRxigArNRm5dnPGGznKKMgu/Kf/kyMdy+RKmar4M
         gTgQ==
X-Gm-Message-State: AOAM532cZ4+wnvA94AiU/zC8bryAU8YUFXCn7dGqCvviI21rP7OaCzHl
	Nyc/BJ5NdOnrIDjhDHgy4gngN/QhfIY/MnGx3Mo=
X-Google-Smtp-Source: ABdhPJxa4999mkWUmueAz9ZFXIq3mB6iADvNayWF6zJyIJe8x7wcCXPU/T0Xtet/FJMHCqcLOFADRqKew/vmrpRG2jE=
X-Received: by 2002:a63:1456:0:b0:373:c08c:124d with SMTP id
 22-20020a631456000000b00373c08c124dmr777273pgu.363.1645643059583; Wed, 23 Feb
 2022 11:04:19 -0800 (PST)
MIME-Version: 1.0
References: <fupwrwahRapfiSvxw6o9IskW3A3hWdRACJCUT1egWo@lists.ettus.com> <eb4ae5b3-c829-54a1-faf6-4521d9cf5c6a@gmail.com>
In-Reply-To: <eb4ae5b3-c829-54a1-faf6-4521d9cf5c6a@gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 23 Feb 2022 14:04:08 -0500
Message-ID: <CAEXYVK76f6eaXqH2wG6JUdAbMksoQ_inBZN1SqPYgEQSX8Gszw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: EEPAFJSCTILTAWINXVDQZKMEF72EXO3J
X-Message-ID-Hash: EEPAFJSCTILTAWINXVDQZKMEF72EXO3J
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows "O" messages with USRP X300
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EEPAFJSCTILTAWINXVDQZKMEF72EXO3J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7225638274182436393=="

--===============7225638274182436393==
Content-Type: multipart/alternative; boundary="000000000000fe5e2405d8b42189"

--000000000000fe5e2405d8b42189
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 23, 2022 at 1:03 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-02-23 12:00, zlika_ese@hotmail.com wrote:
> >
> > Thanks for your answer.
> >
> > I tried to use benchmark_rate, and I don=E2=80=99t have any sample loss=
 at
> > 200MS/s.
> >
> > On GnuRadio with a very simple flowgraph (USRP Source -> Null Sink) I
> > still have very regular (every few seconds) overflows.
> >
> > In both cases, the CPU load of each core never goes over ~25%.
> >
> > Is there any particular performance tips to know on GnuRadio (e.g.
> > playing with the min/max output buffer sizes of the blocks) to
> > optimize the throughput?
> >
> >
> A Gnu Radio flow-graph will *NEVER* be as performant, for "simple
> things" as a hand-coded equivalent, because it has extra overhead in
> managing buffers and threads
>    and so-on.
>

While this may be true in general, the test case is said to be (USRP Source
-> Null Sink).  This is the most trivial case and should basically be the
exact same as what benchmark_rate is running, and yet GNU Radio has
overflow whereas benchmark_rate does not.  When I was testing this, another
interesting thing happened where once an overflow occurred in GNU Radio, it
never recovered and it was O all the time and with a very low/strange
sample rate coming in - as if something was stalled in the pipeline on the
radio and repeatedly thrashing some state.  That is, until I ran
benchmark_rate.  Once benchmark_rate was able to run properly, GNU Radio
was able to run fine until the next O.  This is with GNU Radio maint-3.10
and whatever is built in with gr-uhd linked against UHD 4.10.5 I believe.

In my opinion, something fishy is happening in GNU Radio with the X310 that
is not exhibited when using benchmark_rate.

Brian

--000000000000fe5e2405d8b42189
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Feb 23, 2022 at 1:03 PM Marcus D.=
 Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.c=
om</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">On 2022-02-23 12:00, <a href=3D"mailto:zlika_e=
se@hotmail.com" target=3D"_blank">zlika_ese@hotmail.com</a> wrote:<br>
&gt;<br>
&gt; Thanks for your answer.<br>
&gt;<br>
&gt; I tried to use benchmark_rate, and I don=E2=80=99t have any sample los=
s at <br>
&gt; 200MS/s.<br>
&gt;<br>
&gt; On GnuRadio with a very simple flowgraph (USRP Source -&gt; Null Sink)=
 I <br>
&gt; still have very regular (every few seconds) overflows.<br>
&gt;<br>
&gt; In both cases, the CPU load of each core never goes over ~25%.<br>
&gt;<br>
&gt; Is there any particular performance tips to know on GnuRadio (e.g. <br=
>
&gt; playing with the min/max output buffer sizes of the blocks) to <br>
&gt; optimize the throughput?<br>
&gt;<br>
&gt;<br>
A Gnu Radio flow-graph will *NEVER* be as performant, for &quot;simple <br>
things&quot; as a hand-coded equivalent, because it has extra overhead in <=
br>
managing buffers and threads<br>
=C2=A0=C2=A0 and so-on.<br></blockquote><div><br></div><div>While this may =
be true in general, the test case is said to be (USRP Source -&gt; Null Sin=
k).=C2=A0 This is the most trivial case and should basically be the exact s=
ame as what benchmark_rate is running, and yet GNU Radio has overflow where=
as benchmark_rate does not.=C2=A0 When I was testing this, another interest=
ing thing happened where once an overflow occurred in GNU Radio, it never r=
ecovered and it was O all the time and with a very low/strange sample rate =
coming in - as if something was stalled in the pipeline on the radio and re=
peatedly thrashing some state.=C2=A0 That is, until I ran benchmark_rate.=
=C2=A0 Once benchmark_rate was able to run properly, GNU Radio was able to =
run fine until the next O.=C2=A0 This is with GNU Radio maint-3.10 and what=
ever is built in with gr-uhd linked against UHD 4.10.5 I believe.</div><div=
><br></div><div>In my opinion, something fishy is happening in GNU Radio wi=
th the X310 that is not exhibited when using benchmark_rate.</div><div><br>=
</div><div>Brian</div></div></div>

--000000000000fe5e2405d8b42189--

--===============7225638274182436393==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7225638274182436393==--
