Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A469B538C82
	for <lists+usrp-users@lfdr.de>; Tue, 31 May 2022 10:07:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E8C3383A96
	for <lists+usrp-users@lfdr.de>; Tue, 31 May 2022 04:07:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653984441; bh=dvDK+aU8mJxlHtv06HOesMQTqBoEpn//i3mtaVNS2a4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=CqE6D0kndhllnQVVpgJPzg5WhlkZv29DqhjHJHLD4/kVIDu5OmxSzna0zfyktJD02
	 UDEzsAoK2P6LJwTXcN2Qj5y+JrpfaVig5GZLx1884lzcbL5Cd5VJurJFg5mUdf8rcI
	 +E3XRn7LIaZqgkwIbEtBLcTl3I5TTBQX7PWAQzUksf6WHPfl5V+1XrWts2kQiE8Ww4
	 4bxOCYSJLm1Li/N95+hwBEUvzCqXUILVFEKPS5nIWDDHPdR++e3weuJtin9otDf0yB
	 TPYk3B5oWXZMJfcs+z1HK/vnQgMmUwWd6QRFIOtqaS7Zq8NOoaKmpFAViTE8rqX0zV
	 wh3UElDUhKmpA==
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 257F8383D31
	for <usrp-users@lists.ettus.com>; Tue, 31 May 2022 04:06:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DiOq7LJI";
	dkim-atps=neutral
Received: by mail-yb1-f177.google.com with SMTP id z186so18330394ybz.3
        for <usrp-users@lists.ettus.com>; Tue, 31 May 2022 01:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=y5Ak1VDPIWjV5tkIOHLy+BwiVgTJQSDVHGa0DGHMG5w=;
        b=DiOq7LJIgLHLXqHxjhwNC3Qq6kxwk33KIUuk9SMkYOf6TEUnlhCcn2jsyhRQcvS5Za
         jRSRWoADbhUb1m6UVKO5/1I89O0cxRw/b7rA/UU+xDOaxYLQX61SYpZ9XXTnNiMd3yGw
         iobbw1ibBwaM/h1y3qeUwNu+OEslposnV0yaJ6LuyydllQAjhnMXNnYDor3gBSuLZtn2
         Qcw2+bWyxC1rr6o/RBG5kA4oNvclpXjTL/wxziM28/h0TwPSgeipDPyDYDcy0r0wbpAK
         GYDRMccAeAX68Fx/HWBnAH85NHoyVITkZAaUSZR5emC6NaTnHgM8+wSd9JYkfWaeL4hK
         euvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=y5Ak1VDPIWjV5tkIOHLy+BwiVgTJQSDVHGa0DGHMG5w=;
        b=L9VlsfUYDQNjwHV0dkrecw5skY41jXGKO3So3N8v4UUtoP/xkEz59t/TEaIROc7n+0
         7Sj24v+TEzLjIfmpWtPzGNZ34xwDnoCZmbpi5YJTS1/ct2k5+NewuhBIpLOPUy43BibO
         lW9pKXjP0TbxGR/uOpzfTVucMGofVKXXe82zsWKXwXdf6rjh8SYKUyd7b9iPcwQNKoYE
         G/tSEwjdSscaiAEpTL3Yo46cW60UYLtLzF0AoGt7BnOyxEOlZhjr2NRPWbDupzvSc25s
         U0nNkiKrbsxclkjQQ3ec7GVg03D64q73DE+ySfWi1MEIN6eXYGhy1XNAK2qLE+9UsAzj
         dn6w==
X-Gm-Message-State: AOAM5317/y59zsGM7aqf4E8tDhRhkMPeSrqHrVQeSKeeCVuPomgmzuih
	SZXmiLJby2uqVDAK3Ib0xTXX6Xuab7KONlEnz0Bk+dXg
X-Google-Smtp-Source: ABdhPJzVZiOgUe7sxIhwG9V/xIr/RA4qx1azice4iA3MlmyW44mHOYhi+nKo0hnmaShZbo7NZGa69CmCrZ7EbErQNgE=
X-Received: by 2002:a25:7354:0:b0:65d:1518:63a6 with SMTP id
 o81-20020a257354000000b0065d151863a6mr5254254ybc.213.1653984376391; Tue, 31
 May 2022 01:06:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAHqKquxc8D6TRz0XHwyP5+6qw47qT_iunVDBGBPfEJ4UT=HwtQ@mail.gmail.com>
