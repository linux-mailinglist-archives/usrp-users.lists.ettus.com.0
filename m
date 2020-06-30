Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFE520F7A5
	for <lists+usrp-users@lfdr.de>; Tue, 30 Jun 2020 16:54:00 +0200 (CEST)
Received: from [::1] (port=56728 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jqHe1-00039j-Lm; Tue, 30 Jun 2020 10:53:57 -0400
Received: from mail-vs1-f50.google.com ([209.85.217.50]:38351)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mdyaaseen1995@gmail.com>)
 id 1jqHdx-0002wY-7q
 for usrp-users@lists.ettus.com; Tue, 30 Jun 2020 10:53:53 -0400
Received: by mail-vs1-f50.google.com with SMTP id s20so4001496vsq.5
 for <usrp-users@lists.ettus.com>; Tue, 30 Jun 2020 07:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2rOuzt2ML9FGKotWLDAMg7qVjolpMPo4eWDCxiGRlsU=;
 b=p0YZHc5QVhu7wm3J1ZypDUl03czFEi6DsEk635OlZOvDl2HxLuqwYPaqAb94SzON6Y
 gsOQczHuMwBf/rPbLvYimLj/LYrSKtO5I53TLZhxSU4BIlplNbR8ovSitBXVc/M8gxbK
 Ukhv7F+plkZwiZNRkB0Zg3CoC4iTIVzLvuiz5jjtQXuBAErVE2pMeMG5BKM5NKx5G/Oz
 KzcvzC2Mwx5ZNVvRNO4j02Oa9Ay1r/VbprRHpEPiICeRzICr+UI7AySLD0IeroTC5xM5
 WY6uT2Bp5RCIH1Y4AykfAc+Smzpk2EfKIb9ZN3hsm67ZM86M5zwV1wh5QDX2P409F6bq
 m+EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2rOuzt2ML9FGKotWLDAMg7qVjolpMPo4eWDCxiGRlsU=;
 b=cwyrvR1iMWTUv/rpyrMOa4+AxqmZaFHvjstVtS8OeZawjLgni30HEPsGgbMswXrWZZ
 +8EtIsXxrD1DvPYwfTDnpuOfjP5RWaK7S4kjwNH+70TbL7AqX0owqo9GsmATxTh/shCg
 vhSiRK2xNRFgVHmwzuMtpwN3JsiBkWFRlkqYQl8au+zsyY6Of60MGMrHmQLufnxpmWvN
 UNhqqwNGlGIQhQzN4jx5+PlbyaZ94Ny6IuS8Rwf27xV/9xm+bD9jOblfIiV2bkEwTFKC
 iVNbkaYJJe2NPH09Jele/JTNHsbWoxXoZx/mi45Dmiwa7pcd6FpEf3ZFA/+5hnIrQi4f
 5Kmg==
X-Gm-Message-State: AOAM533xVBwhSQ/TRlxpBPSo5wJrsWuLDZmke4Tz1qvVwvcI6/qDkn+k
 fTi6wxkRAB+soHKEDWw6iAhqU+OlEj25WVoob5hbsu1/
X-Google-Smtp-Source: ABdhPJy9BWsOVuTWmxNa88kwPk1TB7XyKgfxWMJ7T2/UZAE7fgFMb8jhw9x0JLuj2Wr9D4BkFGG8z2FT1O6jdtZhsGc=
X-Received: by 2002:a67:a205:: with SMTP id l5mr16346975vse.2.1593528792600;
 Tue, 30 Jun 2020 07:53:12 -0700 (PDT)
MIME-Version: 1.0
References: <CADRnH23bYgB4VKpKEy8r8r=AsPHgSAhfbTV1hFUV_P58RAqzeA@mail.gmail.com>
In-Reply-To: <CADRnH23bYgB4VKpKEy8r8r=AsPHgSAhfbTV1hFUV_P58RAqzeA@mail.gmail.com>
Date: Tue, 30 Jun 2020 16:53:01 +0200
Message-ID: <CAN-A3_usASEigFBD4+URCZByVvEW2nfNZg=mMqx3r705EozU=A@mail.gmail.com>
To: EJ Kreinar <ejkreinar@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 discuss-gnuradio@gnu.org
Subject: Re: [USRP-users] How to find and link OOT module with gnuradio 3.8?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Mohamed Yaaseen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mohamed Yaaseen <mdyaaseen1995@gmail.com>
Content-Type: multipart/mixed; boundary="===============7430897669140594831=="
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

--===============7430897669140594831==
Content-Type: multipart/alternative; boundary="0000000000009f562805a94e5574"

--0000000000009f562805a94e5574
Content-Type: text/plain; charset="UTF-8"

Hello EJ Kreinar,

I just came across this situation. I was trying to create a rfnoc gain
tutorial oot module using rfnomodtools. But, when I was doing cmake I got
some errors with respect to find_package(ettus).
I was just fiddling around with cmakefiles as I am not familiar with cmake
and stuff.

