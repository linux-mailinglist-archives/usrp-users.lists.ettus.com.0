Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D7B3C269B
	for <lists+usrp-users@lfdr.de>; Fri,  9 Jul 2021 17:06:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 403F2384B82
	for <lists+usrp-users@lfdr.de>; Fri,  9 Jul 2021 11:06:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aC56W2Xu";
	dkim-atps=neutral
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	by mm2.emwd.com (Postfix) with ESMTPS id E96FD38487A
	for <usrp-users@lists.ettus.com>; Fri,  9 Jul 2021 11:05:32 -0400 (EDT)
Received: by mail-io1-f47.google.com with SMTP id b1so12779648ioz.8
        for <usrp-users@lists.ettus.com>; Fri, 09 Jul 2021 08:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cVwzhdhGvftpZxtDLmICOk8UH2LsIwg9UxzKNrgWsPU=;
        b=aC56W2XugtqGWpFcg2CQxNIlDEjt/jPD+7rNnR+75Oda90ofvRY/fLCY0WZWx8pNCJ
         uFwFk6Eym5g5cM/q//bVwNanUNMyHjRVznpZQtvIBZ0FQREk/4agpi20Ta+wcePGM/S9
         CIIazF+2P6L5FhCqbneGlUIpcGrL3Y1+uIztzsEoF5BN2bZBxaykYfmJP/abE9PyVJYy
         eFI5qC7wawBKdGPYwGy4zySZk8Xv6zDBA2VxsizkyUUxn/uRQTB+AD8d0FEUrMVN47En
         yTkVl5q322Ymw71AZuI8vNKCvhyp8EExBjHjEXPEzcd3vo9xA1O7oRGg8/jGp+Wkoblu
         erEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cVwzhdhGvftpZxtDLmICOk8UH2LsIwg9UxzKNrgWsPU=;
        b=dT5PpEbBKMYIBpa5O+dkN3NuiDwk8dp5w2tvQo8bsgesUyu9ElN9nQhEmaJMbG1d0N
         wEJMhHjbjeA07og2gvYlrifDlSic1yyG/rqTm2srdmfvombTj075OyqFwoFtuzi8dp1c
         WL9dGiRSd36u/5YIx1q4MjsdzCpI8OD2uKl0rfb/M4hPrzv5RNn7yf1xLYDcSOqdijET
         b4mqP0bgbcAwVGqEsx2K90iBgCIwCblS+Lkjj6ocl9Q1KtwSrf17sbO0wQKAADXxsL00
         ln/uM7Ad1xMDu+CO9Mgq3+Rex+LxzYHO71lS7DfYGOggqpMWVbBq4WmxggQXQta3mhJA
         +u8Q==
X-Gm-Message-State: AOAM533kQdYTHqiFpLVnXoJEIRzSyQW+992m9IgTpelxMYIzGa0g+JR9
	oE0jICD3r+cm3Lpdfjsp+tWgs176CVL5T//56zw=
X-Google-Smtp-Source: ABdhPJwZ4GMLxlLc0ObKOSxhCT3ReLAmQGmLvOAG2ubw9CF5TC3nVmNk0lKMawOuOc5VeaOx+mOZRhUt/qEtFqLWg0s=
X-Received: by 2002:a02:cbde:: with SMTP id u30mr14377886jaq.52.1625843131055;
 Fri, 09 Jul 2021 08:05:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAE0dfYbKnA20uy2Db3sYBZ0whUpzTexv1HAOWG5Yb7H54AAqbQ@mail.gmail.com>
 <CAG==tssT9Jk5Z02ne4Jnpgx0LGTy+kh0jG6EE7T3aC3c=ABqmQ@mail.gmail.com>
In-Reply-To: <CAG==tssT9Jk5Z02ne4Jnpgx0LGTy+kh0jG6EE7T3aC3c=ABqmQ@mail.gmail.com>
From: Alex Humberstone <alex.m.humberstone@gmail.com>
Date: Fri, 9 Jul 2021 10:04:55 -0500
Message-ID: <CAE0dfYbo9mnHeznzY3K_U=68qhaxZ+-aRTXzsd7zuv+339WQ8w@mail.gmail.com>
To: Dan <thebouleoffools@gmail.com>
Message-ID-Hash: KMTTC54G2B4WPCWFIHOJDRNWFIMMP7VN
X-Message-ID-Hash: KMTTC54G2B4WPCWFIHOJDRNWFIMMP7VN
X-MailFrom: alex.m.humberstone@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Any problems building and running UHD 4.0 on Ubuntu 21.04?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KMTTC54G2B4WPCWFIHOJDRNWFIMMP7VN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1758095418973368807=="

--===============1758095418973368807==
Content-Type: multipart/alternative; boundary="00000000000049806b05c6b21a38"

--00000000000049806b05c6b21a38
Content-Type: text/plain; charset="UTF-8"

Thanks for the response, Dan!

Sincerely,
Alex-M-Humberstone
PhD Student
Klipsch School of Electrical Engineering
New Mexico State University (NMSU)
Las Cruces, New Mexico, USA



On Wed, 16 Jun 2021 at 12:41, Dan <thebouleoffools@gmail.com> wrote:

> I am currently running UHD 4.0 with Gnuradio 3.8.3.0 on Ubuntu 21.04. I
> had some amount of difficulty, as the installation instructions didn't
> quite capture all the idiosyncrasies of library incompatibilities and bugs,
> particularly during the cross-compile for the E320. If I remember right, I
> needed to use Python 3.7.6, dpdk 18.11.11, and use the external volk
> library that is in the Ubuntu 21.04 repository (libvolk2-dev 2.4.1-2)
> instead of the one that was in the gnuradio git source. If you don't need
> to cross compile, the host machine compile should work fine.
>
> -Dan
>
> On Wed, Jun 16, 2021 at 11:21 AM Alex Humberstone <
> alex.m.humberstone@gmail.com> wrote:
>
>> We got a new powerful Dell desktop for the lab here, and we want to
>> put the latest Ubuntu 21.04 on it. But will UHD 4.0 build from source and
>> run properly on Ubuntu 21.04? Are there any known issues? Does anyone
>> already have this running successfully? Thanks in advance for the help, and
>> for potentially saving me tons of time!
>>
>> Sincerely,
>> Alex-M-Humberstone
>> PhD Student
>> Klipsch School of Electrical Engineering
>> New Mexico State University (NMSU)
>> Las Cruces, New Mexico, USA
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>
> --
> Dan "The Man Himself" Brunski
>

--00000000000049806b05c6b21a38
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e;font-size:large">Thanks for the response, Dan!</div><div class=3D"gmail_d=
efault" style=3D"font-family:monospace;font-size:large"><br></div><div><div=
 dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><=
div dir=3D"ltr"><font size=3D"4"><span style=3D"font-family:monospace">Sinc=
erely,<br></span></font><div><font size=3D"4"><span style=3D"font-family:mo=
nospace">Alex-M-Humberstone</span></font></div><div><font size=3D"4"><span =
style=3D"font-family:monospace">PhD Student</span></font></div><div><font s=
ize=3D"4"><span style=3D"font-family:monospace">Klipsch School of Electrica=
l Engineering<br></span></font></div><div><font size=3D"4"><span style=3D"f=
ont-family:monospace">New Mexico State University (NMSU)<br><span><span>Las=
 Cruces, </span></span>New Mexico, USA</span></font></div><div><font size=
=3D"4"><span style=3D"font-family:monospace"><br></span></font></div><div><=
font size=3D"4"><span style=3D"font-family:monospace"></span></font></div><=
/div></div></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Wed, 16 Jun 2021 at 12:41, Dan &lt;<a href=3D"mailt=
o:thebouleoffools@gmail.com">thebouleoffools@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
>I am currently running UHD 4.0 with Gnuradio 3.8.3.0 on Ubuntu 21.04. I ha=
d some amount of difficulty, as the installation instructions didn&#39;t qu=
ite capture all the idiosyncrasies of library incompatibilities and bugs, p=
articularly during the cross-compile for the E320. If I remember right, I n=
eeded to use Python 3.7.6, dpdk 18.11.11, and use the external volk library=
 that is in the Ubuntu 21.04 repository (libvolk2-dev 2.4.1-2) instead of t=
he one that was in the gnuradio git source. If you don&#39;t need to cross =
compile, the host machine compile should work fine.</div><div><br></div><di=
v>-Dan<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Jun 16, 2021 at 11:21 AM Alex Humberstone &lt;<a hr=
ef=3D"mailto:alex.m.humberstone@gmail.com" target=3D"_blank">alex.m.humbers=
tone@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-f=
amily:monospace;font-size:large">We got a new powerful Dell desktop for the=
 lab here, and we want to put=C2=A0the latest Ubuntu 21.04 on it. But will =
UHD 4.0 build from source and run properly on Ubuntu=C2=A021.04? Are there =
any known issues? Does anyone already have this running successfully?=C2=A0=
Thanks=C2=A0in advance for the help, and for potentially saving me tons of =
time!</div><div class=3D"gmail_default" style=3D"font-family:monospace;font=
-size:large"><br></div><div><div dir=3D"ltr"><div dir=3D"ltr"><font size=3D=
"4"><span style=3D"font-family:monospace">Sincerely,<br></span></font><div>=
<font size=3D"4"><span style=3D"font-family:monospace">Alex-M-Humberstone</=
span></font></div><div><font size=3D"4"><span style=3D"font-family:monospac=
e">PhD Student</span></font></div><div><font size=3D"4"><span style=3D"font=
-family:monospace">Klipsch School of Electrical Engineering<br></span></fon=
t></div><div><font size=3D"4"><span style=3D"font-family:monospace">New Mex=
ico State University (NMSU)<br><span><span>Las Cruces, </span></span>New Me=
xico, USA</span></font></div><div><font size=3D"4"><span style=3D"font-fami=
ly:monospace"><br></span></font></div><div><font size=3D"4"><span style=3D"=
font-family:monospace"></span></font></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr">Dan &quot;=
The Man Himself&quot; Brunski<br></div>
</blockquote></div>

--00000000000049806b05c6b21a38--

--===============1758095418973368807==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1758095418973368807==--