In-Reply-To: <CAHqKquxc8D6TRz0XHwyP5+6qw47qT_iunVDBGBPfEJ4UT=HwtQ@mail.gmail.com>
From: rouba zeitoun <roubazeitoun@gmail.com>
Date: Tue, 31 May 2022 11:06:05 +0300
Message-ID: <CAHqKquwaoybDtfi5heapu2JrJrRH6eG-_r_vKB3p413T+0kFQg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: F6F554QU2EQK6HLS7RTBIH6ZOS477ZWM
X-Message-ID-Hash: F6F554QU2EQK6HLS7RTBIH6ZOS477ZWM
X-MailFrom: roubazeitoun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: errors while installing uhd
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F6F554QU2EQK6HLS7RTBIH6ZOS477ZWM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7300842385056276493=="

--===============7300842385056276493==
Content-Type: multipart/alternative; boundary="000000000000380dcc05e04a3f77"

--000000000000380dcc05e04a3f77
Content-Type: text/plain; charset="UTF-8"

hii again, i fixed the problem

thank you

On Tue, May 31, 2022 at 10:15 AM rouba zeitoun <roubazeitoun@gmail.com>
wrote:

> Hello USRP experts
>
> I am re-installing UHD on my laptop from this site "
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux
> "
>
> But when i try to execute the command cmake ../ i get an error, i fixed
> it by changing
>
> "Boost_FOUND;HAVE_PYTHON_PLAT_MIN_VERSION;HAVE_PYTHON_MODULE_MAKO" OFF ON)
> to this
>
> "Boost_FOUND;HAVE_PYTHON_PLAT_MIN_VERSION;HAVE_PYTHON_MODULE_MAKO" ON ON)
>
>
> and it works fine, but now i got an error after executing the command make
>
>
> the error is :
>
>
> Traceback (most recent call last):
>   File "/home/qw/workarea/uhd/host/lib/transport/gen_vrt_if_packet.py",
> line 361, in <module>
>     eob_p = 0b1000000,
>   File "/home/qw/workarea/uhd/host/lib/transport/gen_vrt_if_packet.py",
> line 347, in parse_tmpl
>     from mako.template import Template
> ImportError: No module named mako.template
> make[2]: *** [lib/CMakeFiles/uhd.dir/build.make:219:
> lib/transport/vrt_if_packet.cpp] Error 1
> make[2]: *** Deleting file 'lib/transport/vrt_if_packet.cpp'
> make[1]: *** [CMakeFiles/Makefile2:686: lib/CMakeFiles/uhd.dir/all] Error 2
> make: *** [Makefile:163: all] Error 2
>
>
>
> How may I solve it?
>
>
> Regards
>
> Rouba
>

--000000000000380dcc05e04a3f77
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">hii again, i fixed the problem<div><br></div><div>thank yo=
u</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, May 31, 2022 at 10:15 AM rouba zeitoun &lt;<a href=3D"mailto=
:roubazeitoun@gmail.com">roubazeitoun@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello USRP =
experts=C2=A0<div><br></div><div>I am re-installing UHD on my laptop from t=
his site &quot;<a href=3D"https://kb.ettus.com/Building_and_Installing_the_=
USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux" target=3D"_blank">=
https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain=
_(UHD_and_GNU_Radio)_on_Linux</a>&quot;</div><div><br></div><div>But=C2=A0<=
span style=3D"color:rgb(36,41,47);font-family:-apple-system,BlinkMacSystemF=
ont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji=
&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px">when i try to execute the=
 command cmake ../ i get an error, i fixed it by changing=C2=A0</span></div=
