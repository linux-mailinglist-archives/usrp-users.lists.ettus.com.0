Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D541F10F76E
	for <lists+usrp-users@lfdr.de>; Tue,  3 Dec 2019 06:39:26 +0100 (CET)
Received: from [::1] (port=47838 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ic0u9-000254-25; Tue, 03 Dec 2019 00:39:21 -0500
Received: from mail-ed1-f44.google.com ([209.85.208.44]:37037)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <msee17016@itu.edu.pk>)
 id 1ic0u5-00021S-9j
 for usrp-users@lists.ettus.com; Tue, 03 Dec 2019 00:39:17 -0500
Received: by mail-ed1-f44.google.com with SMTP id cy15so2062615edb.4
 for <usrp-users@lists.ettus.com>; Mon, 02 Dec 2019 21:38:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itu-edu-pk.20150623.gappssmtp.com; s=20150623;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=dGsFJzSLDDZ4VKl4cYBCE0Zec/ZaK3qZcpiPYcZDGJI=;
 b=JXLnwHaCAnHz43g+APEa4oKNT/EiXI2EQYVNOyOnEf7oCFnDRFGjvWlCC1DiW28FE+
 ffYqONvCZh33zZs5W77yW5yJF+kc4XsoJHwOeBqntkw7iy6wuirslD01Q1rwaxD6vMO8
 6TRmymYPiGG5of9i7zj+V/j17AwePHvLnMFMDRBIfq7ReEdTci4Mlj6DCG/JaMyBVOEE
 V9FpNHet2tdU4nc8Ts5UhR4JXy80qHzJAv4HdFVv9rudPEN7GOUFWk3kgJZL309AeL42
 oouIez9ut3OQMN/EUG0QfXGpYnrI97VyRtCiuWNf6hlId0gxYTMMauQ+UU2lPgGcpWiS
 aoLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=dGsFJzSLDDZ4VKl4cYBCE0Zec/ZaK3qZcpiPYcZDGJI=;
 b=hLXBn7RX6DLif+/85RIWHYqzhwp3XJjY9zUx0nizzQeYWdxYW0XhUqxxYuKuMFvv8W
 NV5QpSRzvj+G8oOBBSWj+/OCSokVfHNaA9MmE3Xh0V1H9fTBaTGHMk6+/gnWBJkNR4nq
 q1m+bZ5/5RQzQmCde1TqQSTxHgPLqD7CW+PHDVzR96SnQ1tGkGr2Cxuvxa5DZqZmQPED
 B3+GpolVC9TotHExQk6I+l2d9RPc9kjw3tnzDfH5s3kfreULSEWRPmQV5abb4W9eNx01
 xEJkyRTOiaXQ5yyoi3PPCSOEGJpZMML4N5SaEN96kODJP64bD3mTwUMYHWCSjmQsr3jv
 sqIw==
X-Gm-Message-State: APjAAAU5yOzkSvHY24/JXAA/OS/7Do+S6lzS85ToFj19H88G8ABu9W5f
 HkgatzMBjVn+s5kmCyOcvVp6i4y1Cvwc3VHYE8n19w==
X-Google-Smtp-Source: APXvYqx+2KB6eCCXG8fvARMrerF5YRz4V5cYFBsGOo4TYVpfYX6+/EwreEu80Qnsg71qWhuirT4NUdRyN+7TyTimBLo=
X-Received: by 2002:a05:6402:a56:: with SMTP id
 bt22mr1212198edb.178.1575351515801; 
 Mon, 02 Dec 2019 21:38:35 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6402:508:0:0:0:0 with HTTP; Mon, 2 Dec 2019 21:38:35
 -0800 (PST)
