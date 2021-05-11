Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7408137A8F6
	for <lists+usrp-users@lfdr.de>; Tue, 11 May 2021 16:20:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A7391384137
	for <lists+usrp-users@lfdr.de>; Tue, 11 May 2021 10:20:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="qrdCjZAZ";
	dkim-atps=neutral
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 712BF383E36
	for <usrp-users@lists.ettus.com>; Tue, 11 May 2021 10:19:17 -0400 (EDT)
Received: by mail-ej1-f45.google.com with SMTP id b25so29983106eju.5
        for <usrp-users@lists.ettus.com>; Tue, 11 May 2021 07:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=N6hQ7GvBZAx5y/6L+qNsiJup9DbALOAr1r9PKoxKJmg=;
        b=qrdCjZAZyZzot00jYSnpfcs1eW+EmcH8hR2K7/17eWhOzGjyyx9QiPmB5BZ57HzgYF
         x9KC+oDzNAjJkxHCiwP+PCNizk2lBGW6kKxAG5/DDCb/9HZOL2l3ZNsPyRJQt9SyLhrp
         hASxhCdXfDVwyOjAjSiMaRfuEUncjDsOOjYg9qfntOrIQCChoILlNWCZ5Grgwo1FXosB
         Bf0f11PIa1cTGOcVsfPMuollmi4nGs2lvkQGxHQkYGMdQZio/a8/fUmQcLyhDkT1Em3A
         5tWeBZn5sg3spFwr9W2kaCd1UiCJubNlifm55c2HpOBR0OqhnY++dyz5sH73CmCUPIC6
         iFmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=N6hQ7GvBZAx5y/6L+qNsiJup9DbALOAr1r9PKoxKJmg=;
        b=VYIDN4ElGpsFBt5YkbL6y/U9f2LWyjQ6ckEHSSvpQMDl32i9zbbjmoQHE7yEpoPqjc
         sX+sPwGjL1bNeQOIvCAaeb4IMPw18zO2W4QLQ0RWoVKFYrNWmH7aetw7fhyDui0e21/A
         iS/ZtF8FHiH+LBJjenFLQXZMZJ2EFuXHzcp5aZ6jg06AKh6x3yUEXUfTBG9TuBJu7GqV
         bYC8sCG2XWebBuDSOzhPSiKFEkvORn3i1WNV/AzFcvcYHnKRziUxLqwlfLb2x8hRJ9e9
         MShaxWThRx/owk6oxd98n+RDGrMRK8i2WIV4qm5R3yHLrYC93MlZfXEf8f2X0uV4LPvo
         +V/g==
X-Gm-Message-State: AOAM530Uf0cBtKSbyMfnifoAea74vz9hx00B+Glt4Oi5EVg5e1tJ17SJ
	PUzAL3aaejemtM5PY01aiekLF3wtk6pWmox5OrhLDNbQ
X-Google-Smtp-Source: ABdhPJyG2lZZqMUPUoK/qFQ5UuLIPdnn2UyYBJBWDbCgcCh0echsB5M9teAqxfIMuPejlGMU5AIJVTXZh/JXfohXYn8=
X-Received: by 2002:a17:906:edcf:: with SMTP id sb15mr31496951ejb.202.1620742756216;
 Tue, 11 May 2021 07:19:16 -0700 (PDT)
MIME-Version: 1.0
References: <0c89473ac31d4a3b97c2a20cc11c54ff@external.thalesgroup.com>
 <20b1a5fa-0ed1-a7a4-6e23-4d2ebd658b50@kit.edu> <c31f00abc165454b8105b11eca161217@external.thalesgroup.com>
 <7c28722f0d0c43c9ad3f1a564fae4b86@external.thalesgroup.com>
In-Reply-To: <7c28722f0d0c43c9ad3f1a564fae4b86@external.thalesgroup.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Tue, 11 May 2021 10:19:05 -0400
Message-ID: <CAGNhwTNBB+0yqpKC3chbnvEgqVvJGqCi-kbsRe-9no5E41bCHQ@mail.gmail.com>
To: COURANT Frederique - Contractor <frederique.courant@external.thalesgroup.com>
Message-ID-Hash: HWY72Y2IU6JGSVADPVMO47PU5SXL4DZH
X-Message-ID-Hash: HWY72Y2IU6JGSVADPVMO47PU5SXL4DZH
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Marcus_M=C3=BCller?= <mueller@kit.edu>, "discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reference indefined
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HWY72Y2IU6JGSVADPVMO47PU5SXL4DZH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1482550999252874233=="

--===============1482550999252874233==
Content-Type: multipart/alternative; boundary="00000000000041c62b05c20e9489"

