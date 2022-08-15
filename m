Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DE679593E94
	for <lists+usrp-users@lfdr.de>; Mon, 15 Aug 2022 22:51:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 888183837FE
	for <lists+usrp-users@lfdr.de>; Mon, 15 Aug 2022 16:51:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660596707; bh=BJVjdtJJ016sPpozNIGOTua5c0zYslaLBJA+cU8sEw8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=J3QqhK/UM5mIPQGJDLXkPUhP9ENmdXeOqP3QSKwBvkeSairlYaC5lXlB+tSbS/adJ
	 BoakFuZPr2vkwHdDEOT2PxmgbLzLF9w+XE0TW9rCtbwiNwSMn50deYB5vQ/Re9vPZo
	 SZAOyi7QA/2jv4nmes8xUCdGCCJxz/NgO4gKgJxgiLfUWnKDrO3ClLwwCAKxQhS89r
	 +xncdJKhq1cFkGG5CQXpjY+sOQO5HBNxyVtQrZc3QnTcLrwhzv8j9c9uWRqnTks2WK
	 Q+Kh3Gowvw5eYrgDx3rwPsE5xMPpxO7hHWF3+y9WA+6RzB+mPH1uW6tbBE5RqWRtYx
	 30K7ly8le3nYg==
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 58E71380EC0
	for <usrp-users@lists.ettus.com>; Mon, 15 Aug 2022 16:50:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QLz7NpGl";
	dkim-atps=neutral
Received: by mail-ed1-f44.google.com with SMTP id w3so11036782edc.2
        for <usrp-users@lists.ettus.com>; Mon, 15 Aug 2022 13:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=uDfRD2EOF2v2PRd9uJhXRfSndtMAk4dmLbL4TtAdrx0=;
        b=QLz7NpGln1LGj43XDMLIjYKeKxHk8yRDqW6GFDW6x3g1/VAetP1orBWiyG28dslqT7
         oNzcdktQx6bnTle6wkdJWkJcJsL7+oo04dadUgF9cfkPnrQEVrBiEYStxRHQAVKF0wSp
         /T15RWpfvmp+ZnbnAnP192fDoetCnq1F0qmLN8NY59HXhfg9TcpWxSGNJEYrz+F5UPAo
         Qgx/9giV6YLQGmIsvXu/EzjBDDFFg/fyTk/T96DSCRn4dslHljr2/dEBD+l0/iRkisOV
         SX7tLfdKZT+DshXbAK03TzyvixMAvcw5rXtrUoIZBhWCHZUOYcH/q0X8e+sFvxdyvtfy
         HZ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=uDfRD2EOF2v2PRd9uJhXRfSndtMAk4dmLbL4TtAdrx0=;
        b=sP11sEK73Wmr40ZdZbNKx9dEz4SAwnwqzoCZn7NZsRUxCiUTMDcfFyt8ShddSmLpFx
         QFyFV3hth+HkYkPeTgCnAhsLMpo4Q4fIdmeqfXTbYgfmYkhM2dL+2t5ZjCdNv1Ih31gk
         ZdhgTe4XVyL5S0FBYUjxcSlfUiRqDMFl3S9fnOFoOybQDy968In5ifGaXTy3T/N4N4cD
         DI0v9gzSnRttGJUgDPmazR1+7ZWJjmlYtC85GXLaOs1B9ntAxMU+0ssmNjfUuljD9JNk
         gK5H9I4gpet8vGji8qix4tstrfG0h7IzvvKLjLg/QKkVS3lcBOR44DvnulgnzMbgbNol
         GVFg==
X-Gm-Message-State: ACgBeo0XnPazoIqUX8ya4DG7m1sJcfVGnSuR2+dNr6AbfOav2FadzoWA
	X0utSbFRXk4jQ8ncYITj1dNb4byztXSsJs7aWpXRLMMe
X-Google-Smtp-Source: AA6agR7ycwI5F3U9v4Fym0/IyeZakJ03suTisA99lE3LrB7MgWUz5uXhPLUwnHTWtjfdx8ffE95TZJGzoaOLzB+N1hw=
X-Received: by 2002:aa7:cc06:0:b0:440:7258:ad16 with SMTP id
 q6-20020aa7cc06000000b004407258ad16mr15637937edt.74.1660596630738; Mon, 15
 Aug 2022 13:50:30 -0700 (PDT)
MIME-Version: 1.0
References: <B72xaKaRIC2UxRuWOmwCJi86KWNRsedQa7pmUfpHkg@lists.ettus.com>
 <CAAxXO2Gty2mtQD4sEEN7d5JUyCXocE=-2bKrV+_Lk=Ls48Ux-w@mail.gmail.com> <6f08d94a-a9bc-d2b0-3d6a-a429a16ca674@gmail.com>