><div><span style=3D"color:rgb(36,41,47);font-family:-apple-system,BlinkMac=
SystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Colo=
r Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px"><br></span></div><=
div><p dir=3D"auto" style=3D"box-sizing:border-box;margin-top:0px;margin-bo=
ttom:16px;color:rgb(36,41,47);font-family:-apple-system,BlinkMacSystemFont,=
&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quo=
t;,&quot;Segoe UI Emoji&quot;;font-size:14px">&quot;Boost_FOUND;HAVE_PYTHON=
_PLAT_MIN_VERSION;HAVE_PYTHON_MODULE_MAKO&quot; OFF ON)<br style=3D"box-siz=
ing:border-box">to this</p><p dir=3D"auto" style=3D"box-sizing:border-box;m=
argin-top:0px;color:rgb(36,41,47);font-family:-apple-system,BlinkMacSystemF=
ont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji=
&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px;margin-bottom:0px">&quot;B=
oost_FOUND;HAVE_PYTHON_PLAT_MIN_VERSION;HAVE_PYTHON_MODULE_MAKO&quot; ON ON=
)</p><p dir=3D"auto" style=3D"box-sizing:border-box;margin-top:0px;color:rg=
b(36,41,47);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quo=
t;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI =
Emoji&quot;;font-size:14px;margin-bottom:0px"><br></p><p style=3D"box-sizin=
g:border-box;margin-top:0px;color:rgb(36,41,47);font-family:-apple-system,B=
linkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;App=
le Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px;margin-botto=
m:0px">and it works fine, but now i got an error after executing the comman=
d make</p><p style=3D"box-sizing:border-box;margin-top:0px;color:rgb(36,41,=
47);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helve=
tica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&qu=
ot;;font-size:14px;margin-bottom:0px"><br></p><p style=3D"box-sizing:border=
-box;margin-top:0px;color:rgb(36,41,47);font-family:-apple-system,BlinkMacS=
ystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color=
 Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px;margin-bottom:0px">t=
he error is :</p><p style=3D"box-sizing:border-box;margin-top:0px;color:rgb=
(36,41,47);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot=
;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI E=
moji&quot;;font-size:14px;margin-bottom:0px"><br></p><p style=3D"box-sizing=
:border-box;margin-top:0px;color:rgb(36,41,47);font-family:-apple-system,Bl=
inkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px;margin-bottom=
:0px">Traceback (most recent call last):<br>=C2=A0 File &quot;/home/qw/work=
area/uhd/host/lib/transport/gen_vrt_if_packet.py&quot;, line 361, in &lt;mo=
dule&gt;<br>=C2=A0 =C2=A0 eob_p =3D 0b1000000,<br>=C2=A0 File &quot;/home/q=
w/workarea/uhd/host/lib/transport/gen_vrt_if_packet.py&quot;, line 347, in =
parse_tmpl<br>=C2=A0 =C2=A0 from mako.template import Template<br>ImportErr=
or: No module named mako.template<br>make[2]: *** [lib/CMakeFiles/uhd.dir/b=
uild.make:219: lib/transport/vrt_if_packet.cpp] Error 1<br>make[2]: *** Del=
eting file &#39;lib/transport/vrt_if_packet.cpp&#39;<br>make[1]: *** [CMake=
Files/Makefile2:686: lib/CMakeFiles/uhd.dir/all] Error 2<br>make: *** [Make=
file:163: all] Error 2<br></p><p style=3D"box-sizing:border-box;margin-top:=
0px;color:rgb(36,41,47);font-family:-apple-system,BlinkMacSystemFont,&quot;=
Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&qu=
ot;Segoe UI Emoji&quot;;font-size:14px;margin-bottom:0px"><br></p><p style=
=3D"box-sizing:border-box;margin-top:0px;color:rgb(36,41,47);font-family:-a=
pple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-se=
rif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px=
;margin-bottom:0px"><br></p><p style=3D"box-sizing:border-box;margin-top:0p=
x;color:rgb(36,41,47);font-family:-apple-system,BlinkMacSystemFont,&quot;Se=
goe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot=
;Segoe UI Emoji&quot;;font-size:14px;margin-bottom:0px">How may I solve it?=
</p><p style=3D"box-sizing:border-box;margin-top:0px;color:rgb(36,41,47);fo=
nt-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,A=
rial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;fo=
nt-size:14px;margin-bottom:0px"><br></p><p style=3D"box-sizing:border-box;m=
argin-top:0px;color:rgb(36,41,47);font-family:-apple-system,BlinkMacSystemF=
ont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji=
&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px;margin-bottom:0px">Regards=
</p><p style=3D"box-sizing:border-box;margin-top:0px;color:rgb(36,41,47);fo=
nt-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,A=
rial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;fo=
nt-size:14px;margin-bottom:0px">Rouba</p></div></div>
</blockquote></div>

--000000000000380dcc05e04a3f77--

--===============7300842385056276493==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7300842385056276493==--
