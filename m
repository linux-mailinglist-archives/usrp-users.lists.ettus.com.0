Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F4D47D365
	for <lists+usrp-users@lfdr.de>; Wed, 22 Dec 2021 15:11:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9E0C038420A
	for <lists+usrp-users@lfdr.de>; Wed, 22 Dec 2021 09:11:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="KvVqP0rI";
	dkim-atps=neutral
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id B3E58384843
	for <usrp-users@lists.ettus.com>; Wed, 22 Dec 2021 09:10:53 -0500 (EST)
Received: by mail-yb1-f175.google.com with SMTP id e136so7052475ybc.4
        for <usrp-users@lists.ettus.com>; Wed, 22 Dec 2021 06:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=h0m2fWIXLFpTbljU2FKZrHGyKtWM1kvQJimgeQyaDsE=;
        b=KvVqP0rIu6UUYm545VztTQee0aOAlH0Ii3iFpND28AIr3FFeQR1XuMm671mtHpezvy
         JwC9x3MGCm3DApb4UNOssn62uKnzD2Uz9CDz5ADuNE+/2wVAqgXxdY+lIhKVTII+AkLH
         nFBLm+iuflfrSbDP1256BONdd8glx/9h9ogKBjNSPO4AX0BsT+je0oJfFYSe0pc+XD6Y
         cdlakdVpf1VtzQ9ak9hU4uvIHMFILVCceYQbIllUw6tvAJAKhKYCMKAE7J9WI98nrhKH
         +kN8r249XN0iKBTc0eQXN8qqPOPc8KAflS0QXpHKnRCwADVMV2jdnSoDLFuiAFv+LPA/
         KsVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=h0m2fWIXLFpTbljU2FKZrHGyKtWM1kvQJimgeQyaDsE=;
        b=mZ4VaEUa5rmHfvKJGqlw2awToGiWHq9vT3/N1Mb9TVSu4nFqmIbW6Zqe2gPtzbKlJb
         k8fsuDEXn40BRyxiTBk0JAUPzk6Aexs3CjauQqKuuKzKSX5fFWP++JRRsDPlYHUynsv9
         P8NbuOjiNwMGFkB20dfjxsCA8LbJMqo46lPEiqzI4uEpGXToXu0HEbZyCY5W8wo5HHez
         B/e8/OPnPRsZEaZfo81FucujFM7C2dyz0Y767BU96DUHJ/YQDBDwagLum/dTXJAGmHue
         QCQf7sXDbN7x/AvY6Na/d3vbbjQAnlVcdw2Gg1j34PnbH2wjC3i6GN8fKw1YVmqOhMlb
         Jc5Q==
X-Gm-Message-State: AOAM533wvet5o2abmTC81mTXlL1hlw9xZhyCdiaaGqIgUwWKzVlo1zEC
	v56oPUmwftXd/DRcepUgFwrG7hJHm0ytPqWNXlewpBQ8c8iSMw==
X-Google-Smtp-Source: ABdhPJzzIySSyNsxiu1+W84yNk6Prwm87+fbSLJTptuB8kIhnqQEJ3m1dq1ggr9GKNS9MkvlLpzVf4iNEAi8otJRorE=
X-Received: by 2002:a5b:44b:: with SMTP id s11mr4588892ybp.701.1640182252763;
 Wed, 22 Dec 2021 06:10:52 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PtCRDeStFXOHV_-Q8upABKbwHSzVdwqfh-FdOvq7fwh-Q@mail.gmail.com>
In-Reply-To: <CAA=S3PtCRDeStFXOHV_-Q8upABKbwHSzVdwqfh-FdOvq7fwh-Q@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 22 Dec 2021 08:10:42 -0600
Message-ID: <CAB__hTSCEeV1Z2wniAXB7sMw5fVAO=cWkeVJ9_3MoJXNR-J=dw@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: G327N3OM5GKUAI6YUZM3YGIQPBEZGC36
X-Message-ID-Hash: G327N3OM5GKUAI6YUZM3YGIQPBEZGC36
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: uhd_image_builder.py uhd_image_builder_gui is not found on UHD version 4.0.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G327N3OM5GKUAI6YUZM3YGIQPBEZGC36/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2429769375369490516=="

--===============2429769375369490516==
Content-Type: multipart/alternative; boundary="0000000000008b441605d3bcb066"

--0000000000008b441605d3bcb066
Content-Type: text/plain; charset="UTF-8"

The app note you referenced is relevant for UHD 3.x.  Try AN-400 when using
UHD 4.x.

https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0


On Wed, Dec 22, 2021 at 2:37 AM sp h <stackprogramer@gmail.com> wrote:

> Hi, I started developing RFNOC block in USRP x300, I installed Gnuradio
> 3.8.1 and UHD 4.0.0
> I study below link about how we can create custom RFNOC blocks......
>
> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
>
> *In a section describing a tool...*
>
> The script uhd_image_builder.py is used to generate the NoC block
> instantiation file and build the FPGA image. Run the help menu by typing:
>
> But I can not find this script python in the UHD-src location... my
> question is how I can find them:
>
> It is told that they are in
> {USER_PREFIX}/src/uhd-fpga/usrp3/tools/scripts/
>
>
> uhd_image_builder.py   uhd_image_builder_gui
>
> but I can not find them...
>
> i see only these scripts in that path...
>
> git-hash.sh          viv_check_syntax.tcl     viv_ip_xci_editor.py
> ise_jtag_program.sh  viv_generate_bd.tcl      viv_sim_project.tcl
> launch_modelsim.sh   viv_generate_hls_ip.tcl  viv_strategies.tcl
> launch_vivado.py     viv_generate_ip.tcl      viv_synth.tcl
> launch_vivado.sh     viv_gen_ip_makefile.py   viv_utils.tcl
> launch_vlint.sh      viv_gen_part_id.py       xil_bitfile_parser.py
> setupenv_base.sh     viv_hardware_utils.tcl
>
>
> Thanks in advance
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008b441605d3bcb066
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">The app note you referenced is relevant f=
or UHD 3.x.=C2=A0 Try AN-400 when using UHD 4.x.<div><br></div><div><a href=
=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0">https://kb.=
ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0</a><br></div><div><br></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Wed, Dec 22, 2021 at 2:37 AM sp h &lt;<a href=3D"mailto:stackprogramer@=
gmail.com">stackprogramer@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi, I started developin=
g RFNOC block in USRP x300, I installed Gnuradio 3.8.1 and UHD 4.0.0<div>I =
study below link about how we can create custom RFNOC blocks......</div><di=
v><br></div><div><a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC=
_Development" target=3D"_blank">https://kb.ettus.com/Getting_Started_with_R=
FNoC_Development</a><br></div><div><br></div><div><b>In a section describin=
g=C2=A0a tool...</b></div><div><br></div><div><p style=3D"margin:0.5em 0px;=
line-height:inherit;color:rgb(0,0,0);font-family:&quot;Lucida Sans Unicode&=
quot;,&quot;Lucida Grande&quot;,sans-serif"><font size=3D"1">The script=C2=
=A0<code style=3D"font-family:monospace,Courier;background-color:rgb(249,24=
9,249);border:1px solid rgb(221,221,221);border-radius:2px;padding:1px 4px"=
>uhd_image_builder.py</code>=C2=A0is used to generate the NoC block instant=
iation file and build the FPGA image. Run the help menu by typing:</font></=
p><p style=3D"margin:0.5em 0px;line-height:inherit;color:rgb(0,0,0);font-fa=
mily:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif">=
But I can not find this script python in the UHD-src location... my questio=
n is how I can find them:</p><p style=3D"margin:0.5em 0px;line-height:inher=
it;color:rgb(0,0,0);font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucid=
a Grande&quot;,sans-serif">It is told that they are in=C2=A0<span style=3D"=
background-color:rgb(249,249,249);font-family:monospace,Courier;white-space=
:pre-wrap">{USER_PREFIX}/src/uhd-fpga/usrp3/tools/scripts/</span></p><p sty=
le=3D"margin:0.5em 0px;line-height:inherit;color:rgb(0,0,0);font-family:&qu=
ot;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif"><span st=
yle=3D"background-color:rgb(249,249,249);font-family:monospace,Courier;whit=
e-space:pre-wrap"><br></span></p><pre style=3D"white-space:pre-wrap;font-fa=
mily:monospace,Courier;color:rgb(0,0,0);background-color:rgb(249,249,249);b=
order:1px solid rgb(221,221,221);padding:1em;line-height:1.3em;font-size:14=
px">uhd_image_builder.py   uhd_image_builder_gui</pre><p style=3D"margin:0.=
5em 0px;line-height:inherit;color:rgb(0,0,0);font-family:&quot;Lucida Sans =
Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif"><span style=3D"backgrou=
nd-color:rgb(249,249,249);font-family:monospace,Courier;white-space:pre-wra=
p">but I can not find them...</span></p><p style=3D"margin:0.5em 0px;line-h=
eight:inherit;color:rgb(0,0,0);font-family:&quot;Lucida Sans Unicode&quot;,=
&quot;Lucida Grande&quot;,sans-serif"><span style=3D"background-color:rgb(2=
49,249,249);font-family:monospace,Courier;white-space:pre-wrap">i see only =
these scripts in that path...</span></p><p style=3D"margin:0.5em 0px;line-h=
eight:inherit;color:rgb(0,0,0);font-family:&quot;Lucida Sans Unicode&quot;,=
&quot;Lucida Grande&quot;,sans-serif">git-hash.sh =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0viv_check_syntax.tcl =C2=A0 =C2=A0 viv_ip_xci_editor.py<br>ise_jt=
ag_program.sh =C2=A0viv_generate_bd.tcl =C2=A0 =C2=A0 =C2=A0viv_sim_project=
.tcl<br>launch_modelsim.sh =C2=A0 viv_generate_hls_ip.tcl =C2=A0viv_strateg=
ies.tcl<br>launch_vivado.py =C2=A0 =C2=A0 viv_generate_ip.tcl =C2=A0 =C2=A0=
 =C2=A0viv_synth.tcl<br>launch_vivado.sh =C2=A0 =C2=A0 viv_gen_ip_makefile.=
py =C2=A0 viv_utils.tcl<br>launch_vlint.sh =C2=A0 =C2=A0 =C2=A0viv_gen_part=
_id.py =C2=A0 =C2=A0 =C2=A0 xil_bitfile_parser.py<br>setupenv_base.sh =C2=
=A0 =C2=A0 viv_hardware_utils.tcl<br></p><p style=3D"margin:0.5em 0px;line-=
height:inherit;color:rgb(0,0,0);font-family:&quot;Lucida Sans Unicode&quot;=
,&quot;Lucida Grande&quot;,sans-serif"><br></p><p style=3D"margin:0.5em 0px=
;line-height:inherit;color:rgb(0,0,0);font-family:&quot;Lucida Sans Unicode=
&quot;,&quot;Lucida Grande&quot;,sans-serif">Thanks in advance</p></div></d=
iv>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000008b441605d3bcb066--

--===============2429769375369490516==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2429769375369490516==--