In-Reply-To: <6f08d94a-a9bc-d2b0-3d6a-a429a16ca674@gmail.com>
From: Chris Wozny <woznych@gmail.com>
Date: Mon, 15 Aug 2022 16:50:12 -0400
Message-ID: <CAEZoMYMQbJc0ccD0LH8Ex27VTx1rZxKVmR5bX-shJF-SZfoAKA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: GGN5DCBEDKRK6COQE3QEJWOGGE6NK6KO
X-Message-ID-Hash: GGN5DCBEDKRK6COQE3QEJWOGGE6NK6KO
X-MailFrom: cwoz36@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bus errors and UHD exceptions with simple I/Q recorder
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GGN5DCBEDKRK6COQE3QEJWOGGE6NK6KO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8793119243196805784=="

--===============8793119243196805784==
Content-Type: multipart/alternative; boundary="0000000000004a5b0505e64dc87f"

--0000000000004a5b0505e64dc87f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Marcus,

I was specifying SC16 on host and SC12 over-the-wire via:

uhd::stream_args_t stream_args("sc16","sc12"); // 16-bit integers on host,
12-bit over-the-wire

- Chris

On Mon, Aug 15, 2022 at 10:25 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-08-14 20:57, Nikos Balkanas wrote:
> > Aaaah, it's the dreaded max_samps_per_buffer:(
> > Yup, you need to make your read buffer aligned to max_samps_per_buffer.=
..
> >
> > HTH
> > Nikos
> Also, could we confirm that the stream is being set-up for sc16 on the
> *host* side as well?  The default
>    is, AFAIR, "fc32" for the *host* side...
>
>
> >
> > On Sun, Aug 14, 2022 at 9:24 PM <woznych@gmail.com> wrote:
> >> Nikos,
> >>
> >> Thanks for the reply. I traced it to the =E2=80=9Crecv=E2=80=9D call w=
hich has left me
> puzzled. I added a bunch of instrumentation to see if I was walking off t=
he
> end of my memory that was allocated to the 16-bit I/Q buffer.
> >>
> >> const std::int32_t startIndex =3D 2*num_accum_samps;
> >>
> >> const std::int32_t remainingSize =3D 2*sampleLength-(2*num_accum_samps=
);
> >>
> >> std::cout << "iq[" << startIndex << "] =3D " << iq[startIndex];
> >>
> >> std::cout << "\t" << remainingSize;
> >>
> >> std::cout << "\t" << startIndex + remainingSize;
> >>
> >> std::cout << "\t" << bufferSize << std::endl;
> >>
> >> num_accum_samps +=3D rx_stream->recv(&iq[startIndex], remainingSize,
> meta, 5.0, true);
> >>
> >> And I can get it to faithfully crash every single time when I don=E2=
=80=99t pad
> my array of 16-bit integers by an additional 2165 int16s. I included some
> output indicating where I=E2=80=99ve specified as the start of the buffer=
 for it to
> write to, followed by the remaining size, followed by the sum of the two
> just to make sure I can math, and finally the actual reserved buffer size
> plus the pad of 2164 int16s.
> >>
> >> =E2=80=A6
> >>
> >> iq[1180480] =3D 0 19520 1200000 1202164
> >>
> >> iq[1185920] =3D 0 14080 1200000 1202164
> >>
> >> iq[1191360] =3D 0 8640 1200000 1202164
> >>
> >> iq[1196800] =3D 0 3200 1200000 1202164
> >>
> >> Segmentation fault (core dumped)
> >>
> >> If you=E2=80=99ll notice, I=E2=80=99ve specified for it to start at in=
dex 1196800 and
> that the number of samples per buffer being passed to recv() is 3200. I
> think I=E2=80=99m just being dense / misinterpreting the nsamps_per_buff =
(the
> second parameter of the =E2=80=9Crecv=E2=80=9D call) because it seems as =
if it is not
> respecting the remaining buffer size that I am specifying and attempting =
to
> write beyond the bounds of the memory I=E2=80=99ve allocated for the buff=
er.
> >>
> >> Is there some alignment or minimum buffer size that I=E2=80=99m not aw=
are of?
> >>
> >> Thanks,
> >>
> >> Chris
> >>
> >> _______________________________________________
> >> USRP-users mailing list -- usrp-users@lists.ettus.com
> >> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000004a5b0505e64dc87f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Marcus,</div><div dir=3D"auto"><br></div><div dir=3D"auto=
">I was specifying SC16 on host and SC12 over-the-wire via:</div><div dir=
=3D"auto"><br></div><div dir=3D"auto"><div dir=3D"auto">uhd::stream_args_t =
stream_args(&quot;sc16&quot;,&quot;sc12&quot;); // 16-bit integers on host,=
 12-bit over-the-wire</div><div dir=3D"auto"><br></div><div dir=3D"auto">- =
