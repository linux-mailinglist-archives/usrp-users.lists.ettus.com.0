Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 064D6117B35
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2019 00:08:10 +0100 (CET)
Received: from [::1] (port=37176 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieS8J-0007By-SM; Mon, 09 Dec 2019 18:08:03 -0500
Received: from mail-lf1-f43.google.com ([209.85.167.43]:44011)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saeidh@gmail.com>) id 1ieS8F-00078f-PD
 for usrp-users@lists.ettus.com; Mon, 09 Dec 2019 18:07:59 -0500
Received: by mail-lf1-f43.google.com with SMTP id 9so12086170lfq.10
 for <usrp-users@lists.ettus.com>; Mon, 09 Dec 2019 15:07:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IGvshdtEYwB4pDE23ve5TLcZo954QxgtX54IotWYq6w=;
 b=NqvhIYNf0AC6Qi9wegxcaEsSpvO9JdTV/VvZ7oTBtljMB65XjRStx9FkWJj79JVRBn
 guqhcwzRm3tzPwGkVvcSGnRsot4Q5LK7YGuJTjQFTJbnIfgP5ec20TxRgOzzXZfxPkWs
 p13ktAwGTM8mnstc8bSLt5UvnvoiFP/2P8IiW85dRnoYj7SmT7GrI0lkl+QMSSxWg1wF
 FWM5m75K5g1vYuqu4cutIOi5rJumzeppKTYG44RV/0ugNo2ps+RHdv9WV52HQZ4XAslH
 Vv96OhQXswCXGWQEv/AdesWYzuQDcedXYlSvEFvjAonCxxgOcP2+/cYF60t8mbrjp8Wj
 T0TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IGvshdtEYwB4pDE23ve5TLcZo954QxgtX54IotWYq6w=;
 b=Vzw8JO9pqh66ns2O5BNS7CEJeQtRgbF5K3XUHmwtLQ8MvPs0Q5t/t9b4NQDH7OOOhb
 KKPXls69n0TCWA1ZIdyFHrCya7FzvFakPNS8GHodkjOub0RY2nwc1RLPFdytHJMikl73
 2QFCwDy1uOpRxBO7ytQuolxrsHAdjbf1sxbGMF7wNIqWQpPoZcSDDMsSvvIHbSUgDBFs
 Qqu9DbucK1yqJgIVDaTEunbnfvhnEIRUCbfp/5JDoqEB9bcwZHcuEbqGPcON6SEaoUkQ
 wP4unMBM/Wr23XMlWPRBZStrouL5TBhXmtIPleWBHfcJcIjb9LVm8Gj+4wI+iWQ7aMGN
 THkg==
X-Gm-Message-State: APjAAAWR4cl00GfT6abxPFh5TgM956oGIaG7cVn30UKnM12qfuizsqzc
 6Yu3NNuwDOKOfB4miXhmlYlxddvcpN3sGbXTu1E=
X-Google-Smtp-Source: APXvYqwQCiJf2WE+vmTO6X//aMG4xVMHGxaHolAbMnBnIqFJLz/DOKX4TVXk/cYaxTZOo7lUSEpfWnMIox7UPoiD3sE=
X-Received: by 2002:a19:c210:: with SMTP id l16mr17910790lfc.35.1575932838316; 
 Mon, 09 Dec 2019 15:07:18 -0800 (PST)
MIME-Version: 1.0
References: <CANQ3h38Ld+PabG4QosHwhyhg4=BYWBC+uEyhZDrTUstaxNAT7g@mail.gmail.com>
 <2d9189fb-9713-f432-e827-c28336f68db4@ihf.tu-bs.de>
