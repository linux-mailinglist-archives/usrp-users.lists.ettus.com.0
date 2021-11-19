Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 161174576DB
	for <lists+usrp-users@lfdr.de>; Fri, 19 Nov 2021 20:04:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E2A55384108
	for <lists+usrp-users@lfdr.de>; Fri, 19 Nov 2021 14:04:56 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="YoxJ2lCR";
	dkim-atps=neutral
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 7C5E3384108
	for <usrp-users@lists.ettus.com>; Fri, 19 Nov 2021 14:04:10 -0500 (EST)
Received: by mail-oi1-f180.google.com with SMTP id bj13so23610870oib.4
        for <usrp-users@lists.ettus.com>; Fri, 19 Nov 2021 11:04:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GAZ0gE83iepp27xy/hHX4qadw4GxkQtPYSsvEO5cHjs=;
        b=YoxJ2lCR2spjQm65qFJOFXYKaytp3wwcbq0JprWZJrR4/0jjtrtWlwvebC8R5FA7Qv
         SvK8JkVElZWC3avva4vOG52yrtBr0fOoC+6+YL9BQIzaoO2rVuBtG+2f68ymf18Xtlo2
         qQV4xze78/x2eJhtk/RFzpKRI+QZiBe60cyu/mRmLijQaWH3wyrSLwMVW1xBcaW+vImx
         wKjTqS7qaXEIiYxB+mEhZeYOUPsiPOcBReW4soxoipx0ChQggcfNW4vUTGKL+tybleR1
         jznTk5SqZaMM6ftEqzcNxqtsZKVMSHoWhzLiI3LogTdGZqBUxKv35IDgEa4b50O4L1nj
         fvcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GAZ0gE83iepp27xy/hHX4qadw4GxkQtPYSsvEO5cHjs=;
        b=NyMMt5o5aBCmrc1O4XMUXI2F8TESjkImpVpDeWaKfnQLeueIiQIDUcc/edxqUpQL6m
         yGNVkb//XEptmS9FkgRfHaxKE4YIDgQPDF9lakQmL2eisln9Tha4sExP3l17kj+LkDcC
         J9NviUrT47RVhBeh7gFS4qPakAgELOda31cqHeQYrxW5BHBjGOZqzhX513Fsi1AZMYcC
         nWR4AGVlRnHuyxZ78K/HTo9qDblQri54vdPU53ibIj6I4/ph86jVSnkZ2Ojnc7CMhI9D
         Cf9NfbZIyFiK3cTpHsFjOjyT3l9wY/vt6++jLPU9kcbRjngjpGLH7v3CMWNBqzDCcwp8
         S8fA==
X-Gm-Message-State: AOAM532NjAA+zPYfysCAyhbR8SRpCH7NdaLjryKNT5/0k2bHVOxLR5qC
	4C/WV+aT/p02UzGLeETT4JNY2NaTai1IiC3Ck4O5eQ==
X-Google-Smtp-Source: ABdhPJwRQpzr5xz0GqdSy40fG8mpPL2vIfr0HuEmP97H1OXgR2HNyLB04Yti42E0WAcqrNJKfOyHwuyKMc55A4XwGu0=
X-Received: by 2002:a05:6808:1919:: with SMTP id bf25mr1966918oib.33.1637348649665;
 Fri, 19 Nov 2021 11:04:09 -0800 (PST)
MIME-Version: 1.0
References: <d078107dcf9a451fa06aabce9066ae81@gtri.gatech.edu>
In-Reply-To: <d078107dcf9a451fa06aabce9066ae81@gtri.gatech.edu>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 19 Nov 2021 14:03:58 -0500
Message-ID: <CAB__hTSsRx7v0Ob4YNsju08O=8J8ESE+P89KOApWiKifPNRQAw@mail.gmail.com>
To: "Rich, Michael" <Michael.Rich@gtri.gatech.edu>
Message-ID-Hash: GSTSLGF7XIL7VR366PFRSDB24SK6AYSA
X-Message-ID-Hash: GSTSLGF7XIL7VR366PFRSDB24SK6AYSA
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Testbench Compile Error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GSTSLGF7XIL7VR366PFRSDB24SK6AYSA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8678729093044952200=="

--===============8678729093044952200==
Content-Type: multipart/alternative; boundary="000000000000a3401105d128f06a"

--000000000000a3401105d128f06a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Are you able to run the testbench for the provided "rfnoc-example" folder?
I notice that the gain testbench that is part of this example has the
following as the last statement. Perhaps this is needed?

