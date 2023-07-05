Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A91747C14
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jul 2023 06:36:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D44E6380987
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jul 2023 00:36:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688531794; bh=XcQTS7mwN3s3t4g8cqA6gxE8u13u8wiiEQu6d7LChTg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=FRXJBXJMHXzHIb4s/C5IJ/UA6LDJPLJNGnO4tO7MhEuIOc8vWDyhRw4HXWf/u21kY
	 luJ/o6ztZhcQk7Z8UB68yB6diWDRZ4dDU0XSoCiNF/B8OH55C8RzQjhdEms6InUvbf
	 S3zNQvqwoewy5gKbIn8A/IkydjcaFUMbJEUtckODao6y2cNAicwg6gTAoN7FFQv/oR
	 1hJp51LOSm7SjsoK1mVKrIYZWGNTAtgW2Wz3ID8n3qhSxxeQo25rigt5y8lTaDgsOQ
	 BPwotCw66P8aeT7GWyR3RtyC0yLa8khi/m2Zc/+45X3e4aajGfCAsLkeBOf9fJ3a4S
	 SVD9Drlkcfe5g==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id A25713811FB
	for <usrp-users@lists.ettus.com>; Wed,  5 Jul 2023 00:35:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="Qba6Drtk";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-992acf67388so598444966b.1
        for <usrp-users@lists.ettus.com>; Tue, 04 Jul 2023 21:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1688531738; x=1691123738;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Q0D0ErVYoTE3Tt+EFU+NvgSSyhUeDmOey6P754IDH7M=;
        b=Qba6DrtkFo6BVE0UhyFDFf1ZWqeBW/2Cj0pMmjHOrATS9otEO+LI5ISAVYj28hPrrH
         3lfxqPiO4wzE/VlTrT8nCKPdH+d0KzhjezXtx1ZpagrT5M/xJHd+GGWSKRjwfavTGcSk
         F40nU9FpMoqd8hcbrjX6DQFNf2TpfPBUoTDQRNnb/dqJ1oQm8cf+8/YMlFuYfbPyVc/u
         YLetOURt2QYkOL+KqsE0gmp7oCVlOQwmqjlFsZ+aW7oN0KXxwpd+DVUTVU51m7AoJp3Z
         RkMRUM5+wBn3nQqiGP+GgKbjEu3Bvnxca53LVNWiLxIjUayKbR8k1n+/16lAZpYSdIuq
         Sdxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688531738; x=1691123738;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q0D0ErVYoTE3Tt+EFU+NvgSSyhUeDmOey6P754IDH7M=;
        b=kP/d6bjjo6HRL+iZCQxJ1Oszfn9EWoY7/Fn33HHKZAaGHofGFJ94HnVhAk8T/pEBDx
         9WesIhVSDMxoHqNTkb6fSHL0aED++BZYUFAUak6jt2IYQUc64Pp/dvGSsxEg69vpk0jZ
         BPNqYc/Y7sVR1mhl/FoEqLik4d2RpiE1EaspaS4PnfFwdlGJ+Ql5oUUX8hawOvkeSAR9
         TFrScWbf43O9v3xP2P6Joe28iWyP85Up39bxf6x/MEq0jeQ2xDBUvMDF0ehMmwMTg4Ve
         AsAoiakYpz+yGLBH1NELBT16FgP1djU3KZB4/bpXTmX5Sl7dMt+gt7IWZgBHtX9qIq9H
         oSLg==
X-Gm-Message-State: ABy/qLbScZRF9WatLK9uitSWTJvGkU97kg1Hp4O+jfyEP/lJdMcClbEr
	rcOIKb1tHpQNOShaBNOoU5lGyraUm8+QSvZqgaP7Xy6rYsj2jjuwNsEMmA==
X-Google-Smtp-Source: APBJJlEwdj2Wzlc5auCu2guTrzNYSl1x8Eco9Tiy7jagc0Pgzj/wQfNvi2E5vAkUS2ClVPk2+D6hC2jNYfn4drNcpaQ=
X-Received: by 2002:a17:907:1750:b0:991:ed4e:1c84 with SMTP id
 lf16-20020a170907175000b00991ed4e1c84mr8152463ejc.25.1688531738310; Tue, 04
 Jul 2023 21:35:38 -0700 (PDT)
