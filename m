Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEA42FD10F
	for <lists+usrp-users@lfdr.de>; Wed, 20 Jan 2021 14:18:14 +0100 (CET)
Received: from [::1] (port=37662 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2DNC-0002r6-O2; Wed, 20 Jan 2021 08:18:10 -0500
Received: from mail-ed1-f54.google.com ([209.85.208.54]:37193)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mamuki92@gmail.com>) id 1l2DN8-0002mc-Ho
 for usrp-users@lists.ettus.com; Wed, 20 Jan 2021 08:18:06 -0500
Received: by mail-ed1-f54.google.com with SMTP id g1so25042514edu.4
 for <usrp-users@lists.ettus.com>; Wed, 20 Jan 2021 05:17:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=ief7pMpVcKcS+tdj4PDhqxPrsjH98J7iMvuRPES9Qfw=;
 b=KJBRKkQ2dOMYzIDm2s5k6wucciDaEz9uR/vKHg9zkVf934BWFzShAEvF5fJ5o4n9bo
 Ruz+GVmVSU+tDHZtARNdxuJmqOjumedftsuuKPO3C6mj/kWefura5sULXRG3onnV88/f
 OCm2M6ZkUMdxCNTj3q++xL1NSI/c+s4EMy++jbpGL6pv+ln63wrFdg4t9MGECbRZqPoo
 abswc7nbFi/8YwVzXaF07NBQr/hKSiFWA8n+nFR/seT8zNT2T1lL8vzaD8fGQVHXKARX
 67SMEcCutC7pwi+QqSGYQ+HGzHfeWgfvEQI7B6cc2sm11Kt+ATCn6f3Mz+yZpTR1MqcE
 DOaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ief7pMpVcKcS+tdj4PDhqxPrsjH98J7iMvuRPES9Qfw=;
 b=lKPHCaGKqzi2iZPgppUEODZ9EyV/fBpF7+hItYjokMzVrqDyaLpP3H3A5OqBFMZ2aD
 +DzyXv0Cl7dYLH9HEfOkTiXTzA3h8zhwmblH1Gr4CG5GcOAViYr21vE4V7SJmJCowibs
 GzHmok/GUA4pfLAHX/bjR/jqC3d0StG/GK5g4+O50WrG+7wlJp7hUsc8IfB1xYALekyI
 55UIPtHtKy6P04eOg0jKc7t7gR6InQTv9EhiKElxGJtbf0nSnPia1hADNzL+7cgj0mRt
 Sq0f1bTtDcmdbAjEcIYrNUXdp2qZ1BSDaldMZ6tyOkYvYAgDf/5bNFmTH7x8f/Jb8Kh3
 iRBQ==
X-Gm-Message-State: AOAM53145wCwJc6uFeVYT+tB2QbSqgiwzjnJ9tfbKuGp0XA87tJ7HfiX
 06oztpLav3F9KBOhVscObQlki6wvAChRV0dSt4ay8kduCkMbZw==
X-Google-Smtp-Source: ABdhPJxjNYbM50Qi07CzWx5viII5P5jsfIHpG3z4Bpzr2sAonod2Oc+uLZDsLiN/8YixSsvg8yaJcnSUfBsh+uSTfb0=
X-Received: by 2002:aa7:cac2:: with SMTP id l2mr7319570edt.141.1611148645165; 
 Wed, 20 Jan 2021 05:17:25 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 20 Jan 2021 14:17:13 +0100
Message-ID: <CAG16vQU0uzpAoCGHB=0hwGj4qAeVSG=Hy64=nk5rhOt51ikDxg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Generate blocks with more than 1 input/output using
 rfnocmodtool
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
From: =?utf-8?q?Maria_Mu=C3=B1oz_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Content-Type: multipart/mixed; boundary="===============0486866692125519644=="
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

--===============0486866692125519644==
Content-Type: multipart/alternative; boundary="000000000000aceb9205b954c6d6"

--000000000000aceb9205b954c6d6
Content-Type: text/plain; charset="UTF-8"

Hi all,

Is it possible to automatically create an rfnoc_block schema with, for
example, 2 inputs and 2 outputs payload stream packets as in the addsub
blockdata using rfnocmodtool?
I can generate it using rfnoc_create_verilog.py through a block.yml file
following the steps in :
https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Generating_Your_Block_Using_the_ModTool
But I don't know the steps to do that using rfnocmodtool, it always
generates a 1 input, 1 output block with axis_pyload_ctxt interface even
though the block.yml generated in block folder has axis_data interface:








*schema: rfnoc_modtool_argsmodule_name: multinoutversion: 1.0rfnoc_version:
1.0chdr_width: 64noc_id: 0x4321makefile_srcs:
"/home/usr/rfnoc/src/gr-ettus/rfnoc-prueba/rfnoc/fpga/rfnoc_block_multinout/Makefile.srcs"*






