In-Reply-To: <CAL263iyjLXO06h_Vdec8x6jZR=7wjHO9J0-G_N-FYOz7xcKC7A@mail.gmail.com>
References: <CAM-VyLj5FE32V_+z=yS5amYfHv8p6azfaSm_mkzJcw3yO-FAsA@mail.gmail.com>
 <CAL263iyjLXO06h_Vdec8x6jZR=7wjHO9J0-G_N-FYOz7xcKC7A@mail.gmail.com>
Date: Tue, 3 Dec 2019 10:38:35 +0500
Message-ID: <CAM-VyLgQ+rtPkLXr=Fz3PJADeSL-W_p8U=mS7avoH4HudHfqBw@mail.gmail.com>
To: Nate Temple <nate.temple@ettus.com>
Subject: Re: [USRP-users] UHD and FPGA Image mismatch error
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
From: Bisma Amjad via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Bisma Amjad <msee17016@itu.edu.pk>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1441693132652120058=="
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

--===============1441693132652120058==
Content-Type: multipart/alternative; boundary="0000000000007f00bf0598c61bf9"

--0000000000007f00bf0598c61bf9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nate,
       Thanks for your response.

I too followed the aforementioned steps and it worked. Thanks.

Regards
Bisma

On Tuesday, December 3, 2019, Nate Temple <nate.temple@ettus.com> wrote:

> Hi Bisma,
>
> You should download the FPGA images for your installed version of UHD
> (with uhd_images_downloader) and then write a new FPGA image to the E320
> using the uhd_image_loader utility.
>
> UHD will work on Ubuntu 19.x.
>
> Regards,
> Nate Temple
>
> On Wed, Nov 6, 2019 at 2:38 AM Bisma Amjad via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi there,
>>
>>
>> =C2=B7         I have installed GNU Radio using PyBombs from
>> http://ecee.colorado.edu/~mathys/ecen4652/SDRsoftware/
>> GNURadioInstall.html
>>
>>
>>
>> =C2=B7         UHD was installed from https://kb.ettus.com/Building_
>> and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_
>> Radio)_on_Linux
>>
>>
>>
>> =C2=B7         GNU Radio works fine. I=E2=80=99ve created an FM Radio ap=
plication on
>> it.  USRP E320 is also detected on the system. However, when the flowgra=
ph
>> is executed on GNU Radio, following error shows up:
>>
>>
>>
>> *RuntimeError: FPGA component =E2=80=98noc_shell=E2=80=99 is revision 2 =
and UHD supports
>> revision 3. Please either upgrade the FPGA image (Recommended) or downgr=
ade
>> UHD.*
>>
>> *Troubleshooting:*
>>
>> =C2=B7As indicated by few web sources, Pybombs could=E2=80=99ve created =
issues during
>> GNU Radio installation. So, I re-installed GNU radio and UHD without usi=
ng
>> pybombs (from https://kb.ettus.com/Building_and_Installing_the_USRP_Open=
-
>> Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux).
>>
>>  But the error still persists.
>>
>>
>>
>> *RuntimeError: FPGA component =E2=80=98noc_shell=E2=80=99 is revision 2 =
and UHD supports
>> revision 6. Please either upgrade the FPGA image (Recommended) or downgr=
ade
>> UHD.*
>>
>>
>>
>>
>>
>> =C2=B7Moreover, the required installation libraries for UHD are supporte=
d for
>> Ubuntu version 18.10 or less. Whereas, our system has Ubuntu version 19.=
0.
>> Could this be the possible reason for this issue? Should I downgrade Ubu=
ntu
>> to 18.10?
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000007f00bf0598c61bf9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nate,<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0Thanks for your response.</div><div=
><br></div><div>I too followed the aforementioned steps and it worked. Than=
ks.</div><div><br></div><div>Regards</div><div>Bisma<br><br>On Tuesday, Dec=
ember 3, 2019, Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com">nat=
e.temple@ettus.com</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div di=
r=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif">Hi Bisma,<br><br>You should download the FPGA images for your =
installed version of UHD (with uhd_images_downloader) and then write a new =
FPGA image to the E320 using the uhd_image_loader utility.<br></div><div cl=
ass=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><br>=
</div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,san=
s-serif">UHD will work on Ubuntu 19.x. <br></div><div class=3D"gmail_defaul=
t" style=3D"font-family:arial,helvetica,sans-serif"><br>Regards,<br>Nate Te=
mple</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Wed, Nov 6, 2019 at 2:38 AM Bisma Amjad via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lis=
ts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr">Hi there,<div><p class=3D"MsoNormal" style=3D"=
text-align:center;margin:0in 0in 8pt;line-height:107%;font-size:11pt;font-f=
amily:Calibri,sans-serif" align=3D"center"><br></p>

