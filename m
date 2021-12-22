Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1567347CE5E
	for <lists+usrp-users@lfdr.de>; Wed, 22 Dec 2021 09:37:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F31F93847B1
	for <lists+usrp-users@lfdr.de>; Wed, 22 Dec 2021 03:37:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DtbmEPG8";
	dkim-atps=neutral
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 26CB13844AA
	for <usrp-users@lists.ettus.com>; Wed, 22 Dec 2021 03:36:39 -0500 (EST)
Received: by mail-yb1-f173.google.com with SMTP id v138so4435244ybb.8
        for <usrp-users@lists.ettus.com>; Wed, 22 Dec 2021 00:36:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=dR4u9/miHyNs3h//AWs20GjAAlSojkrTewiDq/XgC+0=;
        b=DtbmEPG89hpE7x2dkGC9CwgYLyY8zJfpQTTCxMQqlXhSncTlnzqUD2QLNhn9mQgneI
         oXzvrS39msZO/vo0wXDCVCupS/CKl6ZmErhT47cGPizyNhDnX1eJr5p+bxIZn82smST+
         jY7CNDh23oEFIaZb268975m3Zktrlw2rUhkz99D/JcX7p3hiAeDgVJwws/UM0AaXdAYM
         bVv6chYkVAnxH/SPponMAN70Sn1AVD3Sm5UDWSyHzm4xKXPe26RZWPiUXqw0uJzgZJPT
         ws2YlD0hEgmORyaJTB3FWxBNrxok4ZS2H43tgYAbMlboQvv8+313db3WzWzHvvi1gs7b
         6vYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=dR4u9/miHyNs3h//AWs20GjAAlSojkrTewiDq/XgC+0=;
        b=6bmoxv1njprAblBSapee2BCYh43BdZOyaHSspqXShA2cvi/H35TnR7knQz0E++V+Md
         TVhFiQ1CRqVtOOYhXOKFP2U7icVU6NAJ5Xgk40ojliLqsFQE48mpZwLt4DHeLu96Ceb2
         SksIwm9TVXa6v1gUcFInyTsOskiP0Iyya18EtxbxKfQ3eJ6D/JE3+yi7d7ikMxiSRK1H
         QooeKlHG7/WIUh9qa4qsk/qUciodHW2IxUbHyE143I+YelVQ96gOzDYrlsBsFtehcZxf
         94G3ClBKx1Oo+/k3s6sahnTkUgMpDwrsEnTXi1CuD06xm+djqj6awUILeXAofsh9kdXs
         Twnw==
X-Gm-Message-State: AOAM533lr0eemQ8e3j/lyHVHjBb827QSL6hbwTuZD5PLCLSDBs+TZe2m
	O84a/qFBdEqgS03R0XH4sBVVjzvh3jymrc+NJtVHFHRUzGJir4nQmMk=
X-Google-Smtp-Source: ABdhPJzmxb5vLmN/tAKdG6Xb1NhR8YNmgty6di+aSQb1oHSv25a53q9oPLOJnnLb0imJLtC5oLzgm6zCFFGWVre0pDQ=
X-Received: by 2002:a05:6902:102a:: with SMTP id x10mr2988074ybt.454.1640162198004;
 Wed, 22 Dec 2021 00:36:38 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Wed, 22 Dec 2021 12:06:26 +0330
Message-ID: <CAA=S3PtCRDeStFXOHV_-Q8upABKbwHSzVdwqfh-FdOvq7fwh-Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 33TCPQU4LYIUALHJYWGBMJJBICNPZHNG
X-Message-ID-Hash: 33TCPQU4LYIUALHJYWGBMJJBICNPZHNG
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] uhd_image_builder.py uhd_image_builder_gui is not found on UHD version 4.0.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/33TCPQU4LYIUALHJYWGBMJJBICNPZHNG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2096855730860928458=="

--===============2096855730860928458==
Content-Type: multipart/alternative; boundary="0000000000002fa8e705d3b80512"

--0000000000002fa8e705d3b80512
Content-Type: text/plain; charset="UTF-8"

Hi, I started developing RFNOC block in USRP x300, I installed Gnuradio
3.8.1 and UHD 4.0.0
I study below link about how we can create custom RFNOC blocks......

https://kb.ettus.com/Getting_Started_with_RFNoC_Development

*In a section describing a tool...*

The script uhd_image_builder.py is used to generate the NoC block
instantiation file and build the FPGA image. Run the help menu by typing:

But I can not find this script python in the UHD-src location... my
question is how I can find them:

It is told that they are in {USER_PREFIX}/src/uhd-fpga/usrp3/tools/scripts/


uhd_image_builder.py   uhd_image_builder_gui

but I can not find them...

i see only these scripts in that path...

