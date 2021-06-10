Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF643A352C
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jun 2021 22:55:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 43FCF38472B
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jun 2021 16:55:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Blbyd8ki";
	dkim-atps=neutral
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 525E438425B
	for <usrp-users@lists.ettus.com>; Thu, 10 Jun 2021 16:54:15 -0400 (EDT)
Received: by mail-io1-f53.google.com with SMTP id p66so26688902iod.8
        for <usrp-users@lists.ettus.com>; Thu, 10 Jun 2021 13:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9cSEkidpjQHZ0JPI2Tunt8FXrg7HgjaEtccf4BomXI8=;
        b=Blbyd8ki8zMJi2urmmnE3G6cp5zLWtE6vvZuBJdMIDOxDj/yajMHejuCdsrRSg1B0D
         h6vjWttU7Qhpe3BXt8jqn5OxyJta0bi4E4fYZbNXH0jiEszGriHIeNc6QM3IyR13OnJX
         0Rd5mSu8H+ms+w9uJd7V1faWTdFv9u04VOMc8kO/dSvPQDbZ9/uib+6cxhqZd9hI17ZK
         tsXsd2MK1uPk5GjDvQKirGqzDjJHbMZrxOqaNgwJQPuEPfdl0kI5Vb2HLDGPnRgv80KC
         oS71KHwcT/hNt2cLMEJq42RrbupPwQ8cOSeXUhSaeNbQ4+YWwBkyIftBAgHWRd8L+v0A
         2J+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9cSEkidpjQHZ0JPI2Tunt8FXrg7HgjaEtccf4BomXI8=;
        b=c6Db6WqaueWbq/vds24FWK2g0RnrUFGxGfWDxPmtMPsQuRFLt/mV+FFxLkYBoSiYch
         zey0sh37+UgBE+gu0G0m86WCY9NRifXZ0tFf42cLL5+dtuPXD0CtPcqxehq36zMN9Fdu
         ENFdcSczI7HCXLDsR4aMbzdDvlXZnIaAqHqofRjSPLrYgvYwCAuuuiLJR7NKlmq34I1N
         eYTxYUse05zQGTwLlpcKMADFHI/bvenVLTdtHdB4gq7XPBdvjoHkoNysqpQGehrNsm9/
         dkMeLcMfDfva7FSnciR6IaSwwE6x+3uPCYs/AAE12CdCDN96IpKL5+5sl/2MpP0qwx+Y
         WtpA==
X-Gm-Message-State: AOAM5322TZRjQksy73CIpLiX+WUY5LCBZZ4M487DDDQikgHQ/eTVT4yE
	v0hMd24dyyO442oM5WwK/Dk2DTOiQQI4JsdT7FU=
X-Google-Smtp-Source: ABdhPJwU3bzteTcB6wU54PfiP+U0LQtEzo0re6utwjW2YLWPLJ1O3MoiX3IQr3mE08S6NzGH0pEqpTDhWp5OAJC5+Pg=
X-Received: by 2002:a6b:e50c:: with SMTP id y12mr390652ioc.20.1623358454464;
 Thu, 10 Jun 2021 13:54:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAA7+tqS5VzQQePfvw96igArX=wQNWME_2xg9OPP3ir7yRRVPsw@mail.gmail.com>
 <CAFche=hJ6h7kWWdjAycyOUopqqwQZEJqUiBFBJ93spFKANZOUA@mail.gmail.com>
 <CAA7+tqRsdZ+r=oHhnd_pDonkbnA2vgxskuQYvAR+Qaqh+JNUtw@mail.gmail.com> <bfe1242e31c1487aaaac63266f1e1027@erdc.dren.mil>
