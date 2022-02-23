Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDB84C1C72
	for <lists+usrp-users@lfdr.de>; Wed, 23 Feb 2022 20:44:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B0F6384AD5
	for <lists+usrp-users@lfdr.de>; Wed, 23 Feb 2022 14:44:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kYwZ4sGf";
	dkim-atps=neutral
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	by mm2.emwd.com (Postfix) with ESMTPS id A204238440F
	for <usrp-users@lists.ettus.com>; Wed, 23 Feb 2022 14:43:39 -0500 (EST)
Received: by mail-pg1-f182.google.com with SMTP id 75so21104937pgb.4
        for <usrp-users@lists.ettus.com>; Wed, 23 Feb 2022 11:43:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=10kvbXAGk2YdekIArIcsSBBuhpY3ZxGACF8XuSwkXos=;
        b=kYwZ4sGfWBH9i/8rQrFvhkpuM6NtmYTbND4nShuDLGIz9FninU5QLV2Gi1GJ8n0Qw4
         1QWs63/KA/Xvqfap0GXAqcz1iY0p7ugZcuWzxnqX3M/80ULzFnK+Um+RD/DTsUI4wJtj
         mHKR4rwmoaJ8HgBsBvmtcEHeU9tasYsVoqPToEVhc4cOOVSXBgosgWh1GK5IYcPbIVvu
         xV21i99lbRjCTkPirRRXfeQgK7gafRSmjHHQxsLuENtnR/yhPjpYK21V68nFhR3CPNeE
         hteVyoJyDYTwyjpuuK8q/jHXOhVkQseLv1eJhCdmBlxyBJzG6TO1AsZ3WPlnKcovJsBi
         mCtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=10kvbXAGk2YdekIArIcsSBBuhpY3ZxGACF8XuSwkXos=;
        b=BBD/F4vBq/vqw8pnMY6hnbpH5EYnMsVR5iege2Uh5+iQgH8Bb6JX5VN/joT3cOWbn2
         l5etax4PyjRKqXqtIDL7iACbbCbJmATVghYC8qFQdF2Ocb0LmLH27lPANreFNvFqH3JZ
         v7KU9UlnY1n+dtP56Q4UdO0VfGO877k09nYnYnl9VI+wfYK7rPc0oh6V0DoKFSunn1jZ
         DWOkfphBxd9xcz6RMKtMGtql3qggRVnGrOKsx13DOkT3IWQt8tOS2HWnyitdiqAfbfSS
         XdfKCpxh622y3B1p5s246LrS8NRaN/S4wt/OJavxl4j3Dcl8ex64qLcM36lNKBkGQFIG
         gtSA==
X-Gm-Message-State: AOAM531OO9WHnDTCUt3JUB/CTsgU3ztocmX4qT9WFa3jwTdfcuVGGaRB
	w8FjBHWKZK/KtxCpTnek36Nqo4eJntxwJCEGqnc=
X-Google-Smtp-Source: ABdhPJygeFiBGmGH6wNjnV9bcN16IynX5x6F7KsrYWhdjPM1OnC+ACucfl3xo0MrBPz5pl9IRl2bZBIbprBvbfX1hbw=
X-Received: by 2002:a05:6a00:8c5:b0:4c7:f9a5:ebc6 with SMTP id
 s5-20020a056a0008c500b004c7f9a5ebc6mr965972pfu.34.1645645418478; Wed, 23 Feb
 2022 11:43:38 -0800 (PST)
MIME-Version: 1.0
References: <fupwrwahRapfiSvxw6o9IskW3A3hWdRACJCUT1egWo@lists.ettus.com>
 <eb4ae5b3-c829-54a1-faf6-4521d9cf5c6a@gmail.com> <CAEXYVK76f6eaXqH2wG6JUdAbMksoQ_inBZN1SqPYgEQSX8Gszw@mail.gmail.com>
