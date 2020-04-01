Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D8A19B627
	for <lists+usrp-users@lfdr.de>; Wed,  1 Apr 2020 21:02:23 +0200 (CEST)
Received: from [::1] (port=38610 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jJid1-00011e-1V; Wed, 01 Apr 2020 15:02:19 -0400
Received: from mail-vs1-f48.google.com ([209.85.217.48]:40412)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1jJicw-0000v9-St
 for usrp-users@lists.ettus.com; Wed, 01 Apr 2020 15:02:14 -0400
Received: by mail-vs1-f48.google.com with SMTP id w14so618504vsf.7
 for <usrp-users@lists.ettus.com>; Wed, 01 Apr 2020 12:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eVS4RedyvsOsKWA7CCwVEKPyMSp+o3UmRMoxggXY2BQ=;
 b=BL/EB9QxBjtRhTgK6btgWM/uSmtAIwpbA01onk0H3Qiy0LdkIG4p7hgBTJaJzKvf+t
 6umoMXofNaZ53SOrVb7tLxAYIbHJfnuSRWe0rrmMtPolPDt7XgrymiPuKNW18d9UF1R/
 KcO/roIZktFJ/py7dMpTAwAvEP41kr84p4dwgeX5BQ6VCYnghaZ2464aC/9pVf1K2/OT
 kni62BCjI86lzhll8erhfJGzJK09rUAfc0RclBnyJK74ih+BHyRiHu9b4X6stjdSEHR1
 6ygsR9UiM8ppq7lvGy6Rhlv9XYrhduXJki2BXN/ROKmBLjD2cJgmPIacqpVrCjnc43mG
 sCrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eVS4RedyvsOsKWA7CCwVEKPyMSp+o3UmRMoxggXY2BQ=;
 b=mNNuswFNtFdOvtN69hQ1v/DhEXyM13eByeZAOn6D9CRyeAatj39e7yY25DVw6a56oA
 FOIbsTrvNH4VTJPYewjGe/hkueO8VT/fYeKIwyKD5FJp+VeegoLju3CSNWkoab6KaUu0
 pN1nqs6AAXGXCZ3+3XuWlck3FC0YWn4DzFEeack79P2PVfLGZ5iXjS9+oFhElmFpj0Uv
 DbxdGfVOcTZlzGHNTpUbEETNnvjX3fJ/qXAa10gTfg1AIwaRBZRtkYbP5RMVpc+K5S4o
 PsbOINehkqUpP25kDFBqDCUb+BISe2KpnKjXj5/4xF44Oc5h2XHPJ+vPtQLr9XArYhnk
 NhMg==
X-Gm-Message-State: AGi0PuaqtFafXsC6HtRkmhPsOEgoy31ORiZFlOKF07txg3HK7CcZCXLt
 7iNHOwprApgSascA/UBc5961L0duQDy9oiH3rX61lPQRTqWexMiq
X-Google-Smtp-Source: APiQypJopxUnR2RhNlKjmPpzvwB42cwC7/377QmE0ubx3v6mtHmtpEXrmDcDkWa0ubJf5/uPK/3Kw7lBGlD8nJWAsRQ=
X-Received: by 2002:a67:2b07:: with SMTP id r7mr19361903vsr.169.1585767693904; 
 Wed, 01 Apr 2020 12:01:33 -0700 (PDT)
MIME-Version: 1.0
References: <DM6PR19MB26685023DD12B54B630A352AA4C90@DM6PR19MB2668.namprd19.prod.outlook.com>
 <CAGNhwTNHHFEg9qb3W2Ax0-E+zMYB+edB5TAuP5UX9kAH7Wr_tQ@mail.gmail.com>
 <DM6PR19MB2668F52C5E7A801E5EB94DA0A4C90@DM6PR19MB2668.namprd19.prod.outlook.com>
In-Reply-To: <DM6PR19MB2668F52C5E7A801E5EB94DA0A4C90@DM6PR19MB2668.namprd19.prod.outlook.com>
Date: Wed, 1 Apr 2020 15:01:23 -0400
Message-ID: <CAGNhwTOHzOkkaiDLcrgMoZ5KsXc+CeNst++57Cto3uTjqYpUAA@mail.gmail.com>
To: Jeff S <e070832@hotmail.com>
Subject: Re: [USRP-users] Setting Up E310 Environment - Build Error
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6196245414021090200=="
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

--===============6196245414021090200==
Content-Type: multipart/alternative; boundary="000000000000177eb505a23f507b"

--000000000000177eb505a23f507b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Excellent! Thanks for reporting back your success! - MLD
--
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/


On Wed, Apr 1, 2020 at 1:51 PM Jeff S <e070832@hotmail.com> wrote:

> Michael,
>
> You hit a bullseye!  It took a bit to finally find the culprits while
> trying to back out packages that were a dependency for something else.  I
> finally did the following to find what I needed to get rid of:
>
> $ dpkg -l | grep -i uhd
> ii  lib*uhd*-dev:amd64         3.10.3.0-2  amd64  universal hardware driv=
er for Ettus Research products - headers
> ii  lib*uhd*003.010.003:amd64  3.10.3.0-2  amd64  universal hardware driv=
er for Ettus Research products - library
> ii  *uhd*-host                 3.10.3.0-2  amd64  universal hardware driv=
er for Ettus Research products - host apps
>
>
> I removed/purged them and rebuilt from the start, and everything built
> without the error.
>
> Thanks again,
> Jeff
>
> ------------------------------
> *From:* Michael Dickens <michael.dickens@ettus.com>
> *Sent:* Wednesday, April 1, 2020 9:49 AM
> *To:* Jeff S <e070832@hotmail.com>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Setting Up E310 Environment - Build Error
>
> Hi Jeff - I'm pretty sure the error means you have a prior version of GNU
> Radio installed into a standard system search prefix (e.g., /usr/local ).
> If you disable / remove / deactivate that install, then redo-the whole GR
> build from the start, the error should be fixed. Hopefully! - MLD
>
> On Wed, Apr 1, 2020 at 10:26 AM Jeff S via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> I am trying to combine the install using a custom prefix (
> https://kb.ettus.com/Building_and_Installing_UHD_and_GNU_Radio_to_a_Custo=
m_Prefix)
> and while following S/W Dev on E3xx (
> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFN=
oC_UHD_/_GNU_Radio_/_gr-ettus_from_Source).
> I'm using Ubuntu 18.04.
>
> I am getting the following error:
>
> [ 86%] Building CXX object gr-uhd/swig/CMakeFiles/_uhd_swig.dir/uhd_swigP=
YTHON_wrap.cxx.o*/home/sdr/sdr/e310/rfnoc/src/gnuradio/build/gr-uhd/swig/uh=
d_swigPYTHON_wrap.cxx:* In function =E2=80=98*PyObject* _wrap_time_spec_t_g=
et_system_time(PyObject*, PyObject*)*=E2=80=99:*/home/sdr/sdr/e310/rfnoc/sr=
c/gnuradio/build/gr-uhd/swig/uhd_swigPYTHON_wrap.cxx:20234:34:* *error: *=
=E2=80=98*get_system_time*=E2=80=99 is not a member of =E2=80=98*uhd::time_=
spec_t*=E2=80=99
>        result =3D uhd::time_spec_t::*get_system_time*();
>                                   *^~~~~~~~~~~~~~~*
> gr-uhd/swig/CMakeFiles/_uhd_swig.dir/build.make:70: recipe for target 'gr=
-uhd/swig/CMakeFiles/_uhd_swig.dir/uhd_swigPYTHON_wrap.cxx.o' failed
> make[2]: *** [gr-uhd/swig/CMakeFiles/_uhd_swig.dir/uhd_swigPYTHON_wrap.cx=
x.o] Error 1
> CMakeFiles/Makefile2:15011: recipe for target 'gr-uhd/swig/CMakeFiles/_uh=
d_swig.dir/all' failed
> make[1]: *** [gr-uhd/swig/CMakeFiles/_uhd_swig.dir/all] Error 2
> Makefile:162: recipe for target 'all' failed
> make: *** [all] Error 2
>
>
> The commands I used to get to the above point are (tried to copy
> accurately from my history):
>
> $ git clone --recursive https://github.com/EttusResearch/uhd
> $ cd uhd
> $ git checkout v3.15.0.0
> $ git submodule update --init --recursive
> $ mkdir host/build
> $ cd host/build
> $ cmake -DCMAKE_INSTALL_PREFIX=3D~/sdr/e310/rfnoc/installs -DENABLE_E300=
=3DON
> -DENABLE_GPSD=3DON -DENABLE_RFNOC=3DON ../
> $ make -j6
> $ make install
> $ cd ~/sdr/e310/rfnoc/src/
> $ git clone --recursive https://github.com/gnuradio/gnuradio
> $ cd gnuradio
> $ git checkout maint-3.7
> $ git submodule update --init --recursive
> $ mkdir build
> $ cd build
> $ cmake -DCMAKE_INSTALL_PREFIX=3D~/sdr/e310/rfnoc/installs
> -DUHD_DIR=3D~/sdr/e310/rfnoc/installs/lib/cmake/uhd/
> -DUHD_INCLUDE_DIRS=3D~/sdr/e310/rfnoc/installs/include/
> -DUHD_LIBRARIES=3D~/sdr/e310/rfnoc/installs/lib/libuhd.so ../
> $ make -j4
>
>
> I did the same thing using a git checkout of uhd v3.14.1.1 first, which
> was how it was defined in the second link above, and got the same results=
.
>
> I have seen where this was a problem in the past, and some people updated
> the file that had showed the problem.  Others redid their build of UHD wi=
th
> a newer version.  Those issues were about two years old, and it seems tha=
t
> it still shows up in some situations.  Is it due to my trying to combine
> two Application Notes?  Is the recomendation to update
> *uhd_swigPYTHON_wrap.cxx* still one solution?
>
> Regards,
> Jeff
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
> --
> Michael Dickens
> Ettus Research Technical Support
> Email: support@ettus.com
> Web: https://ettus.com/
>

--000000000000177eb505a23f507b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Excellent! Thanks for reporting back your=
 success! - MLD</div><div dir=3D"ltr">--</div><div><div dir=3D"ltr" class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr">Michael Dickens<br>Ettus Research Technical Support<br>=
Email: <a href=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus=
.com</a><br>Web: <a href=3D"https://ettus.com/" target=3D"_blank">https://e=
ttus.com/</a></div></div></div></div></div><br></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 1, 2020 at 1:51 =
PM Jeff S &lt;<a href=3D"mailto:e070832@hotmail.com">e070832@hotmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Michael,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
You hit a bullseye!=C2=A0 It took a bit to finally find the culprits while =
trying to back out packages that were a dependency for something else.=C2=
=A0 I finally did the following to find what I needed to get rid of:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<blockquote style=3D"margin-top:0px;margin-bottom:0px">
<pre>$ dpkg -l | grep -i uhd
ii  lib<font color=3D"#EF2929"><b>uhd</b></font>-dev:amd64         3.10.3.0=
-2  amd64  universal hardware driver for Ettus Research products - headers
ii  lib<font color=3D"#EF2929"><b>uhd</b></font>003.010.003:amd64  3.10.3.0=
-2  amd64  universal hardware driver for Ettus Research products - library
ii  <font color=3D"#EF2929"><b>uhd</b></font>-host                 3.10.3.0=
-2  amd64  universal hardware driver for Ettus Research products - host app=
s</pre>
</blockquote>
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I removed/purged them and rebuilt from the start, and everything built with=
out the error.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Thanks again,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Jeff<br>
</div>
<br>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_7314718117513080751divRplyFwdMsg" dir=3D"ltr"><font styl=
e=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From=
:</b> Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com" targ=
et=3D"_blank">michael.dickens@ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, April 1, 2020 9:49 AM<br>
<b>To:</b> Jeff S &lt;<a href=3D"mailto:e070832@hotmail.com" target=3D"_bla=
nk">e070832@hotmail.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Setting Up E310 Environment - Build Error<=
/font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Hi Jeff - I&#39;m pretty sure the error means you have a p=
rior version of GNU Radio installed into a standard system search prefix (e=
.g., /usr/local ). If you disable / remove / deactivate that install, then =
redo-the whole GR build from the start,
 the error should be fixed. Hopefully! - MLD</div>
<br>
<div>
<div dir=3D"ltr">On Wed, Apr 1, 2020 at 10:26 AM Jeff S via USRP-users &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I am trying to combine the install using a custom prefix (<a href=3D"https:=
//kb.ettus.com/Building_and_Installing_UHD_and_GNU_Radio_to_a_Custom_Prefix=
" id=3D"gmail-m_7314718117513080751x_gmail-m_-3485459643869862369LPlnk48645=
7" target=3D"_blank">https://kb.ettus.com/Building_and_Installing_UHD_and_G=
NU_Radio_to_a_Custom_Prefix</a>)
 and while following S/W Dev on E3xx (<a href=3D"https://kb.ettus.com/Softw=
are_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettu=
s_from_Source" id=3D"gmail-m_7314718117513080751x_gmail-m_-3485459643869862=
369LPlnk662888" target=3D"_blank">https://kb.ettus.com/Software_Development=
_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source</=
a>).=C2=A0
 I&#39;m using Ubuntu 18.04.<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I am getting the following error:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<blockquote style=3D"margin-top:0px;margin-bottom:0px">
<pre>[ 86%] <font color=3D"#4E9A06">Building CXX object gr-uhd/swig/CMakeFi=
les/_uhd_swig.dir/uhd_swigPYTHON_wrap.cxx.o</font>
<b>/home/sdr/sdr/e310/rfnoc/src/gnuradio/build/gr-uhd/swig/uhd_swigPYTHON_w=
rap.cxx:</b> In function =E2=80=98<b>PyObject* _wrap_time_spec_t_get_system=
_time(PyObject*, PyObject*)</b>=E2=80=99:
<b>/home/sdr/sdr/e310/rfnoc/src/gnuradio/build/gr-uhd/swig/uhd_swigPYTHON_w=
rap.cxx:20234:34:</b> <font color=3D"#EF2929"><b>error: </b></font>=E2=80=
=98<b>get_system_time</b>=E2=80=99 is not a member of =E2=80=98<b>uhd::time=
_spec_t</b>=E2=80=99
       result =3D uhd::time_spec_t::<font color=3D"#EF2929"><b>get_system_t=
ime</b></font>();
                                  <font color=3D"#EF2929"><b>^~~~~~~~~~~~~~=
~</b></font>
gr-uhd/swig/CMakeFiles/_uhd_swig.dir/build.make:70: recipe for target &#39;=
gr-uhd/swig/CMakeFiles/_uhd_swig.dir/uhd_swigPYTHON_wrap.cxx.o&#39; failed
make[2]: *** [gr-uhd/swig/CMakeFiles/_uhd_swig.dir/uhd_swigPYTHON_wrap.cxx.=
o] Error 1
CMakeFiles/Makefile2:15011: recipe for target &#39;gr-uhd/swig/CMakeFiles/_=
uhd_swig.dir/all&#39; failed
make[1]: *** [gr-uhd/swig/CMakeFiles/_uhd_swig.dir/all] Error 2
Makefile:162: recipe for target &#39;all&#39; failed
make: *** [all] Error 2
</pre>
</blockquote>
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
The commands I used to get to the above point are (tried to copy accurately=
 from my history):</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<blockquote style=3D"margin-top:0px;margin-bottom:0px">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ git clone --recursive <a href=3D"https://github.com/EttusResearch/uhd" id=
=3D"gmail-m_7314718117513080751x_gmail-m_-3485459643869862369LPNoLP341576" =
target=3D"_blank">
https://github.com/EttusResearch/uhd</a></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ cd uhd<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ git checkout v3.15.0.0</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ git submodule update --init --recursive<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ mkdir host/build</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ cd host/build</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ cmake -DCMAKE_INSTALL_PREFIX=3D~/sdr/e310/rfnoc/installs -DENABLE_E300=3D=
ON -DENABLE_GPSD=3DON -DENABLE_RFNOC=3DON ../<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ make -j6</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ make install</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ cd ~/sdr/e310/rfnoc/src/<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ git clone --recursive <a href=3D"https://github.com/gnuradio/gnuradio" id=
=3D"gmail-m_7314718117513080751x_gmail-m_-3485459643869862369LPNoLP833507" =
target=3D"_blank">
https://github.com/gnuradio/gnuradio</a><br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ cd gnuradio</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ git checkout maint-3.7<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ git submodule update --init --recursive<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ mkdir build</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ cd build</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ cmake -DCMAKE_INSTALL_PREFIX=3D~/sdr/e310/rfnoc/installs -DUHD_DIR=3D~/sd=
r/e310/rfnoc/installs/lib/cmake/uhd/ -DUHD_INCLUDE_DIRS=3D~/sdr/e310/rfnoc/=
installs/include/ -DUHD_LIBRARIES=3D~/sdr/e310/rfnoc/installs/lib/libuhd.so=
 ../</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ make -j4<br>
</div>
<div></div>
</blockquote>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I did the same thing using a git checkout of uhd v3.14.1.1 first, which was=
 how it was defined in the second link above, and got the same results.</di=
v>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I have seen where this was a problem in the past, and some people updated t=
he file that had showed the problem.=C2=A0 Others redid their build of UHD =
with a newer version.=C2=A0 Those issues were about two years old, and it s=
eems that it still shows up in some situations.=C2=A0
 Is it due to my trying to combine two Application Notes?=C2=A0 Is the reco=
mendation to update
<b>uhd_swigPYTHON_wrap.cxx</b> still one solution?<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Regards,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Jeff<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div dir=3D"ltr">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">Michael Dickens<br>
Ettus Research Technical Support<br>
Email: <a href=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus=
.com</a><br>
Web: <a href=3D"https://ettus.com/" target=3D"_blank">https://ettus.com/</a=
></div>
</div>
</div>
</div>
</div>
</div>

</blockquote></div>

--000000000000177eb505a23f507b--


--===============6196245414021090200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6196245414021090200==--

