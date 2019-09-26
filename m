Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 217AEBF227
	for <lists+usrp-users@lfdr.de>; Thu, 26 Sep 2019 13:52:47 +0200 (CEST)
Received: from [::1] (port=42712 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iDSKA-000330-Jf; Thu, 26 Sep 2019 07:52:42 -0400
Received: from mail-ed1-f53.google.com ([209.85.208.53]:36202)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <daniel.jepson@ettus.com>)
 id 1iDSK7-0002nS-5F
 for usrp-users@lists.ettus.com; Thu, 26 Sep 2019 07:52:39 -0400
Received: by mail-ed1-f53.google.com with SMTP id h2so1705027edn.3
 for <usrp-users@lists.ettus.com>; Thu, 26 Sep 2019 04:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=XJIJ85BnzmjUQ9fJPNdIsW28rCmf8TpElEvEqLRxs8w=;
 b=v8bDbggld/m51Pdt34CD86+IX6YCP3b+yXqM2s4CaOrLPw+U7FHNrj0tn6gCtZzKXO
 2ZEBLOcfQ/JEIHrZ0/EC03cpSIardn+o7b+AQOn3Loie1mQNrNb9eyB5tOSad8N1SwPb
 bbzm1r5M/SrbZU+QEsoAsnmq/SrqGAZ1/Bjals+5QEmW0Rgow9SOGEixegievPTWEUpO
 NiI/27MrgGfMhpNt8mZu5h03uDbMMT0A0Mk2H4nR5QfInhEBiFrU2vSHvj7tvw/VDZTb
 GLW+Yi5OZhDIHoyrEzbCgdMM7QDdYkONqPxwxwdifM7yO9CIP6RxBJJ/pXcWW6a34oRO
 xjnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=XJIJ85BnzmjUQ9fJPNdIsW28rCmf8TpElEvEqLRxs8w=;
 b=fHBaUdBgCiPw3iFf89hsTFo6XXNJLGLKJEf18jduXtXoJYw2wnB+pko/MWIdirknJe
 twR2jJRaB1JhrHDzs9lQKIQi3yXXuSyTNjraNYANvE0cn7Pkpd92BhkLI1PeP3YN8Mjf
 uyPNVY21YkFxOptqApxx8+7mzMct31T9tlYDxhtrOwW8WjIQ5HHhokLsMg8cjm6URBsz
 F/cMGsMnSlp3M7ddKgPm7Nj4IOaqFIaF0SU04oFn208Cy79SRJOMIYGtwExRJsEAfi4O
 30gqoqNp6MShK84NtcGbBP8VT3hJBIGCYpl7mdzoTYA2NgJsqx+Nqm0z7H1Bgy1qH2sT
 3atQ==
X-Gm-Message-State: APjAAAWoQMPYMw55vw8Ni/XJi377ewVSND2uXZYwXgPd0MLuiBzPzBA6
 uFtkWG35a/FxcH3kKvRVSFaITclTB/V858md6CB9EfRGPFFExg==
X-Google-Smtp-Source: APXvYqxZv4SP0CpmucaoX98WvJxjwsV3GmaGxeSeNWosC8mBZ20TvzpltDNT14S6G+7zVwmlxo2ybDQ0eTyVQJ2bSWE=
X-Received: by 2002:a50:d758:: with SMTP id i24mr3062284edj.246.1569498717719; 
 Thu, 26 Sep 2019 04:51:57 -0700 (PDT)
MIME-Version: 1.0
References: <4f9463d7bc9747498b2f2bda40f7b2ec@tudelft.nl>
 <512807eb-9b64-0580-3425-b6016754157a@ihf.tu-bs.de>
In-Reply-To: <512807eb-9b64-0580-3425-b6016754157a@ihf.tu-bs.de>
Date: Thu, 26 Sep 2019 13:51:46 +0200
Message-ID: <CA+Zwmn5tGM_i2Y-PtFAKiGtXY+9pMUMZ5LWV82bA8KnvpmHTTg@mail.gmail.com>
To: Usrp Users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] One sample - 5 ns delay between the two RF
 signals/ X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Daniel Jepson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Daniel Jepson <daniel.jepson@ettus.com>
Content-Type: multipart/mixed; boundary="===============6403212365768884302=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============6403212365768884302==
Content-Type: multipart/alternative; boundary="0000000000008ba2c4059373653b"

--0000000000008ba2c4059373653b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Fabian, Cherif,

What is the external PPS device you are using?

-Daniel

