Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C28B62FEB2D
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jan 2021 14:10:34 +0100 (CET)
Received: from [::1] (port=47546 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2ZjL-00034b-4Z; Thu, 21 Jan 2021 08:10:31 -0500
Received: from mail-ej1-f52.google.com ([209.85.218.52]:37367)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mamuki92@gmail.com>) id 1l2ZjG-00030T-Um
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 08:10:27 -0500
Received: by mail-ej1-f52.google.com with SMTP id kg20so2025172ejc.4
 for <usrp-users@lists.ettus.com>; Thu, 21 Jan 2021 05:10:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BE6lz4eVYu+16DmJaI9EfZ8tKpXP+u1SD1cUq9GSS1U=;
 b=QgXcoyx2XuiIRF2V9cFMwx4zRjbF+27BmczyWRMXl7PKYVk1/eaqER7Yjb1QI+LNZk
 BfuTlDXlR6HJd3/gOrCzjW4JF12gd+InDtdP938c6UVELxZGFjxma0KoQtbdjbLQzdSQ
 Tp6wAZQk4NnP6w8lLNOvl/3oWNaJxKGnoQQw6JwB0o41WfQF0qu7ydhNO+bk8gRMNaib
 66Clgu3kgtqQ0duLpcWqqMuSNeiX2zfurMQu0H8pyeUNbUqkUTYtoe+/hFHUJxRRXwsU
 UJ7i4PNnfKFbGY6cIqQp1LKZV2FbPW1jW0Jkd6nX++FB18hAFXwgjgFhi09wbOlNraue
 BaEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BE6lz4eVYu+16DmJaI9EfZ8tKpXP+u1SD1cUq9GSS1U=;
 b=MKBnx5cy5s8sLX1EjbO9uPesWd19zyvrFuW9uEPe6Zlws7QA0RzguloVou7HVnhJlM
 X/4jretZLIo4lATHE0LhemheppI6SFy3pFSmoE29wU9f4lXMs/14kgGGcCTKdfNwTVew
 2yB5RcXfPb8mzfIykWbuCc9rCEelwFbUQmMqVLmfsUqqIKTgqPKmuaWX7EU4XCVQyRfG
 pzjem4myGz0jWr4gyvVXjD4TTBlZRjIyHjfcxg/GY9GNmoQJihzjogLjJ5wFyzS7MbYN
 oxQCRnXE/jtf343/XF9UY8GQFyUkFzCXMruFIsSyZB4qx23ZMxvUAHvUIK/te0O/Y9nU
 II3g==
X-Gm-Message-State: AOAM530fjzBPOJU/oe9hh0U8f5K8pahRjP2kxdgO9M1pGi80g2eqB7XL
 WorGBspNlwd3E5QZfunN5oxy27hJ4Z9oH9sZ6Ic=
X-Google-Smtp-Source: ABdhPJzeujPb6ptQ+WUqeHDvVUPL2lpEd9dottMnATYygQGOEowsIIIqq0zqeKDnDXLAzHiZOQkG1mryF84hKzGJdCI=
X-Received: by 2002:a17:907:20b9:: with SMTP id
 pw25mr8920764ejb.262.1611234585835; 
 Thu, 21 Jan 2021 05:09:45 -0800 (PST)
MIME-Version: 1.0
References: <CAG16vQU0uzpAoCGHB=0hwGj4qAeVSG=Hy64=nk5rhOt51ikDxg@mail.gmail.com>
 <CAL7q81u=EYRkpXBQWv57SpdN0Hjm-MLX_rfBqJCTvycxXrmWfw@mail.gmail.com>
In-Reply-To: <CAL7q81u=EYRkpXBQWv57SpdN0Hjm-MLX_rfBqJCTvycxXrmWfw@mail.gmail.com>
Date: Thu, 21 Jan 2021 14:09:33 +0100
Message-ID: <CAG16vQVR2FuskkV=OrkSOZ5yMx1oig_GPaUmYXOV=YiqL1uBTQ@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
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
From: =?utf-8?q?Maria_Mu=C3=B1oz_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Content-Type: multipart/mixed; boundary="===============8914414760240440248=="
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

--===============8914414760240440248==
Content-Type: multipart/alternative; boundary="000000000000237d4f05b968c9c8"

--000000000000237d4f05b968c9c8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jonathon,

Thanks for your reply.
Ok, I make "rfnocmodtool newmod test" and "rfnocmodtool add multinout" to
create module and block folders and then modify the block.yml file and make
"python3 ~/rfnoc/src/uhd/host/utils/rfnoc_blocktool/rfnoc_create_verilog.py
-c ~/rfnoc/src/gr-ettus/rfnoc-test/rfnoc/blocks/multinout.yml -d
~/rfnoc/src/gr-ettus/rfnoc-test/rfnoc/fpga/rfnoc_block_multinout" and that
seems to work.

