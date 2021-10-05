Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E8931422F25
	for <lists+usrp-users@lfdr.de>; Tue,  5 Oct 2021 19:24:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D947C3849DE
	for <lists+usrp-users@lfdr.de>; Tue,  5 Oct 2021 13:24:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="f0EwAi6Y";
	dkim-atps=neutral
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	by mm2.emwd.com (Postfix) with ESMTPS id BCAC3384653
	for <usrp-users@lists.ettus.com>; Tue,  5 Oct 2021 13:23:45 -0400 (EDT)
Received: by mail-lf1-f51.google.com with SMTP id j5so84306179lfg.8
        for <usrp-users@lists.ettus.com>; Tue, 05 Oct 2021 10:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Bb4bDEOrdVe+X7ejN3WyR3YdYpHr6ZhyGPCtpd5cYdo=;
        b=f0EwAi6YoWDCVpqbKpxKLmlSPKaKnQ1M2BIIP5vZ2a/inFS5ndXrMzKStoMcQZT9FO
         KB0ir1+6SGG5gdbEj1ZtwxNnRIAFJ9eDBB/R5QH1IRFjGtVmUAhX4kn7NzZ0uBayb7tV
         PYp3xM+1L9DvKRqpiQDrPsuQQmpU4pGY1QwLmMbfOWidxaEgpxuOL0WcI8+lRkofwzx3
         I2awYj9P3fA36tzDVXGNkIN8DLF7h2AR6Gw3/LNL2Q3rf4Qz87kHBuYOuoZb8DH1j93c
         Oy5S0Vx01LzZ/yaYMzDnkH1uY6WEIzjVKRgFAjzAMb6YX8EACIJjHTmcr3OJ1gR0cb2V
         uXng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Bb4bDEOrdVe+X7ejN3WyR3YdYpHr6ZhyGPCtpd5cYdo=;
        b=XU5xlPK9JmXf/aNx+d5lrub+KTBBeRilvTS4M3glWrXE8ltV8bMjG4K9AUQEz6+k7a
         lVsiqndkWXQcIBQZf04ezowGELEZyH81ATd5dWgEttHkNyG6v0d2s9zScZOhUu0HDBu7
         haWNPyIWKnAK9xnWkOiu4K/je+CB9/aixJ4Bg3N6Hdo37cTpj3Fl4vZBqQek10qneJaW
         1ZWTJB5q32UQGlCdb56HH5Ty/6HftbJOpwg7mwVCXea1Uq4WyT+liLLoecS36WdO/azx
         F99zKDfB89CibWDABlyAY/Ejofm1yXCRRw1UWMwNqY8LxZhYB1ebxKD9HpQBY/cXxyp8
         8HaQ==
X-Gm-Message-State: AOAM530CAzTqgftStGYz3MrINNagczSkr0sC0okqoaUPuimTguK8hZpj
	kGLvCCuqUgY73uJNUPV83gdOl+id+B29q61ynDQ=
X-Google-Smtp-Source: ABdhPJyHVfSyy2ntJccaKn16lOzqFqB1vqLG/4QeNlk8cR5Rhly9bBJVZLpdbCVrvAG7LP7S/tH068pHkGLcTSltcZc=
X-Received: by 2002:a05:6512:1287:: with SMTP id u7mr4919386lfs.614.1633454624328;
 Tue, 05 Oct 2021 10:23:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAAopBk9+n6aMqQ+n27nezBeXc9AvtT89euJRWHDo39RcfzSLAw@mail.gmail.com>
 <fe7012b8-f339-c7f3-54d4-09c0fd1795cc@gmail.com> <CAAopBk9EyA4Pu4LFQ3LAV6mMKpKJ9NYLQmN4mmyKapb80Q2uxQ@mail.gmail.com>
 <5bd467ce-f7ba-6305-e291-bea7895f107f@gmail.com>
In-Reply-To: <5bd467ce-f7ba-6305-e291-bea7895f107f@gmail.com>
From: Huang Wei <weizardry@gmail.com>
Date: Tue, 5 Oct 2021 18:23:33 +0100
Message-ID: <CAAopBk8wtL4QsEKv3NUhxB3Bk=uHoj5i3ZvWvO991hDVSApmdg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: H25V3GT6S56JWXZQHRFDAQZXZPHGGRWL
X-Message-ID-Hash: H25V3GT6S56JWXZQHRFDAQZXZPHGGRWL
X-MailFrom: weizardry@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reset set_start_time of USRP at runtime
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H25V3GT6S56JWXZQHRFDAQZXZPHGGRWL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2108846838017163476=="

--===============2108846838017163476==
Content-Type: multipart/alternative; boundary="000000000000a3cd1805cd9e4ae5"