On Thu, Sep 26, 2019 at 9:18 AM Fabian Schwartau via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I have very similar problem with X310. I am running a C++ application,
> so I have a bit more flexibility I guess. After I do the
> set_time_unknown_pps to sync to the 1PPS signal, I run the function
> get_time_last_pps and it sometimes has an offset of 10ns (it was 5ns for
> an old firmware due to a bug, which was fixed a few weeks ago). If that
> is the case I just do the sync again until the offset is zero.
> I don't know if it is an firmawre problem or if it is because the signal
> integrety of the 1PPS signal is not good enough.
> Maybe that is also a solution for you.
> Best regards,
> Fabian
>
> Am 25.09.2019 um 11:16 schrieb Cherif Diouf via USRP-users:
> > Hello,
> > I am working with the X310 USRP. I have two identical custom blocks
> > feeding the RF frontends.
> >
> > flowchart
> > -----------------
> > HW Block1 -> RF0-TX1 |---<
> > HW Block2 -> RF1-TX1 |---<
> >
> > The system is synchronized to an external PPS reference. The sampling
> > rate is 200 MSps and the signal bandwidth is 160 MHz for both channels.
> > The two HW blocks start  transmitting at the exactly same time. Time
> > resolution is 5ns.
> > In most cases the two outgoing RF signals present a 1ns time offset.
> > Which can be understood as a phase offset.
> >
> > But From time to time there is a 6ns delay between the channels. I
> > assume this 6ns comprises the 1ns delay due to phase offset + 5 ns dela=
y
> > due to misalignment of outgoing samples.
> >
> > What could be the origin of this one sample misalignement? Is it a way
> > to fix it? Or working close to the limits of the device should such
> > behavior be expected?
> >
> > Thanks in advance
> >
> > Best Regards
> > Cherif
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
>
> --
> --------------------------------------------------
> M.-Sc. Fabian Schwartau
> Technische Universit=C3=A4t Braunschweig
> Institut f=C3=BCr Hochfrequenztechnik
> Schleinitzstr. 22
> 38106 Braunschweig
> Germany
>
> Tel.:   +49-(0)531-391-2017
> Fax:    +49-(0)531-391-2045
> Email:  fabian.schwartau@ihf.tu-bs.de
> WWW:    http://www.tu-braunschweig.de/ihf
> --------------------------------------------------
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--=20

Daniel Jepson

Digital Hardware Engineer

National Instruments



O: +1.512.683.6163

daniel.jepson@ni.com

--0000000000008ba2c4059373653b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Fabian, Cherif,<div><br></div><div>What is the external=
 PPS device you are using?</div><div><br></div><div>-Daniel</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Se=
p 26, 2019 at 9:18 AM Fabian Schwartau via USRP-users &lt;<a href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
I have very similar problem with X310. I am running a C++ application, <br>
so I have a bit more flexibility I guess. After I do the <br>
set_time_unknown_pps to sync to the 1PPS signal, I run the function <br>
get_time_last_pps and it sometimes has an offset of 10ns (it was 5ns for <b=
r>
an old firmware due to a bug, which was fixed a few weeks ago). If that <br=
>
is the case I just do the sync again until the offset is zero.<br>
I don&#39;t know if it is an firmawre problem or if it is because the signa=
l <br>
integrety of the 1PPS signal is not good enough.<br>
Maybe that is also a solution for you.<br>
Best regards,<br>
Fabian<br>
<br>
Am 25.09.2019 um 11:16 schrieb Cherif Diouf via USRP-users:<br>
&gt; Hello,<br>
&gt; I am working with the X310 USRP. I have two identical custom blocks <b=
r>
&gt; feeding the RF frontends.<br>
&gt; <br>
&gt; flowchart<br>
&gt; -----------------<br>
&gt; HW Block1 -&gt; RF0-TX1 |---&lt;<br>
&gt; HW Block2 -&gt; RF1-TX1 |---&lt;<br>
&gt; <br>
&gt; The system is synchronized to an external PPS reference. The sampling =
<br>
&gt; rate is 200 MSps and the signal bandwidth is 160 MHz for both channels=
.<br>
&gt; The two HW blocks start=C2=A0 transmitting at the exactly same time. T=
ime <br>
&gt; resolution is 5ns.<br>
&gt; In most cases the two outgoing RF signals present a 1ns time offset. <=
br>
&gt; Which can be understood as a phase offset.<br>
&gt; <br>
&gt; But From time to time there is a 6ns delay between the channels. I <br=
>
&gt; assume this 6ns comprises the 1ns delay due to phase offset + 5 ns del=
ay <br>
&gt; due to misalignment of outgoing samples.<br>
&gt; <br>
&gt; What could be the origin of this one sample misalignement? Is it a way=
 <br>
&gt; to fix it? Or working close to the limits of the device should such <b=
r>
&gt; behavior be expected?<br>
&gt; <br>
&gt; Thanks in advance<br>
&gt; <br>
&gt; Best Regards<br>
&gt; Cherif<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
<br>
-- <br>
--------------------------------------------------<br>
M.-Sc. Fabian Schwartau<br>
Technische Universit=C3=A4t Braunschweig<br>
Institut f=C3=BCr Hochfrequenztechnik<br>
Schleinitzstr. 22<br>
38106 Braunschweig<br>
Germany<br>
<br>
Tel.:=C2=A0 =C2=A0+49-(0)531-391-2017<br>
Fax:=C2=A0 =C2=A0 +49-(0)531-391-2045<br>
Email:=C2=A0 <a href=3D"mailto:fabian.schwartau@ihf.tu-bs.de" target=3D"_bl=
ank">fabian.schwartau@ihf.tu-bs.de</a><br>
WWW:=C2=A0 =C2=A0 <a href=3D"http://www.tu-braunschweig.de/ihf" rel=3D"nore=
ferrer" target=3D"_blank">http://www.tu-braunschweig.de/ihf</a><br>
--------------------------------------------------<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><p><a name=3D"SignatureSanitize=
r_SafeHtmlFilter__MailAutoSig"><span style=3D"color:black">Daniel
Jepson</span></a></p>

<p><span style=3D"color:black">Digital Hardware Engineer</span></p>

<p><span style=3D"color:black">National Instruments</span></p>

<p><span style=3D"color:black">=C2=A0</span></p>

<p><span style=3D"color:black">O: +1.512.683.6163</span></p>

<p><span style=3D"color:black"><a href=3D"mailto:daniel.jepson@ni.com" targ=
et=3D"_blank">daniel.jepson@ni.com</a></span></p></div></div>

--0000000000008ba2c4059373653b--


--===============6403212365768884302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6403212365768884302==--

