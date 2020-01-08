Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C0C1345D3
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2020 16:10:01 +0100 (CET)
Received: from [::1] (port=32810 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipCy6-0006Ex-Hm; Wed, 08 Jan 2020 10:09:58 -0500
Received: from mail-oi1-f171.google.com ([209.85.167.171]:45155)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bpadalino@gmail.com>) id 1ipCy2-00064o-R5
 for usrp-users@lists.ettus.com; Wed, 08 Jan 2020 10:09:54 -0500
Received: by mail-oi1-f171.google.com with SMTP id n16so2839052oie.12
 for <usrp-users@lists.ettus.com>; Wed, 08 Jan 2020 07:09:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eTmNJgBcgND/6R6V2vlcNnssxm8+S3SvCzgWIWchZY8=;
 b=U3b5l2rPNWyzuWvwARTmh4pEzU0b8UsxXsorTJsE3hFjxUEJd58NQM+appgj/VOqHJ
 2aV5SIETPX/N/gLrftobR3jSQ87NHIpL+7erF+xMMZvr8lbEHICdnk0w2AYsbqCPeaQS
 tzQrSP9k7I06MWzc3UQJG2uNTquJ3CjrLb374nuMKv8xzgQCQt86tOxOxbtqY4g1TP0h
 1AwdfmvfsK5tT6mdhd6Wiop6SO5b5A2fBJUKS6t1/awe/B7TKgzaFITAGPuJ/DCUwo7r
 XNfksIQBR5HHY6lNSVgQFoMFif7sMLG9nnCoVARNw7KkquGhE8L4QEopQ1cs3eaFaHte
 fUog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eTmNJgBcgND/6R6V2vlcNnssxm8+S3SvCzgWIWchZY8=;
 b=V2p5qXcSo4CtoT9sQBqnCDeInO8S6dUDJkfdqguGswAQRwpQWjQqDaFJRF1fLRKoG3
 pYKlBIm4g1qBEXQOUegLn5GhOiYL357uD1haPVBrUfn3NQBzONKgt0Wl8kraDi4qmOmw
 Q08I8foIXj2l3vDpzWU9mzwouMBffS+JskJW5wsJyJSH8uP2J092iI8douySCPed/dtu
 WWX9nmjnfmIdQFW1nTe//5v/CG9cmAuzz1clPYyvzU1k+rykzCq+WaVH4XTQSBwfxBkF
 xfcZqBXZn4QDrLIR2m4okuk4+8fTAlGnrHU+t6B6WrfvhsKrlNqZxlEKYcZluslBY7MY
 Og5g==
X-Gm-Message-State: APjAAAU26x2fRRM5Qy/NavZuYP4FCBvSwmXKkpc/xs8PGRSgjDOfvmhW
 s/mQvEzCSFc5/DWkJI1WchSr5e/x1uUvStvGm/FvZai1
X-Google-Smtp-Source: APXvYqyPQhqQBTsxH3CtbpLRwlJcFt0ZofjkkgXSMYzT1YkZ8OyKb2gL09hcAu5T6DVV4XqDzhliKMWhAIZTB3WfShI=
X-Received: by 2002:aca:ab0e:: with SMTP id u14mr3479534oie.1.1578496153837;
 Wed, 08 Jan 2020 07:09:13 -0800 (PST)
MIME-Version: 1.0
References: <0f08a6b07438bf71916006244562092c.squirrel@webmail.tu-dortmund.de>
 <640c149702f53cfe43d71b5da2255278.squirrel@webmail.tu-dortmund.de>
 <CADRnH22jhRo3s-=URkd-bgtCHoqVAP3CzV2XGgtkbO21h2f=6Q@mail.gmail.com>
 <f579952b4ad7fb3a6457224d49fc6af6.squirrel@webmail.tu-dortmund.de>
In-Reply-To: <f579952b4ad7fb3a6457224d49fc6af6.squirrel@webmail.tu-dortmund.de>
Date: Wed, 8 Jan 2020 10:09:01 -0500
Message-ID: <CAEXYVK6F2+h4XCCXDoihoQUi6arcutbPy5_YXi=y4ebYcKozww@mail.gmail.com>
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: Usrp Liste <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6808450213076434517=="
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

--===============6808450213076434517==
Content-Type: multipart/alternative; boundary="0000000000008764eb059ba24649"

--0000000000008764eb059ba24649
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

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

This was recently shown to be a reassignment of the ce_clk and ce_rst
signals.  In your rfnoc_ce_auto_inst generated file, remove the lines that
say:

  wire ce_clk =3D radio_clk;
  wire ce_rst =3D radio_rst;

Then try to rebuild.

You can remove those lines from being regenerated every time here:


https://github.com/EttusResearch/fpga/blob/fde2a94eb7231af859653db8caaf777a=
e2b66199/usrp3/tools/scripts/uhd_image_builder.py#L44

Brian

--0000000000008764eb059ba24649
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Jan 8, 2020 at 8:00 AM Felix Grei=
we via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">Hi EJ,<br>
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
Again, I would be very thankful for any advice, I refuse to give up :D<br><=
/blockquote><div><br></div><div>This was recently shown to be a reassignmen=
t of the ce_clk and ce_rst signals.=C2=A0 In your=C2=A0<span style=3D"color=
:rgb(0,0,0);white-space:pre-wrap">rfnoc_ce_auto_inst generated file, remove=
 the lines that say:</span></div><div><span style=3D"color:rgb(0,0,0);white=
-space:pre-wrap"><br></span></div><div><font color=3D"#000000"><span style=
=3D"white-space:pre-wrap">=C2=A0 </span></font>wire ce_clk =3D radio_clk;</=
div>=C2=A0 wire ce_rst =3D radio_rst;</div><div class=3D"gmail_quote"><br><=
/div><div class=3D"gmail_quote">Then try to rebuild.</div><div class=3D"gma=
il_quote"><br></div><div class=3D"gmail_quote">You can remove those lines f=
rom being regenerated every time here:</div><div class=3D"gmail_quote"><br>=
</div><div class=3D"gmail_quote">=C2=A0=C2=A0<a href=3D"https://github.com/=
EttusResearch/fpga/blob/fde2a94eb7231af859653db8caaf777ae2b66199/usrp3/tool=
s/scripts/uhd_image_builder.py#L44">https://github.com/EttusResearch/fpga/b=
lob/fde2a94eb7231af859653db8caaf777ae2b66199/usrp3/tools/scripts/uhd_image_=
builder.py#L44</a></div><div class=3D"gmail_quote"><br></div><div class=3D"=
gmail_quote">Brian</div></div>

--0000000000008764eb059ba24649--


--===============6808450213076434517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6808450213076434517==--

