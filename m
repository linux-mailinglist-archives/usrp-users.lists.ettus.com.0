Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F16ADF965B
	for <lists+usrp-users@lfdr.de>; Tue, 12 Nov 2019 17:56:36 +0100 (CET)
Received: from [::1] (port=53012 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iUZSz-0007qk-Pr; Tue, 12 Nov 2019 11:56:33 -0500
Received: from mail-oi1-f175.google.com ([209.85.167.175]:45101)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1iUZSx-0007j2-4A
 for USRP-users@lists.ettus.com; Tue, 12 Nov 2019 11:56:31 -0500
Received: by mail-oi1-f175.google.com with SMTP id 14so9432904oir.12
 for <USRP-users@lists.ettus.com>; Tue, 12 Nov 2019 08:56:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+PdqZflGwmkCUWF+WtqzoMobttQ/Kr0PCStx3KRNpnM=;
 b=rljPPxFBBCS5KC/+eGc+T9ZQhkzpkfV8dIx3ZHmo4pzsYDYOV4vsQoGmxfNIe5LNh0
 389PwHytGiMamc1vt4OCcNjaA0ZIspP1+uQoeIlIO744+F8QZtTWLrcQLr84PgzGu2c7
 Y0QdrNA/xPcw7aZDWPYQeyRte46LffiObrrw8asbXlSYFByKLdIhzR7WVw0iXnjzbWgt
 WRG6dllWFEeRM9fDYaR5akm0R3nc9+2vy+ybCkYAZVkFDejm18+fzyD1K15WKarSwIQ2
 jHggkhJddw2CMZHCB0MPgEU6sUbsCphEGAYEAYEWVzUOqSpNFORjHoWqakeePRY/CVuW
 Xkug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+PdqZflGwmkCUWF+WtqzoMobttQ/Kr0PCStx3KRNpnM=;
 b=FTb0YL3bxf5ZzP3B/v3mA0mqE9QZ9G84CNSXpT+iImvjcGx4v5Z9wm4H0Pgfd+23g0
 hdE/WY9V3mIHbV4GoyKzYiWbVF/zAnJH1MZ8934YAthZjWaJHhRMrCLilE/y/WgkRbV8
 3uQ3vRlPM/y9/109ZMRa/4woC4j3R/X+oHoSxxlIM6kiJVJZeI+0j03oEfJ6rqa3qmbq
 W/FNAr4Z4gVuXj7avk0HYj499mReYMYgKXPTfHAnCqxLMFewtW+jdLfGB8ZTHP1BXypX
 SbZ80lSHh/V03cKE+VFAY3r/7KvWaKg5yAHM0ACoj7GnejEINqGcbiy7gLscpS253IxC
 ZSiA==
X-Gm-Message-State: APjAAAWCX7AEic9Q7SRLkrlhgyO1V5ttLpcvW2eIcXfke5TYjW1csCuC
 8icxWr2BeOcox8Lu2DVnm3AaS0ZQuljMA3xz2OEww+719esAzw==
X-Google-Smtp-Source: APXvYqxGxWyoqdida1Kt/811dzejGzzdXsw7DWU1ca7MstFrMocGHbnZBOWjOWcagdFkU0B2o9tfH39OWn3Wxh2O2Rk=
X-Received: by 2002:aca:c7c1:: with SMTP id x184mr5002828oif.158.1573577750230; 
 Tue, 12 Nov 2019 08:55:50 -0800 (PST)
MIME-Version: 1.0
References: <D71B2B9BB39CE44CACCAB6646DF20CFD48DAD5A8@exmbx01>
In-Reply-To: <D71B2B9BB39CE44CACCAB6646DF20CFD48DAD5A8@exmbx01>
Date: Tue, 12 Nov 2019 08:56:29 -0800
Message-ID: <CAL263iyu=4WX8SpPUUu1ue+-sjsZUM0rvZVnd+taOJx9x8GC_Q@mail.gmail.com>
To: =?UTF-8?B?U2tvcnN0YWQsSsO4cm4=?= <Joern.Skorstad@nkom.no>
Subject: Re: [USRP-users] E310 RFNoC image
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
Cc: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2324605633912542182=="
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

--===============2324605633912542182==
Content-Type: multipart/alternative; boundary="000000000000d4517c0597291e43"

--000000000000d4517c0597291e43
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jorn,

The process for installing Xilinx Vivado WebPACK is fairly easy.

Download "Vivado Design Suite - HLx Editions - 2017.4  Full Product
Installation" from here:

https://www.xilinx.com/support/download/index.html/content/xilinx/en/downlo=
adNav/vivado-design-tools/archive.html

Decompress the tarball

Run "sudo ./xsetup"

When prompted to download the latest version, ignore and click "Continue",
2017.4 is required.

Click Next, and agree to the EULA and other terms, click Next and keep the
default /opt/Xilinx install prefix.

Click next through the rest of the menus and "install"

You'll now have Vivado installed to /opt/Xilinx/Vivado/2017.4 and can use
it with the build tools as described in the previously linked app note.



Regards,
Nate Temple

On Mon, Nov 11, 2019 at 11:56 PM Skorstad,J=C3=B8rn via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi list,
>
>
>
> I have followed the application note
> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFN=
oC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
> to set up a cross compile environment for an E310 SDR. It works well,
> however I have not been able to get past chapter 7: Building a custom RFN=
oC
> FPGA Image, as I haven=E2=80=99t set up Vivado 2017.4, as required.
>
>
>
> I would like to experiment with RFNoC development also. The application
> note states =C2=ABA future application note will cover a step-by-step ins=
tall
> guide for Vivado=C2=BB. Until this application note is ready, is it possi=
ble to
> use an image built by someone else using this software version?
> (UHD_3.14.1.HEAD-0-gbfb9c1c7). If so, where could I eventually download i=
t?
> What I need is 1xwindow, 1xFFT, 1xFIFO and 1xFosphor if there is space
> left. Radio and DDC is already on FPGA available as blocks?
>
>
>
> Regards,
>
> Jorn
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d4517c0597291e43
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Jorn,<br><br>The process for installing Xilinx Vivad=
o WebPACK is fairly easy. <br><br>Download &quot;Vivado Design Suite - HLx =
Editions - 2017.4 =C2=A0Full Product Installation&quot; from here:<br><br><=
a href=3D"https://www.xilinx.com/support/download/index.html/content/xilinx=
/en/downloadNav/vivado-design-tools/archive.html">https://www.xilinx.com/su=
pport/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools=
/archive.html</a><br><br>Decompress the tarball<br><br>Run &quot;sudo ./xse=
tup&quot;<br><br>When prompted to download the latest version, ignore and c=
lick &quot;Continue&quot;, 2017.4 is required.<br><br>Click Next, and agree=
 to the EULA and other terms, click Next and keep the default /opt/Xilinx i=
nstall prefix.<br><br>Click next through the rest of the menus and &quot;in=
stall&quot;<br><br>You&#39;ll now have Vivado installed to /opt/Xilinx/Viva=
do/2017.4 and can use it with the build tools as described in the previousl=
y linked app note.<br><br><br><br>Regards,<br>Nate Temple</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov =
11, 2019 at 11:56 PM Skorstad,J=C3=B8rn via USRP-users &lt;<a href=3D"mailt=
o:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"NO-BOK">
<div class=3D"gmail-m_-6737176487815908089WordSection1">
<p class=3D"MsoNormal">Hi list,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have followed the application note <a href=3D"http=
s://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD=
_/_GNU_Radio_/_gr-ettus_from_Source" target=3D"_blank">
https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC=
_UHD_/_GNU_Radio_/_gr-ettus_from_Source</a> to set up a cross compile envir=
onment for an E310 SDR. It works well, however I have not been able to get =
past chapter 7: Building a custom
 RFNoC FPGA Image, as I haven=E2=80=99t set up Vivado 2017.4, as required. =
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I would like to experiment with RFNoC development al=
so. The application note states =C2=ABA future application note will cover =
a step-by-step install guide for Vivado=C2=BB. Until this application note =
is ready, is it possible to use an image built
 by someone else using this software version? (UHD_3.14.1.HEAD-0-gbfb9c1c7)=
. If so, where could I eventually download it? What I need is 1xwindow, 1xF=
FT, 1xFIFO and 1xFosphor if there is space left. Radio and DDC is already o=
n FPGA available as blocks?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Regards,<u></u><u></u></p>
<p class=3D"MsoNormal">Jorn<u></u><u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000d4517c0597291e43--


--===============2324605633912542182==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2324605633912542182==--

