Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B20260233B
	for <lists+usrp-users@lfdr.de>; Tue, 18 Oct 2022 06:25:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 18F10383D8B
	for <lists+usrp-users@lfdr.de>; Tue, 18 Oct 2022 00:25:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666067119; bh=4/7yWWYSYFssSSZW6UcwGWsbU+ATg/frhi4dES+EEFw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=U08jtV+M1A0VnYFRo9UG+vNZpdVK2+Md+upJufTRYZ0or5Dreek/DQ0N3URx5y0Pr
	 YJQTUmbk0HwfSh3KcTPJNMLZ2TO6chD7jj8lFDs8zx9sFXNW/1tFkqWxS/mKjzoBCq
	 a1Y9D2mlxBRG4LTTitXxcbT60ELj6vTsB76621OuZbZQxQzwuap71q4zrIfoCEJEv9
	 x98t7S3HO0HhbWpcGbbAOEme3zyOwaprDJlywnHObZGVj5btF3DM7XwwI/G6Ufdp/p
	 eulPvpE5osKIzaRcPlYpp6cS14qBca8yAwaKLnRrHXXsSI6wL8tGXr+L6waQ+Yh+Z1
	 u+bTU8T3L4Iug==
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com [209.85.219.198])
	by mm2.emwd.com (Postfix) with ESMTPS id 6BAA738098D
	for <usrp-users@lists.ettus.com>; Tue, 18 Oct 2022 00:24:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=dolphinsystem-jp.20210112.gappssmtp.com header.i=@dolphinsystem-jp.20210112.gappssmtp.com header.b="bOcuaJNa";
	dkim-atps=neutral
Received: by mail-yb1-f198.google.com with SMTP id p5-20020a25bd45000000b006beafa0d110so12276295ybm.1
        for <usrp-users@lists.ettus.com>; Mon, 17 Oct 2022 21:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dolphinsystem-jp.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=k3W/V21YLNClWwkX+a/Eg83SNWuYM6Y2paRj0x4K//I=;
        b=bOcuaJNa15KEyhTRhG2LVj53siav5KSWKvIzbIXo9EHe75N5UuOK9Mggv1+vn278QU
         lx+64cSBo0QgViULTisolvXkXC4FOCeiSuP0xh5r8BHw4e910QyTfQ+kof5qsA8vMh+P
         2PnPfjuCA+MgdCjeOtQtxIXidc1/xi8CBte23Ta3Titxl+HdGIDrw4tbxCiNZ02C4bCz
         wE08DuvP8B6Sm6zm9P9AD/1JWfqZnnk1GfDj5d7trBKmTIuPvf8tYyyEkWt2jfJwSabT
         GhU83KLHH9tjDXhya9zMYSXovheiIJxAqgDLU2+4b4zH0nlct5kCxO5zu7Ps/U9jza3A
         tbZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k3W/V21YLNClWwkX+a/Eg83SNWuYM6Y2paRj0x4K//I=;
        b=vdqBt6Ij9rPovhNEf0JdotBEwETFwtfX8vJvZsG8nAB0tPwiU3Yk0xabs3CkkwZHoV
         OAruKtIN98gt7csyzIT2l7iZs3QIaxD3fN/VJHXPXFP2neVJ0PxnqPDl59am7MnZ+QhT
         MWe+KhjtSwzIqfJpcItxdg++MUAV/hRwWrzg0ZuH99i7MhyU2B981AcaiSFwRZvi9lha
         oEtse4BfAO3cVxlQKOYskn630ilMIwPJ3yI3hnF9h8wcAxk0HNrN7Cy00yjoOfd2uRzb
         3PwwBt29llHwW3NKLEs4bP4mjfVjbX2SFPK7TRnYp9emIt+wHKzZxTNKxUg2UVZKIpuc
         1NNw==
X-Gm-Message-State: ACrzQf2qTQWuv51pZ6iSTtTWSV4rb7hO9PdlI80hIuDKS/fpgbzx+YKG
	eJQbIXqHnILtf2ANw3Ct5zs0SIN1do5eHRii5B7J0s3px/CkHm29
X-Google-Smtp-Source: AMsMyM65HtQd2RuAYaEmUgG1nIWjAU1Ij6of1YdniDYWIsEsfKruVTwmyhEq5Z3Oj4jnmugiw0qI1wpfWq0S9mPQsps=
X-Received: by 2002:a25:4fd6:0:b0:6bc:ad84:c252 with SMTP id
 d205-20020a254fd6000000b006bcad84c252mr813493ybb.528.1666067040714; Mon, 17
 Oct 2022 21:24:00 -0700 (PDT)