In-Reply-To: <bfe1242e31c1487aaaac63266f1e1027@erdc.dren.mil>
From: Berkay SAYGILI <zuhasdasn@gmail.com>
Date: Thu, 10 Jun 2021 23:54:03 +0300
Message-ID: <CAA7+tqQUHkaDPM3PLAZ_w+Eb88qOb4iMgg-dyeEYSVUOsBrftw@mail.gmail.com>
To: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV" <Carl.L.Wolsieffer@erdc.dren.mil>
Message-ID-Hash: EEY5K74ZNVIEHUW4LD7VJYXSQDZN2XYU
X-Message-ID-Hash: EEY5K74ZNVIEHUW4LD7VJYXSQDZN2XYU
X-MailFrom: zuhasdasn@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK setup with UHD 4.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EEY5K74ZNVIEHUW4LD7VJYXSQDZN2XYU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6123101260036739966=="

--===============6123101260036739966==
Content-Type: multipart/alternative; boundary="00000000000005877005c46f98f6"

--00000000000005877005c46f98f6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Casey,

I was trying to delete DPDK files manually (because i installed DPDK 19 at
first, and it doesnt have an uninstall method), and accidentally crashed my
OS (it was my fault, deleted something important). After reinstalling
Ubuntu, i installed everything again and the error was gone. Reinstalling
everything took like 3-4 hours, i spent much more trying the fix the error.
I also faced a few more errors in next steps, i mention them below, might
be useful for some people.

1) It was something about invalid elf headers. DPDK tries to compile
everything in the uhf.conf - dpdk_driver location. In my case,
"/usr/local/lib/x86_64-linux-gnu/dpdk/pmds-18.11" file had only librte_pmd
and librte_mempool dynamic libraries, so using this address fixed the error=
.
2) DPDK was not able to find the device, because i used capital letters in
the mac address of uhd.conf. They should be lowercase.

3) "[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization.
EnvironmentError: IOError: Timed out getting recv buff for management
transaction". I realized this error occurs with or without using DPDK, and
rarely it was working correctly (but mostly didnt work). I changed fpga
image to default (HG or 1 GbE, and 10 GbE sfp+), also reinstalled embedded
linux with mender. The problem was gone. Then, i installed dual 10 GbE sfp+
image (XG), and haven't faced the same problem.

My new problem is that DPDK is slower than without using DPDK. I sent a new
mail about it today, still waiting for suggestions. GL with your setup, i
have spent my whole week to get DPDK working.


Berkay S.

On Thu, 10 Jun 2021 at 20:56, Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV <
Carl.L.Wolsieffer@erdc.dren.mil> wrote:

