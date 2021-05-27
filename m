Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F0D392A42
	for <lists+usrp-users@lfdr.de>; Thu, 27 May 2021 11:06:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8014F383FB1
	for <lists+usrp-users@lfdr.de>; Thu, 27 May 2021 05:06:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cJ3mw7SA";
	dkim-atps=neutral
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 7EFFA3841C4
	for <usrp-users@lists.ettus.com>; Thu, 27 May 2021 05:05:51 -0400 (EDT)
Received: by mail-il1-f169.google.com with SMTP id j30so3482413ila.5
        for <usrp-users@lists.ettus.com>; Thu, 27 May 2021 02:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qd8nZNhS/r7Ayrd392ovFe48d2dN0gAsdiUOdI2GvUQ=;
        b=cJ3mw7SAZXRkXeFCRZWaY7VlquFQSpNFzp1hLhPzrGzUih+hSnu+DE2CxyX0TouRg3
         Or6y1PWT2f9xj33fdbLlv2QBBBslH6lVMuo1Nwo9kSWIl620kf+I/EPinN/E5Z5peXms
         0LNLsif1xi5IncVFdfnlMPOu4vLfPFZILLqGqWfBmfFYM3df/5egYRA2MWbThuWdjiJO
         W2yK9Kwhp7FkLiyKO0qNTt569TaZ352m81xUUhrF/xGTl7ToO7NaGW7xc8uWOo/JgosM
         m4Z++G0BJc1jLOevpBqqhuvnmzu0T2OLrESi80qK9sXfpm4dS+oS7a89mHXMo3DT4AKZ
         XMgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qd8nZNhS/r7Ayrd392ovFe48d2dN0gAsdiUOdI2GvUQ=;
        b=fbGPoszi4JaOHf4tLg8AFl8Wh73SYM32qucEhMCOkA5HIacITmFmaqmExehragoyzw
         rx/6rkKCAAMlbz+9ij3WL46a0/oVruHWa0AF3kX2HZbNGmR7wpcCIuOZZt6H+fu+N5lG
         POv+86QfDzNcXGnha/v4Sx/LkCMBLb68Q1PY4IdeoK3ForSHzxrAVDUQgOPGnbtuF1xg
         COc2yRivdqQfqljkCRilgxh7a/Umh+tOlgkjhkyLCDcbToW9ZG1sO2dQhGDKgido5WP6
         L34MvS0kxxfblSZA0s12xPoD5c29XZjTmTwsJ7iNLTlD1QZ/uqCP+GOZ55GPnQgh8u1U
         lSZw==
X-Gm-Message-State: AOAM531Avux69uEBoQkc+E2lzdLkSvIi/RPjkDt+LYebOM1UuGBrXm9q
	9/dy0/eeoTIRnvPZ+FsiRTJ8rdYvsvCBIhsM83U=
X-Google-Smtp-Source: ABdhPJx5urjuyLbfhKoR4+5JBPijfKI3xxtYU0HdsixxBfGHVu3CCXX2kGmd8x5wnn5NTbnX5yBiOfvDmYSPjTLIP/A=
X-Received: by 2002:a05:6e02:c3:: with SMTP id r3mr2144123ilq.280.1622106350626;
 Thu, 27 May 2021 02:05:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAA7+tqS5VzQQePfvw96igArX=wQNWME_2xg9OPP3ir7yRRVPsw@mail.gmail.com>
 <CAFche=hJ6h7kWWdjAycyOUopqqwQZEJqUiBFBJ93spFKANZOUA@mail.gmail.com>
In-Reply-To: <CAFche=hJ6h7kWWdjAycyOUopqqwQZEJqUiBFBJ93spFKANZOUA@mail.gmail.com>
From: Berkay SAYGILI <zuhasdasn@gmail.com>
Date: Thu, 27 May 2021 12:05:39 +0300
Message-ID: <CAA7+tqRsdZ+r=oHhnd_pDonkbnA2vgxskuQYvAR+Qaqh+JNUtw@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: DOZR7AAQHRFQVIGLTMWJ6HTVLALJ3ZFT
X-Message-ID-Hash: DOZR7AAQHRFQVIGLTMWJ6HTVLALJ3ZFT
X-MailFrom: zuhasdasn@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK setup with UHD 4.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DOZR7AAQHRFQVIGLTMWJ6HTVLALJ3ZFT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3085610379422421272=="

--===============3085610379422421272==
Content-Type: multipart/alternative; boundary="000000000000d1305f05c34c1067"

--000000000000d1305f05c34c1067
Content-Type: text/plain; charset="UTF-8"

Hello again,

Using meson and ninja made dpdk recognized by uhd cmake. I initially used
the instructions from "
https://doc.dpdk.org/guides-18.11/linux_gsg/build_dpdk.html". However, when
i tried to complete the uhd installation with make command, another problem
was occurred (given below). Just to let you know, i couldn't make
"CONFIG_RTE_BUILD_SHARED_LIB=y" with meson build (i dont know if it is
necessary).

