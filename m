Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B583E2FE1C9
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jan 2021 06:37:10 +0100 (CET)
Received: from [::1] (port=44354 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2SeY-0003wm-Ku; Thu, 21 Jan 2021 00:37:06 -0500
Received: from mail-vk1-f170.google.com ([209.85.221.170]:45353)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1l2SeU-0003s9-VJ
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 00:37:02 -0500
Received: by mail-vk1-f170.google.com with SMTP id p128so243694vkf.12
 for <usrp-users@lists.ettus.com>; Wed, 20 Jan 2021 21:36:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fpzgp4LEdT17KTJ2sV5tgr8rmBgzcHEkb2Ml7tfdeB0=;
 b=tpnEeecHz8lzmySE/YKTPQTZNJMSYBDpMgNN04hmMyUynDe1sP9k+u9FnilQOI71HL
 +stjpfM/qbPMYFF9N5QfdUNtLdGGws0EDAiiq1l8X0XYwS/S5ppZg0+XeytqkxCTa3/H
 5bD9vdGKQ5xFJtkqVwoW3oqrHQ5jmXXZ5ywELNZmMmip52nqBJRWwvYmgD2tiwprp3GF
 nX+9boWMoUhG3yiEAoE8oluAgak+NxYvRDP5Hk8H6a95gLXiOU4RTwTRi8ZENEVxPdPq
 cw4B9T5jv31eTtvywly4fslmCFXSW4pOlzFxl4w42gFJXItPM6IQNozuWwur8Mu7SUtN
 AFCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fpzgp4LEdT17KTJ2sV5tgr8rmBgzcHEkb2Ml7tfdeB0=;
 b=YAz8b5zrDzW9dOmwqJfK6q+M9W11sHv3LfhwzgSgKQBeNl2C+4QZV9tMFGdI2A3SqK
 1tgPWZin38EQXcLbZH4MxSfkS69js1Gv7EuT7EhqrtAXP0SslU4Mdg/lcHcOSmToEcF9
 AOrI5NJiZ1OxmW9kHOGGEeIpzGPxSYzpW+Yca3phJLCx2Ea0I62AZe4NstkipQDkkOSu
 LtBOR+fz910Txk7qs8As0aTr43ZyhtLgzoYhgJqA3WagayasnTluQVClIe8Zy/M4WRB3
 oG2m6l/jgMDEx2DSnM+FS2rxZQpDQ0XNJ7ybtn0DQ+FVH+Oq65PCtEDW0i1rOyRynrqv
 Bazw==
X-Gm-Message-State: AOAM532TY4pHfWsx+qp+JJs/7BPylEGFd//QyGcKiGPlaDHJUEoLtS40
 GR+xUnt2jgtykkhSbJn8ygo7E3xXGOLBoRbWVT8Unhl8
X-Google-Smtp-Source: ABdhPJxHTh4ot5Jg9CQMQk2d47yD1LTAuoJMZjcBJaNOkrM75WRW7ve2xF7tQwj1yfi4YqL/57gh9jPJA41Yp65ww+Q=
X-Received: by 2002:a1f:3246:: with SMTP id y67mr9409308vky.9.1611207381749;
 Wed, 20 Jan 2021 21:36:21 -0800 (PST)
MIME-Version: 1.0
References: <CAG16vQU0uzpAoCGHB=0hwGj4qAeVSG=Hy64=nk5rhOt51ikDxg@mail.gmail.com>
In-Reply-To: <CAG16vQU0uzpAoCGHB=0hwGj4qAeVSG=Hy64=nk5rhOt51ikDxg@mail.gmail.com>
Date: Thu, 21 Jan 2021 00:35:46 -0500
Message-ID: <CAL7q81u=EYRkpXBQWv57SpdN0Hjm-MLX_rfBqJCTvycxXrmWfw@mail.gmail.com>
To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Generate blocks with more than 1 input/output
 using rfnocmodtool
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============3837986835402628090=="
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

--===============3837986835402628090==
Content-Type: multipart/alternative; boundary="000000000000a6250005b962732c"

--000000000000a6250005b962732c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

HI Maria,

Rfnocmodtool does not support multiple inputs / outputs. You'll need to
edit the generated yaml file and use it with the utility
rfnoc_create_verilog to generate the block and noc shell. See
https://kb.ettus.com/RFNoC_4_Migration_Guide#Generating_a_Custom_Noc_Shell.
To edit the yaml file, you can refer to the RFNoC specification (
https://files.ettus.com/app_notes/RFNoC_Specification.pdf) or look at an
existing RFNoC block's yaml file that supports multiple ports such as the
FIR filter block (uhd/host/include/uhd/rfnoc/blocks/fir_filter.yml).

Also, as you've noticed, the generated yaml file has the wrong interface,
"fpga_iface: axis_data" should be "fpga_iface: axis_pyld_ctxt". That is a
known issue that is in the pipeline to be fixed.

Jonathon

On Wed, Jan 20, 2021 at 8:18 AM Maria Mu=C3=B1oz via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> Is it possible to automatically create an rfnoc_block schema with, for
> example, 2 inputs and 2 outputs payload stream packets as in the addsub
> blockdata using rfnocmodtool?
> I can generate it using rfnoc_create_verilog.py through a block.yml file
> following the steps in :
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Generating_You=
r_Block_Using_the_ModTool
> But I don't know the steps to do that using rfnocmodtool, it always
> generates a 1 input, 1 output block with axis_pyload_ctxt interface even
> though the block.yml generated in block folder has axis_data interface:
>
>
>
>
>
>
>
>
> *schema: rfnoc_modtool_argsmodule_name: multinoutversion:
> 1.0rfnoc_version: 1.0chdr_width: 64noc_id: 0x4321makefile_srcs:
> "/home/usr/rfnoc/src/gr-ettus/rfnoc-prueba/rfnoc/fpga/rfnoc_block_multino=
ut/Makefile.srcs"*
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *clocks:  - name: rfnoc_chdr    freq: "[]"  - name: rfnoc_ctrl    freq:
> "[]"  - name: ce    freq: "[]"control:  sw_iface: nocscript  fpga_iface:
> ctrlport  interface_direction: slave  fifo_depth: 32  clk_domain: ce
> ctrlport:    byte_mode: False    timed: False    has_status: Falsedata:
> fpga_iface: axis_data  clk_domain: ce  inputs:    in:      item_width: 32
>     nipc: 1      info_fifo_depth: 32      payload_fifo_depth: 32
> format: int32      mdata_sig: ~  outputs:    out:      item_width: 32
> nipc: 1      info_fifo_depth: 32      payload_fifo_depth: 32      format:
> int32*
> *      mdata_sig: ~*
>
> Can I modify this file and somehow reload the files generated in the firs=
t
> attempt or is there other way to do what I want?
>
> Kind Regards,
>
> Maria
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a6250005b962732c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">HI Maria,<div><br></div><div>Rfnocmodtool=C2=A0does not su=
pport multiple inputs / outputs. You&#39;ll need to edit the generated yaml=
 file and use it with the utility rfnoc_create_verilog to generate the bloc=
k and noc shell. See=C2=A0<a href=3D"https://kb.ettus.com/RFNoC_4_Migration=
_Guide#Generating_a_Custom_Noc_Shell">https://kb.ettus.com/RFNoC_4_Migratio=
n_Guide#Generating_a_Custom_Noc_Shell</a>. To edit the yaml file, you can r=
efer to the RFNoC specification (<a href=3D"https://files.ettus.com/app_not=
es/RFNoC_Specification.pdf">https://files.ettus.com/app_notes/RFNoC_Specifi=
cation.pdf</a>) or look at an existing RFNoC block&#39;s yaml file that sup=
ports multiple ports such as the FIR filter block (uhd/host/include/uhd/rfn=
oc/blocks/fir_filter.yml).</div><div><br></div><div>Also, as you&#39;ve not=
iced, the generated yaml file has the wrong interface, &quot;fpga_iface: ax=
is_data&quot; should be &quot;fpga_iface:=C2=A0axis_pyld_ctxt&quot;. That i=
s a known issue that is in the pipeline to be fixed.</div><div><br></div><d=
iv>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Wed, Jan 20, 2021 at 8:18 AM Maria Mu=C3=B1oz via USRP-=
users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.et=
tus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>Is it possibl=
e to automatically create an rfnoc_block schema with, for example, 2 inputs=
 and 2 outputs payload stream packets as in the addsub blockdata using rfno=
cmodtool?</div><div>I can generate it using rfnoc_create_verilog.py through=
 a block.yml file following the steps in : <a href=3D"https://kb.ettus.com/=
Getting_Started_with_RFNoC_in_UHD_4.0#Generating_Your_Block_Using_the_ModTo=
ol" target=3D"_blank">https://kb.ettus.com/Getting_Started_with_RFNoC_in_UH=
D_4.0#Generating_Your_Block_Using_the_ModTool</a> <br></div><div>But I don&=
#39;t know the steps to do that using rfnocmodtool, it always generates a 1=
 input, 1 output block with axis_pyload_ctxt interface even though the bloc=
k.yml generated in block folder has axis_data interface:</div><div><br></di=
v><div><div style=3D"margin-left:40px"><i>schema: rfnoc_modtool_args<br>mod=
ule_name: multinout<br>version: 1.0<br>rfnoc_version: 1.0<br>chdr_width: 64=
<br>noc_id: 0x4321<br>makefile_srcs: &quot;/home/usr/rfnoc/src/gr-ettus/rfn=
oc-prueba/rfnoc/fpga/rfnoc_block_multinout/Makefile.srcs&quot;<br></i></div=
><i><br></i><div style=3D"margin-left:40px"><i>clocks:<br>=C2=A0 - name: rf=
noc_chdr<br>=C2=A0 =C2=A0 freq: &quot;[]&quot;<br>=C2=A0 - name: rfnoc_ctrl=
<br>=C2=A0 =C2=A0 freq: &quot;[]&quot;<br>=C2=A0 - name: ce<br>=C2=A0 =C2=
=A0 freq: &quot;[]&quot;<br><br>control:<br>=C2=A0 sw_iface: nocscript<br>=
=C2=A0 fpga_iface: ctrlport<br>=C2=A0 interface_direction: slave<br>=C2=A0 =
fifo_depth: 32<br>=C2=A0 clk_domain: ce<br>=C2=A0 ctrlport:<br>=C2=A0 =C2=
=A0 byte_mode: False<br>=C2=A0 =C2=A0 timed: False<br>=C2=A0 =C2=A0 has_sta=
tus: False<br><br>data:<br>=C2=A0<b> fpga_iface: axis_data</b><br>=C2=A0 cl=
k_domain: ce<br>=C2=A0 inputs:<br>=C2=A0 =C2=A0 in:<br>=C2=A0 =C2=A0 =C2=A0=
 item_width: 32<br>=C2=A0 =C2=A0 =C2=A0 nipc: 1<br>=C2=A0 =C2=A0 =C2=A0 inf=
o_fifo_depth: 32<br>=C2=A0 =C2=A0 =C2=A0 payload_fifo_depth: 32<br>=C2=A0 =
=C2=A0 =C2=A0 format: int32<br>=C2=A0 =C2=A0 =C2=A0 mdata_sig: ~<br><br>=C2=
=A0 outputs:<br>=C2=A0 =C2=A0 out:<br>=C2=A0 =C2=A0 =C2=A0 item_width: 32<b=
r>=C2=A0 =C2=A0 =C2=A0 nipc: 1<br>=C2=A0 =C2=A0 =C2=A0 info_fifo_depth: 32<=
br>=C2=A0 =C2=A0 =C2=A0 payload_fifo_depth: 32<br>=C2=A0 =C2=A0 =C2=A0 form=
at: int32</i></div></div><div style=3D"margin-left:40px"><i>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 mdata_sig: ~</i></div><div style=3D"margin-left:40px"><i><b=
r></i></div><div>Can I modify this file and somehow reload the files genera=
ted in the first attempt or is there other way to do what I want?</div><div=
><br></div><div>Kind Regards,</div><div><br></div><div>Maria<br></div><div>=
<i></i></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a6250005b962732c--


--===============3837986835402628090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3837986835402628090==--