> Hi Berkay,
>
>
>
> I=E2=80=99m actually having this exact same issue. We have pretty much al=
l the
> same hardware/software/Ubuntu etc and after using meson and ninja I was
> able to get to this point you are at here. Did you ever figure out how to
> resolve this? Much appreciated!
>
>
>
> Casey
>
>
>
> PS I tried sending this reply via the archives webpage which didn=E2=80=
=99t seem
> to be working, so apologies if this is being sent 2 or 3 times
>
>
>
> *From:* Berkay SAYGILI <zuhasdasn@gmail.com>
> *Sent:* Thursday, May 27, 2021 5:06 AM
> *To:* Wade Fife <wade.fife@ettus.com>
> *Cc:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: DPDK setup with UHD 4.0
>
>
>
> Hello again,
>
>
>
> Using meson and ninja made dpdk recognized by uhd cmake. I initially used
> the instructions from "
> Blockedhttps://doc.dpdk.org/guides-18.11/linux_gsg/build_dpdk.htmlBlocked=
".
> However, when i tried to complete the uhd installation with make command,
> another problem was occurred (given below). Just to let you know, i
> couldn't make "CONFIG_RTE_BUILD_SHARED_LIB=3Dy" with meson build (i dont =
know
> if it is necessary).
>
>
>
> [ 51%] Linking CXX shared library libuhd.so
> [ 51%] Built target uhd
> Scanning dependencies of target usrp_list_sensors
> [ 51%] Building CXX object
> examples/CMakeFiles/usrp_list_sensors.dir/usrp_list_sensors.cpp.o
> [ 51%] Linking CXX executable usrp_list_sensors
> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `lcore_config=
'
> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
> `rte_eal_get_configuration'
> collect2: error: ld returned 1 exit status
> make[2]: *** [examples/CMakeFiles/usrp_list_sensors.dir/build.make:95:
> examples/usrp_list_sensors] Error 1
> make[1]: *** [CMakeFiles/Makefile2:1038:
> examples/CMakeFiles/usrp_list_sensors.dir/all] Error 2
> make: *** [Makefile:163: all] Error 2
>
>
>
> I use Ubuntu 20.04.1, and have an X520-DA2 card. I am at the "Installing
> UHD" part in
> Blockedhttps://kb.ettus.com/Getting_Started_with_DPDK_and_UHDBlocked, so
> i dont have the uhd.conf file in root. In addition, i downloaded ixgbe
> driver at first, then switched it to vfio-pci
>
>
>
>
>
> Best Regards
>
>
>
> Berkay S.
>
>
>
> On Thu, 27 May 2021 at 00:05, Wade Fife <wade.fife@ettus.com> wrote:
>
> Hi Berkay,
>
>
>
> I also had a lot of trouble getting DPDK to be recognized. It could be a
> lot of things, so I can only speculate what the problem is in your case. =
In
> my case, I had hyphens instead of underscores in my uhd.conf file. I thin=
k
> I also had some issues with specifying the correct location of the DPDK
> driver. Hopefully you've already read through the KB on how to set it up.
>
>
>
> Blockedhttps://kb.ettus.com/Getting_Started_with_DPDK_and_UHDBlocked
>
>
>
> There are also some driver dependencies and, depending on your Ethernet
> card, some flags may be needed when building DPDK.
>
>
>
> Maybe you could share some additional details about your setup, such as
> which card you're using, which driver/version, how you built DPDK, etc.
>
>
>
> Looking at my notes, I built DPDK using the following steps. I'm using a
> Mellanox CX516A.
> cd dpdk-stable-18.11.11/
> meson build
> cd build
> ninja
> sudo ninja install
> sudo ldconfig
>
>
>
> My /root/.uhd/uhd.conf pretty much matches the one in the KB under UHD
> 4.0, although I commented some things out.
>
> [use_dpdk=3D1]
> dpdk_mtu=3D9000
> dpdk_driver=3D/usr/local/lib/
> dpdk_corelist=3D2,3,4
> ;dpdk_num_mbufs=3D4095
> ;dpdk_mbuf_cache_size=3D315
>
> [dpdk_mac=3DXX:XX:XX:XX:XX:XX]
> dpdk_lcore =3D 3
> dpdk_ipv4 =3D 192.168.10.1/24
>
> ;[dpdk_mac=3DXX:XX:XX:XX:XX:XX]
> ;dpdk_lcore =3D 4
> ;dpdk_ipv4 =3D 192.168.20.1/24
>
>
>
> Wade
>
>
>
> On Wed, May 26, 2021 at 3:56 AM Berkay SAYGILI <zuhasdasn@gmail.com>
> wrote:
>
> Hello,
>
>
>
> I've been trying to use dpdk with UHD 4.0 on our newly purchased N320, bu=
t
> it is shown as disabled component when i cmake uhd. First, i used "apt-ge=
t
> install dpdk dpdk-dev", then realized it installed wrong version,
> afterwords i downloaded dpdk 18.11. from the source and compiled. Another
> mistake was not enabling shared library build, so i rebuilded it with sha=
re
> libraries enabled (i can .so files now in the lib). But, still cmake show=
s
> that dpdk is disabled. I added cmakecache.txt file to this mail, maybe it
> can be useful. Btw, i completed all other steps like enabling hugepages,
> adding drivers, etc. Do you have any solution to this problem?
>
>
>
>
>
> Best regards
>
>
>
> Berkay S.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--00000000000005877005c46f98f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Casey,</div><div><br></div><div>I was trying to=
 delete DPDK files manually (because i installed DPDK 19 at first, and it d=
oesnt have an uninstall method), and accidentally crashed my OS (it was my =
fault, deleted something important). After reinstalling Ubuntu, i installed=
 everything again and the error was gone. Reinstalling everything took like=
 3-4 hours, i spent much more trying the fix the error. I also faced a few =