MIME-Version: 1.0
References: <CABfZwcdmTTvRjhnPn-qrEy57B8CdnbTfA1x3rw44=0s4VuqfvA@mail.gmail.com>
 <522294f8-ad68-c2b0-c6a0-dcc683ffd730@gmail.com>
In-Reply-To: <522294f8-ad68-c2b0-c6a0-dcc683ffd730@gmail.com>
From: Mikio Fukushima <mikio@dolphinsystem.jp>
Date: Tue, 18 Oct 2022 13:23:25 +0900
Message-ID: <CABfZwccidD5CdvTD5AgHNrsG-Xwmu2y452w1iQK-kSky60yOMw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: LAQXWL24TP5BFRSAZYGPC37JGVWD25XN
X-Message-ID-Hash: LAQXWL24TP5BFRSAZYGPC37JGVWD25XN
X-MailFrom: mikio@dolphinsystem.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: fifo ctrl timed out error (LFRX on a N210)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LAQXWL24TP5BFRSAZYGPC37JGVWD25XN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8179892307284976877=="

--===============8179892307284976877==
Content-Type: multipart/alternative; boundary="000000000000225dcf05eb47768b"

--000000000000225dcf05eb47768b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Marcus
Thank you for your reply.

I tried a UHD 3.15(x64 VS2009).
There is no "Error: LookupError: IndexError: multi_usrp: RX channel 12 out
of range for configured RX frontends".
But when press "Ctrl + C" to stop rx_samples_to_file.exe then fifo timed
out error occured.

Setting RX Freq: 1.000000 MHz...
Setting RX LO Offset: 0.000000 MHz...
Actual RX Freq: 1.000000 MHz...

Press Ctrl + C to stop streaming...

Done!

[ERROR] [UHD] Exception caught in safe-call.
 in __cdecl usrp2_fifo_ctrl_impl::~usrp2_fifo_ctrl_impl(void)
 at
C:\Users\buildbot\worker\Builder_uhdPackage_Windows_x64_vs2019\work\uhd\hos=
t\lib\usrp\usrp2\usrp2_fifo_ctrl.cpp:54
this->peek32(0); -> RuntimeError: fifo ctrl timed out looking for acks

Thanks.


2022=E5=B9=B410=E6=9C=8817=E6=97=A5(=E6=9C=88) 23:19 Marcus D. Leech <patch=
vonbraun@gmail.com>:

> On 2022-10-17 03:41, Mikio Fukushima wrote:
>
> Hi,
> I want to use one or two channels on one LFRX on a N210 on Windows.
> but fifo ctrl timeout error occured.
> uhd_usrp_probe, uhd_find_device and ping are OK.
> Why?
>
> - Environment
>
> Windows 10
> UHD 4.3.0.0 (x64, VS2019)
> LFRX on USRP2(r4)
>
> - error message
>
> C:\Program Files\UHD\lib\uhd\examples>rx_samples_to_file.exe --args
> "addr=3D192.168.1.52" --rate 1e6  --freq 1e6
>
> Creating the usrp device with: addr=3D192.168.1.52...
> [INFO] [UHD] Win32; Microsoft Visual C++ version 1925; Boost_107000;
> UHD_4.2.0.0-release
> [INFO] [USRP2] Opening a USRP2/N-Series device...
> [INFO] [USRP2] Current recv frame size: 1472 bytes
> [INFO] [USRP2] Current send frame size: 1472 bytes
> Using Device: Single USRP:
>   Device: USRP2 / N-Series Device
>   Mboard 0: USRP2 r4
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: LFRX (AB)
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: LFTX (AB)
>
> Setting RX Rate: 1.000000 Msps...
> [ERROR] [UHD] Exception caught in safe-call.
>   in usrp2_fifo_ctrl_impl::~usrp2_fifo_ctrl_impl
>   at
> C:\Users\buildbot\worker0\Builder_uhdPackage_Windows_x64_vs2019\work\uhd\=
host\lib\usrp\usrp2\usrp2_fifo_ctrl.cpp:51
> this->peek32(0); -> RuntimeError: fifo ctrl timed out looking for acks
> Error: LookupError: IndexError: multi_usrp: RX channel 12 out of range fo=
r
> configured RX frontends
>
> The "fifo ctrl timed out" message usually happens when the network
> buffering is inadequate, and UHD is losing packets--although
>   at 1Msps, it surely shouldn't be.  But this is a windows deployment, an=
d
> I'm much less familiar with its quirks.
>
> The MORE concerning thing is the message about RX channel 12 out of
> range.   I'm not sure what it's trying to convey,
>   but there's no way to have 12 channels on a single USRP N210.
>
> Could you try dropping back to an older version of UHD (3.15 perhaps?) to
> see if this is still present?
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>