In-Reply-To: <2d9189fb-9713-f432-e827-c28336f68db4@ihf.tu-bs.de>
Date: Mon, 9 Dec 2019 18:06:35 -0500
Message-ID: <CANQ3h38SDVKKH0gSmtZ5k2KruMPT_xQvmzVs1Dywi2YcDx0n=Q@mail.gmail.com>
To: Fabian Schwartau <fabian.schwartau@ihf.tu-bs.de>
Subject: Re: [USRP-users] Libuhd issues - "uhd_find_devices: error while
 loading shared libraries"
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Saeid Hashemi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Saeid Hashemi <saeidh@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3046917616389870539=="
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

--===============3046917616389870539==
Content-Type: multipart/alternative; boundary="000000000000048f2a05994d75bd"

--000000000000048f2a05994d75bd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for your advice Fabian!

It seems there is no package called libuhd, just the following versions:
libuhd003     libuhd3.14.0  libuhd-dev

So I did:

$ sudo dpkg -P libuhd3.14.0
(Reading database ... 291299 files and directories currently installed.)
Removing libuhd3.14.0:amd64 (3.14.0.0-0ubuntu1~trusty1) ...
Purging configuration files for libuhd3.14.0:amd64
(3.14.0.0-0ubuntu1~trusty1) ...
Processing triggers for libc-bin (2.19-0ubuntu6.15) ...
$ sudo apt-get install libuhd3.14.1

And now UHD tools work, also within the LTE software, but they won't find
my B210 saying:

[INFO] [UHD] linux; GNU C++ version 4.8.4; Boost_105400;
UHD_3.14.1.1-release
Error: LookupError: KeyError: No devices found for ----->
Empty Device Address

Regards,
Saeid




On Fri, Dec 6, 2019 at 2:58 AM Fabian Schwartau via USRP-users <
usrp-users@lists.ettus.com> wrote:

> You have an old version of libuhd already installed. Uninstall it using:
> $ sudo dpkg -P libuhd
> Then retry installing it. Sometimes libraries are not found and you have
> to run
> $ sudo ldconfig
> but that is usually done by dpkg.
>
> Am 06.12.2019 um 00:31 schrieb Saeid Hashemi via USRP-users:
> > Hello everyone,
> >
> > I have an Intel NUC running Ubuntu 16.04 and a low latency kernel which
> > I use for OAI LTE software on top of UHD.
> >
> > After updating my system repositories, UHD broke somehow with the
> > following result:
> >
> > nuc8-3@nuc83-NUC8i7BEH:~$ uhd_find_devices
> > uhd_find_devices: error while loading shared libraries:
> > libuhd.so.3.14.1: cannot open shared object file: No such file or
> directory
> >
> > Attempting to manually install the version cited in the error gives me
> this:
> >
> > Unpacking libuhd3.14.1:amd64 (3.14.1.1-0ubuntu1~trusty1) ...
> > dpkg: error processing archive
> > /var/cache/apt/archives/libuhd3.14.1_3.14.1.1-0ubuntu1~trusty1_amd64.de=
b
> > (--unpack):
> >   trying to overwrite '/usr/share/uhd/rfnoc/blocks/keep_one_in_n.xml',
> > which is also in package libuhd3.14.0:amd64 3.14.0.0-0ubuntu1~trusty1
> > dpkg-deb: error: subprocess paste was killed by signal (Broken pipe)
> > Errors were encountered while processing:
> >
>  /var/cache/apt/archives/libuhd3.14.1_3.14.1.1-0ubuntu1~trusty1_amd64.deb
> > E: Sub-process /usr/bin/dpkg returned an error code (1)
> >
> >
> > Would anyone have any recommendations on what to do to make sure I have
> > the right version of everything present?
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

--000000000000048f2a05994d75bd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you for your advice Fabian!</div><div><br></div=
><div>It seems there is no package called libuhd, just the following versio=
ns:</div><div style=3D"margin-left:40px">libuhd003 =C2=A0 =C2=A0 libuhd3.14=
.0 =C2=A0libuhd-dev =C2=A0 <br></div><div style=3D"margin-left:40px"><br></=
div><div>So I did:</div><div><br></div><div style=3D"margin-left:40px"><spa=
n style=3D"font-family:monospace">$ sudo dpkg -P libuhd3.14.0 <br>(Reading =
database ... 291299 files and directories currently installed.)<br>Removing=
 libuhd3.14.0:amd64 (3.14.0.0-0ubuntu1~trusty1) ...<br>Purging configuratio=