MIME-Version: 1.0
References: <a8347b099c6c4bd3b6426f878b2827f9@iis.fraunhofer.de>
In-Reply-To: <a8347b099c6c4bd3b6426f878b2827f9@iis.fraunhofer.de>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 4 Jul 2023 22:35:22 -0600
Message-ID: <CAFche=iwSbhjjufezRYPK4ByFLJx-mHgTEFuoe9rsHj1MP-UuQ@mail.gmail.com>
To: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>
Message-ID-Hash: EDJH4GFSRA5KC6EISU4EQEQ423OKKFGI
X-Message-ID-Hash: EDJH4GFSRA5KC6EISU4EQEQ423OKKFGI
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "Nieland, Michael" <michael.nieland@iis.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Image Builder: two problems with Vitis HLS
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EDJH4GFSRA5KC6EISU4EQEQ423OKKFGI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6757223907238179338=="

--===============6757223907238179338==
Content-Type: multipart/alternative; boundary="0000000000007449e305ffb5eef1"

--0000000000007449e305ffb5eef1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Luca,

Can you try going into the uhd/fpga/usrp3/top/n3xx/ and running `make
cleanall` and running the build again? You should not have had to manually
upgrade IP unless there was some kind of mismatch somewhere. Perhaps you
tried building first without the patch but didn't clean out the old IP that
was generated? A version mismatch might explain the HLS error you're
getting. If the HLS IP continues to give you problems, you could try
commenting out this line.

https://github.com/EttusResearch/uhddev/blob/UHD-4.3/fpga/usrp3/lib/hls/Mak=
efile.inc#L7

Wade

On Tue, Jul 4, 2023 at 5:50=E2=80=AFAM Bachmaier, Luca <
luca.bachmaier@iis.fraunhofer.de> wrote:

> Hello everyone,
>
>
>
> I'm currently stuck with creating a custom RFNoC bitfile with
> rfnoc_image_builder. I'm building the image for a USRP N310 and the
> software I'm using is the following:
>
>      - Debian 12
>
>      - Python 3.11.2
>
>      - UHD 4.3.0.0
>
>      - Vivado 2021.1 (installed with the additional patch)
>
>
>
> The command I use to build the image is (I created the file
> n310_rfnoc_fosphor.yml myself):
>
>      rfnoc_image_builder -F ~/uhd/fpga -y
> ~/core_yml/n310_rfnoc_fosphor.yml -t N310_XG
>
>
>
>
>
> After an unsuccessful build, the image builder gets stuck with HLS:
>
>      =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
>      BUILDER: Building HLS IP addsub_hls
>
>      =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
>      BUILDER: Staging HLS IP in build directory...
>
>      Waiting for concurrent IP build to finish... (1800s [Ctrl-C to
> proceed])
>
>
>
> I was wondering if there was a way to skip the concurrent IP build, using
> Ctrl-C only causes the entire rfnoc_image_builder to exit unsuccessfully
> with:
>
>      make: *** [Makefile:90: N3X0_IP] Interrupt
>
>
>
>
>
> Waiting for the timeout after 1800 seconds throws the following error tha=
t
> I do not understand at all:
>
>      source /tools/Xilinx/Vitis_HLS/2021.1/scripts/vitis_hls/hls.tcl
> -notrace
>
>      can't read "zny": no such variable
>
>           while executing
>
>      "0Nyy-&ur-r$$!$-9-)n$ v t-n q- !$zny-%vz'yn&v! -v s!$zn&v!
> -zr%%ntr%-n$r-v -&uv%-svyr-"
>
>           (file
> "/tools/Xilinx/Vitis_HLS/2021.1/common/scripts/error_message.tcl" line 2)
>
>            invoked from within
>
>
>
>
>
> Additional info: before that, I had to upgrade two IP cores provided by
> UHD in Vivado manually because rfnoc_image_builder threw the error:
>
>      CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for
> the following file is locked:
>
>
> /home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2=
/hb47_1to2.xci
>
>
>
>
>
> I would be happy to hear any help or pointers to how I could solve this
> problem.
>
>
>
>
>
> Thank you and regards
>
> Luca Bachmaier
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007449e305ffb5eef1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Luca,<br></div><div><br></div><di=
v>Can you try going into the uhd/fpga/usrp3/top/n3xx/ and running `make cle=
anall` and running the build again? You should not have had to manually upg=
rade IP unless there was some kind of mismatch somewhere. Perhaps you tried=
 building first without the patch but didn&#39;t clean out the old IP that =