<p style=3D"margin:0in 0in 0.0001pt 0.5in;line-height:107%;font-size:11pt;f=
ont-family:Calibri,sans-serif"><span style=3D"font-size:12pt;line-height:10=
7%;font-family:Symbol">=C2=B7<span style=3D"font-stretch:normal;font-size:7=
pt;line-height:normal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><span style=3D"font-size:12pt;line-height:107%">I
have installed GNU Radio using PyBombs from </span><a href=3D"http://ecee.c=
olorado.edu/~mathys/ecen4652/SDRsoftware/GNURadioInstall.html" style=3D"col=
or:blue" target=3D"_blank"><span style=3D"font-size:12pt;line-height:107%">=
http://ecee.colorado.edu/~<wbr>mathys/ecen4652/SDRsoftware/<wbr>GNURadioIns=
tall.html</span></a><span style=3D"font-size:12pt;line-height:107%"></span>=
</p>

<p style=3D"margin:0in 0in 0.0001pt 0.5in;line-height:107%;font-size:11pt;f=
ont-family:Calibri,sans-serif"><span style=3D"font-size:12pt;line-height:10=
7%">=C2=A0</span></p>

<p style=3D"margin:0in 0in 0.0001pt 0.5in;line-height:107%;font-size:11pt;f=
ont-family:Calibri,sans-serif"><span style=3D"font-size:12pt;line-height:10=
7%;font-family:Symbol">=C2=B7<span style=3D"font-stretch:normal;font-size:7=
pt;line-height:normal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><span style=3D"font-size:12pt;line-height:107%">UHD
was installed from </span><a href=3D"https://kb.ettus.com/Building_and_Inst=
alling_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux" style=
=3D"color:blue" target=3D"_blank"><span style=3D"font-size:12pt;line-height=
:107%">https://kb.ettus.com/Building_<wbr>and_Installing_the_USRP_Open-<wbr=
>Source_Toolchain_(UHD_and_GNU_<wbr>Radio)_on_Linux</span></a><span style=
=3D"font-size:12pt;line-height:107%"></span></p>

<p style=3D"margin:0in 0in 0.0001pt 0.5in;line-height:107%;font-size:11pt;f=
ont-family:Calibri,sans-serif"><span style=3D"font-size:12pt;line-height:10=
7%">=C2=A0</span></p>

<p style=3D"margin:0in 0in 0.0001pt 0.5in;line-height:107%;font-size:11pt;f=
ont-family:Calibri,sans-serif"><span style=3D"font-size:12pt;line-height:10=
7%;font-family:Symbol">=C2=B7<span style=3D"font-stretch:normal;font-size:7=
pt;line-height:normal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><span style=3D"font-size:12pt;line-height:107%">GNU
Radio works fine. I=E2=80=99ve created an FM Radio application on it.=C2=A0=
 USRP E320 is also detected on the system.
However, when the flowgraph is executed on GNU Radio, following error shows=
 up:</span></p>

<p style=3D"margin:0in 0in 0.0001pt 0.5in;line-height:107%;font-size:11pt;f=
ont-family:Calibri,sans-serif"><span style=3D"font-size:12pt;line-height:10=
7%">=C2=A0</span></p>