But, I found a problem with the gr-ettus module itself. In the gr-ettus
module ettutsConfig.cmake file, there is a line
*include("${CMAKE_CURRENT_LIST_DIR}/ettusTarget.cmake"). *
This is the file that rfnoc OOT searches in order to find the
package ettus. But, while make && make install gr-ettus module
installs *gnuradio-ettusTargets.cmake
*file at the location. Hence, rfnoc OOT module throws an error message
during cmake.

When I corrected the line in gr-ettus and reinstalled it, my OOT module was
able to compile  successfully.

But, I am now facing errors during the make process.

I believe the rfnocmodtools template code present inside gr-ettus has not
been migrated for 3.8 even though gr-ettus is migrated.

In the meantime I will also try to fix the error which is thrown during
make process. And update you in this thread if I have any success

If you are able to get past the make process also and install it in gr 3.8.
It would be really great...!!!

Regards,
Mohamed Yaaseen

On Tue, 30 Jun 2020 at 16:01, EJ Kreinar via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi gnuradio and usrp-users,
>
> I'm trying to update rfnoc OOT modules for gnuradio 3.8 (gasp).
>
> But I'm having trouble finding and linking to gr-ettus specifically, and I
> wonder how we're supposed to call find_package(<OOT>) and then link to OOT
> modules in general with the updated cmake workflow... Trying to find and
> link gr-ettus, I've tried a few things...
>
> 1) find_package(ettus)
>
> I believe this worked against gnuradio-3.7. Now, I get the following error
> during cmake configure...
>
> ```
> --   No package 'ettus' found
> CMake Error at /usr/local/lib/cmake/ettus/ettusConfig.cmake:41 (include):
>   include could not find load file:
>     /usr/local/lib/cmake/ettus/ettusTarget.cmake
> ```
>
> 2) find_package(gnuradio-ettus)
>
> This seems more promising, since GR_LIBRARY_FOO seems to
> install gnuradio-ettus cmake files into the lib/cmake/ettus install
> location. This fails in cmake configure with the following error:
>
> ```
> CMake Error at gr-theseus/CMakeLists.txt:84 (find_package):
>   By not providing "Findgnuradio-ettus.cmake" in CMAKE_MODULE_PATH this
>   project has asked CMake to find a package configuration file provided by
>   "gnuradio-ettus", but CMake did not find one.
>
>   Could not find a package configuration file provided by "gnuradio-ettus"
>   with any of the following names:
>
>     gnuradio-ettusConfig.cmake
>     gnuradio-ettus-config.cmake
>
>   Add the installation prefix of "gnuradio-ettus" to CMAKE_PREFIX_PATH or
> set
>   "gnuradio-ettus_DIR" to a directory containing one of the above files.
> If
>   "gnuradio-ettus" provides a separate development package or SDK, be sure
> it
>   has been installed.
> ```
>
>
> Interestingly, if I change the GR_CMAKE_DIR *inside gr-ettus* to point to
> ${CMAKE_MODULES_DIR)/gnuradio-ettus (
> https://github.com/EttusResearch/gr-ettus/blob/b69260655e974786ea6e611bd91ab578b13ec72a/CMakeLists.txt#L69),
> then the gnuradio-ettus cmake modules get installed to
> lib/cmake/gnuradio-ettus. Then, in my OOT module, calling
> find_package(gnuradio-ettus) finds gr-ettus, and
> target_link_libraries(<my-library> gnuradio-ettus) links successfully.
>
> So: Is this right? Am I missing something obvious here? Should gnuradio
> OOT modules set their GR_CMAKE_DIR to gnuradio-<module>?
>
> Thanks for the help!
> EJ
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009f562805a94e5574
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello EJ Kreinar,</div><div><br></div><div>I just cam=
e across=C2=A0this situation. I was trying to create a rfnoc gain tutorial =
oot module using rfnomodtools. But, when I was doing cmake I got some error=
s with respect to find_package(ettus).</div><div>I was just fiddling around=
 with cmakefiles as I am not familiar with cmake and stuff.=C2=A0</div><div=
><br></div><div>But, I found a problem with the gr-ettus module itself. In =
the gr-ettus module ettutsConfig.cmake file, there is a line=C2=A0=C2=A0<i>=
<b>include(&quot;${CMAKE_CURRENT_LIST_DIR}/ettusTarget.cmake&quot;).=C2=A0<=
/b></i></div><div>This is the file that rfnoc OOT searches in order to find=
 the package=C2=A0ettus. But, while make &amp;&amp; make install gr-ettus m=
odule installs=C2=A0<b style=3D"font-style:italic">gnuradio-ettusTargets.cm=
ake=C2=A0 </b>file at the location. Hence, rfnoc OOT module throws an error=
 message during=C2=A0cmake.</div><div><br></div><div>When I corrected the l=
ine in gr-ettus and reinstalled it, my OOT module was able to compile=C2=A0=
 successfully.</div><div><br></div><div>But, I am now facing errors during =
the make process.</div><div><br></div><div>I believe the rfnocmodtools temp=
late code present inside gr-ettus has not been migrated for 3.8 even though=
 gr-ettus is migrated.<br></div><div><br></div><div></div><div>In the meant=
ime I will also try to fix the error which is thrown during make process. A=
nd update you in this thread if I have any success<br></div><div><br></div>=
<div>If you are able to get past the make process also and install it in gr=
 3.8. It would be really great...!!!=C2=A0<br></div><br clear=3D"all"><div>=
<div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signatur=
e"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div d=
ir=3D"ltr">Regards,<div>Mohamed Yaaseen</div></div></div></div></div></div>=
</div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue, 30 Jun 2020 at 16:01, EJ Kreinar via USRP-u=
sers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ett=
us.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr">Hi gnuradio and usrp-users,<br><br>I&#39;m trying to=
 update rfnoc OOT modules for gnuradio 3.8 (gasp).<div><br></div><div>But I=
&#39;m having trouble=C2=A0finding and linking to gr-ettus specifically, an=
d I wonder how we&#39;re supposed to call find_package(&lt;OOT&gt;) and the=
n link to OOT modules in general with the updated cmake workflow... Trying =
to find and link gr-ettus, I&#39;ve tried a few things...</div><div><br>1) =
find_package(ettus)</div><div><br></div><div>I believe this worked against =
gnuradio-3.7. Now, I get the following error during cmake configure...<br><=
br>```<br>-- =C2=A0 No package &#39;ettus&#39; found<br>CMake Error at /usr=
/local/lib/cmake/ettus/ettusConfig.cmake:41 (include):<br>=C2=A0 include co=
uld not find load file:<br>=C2=A0 =C2=A0 /usr/local/lib/cmake/ettus/ettusTa=
rget.cmake</div><div>```</div><div><br></div><div>2) find_package(gnuradio-=
ettus)<br><br>This seems more promising, since GR_LIBRARY_FOO seems to inst=
all=C2=A0gnuradio-ettus cmake files into the=C2=A0lib/cmake/ettus install l=
ocation. This fails in cmake configure with the following error:<br><br>```=
<br>CMake Error at gr-theseus/CMakeLists.txt:84 (find_package):<br>=C2=A0 B=
y not providing &quot;Findgnuradio-ettus.cmake&quot; in CMAKE_MODULE_PATH t=
his<br>=C2=A0 project has asked CMake to find a package configuration file =
provided by<br>=C2=A0 &quot;gnuradio-ettus&quot;, but CMake did not find on=
e.<br><br>=C2=A0 Could not find a package configuration file provided by &q=
uot;gnuradio-ettus&quot;<br>=C2=A0 with any of the following names:<br><br>=
=C2=A0 =C2=A0 gnuradio-ettusConfig.cmake<br>=C2=A0 =C2=A0 gnuradio-ettus-co=
nfig.cmake<br><br>=C2=A0 Add the installation prefix of &quot;gnuradio-ettu=
s&quot; to CMAKE_PREFIX_PATH or set<br>=C2=A0 &quot;gnuradio-ettus_DIR&quot=
; to a directory containing one of the above files.=C2=A0 If<br>=C2=A0 &quo=
t;gnuradio-ettus&quot; provides a separate development package or SDK, be s=
ure it<br>=C2=A0 has been installed.<br>```</div><div><br></div><div><br></=
div><div>Interestingly, if I change the GR_CMAKE_DIR *inside gr-ettus* to p=
oint=C2=A0to ${CMAKE_MODULES_DIR)/gnuradio-ettus=C2=A0(<a href=3D"https://g=
ithub.com/EttusResearch/gr-ettus/blob/b69260655e974786ea6e611bd91ab578b13ec=
72a/CMakeLists.txt#L69" target=3D"_blank">https://github.com/EttusResearch/=
gr-ettus/blob/b69260655e974786ea6e611bd91ab578b13ec72a/CMakeLists.txt#L69</=
a>), then the gnuradio-ettus cmake modules get installed to lib/cmake/gnura=
dio-ettus. Then, in my OOT module, calling find_package(gnuradio-ettus) fin=
ds gr-ettus, and target_link_libraries(&lt;my-library&gt; gnuradio-ettus) l=
inks successfully.</div><div><br></div><div>So: Is this right? Am I missing=
 something obvious here? Should gnuradio OOT modules set their=C2=A0GR_CMAK=
E_DIR to gnuradio-&lt;module&gt;?=C2=A0</div><div><br></div><div>Thanks for=
 the=C2=A0help!<br>EJ</div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000009f562805a94e5574--


--===============7430897669140594831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7430897669140594831==--