was generated? A version mismatch might explain the HLS error you&#39;re ge=
tting. If the HLS IP continues to give you problems, you could try commenti=
ng out this line.</div><div><br></div><div><a href=3D"https://github.com/Et=
tusResearch/uhddev/blob/UHD-4.3/fpga/usrp3/lib/hls/Makefile.inc#L7">https:/=
/github.com/EttusResearch/uhddev/blob/UHD-4.3/fpga/usrp3/lib/hls/Makefile.i=
nc#L7</a></div><div><br></div><div>Wade<br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 4, 2023 at 5:5=
0=E2=80=AFAM Bachmaier, Luca &lt;<a href=3D"mailto:luca.bachmaier@iis.fraun=
hofer.de">luca.bachmaier@iis.fraunhofer.de</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-264043193850217=
8404">





<div lang=3D"DE">
<div class=3D"m_-2640431938502178404WordSection1">
<p class=3D"MsoNormal">Hello everyone,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#39;m currently stuck with cr=
eating a custom RFNoC bitfile with rfnoc_image_builder. I&#39;m building th=
e image for a USRP N310 and the software I&#39;m using is the following:<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 - Debi=
an 12<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 - Pyth=
on 3.11.2<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 - UHD =
4.3.0.0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 - Viva=
do 2021.1 (installed with the additional patch)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The command I use to build the =
image is (I created the file n310_rfnoc_fosphor.yml myself):<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 rfnoc_=
image_builder -F ~/uhd/fpga -y ~/core_yml/n310_rfnoc_fosphor.yml -t N310_XG=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">After an unsuccessful build, th=
e image builder gets stuck with HLS:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 =3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 BUILDE=
R: Building HLS IP addsub_hls<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 =3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 BUILDE=
R: Staging HLS IP in build directory...<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 Waitin=
g for concurrent IP build to finish... (1800s [Ctrl-C to proceed])<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I was wondering if there was a =
way to skip the concurrent IP build, using Ctrl-C only causes the entire rf=
noc_image_builder to exit unsuccessfully with:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 make: =
*** [Makefile:90: N3X0_IP] Interrupt<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Waiting for the timeout after 1=
800 seconds throws the following error that I do not understand at all:<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 source=
 /tools/Xilinx/Vitis_HLS/2021.1/scripts/vitis_hls/hls.tcl -notrace<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 can&#3=
9;t read &quot;zny&quot;: no such variable<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 </span>while executing<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 &quot;0Nyy-&amp;ur-r$$!$-9-=
)n$ v t-n q- !$zny-%vz&#39;yn&amp;v! -v s!$zn&amp;v! -zr%%ntr%-n$r-v -&amp;=
uv%-svyr-&quot;<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 <span lang=3D"EN-US">(file &quot;/tools/Xilinx/Vitis_HLS/2021.1/common/=
scripts/error_message.tcl&quot; line 2)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 invoked from within<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Additional info: before that, I=
 had to upgrade two IP cores provided by UHD in Vivado manually because rfn=
oc_image_builder threw the error:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 CRITIC=
AL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the following =
file is locked:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 /home/=
fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1t=
o2.xci<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I would be happy to hear any he=
lp or pointers to how I could solve this problem.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal">Thank you and regards<u></u><u></u></p>
<p class=3D"MsoNormal">Luca Bachmaier<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div></div>

--0000000000007449e305ffb5eef1--

--===============6757223907238179338==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6757223907238179338==--