n files for libuhd3.14.0:amd64 (3.14.0.0-0ubuntu1~trusty1) ...<br>Processin=
g triggers for libc-bin (2.19-0ubuntu6.15) ...</span></div><div style=3D"ma=
rgin-left:40px"><span style=3D"font-family:monospace">$ sudo apt-get instal=
l libuhd3.14.1 </span><br></div><div><br></div><div>And now UHD tools work,=
 also within the LTE software, but they won&#39;t find my B210 saying:</div=
><div><br></div><div style=3D"margin-left:40px"><span style=3D"font-family:=
monospace">[INFO] [UHD] linux; GNU C++ version 4.8.4; Boost_105400; UHD_3.1=
4.1.1-release<br>Error: LookupError: KeyError: No devices found for -----&g=
t;<br>Empty Device Address</span></div><div><br></div><div>Regards,</div><d=
iv>Saeid<br></div><div><br></div><div><br></div><div><br></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec =
6, 2019 at 2:58 AM Fabian Schwartau via USRP-users &lt;<a href=3D"mailto:us=
rp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">You have an old version=
 of libuhd already installed. Uninstall it using:<br>
$ sudo dpkg -P libuhd<br>
Then retry installing it. Sometimes libraries are not found and you have <b=
r>
to run<br>
$ sudo ldconfig<br>
but that is usually done by dpkg.<br>
<br>
Am 06.12.2019 um 00:31 schrieb Saeid Hashemi via USRP-users:<br>
&gt; Hello everyone,<br>
&gt; <br>
&gt; I have an Intel NUC running Ubuntu 16.04 and a low latency kernel whic=
h <br>
&gt; I use for OAI LTE software on top of UHD.<br>
&gt; <br>
&gt; After updating my system repositories, UHD broke somehow with the <br>
&gt; following result:<br>
&gt; <br>
&gt; nuc8-3@nuc83-NUC8i7BEH:~$ uhd_find_devices<br>
&gt; uhd_find_devices: error while loading shared libraries: <br>
&gt; libuhd.so.3.14.1: cannot open shared object file: No such file or dire=
ctory<br>
&gt; <br>
&gt; Attempting to manually install the version cited in the error gives me=
 this:<br>
&gt; <br>
&gt; Unpacking libuhd3.14.1:amd64 (3.14.1.1-0ubuntu1~trusty1) ...<br>
&gt; dpkg: error processing archive <br>
&gt; /var/cache/apt/archives/libuhd3.14.1_3.14.1.1-0ubuntu1~trusty1_amd64.d=
eb <br>
&gt; (--unpack):<br>
&gt;=C2=A0 =C2=A0trying to overwrite &#39;/usr/share/uhd/rfnoc/blocks/keep_=
one_in_n.xml&#39;, <br>
&gt; which is also in package libuhd3.14.0:amd64 3.14.0.0-0ubuntu1~trusty1<=
br>
&gt; dpkg-deb: error: subprocess paste was killed by signal (Broken pipe)<b=
r>
&gt; Errors were encountered while processing:<br>
&gt;=C2=A0 =C2=A0/var/cache/apt/archives/libuhd3.14.1_3.14.1.1-0ubuntu1~tru=
sty1_amd64.deb<br>
&gt; E: Sub-process /usr/bin/dpkg returned an error code (1)<br>
&gt; <br>
&gt; <br>
&gt; Would anyone have any recommendations on what to do to make sure I hav=
e <br>
&gt; the right version of everything present?<br>
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
</blockquote></div>

--000000000000048f2a05994d75bd--


--===============3046917616389870539==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3046917616389870539==--