--000000000000a3cd1805cd9e4ae5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OK, I will check that, thank you very much!


Marcus D. Leech <patchvonbraun@gmail.com> =E4=BA=8E2021=E5=B9=B410=E6=9C=88=
5=E6=97=A5=E5=91=A8=E4=BA=8C =E4=B8=8B=E5=8D=884:22=E5=86=99=E9=81=93=EF=BC=
=9A

> On 2021-10-05 10:55 a.m., Huang Wei wrote:
> > Hi Marcus,
> >
> > Initially when I create the USRP object, I synchronize USRP to
> > external PPS though self.usrp1.set_time_next_pps(round(time.time())+1)
> > method.
> > and in the function get_start(), I wrote like:
> >   self.stop()
> >   self.wait()
> >   self.disconnect_all()
> >   #self.usrp1.stop()
> >   #self.usrp1.start()
> >   self.usrp1.set_start_time(self.usrp1.get_time_now() +
> > uhd.time_spec_t(5))
> >   self.connect(...)
> >   self.connect(...)
> >   self.connect(filesink, self.usrp1)
> >   self.start
> > I wish the USRP stops, and restarts transmission 5 sec later every
> > time I run the get_start() function. But the USRP doesn't stop, and
> > will produces LLLLLLLLLL on the screen after around 5 sec. If I use
> > " self.usrp1.set_command_time(self.usrp1.get_time_now() +
> > uhd.time_spec_t(5))" instead of set_start_time(), it does stop
> > transmission for 5 sec and start, but it's not the correct command for
> > start time.
> >
> > Do you have any advice how can I make it work?
> > I appreciate all your help!
> >
> > Best regards,
> > Wei
> >
> I suspect that you're better off looking into tagged streams in Gnu
> Radio that support "bursty" transmission:
>
> https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html
>
> You may get more help on that from the discuss-gnuradio mailing list.
>
>

--000000000000a3cd1805cd9e4ae5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">OK, I will check that, thank you very much!<div><br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbrau=
n@gmail.com</a>&gt; =E4=BA=8E2021=E5=B9=B410=E6=9C=885=E6=97=A5=E5=91=A8=E4=
=BA=8C =E4=B8=8B=E5=8D=884:22=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">On 2021-10-05 10:55 a.m., Huang We=
i wrote:<br>
&gt; Hi Marcus,<br>
&gt;<br>
&gt; Initially when I create the USRP object, I synchronize USRP to <br>
&gt; external PPS though self.usrp1.set_time_next_pps(round(time.time())+1)=
 <br>
&gt; method.<br>
&gt; and in the function get_start(), I wrote like:<br>
&gt; =C2=A0 self.stop()<br>
&gt; =C2=A0 self.wait()<br>
&gt; =C2=A0 self.disconnect_all()<br>
&gt; =C2=A0 #self.usrp1.stop()<br>
&gt; =C2=A0 #self.usrp1.start()<br>
&gt; =C2=A0 self.usrp1.set_start_time(self.usrp1.get_time_now() + <br>
&gt; uhd.time_spec_t(5))<br>
&gt; =C2=A0 self.connect(...)<br>
&gt; =C2=A0 self.connect(...)<br>
&gt; =C2=A0 self.connect(filesink, self.usrp1)<br>
&gt; =C2=A0 self.start<br>
&gt; I wish the USRP stops, and restarts transmission 5 sec later every <br=
>
&gt; time I run the get_start() function. But the USRP doesn&#39;t stop, an=
d <br>
&gt; will produces LLLLLLLLLL on the screen after around 5 sec. If I use <b=
r>
&gt; &quot;=C2=A0self.usrp1.set_command_time(self.usrp1.get_time_now() + <b=
r>
&gt; uhd.time_spec_t(5))&quot; instead of set_start_time(), it does stop <b=
r>
&gt; transmission for 5 sec and start, but it&#39;s not the correct command=
 for <br>
&gt; start time.<br>
&gt;<br>
&gt; Do you have any advice how can I make it work?<br>
&gt; I appreciate all your help!<br>
&gt;<br>
&gt; Best regards,<br>
&gt; Wei<br>
&gt;<br>
I suspect that you&#39;re better off looking into tagged streams in Gnu <br=
>
Radio that support &quot;bursty&quot; transmission:<br>
<br>
<a href=3D"https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sin=
k.html" rel=3D"noreferrer" target=3D"_blank">https://www.gnuradio.org/doc/d=
oxygen/classgr_1_1uhd_1_1usrp__sink.html</a><br>
<br>
You may get more help on that from the discuss-gnuradio mailing list.<br>
<br>
</blockquote></div>

--000000000000a3cd1805cd9e4ae5--

--===============2108846838017163476==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2108846838017163476==--