In-Reply-To: <CAEXYVK76f6eaXqH2wG6JUdAbMksoQ_inBZN1SqPYgEQSX8Gszw@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 23 Feb 2022 14:43:27 -0500
Message-ID: <CAEXYVK7BsTakT=Cb7xQgnM0sG4mw3_8JiNK3x_G1dYZn=6TD1g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: Q44FOSIF3CDZIN6FYGONPC2E2LC5WYTE
X-Message-ID-Hash: Q44FOSIF3CDZIN6FYGONPC2E2LC5WYTE
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows "O" messages with USRP X300
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q44FOSIF3CDZIN6FYGONPC2E2LC5WYTE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6853829281103272730=="

--===============6853829281103272730==
Content-Type: multipart/alternative; boundary="000000000000983f7405d8b4ae01"

--000000000000983f7405d8b4ae01
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 23, 2022 at 2:04 PM Brian Padalino <bpadalino@gmail.com> wrote:

> On Wed, Feb 23, 2022 at 1:03 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 2022-02-23 12:00, zlika_ese@hotmail.com wrote:
>> >
>> > Thanks for your answer.
>> >
>> > I tried to use benchmark_rate, and I don=E2=80=99t have any sample los=
s at
>> > 200MS/s.
>> >
>> > On GnuRadio with a very simple flowgraph (USRP Source -> Null Sink) I
>> > still have very regular (every few seconds) overflows.
>> >
>> > In both cases, the CPU load of each core never goes over ~25%.
>> >
>> > Is there any particular performance tips to know on GnuRadio (e.g.
>> > playing with the min/max output buffer sizes of the blocks) to
>> > optimize the throughput?
>> >
>> >
>> A Gnu Radio flow-graph will *NEVER* be as performant, for "simple
>> things" as a hand-coded equivalent, because it has extra overhead in
>> managing buffers and threads
>>    and so-on.
>>
>
> While this may be true in general, the test case is said to be (USRP
> Source -> Null Sink).  This is the most trivial case and should basically
> be the exact same as what benchmark_rate is running, and yet GNU Radio ha=
s
> overflow whereas benchmark_rate does not.  When I was testing this, anoth=
er
> interesting thing happened where once an overflow occurred in GNU Radio, =
it
> never recovered and it was O all the time and with a very low/strange
> sample rate coming in - as if something was stalled in the pipeline on th=
e
> radio and repeatedly thrashing some state.  That is, until I ran
> benchmark_rate.  Once benchmark_rate was able to run properly, GNU Radio
> was able to run fine until the next O.  This is with GNU Radio maint-3.10
> and whatever is built in with gr-uhd linked against UHD 4.10.5 I believe.
>
> In my opinion, something fishy is happening in GNU Radio with the X310
> that is not exhibited when using benchmark_rate.
>

My colleague has opened a ticket with GNU Radio to follow this issue:

  https://github.com/gnuradio/gnuradio/issues/5602

Brian

>

--000000000000983f7405d8b4ae01
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Feb 23, 2022 at 2:04 PM Brian Pad=
alino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt=
; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Wed, Feb 23, 2022 =
at 1:03 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" t=
arget=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 2022-=
02-23 12:00, <a href=3D"mailto:zlika_ese@hotmail.com" target=3D"_blank">zli=
ka_ese@hotmail.com</a> wrote:<br>
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
th the X310 that is not exhibited when using benchmark_rate.</div></div></d=
iv></blockquote><div><br></div><div>My colleague has opened a ticket with G=
NU Radio to follow this issue:</div><div><br></div><div>=C2=A0=C2=A0<a href=
=3D"https://github.com/gnuradio/gnuradio/issues/5602">https://github.com/gn=
uradio/gnuradio/issues/5602</a></div><div><br></div><div>Brian</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">
</blockquote></div></div>

--000000000000983f7405d8b4ae01--

--===============6853829281103272730==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6853829281103272730==--