<p style=3D"margin:0in 0in 8pt 0.5in;line-height:107%;font-size:11pt;font-f=
amily:Calibri,sans-serif"><i><span style=3D"font-size:12pt;line-height:107%=
;color:red">RuntimeError: FPGA
component =E2=80=98noc_shell=E2=80=99 is revision 2 and UHD supports revisi=
on 3. Please either
upgrade the FPGA image (Recommended) or downgrade UHD.</span></i></p>

<p class=3D"MsoNormal" style=3D"text-align:justify;margin:0in 0in 8pt;line-=
height:107%;font-size:11pt;font-family:Calibri,sans-serif"><b><span style=
=3D"font-size:12pt;line-height:107%">Troubleshooting:</span></b></p>

<p style=3D"text-align:justify;margin:0in 0in 0.0001pt 0.5in;line-height:10=
7%;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:=
12pt;line-height:107%;font-family:Symbol">=C2=B7</span><span style=3D"font-=
size:12pt;line-height:107%">As
indicated by few web sources, Pybombs could=E2=80=99ve created issues durin=
g GNU Radio
installation. So, I re-installed GNU radio and UHD without using pybombs (f=
rom </span><a href=3D"https://kb.ettus.com/Building_and_Installing_the_USRP=
_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux)" style=3D"color:blue" =
target=3D"_blank">https://kb.ettus.com/Building_<wbr>and_Installing_the_USR=
P_Open-<wbr>Source_Toolchain_(UHD_and_GNU_<wbr>Radio)_on_Linux)</a><span st=
yle=3D"font-size:12pt;line-height:107%">.<b></b></span></p>

<p style=3D"text-align:justify;margin:0in 0in 0.0001pt 0.5in;line-height:10=
7%;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:=
12pt;line-height:107%">=C2=A0But the error still persists.<b></b></span></p=
>

<p style=3D"text-align:justify;margin:0in 0in 0.0001pt 0.5in;line-height:10=
7%;font-size:11pt;font-family:Calibri,sans-serif"><b><span style=3D"font-si=
ze:12pt;line-height:107%">=C2=A0</span></b></p>

<p style=3D"margin:0in 0in 0.0001pt 0.5in;line-height:107%;font-size:11pt;f=
ont-family:Calibri,sans-serif"><i><span style=3D"font-size:12pt;line-height=
:107%;color:red">RuntimeError: FPGA
component =E2=80=98noc_shell=E2=80=99 is revision 2 and UHD supports revisi=
on 6. Please either
upgrade the FPGA image (Recommended) or downgrade UHD.</span></i></p>

<p style=3D"text-align:justify;margin:0in 0in 0.0001pt 0.5in;line-height:10=
7%;font-size:11pt;font-family:Calibri,sans-serif"><b><span style=3D"font-si=
ze:12pt;line-height:107%">=C2=A0</span></b></p>

<p style=3D"text-align:justify;margin:0in 0in 0.0001pt 0.5in;line-height:10=
7%;font-size:11pt;font-family:Calibri,sans-serif"><b><span style=3D"font-si=
ze:12pt;line-height:107%">=C2=A0</span></b></p>

<p style=3D"text-align:justify;margin:0in 0in 8pt 0.5in;line-height:107%;fo=
nt-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:12pt;=
line-height:107%;font-family:Symbol">=C2=B7</span><span style=3D"font-size:=
12pt;line-height:107%">Moreover,
the required installation libraries for UHD are supported for Ubuntu versio=
n
18.10 or less. Whereas, our system has Ubuntu version 19.0. Could this be t=
he
possible reason for this issue? Should I downgrade Ubuntu to 18.10?<b></b><=
/span></p></div></div>
______________________________<wbr>_________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/<wbr>mailma=
n/listinfo/usrp-users_<wbr>lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000007f00bf0598c61bf9--


--===============1441693132652120058==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1441693132652120058==--

