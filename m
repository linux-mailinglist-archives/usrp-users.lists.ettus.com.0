Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE0C13049B
	for <lists+usrp-users@lfdr.de>; Sat,  4 Jan 2020 22:21:50 +0100 (CET)
Received: from [::1] (port=35260 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1inqrf-0002rl-D9; Sat, 04 Jan 2020 16:21:43 -0500
Received: from mail-vk1-f173.google.com ([209.85.221.173]:37306)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ejkreinar@gmail.com>) id 1inqrc-0002ms-QO
 for usrp-users@lists.ettus.com; Sat, 04 Jan 2020 16:21:40 -0500
Received: by mail-vk1-f173.google.com with SMTP id b129so11585078vka.4
 for <usrp-users@lists.ettus.com>; Sat, 04 Jan 2020 13:21:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QuHeOMULc3U2LvDPBFYMsksDf856yKLFsrx0DL8X39U=;
 b=tCFI3VdlCl6nZKIdVohRZSpBizQy7ZkYLwcWJ3lWRmdSyHN/aov4x1D9W6ZRyOnJQv
 mAhWVTWDHgcq7zLgyfWS+qLypCICRd/TcNY+Bxkf0wSU37QJ773h5nJv2ChCVwnkCozQ
 qDEDKttN7hwaDqkTcj9VoZsgD4pflnUQhLbNksaAYqA52jTeWNrZUTTuvhADS+9wj+FP
 YU/gHMzvNX3U1VPNGYiy52uLnptGqpqpxIzW8z50e4ohOVtfKUSGJ4rqyc16vI9oajbH
 R14CUWFtRdS6Q6eW/fl64WHBYzt0GuVioljsuakhjqUmci2fv3b8Ij65TH8dk0/LrCBF
 578w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QuHeOMULc3U2LvDPBFYMsksDf856yKLFsrx0DL8X39U=;
 b=ChQtTMno36onF3KmdcZLu60jk4jRJ4Koi+OKIsdBXo8UuRerPsXV6mi0pN67z40Awi
 qoJMZxGMsOPLvpCnDwL7axqTJFDgNGqKOkFrQWENfFvqV/vm9+L+KRySMQKGPiF6DF1b
 3Nvdo/uamlzYUI0Ad578o0HW4aHyYLrcCqWzWno/JOv0tTf2fZFa16EMOyuUPQhjueyY
 gvEcZHwJkwlFQ4buOQj5z84dMLb2dXpza0wVtqPMH6/xc/sFtd5/tgN9NlSD47d/DdCZ
 H1/jiu/B41XNR9czUtjB9GCKy2h0RcY8Ij2Aou1Zl1Yh8TSjoBEFyM/CZApE6xzYXMHG
 6ghA==
X-Gm-Message-State: APjAAAVAt51zx9H5JxpLreMBNQhgj+1cLas7hefEdwCUQ0E6lIXsYcIY
 o40HqreYqz+SycsRsdv4kBKoi/tzhK4LBNnpJq8=
X-Google-Smtp-Source: APXvYqyorujLan6MHrayDHJSJVMxj7Kyld3kJWHlcPXEA02ZA9tN5lUsxbAdUTFVqUJHYyQAR/DgVhdJQ9jfMQbzENg=
X-Received: by 2002:a1f:ea04:: with SMTP id i4mr49956961vkh.94.1578172860135; 
 Sat, 04 Jan 2020 13:21:00 -0800 (PST)
MIME-Version: 1.0
References: <0f08a6b07438bf71916006244562092c.squirrel@webmail.tu-dortmund.de>
 <640c149702f53cfe43d71b5da2255278.squirrel@webmail.tu-dortmund.de>
In-Reply-To: <640c149702f53cfe43d71b5da2255278.squirrel@webmail.tu-dortmund.de>
Date: Sat, 4 Jan 2020 16:20:46 -0500
Message-ID: <CADRnH22jhRo3s-=URkd-bgtCHoqVAP3CzV2XGgtkbO21h2f=6Q@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4500229946680495931=="
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