*clocks:  - name: rfnoc_chdr    freq: "[]"  - name: rfnoc_ctrl    freq:
"[]"  - name: ce    freq: "[]"control:  sw_iface: nocscript  fpga_iface:
ctrlport  interface_direction: slave  fifo_depth: 32  clk_domain: ce
ctrlport:    byte_mode: False    timed: False    has_status: Falsedata:
fpga_iface: axis_data  clk_domain: ce  inputs:    in:      item_width: 32
    nipc: 1      info_fifo_depth: 32      payload_fifo_depth: 32
format: int32      mdata_sig: ~  outputs:    out:      item_width: 32
nipc: 1      info_fifo_depth: 32      payload_fifo_depth: 32      format:
int32*
*      mdata_sig: ~*

Can I modify this file and somehow reload the files generated in the first
attempt or is there other way to do what I want?

Kind Regards,

Maria

--000000000000aceb9205b954c6d6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>Is it possible to au=
tomatically create an rfnoc_block schema with, for example, 2 inputs and 2 =
outputs payload stream packets as in the addsub blockdata using rfnocmodtoo=
l?</div><div>I can generate it using rfnoc_create_verilog.py through a bloc=
k.yml file following the steps in : <a href=3D"https://kb.ettus.com/Getting=
_Started_with_RFNoC_in_UHD_4.0#Generating_Your_Block_Using_the_ModTool">htt=
ps://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Generating_Your_Blo=
ck_Using_the_ModTool</a> <br></div><div>But I don&#39;t know the steps to d=
o that using rfnocmodtool, it always generates a 1 input, 1 output block wi=
th axis_pyload_ctxt interface even though the block.yml generated in block =
folder has axis_data interface:</div><div><br></div><div><div style=3D"marg=
in-left:40px"><i>schema: rfnoc_modtool_args<br>module_name: multinout<br>ve=
rsion: 1.0<br>rfnoc_version: 1.0<br>chdr_width: 64<br>noc_id: 0x4321<br>mak=
efile_srcs: &quot;/home/usr/rfnoc/src/gr-ettus/rfnoc-prueba/rfnoc/fpga/rfno=
c_block_multinout/Makefile.srcs&quot;<br></i></div><i><br></i><div style=3D=
"margin-left:40px"><i>clocks:<br>=C2=A0 - name: rfnoc_chdr<br>=C2=A0 =C2=A0=
 freq: &quot;[]&quot;<br>=C2=A0 - name: rfnoc_ctrl<br>=C2=A0 =C2=A0 freq: &=
quot;[]&quot;<br>=C2=A0 - name: ce<br>=C2=A0 =C2=A0 freq: &quot;[]&quot;<br=
><br>control:<br>=C2=A0 sw_iface: nocscript<br>=C2=A0 fpga_iface: ctrlport<=
br>=C2=A0 interface_direction: slave<br>=C2=A0 fifo_depth: 32<br>=C2=A0 clk=
_domain: ce<br>=C2=A0 ctrlport:<br>=C2=A0 =C2=A0 byte_mode: False<br>=C2=A0=
 =C2=A0 timed: False<br>=C2=A0 =C2=A0 has_status: False<br><br>data:<br>=C2=
=A0<b> fpga_iface: axis_data</b><br>=C2=A0 clk_domain: ce<br>=C2=A0 inputs:=
<br>=C2=A0 =C2=A0 in:<br>=C2=A0 =C2=A0 =C2=A0 item_width: 32<br>=C2=A0 =C2=
=A0 =C2=A0 nipc: 1<br>=C2=A0 =C2=A0 =C2=A0 info_fifo_depth: 32<br>=C2=A0 =
=C2=A0 =C2=A0 payload_fifo_depth: 32<br>=C2=A0 =C2=A0 =C2=A0 format: int32<=
br>=C2=A0 =C2=A0 =C2=A0 mdata_sig: ~<br><br>=C2=A0 outputs:<br>=C2=A0 =C2=
=A0 out:<br>=C2=A0 =C2=A0 =C2=A0 item_width: 32<br>=C2=A0 =C2=A0 =C2=A0 nip=
c: 1<br>=C2=A0 =C2=A0 =C2=A0 info_fifo_depth: 32<br>=C2=A0 =C2=A0 =C2=A0 pa=
yload_fifo_depth: 32<br>=C2=A0 =C2=A0 =C2=A0 format: int32</i></div></div><=
div style=3D"margin-left:40px"><i>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mdata_sig:=
 ~</i></div><div style=3D"margin-left:40px"><i><br></i></div><div>Can I mod=
ify this file and somehow reload the files generated in the first attempt o=
r is there other way to do what I want?</div><div><br></div><div>Kind Regar=
ds,</div><div><br></div><div>Maria<br></div><div><i></i></div></div>

--000000000000aceb9205b954c6d6--


--===============0486866692125519644==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0486866692125519644==--

