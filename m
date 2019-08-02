Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5190D7EA5C
	for <lists+usrp-users@lfdr.de>; Fri,  2 Aug 2019 04:38:17 +0200 (CEST)
Received: from [::1] (port=54176 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1htNSQ-0004hX-Gu; Thu, 01 Aug 2019 22:38:14 -0400
Received: from mail-oi1-f175.google.com ([209.85.167.175]:46036)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1htNSM-0004bv-N7
 for usrp-users@lists.ettus.com; Thu, 01 Aug 2019 22:38:10 -0400
Received: by mail-oi1-f175.google.com with SMTP id m206so55700363oib.12
 for <usrp-users@lists.ettus.com>; Thu, 01 Aug 2019 19:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kae01eF/CZDguM79m4Ch+zBpT3t4lY0brl+zm/1XgOQ=;
 b=ZcVw7WuNQ4pz564iM5Shtn02FGUgTDQV+XdGTO/LFv9QMUp9LcztILzx6T7RDny7Oi
 /kF8LE2AM7cFwMs9j6xz/zdM0cAEtt4ELMZrxD6+fzLTh5rTRXimcanCaYDWU/tCwr8H
 1BUe6a5aLfoIoswYNi9KobTlWClV3bRc7T3oDvlVe91MJCQh82hro7MZ198p0W11CZmy
 dlUF0YMqvascaCaiRFYqyB5sE4moVZwThDyQ9PUoBDdyY7V8CZ8NKuKaRn9aL2nTmlhg
 RBkC9uoLNYfIfwcLemR0YGDWM8WtoC+q6oag8Z/kG4g9roFUaW9HfLe3gtLKMbwC/1xa
 b2fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kae01eF/CZDguM79m4Ch+zBpT3t4lY0brl+zm/1XgOQ=;
 b=PHESDFgKh+GhrG3lF1lV/bpw372U0RmvJS85kkIPR8y4/ebENqSuZcK05TBIpWffb/
 jLDWCuEMgkP618NYTAwR7K/Pfq6SbLmKGzR9UvO1+qUWunFnasC3kyrGn6VM+iw8D0Un
 qYXqEPW7jNIwXpNLrrZI5uAoRtSr43XNdxT5Tqnpa46aajeVEd5nAxr1PDHLembOWAT1
 CrbMpG+WLIIxcV0dbfX1rcty0P61Q48dauZ/YU5+UQ/zM9yC+sueNjLq5qZrY0jDbKxL
 AAH3D/lfCCaA87DO0FlWzEFHEgkY58uMZyX396bKKE09pwI56gdsqLhFozcN6KRjBL8W
 zKGQ==
X-Gm-Message-State: APjAAAUXsI/ld7dFyRVPV+oGpk2sTd7IT8nJkCJvoouO/g2kdPu2suw9
 7zU7+JsbkScpDwUe6h0UzG/OBZ2pARADtFHaG8WDQCLN
X-Google-Smtp-Source: APXvYqypIct97yEfvEpr9AkCvpOAR03vcZS7yjgCq7UeY/bwLYR16oivEr9xhTrNfmRiLYAYMmAkVFPsD1MxxQRZMJA=
X-Received: by 2002:a05:6808:8f6:: with SMTP id
 d22mr1246164oic.97.1564713449840; 
 Thu, 01 Aug 2019 19:37:29 -0700 (PDT)
MIME-Version: 1.0
References: <CABfZwcdKyO0+zUTd5oVcwrr=mAhScEroL_mwGDoEJ52+i+sAjg@mail.gmail.com>
In-Reply-To: <CABfZwcdKyO0+zUTd5oVcwrr=mAhScEroL_mwGDoEJ52+i+sAjg@mail.gmail.com>
Date: Thu, 1 Aug 2019 19:37:55 -0700
Message-ID: <CAL263iw7Rwb4n-FJvnqOqtgev8AAx9uNvutVbNf2Q__cL1C6Hg@mail.gmail.com>
To: =?UTF-8?B?56aP5bO25bm56ZuE?= <mikio@dolphinsystem.jp>
Subject: Re: [USRP-users] cmake error : Cross-Compiling GNU Radio on Ubuntu
 16.04
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8103509864072904603=="
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

--===============8103509864072904603==
Content-Type: multipart/alternative; boundary="0000000000005a7786058f193db1"

--0000000000005a7786058f193db1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

That application note is specific to the E310. Are you using the E320 SDK?
Did you source the OE environment setup file? (What is the output of echo
$CC)?

Also that app note is outdated, and I will be posted an updated version
soon. Another app note that covers the E320/N3xx will follow.

Regards,
Nate Temple

On Thu, Aug 1, 2019 at 7:26 PM =E7=A6=8F=E5=B3=B6=E5=B9=B9=E9=9B=84 via USR=
P-users <
usrp-users@lists.ettus.com> wrote:

> Hi everyone.
> I try to compile the UHD and GNU Radio for my E320 on Ubuntu 16.04, I am
> referencing this application note.
>
>
> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFN=
oC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
>
> but I got error message from cmake as follows.
> Do you know this solution?
>
> **Cross-Compiling GNU Radio**
> $ cd ~/e300/src
> $ git clone -b v3.7.10.2 --recursive
> https://github.com/gnuradio/gnuradio.git
> $ cd gnuradio/
> $ mkdir build
> $ cd build
> $ cmake -Wno-dev
> -DCMAKE_TOOLCHAIN_FILE=3D../cmake/Toolchains/oe-sdk_cross.cmake
> -DENABLE_GR_WXGUI=3DOFF -DENABLE_GR_VOCODER=3DOFF -DENABLE_GR_DTV=3DOFF
> -DENABLE_GR_ATSC=3DOFF -DENABLE_DOXYGEN=3DOFF -DCMAKE_INSTALL_PREFIX=3D/u=
sr ../
>
> CMake Error at cmake/Toolchains/oe-sdk_cross.cmake:4 (string):
>   string sub-command REGEX, mode MATCH needs at least 5 arguments total t=
o
>   command.
> Call Stack (most recent call first):
>   build/CMakeFiles/3.5.1/CMakeSystem.cmake:6 (include)
>   CMakeLists.txt:31 (project)
>
> **snip**
>
>  CMake will not be able to correctly generate this project.
> Call Stack (most recent call first):
>  CMakeLists.txt:31 (project)
>
>
> -- Configuring incomplete, errors occurred!
> See also
> "/home/dolphin/e300/src/gnuradio/build/CMakeFiles/CMakeOutput.log".
> See also "/home/dolphin/e300/src/gnuradio/build/CMakeFiles/CMakeError.log=
".
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000005a7786058f193db1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi,<br><br>That application note is specific to the E31=
0. Are you using the E320 SDK? Did you source the OE environment setup file=
? (What is the output of echo $CC)?<br><br>Also that app note is outdated, =
and I will be posted an updated version soon. Another app note that covers =
the E320/N3xx will follow.<br><br>Regards,<br>Nate Temple<br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, =
Aug 1, 2019 at 7:26 PM =E7=A6=8F=E5=B3=B6=E5=B9=B9=E9=9B=84 via USRP-users =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">Hi everyone.<br>I try to compile the UHD and GNU Radio fo=
r my E320 on Ubuntu 16.04, I am referencing this application note. <br><br>=
<a href=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Bui=
lding_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source" target=3D"_blank">https=
://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_=
/_GNU_Radio_/_gr-ettus_from_Source</a><br><br>but I got error message from =
cmake as follows.<br>Do you know this solution?<br><br>**Cross-Compiling GN=
U Radio**<br>$ cd ~/e300/src<br>$ git clone -b v3.7.10.2 --recursive <a hre=
f=3D"https://github.com/gnuradio/gnuradio.git" target=3D"_blank">https://gi=
thub.com/gnuradio/gnuradio.git</a> <br>$ cd gnuradio/<br>$ mkdir build<br>$=
 cd build<br>$ cmake -Wno-dev -DCMAKE_TOOLCHAIN_FILE=3D../cmake/Toolchains/=
oe-sdk_cross.cmake -DENABLE_GR_WXGUI=3DOFF -DENABLE_GR_VOCODER=3DOFF -DENAB=
LE_GR_DTV=3DOFF -DENABLE_GR_ATSC=3DOFF -DENABLE_DOXYGEN=3DOFF -DCMAKE_INSTA=
LL_PREFIX=3D/usr ../<div><br>CMake Error at cmake/Toolchains/oe-sdk_cross.c=
make:4 (string):<br>=C2=A0 string sub-command REGEX, mode MATCH needs at le=
ast 5 arguments total to<br>=C2=A0 command.<br>Call Stack (most recent call=
 first):<br>=C2=A0 build/CMakeFiles/3.5.1/CMakeSystem.cmake:6 (include)<br>=
=C2=A0 CMakeLists.txt:31 (project)<br><br>**snip**<br><br>		 =C2=A0CMake wi=
ll not be able to correctly generate this project.<br>		Call Stack (most re=
cent call first):<br>		 =C2=A0CMakeLists.txt:31 (project)<br>		<br>		<br>		=
-- Configuring incomplete, errors occurred!<br>		See also &quot;/home/dolph=
in/e300/src/gnuradio/build/CMakeFiles/CMakeOutput.log&quot;.<br>		See also =
&quot;/home/dolphin/e300/src/gnuradio/build/CMakeFiles/CMakeError.log&quot;=
.<br><br><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000005a7786058f193db1--


--===============8103509864072904603==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8103509864072904603==--

