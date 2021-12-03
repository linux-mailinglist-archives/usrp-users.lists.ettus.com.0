Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 934AD467CB1
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 18:39:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 536013846AD
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 12:39:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="S2/spVwo";
	dkim-atps=neutral
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 511F43846B0
	for <usrp-users@lists.ettus.com>; Fri,  3 Dec 2021 12:38:11 -0500 (EST)
Received: by mail-il1-f170.google.com with SMTP id e8so3435917ilu.9
        for <usrp-users@lists.ettus.com>; Fri, 03 Dec 2021 09:38:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=bGqWzyYhCyYhWrwcSKNWqAhOKJSiN8ewAw4eUn7IYsU=;
        b=S2/spVwoTy0uhQ6956LSMYkdJP3ZcHNDyF9hisaloOszFAsABo3Z6hh2auzvf19Nb1
         u9vdMmsqbf3XFENpJdDcEebR6c+ym+ESsWKUmIDiCQPptZvNZdlo/qTpuUtGCAxFiAlk
         LRchxnG3K87ClprsZOlFb8foaCRWBAAB8IupAI9GNC/XUeSLtK9ZGg/Um8XiMCvfISeM
         JTF7SeBdMIJliC/Dc1fsIcc6tO0Whji3bById/JXwqBeKCgVAKjjWfRiss3PkBrcaoOD
         NswA/p1LhdxvIN5I3ax+ksSGgc6SzzypyeYVQ1rIt1NvgOD9YvDYYrdb9yRLBWqmCB69
         NszA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=bGqWzyYhCyYhWrwcSKNWqAhOKJSiN8ewAw4eUn7IYsU=;
        b=wYoL/Nc0ypGFglEnevpZHMfZ2z56nNeHdguz/o4QRdappiyzM99kMd2ZTR38np6TXB
         wKBXwNR8TgTH7HfrRCqSkMwZ+pdB6CsciDTNb9YPLriL4tvvb0FTmjkIqQDkoa52qDkS
         a2ZjfQJAl9kQlZgOHV3tKx9mm+LS/X7uHsCMUfT6wNQo7I1OOniJDfUC6PSZcFaSNNHu
         vud/R0FI/vNtLzOdnd/Nxxn1Wk0Zo3+ZfqsQMhA3bW+Vh05N7fYLnlnC/qGPYTJNT2j2
         6PlyvXEy14hZsVPgYNZWzeJ8hhqW3BwznTUIMtoYuQu35vxVZHS7nP4A7LJxpLU55qgf
         wemg==
X-Gm-Message-State: AOAM532hxKBt8Yh7AuzaopHzpbxExTRF3vleH3BadvXUYiHKgmnQIK0Y
	XIZq4QGKTpwRSyNCNklFFtoMjX80hhg=
X-Google-Smtp-Source: ABdhPJxNVTT6zN6c/cxJJSgOUvCXCIZvpaR3X+AqUa1h5KxtjWCJtu5BHQpn9qwN5HyLvCPAEjlZVA==
X-Received: by 2002:a05:6e02:10ce:: with SMTP id s14mr19053081ilj.320.1638553090254;
        Fri, 03 Dec 2021 09:38:10 -0800 (PST)
Received: from [192.168.2.224] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id c19sm1966758ioa.30.2021.12.03.09.38.09
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Dec 2021 09:38:09 -0800 (PST)
Message-ID: <c4114f08-b872-2d5f-8ea4-fbd972ad94d6@gmail.com>
Date: Fri, 3 Dec 2021 12:38:08 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <9dQokdxM5v15U6XVvLmuzBGPbKx9xoKp64CaPmcKTPA@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <9dQokdxM5v15U6XVvLmuzBGPbKx9xoKp64CaPmcKTPA@lists.ettus.com>
Message-ID-Hash: LCXAKEGIGQXQ4SD5S4YBCPIM7EQHWXSP
X-Message-ID-Hash: LCXAKEGIGQXQ4SD5S4YBCPIM7EQHWXSP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LCXAKEGIGQXQ4SD5S4YBCPIM7EQHWXSP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7710027550608541433=="

