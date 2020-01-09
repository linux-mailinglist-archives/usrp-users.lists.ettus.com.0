Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3571360BC
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jan 2020 20:07:06 +0100 (CET)
Received: from [::1] (port=55374 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipd94-0001LA-94; Thu, 09 Jan 2020 14:07:02 -0500
Received: from mail-vk1-f171.google.com ([209.85.221.171]:43680)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ejkreinar@gmail.com>) id 1ipd90-0001ER-04
 for usrp-users@lists.ettus.com; Thu, 09 Jan 2020 14:06:58 -0500
Received: by mail-vk1-f171.google.com with SMTP id h13so2258886vkn.10
 for <usrp-users@lists.ettus.com>; Thu, 09 Jan 2020 11:06:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mV2QrNqB0gxchWfsilkyVDe/Ngt7eQeLxonzF0d9U2o=;
 b=G2vezQ1G04jQI0830SYhbH/Z01VY+Tb6HbVybuiqHzQ3LXMsv2BJBW3ZsKUntYIw4I
 km000H44Y3R2OUBtXi9If9jCxYwBTGpLqsGb4SiLyozkv/eS0FISYzdhup8ULePbjxET
 GuyU8eul+KzDcTZXGFhA6R4K4svKDbL9c/+suyJy7H2BSOuOBgfEbcHYcIj4wbn0KJyl
 KUtoY8Yv5kXTNls5f0jxESiv2LN/01tgKcqsD1bgObhPGU0d+nx2euqQ+022evzX6oUe
 WmPp2csPQIgxD8RBdaYhBajOp2Tn71NQrtVFP/shmt0RHvgUgfi5jXPP6zKdTkcmqkUI
 C/8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mV2QrNqB0gxchWfsilkyVDe/Ngt7eQeLxonzF0d9U2o=;
 b=e2UsoPp5NHgwqO+QIBS7D/g2HxSbahzG6MzNApuy64E+OHAG0Sb+s7h3u07KNAkyNa
 xY6n6qeDc1D5hi4CqvoAqy9wOGerdPni7xyLjVppSDrnhfuBEagO1h7hcSJ643kTehPu
 s+g9CMQWEShyc8B7opBcxzhz8R/gUZt0BorPewvKYYo6OWM4daFkZyGScg1cFaam1Ecm
 KwvKGQnWI8zFi3U9BK7Kr2DfVhAj8FrcOHbL/FJFqweSwTyOWzwVXX8v1YZj9H7lprL6
 BRJ8yGlftHgChiTH20u+VquewcKtHEZZqzqyDp+5TlhxR3XfJdWgnlkCGqSHr4NuPnlK
 9i3Q==
X-Gm-Message-State: APjAAAWd9+osHC0a2iirXeyb6Sy+U1q8d0bKCmOBT5QO1JCeZVKvNHYE
 DLpQMWkx091RhPwt3YLvkAuqa1FdKamgmlKJWa1rbHmCX3Q=
X-Google-Smtp-Source: APXvYqwhcOxXzwcaZssh0w2Y33jYez1gBJSpoqoH+n7iSsQDEZfPQOJNsxHzNrqgrbz7GxUAhk0D5NjbM5GvrpTsUHo=
X-Received: by 2002:ac5:c1d4:: with SMTP id g20mr7683346vkk.83.1578596776519; 
 Thu, 09 Jan 2020 11:06:16 -0800 (PST)
MIME-Version: 1.0
References: <0f08a6b07438bf71916006244562092c.squirrel@webmail.tu-dortmund.de>
 <640c149702f53cfe43d71b5da2255278.squirrel@webmail.tu-dortmund.de>
 <CADRnH22jhRo3s-=URkd-bgtCHoqVAP3CzV2XGgtkbO21h2f=6Q@mail.gmail.com>
 <f579952b4ad7fb3a6457224d49fc6af6.squirrel@webmail.tu-dortmund.de>