--===============4500229946680495931==
Content-Type: multipart/alternative; boundary="000000000000b8fdd8059b57003a"

--000000000000b8fdd8059b57003a
Content-Type: text/plain; charset="UTF-8"

Hi Felix,

It's tough to debug your specific issues without seeing the whole OOT repo
structure, including makefiles, etc.

However I regularly use rfnoc with OOT folders successfully and have an
example here you might be able to refer to for some hints:
github.com/ejk43/rfnoc-ootexample

I might suggest trying to check that out and see if you can build with one
of those blocks first, then modify for your purposes?

Also, one other thing to mention is you might have some luck debugging the
uhd_image_builder.py to see where it's going wrong in your case (it's just
a python file so it's pretty easy to add debug markers or print statements
if you want)...

EJ

On Sat, Jan 4, 2020, 5:10 AM Felix Greiwe via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello again,
>
> has no one an idea? I have still not managed to get it working..
> I would take any advice!
>
> Best regards,
>
> Felix
>
>
> > Hello together,
> >
> > recently I installed the whole UHD/GNU-Radio Toolchain on a fresh install
> > of Kubuntu 18.04 LTS. I followed the instructions from
> > https://kb.ettus.com/Getting_Started_with_RFNoC_Development
> > and used the Pybombs install.
> >
> > (I ran into a lot of problems there and had to install a lot of stuff
> > manually because most of the commands were not working properly. Maybe
> the
> > Pybombs Tutorial Section needs an update?)
> >
> > Finally I managed to install it successfully and the command
> > uhd_config_version -- info prints: UHD 3.15.0.0-124-geb448043
> > (I also installed Vivado 2018.3 and added the License which seems to
> > work.)
> >
> > After the install I wanted to validate it by creating an OOT Module and
> > OOT Block named noc_block_checkdevprocess.v. I did not edit the Verilog
> > Code because I only wanted to know if I was able to build an Image
> > properly.
> > (I ran the default Testbench too, which worked without errors.)
> >
> > The command to build my image is:
> >
> > ./uhd_image_builder.py checkdevprocess digital_gain -t X310_RFNOC_HG -d
> > X310 -I /home/lskt/rfnoc-blocks_lskt/rfnoc
> >
> > with "rfnoc-blocks_lskt" beeing my OOT Module and "checkdevprocess"
> beeing
> > my  custom block.
> > (I also tried the paths home/lskt/rfnoc-blocks_lskt/rfnoc/;
> > home/lskt/rfnoc-blocks_lskt/; home/lskt/rfnoc-blocks_lskt/rfnoc/fpga-src
> )
> >
> > Every single time I get the same error message:
> > ERROR: [Synth 8-439] module 'noc_block_checkdevprocess' not found
> >
> [/home/lskt/rfnoc/src/uhd-fpga/usrp3/top/x300/rfnoc_ce_auto_inst_x310.v:22]
> >
> > and I don't know why.
> >
> > I also tried the the uhd_image_builder_gui.py which did not even pop up
> > until I uncommented the Line at row 149. I can see my OOT Block here
> after
> > adding the Module in the gui, but it prints the same error message as the
> > non-gui version.
> >
> > If you need further information to help please ask.
> >
> > Any help is appreciated.
> >
> > Felix
> >
> >
> >
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b8fdd8059b57003a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Felix,<div dir=3D"auto"><br></div><div dir=3D"auto">It=
&#39;s tough to debug your specific issues without seeing the whole OOT rep=
o structure, including makefiles, etc.</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">However I regularly use rfnoc with OOT folders successfully =
and have an example here you might be able to refer to for some hints: <a h=
ref=3D"http://github.com/ejk43/rfnoc-ootexample">github.com/ejk43/rfnoc-oot=
example</a></div><div dir=3D"auto"><br></div><div dir=3D"auto">I might sugg=
est trying to check that out and see if you can build with one of those blo=
cks first, then modify for your purposes?</div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">Also, one other thing to mention is you might have some l=
uck debugging the uhd_image_builder.py to see where it&#39;s going wrong in=
 your case (it&#39;s just a python file so it&#39;s pretty easy to add debu=
g markers or print statements if you want)...</div><div dir=3D"auto"><br></=
div><div dir=3D"auto">EJ</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sat, Jan 4, 2020, 5:10 AM Felix Greiwe via=
 USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@li=