--=20
2021/09/27=E3=81=8B=E3=82=89=E6=96=B0=E4=BA=8B=E5=8B=99=E6=89=80=E3=81=AB=
=E7=A7=BB=E8=BB=A2=E3=81=97=E3=81=BE=E3=81=97=E3=81=9F=EF=BC=81
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
 =E7=A6=8F=E5=B3=B6 =E5=B9=B9=E9=9B=84 (Mikio Fukushima)
 =E6=A0=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE=E3=83=89=E3=83=AB=E3=83=95=E3=82=A3=
=E3=83=B3=E3=82=B7=E3=82=B9=E3=83=86=E3=83=A0 (Dolphin System Co.,Ltd)

=E3=80=92171-0014 =E6=9D=B1=E4=BA=AC=E9=83=BD=E8=B1=8A=E5=B3=B6=E5=8C=BA=E6=
=B1=A0=E8=A2=8B=EF=BC=91=EF=BC=8D=EF=BC=98=EF=BC=8D=EF=BC=95
=E3=83=9F=E3=83=B3=E3=83=88=E3=83=AD=E3=83=B3=E3=83=93=E3=83=AB=EF=BC=95=EF=
=BC=A6

Mail: mikio@dolphinsystem.jp
URL : http://www.dolphinsystem.jp/
TEL/FAX : 03-6658-4949
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

--000000000000225dcf05eb47768b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, Marcus<div><font face=3D"Arial, Helvetica, sans-serif"=
>Thank you for your reply.</font></div><div><br></div><div>I tried a UHD 3.=
15(x64 VS2009).=C2=A0</div><div>There is no &quot;Error: LookupError: Index=
Error: multi_usrp: RX channel 12 out of range for configured RX frontends&q=
uot;.=C2=A0=C2=A0</div><div>But when press &quot;Ctrl + C&quot; to stop rx_=
samples_to_file.exe then fifo timed out error occured.<br></div><div><font =
face=3D"Arial, Helvetica, sans-serif"><br></font></div><div><div>Setting RX=
 Freq: 1.000000 MHz...<br>		Setting RX LO Offset: 0.000000 MHz...<br>		Actu=
al RX Freq: 1.000000 MHz...<br>		<br>		Press Ctrl + C to stop streaming...<=
br>		<br>		Done!<br>		<br>		[ERROR] [UHD] Exception caught in safe-call.<br=
>		 =C2=A0in __cdecl usrp2_fifo_ctrl_impl::~usrp2_fifo_ctrl_impl(void)<br>	=
	 =C2=A0at C:\Users\buildbot\worker\Builder_uhdPackage_Windows_x64_vs2019\w=
ork\uhd\host\lib\usrp\usrp2\usrp2_fifo_ctrl.cpp:54<br>this-&gt;peek32(0); -=
&gt; RuntimeError: fifo ctrl timed out looking for acks<br></div><div><br><=
/div><div>Thanks.</div><div><br></div></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">2022=E5=B9=B410=E6=9C=8817=E6=
=97=A5(=E6=9C=88) 23:19 Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun=
@gmail.com">patchvonbraun@gmail.com</a>&gt;:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-10-17 03:41, Mikio Fukushima
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr">
            <div dir=3D"ltr">
              <div dir=3D"ltr">
                <div>Hi,<br>
                  I want to use one or two channels on one LFRX on a
                  N210 on Windows.<br>
                  but fifo ctrl timeout error occured. <br>
                  uhd_usrp_probe, uhd_find_device and ping are OK.<br>
                  Why?</div>
                <div><br>
                </div>
                <div>
                  <div>- Environment</div>
                  <div><br>
                  </div>
                  <div>Windows 10</div>
                  <div>UHD 4.3.0.0 (x64, VS2019)</div>
                  <div>LFRX on USRP2(r4)</div>
                  <div><br>
                  </div>
                  <div>- error message</div>
                  <div><br>
                  </div>
                  C:\Program
                  Files\UHD\lib\uhd\examples&gt;rx_samples_to_file.exe
                  --args &quot;addr=3D192.168.1.52&quot; --rate 1e6 =C2=A0-=