This is a multi-part message in MIME format.
--===============7710027550608541433==
Content-Type: multipart/alternative;
 boundary="------------QjfmVCMFxuvN0RFWPFzxlTTt"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------QjfmVCMFxuvN0RFWPFzxlTTt
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-03 10:02, iw1fnw@gmail.com wrote:
>
> The NIC is an Intel X710 Dual Port 10Gb Direct Attach, SFP+,PCIe. MTU=20
> is now 9000. I tried now with 1500, but still same error. I still have=20
> to check with new image, if any.
>
My "hunch" is that packets are getting lost or re-ordered during the=20
FPGA image load over the network connection, which is why I had you=20
check with different
 =C2=A0 MTUs.

Have you replaced the cable?=C2=A0 SFP+ module?=C2=A0=C2=A0 Is this direc=
t or through a=20
switch?


> |abusso@ttclabsdr:~$ ifconfig eno1:=20
> flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST> mtu 1500 inet=20
> 10.181.165.152 netmask 255.255.252.0 broadcast 10.181.167.255 inet6=20
> fe80::a6bb:6dff:feae:de8 prefixlen 64 scopeid 0x20<link> ether=20
> a4:bb:6d:ae:0d:e8 txqueuelen 1000 (Ethernet) RX packets 543759 bytes=20
> 60330968 (60.3 MB) RX errors 0 dropped 8713 overruns 0 frame 0 TX=20
> packets 24251 bytes 13359677 (13.3 MB) TX errors 0 dropped 0 overruns=20
> 0 carrier 0 collisions 0 device interrupt 16 memory=20
> 0x92f00000-92f20000 enp4s0f0:=20
> flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST> mtu 1500 inet 192.168.30.1=
=20
> netmask 255.255.255.0 broadcast 192.168.30.255 inet6=20
> fe80::faf2:1eff:fe98:e70 prefixlen 64 scopeid 0x20<link> ether=20
> f8:f2:1e:98:0e:70 txqueuelen 1000 (Ethernet) RX packets 2493 bytes=20
> 3406398 (3.4 MB) RX errors 0 dropped 0 overruns 0 frame 0 TX packets=20
> 2662 bytes 4716866 (4.7 MB) TX errors 0 dropped 0 overruns 0 carrier 0=20
> collisions 0 enp4s0f1: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST> mtu=
=20
> 1500 inet 192.168.40.1 netmask 255.255.255.0 broadcast 192.168.40.255=20
> inet6 fe80::faf2:1eff:fe98:e71 prefixlen 64 scopeid 0x20<link> ether=20
> f8:f2:1e:98:0e:71 txqueuelen 1000 (Ethernet) RX packets 305761 bytes=20
> 76146924 (76.1 MB) RX errors 0 dropped 0 overruns 0 frame 0 TX packets=20
> 24113 bytes 38423211 (38.4 MB) TX errors 0 dropped 0 overruns 0=20
> carrier 0 collisions 0 enx0050b661c3db:=20
> flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST> mtu 1500 inet 192.168.100.=
1=20
> netmask 255.255.255.0 broadcast 192.168.100.255 inet6=20
> fe80::250:b6ff:fe61:c3db prefixlen 64 scopeid 0x20<link> ether=20
> 00:50:b6:61:c3:db txqueuelen 1000 (Ethernet) RX packets 8896 bytes=20
> 585296 (585.2 KB) RX errors 0 dropped 0 overruns 0 frame 0 TX packets=20
> 310 bytes 38402 (38.4 KB) TX errors 0 dropped 0 overruns 0 carrier 0=20
> collisions 0 lo: flags=3D73<UP,LOOPBACK,RUNNING> mtu 65536 inet=20
> 127.0.0.1 netmask 255.0.0.0 inet6 ::1 prefixlen 128 scopeid 0x10<host>=20
> loop txqueuelen 1000 (Local Loopback) RX packets 7296 bytes 23262505=20
> (23.2 MB) RX errors 0 dropped 0 overruns 0 frame 0 TX packets 7296=20
> bytes 23262505 (23.2 MB) TX errors 0 dropped 0 overruns 0 carrier 0=20
> collisions 0 abusso@ttclabsdr:~$ uhd_image_loader --args=20
> "type=3Dx300,addr=3D192.168.30.2" linux; GNU C++ version 7.3.0;=20
> Boost_106501; UHD_003.010.003.000-0-unknown Unit: USRP X310 (31D7872,=20
> 192.168.30.2) FPGA Image: /usr/share/uhd/images/usrp_x310_fpga_XG.bit=20
> failed. Error: RuntimeError: Device reported an error during=20
> initialization. abusso@ttclabsdr:~$|
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------QjfmVCMFxuvN0RFWPFzxlTTt
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-03 10:02, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:iw1fnw@gmail.com">iw1fnw@gmail.com</a=
>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:9dQokdxM5v15U6XVvLmuzBGPbKx9xoKp64CaPmcKTPA@lists.ettus=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>The NIC is an Intel X710 Dual Port 10Gb Direct Attach,
        SFP+,PCIe. MTU is now 9000. I tried now with 1500, but still
        same error. I still have to check with new image, if any.</p>
    </blockquote>
    My "hunch" is that packets are getting lost or re-ordered during the
    FPGA image load over the network connection, which is why I had you
    check with different<br>
    =C2=A0 MTUs.<br>
    <br>
    Have you replaced the cable?=C2=A0 SFP+ module?=C2=A0=C2=A0 Is this d=