sts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello =
again,<br>
<br>
has no one an idea? I have still not managed to get it working..<br>
I would take any advice!<br>
<br>
Best regards,<br>
<br>
Felix<br>
<br>
<br>
&gt; Hello together,<br>
&gt;<br>
&gt; recently I installed the whole UHD/GNU-Radio Toolchain on a fresh inst=
all<br>
&gt; of Kubuntu 18.04 LTS. I followed the instructions from<br>
&gt; <a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_Development=
" rel=3D"noreferrer noreferrer" target=3D"_blank">https://kb.ettus.com/Gett=
ing_Started_with_RFNoC_Development</a><br>
&gt; and used the Pybombs install.<br>
&gt;<br>
&gt; (I ran into a lot of problems there and had to install a lot of stuff<=
br>
&gt; manually because most of the commands were not working properly. Maybe=
 the<br>
&gt; Pybombs Tutorial Section needs an update?)<br>
&gt;<br>
&gt; Finally I managed to install it successfully and the command<br>
&gt; uhd_config_version -- info prints: UHD 3.15.0.0-124-geb448043<br>
&gt; (I also installed Vivado 2018.3 and added the License which seems to<b=
r>
&gt; work.)<br>
&gt;<br>
&gt; After the install I wanted to validate it by creating an OOT Module an=
d<br>
&gt; OOT Block named noc_block_checkdevprocess.v. I did not edit the Verilo=
g<br>
&gt; Code because I only wanted to know if I was able to build an Image<br>
&gt; properly.<br>
&gt; (I ran the default Testbench too, which worked without errors.)<br>
&gt;<br>
&gt; The command to build my image is:<br>
&gt;<br>
&gt; ./uhd_image_builder.py checkdevprocess digital_gain -t X310_RFNOC_HG -=
d<br>
&gt; X310 -I /home/lskt/rfnoc-blocks_lskt/rfnoc<br>
&gt;<br>
&gt; with &quot;rfnoc-blocks_lskt&quot; beeing my OOT Module and &quot;chec=
kdevprocess&quot; beeing<br>
&gt; my=C2=A0 custom block.<br>
&gt; (I also tried the paths home/lskt/rfnoc-blocks_lskt/rfnoc/;<br>
&gt; home/lskt/rfnoc-blocks_lskt/; home/lskt/rfnoc-blocks_lskt/rfnoc/fpga-s=
rc )<br>
&gt;<br>
&gt; Every single time I get the same error message:<br>
&gt; ERROR: [Synth 8-439] module &#39;noc_block_checkdevprocess&#39; not fo=
und<br>
&gt; [/home/lskt/rfnoc/src/uhd-fpga/usrp3/top/x300/rfnoc_ce_auto_inst_x310.=
v:22]<br>
&gt;<br>
&gt; and I don&#39;t know why.<br>
&gt;<br>
&gt; I also tried the the uhd_image_builder_gui.py which did not even pop u=
p<br>
&gt; until I uncommented the Line at row 149. I can see my OOT Block here a=
fter<br>
&gt; adding the Module in the gui, but it prints the same error message as =
the<br>
&gt; non-gui version.<br>
&gt;<br>
&gt; If you need further information to help please ask.<br>
&gt;<br>
&gt; Any help is appreciated.<br>
&gt;<br>
&gt; Felix<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D=
"noreferrer">USRP-users@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus=
.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000b8fdd8059b57003a--


--===============4500229946680495931==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4500229946680495931==--