more errors in next steps, i mention them below, might be useful for some p=
eople.</div><div><br></div><div>1) It was something about invalid elf heade=
rs. DPDK tries to compile everything in the uhf.conf - dpdk_driver location=
. In my case, &quot;/usr/local/lib/x86_64-linux-gnu/dpdk/pmds-18.11&quot; f=
ile had only librte_pmd and librte_mempool dynamic libraries, so using this=
 address fixed the error.</div><div></div><div>2) DPDK was not able to find=
 the device, because i used capital letters in the mac address of uhd.conf.=
 They should be lowercase.</div><div><br></div><div>3) &quot;[ERROR] [RFNOC=
::GRAPH] IO Error during GSM initialization.=20
EnvironmentError: IOError: Timed out getting recv buff for management=20
transaction&quot;. I realized this error occurs with or without using DPDK,=
 and rarely it was working correctly (but mostly didnt work). I changed fpg=
a image to default (HG or 1 GbE, and 10 GbE sfp+), also reinstalled embedde=
d linux with mender. The problem was gone. Then, i installed dual 10 GbE sf=
p+ image (XG), and haven&#39;t faced the same problem.=C2=A0 <br></div><div=
><br></div><div>My new problem is that DPDK is slower than without using DP=
DK. I sent a new mail about it today, still waiting for suggestions. GL wit=
h your setup, i have spent my whole week to get DPDK working.</div><div><br=
></div><div><br></div><div>Berkay S.<br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 10 Jun 2021 at 20:56,=
 Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV &lt;<a href=3D"mailto:Carl.L.Wolsi=
effer@erdc.dren.mil">Carl.L.Wolsieffer@erdc.dren.mil</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-2712818932827829995WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Hi Berkay,<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">I=E2=80=99m actually having this=
 exact same issue. We have pretty much all the same hardware/software/Ubunt=
u etc and after using meson and ninja I was able to get to
 this point you are at here. Did you ever figure out how to resolve this? M=
uch appreciated!<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Casey<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">PS I tried sending this reply vi=
a the archives webpage which didn=E2=80=99t seem to be working, so apologie=
s if this is being sent 2 or 3 times<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:&quot;C=
alibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11pt;font=
-family:&quot;Calibri&quot;,sans-serif"> Berkay SAYGILI &lt;<a href=3D"mail=
to:zuhasdasn@gmail.com" target=3D"_blank">zuhasdasn@gmail.com</a>&gt;
<br>
<b>Sent:</b> Thursday, May 27, 2021 5:06 AM<br>
<b>To:</b> Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_=
blank">wade.fife@ettus.com</a>&gt;<br>
<b>Cc:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Re: DPDK setup with UHD 4.0<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Hello again,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Using meson and ninja made dpdk recognized by uhd cm=
ake. I initially used the instructions from &quot;<a>Blockedhttps://doc.dpd=
k.org/guides-18.11/linux_gsg/build_dpdk.htmlBlocked</a>&quot;.
 However, when i tried to complete the uhd installation with make command, =