git-hash.sh          viv_check_syntax.tcl     viv_ip_xci_editor.py
ise_jtag_program.sh  viv_generate_bd.tcl      viv_sim_project.tcl
launch_modelsim.sh   viv_generate_hls_ip.tcl  viv_strategies.tcl
launch_vivado.py     viv_generate_ip.tcl      viv_synth.tcl
launch_vivado.sh     viv_gen_ip_makefile.py   viv_utils.tcl
launch_vlint.sh      viv_gen_part_id.py       xil_bitfile_parser.py
setupenv_base.sh     viv_hardware_utils.tcl


Thanks in advance

--0000000000002fa8e705d3b80512
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, I started developing RFNOC block in USRP x300, I insta=
lled Gnuradio 3.8.1 and UHD 4.0.0<div>I study below link about how we can c=
reate custom RFNOC blocks......</div><div><br></div><div><a href=3D"https:/=
/kb.ettus.com/Getting_Started_with_RFNoC_Development" target=3D"_blank">htt=
ps://kb.ettus.com/Getting_Started_with_RFNoC_Development</a><br></div><div>=
<br></div><div><b>In a section describing=C2=A0a tool...</b></div><div><br>=
</div><div><p style=3D"margin:0.5em 0px;line-height:inherit;color:rgb(0,0,0=
);font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,san=
s-serif"><font size=3D"1">The script=C2=A0<code style=3D"font-family:monosp=
ace,Courier;background-color:rgb(249,249,249);border:1px solid rgb(221,221,=
221);border-radius:2px;padding:1px 4px">uhd_image_builder.py</code>=C2=A0is=
 used to generate the NoC block instantiation file and build the FPGA image=
. Run the help menu by typing:</font></p><p style=3D"margin:0.5em 0px;line-=
height:inherit;color:rgb(0,0,0);font-family:&quot;Lucida Sans Unicode&quot;=
,&quot;Lucida Grande&quot;,sans-serif">But I can not find this script pytho=
n in the UHD-src location... my question is how I can find them:</p><p styl=
e=3D"margin:0.5em 0px;line-height:inherit;color:rgb(0,0,0);font-family:&quo=
t;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif">It is tol=
d that they are in=C2=A0<span style=3D"background-color:rgb(249,249,249);fo=
nt-family:monospace,Courier;white-space:pre-wrap">{USER_PREFIX}/src/uhd-fpg=
a/usrp3/tools/scripts/</span></p><p style=3D"margin:0.5em 0px;line-height:i=
nherit;color:rgb(0,0,0);font-family:&quot;Lucida Sans Unicode&quot;,&quot;L=
ucida Grande&quot;,sans-serif"><span style=3D"background-color:rgb(249,249,=
249);font-family:monospace,Courier;white-space:pre-wrap"><br></span></p><pr=
e style=3D"white-space:pre-wrap;font-family:monospace,Courier;color:rgb(0,0=
,0);background-color:rgb(249,249,249);border:1px solid rgb(221,221,221);pad=
ding:1em;line-height:1.3em;font-size:14px">uhd_image_builder.py   uhd_image=
_builder_gui</pre><p style=3D"margin:0.5em 0px;line-height:inherit;color:rg=
b(0,0,0);font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grande&qu=
ot;,sans-serif"><span style=3D"background-color:rgb(249,249,249);font-famil=
y:monospace,Courier;white-space:pre-wrap">but I can not find them...</span>=
</p><p style=3D"margin:0.5em 0px;line-height:inherit;color:rgb(0,0,0);font-=
family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif=
"><span style=3D"background-color:rgb(249,249,249);font-family:monospace,Co=
urier;white-space:pre-wrap">i see only these scripts in that path...</span>=
</p><p style=3D"margin:0.5em 0px;line-height:inherit;color:rgb(0,0,0);font-=
family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif=
">git-hash.sh =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0viv_check_syntax.tcl =C2=A0=
 =C2=A0 viv_ip_xci_editor.py<br>ise_jtag_program.sh =C2=A0viv_generate_bd.t=
cl =C2=A0 =C2=A0 =C2=A0viv_sim_project.tcl<br>launch_modelsim.sh =C2=A0 viv=
_generate_hls_ip.tcl =C2=A0viv_strategies.tcl<br>launch_vivado.py =C2=A0 =
=C2=A0 viv_generate_ip.tcl =C2=A0 =C2=A0 =C2=A0viv_synth.tcl<br>launch_viva=
do.sh =C2=A0 =C2=A0 viv_gen_ip_makefile.py =C2=A0 viv_utils.tcl<br>launch_v=
lint.sh =C2=A0 =C2=A0 =C2=A0viv_gen_part_id.py =C2=A0 =C2=A0 =C2=A0 xil_bit=
file_parser.py<br>setupenv_base.sh =C2=A0 =C2=A0 viv_hardware_utils.tcl<br>=
</p><p style=3D"margin:0.5em 0px;line-height:inherit;color:rgb(0,0,0);font-=
family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif=
"><br></p><p style=3D"margin:0.5em 0px;line-height:inherit;color:rgb(0,0,0)=
;font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans=
-serif">Thanks in advance</p></div></div>

--0000000000002fa8e705d3b80512--

--===============2096855730860928458==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2096855730860928458==--
