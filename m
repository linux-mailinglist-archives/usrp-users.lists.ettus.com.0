Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1B119AE46
	for <lists+usrp-users@lfdr.de>; Wed,  1 Apr 2020 16:50:51 +0200 (CEST)
Received: from [::1] (port=41768 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jJehd-0001sj-Mx; Wed, 01 Apr 2020 10:50:49 -0400
Received: from mail-ua1-f50.google.com ([209.85.222.50]:42044)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1jJehZ-0001m9-HI
 for usrp-users@lists.ettus.com; Wed, 01 Apr 2020 10:50:45 -0400
Received: by mail-ua1-f50.google.com with SMTP id m18so9146634uap.9
 for <usrp-users@lists.ettus.com>; Wed, 01 Apr 2020 07:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t0Jdp0jSAWeqgsxsS38P7SASPbzFAt0d/whbazsunZI=;
 b=Pf3DxPsvWO7XUtXg/2yx8K1oH4zr72Da5bFVge6LhzgmeUitie6ClZGkWhEIrbfoDi
 4zR2zN5p4YCyfJYqfRAi154CeOdZfEoG9bWlJkmcGZl5kOawidm6z9o5LatKQqpC1lJR
 ds8JwEFk7dxrfJygDS8nb468mW1VgV5dxRDMLj2ry/Gi+eNNdihgaUVjGWFCAhPR109x
 1npX/dQl06T4vHlWd5iU5Ut6pissou9dvZp4WL/BS4vMd13OvA3vOrInZoN9CLovafdb
 V7xmzzWWwYLzOK3cHzWaw79ShaFBaELuXq9y7WBdizvsmEh0w4uihLY8qTt4hDVTud7l
 tIqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t0Jdp0jSAWeqgsxsS38P7SASPbzFAt0d/whbazsunZI=;
 b=kwzX5GcSNG8Axiz7UKbH1aiX2iLMo0vrJPuUDMaOqfPHmhNj+QUYcCkome8gLSQAZs
 oGh7fOgK+giY6bmfI4+QbNPZ1qrrj7FYdRAgKpd2gxivLuZwDjzI2Yx73UJbdsJ8Y0ts
 iEnfOe65twFN8G2oTFWKSd+LYe2UlcAVhmt6O4t+Z0ahpX9Fg6f5uqpqrPRJWyhkPfh+
 7b3nW5uC+zJg5sInJY46Ex4nX7BITQrqgfUL3FH1BZ4A6dywt846L4Pheo242+mBEXyD
 0V3BK0U2OX9nHCbvWDR9f4CF60VzsAbGfP2ls0cO3DGdU+Zgb/8Rs1FqUKpA54MHwdVY
 e3bg==
X-Gm-Message-State: AGi0PuZAo6djjhPRoNLY802uf1YZrW9LfsU57xGCZENdvppr62e9uyC4
 YiASJEcEmaz+dX7XmsE4tUa3nmYtaP8htzod2XAOYk41
X-Google-Smtp-Source: APiQypLExgD6eSt79VK5oEQ4CvflwEaqXHSefob3aZpVmd3QsjVklB/6C/xj4lAY9lPrXwBQKpijWmD3RLnKoBD6i+o=
X-Received: by 2002:a9f:2310:: with SMTP id 16mr16080291uae.57.1585752604746; 
 Wed, 01 Apr 2020 07:50:04 -0700 (PDT)
MIME-Version: 1.0
References: <DM6PR19MB26685023DD12B54B630A352AA4C90@DM6PR19MB2668.namprd19.prod.outlook.com>
In-Reply-To: <DM6PR19MB26685023DD12B54B630A352AA4C90@DM6PR19MB2668.namprd19.prod.outlook.com>
Date: Wed, 1 Apr 2020 10:49:54 -0400
Message-ID: <CAGNhwTNHHFEg9qb3W2Ax0-E+zMYB+edB5TAuP5UX9kAH7Wr_tQ@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5190882485764480291=="
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

--===============5190882485764480291==
Content-Type: multipart/alternative; boundary="000000000000b53a8105a23bccb6"

--000000000000b53a8105a23bccb6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jeff - I'm pretty sure the error means you have a prior version of GNU
Radio installed into a standard system search prefix (e.g., /usr/local ).
If you disable / remove / deactivate that install, then redo-the whole GR
build from the start, the error should be fixed. Hopefully! - MLD

On Wed, Apr 1, 2020 at 10:26 AM Jeff S via USRP-users <
usrp-users@lists.ettus.com> wrote:

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


--=20
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/

--000000000000b53a8105a23bccb6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jeff - I&#39;m pretty sure the error means you have a p=
rior version of GNU Radio installed into a standard system search prefix (e=
.g., /usr/local ). If you disable / remove / deactivate that install, then =
redo-the whole GR build from the start, the error should be fixed. Hopefull=
y! - MLD</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Wed, Apr 1, 2020 at 10:26 AM Jeff S via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I am trying to combine the install using a custom prefix (<a href=3D"https:=
//kb.ettus.com/Building_and_Installing_UHD_and_GNU_Radio_to_a_Custom_Prefix=
" id=3D"gmail-m_-3485459643869862369LPlnk486457" target=3D"_blank">https://=
kb.ettus.com/Building_and_Installing_UHD_and_GNU_Radio_to_a_Custom_Prefix</=
a>) and
 while following S/W Dev on E3xx (<a href=3D"https://kb.ettus.com/Software_=
Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_fr=
om_Source" id=3D"gmail-m_-3485459643869862369LPlnk662888" target=3D"_blank"=
>https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNo=
C_UHD_/_GNU_Radio_/_gr-ettus_from_Source</a>).=C2=A0
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
=3D"gmail-m_-3485459643869862369LPNoLP341576" target=3D"_blank">
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
=3D"gmail-m_-3485459643869862369LPNoLP833507" target=3D"_blank">
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
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Michael D=
ickens<br>Ettus Research Technical Support<br>Email: <a href=3D"mailto:supp=
ort@ettus.com" target=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"h=
ttps://ettus.com/" target=3D"_blank">https://ettus.com/</a></div></div></di=
v></div>

--000000000000b53a8105a23bccb6--


--===============5190882485764480291==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5190882485764480291==--

