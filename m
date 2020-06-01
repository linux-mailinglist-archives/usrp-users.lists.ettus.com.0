Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 109A21EAF24
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jun 2020 21:00:49 +0200 (CEST)
Received: from [::1] (port=56002 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jfpfx-00087z-KC; Mon, 01 Jun 2020 15:00:45 -0400
Received: from mail-oi1-f174.google.com ([209.85.167.174]:45804)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jfpft-00082z-JP
 for usrp-users@lists.ettus.com; Mon, 01 Jun 2020 15:00:41 -0400
Received: by mail-oi1-f174.google.com with SMTP id p70so5122031oic.12
 for <usrp-users@lists.ettus.com>; Mon, 01 Jun 2020 12:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=60AF+iu2DQAXwjSKp9i8Rx5Dj+X6aRp2wsTYuE0MGuw=;
 b=S6G0HXtUvF0V+QFcysdY9duVM75kvDUdCopVvXpKpf56QCeNJ0hwOBSEnBmJRUeSBs
 kNiAfsak+rmG/ZbXS4oS+RkH/rXtEGW0Ng7SBeImjbu1dFH3AYKmEdL7GkaAQsIJi9vE
 h1UP8JJ5jqkN2Y7x69MzK9xWRoMmAyKDASZMbzctkbUjMVUisqvIKWt8pCF6nDKhKHNr
 bDu24E0Ni2f+8vtt2GdwDGqeErRNtjoaeYl6Mz/luV7MiLqKXgGEDL0XhbW9AkSMELwQ
 sqQQTXsF0K/k57yd19d4DErFT8+CDm9rZsUn0I+ljus1qT1S2yD4DCH76LbKH8R9iB1v
 OWvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=60AF+iu2DQAXwjSKp9i8Rx5Dj+X6aRp2wsTYuE0MGuw=;
 b=SfdCEmv1tJqnuA0OSrUV+4A8JYOhCN6WojSIJNrLXTvUEZFXrAB+VAVvxAQclnddQD
 Ffm12IBOSaMJKOTXT4mUXkCCrffAHnksFHK+EhVMFehi/eUibXq5bZhW6ZMZctNNFu3v
 1RpsGtgjn4pgEGcM7KwKH7/6529SbpgeMiluzxgIPK8NO8t3N27A8NB2c+HBtXEQRlcD
 ybavDJehlJuoFg+cJBahrse2LmvBPDT8W2BucDaJ5+fiY7SFdnq6RTOir84nuKocOsoN
 m6QmBTvua7OyFus9F+KcZSovD0/Z9aHXBVUmYnPP/C0Hkcu472UuzaXK15yX1yQRdjzE
 zjdA==
X-Gm-Message-State: AOAM533pd08cAUMsUraPNqDg0sXu3h4ikgWuku0Glks9Hd/wbYZxk5qw
 pYP0qe2QGjLUb1RvHXkOUUfv1WWGp6Mm0d4bKlFwGg==
X-Google-Smtp-Source: ABdhPJwKA9IuyUITEeG6xb+d7TqxWOfPyxKPvtCr64Qps8ei97pGI6p4CVPckOyNEc0cn1dPHkD11mVALO0ZUMyxiHw=
X-Received: by 2002:aca:4386:: with SMTP id q128mr484612oia.150.1591037997554; 
 Mon, 01 Jun 2020 11:59:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQ=V0dNfQTPMXxh4HjGpGg754Ahg6EWstRuT2GcGDt6Zw@mail.gmail.com>
 <986c0add83a74d859bfadaeeb555830c@gtri.gatech.edu>
 <CAGNhwTNjqtBd-DdsDvGy1QzjO9Yfoix52K2Xr=53VFLSD6hWJA@mail.gmail.com>
 <576d05354bcd4a9baef484edf9619705@gtri.gatech.edu>
 <CAGNhwTOgJ8NMFt4BaJ=vNrzmzA+QA6UoP4xY-jXPrdgOAO5nsA@mail.gmail.com>
 <10a47a15eda347929f8b499b7000b1b7@gtri.gatech.edu>
In-Reply-To: <10a47a15eda347929f8b499b7000b1b7@gtri.gatech.edu>
Date: Mon, 1 Jun 2020 14:59:46 -0400
Message-ID: <CAB__hTT+Nu_2UwcNLGSWvpjRBCYqwkXg0nJ0PLX=JE=i1jKeTw@mail.gmail.com>
To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Subject: Re: [USRP-users] creating an rfnoc block on master branch
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0454302057218136707=="
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

--===============0454302057218136707==
Content-Type: multipart/alternative; boundary="000000000000ab656505a70a66f7"

--000000000000ab656505a70a66f7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jeff,
I don't know the direct answer to your question because I have not yet
tried to build the example gain block.  However, I have looked at the rfnoc
specification (draft version) found here
<https://files.ettus.com/app_notes/>.  This doc is not without errors, but
it does provide a good overview of changes and might help answer your
question about yml files.  It appears that Ettus has not yet released
"noc_block_tool" which will eventually create the yml files from user
input, but for now perhaps you have to just create the yml file yourself
based on other example noc blocks like FIR and FFT.
Rob

On Fri, May 29, 2020 at 11:38 PM Hodges, Jeff via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Thanks for your prompt reply, Michael. I have successfully installed both
> gnuradio-master and uhd-master from source. I would like to build an imag=
e
> of the X310 using the OOT block gain in the example folder. However, the
> rfnoc_image_builder.py is giving me an error. I wonder if the syntax I am
> providing is correct?
>
>
>
> First mkdir and cmake from a build folder in the OOT gain example:
>
>
>
> *nvd@nvd-VirtualBox:~/rfnoc/src/uhd/host/examples/rfnoc-example/build$
> cmake ../ -DUHD_FPGA_DIR=3D~/rfnoc/src/uhd/fpga/*
>
> -- Found bash interpreter: /bin/bash
>
> -- Found UHD:
>
> --  * INCLUDES =3D /usr/local/include
>
> --  * LIBS =3D /usr/local/lib/libuhd.so
>
> --  * rfnoc_image_builder =3D /usr/local/bin/rfnoc_image_builder
>
> -- Checking FPGA source directory...
>
> -- Using FPGA source directory: /home/nvd/rfnoc/src/uhd/fpga
>
> -- Registering RFNoC block: rfnoc_block_gain
>
> -- Adding testbench target: rfnoc_block_gain_tb
>
> -- Adding image core target: x310_rfnoc_image_core
>
> -- Boost version: 1.65.1
>
> -- Found the following Boost libraries:
>
> --   program_options
>
> --   system
>
> -- Configuring done
>
> -- Generating done
>
> -- Build files have been written to:
> /home/nvd/rfnoc/src/uhd/host/examples/rfnoc-example/build
>
>
>
> Next, change directory and try to build:
>
>
>
> *nvd@nvd-VirtualBox:~/rfnoc/src/uhd/host/examples/rfnoc-example/build$ cd
> ~/rfnoc/src/uhd/host/utils/*
>
> *nvd@nvd-VirtualBox:~/rfnoc/src/uhd/host/utils$ ./rfnoc_image_builder.py
> -F ../examples/rfnoc-example/ -y
> ../examples/rfnoc-example/icores/x310_rfnoc_image_core.yml -b
> ../examples/rfnoc-example/blocks/gain.yml -t X310_HG*
>
> [INF] Selected device x310
>
> [INF] Using io_signatures.yml from ../include/uhd/rfnoc/core.
>
> [INF] Using x310_bsp.yml from ../include/uhd/rfnoc/core.
>
> [INF] Adding block description from radio.yml
> (../include/uhd/rfnoc/blocks).
>
> [INF] Adding block description from radio_2x64.yml
> (../include/uhd/rfnoc/blocks).
>
> [INF] Adding block description from fir_filter.yml
> (../include/uhd/rfnoc/blocks).
>
> [INF] Adding block description from duc.yml (../include/uhd/rfnoc/blocks)=
.
>
> [INF] Adding block description from fosphor.yml
> (../include/uhd/rfnoc/blocks).
>
> [INF] Adding block description from radio_1x64.yml
> (../include/uhd/rfnoc/blocks).
>
> [INF] Adding block description from axi_ram_fifo_2x64.yml
> (../include/uhd/rfnoc/blocks).
>
> [INF] Adding block description from axi_ram_fifo.yml
> (../include/uhd/rfnoc/blocks).
>
> [INF] Adding block description from fft_1x64.yml
> (../include/uhd/rfnoc/blocks).
>
> [INF] Adding block description from ddc.yml (../include/uhd/rfnoc/blocks)=
.
>
> [INF] Adding block description from axi_ram_fifo_4x64.yml
> (../include/uhd/rfnoc/blocks).
>
> [INF] Adding block description from null_src_sink.yml
> (../include/uhd/rfnoc/blocks).
>
> Traceback (most recent call last):
>
>   File "./rfnoc_image_builder.py", line 189, in <module>
>
>     sys.exit(main())
>
>   File "./rfnoc_image_builder.py", line 185, in main
>
>     include_paths=3Dargs.include_dir,
>
>   File
> "/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py",
> line 824, in build_image
>
>     builder_conf =3D ImageBuilderConfig(config, blocks, device_conf)
>
>   File
> "/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py",
> line 180, in __init__
>
>     self._collect_noc_ports()
>
>   File
> "/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py",
> line 217, in _collect_noc_ports
>
>     desc =3D self.blocks[block["block_desc"]]
>
> KeyError: 'gain.yml'
>
>
>
>
>
> Also, for using the rfnoc_create_verilog requires a yaml configuration
> file as input. Is there an example or documentation somewhere of the form=
at
> of this configuration file? Is gain.yml the file that was provided to
> rfnoc_create_verilog to produce the OOT in the example folder?
>
>
>
> Jeff
>
>
>
> *From:* Michael Dickens <michael.dickens@ettus.com>
> *Sent:* Friday, May 29, 2020 8:07 PM
> *To:* Hodges, Jeff <Jeff.Hodges@gtri.gatech.edu>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] creating an rfnoc block on master branch
>
>
>
> Nope. gr-ettus is, plus or minus, integrated into gr-uhd on GR master. -
> MLD
>
> ---
>
> Michael Dickens
> Ettus Research Technical Support
> Email: support@ettus.com
> Web: https://ettus.com/
>
>
>
>
>
> On Fri, May 29, 2020 at 5:40 PM Hodges, Jeff <Jeff.Hodges@gtri.gatech.edu=
>
> wrote:
>
> Is gr-ettus still required for rfnoc on master branch? I cannot install
> gr-ettus with uhd master and gnuradio master.
>
>
>
> When I run gnuradio-companion the rfnoc blocks are missing.
>
>
>
> Jeff
>
>
>
> *From:* Michael Dickens <michael.dickens@ettus.com>
> *Sent:* Friday, May 29, 2020 8:31 AM
> *To:* Hodges, Jeff <Jeff.Hodges@gtri.gatech.edu>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] creating an rfnoc block on master branch
>
>
>
> Hi Jeff - The new tool is called "rfnoc_create_verilog" ... it's located
> in the UHD repo as "host/utils/rfnoc_blocktool/rfnoc_create_verilog.py". =
-
> MLD
>
> ---
>
> Michael Dickens
> Ettus Research Technical Support
> Email: support@ettus.com
> Web: https://ettus.com/
>
>
>
>
>
> On Thu, May 28, 2020 at 11:54 PM Hodges, Jeff via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> I also would like to know the answer to Rob=E2=80=99s question:
>
>
>
> Rfnocmodtool is in gr-ettus but if I try to install gr-ettus with the uhd
> master branch, I get the following error:
>
>
>
>
>
> [  5%] Building CXX object lib/CMakeFiles/gnuradio-ettus.dir/device3.cc.o
>
> In file included from /home/nvd/rfnoc/src/gr-ettus/lib/device3.cc:27:0:
>
> /home/nvd/rfnoc/src/gr-ettus/include/ettus/device3.h:30:10: fatal error:
> uhd/device3.hpp: No such file or directory
>
> #include <uhd/device3.hpp>
>
>           ^~~~~~~~~~~~~~~~~
>
> compilation terminated.
>
> lib/CMakeFiles/gnuradio-ettus.dir/build.make:72: recipe for target
> 'lib/CMakeFiles/gnuradio-ettus.dir/device3.cc.o' failed
>
> make[2]: *** [lib/CMakeFiles/gnuradio-ettus.dir/device3.cc.o] Error 1
>
> CMakeFiles/Makefile2:139: recipe for target
> 'lib/CMakeFiles/gnuradio-ettus.dir/all' failed
>
> make[1]: *** [lib/CMakeFiles/gnuradio-ettus.dir/all] Error 2
>
> Makefile:140: recipe for target 'all' failed
>
> make: *** [all] Error 2
>
>
>
>
>
> So how does rfnoc work with master branch?
>
>
>
>
>
> I have also installed UHD-3.15.LTS without PYBOMBS and there were errors
> that have been fixed in the master branch but not UHD-3.15.LTS.
>
>
>
> There are no current versions of UHD that work with RFNoC to build OOT
> without the PYBOMBS method.
>
>
>
>
>
>
>
> Jeff
>
>
>
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> *On Behalf Of *Ro=
b
> Kossler via USRP-users
> *Sent:* Thursday, May 21, 2020 3:19 PM
> *To:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] creating an rfnoc block on master branch
>
>
>
> Hi,
>
> How do I create an rfnoc block using master branch?  I am familiar with
> using rfnoc_mod_tool with UHD 3.15 and earlier.  My understanding was tha=
t
> things are different with master (and uhd 4.0) such that a different tool
> would be used and that this new tool would be part of UHD rather than par=
t
> of a gnuradio installation.  But, I don't see any such tool in my uhd
> master checkout.
>
> Rob
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ab656505a70a66f7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jeff,<div>I don&#39;t know the direct answer to your qu=
estion because I have not yet tried to build the example gain block.=C2=A0 =
However, I have looked at the rfnoc specification (draft version) found <a =
href=3D"https://files.ettus.com/app_notes/">here</a>.=C2=A0 This doc is not=
 without errors, but it does provide a good overview of changes and might h=
elp answer your question about yml files.=C2=A0 It appears that Ettus has n=
ot yet released &quot;noc_block_tool&quot; which=C2=A0will eventually creat=
e the yml files from user input, but for now perhaps you have to just creat=
e the yml file yourself based on other example noc blocks like FIR and FFT.=
</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Fri, May 29, 2020 at 11:38 PM Hodges, Jeff via USRP-=
users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.et=
tus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_3785356858630874917WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Thanks for your prompt reply, Michael. I hav=
e successfully installed both gnuradio-master and uhd-master from source. I=
 would like to build an image of the X310
 using the OOT block gain in the example folder. However, the rfnoc_image_b=
uilder.py is giving me an error. I wonder if the syntax I am providing is c=
orrect?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">First mkdir and cmake from a build folder in=
 the OOT gain example:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif;color:rgb(31,73,125)">nvd@nvd-VirtualBox:~/rfnoc/src/uhd/host/e=
xamples/rfnoc-example/build$ cmake ../ -DUHD_FPGA_DIR=3D~/rfnoc/src/uhd/fpg=
a/<u></u><u></u></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">-- Found bash interpreter: /bin/bash<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">-- Found UHD:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">--=C2=A0 * INCLUDES =3D /usr/local/include<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">--=C2=A0 * LIBS =3D /usr/local/lib/libuhd.so=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">--=C2=A0 * rfnoc_image_builder =3D /usr/loca=
l/bin/rfnoc_image_builder<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">-- Checking FPGA source directory...<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">-- Using FPGA source directory: /home/nvd/rf=
noc/src/uhd/fpga<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">-- Registering RFNoC block: rfnoc_block_gain=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">-- Adding testbench target: rfnoc_block_gain=
_tb<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">-- Adding image core target: x310_rfnoc_imag=
e_core<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">-- Boost version: 1.65.1<u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">-- Found the following Boost libraries:<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">--=C2=A0=C2=A0 program_options<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">--=C2=A0=C2=A0 system<u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">-- Configuring done<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">-- Generating done<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">-- Build files have been written to: /home/n=
vd/rfnoc/src/uhd/host/examples/rfnoc-example/build<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Next, change directory and try to build:<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif;color:rgb(31,73,125)">nvd@nvd-VirtualBox:~/rfnoc/src/uhd/host/e=
xamples/rfnoc-example/build$ cd ~/rfnoc/src/uhd/host/utils/<u></u><u></u></=
span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif;color:rgb(31,73,125)">nvd@nvd-VirtualBox:~/rfnoc/src/uhd/host/u=
tils$ ./rfnoc_image_builder.py -F ../examples/rfnoc-example/ -y ../examples=
/rfnoc-example/icores/x310_rfnoc_image_core.yml
 -b ../examples/rfnoc-example/blocks/gain.yml -t X310_HG<u></u><u></u></spa=
n></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">[INF] Selected device x310<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">[INF] Using io_signatures.yml from ../includ=
e/uhd/rfnoc/core.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">[INF] Using x310_bsp.yml from ../include/uhd=
/rfnoc/core.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">[INF] Adding block description from radio.ym=
l (../include/uhd/rfnoc/blocks).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">[INF] Adding block description from radio_2x=
64.yml (../include/uhd/rfnoc/blocks).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">[INF] Adding block description from fir_filt=
er.yml (../include/uhd/rfnoc/blocks).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">[INF] Adding block description from duc.yml =
(../include/uhd/rfnoc/blocks).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">[INF] Adding block description from fosphor.=
yml (../include/uhd/rfnoc/blocks).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">[INF] Adding block description from radio_1x=
64.yml (../include/uhd/rfnoc/blocks).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">[INF] Adding block description from axi_ram_=
fifo_2x64.yml (../include/uhd/rfnoc/blocks).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">[INF] Adding block description from axi_ram_=
fifo.yml (../include/uhd/rfnoc/blocks).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">[INF] Adding block description from fft_1x64=
.yml (../include/uhd/rfnoc/blocks).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">[INF] Adding block description from ddc.yml =
(../include/uhd/rfnoc/blocks).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">[INF] Adding block description from axi_ram_=
fifo_4x64.yml (../include/uhd/rfnoc/blocks).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">[INF] Adding block description from null_src=
_sink.yml (../include/uhd/rfnoc/blocks).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Traceback (most recent call last):<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0 File &quot;./rfnoc_image_builder.py&q=
uot;, line 189, in &lt;module&gt;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0 sys.exit(main())<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0 File &quot;./rfnoc_image_builder.py&q=
uot;, line 185, in main<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0 include_paths=3Dargs.incl=
ude_dir,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0 File &quot;/usr/local/lib/python3/dis=
t-packages/uhd/imgbuilder/image_builder.py&quot;, line 824, in build_image<=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0 builder_conf =3D ImageBui=
lderConfig(config, blocks, device_conf)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0 File &quot;/usr/local/lib/python3/dis=
t-packages/uhd/imgbuilder/image_builder.py&quot;, line 180, in __init__<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0 self._collect_noc_ports()=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0 File &quot;/usr/local/lib/python3/dis=
t-packages/uhd/imgbuilder/image_builder.py&quot;, line 217, in _collect_noc=
_ports<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0 desc =3D self.blocks[bloc=
k[&quot;block_desc&quot;]]<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">KeyError: &#39;gain.yml&#39;<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Also, for using the rfnoc_create_verilog req=
uires a yaml configuration file as input. Is there an example or documentat=
ion somewhere of the format of this configuration
 file? Is gain.yml the file that was provided to rfnoc_create_verilog to pr=
oduce the OOT in the example folder?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Jeff<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettu=
s.com" target=3D"_blank">michael.dickens@ettus.com</a>&gt;
<br>
<b>Sent:</b> Friday, May 29, 2020 8:07 PM<br>
<b>To:</b> Hodges, Jeff &lt;<a href=3D"mailto:Jeff.Hodges@gtri.gatech.edu" =
target=3D"_blank">Jeff.Hodges@gtri.gatech.edu</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] creating an rfnoc block on master branch<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">Nope. gr-ettus is, plus or minus, integrated into gr=
-uhd on GR master. - MLD<br clear=3D"all">
<u></u><u></u></p>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal">---<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Michael Dickens<br>
Ettus Research Technical Support<br>
Email: <a href=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus=
.com</a><br>
Web: <a href=3D"https://ettus.com/" target=3D"_blank">https://ettus.com/</a=
><u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Fri, May 29, 2020 at 5:40 PM Hodges, Jeff &lt;<a =
href=3D"mailto:Jeff.Hodges@gtri.gatech.edu" target=3D"_blank">Jeff.Hodges@g=
tri.gatech.edu</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:4=
.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Is gr-ettus still required for rfnoc on mast=
er branch? I cannot install gr-ettus with uhd master and
 gnuradio master.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">When I run gnuradio-companion the rfnoc bloc=
ks are missing.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Jeff</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettu=
s.com" target=3D"_blank">michael.dickens@ettus.com</a>&gt;
<br>
<b>Sent:</b> Friday, May 29, 2020 8:31 AM<br>
<b>To:</b> Hodges, Jeff &lt;<a href=3D"mailto:Jeff.Hodges@gtri.gatech.edu" =
target=3D"_blank">Jeff.Hodges@gtri.gatech.edu</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] creating an rfnoc block on master branch</=
span><u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Verdana,sans-serif">Hi Je=
ff - The new tool is called &quot;rfnoc_create_verilog&quot; ... it&#39;s l=
ocated in the UHD repo as &quot;host/utils/rfnoc_blocktool/rfnoc_create_ver=
ilog.py&quot;.
 - MLD</span><u></u><u></u></p>
</div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal">---<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Michael Dickens<br>
Ettus Research Technical Support<br>
Email: <a href=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus=
.com</a><br>
Web: <a href=3D"https://ettus.com/" target=3D"_blank">https://ettus.com/</a=
><u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Thu, May 28, 2020 at 11:54 PM Hodges, Jeff via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin:5pt 0i=
n 5pt 4.8pt">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">I also would like to know the answer to Rob=
=E2=80=99s question:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Rfnocmodtool is in gr-ettus but if I try to =
install gr-ettus with the uhd master branch, I get the
 following error:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">[=C2=A0 5%] Building CXX object lib/CMakeFil=
es/gnuradio-ettus.dir/device3.cc.o</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">In file included from /home/nvd/rfnoc/src/gr=
-ettus/lib/device3.cc:27:0:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/home/nvd/rfnoc/src/gr-ettus/include/ettus/d=
evice3.h:30:10: fatal error: uhd/device3.hpp: No such file
 or directory</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">#include &lt;uhd/device3.hpp&gt;</span><u></=
u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 ^~~~~~~~~~~~~~~~~</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">compilation terminated.</span><u></u><u></u>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">lib/CMakeFiles/gnuradio-ettus.dir/build.make=
:72: recipe for target &#39;lib/CMakeFiles/gnuradio-ettus.dir/device3.cc.o&=
#39;
 failed</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">make[2]: *** [lib/CMakeFiles/gnuradio-ettus.=
dir/device3.cc.o] Error 1</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">CMakeFiles/Makefile2:139: recipe for target =
&#39;lib/CMakeFiles/gnuradio-ettus.dir/all&#39; failed</span><u></u><u></u>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">make[1]: *** [lib/CMakeFiles/gnuradio-ettus.=
dir/all] Error 2</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Makefile:140: recipe for target &#39;all&#39=
; failed</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">make: *** [all] Error 2</span><u></u><u></u>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">So how does rfnoc work with master branch?</=
span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">I have also installed UHD-3.15.LTS without P=
YBOMBS and there were errors that have been fixed in the
 master branch but not UHD-3.15.LTS.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">There are no current versions of UHD that wo=
rk with RFNoC to build OOT without the PYBOMBS method.</span><u></u><u></u>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Jeff</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.=
ettus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt;
<b>On Behalf Of </b>Rob Kossler via USRP-users<br>
<b>Sent:</b> Thursday, May 21, 2020 3:19 PM<br>
<b>To:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] creating an rfnoc block on master branch</span=
><u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">How do I create an rfnoc block using master branch?=
=C2=A0 I am familiar with using rfnoc_mod_tool with UHD 3.15 and earlier.=
=C2=A0 My understanding was that things are different with master
 (and uhd 4.0) such that a different tool would be used and that this new t=
ool would be part of UHD rather than part of a gnuradio installation.=C2=A0=
 But, I don&#39;t see any such tool in my uhd master checkout.<u></u><u></u=
></p>
</div>
<div>
<p class=3D"MsoNormal">Rob<u></u><u></u></p>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a><u></u><u></u></p>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
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

--000000000000ab656505a70a66f7--


--===============0454302057218136707==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0454302057218136707==--