Kind Regards,

Maria.

El jue, 21 ene 2021 a las 6:36, Jonathon Pendlum (<
jonathon.pendlum@ettus.com>) escribi=C3=B3:

> HI Maria,
>
> Rfnocmodtool does not support multiple inputs / outputs. You'll need to
> edit the generated yaml file and use it with the utility
> rfnoc_create_verilog to generate the block and noc shell. See
> https://kb.ettus.com/RFNoC_4_Migration_Guide#Generating_a_Custom_Noc_Shel=
l.
> To edit the yaml file, you can refer to the RFNoC specification (
> https://files.ettus.com/app_notes/RFNoC_Specification.pdf) or look at an
> existing RFNoC block's yaml file that supports multiple ports such as the
> FIR filter block (uhd/host/include/uhd/rfnoc/blocks/fir_filter.yml).
>
> Also, as you've noticed, the generated yaml file has the wrong interface,
> "fpga_iface: axis_data" should be "fpga_iface: axis_pyld_ctxt". That is a
> known issue that is in the pipeline to be fixed.
>
> Jonathon
>
> On Wed, Jan 20, 2021 at 8:18 AM Maria Mu=C3=B1oz via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi all,
>>
>> Is it possible to automatically create an rfnoc_block schema with, for
>> example, 2 inputs and 2 outputs payload stream packets as in the addsub
>> blockdata using rfnocmodtool?
>> I can generate it using rfnoc_create_verilog.py through a block.yml file
>> following the steps in :
>> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Generating_Yo=
ur_Block_Using_the_ModTool
>> But I don't know the steps to do that using rfnocmodtool, it always
>> generates a 1 input, 1 output block with axis_pyload_ctxt interface even
>> though the block.yml generated in block folder has axis_data interface:
>>
>>
>>
>>
>>
>>
>>
>>
>> *schema: rfnoc_modtool_argsmodule_name: multinoutversion:
>> 1.0rfnoc_version: 1.0chdr_width: 64noc_id: 0x4321makefile_srcs:
>> "/home/usr/rfnoc/src/gr-ettus/rfnoc-prueba/rfnoc/fpga/rfnoc_block_multin=
out/Makefile.srcs"*
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> *clocks:  - name: rfnoc_chdr    freq: "[]"  - name: rfnoc_ctrl    freq:
>> "[]"  - name: ce    freq: "[]"control:  sw_iface: nocscript  fpga_iface:
>> ctrlport  interface_direction: slave  fifo_depth: 32  clk_domain: ce
>> ctrlport:    byte_mode: False    timed: False    has_status: Falsedata:
>> fpga_iface: axis_data  clk_domain: ce  inputs:    in:      item_width: 3=
2
>>     nipc: 1      info_fifo_depth: 32      payload_fifo_depth: 32
>> format: int32      mdata_sig: ~  outputs:    out:      item_width: 32
>> nipc: 1      info_fifo_depth: 32      payload_fifo_depth: 32      format=
:
>> int32*
>> *      mdata_sig: ~*
>>
>> Can I modify this file and somehow reload the files generated in the
>> first attempt or is there other way to do what I want?
>>
>> Kind Regards,
>>
>> Maria
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000237d4f05b968c9c8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Jonathon,</div><div><br></div><div>Thanks for your=
 reply.</div><div>Ok, I make &quot;rfnocmodtool newmod test&quot; and &quot=
;rfnocmodtool add multinout&quot; to create module and block folders and th=
en modify the block.yml file and make &quot;python3 ~/rfnoc/src/uhd/host/ut=
ils/rfnoc_blocktool/rfnoc_create_verilog.py -c ~/rfnoc/src/gr-ettus/rfnoc-t=
est/rfnoc/blocks/multinout.yml -d ~/rfnoc/src/gr-ettus/rfnoc-test/rfnoc/fpg=
a/rfnoc_block_multinout&quot; and that seems to work.</div><div><br></div><=
div>Kind Regards,</div><div><br></div><div>Maria.<br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El jue, 21 ene 2=
021 a las 6:36, Jonathon Pendlum (&lt;<a href=3D"mailto:jonathon.pendlum@et=
tus.com">jonathon.pendlum@ettus.com</a>&gt;) escribi=C3=B3:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">HI Maria,<div>=
<br></div><div>Rfnocmodtool=C2=A0does not support multiple inputs / outputs=
. You&#39;ll need to edit the generated yaml file and use it with the utili=
ty rfnoc_create_verilog to generate the block and noc shell. See=C2=A0<a hr=
ef=3D"https://kb.ettus.com/RFNoC_4_Migration_Guide#Generating_a_Custom_Noc_=
Shell" target=3D"_blank">https://kb.ettus.com/RFNoC_4_Migration_Guide#Gener=
ating_a_Custom_Noc_Shell</a>. To edit the yaml file, you can refer to the R=
FNoC specification (<a href=3D"https://files.ettus.com/app_notes/RFNoC_Spec=
ification.pdf" target=3D"_blank">https://files.ettus.com/app_notes/RFNoC_Sp=
ecification.pdf</a>) or look at an existing RFNoC block&#39;s yaml file tha=
t supports multiple ports such as the FIR filter block (uhd/host/include/uh=
d/rfnoc/blocks/fir_filter.yml).</div><div><br></div><div>Also, as you&#39;v=
e noticed, the generated yaml file has the wrong interface, &quot;fpga_ifac=
e: axis_data&quot; should be &quot;fpga_iface:=C2=A0axis_pyld_ctxt&quot;. T=
hat is a known issue that is in the pipeline to be fixed.</div><div><br></d=
iv><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Wed, Jan 20, 2021 at 8:18 AM Maria Mu=C3=B1oz via =
USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi all,</div><div><br><=
/div><div>Is it possible to automatically create an rfnoc_block schema with=
, for example, 2 inputs and 2 outputs payload stream packets as in the adds=
ub blockdata using rfnocmodtool?</div><div>I can generate it using rfnoc_cr=
eate_verilog.py through a block.yml file following the steps in : <a href=
=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Generating_Y=
our_Block_Using_the_ModTool" target=3D"_blank">https://kb.ettus.com/Getting=
_Started_with_RFNoC_in_UHD_4.0#Generating_Your_Block_Using_the_ModTool</a> =
<br></div><div>But I don&#39;t know the steps to do that using rfnocmodtool=
, it always generates a 1 input, 1 output block with axis_pyload_ctxt inter=
face even though the block.yml generated in block folder has axis_data inte=
rface:</div><div><br></div><div><div style=3D"margin-left:40px"><i>schema: =
rfnoc_modtool_args<br>module_name: multinout<br>version: 1.0<br>rfnoc_versi=
on: 1.0<br>chdr_width: 64<br>noc_id: 0x4321<br>makefile_srcs: &quot;/home/u=
sr/rfnoc/src/gr-ettus/rfnoc-prueba/rfnoc/fpga/rfnoc_block_multinout/Makefil=
e.srcs&quot;<br></i></div><i><br></i><div style=3D"margin-left:40px"><i>clo=
cks:<br>=C2=A0 - name: rfnoc_chdr<br>=C2=A0 =C2=A0 freq: &quot;[]&quot;<br>=
=C2=A0 - name: rfnoc_ctrl<br>=C2=A0 =C2=A0 freq: &quot;[]&quot;<br>=C2=A0 -=
 name: ce<br>=C2=A0 =C2=A0 freq: &quot;[]&quot;<br><br>control:<br>=C2=A0 s=
w_iface: nocscript<br>=C2=A0 fpga_iface: ctrlport<br>=C2=A0 interface_direc=
tion: slave<br>=C2=A0 fifo_depth: 32<br>=C2=A0 clk_domain: ce<br>=C2=A0 ctr=
lport:<br>=C2=A0 =C2=A0 byte_mode: False<br>=C2=A0 =C2=A0 timed: False<br>=
=C2=A0 =C2=A0 has_status: False<br><br>data:<br>=C2=A0<b> fpga_iface: axis_=
data</b><br>=C2=A0 clk_domain: ce<br>=C2=A0 inputs:<br>=C2=A0 =C2=A0 in:<br=
>=C2=A0 =C2=A0 =C2=A0 item_width: 32<br>=C2=A0 =C2=A0 =C2=A0 nipc: 1<br>=C2=
=A0 =C2=A0 =C2=A0 info_fifo_depth: 32<br>=C2=A0 =C2=A0 =C2=A0 payload_fifo_=
depth: 32<br>=C2=A0 =C2=A0 =C2=A0 format: int32<br>=C2=A0 =C2=A0 =C2=A0 mda=
ta_sig: ~<br><br>=C2=A0 outputs:<br>=C2=A0 =C2=A0 out:<br>=C2=A0 =C2=A0 =C2=
=A0 item_width: 32<br>=C2=A0 =C2=A0 =C2=A0 nipc: 1<br>=C2=A0 =C2=A0 =C2=A0 =
info_fifo_depth: 32<br>=C2=A0 =C2=A0 =C2=A0 payload_fifo_depth: 32<br>=C2=
=A0 =C2=A0 =C2=A0 format: int32</i></div></div><div style=3D"margin-left:40=
px"><i>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mdata_sig: ~</i></div><div style=3D"m=
argin-left:40px"><i><br></i></div><div>Can I modify this file and somehow r=
eload the files generated in the first attempt or is there other way to do =
what I want?</div><div><br></div><div>Kind Regards,</div><div><br></div><di=
v>Maria<br></div><div><i></i></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000237d4f05b968c9c8--


--===============8914414760240440248==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8914414760240440248==--