--00000000000041c62b05c20e9489
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Fred - In the top-level BUILD directory there will be a file
"CMakeCache.txt" where you can track down the exact variable names you need
to use for including the GR CMake variables. I think these are consistent
between different GR versions, but I really don't recall any longer & I'm
not famility with GR 3.9's CMake -- just up through GR 3.8. In that file
you can search for "GNURADIO_BLOCKS" and you'll see the "INCLUDE_DIR" or
"INCLUDE_DIRS" and "LIBRARIES" or "LIBRARY" and others. You then use the
correct CMake commands in your OOT to use those variables. If you're using
GR's modtool to create the OOT those commands should be added
automatically. Sorry I can't be more precise ... I don't have the info in
front of me, but I know that the above is what I would do so that's easy to
write :) - MLD


On Tue, May 11, 2021 at 9:35 AM COURANT Frederique - Contractor via
USRP-users <usrp-users@lists.ettus.com> wrote:

> I have tried to add ${GNURADIO_BLOCKS_INCLUDE_DIRS} and
> ${GR_BLOCKS_INCLUDE_DIRS} without any success.
>
> Anyone could give an example of CMakeList that use uhd and gnuradio modul=
e
> please ?
>
> Thanks.
>
> Regards.
>
> Fred
>
> -----Message d'origine-----
> De : Discuss-gnuradio <discuss-gnuradio-bounces+frederique.courant=3D
> external.thalesgroup.com@gnu.org> De la part de COURANT Frederique -
> Contractor
> Envoy=C3=A9 : mardi 11 mai 2021 13:55
> =C3=80 : Marcus M=C3=BCller <mueller@kit.edu>; discuss-gnuradio@gnu.org
> Objet : RE: Reference indefined
>
> Sorry I would like to say 3.7.11.
>
> If I have understand I need to add ${GNURADIO_BLOCKS_INCLUDE_DIRS} in my
> CMakeFiles that's all ?
>
> Thank you very much for your help.
>
> Regards.
>
> Fred
>
> -----Message d'origine-----
> De : Discuss-gnuradio <discuss-gnuradio-bounces+frederique.courant=3D
> external.thalesgroup.com@gnu.org> De la part de Marcus M=C3=BCller Envoy=
=C3=A9 :
> mardi 11 mai 2021 13:39 =C3=80 : discuss-gnuradio@gnu.org Objet : Re:
> Reference indefined
>
> Hi Fred,
>
> indeed, your link_directories need to include the BLOCKS library, not jus=
t
> RUNTIME, when you're linking against any code in gr::blocks.
>
> I might be a bit behind on current GNU Radio developments, but GNU Radio
> 3.11 isn't even in development yet, far as I can tell. Is it possible
> you're referring to 3.10.0.git?
>
> Best regards,
> Marcus
>
> On 11.05.21 13:30, COURANT Frederique - Contractor wrote:
> > Hello Users,
> >
> >
> >
> > I try to develop my own program in C++ with UHD3.14 and gnuradio 3.11.
> >
> > I have no problem to compile blocks that are including in uhd but when
> > I want to compile with a sig_source or magphase_to_complex blocks
> > that are including in Gnuradio blocks I have the following error :
> >
> > Main.cpp(.text+0x1351) : r=C3=A9f=C3=A9rence indefinite vers "
> > gr::analog::sig_source_c::make(double, gr::analog::gr_waveform_t, doubl=
e
> int) "
> >
> > Main.cpp(.text+0x1351) : r=C3=A9f=C3=A9rence indefinite vers "
> > gr::blocks::magphase_to_complex::make(double, gr::analog::gr_waveform_t=
,
> double int) "
> >
> >
> >
> > In think I forgot something in my CMakeFiles, I have
> > include_directories(${GNURADIO_ALL_INCLUDE_DIRS}) and
> > link_directories(${GNURADIO_RUNTIME_LIBRARY_DIRS})
> >
> >
> >
> > Someone could help me please or give an example of CMakeFiles that are
> > using UHD and Gnuradio for compile a program.
> >
> >
> >
> > Thanks for your help.
> >
> >
> >
> > Regards.
> >
> >
> >
> > Fred
> >
> >
> >
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000041c62b05c20e9489
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Fred - In the top-level BUILD directory there will be a=
 file &quot;CMakeCache.txt&quot; where you can track down the exact variabl=
e names you need to use for including the GR CMake variables. I think these=
 are consistent between different GR versions, but I really don&#39;t recal=
l any longer &amp; I&#39;m not famility with GR 3.9&#39;s CMake -- just up =
through GR 3.8. In that file you can search for &quot;GNURADIO_BLOCKS&quot;=
 and you&#39;ll see the &quot;INCLUDE_DIR&quot; or &quot;INCLUDE_DIRS&quot;=
 and &quot;LIBRARIES&quot; or &quot;LIBRARY&quot; and others. You then use =