another problem was occurred (given below). Just to let you know, i couldn&=
#39;t make &quot;CONFIG_RTE_BUILD_SHARED_LIB=3Dy&quot; with meson build (i =
dont know if it is necessary).<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">[ 51%] Linking CXX shared library libuhd.so<br>
[ 51%] Built target uhd<br>
Scanning dependencies of target usrp_list_sensors<br>
[ 51%] Building CXX object examples/CMakeFiles/usrp_list_sensors.dir/usrp_l=
ist_sensors.cpp.o<br>
[ 51%] Linking CXX executable usrp_list_sensors<br>
/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `lcore_config&#=
39;<br>
/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `rte_eal_get_co=
nfiguration&#39;<br>
collect2: error: ld returned 1 exit status<br>
make[2]: *** [examples/CMakeFiles/usrp_list_sensors.dir/build.make:95: exam=
ples/usrp_list_sensors] Error 1<br>
make[1]: *** [CMakeFiles/Makefile2:1038: examples/CMakeFiles/usrp_list_sens=
ors.dir/all] Error 2<br>
make: *** [Makefile:163: all] Error 2<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I use Ubuntu 20.04.1, and have an X520-DA2 card. I a=
m at the &quot;Installing UHD&quot; part in
<a>
Blockedhttps://kb.ettus.com/Getting_Started_with_DPDK_and_UHDBlocked</a>, s=
o i dont have the uhd.conf file in root. In addition, i downloaded ixgbe dr=
iver at first, then switched it to vfio-pci<a><br>
</a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Best Regards<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Berkay S.<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Thu, 27 May 2021 at 00:05, Wade Fife &lt;<a href=
=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&g=
t; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0in 0in 0in 6pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal">Hi Berkay,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I also had a lot of trouble getting DPDK to be recog=
nized. It could be a lot of things, so I can only speculate what the proble=
m is in your case. In my case, I had hyphens instead of underscores in my u=
hd.conf file. I think I also had some
 issues with specifying the correct location of the DPDK driver. Hopefully =
you&#39;ve already read through the KB on how to set it up.
<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><a>Blockedhttps://kb.ettus.com/Getting_Started_with_=
DPDK_and_UHDBlocked</a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">There are also some driver dependencies and, dependi=
ng on your Ethernet card, some flags may be needed when building DPDK.<u></=
u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Maybe you could share some additional details about =
your setup, such as which card you&#39;re using, which driver/version, how =
you built DPDK, etc.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Looking at my notes, I built DPDK using the followin=
g steps. I&#39;m using a Mellanox CX516A.<br>
cd dpdk-stable-18.11.11/<br>
meson build<br>
cd build<br>
ninja<br>
sudo ninja install<br>
sudo ldconfig<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">My /root/.uhd/uhd.conf pretty much matches the one i=
n the KB under UHD 4.0, although I commented some things out.<u></u><u></u>=
</p>
</div>
<div>
<p class=3D"MsoNormal">[use_dpdk=3D1]<br>
dpdk_mtu=3D9000<br>
dpdk_driver=3D/usr/local/lib/<br>
dpdk_corelist=3D2,3,4<br>
;dpdk_num_mbufs=3D4095<br>
;dpdk_mbuf_cache_size=3D315<br>
<br>
[dpdk_mac=3DXX:XX:XX:XX:XX:XX]<br>
dpdk_lcore =3D 3<br>
dpdk_ipv4 =3D <a>192.168.10.1/24</a><br>
<br>
;[dpdk_mac=3DXX:XX:XX:XX:XX:XX]<br>
;dpdk_lcore =3D 4<br>
;dpdk_ipv4 =3D <a>192.168.20.1/24</a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Wade<u></u><u></u></p>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Wed, May 26, 2021 at 3:56 AM Berkay SAYGILI &lt;<=
a href=3D"mailto:zuhasdasn@gmail.com" target=3D"_blank">zuhasdasn@gmail.com=
</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0in 0in 0in 6pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I&#39;ve been trying to use dpdk with UHD 4.0 on our=
 newly purchased N320, but it is shown as disabled component when i cmake u=
hd. First, i used &quot;apt-get install dpdk dpdk-dev&quot;, then realized =
it installed wrong version, afterwords i downloaded
 dpdk 18.11. from the source and compiled. Another mistake was not enabling=
 shared library build, so i rebuilded it with share libraries enabled (i ca=
n .so files now in the lib). But, still cmake shows that dpdk is disabled. =
I added cmakecache.txt file to this
 mail, maybe it can be useful. Btw, i completed all other steps like enabli=
ng hugepages, adding drivers, etc. Do you have any solution to this problem=
?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Best regards<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Berkay S.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><u></u><u></u></p>
</blockquote>
</div>
</blockquote>
</div>
</div>
</div>

</blockquote></div>

--00000000000005877005c46f98f6--

--===============6123101260036739966==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6123101260036739966==--