In-Reply-To: <f579952b4ad7fb3a6457224d49fc6af6.squirrel@webmail.tu-dortmund.de>
Date: Thu, 9 Jan 2020 14:06:05 -0500
Message-ID: <CADRnH204GQpSWrzaaDLXn27a+HCUC_Lz3CB_ogd3rdm6S=XO7A@mail.gmail.com>
To: felix.greiwe@tu-dortmund.de
Subject: Re: [USRP-users] Building RFNoC Image with OOT Module on X310 -
 Module not found
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
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: Usrp Liste <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5242124083011528626=="
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

--===============5242124083011528626==
Content-Type: multipart/alternative; boundary="0000000000001bb3f9059bb9b4ce"

--0000000000001bb3f9059bb9b4ce
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Felix, thanks for the catch. That looks like a problem I may have
introduced by accident a few months ago. This PR should fix it, hopefully:
https://github.com/EttusResearch/fpga/pull/47/files

Note I expect this would get merged into master and potentially not
backported to whatever version of uhd-fpga you're using, so I'd recommend
keeping what you have locally if it works for you :D

EJ

On Wed, Jan 8, 2020 at 8:00 AM Felix Greiwe via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi EJ,
>
> thank you for your answer! To make my error more traceable, I created a
> new OOT Module and added the default gain block from rfnoc getting
> started.
>
> I also took your advice and looked at the uhd_image_builder.py script. I
> noticed very strange behaviour, because my print statements suggested,
> that the script did not include my makefile.srcs because it first edited
> the path
>
> /home/lskt/rfnoc/src/rfnoc-blocks_lskt/ to
> /home/lskt/rfnoc/src/rfnoc-blocks_lskt/rfnoc and a bit later to
> /home/lskt/rfnoc/src/rfnoc-blocks_lskt/rfnoc/rfnoc/fpga-src/ .
>
> As you can see two rfnoc's here hence it did not find the makefile.src in
> ..../fpga-src. The changes (marked with fgr) in the create_oot_include
> here seem to resolve the issue, hopefully helpful for other people too an=
d
> maybe even a major bug?:
>
> def create_oot_include(device, include_dirs):
>     """
>     Create the include file for OOT RFNoC sources
>     """
>     oot_dir_list =3D []
>     target_dir =3D device_dict(device.lower())
>     dest_srcs_file =3D os.path.join(get_scriptpath(), '..', '..', 'top',\
>             target_dir, 'Makefile.OOT.inc')
>     incfile =3D open(dest_srcs_file, 'w')
>     incfile.write(OOT_SRCS_FILE_HDR)
>     if include_dirs is not None:
>         for dirs in include_dirs:
>             currpath =3D os.path.abspath(str(dirs))
>             if os.path.isdir(currpath) & (os.path.basename(currpath) =3D=
=3D
> "rfnoc"):
>                 # Case 1: Pointed directly to rfnoc directory
>                 oot_path =3D currpath
>             elif os.path.isdir(os.path.join(currpath, 'rfnoc')):
>                 # Case 2: Pointed to top level rfnoc module directory
>                 oot_path =3D os.path.join(currpath, 'rfnoc')
>             elif os.path.isfile(os.path.join(currpath, 'Makefile.inc')):
>                 # Case 3: Pointed to a random directory with a Makefile.i=
nc
>                 oot_path =3D currpath
>             else:
>                 print('No RFNoC module found at ' +
> os.path.abspath(currpath))
>                 continue
>             if oot_path not in oot_dir_list:
>                 oot_dir_list.append(oot_path)
>                 named_path =3D os.path.join('$(BASE_DIR)',
> get_relative_path(get_basedir(), oot_path))
>                 incfile.write(OOT_DIR_TMPL.format(oot_dir=3Dnamed_path))
>                 if os.path.isfile(os.path.join(oot_path, 'Makefile.inc'))=
:
>                     # Check for Makefile.inc
>                     incfile.write(OOT_INC_TMPL)
>                 elif os.path.isfile(os.path.join(oot_path, 'rfnoc',
> 'Makefile.inc')):
>                     # Check for Makefile.inc
>                     incfile.write(OOT_INC_TMPL)
>                 #elif os.path.isfile(os.path.join(oot_path, 'rfnoc',
> 'fpga-src', 'Makefile.srcs')): # Original
>                 elif os.path.isfile(os.path.join(oot_path, 'fpga-src',
> 'Makefile.srcs')): # Anders fgr
>                     # Legacy: Check for fpga-src/Makefile.srcs
>                     # Read, then append to file
>                     # curr_srcs =3D open(os.path.join(oot_path, 'rfnoc',
> 'fpga-src', 'Makefile.srcs'), 'r').read() # Original
>                     curr_srcs =3D open(os.path.join(oot_path, 'fpga-src',
> 'Makefile.srcs'), 'r').read() # Anders fgr
>                     # curr_srcs =3D curr_srcs.replace('SOURCES_PATH',
> os.path.join(oot_path, 'rfnoc', 'fpga-src', '')) #
> Original
>                     curr_srcs =3D curr_srcs.replace('SOURCES_PATH',
> os.path.join(oot_path, 'fpga-src', '')) # Anders fgr
>                     print('Searching for Makefile.srcs: ' + curr_srcs) #f=
gr
>                     incfile.write(OOT_SRCS_TMPL.format(sources=3Dcurr_src=
s))
>                 else:
>                     print('No valid makefile found at ' +
> os.path.abspath(currpath))
>                     continue
>
> However 30 minutes later in the build I got the next errror and again hav=
e
> no idea what to do. My command was:
>
> ./uhd_image_builder.py gain ddc fft -I
> /home/lskt/rfnoc/src/rfnoc-blocks_lskt/ -d x310 -t X310_RFNOC_HG -m 6
> --fill-with-fifos
>
> Using Vivado 2018.3 and UHD 3.15.0.0-124-geb448043
>
>
> Erros are:
>
> ERROR: [DRC MDRV-1] Multiple Driver Nets: Net bus_clk_gen/inst/CLK_OUT4
> has multiple drivers: radio_clk_gen/inst/clkout1_buf/O, and
> bus_clk_gen/inst/clkout4_buf/O.
> ERROR: [DRC MDRV-1] Multiple Driver Nets: Net
> radio_reset_sync/reset_double_sync/synchronizer_false_path/value[9]_9 has
> multiple drivers:
>
> ce_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].value_r=
eg[9][0]/Q,
> and
>
> radio_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].valu=
e_reg[9][0]/Q.
> ERROR: [Vivado_Tcl 4-78] Error(s) found during DRC. Opt_design not run.
> ERROR: [Common 17-39] 'opt_design' failed due to earlier errors.
> [00:24:46] Current task: DRC +++ Current Phase: Starting
> [00:24:46] Current task: DRC +++ Current Phase: Finished
> [00:24:46] Process terminated. Status: Failure
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> Warnings:           1304
> Critical Warnings:  40
> Errors:             4
>
> Makefile.x300.inc:106: recipe for target 'bin' failed
> make[1]: *** [bin] Error 1
> make[1]: Verzeichnis =E2=80=9E/home/lskt/rfnoc/src/uhd-fpga/usrp3/top/x30=
0=E2=80=9C wird
> verlassen
> Makefile:112: recipe for target 'X310_RFNOC_HG' failed
> make: *** [X310_RFNOC_HG] Error 2
>
>
> Again, I would be very thankful for any advice, I refuse to give up :D
>
> Thanks again and best regards,
>
> Felix
>
>
> > Hi Felix,
> >
> > It's tough to debug your specific issues without seeing the whole OOT
> repo
> > structure, including makefiles, etc.
> >
> > However I regularly use rfnoc with OOT folders successfully and have an
> > example here you might be able to refer to for some hints:
> > github.com/ejk43/rfnoc-ootexample
> >
> > I might suggest trying to check that out and see if you can build with
> one
> > of those blocks first, then modify for your purposes?
> >
> > Also, one other thing to mention is you might have some luck debugging
> the
> > uhd_image_builder.py to see where it's going wrong in your case (it's
> just
> > a python file so it's pretty easy to add debug markers or print
> statements
> > if you want)...
> >
> > EJ
> >
> > On Sat, Jan 4, 2020, 5:10 AM Felix Greiwe via USRP-users <
> > usrp-users@lists.ettus.com> wrote:
> >
> >> Hello again,
> >>
> >> has no one an idea? I have still not managed to get it working..
> >> I would take any advice!
> >>
> >> Best regards,
> >>
> >> Felix
> >>
> >>
> >> > Hello together,
> >> >
> >> > recently I installed the whole UHD/GNU-Radio Toolchain on a fresh
> >> install
> >> > of Kubuntu 18.04 LTS. I followed the instructions from
> >> > https://kb.ettus.com/Getting_Started_with_RFNoC_Development
> >> > and used the Pybombs install.
> >> >
> >> > (I ran into a lot of problems there and had to install a lot of stuf=
f
> >> > manually because most of the commands were not working properly. May=
be
> >> the
> >> > Pybombs Tutorial Section needs an update?)
> >> >
> >> > Finally I managed to install it successfully and the command
> >> > uhd_config_version -- info prints: UHD 3.15.0.0-124-geb448043
> >> > (I also installed Vivado 2018.3 and added the License which seems to
> >> > work.)
> >> >
> >> > After the install I wanted to validate it by creating an OOT Module
> >> and
> >> > OOT Block named noc_block_checkdevprocess.v. I did not edit the
> >> Verilog
> >> > Code because I only wanted to know if I was able to build an Image
> >> > properly.
> >> > (I ran the default Testbench too, which worked without errors.)
> >> >
> >> > The command to build my image is:
> >> >
> >> > ./uhd_image_builder.py checkdevprocess digital_gain -t X310_RFNOC_HG
> >> -d
> >> > X310 -I /home/lskt/rfnoc-blocks_lskt/rfnoc
> >> >
> >> > with "rfnoc-blocks_lskt" beeing my OOT Module and "checkdevprocess"
> >> beeing
> >> > my  custom block.
> >> > (I also tried the paths home/lskt/rfnoc-blocks_lskt/rfnoc/;
> >> > home/lskt/rfnoc-blocks_lskt/;
> >> home/lskt/rfnoc-blocks_lskt/rfnoc/fpga-src
> >> )
> >> >
> >> > Every single time I get the same error message:
> >> > ERROR: [Synth 8-439] module 'noc_block_checkdevprocess' not found
> >> >
> >>
> [/home/lskt/rfnoc/src/uhd-fpga/usrp3/top/x300/rfnoc_ce_auto_inst_x310.v:2=
2]
> >> >
> >> > and I don't know why.
> >> >
> >> > I also tried the the uhd_image_builder_gui.py which did not even pop
> >> up
> >> > until I uncommented the Line at row 149. I can see my OOT Block here
> >> after
> >> > adding the Module in the gui, but it prints the same error message a=
s
> >> the
> >> > non-gui version.
> >> >
> >> > If you need further information to help please ask.
> >> >
> >> > Any help is appreciated.
> >> >
> >> > Felix
> >> >
> >> >
> >> >
> >> >
> >> >
> >> > _______________________________________________
> >> > USRP-users mailing list
> >> > USRP-users@lists.ettus.com
> >> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >> >
> >>
> >>
> >>
> >> _______________________________________________
> >> USRP-users mailing list
> >> USRP-users@lists.ettus.com
> >> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>
> >
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000001bb3f9059bb9b4ce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Felix, thanks for the catch. That looks like a problem I m=
ay have introduced by accident a few months ago. This PR should fix it, hop=
efully:=C2=A0<a href=3D"https://github.com/EttusResearch/fpga/pull/47/files=
">https://github.com/EttusResearch/fpga/pull/47/files</a><br><br>Note I exp=
ect this would get merged into master and potentially not backported to wha=
tever version of uhd-fpga you&#39;re using, so I&#39;d recommend keeping wh=
at you have locally if it works for you :D<div><br></div><div>EJ</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On We=
d, Jan 8, 2020 at 8:00 AM Felix Greiwe via USRP-users &lt;<a href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">Hi EJ,<br>
<br>
thank you for your answer! To make my error more traceable, I created a<br>
new OOT Module and added the default gain block from rfnoc getting<br>
started.<br>
<br>
I also took your advice and looked at the uhd_image_builder.py script. I<br=
>
noticed very strange behaviour, because my print statements suggested,<br>
that the script did not include my makefile.srcs because it first edited<br=
>
the path<br>
<br>
/home/lskt/rfnoc/src/rfnoc-blocks_lskt/ to<br>
/home/lskt/rfnoc/src/rfnoc-blocks_lskt/rfnoc and a bit later to<br>
/home/lskt/rfnoc/src/rfnoc-blocks_lskt/rfnoc/rfnoc/fpga-src/ .<br>
<br>
As you can see two rfnoc&#39;s here hence it did not find the makefile.src =
in<br>
..../fpga-src. The changes (marked with fgr) in the create_oot_include<br>
here seem to resolve the issue, hopefully helpful for other people too and<=
br>
maybe even a major bug?:<br>
<br>
def create_oot_include(device, include_dirs):<br>
=C2=A0 =C2=A0 &quot;&quot;&quot;<br>
=C2=A0 =C2=A0 Create the include file for OOT RFNoC sources<br>
=C2=A0 =C2=A0 &quot;&quot;&quot;<br>
=C2=A0 =C2=A0 oot_dir_list =3D []<br>
=C2=A0 =C2=A0 target_dir =3D device_dict(device.lower())<br>
=C2=A0 =C2=A0 dest_srcs_file =3D os.path.join(get_scriptpath(), &#39;..&#39=
;, &#39;..&#39;, &#39;top&#39;,\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 target_dir, &#39;Makefile.OOT.inc=
&#39;)<br>
=C2=A0 =C2=A0 incfile =3D open(dest_srcs_file, &#39;w&#39;)<br>
=C2=A0 =C2=A0 incfile.write(OOT_SRCS_FILE_HDR)<br>
=C2=A0 =C2=A0 if include_dirs is not None:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for dirs in include_dirs:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 currpath =3D os.path.abspath(str(=
dirs))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if os.path.isdir(currpath) &amp; =
(os.path.basename(currpath) =3D=3D<br>
&quot;rfnoc&quot;):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Case 1: Pointed d=
irectly to rfnoc directory<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oot_path =3D currpa=
th<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 elif os.path.isdir(os.path.join(c=
urrpath, &#39;rfnoc&#39;)):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Case 2: Pointed t=
o top level rfnoc module directory<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oot_path =3D os.pat=
h.join(currpath, &#39;rfnoc&#39;)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 elif os.path.isfile(os.path.join(=
currpath, &#39;Makefile.inc&#39;)):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Case 3: Pointed t=
o a random directory with a Makefile.inc<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oot_path =3D currpa=
th<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&#39;No RFNoC=
 module found at &#39; +<br>
os.path.abspath(currpath))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 continue<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if oot_path not in oot_dir_list:<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oot_dir_list.append=
(oot_path)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 named_path =3D os.p=
ath.join(&#39;$(BASE_DIR)&#39;,<br>
get_relative_path(get_basedir(), oot_path))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 incfile.write(OOT_D=
IR_TMPL.format(oot_dir=3Dnamed_path))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if os.path.isfile(o=
s.path.join(oot_path, &#39;Makefile.inc&#39;)):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Che=
ck for Makefile.inc<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 incfi=
le.write(OOT_INC_TMPL)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 elif os.path.isfile=
(os.path.join(oot_path, &#39;rfnoc&#39;,<br>
&#39;Makefile.inc&#39;)):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Che=
ck for Makefile.inc<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 incfi=
le.write(OOT_INC_TMPL)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 #elif os.path.isfil=
e(os.path.join(oot_path, &#39;rfnoc&#39;,<br>
&#39;fpga-src&#39;, &#39;Makefile.srcs&#39;)): # Original<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 elif os.path.isfile=
(os.path.join(oot_path, &#39;fpga-src&#39;,<br>
&#39;Makefile.srcs&#39;)): # Anders fgr<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Leg=
acy: Check for fpga-src/Makefile.srcs<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Rea=
d, then append to file<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # cur=
r_srcs =3D open(os.path.join(oot_path, &#39;rfnoc&#39;,<br>
&#39;fpga-src&#39;, &#39;Makefile.srcs&#39;), &#39;r&#39;).read() # Origina=
l<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 curr_=
srcs =3D open(os.path.join(oot_path, &#39;fpga-src&#39;,<br>
&#39;Makefile.srcs&#39;), &#39;r&#39;).read() # Anders fgr<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # cur=
r_srcs =3D curr_srcs.replace(&#39;SOURCES_PATH&#39;,<br>
os.path.join(oot_path, &#39;rfnoc&#39;, &#39;fpga-src&#39;, &#39;&#39;)) #<=
br>
Original<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 curr_=
srcs =3D curr_srcs.replace(&#39;SOURCES_PATH&#39;,<br>
os.path.join(oot_path, &#39;fpga-src&#39;, &#39;&#39;)) # Anders fgr<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print=
(&#39;Searching for Makefile.srcs: &#39; + curr_srcs) #fgr<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 incfi=
le.write(OOT_SRCS_TMPL.format(sources=3Dcurr_srcs))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print=
(&#39;No valid makefile found at &#39; +<br>
os.path.abspath(currpath))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 conti=
nue<br>
<br>
However 30 minutes later in the build I got the next errror and again have<=
br>
no idea what to do. My command was:<br>
<br>
./uhd_image_builder.py gain ddc fft -I<br>
/home/lskt/rfnoc/src/rfnoc-blocks_lskt/ -d x310 -t X310_RFNOC_HG -m 6<br>
--fill-with-fifos<br>
<br>
Using Vivado 2018.3 and UHD 3.15.0.0-124-geb448043<br>
<br>
<br>
Erros are:<br>
<br>
ERROR: [DRC MDRV-1] Multiple Driver Nets: Net bus_clk_gen/inst/CLK_OUT4<br>
has multiple drivers: radio_clk_gen/inst/clkout1_buf/O, and<br>
bus_clk_gen/inst/clkout4_buf/O.<br>
ERROR: [DRC MDRV-1] Multiple Driver Nets: Net<br>
radio_reset_sync/reset_double_sync/synchronizer_false_path/value[9]_9 has<b=
r>
multiple drivers:<br>
ce_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].value_reg=
[9][0]/Q,<br>
and<br>
radio_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].value_=
reg[9][0]/Q.<br>
ERROR: [Vivado_Tcl 4-78] Error(s) found during DRC. Opt_design not run.<br>
ERROR: [Common 17-39] &#39;opt_design&#39; failed due to earlier errors.<br=
>
[00:24:46] Current task: DRC +++ Current Phase: Starting<br>
[00:24:46] Current task: DRC +++ Current Phase: Finished<br>
[00:24:46] Process terminated. Status: Failure<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<br>
Warnings:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01304<br>
Critical Warnings:=C2=A0 40<br>
Errors:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04<br>
<br>
Makefile.x300.inc:106: recipe for target &#39;bin&#39; failed<br>
make[1]: *** [bin] Error 1<br>
make[1]: Verzeichnis =E2=80=9E/home/lskt/rfnoc/src/uhd-fpga/usrp3/top/x300=
=E2=80=9C wird<br>
verlassen<br>
Makefile:112: recipe for target &#39;X310_RFNOC_HG&#39; failed<br>
make: *** [X310_RFNOC_HG] Error 2<br>
<br>
<br>
Again, I would be very thankful for any advice, I refuse to give up :D<br>
<br>
Thanks again and best regards,<br>
<br>
Felix<br>
<br>
<br>
&gt; Hi Felix,<br>
&gt;<br>
&gt; It&#39;s tough to debug your specific issues without seeing the whole =
OOT repo<br>
&gt; structure, including makefiles, etc.<br>
&gt;<br>
&gt; However I regularly use rfnoc with OOT folders successfully and have a=
n<br>
&gt; example here you might be able to refer to for some hints:<br>
&gt; <a href=3D"http://github.com/ejk43/rfnoc-ootexample" rel=3D"noreferrer=
" target=3D"_blank">github.com/ejk43/rfnoc-ootexample</a><br>
&gt;<br>
&gt; I might suggest trying to check that out and see if you can build with=
 one<br>
&gt; of those blocks first, then modify for your purposes?<br>
&gt;<br>
&gt; Also, one other thing to mention is you might have some luck debugging=
 the<br>
&gt; uhd_image_builder.py to see where it&#39;s going wrong in your case (i=
t&#39;s just<br>
&gt; a python file so it&#39;s pretty easy to add debug markers or print st=
atements<br>
&gt; if you want)...<br>
&gt;<br>
&gt; EJ<br>
&gt;<br>
&gt; On Sat, Jan 4, 2020, 5:10 AM Felix Greiwe via USRP-users &lt;<br>
&gt; <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; Hello again,<br>
&gt;&gt;<br>
&gt;&gt; has no one an idea? I have still not managed to get it working..<b=
r>
&gt;&gt; I would take any advice!<br>
&gt;&gt;<br>
&gt;&gt; Best regards,<br>
&gt;&gt;<br>
&gt;&gt; Felix<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Hello together,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; recently I installed the whole UHD/GNU-Radio Toolchain on a f=
resh<br>
&gt;&gt; install<br>
&gt;&gt; &gt; of Kubuntu 18.04 LTS. I followed the instructions from<br>
&gt;&gt; &gt; <a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_De=
velopment" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/Gettin=
g_Started_with_RFNoC_Development</a><br>
&gt;&gt; &gt; and used the Pybombs install.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; (I ran into a lot of problems there and had to install a lot =
of stuff<br>
&gt;&gt; &gt; manually because most of the commands were not working proper=
ly. Maybe<br>
&gt;&gt; the<br>
&gt;&gt; &gt; Pybombs Tutorial Section needs an update?)<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Finally I managed to install it successfully and the command<=
br>
&gt;&gt; &gt; uhd_config_version -- info prints: UHD 3.15.0.0-124-geb448043=
<br>
&gt;&gt; &gt; (I also installed Vivado 2018.3 and added the License which s=
eems to<br>
&gt;&gt; &gt; work.)<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; After the install I wanted to validate it by creating an OOT =
Module<br>
&gt;&gt; and<br>
&gt;&gt; &gt; OOT Block named noc_block_checkdevprocess.v. I did not edit t=
he<br>
&gt;&gt; Verilog<br>
&gt;&gt; &gt; Code because I only wanted to know if I was able to build an =
Image<br>
&gt;&gt; &gt; properly.<br>
&gt;&gt; &gt; (I ran the default Testbench too, which worked without errors=
.)<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; The command to build my image is:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; ./uhd_image_builder.py checkdevprocess digital_gain -t X310_R=
FNOC_HG<br>
&gt;&gt; -d<br>
&gt;&gt; &gt; X310 -I /home/lskt/rfnoc-blocks_lskt/rfnoc<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; with &quot;rfnoc-blocks_lskt&quot; beeing my OOT Module and &=
quot;checkdevprocess&quot;<br>
&gt;&gt; beeing<br>
&gt;&gt; &gt; my=C2=A0 custom block.<br>
&gt;&gt; &gt; (I also tried the paths home/lskt/rfnoc-blocks_lskt/rfnoc/;<b=
r>
&gt;&gt; &gt; home/lskt/rfnoc-blocks_lskt/;<br>
&gt;&gt; home/lskt/rfnoc-blocks_lskt/rfnoc/fpga-src<br>
&gt;&gt; )<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Every single time I get the same error message:<br>
&gt;&gt; &gt; ERROR: [Synth 8-439] module &#39;noc_block_checkdevprocess&#3=
9; not found<br>
&gt;&gt; &gt;<br>
&gt;&gt; [/home/lskt/rfnoc/src/uhd-fpga/usrp3/top/x300/rfnoc_ce_auto_inst_x=
310.v:22]<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; and I don&#39;t know why.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I also tried the the uhd_image_builder_gui.py which did not e=
ven pop<br>
&gt;&gt; up<br>
&gt;&gt; &gt; until I uncommented the Line at row 149. I can see my OOT Blo=
ck here<br>
&gt;&gt; after<br>
&gt;&gt; &gt; adding the Module in the gui, but it prints the same error me=
ssage as<br>
&gt;&gt; the<br>
&gt;&gt; &gt; non-gui version.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; If you need further information to help please ask.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Any help is appreciated.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Felix<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; USRP-users mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blan=
k">USRP-users@lists.ettus.com</a><br>
&gt;&gt; &gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.c=
om/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">US=
RP-users@lists.ettus.com</a><br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;<br>
&gt;<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000001bb3f9059bb9b4ce--


--===============5242124083011528626==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5242124083011528626==--