the correct CMake commands in your OOT to use those variables. If you&#39;r=
e using GR&#39;s modtool to create the OOT those commands should be added a=
utomatically. Sorry I can&#39;t be more precise ... I don&#39;t have the in=
fo in front of=C2=A0me, but I know that the above is what I would do so tha=
t&#39;s easy to write :) - MLD<br><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 11, 2021 at 9:35 AM COURA=
NT Frederique - Contractor via USRP-users &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">I have tried to add ${GNURADIO_B=
LOCKS_INCLUDE_DIRS} and ${GR_BLOCKS_INCLUDE_DIRS} without any success.<br>
<br>
Anyone could give an example of CMakeList that use uhd and gnuradio module =
please ?<br>
<br>
Thanks.<br>
<br>
Regards.<br>
<br>
Fred<br>
<br>
-----Message d&#39;origine-----<br>
De=C2=A0: Discuss-gnuradio &lt;discuss-gnuradio-bounces+frederique.courant=
=3D<a href=3D"mailto:external.thalesgroup.com@gnu.org" target=3D"_blank">ex=
ternal.thalesgroup.com@gnu.org</a>&gt; De la part de COURANT Frederique - C=
ontractor<br>
Envoy=C3=A9=C2=A0: mardi 11 mai 2021 13:55<br>
=C3=80=C2=A0: Marcus M=C3=BCller &lt;<a href=3D"mailto:mueller@kit.edu" tar=
get=3D"_blank">mueller@kit.edu</a>&gt;; <a href=3D"mailto:discuss-gnuradio@=
gnu.org" target=3D"_blank">discuss-gnuradio@gnu.org</a><br>
Objet=C2=A0: RE: Reference indefined<br>
<br>
Sorry I would like to say 3.7.11.<br>
<br>
If I have understand I need to add ${GNURADIO_BLOCKS_INCLUDE_DIRS} in my CM=
akeFiles that&#39;s all ?<br>
<br>
Thank you very much for your help.<br>
<br>
Regards.<br>
<br>
Fred<br>
<br>
-----Message d&#39;origine-----<br>
De=C2=A0: Discuss-gnuradio &lt;discuss-gnuradio-bounces+frederique.courant=
=3D<a href=3D"mailto:external.thalesgroup.com@gnu.org" target=3D"_blank">ex=
ternal.thalesgroup.com@gnu.org</a>&gt; De la part de Marcus M=C3=BCller Env=
oy=C3=A9=C2=A0: mardi 11 mai 2021 13:39 =C3=80=C2=A0: <a href=3D"mailto:dis=
cuss-gnuradio@gnu.org" target=3D"_blank">discuss-gnuradio@gnu.org</a> Objet=
=C2=A0: Re: Reference indefined<br>
<br>
Hi Fred,<br>
<br>
indeed, your link_directories need to include the BLOCKS library, not just =
RUNTIME, when you&#39;re linking against any code in gr::blocks.<br>
<br>
I might be a bit behind on current GNU Radio developments, but GNU Radio 3.=
11 isn&#39;t even in development yet, far as I can tell. Is it possible you=
&#39;re referring to 3.10.0.git?<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On 11.05.21 13:30, COURANT Frederique - Contractor wrote:<br>
&gt; Hello Users,<br>
&gt; <br>
&gt; =C2=A0<br>
&gt; <br>
&gt; I try to develop my own program in C++ with UHD3.14 and gnuradio 3.11.=
<br>
&gt; <br>
&gt; I have no problem to compile blocks that are including in uhd but when=
 <br>
&gt; I want to compile with a sig_source or magphase_to_complex blocks =C2=
=A0<br>
&gt; that are including in Gnuradio blocks I have the following error :<br>
&gt; <br>
&gt; Main.cpp(.text+0x1351) : r=C3=A9f=C3=A9rence indefinite vers &quot;=C2=
=A0<br>
&gt; gr::analog::sig_source_c::make(double, gr::analog::gr_waveform_t, doub=
le int) &quot;<br>
&gt; <br>
&gt; Main.cpp(.text+0x1351) : r=C3=A9f=C3=A9rence indefinite vers &quot;=C2=
=A0<br>
&gt; gr::blocks::magphase_to_complex::make(double, gr::analog::gr_waveform_=
t, double int) &quot;<br>
&gt; <br>
&gt; =C2=A0<br>
&gt; <br>
&gt; In think I forgot something in my CMakeFiles, I have<br>
&gt; include_directories(${GNURADIO_ALL_INCLUDE_DIRS}) and<br>
&gt; link_directories(${GNURADIO_RUNTIME_LIBRARY_DIRS})<br>
&gt; <br>
&gt; =C2=A0<br>
&gt; <br>
&gt; Someone could help me please or give an example of CMakeFiles that are=
 <br>
&gt; using UHD and Gnuradio for compile a program.<br>
&gt; <br>
&gt; =C2=A0<br>
&gt; <br>
&gt; Thanks for your help.<br>
&gt; <br>
&gt; =C2=A0<br>
&gt; <br>
&gt; Regards.<br>
&gt; <br>
&gt; =C2=A0<br>
&gt; <br>
&gt; Fred<br>
&gt; <br>
&gt; =C2=A0<br>
&gt; <br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000041c62b05c20e9489--

--===============1482550999252874233==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1482550999252874233==--