[ 51%] Linking CXX shared library libuhd.so
[ 51%] Built target uhd
Scanning dependencies of target usrp_list_sensors
[ 51%] Building CXX object
examples/CMakeFiles/usrp_list_sensors.dir/usrp_list_sensors.cpp.o
[ 51%] Linking CXX executable usrp_list_sensors
/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `lcore_config'
/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
`rte_eal_get_configuration'
collect2: error: ld returned 1 exit status
make[2]: *** [examples/CMakeFiles/usrp_list_sensors.dir/build.make:95:
examples/usrp_list_sensors] Error 1
make[1]: *** [CMakeFiles/Makefile2:1038:
examples/CMakeFiles/usrp_list_sensors.dir/all] Error 2
make: *** [Makefile:163: all] Error 2

I use Ubuntu 20.04.1, and have an X520-DA2 card. I am at the "Installing
UHD" part in https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD, so i
dont have the uhd.conf file in root. In addition, i downloaded ixgbe driver
at first, then switched it to vfio-pci
<https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD>


Best Regards

Berkay S.

On Thu, 27 May 2021 at 00:05, Wade Fife <wade.fife@ettus.com> wrote:

> Hi Berkay,
>
> I also had a lot of trouble getting DPDK to be recognized. It could be a
> lot of things, so I can only speculate what the problem is in your case. In
> my case, I had hyphens instead of underscores in my uhd.conf file. I think
> I also had some issues with specifying the correct location of the DPDK
> driver. Hopefully you've already read through the KB on how to set it up.
>
> https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD
>
> There are also some driver dependencies and, depending on your Ethernet
> card, some flags may be needed when building DPDK.
>
> Maybe you could share some additional details about your setup, such as
> which card you're using, which driver/version, how you built DPDK, etc.
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
> My /root/.uhd/uhd.conf pretty much matches the one in the KB under UHD
> 4.0, although I commented some things out.
> [use_dpdk=1]
> dpdk_mtu=9000
> dpdk_driver=/usr/local/lib/
> dpdk_corelist=2,3,4
> ;dpdk_num_mbufs=4095
> ;dpdk_mbuf_cache_size=315
>
> [dpdk_mac=XX:XX:XX:XX:XX:XX]
> dpdk_lcore = 3
> dpdk_ipv4 = 192.168.10.1/24
>
> ;[dpdk_mac=XX:XX:XX:XX:XX:XX]
> ;dpdk_lcore = 4
> ;dpdk_ipv4 = 192.168.20.1/24
>
> Wade
>
> On Wed, May 26, 2021 at 3:56 AM Berkay SAYGILI <zuhasdasn@gmail.com>
> wrote:
>
>> Hello,
>>
>> I've been trying to use dpdk with UHD 4.0 on our newly purchased N320,
>> but it is shown as disabled component when i cmake uhd. First, i used
>> "apt-get install dpdk dpdk-dev", then realized it installed wrong version,
>> afterwords i downloaded dpdk 18.11. from the source and compiled. Another
>> mistake was not enabling shared library build, so i rebuilded it with share
>> libraries enabled (i can .so files now in the lib). But, still cmake shows
>> that dpdk is disabled. I added cmakecache.txt file to this mail, maybe it
>> can be useful. Btw, i completed all other steps like enabling hugepages,
>> adding drivers, etc. Do you have any solution to this problem?
>>
>>
>> Best regards
>>
>> Berkay S.
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000d1305f05c34c1067
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello again,</div><div><br></div><div>Using meson and=
 ninja made dpdk recognized by uhd cmake. I initially used the instructions=
 from &quot;<a href=3D"https://doc.dpdk.org/guides-18.11/linux_gsg/build_dp=
dk.html">https://doc.dpdk.org/guides-18.11/linux_gsg/build_dpdk.html</a>&qu=
ot;. However, when i tried to complete the uhd installation with make comma=
nd, another problem was occurred (given below). Just to let you know, i cou=
ldn&#39;t make &quot;CONFIG_RTE_BUILD_SHARED_LIB=3Dy&quot; with meson build=
 (i dont know if it is necessary).<br></div><div><br></div><div>[ 51%] Link=