`default_nettype wire

On Fri, Nov 19, 2021 at 11:53 AM Rich, Michael via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I=E2=80=99m trying to run the testbench for a new module I created (UHD4)=
 and I=E2=80=99m
> getting the following error:
>
>
>
> INFO: [VRFC 10-2263] Analyzing Verilog file
> "/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v" into library
> xil_defaultlib
>
> INFO: [VRFC 10-311] analyzing module gray2bin
>
> ERROR: [VRFC 10-1103] net type must be explicitly specified for 'gray'
> when default_nettype is none
> [/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:13]
>
> ERROR: [VRFC 10-3594] non-net port 'gray' cannot be of mode input
> [/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:13]
>
> ERROR: [VRFC 10-845] illegal operand for operator ^
> [/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:21]
>
> ERROR: [VRFC 10-2865] module 'gray2bin' ignored due to previous errors
> [/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:10]
>
>
>
> This file seems to compile without issue on my previous testbench, so I=
=E2=80=99m
> not sure what the difference would be here. If anyone has any insights in=
to
> what could be going on I=E2=80=99d greatly appreciate it.
>
>
>
> Thank you,
>
>
>
> *Michael H. Rich*
>
> *Electronic Systems Laboratory*
>
> *Georgia Tech Research Institute=C2=AE*
>
> Phone: (404) 407-8358
>
> E-mail: michael.rich@gtri.gatech.edu
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a3401105d128f06a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Are you able to run the testbench for the provided &quot;r=
fnoc-example&quot; folder?=C2=A0 I notice that the gain testbench that is p=
art of this example has the following as the last statement. Perhaps this i=
s needed?<div><br></div><div>`default_nettype wire<br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 19,=
 2021 at 11:53 AM Rich, Michael via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><div cl=
ass=3D"gmail-m_-5402197018371548508WordSection1"><p class=3D"MsoNormal">I=
=E2=80=99m trying to run the testbench for a new module I created (UHD4) an=
d I=E2=80=99m getting the following error:<u></u><u></u></p><p class=3D"Mso=
Normal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"><span style=3D"font-=
family:&quot;Courier New&quot;">INFO: [VRFC 10-2263] Analyzing Verilog file=
 &quot;/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v&quot; into library x=
il_defaultlib<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D=
"font-family:&quot;Courier New&quot;">INFO: [VRFC 10-311] analyzing module =
gray2bin<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font=
-family:&quot;Courier New&quot;">ERROR: [VRFC 10-1103] net type must be exp=
licitly specified for &#39;gray&#39; when default_nettype is none [/home/nv=
d/uhd/fpga/usrp3/lib/control/gray2bin.v:13]<u></u><u></u></span></p><p clas=
s=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">ERROR: =
[VRFC 10-3594] non-net port &#39;gray&#39; cannot be of mode input [/home/n=
vd/uhd/fpga/usrp3/lib/control/gray2bin.v:13]<u></u><u></u></span></p><p cla=
ss=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">ERROR:=
 [VRFC 10-845] illegal operand for operator ^ [/home/nvd/uhd/fpga/usrp3/lib=
/control/gray2bin.v:21]<u></u><u></u></span></p><p class=3D"MsoNormal"><spa=
n style=3D"font-family:&quot;Courier New&quot;">ERROR: [VRFC 10-2865] modul=
e &#39;gray2bin&#39; ignored due to previous errors [/home/nvd/uhd/fpga/usr=
p3/lib/control/gray2bin.v:10]<u></u><u></u></span></p><p class=3D"MsoNormal=
"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">This file seems to compile=
 without issue on my previous testbench, so I=E2=80=99m not sure what the d=
ifference would be here. If anyone has any insights into what could be goin=
g on I=E2=80=99d greatly appreciate it.<u></u><u></u></p><p class=3D"MsoNor=
mal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">Thank you,<u></u><u></u=
></p><p class=3D"MsoNormal"><b><span style=3D"font-size:12pt;color:black"><=
u></u>=C2=A0<u></u></span></b></p><p class=3D"MsoNormal"><b><span style=3D"=
font-size:12pt;color:black">Michael H. Rich</span></b><span style=3D"color:=
rgb(31,73,125)"><u></u><u></u></span></p><p class=3D"MsoNormal"><i><span st=
yle=3D"font-size:10pt;color:black">Electronic Systems Laboratory</span></i>=
<span style=3D"color:rgb(31,73,125)"><u></u><u></u></span></p><p class=3D"M=
soNormal"><b><i><span style=3D"font-size:10pt;color:black">Georgia Tech Res=
earch Institute=C2=AE</span></i></b><span style=3D"color:rgb(31,73,125)"><u=
></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:10pt=
;color:black">Phone: (404) 407-8358</span><span style=3D"color:rgb(31,73,12=
5)"><u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-siz=
e:10pt;color:black">E-mail:</span><span style=3D"font-size:10pt;color:rgb(3=
1,73,125)"> <a href=3D"mailto:michael.rich@gtri.gatech.edu" target=3D"_blan=
k"><span style=3D"color:blue">michael.rich@gtri.gatech.edu</span></a></span=
><span style=3D"color:rgb(31,73,125)"><u></u><u></u></span></p><p class=3D"=
MsoNormal"><u></u>=C2=A0<u></u></p></div></div>____________________________=
___________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a3401105d128f06a--

--===============8678729093044952200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8678729093044952200==--