Chris</div></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Aug 15, 2022 at 10:25 AM Marcus D. Leech &lt;<a hre=
f=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">On 2022-08-14 20:57, Nikos Balkana=
s wrote:<br>
&gt; Aaaah, it&#39;s the dreaded max_samps_per_buffer:(<br>
&gt; Yup, you need to make your read buffer aligned to max_samps_per_buffer=
...<br>
&gt;<br>
&gt; HTH<br>
&gt; Nikos<br>
Also, could we confirm that the stream is being set-up for sc16 on the <br>
*host* side as well?=C2=A0 The default<br>
=C2=A0=C2=A0 is, AFAIR, &quot;fc32&quot; for the *host* side...<br>
<br>
<br>
&gt;<br>
&gt; On Sun, Aug 14, 2022 at 9:24 PM &lt;<a href=3D"mailto:woznych@gmail.co=
m" target=3D"_blank">woznych@gmail.com</a>&gt; wrote:<br>
&gt;&gt; Nikos,<br>
&gt;&gt;<br>
&gt;&gt; Thanks for the reply. I traced it to the =E2=80=9Crecv=E2=80=9D ca=
ll which has left me puzzled. I added a bunch of instrumentation to see if =
I was walking off the end of my memory that was allocated to the 16-bit I/Q=
 buffer.<br>
&gt;&gt;<br>
&gt;&gt; const std::int32_t startIndex =3D 2*num_accum_samps;<br>
&gt;&gt;<br>
&gt;&gt; const std::int32_t remainingSize =3D 2*sampleLength-(2*num_accum_s=
amps);<br>
&gt;&gt;<br>
&gt;&gt; std::cout &lt;&lt; &quot;iq[&quot; &lt;&lt; startIndex &lt;&lt; &q=
uot;] =3D &quot; &lt;&lt; iq[startIndex];<br>
&gt;&gt;<br>
&gt;&gt; std::cout &lt;&lt; &quot;\t&quot; &lt;&lt; remainingSize;<br>
&gt;&gt;<br>
&gt;&gt; std::cout &lt;&lt; &quot;\t&quot; &lt;&lt; startIndex + remainingS=
ize;<br>
&gt;&gt;<br>
&gt;&gt; std::cout &lt;&lt; &quot;\t&quot; &lt;&lt; bufferSize &lt;&lt; std=
::endl;<br>
&gt;&gt;<br>
&gt;&gt; num_accum_samps +=3D rx_stream-&gt;recv(&amp;iq[startIndex], remai=
ningSize, meta, 5.0, true);<br>
&gt;&gt;<br>
&gt;&gt; And I can get it to faithfully crash every single time when I don=
=E2=80=99t pad my array of 16-bit integers by an additional 2165 int16s. I =
included some output indicating where I=E2=80=99ve specified as the start o=
f the buffer for it to write to, followed by the remaining size, followed b=
y the sum of the two just to make sure I can math, and finally the actual r=
eserved buffer size plus the pad of 2164 int16s.<br>
&gt;&gt;<br>
&gt;&gt; =E2=80=A6<br>
&gt;&gt;<br>
&gt;&gt; iq[1180480] =3D 0 19520 1200000 1202164<br>
&gt;&gt;<br>
&gt;&gt; iq[1185920] =3D 0 14080 1200000 1202164<br>
&gt;&gt;<br>
&gt;&gt; iq[1191360] =3D 0 8640 1200000 1202164<br>
&gt;&gt;<br>
&gt;&gt; iq[1196800] =3D 0 3200 1200000 1202164<br>
&gt;&gt;<br>
&gt;&gt; Segmentation fault (core dumped)<br>
&gt;&gt;<br>
&gt;&gt; If you=E2=80=99ll notice, I=E2=80=99ve specified for it to start a=
t index 1196800 and that the number of samples per buffer being passed to r=
ecv() is 3200. I think I=E2=80=99m just being dense / misinterpreting the n=
samps_per_buff (the second parameter of the =E2=80=9Crecv=E2=80=9D call) be=
cause it seems as if it is not respecting the remaining buffer size that I =
am specifying and attempting to write beyond the bounds of the memory I=E2=
=80=99ve allocated for the buffer.<br>
&gt;&gt;<br>
&gt;&gt; Is there some alignment or minimum buffer size that I=E2=80=99m no=
t aware of?<br>
&gt;&gt;<br>
&gt;&gt; Thanks,<br>
&gt;&gt;<br>
&gt;&gt; Chris<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettu=
s.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave=
@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br=
>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000004a5b0505e64dc87f--

--===============8793119243196805784==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8793119243196805784==--