ing CXX shared library libuhd.so<br>[ 51%] Built target uhd<br>Scanning dep=
endencies of target usrp_list_sensors<br>[ 51%] Building CXX object example=
s/CMakeFiles/usrp_list_sensors.dir/usrp_list_sensors.cpp.o<br>[ 51%] Linkin=
g CXX executable usrp_list_sensors<br>/usr/bin/ld: ../lib/libuhd.so.4.0.0: =
undefined reference to `lcore_config&#39;<br>/usr/bin/ld: ../lib/libuhd.so.=
4.0.0: undefined reference to `rte_eal_get_configuration&#39;<br>collect2: =
error: ld returned 1 exit status<br>make[2]: *** [examples/CMakeFiles/usrp_=
list_sensors.dir/build.make:95: examples/usrp_list_sensors] Error 1<br>make=
[1]: *** [CMakeFiles/Makefile2:1038: examples/CMakeFiles/usrp_list_sensors.=
dir/all] Error 2<br>make: *** [Makefile:163: all] Error 2</div><div><br></d=
iv><div>I use Ubuntu 20.04.1, and have an X520-DA2 card. I am at the &quot;=
Installing UHD&quot; part in <a href=3D"https://kb.ettus.com/Getting_Starte=
d_with_DPDK_and_UHD" target=3D"_blank">https://kb.ettus.com/Getting_Started=
_with_DPDK_and_UHD</a>, so i dont have the uhd.conf file in root. In additi=
on, i downloaded ixgbe driver at first, then switched it to vfio-pci<a href=
=3D"https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD" target=3D"_blan=
k"><br></a></div><div><br></div><div><br></div><div>Best Regards</div><div>=
<br></div><div>Berkay S.<br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, 27 May 2021 at 00:05, Wade Fife &=
lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Berkay,</div><div><br></div><d=
iv>I also had a lot of trouble getting DPDK to be recognized. It could be a=
 lot of things, so I can only speculate what the problem is in your case. I=
n my case, I had hyphens instead of underscores in my uhd.conf file. I thin=
k I also had some issues with specifying the correct location of the DPDK d=
river. Hopefully you&#39;ve already read through the KB on how to set it up=
. <br></div><div><br></div><div><a href=3D"https://kb.ettus.com/Getting_Sta=
rted_with_DPDK_and_UHD" target=3D"_blank">https://kb.ettus.com/Getting_Star=
ted_with_DPDK_and_UHD</a></div><div><br></div><div>There are also some driv=
er dependencies and, depending on your Ethernet card, some flags may be nee=
ded when building DPDK.</div><div><br></div><div>Maybe you could share some=
 additional details about your setup, such as which card you&#39;re using, =
which driver/version, how you built DPDK, etc.</div><div><br></div><div>Loo=
king at my notes, I built DPDK using the following steps. I&#39;m using a M=
ellanox CX516A.<br>cd dpdk-stable-18.11.11/<br>meson build<br>cd build<br>n=
inja<br>sudo ninja install<br>sudo ldconfig</div><div><br></div><div>My /ro=
ot/.uhd/uhd.conf pretty much matches the one in the KB under UHD 4.0, altho=
ugh I commented some things out.</div><div>[use_dpdk=3D1]<br>dpdk_mtu=3D900=
0<br>dpdk_driver=3D/usr/local/lib/<br>dpdk_corelist=3D2,3,4<br>;dpdk_num_mb=
ufs=3D4095<br>;dpdk_mbuf_cache_size=3D315<br><br>[dpdk_mac=3DXX:XX:XX:XX:XX=
:XX]<br>dpdk_lcore =3D 3<br>dpdk_ipv4 =3D <a href=3D"http://192.168.10.1/24=
" target=3D"_blank">192.168.10.1/24</a><br><br>;[dpdk_mac=3DXX:XX:XX:XX:XX:=
XX]<br>;dpdk_lcore =3D 4<br>;dpdk_ipv4 =3D <a href=3D"http://192.168.20.1/2=
4" target=3D"_blank">192.168.20.1/24</a></div><div><br></div><div>Wade<br><=
/div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Wed, May 26, 2021 at 3:56 AM Berkay SAYGILI &lt;<a href=
=3D"mailto:zuhasdasn@gmail.com" target=3D"_blank">zuhasdasn@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div>Hello,</div><div><br></div><div>I&#39;ve been trying to use=
 dpdk with UHD 4.0 on our newly purchased N320, but it is shown as disabled=
 component when i cmake uhd. First, i used &quot;apt-get install dpdk dpdk-=
dev&quot;, then realized it installed wrong version, afterwords i downloade=
d dpdk 18.11. from the source and compiled. Another mistake was not enablin=
g shared library build, so i rebuilded it with share libraries enabled (i c=
an .so files now in the lib). But, still cmake shows that dpdk is disabled.=
 I added cmakecache.txt file to this mail, maybe it can be useful. Btw, i c=
ompleted all other steps like enabling hugepages, adding drivers, etc. Do y=
ou have any solution to this problem?</div><div><br></div><div><br></div><d=
iv>Best regards<br></div><div><br></div><div>Berkay S.<br></div><div><br></=
div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000d1305f05c34c1067--

--===============3085610379422421272==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3085610379422421272==--