-freq 1e6<br>
                  <br>
                  Creating the usrp device with: addr=3D192.168.1.52...<br>
                  [INFO] [UHD] Win32; Microsoft Visual C++ version 1925;
                  Boost_107000; UHD_4.2.0.0-release<br>
                  [INFO] [USRP2] Opening a USRP2/N-Series device...<br>
                  [INFO] [USRP2] Current recv frame size: 1472 bytes<br>
                  [INFO] [USRP2] Current send frame size: 1472 bytes<br>
                  Using Device: Single USRP:<br>
                  =C2=A0 Device: USRP2 / N-Series Device<br>
                  =C2=A0 Mboard 0: USRP2 r4<br>
                  =C2=A0 RX Channel: 0<br>
                  =C2=A0 =C2=A0 RX DSP: 0<br>
                  =C2=A0 =C2=A0 RX Dboard: A<br>
                  =C2=A0 =C2=A0 RX Subdev: LFRX (AB)<br>
                  =C2=A0 TX Channel: 0<br>
                  =C2=A0 =C2=A0 TX DSP: 0<br>
                  =C2=A0 =C2=A0 TX Dboard: A<br>
                  =C2=A0 =C2=A0 TX Subdev: LFTX (AB)<br>
                  <br>
                  Setting RX Rate: 1.000000 Msps...<br>
                  [ERROR] [UHD] Exception caught in safe-call.<br>
                  =C2=A0 in usrp2_fifo_ctrl_impl::~usrp2_fifo_ctrl_impl<br>
                  =C2=A0 at
C:\Users\buildbot\worker0\Builder_uhdPackage_Windows_x64_vs2019\work\uhd\ho=
st\lib\usrp\usrp2\usrp2_fifo_ctrl.cpp:51<br>
                  this-&gt;peek32(0); -&gt; RuntimeError: fifo ctrl
                  timed out looking for acks<br>
                  Error: LookupError: IndexError: multi_usrp: RX channel
                  12 out of range for configured RX frontends<br>
                </div>
                <br>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    The &quot;fifo ctrl timed out&quot; message usually happens when the ne=
twork
    buffering is inadequate, and UHD is losing packets--although<br>
    =C2=A0 at 1Msps, it surely shouldn&#39;t be.=C2=A0 But this is a window=
s
    deployment, and I&#39;m much less familiar with its quirks.<br>
    <br>
    The MORE concerning thing is the message about RX channel 12 out of
    range.=C2=A0=C2=A0 I&#39;m not sure what it&#39;s trying to convey,<br>
    =C2=A0 but there&#39;s no way to have 12 channels on a single USRP N210=
.<br>
    <br>
    Could you try dropping back to an older version of UHD (3.15
    perhaps?) to see if this is still present?<br>
    <br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div>2021/09/27=E3=81=8B=E3=82=89=E6=96=B0=E4=BA=8B=E5=8B=99=E6=89=80=E3=
=81=AB=E7=A7=BB=E8=BB=A2=E3=81=97=E3=81=BE=E3=81=97=E3=81=9F=EF=BC=81</div>=
<div><span style=3D"color:rgb(34,34,34)">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span=
><br></div><div>=C2=A0=E7=A6=8F=E5=B3=B6 =E5=B9=B9=E9=9B=84 (Mikio Fukushim=
a)</div><div>=C2=A0=E6=A0=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE=E3=83=89=E3=83=AB=
=E3=83=95=E3=82=A3=E3=83=B3=E3=82=B7=E3=82=B9=E3=83=86=E3=83=A0 (Dolphin Sy=
stem Co.,Ltd)</div><div><br></div><div>=E3=80=92171-0014 =E6=9D=B1=E4=BA=AC=
=E9=83=BD=E8=B1=8A=E5=B3=B6=E5=8C=BA=E6=B1=A0=E8=A2=8B=EF=BC=91=EF=BC=8D=EF=
=BC=98=EF=BC=8D=EF=BC=95</div><div>=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=
=80=80=E3=80=80=E3=83=9F=E3=83=B3=E3=83=88=E3=83=AD=E3=83=B3=E3=83=93=E3=83=
=AB=EF=BC=95=EF=BC=A6</div><div><br></div><div>Mail: <a href=3D"mailto:miki=
o@dolphinsystem.jp" target=3D"_blank">mikio@dolphinsystem.jp</a></div><div>=
URL : <a href=3D"http://www.dolphinsystem.jp/" target=3D"_blank">http://www=
.dolphinsystem.jp/</a></div><div>TEL/FAX : 03-6658-4949</div><div><span sty=
le=3D"color:rgb(34,34,34)">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><br></div></di=
v></div></div></div>

--000000000000225dcf05eb47768b--

--===============8179892307284976877==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8179892307284976877==--