irect or
    through a switch?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:9dQokdxM5v15U6XVvLmuzBGPbKx9xoKp64CaPmcKTPA@lists.ettus=
.com">
      <pre><code>abusso@ttclabsdr:~$ ifconfig
eno1: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 1500
        inet 10.181.165.152  netmask 255.255.252.0  broadcast 10.181.167.=
255
        inet6 fe80::a6bb:6dff:feae:de8  prefixlen 64  scopeid 0x20&lt;lin=
k&gt;
        ether a4:bb:6d:ae:0d:e8  txqueuelen 1000  (Ethernet)
        RX packets 543759  bytes 60330968 (60.3 MB)
        RX errors 0  dropped 8713  overruns 0  frame 0
        TX packets 24251  bytes 13359677 (13.3 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device interrupt 16  memory 0x92f00000-92f20000

enp4s0f0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 1500
        inet 192.168.30.1  netmask 255.255.255.0  broadcast 192.168.30.25=
5
        inet6 fe80::faf2:1eff:fe98:e70  prefixlen 64  scopeid 0x20&lt;lin=
k&gt;
        ether f8:f2:1e:98:0e:70  txqueuelen 1000  (Ethernet)
        RX packets 2493  bytes 3406398 (3.4 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 2662  bytes 4716866 (4.7 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

enp4s0f1: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 1500
        inet 192.168.40.1  netmask 255.255.255.0  broadcast 192.168.40.25=
5
        inet6 fe80::faf2:1eff:fe98:e71  prefixlen 64  scopeid 0x20&lt;lin=
k&gt;
        ether f8:f2:1e:98:0e:71  txqueuelen 1000  (Ethernet)
        RX packets 305761  bytes 76146924 (76.1 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 24113  bytes 38423211 (38.4 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

enx0050b661c3db: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu =
1500
        inet 192.168.100.1  netmask 255.255.255.0  broadcast 192.168.100.=
255
        inet6 fe80::250:b6ff:fe61:c3db  prefixlen 64  scopeid 0x20&lt;lin=
k&gt;
        ether 00:50:b6:61:c3:db  txqueuelen 1000  (Ethernet)
        RX packets 8896  bytes 585296 (585.2 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 310  bytes 38402 (38.4 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=3D73&lt;UP,LOOPBACK,RUNNING&gt;  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10&lt;host&gt;
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 7296  bytes 23262505 (23.2 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 7296  bytes 23262505 (23.2 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

abusso@ttclabsdr:~$ uhd_image_loader --args "type=3Dx300,addr=3D192.168.3=
0.2"
linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown

Unit: USRP X310 (31D7872, 192.168.30.2)
FPGA Image: /usr/share/uhd/images/usrp_x310_fpga_XG.bit
failed.
Error: RuntimeError: Device reported an error during initialization.
abusso@ttclabsdr:~$</code></pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>
--------------QjfmVCMFxuvN0RFWPFzxlTTt--

--===============7710027550608541433==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7710027550608541433==--
