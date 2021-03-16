Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CB033E1D0
	for <lists+usrp-users@lfdr.de>; Wed, 17 Mar 2021 00:01:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7490D383BF4
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 19:01:28 -0400 (EDT)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 6C2843836AB
	for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 19:00:35 -0400 (EDT)
Received: by mail-oi1-f175.google.com with SMTP id w125so11295399oib.13
        for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 16:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0sPaeSsswCU8ltjjwYlNij2RSNSZ7rI9gE7oyfd/t7Q=;
        b=xE8cga7YoZUa1ZCbzZaheSjZZViTmt8F+l29eAXH8s+HpUJXS1fWXxdlHesLryaAO1
         5TNODLXTyBlT+oQ9SmE0dZ6F9eGWIGgL61gTDEzFGEhwm+YPE560WisUPyQKJA33QzfQ
         e/gXrgP6Nnbe/iZ+SMUBm3yJsql/GUxcoO+AXnDgsOEeutjQEYbPxuh/CeX65mx4hxJ9
         nxfUa281mNkwbjTI/+y+rrvw+J3TAJTaxWmvaf33y+Ko9ZFl4VV0ZjTJZ290y7Y4/Reg
         TofoSWc6P96B6jTFHY9juKSk8Q0xNKeIsjxM9fctKPFZqQDzHiEd/Ep2hMzIWOY6+kSK
         HeyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0sPaeSsswCU8ltjjwYlNij2RSNSZ7rI9gE7oyfd/t7Q=;
        b=IQppNXcemq1uRGQSMkkByeokLN18g1j4HYY+OWXdHaQxqjGRnEW1OykBApzFjW/Pjw
         NZLLSj1dMnRi1kl28ItPdinEMdFoxQn49kByHSxMvrfcr8ssQMxGzUFs3FLLPY2v4Hna
         8tMuIrY1Llthh3rY+0CxllmaepLdl+sPHFw0RN4vmaoVd+ODxUAN2GIbxlLjdm/5D93B
         PNXw5tVHHm1J0fBzCWiDmWw72mWoMFRORnl6pdH0BZNSGO4i4LIme6x7NDOA6v/UgoZD
         M8CCPMnuZtPEYtD+fhMZwW1kVeFQ8snwO7fMq2WFkceaSk3spS2UP3c1Hn1Rwv9tksO1
         R8HQ==
X-Gm-Message-State: AOAM533/vdldRwf5CuAs1eI7/WkbmHNHI/XPMrl2AFpOPWaOulabjWjz
	eZZli1bfEoj90CK4Tf6pMQAG7HIrzg6mH3/k1S+ImoDS
X-Google-Smtp-Source: ABdhPJw8348rc6fAbuQvKzwsxi9Ei4ZfxYRgDZjSVjU9g5xRtixRd+HEgtG3wVjttj/boxRY6CMYqgiyGH9swswv+q4=
X-Received: by 2002:aca:bc89:: with SMTP id m131mr689810oif.62.1615935634767;
 Tue, 16 Mar 2021 16:00:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAFBYX1VosRU86TF-8fmLRkJmHEPC2M39-myO9KteXE=uDMQrsw@mail.gmail.com>
 <CAL7q81u8n=JxLXGAdxwa4LfwBpRBMtWxJXunmDJoVXQv+E1KXg@mail.gmail.com>
 <CAFBYX1UfeAvZ2gQCHGu+x_ZLQGE=wB_x=NQsQO4LsKrReRFOrA@mail.gmail.com>
 <CAL7q81taBAES+tYkM1++195gsdX8QDf_nRHKdYaaWd79B0PbSA@mail.gmail.com> <CAFBYX1XEUv_QpCHYmO-1BGs94eUE8FLTNa4ePcyh0A2dCNZjUw@mail.gmail.com>
In-Reply-To: <CAFBYX1XEUv_QpCHYmO-1BGs94eUE8FLTNa4ePcyh0A2dCNZjUw@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 16 Mar 2021 18:00:24 -0500
Message-ID: <CAFche=jgjwE=VRADN+ZY9ie9BV5g-gWeOi-6e9nHX9TgqhMVCw@mail.gmail.com>
To: Julian Casallas <jcasallas2019@gmail.com>
Message-ID-Hash: ZM7OEMPJBG7MD4M2CABKJXAQHBFKZZ7N
X-Message-ID-Hash: ZM7OEMPJBG7MD4M2CABKJXAQHBFKZZ7N
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using rfnoc_create_verilog.py creates verilog files different from rfsocmodtool.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZM7OEMPJBG7MD4M2CABKJXAQHBFKZZ7N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5798279732523231566=="

--===============5798279732523231566==
Content-Type: multipart/alternative; boundary="0000000000007d965f05bdaf55ef"

--0000000000007d965f05bdaf55ef
Content-Type: text/plain; charset="UTF-8"

You have to specify  context_fifo_depthwhen using axis_pyld_ctxt. See, for
example, the addsub block.


On Tue, Mar 16, 2021 at 11:56 AM Julian Casallas <jcasallas2019@gmail.com>
wrote:

> Jonathon,
>
> Based on the specification I tried the following options using the same
> gain.yml created according to the RFNoC 4 video. The python tool used is
> *rfnoc_create_verilog.py.*
>
> 1. axis_data. Results *ok* but with all the AXI signals.
> 2. axis_chdr. Results *ok* but with the chdr signals.
> 3.  axis_pyld_ctxt. unfortunately this is the error I am getting:
>
>   File "rfnoc_create_verilog.py", line 104, in run
>     block = tpl.render(**{"config": self.config,
>   File "/usr/lib/python3/dist-packages/mako/template.py", line 476, in
> render
>     return runtime._render(self, self.callable_, args, data)
>   File "/usr/lib/python3/dist-packages/mako/runtime.py", line 878, in
> _render
>     _render_context(
>   File "/usr/lib/python3/dist-packages/mako/runtime.py", line 920, in
> _render_context
>     _exec_template(inherit, lclcontext, args=args, kwargs=kwargs)
>   File "/usr/lib/python3/dist-packages/mako/runtime.py", line 947, in
> _exec_template
>     callable_(context, *args, **kwargs)
>   File
> "/home/wisp/uhd/host/utils/rfnoc_blocktool/templates/noc_shell_template.v.mako",
> line 198, in render_body
>     <%include file="/modules/axis_pyld_ctxt_modules_template.mako"/>\
>   File "/usr/lib/python3/dist-packages/mako/runtime.py", line 795, in
> _include_file
>     callable_(ctx, **kwargs)
>   File
> "/home/wisp/uhd/host/utils/rfnoc_blocktool/templates/modules/axis_pyld_ctxt_modules_template.mako",
> line 56, in render_body
>     .CONTEXT_FIFO_SIZE   ($clog2(${port_info['context_fifo_depth']})),
> KeyError: 'context_fifo_depth'
>
> This is the *demo.yml* file which is the same *gain.yml* but with
> different name and highlighted is the key that I used for the data
> interface.
>
> 1
>   2 schema: rfnoc_modtool_args
>   3 module_name: demo
>   4 version: 1.0
>   5 rfnoc_version: 1.0
>   6 chdr_width: 64
>   7 noc_id: 0x0000DE30
>   8 makefile_srcs:
> "/home/wisp/rfnoc_ws/rfnoc-test/rfnoc/fpga/rfnoc_block_demo/Makefile.srcs"
>   9
>  10 clocks:
>  11   - name: rfnoc_chdr
>  12     freq: "[]"
>  13   - name: rfnoc_ctrl
>  14     freq: "[]"
>  15   - name: ce
>  16     freq: "[]"
>  17
>  18 control:
>  19   sw_iface: nocscript
>  20   fpga_iface: ctrlport
>  21   interface_direction: slave
>  22   fifo_depth: 32
>  23   clk_domain: ce
>  24   ctrlport:
>  25     byte_mode: False
>  26     timed: False
>  27     has_status: False
>  28
>  29 data:
>  30 *  fpga_iface: axis_pyld_ctxt*
>  31   clk_domain: ce
>  32   inputs:
>  33     in:
>  34       item_width: 32
>  35       nipc: 1
>  36       info_fifo_depth: 32
>  37       payload_fifo_depth: 32
>  38       format: int32
>  39       mdata_sig: ~
>  40   outputs:
>  41     out:
>  42       item_width: 32
>  43       nipc: 1
>  44       info_fifo_depth: 32
>  45       payload_fifo_depth: 32
>  46       format: int32
>  47       mdata_sig: ~
>
>
> Thanks
>
> On Tue, Mar 16, 2021 at 12:24 PM Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> Hi Julian,
>>
>> Generally, ctrlport and axis_pyld_ctrl are the correct choices. One
>> exception is when writing a block that changes sampling rate. You may want
>> to use axis_chdr so you can easily interface with the axi_rate_change
>> module. The DDC / DUC are examples of that use case.
>>
>> Jonathon
>>
>> On Tue, Mar 16, 2021 at 11:52 AM Julian Casallas <jcasallas2019@gmail.com>
>> wrote:
>>
>>> Dear Jonathon,
>>>
>>> Thanks for your prompt reply, I checked the specification but before
>>> your reply, I was looking into the *rfnoc_create_verilog.py  script *and
>>> the block *demo* yaml file. I found the key *fpga_iface, *for control
>>> and data, has 2 options:
>>>
>>> 1.ctrlport or axis_ctrl
>>> 2. axis_chdr or axis_pyld_ctxt
>>>
>>> The specification mentioned them too. However, the RFNoC 4 video talks
>>> about payload/context interface so could you please advise which should we
>>> use to be consistent?
>>>
>>> Thanks
>>> J
>>>
>>> On Tue, Mar 16, 2021 at 11:13 AM Jonathon Pendlum <
>>> jonathon.pendlum@ettus.com> wrote:
>>>
>>>> Hello Julian,
>>>>
>>>> For a multiple input / output port block, you will need to use
>>>> rfnoc_create_verilog with your own block definition yaml file. The RFNoC
>>>> specification (
>>>> https://files.ettus.com/app_notes/RFNoC_Specification.pdf) has
>>>> information on the yaml file format in section 4.2.2. You can also look at
>>>> the existing blocks in the UHD source tree for inspiration:
>>>> https://github.com/EttusResearch/uhd/tree/master/host/include/uhd/rfnoc/blocks.
>>>> For example, take a look at addsub.yml for a block with two fixed input /
>>>> output ports and fir_filter.yml for a block where the number of ports is
>>>> based on a parameter called NUM_PORTS.
>>>>
>>>> Jonathon
>>>>
>>>> On Tue, Mar 16, 2021, 10:15 Julian Casallas <jcasallas2019@gmail.com>
>>>> wrote:
>>>>
>>>>> Hello,
>>>>>
>>>>> I went through  the  Getting Started with RFNoC UHD 4 guide and I
>>>>> followed the RfNoC 4 WorkShop - GRCon 2020 to design a RFNoC block, this is
>>>>> what I did:
>>>>>
>>>>> 1. Created the gain block and it works fine following the RFNoC 4
>>>>> video. I checked the HDL files, and I could see the interfaces payload and
>>>>> context were created between NoC Shell and the User Logic as expected.
>>>>>
>>>>> 2. Then I went ahead and created my own block, *not* using the
>>>>> *rfnocmodtool *but in this case using the *rfnoc_create_verilog.py *tool
>>>>> following  the UHD 4 guide based on the same gain.yml file for testing
>>>>> purposes, however, the verilog files created in this case do not use
>>>>> payload/context approach.
>>>>>
>>>>> I was hoping that following the UHD 4 guide to design new blocks using
>>>>> the python script I could get the same verilog files used in the video.
>>>>>
>>>>> Therefore,  my question is, what is the process to add a block with
>>>>> multiple inputs and outputs  using RFNoC 4?
>>>>>
>>>>> Thanks
>>>>> J
>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007d965f05bdaf55ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You have to specify=C2=A0
context_fifo_depthwhen using axis_pyld_ctxt. See, for example, the addsub b=
lock.</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Tue, Mar 16, 2021 at 11:56 AM Julian Casallas =
&lt;<a href=3D"mailto:jcasallas2019@gmail.com">jcasallas2019@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr">Jonathon,<div><br></div><div>Based on the specification I tried=
 the following options using the same gain.yml created according to the RFN=
oC 4 video. The python tool used is <b>rfnoc_create_verilog.py.</b></div><d=
iv><br></div><div>1. axis_data. Results <b>ok</b> but with all the AXI sign=
als.=C2=A0</div><div>2. axis_chdr. Results <b>ok</b> but with the chdr sign=
als.</div><div>3.=C2=A0

axis_pyld_ctxt. unfortunately this is the error I am=C2=A0getting:</div><di=
v><br></div><div>=C2=A0 File &quot;rfnoc_create_verilog.py&quot;, line 104,=
 in run<br>=C2=A0 =C2=A0 block =3D tpl.render(**{&quot;config&quot;: self.c=
onfig,<br>=C2=A0 File &quot;/usr/lib/python3/dist-packages/mako/template.py=
&quot;, line 476, in render<br>=C2=A0 =C2=A0 return runtime._render(self, s=
elf.callable_, args, data)<br>=C2=A0 File &quot;/usr/lib/python3/dist-packa=
ges/mako/runtime.py&quot;, line 878, in _render<br>=C2=A0 =C2=A0 _render_co=
ntext(<br>=C2=A0 File &quot;/usr/lib/python3/dist-packages/mako/runtime.py&=
quot;, line 920, in _render_context<br>=C2=A0 =C2=A0 _exec_template(inherit=
, lclcontext, args=3Dargs, kwargs=3Dkwargs)<br>=C2=A0 File &quot;/usr/lib/p=
ython3/dist-packages/mako/runtime.py&quot;, line 947, in _exec_template<br>=
=C2=A0 =C2=A0 callable_(context, *args, **kwargs)<br>=C2=A0 File &quot;/hom=
e/wisp/uhd/host/utils/rfnoc_blocktool/templates/noc_shell_template.v.mako&q=
uot;, line 198, in render_body<br>=C2=A0 =C2=A0 &lt;%include file=3D&quot;/=
modules/axis_pyld_ctxt_modules_template.mako&quot;/&gt;\<br>=C2=A0 File &qu=
ot;/usr/lib/python3/dist-packages/mako/runtime.py&quot;, line 795, in _incl=
ude_file<br>=C2=A0 =C2=A0 callable_(ctx, **kwargs)<br>=C2=A0 File &quot;/ho=
me/wisp/uhd/host/utils/rfnoc_blocktool/templates/modules/axis_pyld_ctxt_mod=
ules_template.mako&quot;, line 56, in render_body<br>=C2=A0 =C2=A0 .CONTEXT=
_FIFO_SIZE =C2=A0 ($clog2(${port_info[&#39;context_fifo_depth&#39;]})),<br>=
KeyError: &#39;context_fifo_depth&#39;<br></div><div><br></div><div>This is=
 the <b>demo.yml</b> file which is the same <b>gain.yml</b> but with differ=
ent name and highlighted is the key that I used for the data interface.</di=
v><div><br></div><div>1<br>=C2=A0 2 schema: rfnoc_modtool_args<br>=C2=A0 3 =
module_name: demo<br>=C2=A0 4 version: 1.0<br>=C2=A0 5 rfnoc_version: 1.0<b=
r>=C2=A0 6 chdr_width: 64<br>=C2=A0 7 noc_id: 0x0000DE30<br>=C2=A0 8 makefi=
le_srcs: &quot;/home/wisp/rfnoc_ws/rfnoc-test/rfnoc/fpga/rfnoc_block_demo/M=
akefile.srcs&quot;<br>=C2=A0 9<br>=C2=A010 clocks:<br>=C2=A011 =C2=A0 - nam=
e: rfnoc_chdr<br>=C2=A012 =C2=A0 =C2=A0 freq: &quot;[]&quot;<br>=C2=A013 =
=C2=A0 - name: rfnoc_ctrl<br>=C2=A014 =C2=A0 =C2=A0 freq: &quot;[]&quot;<br=
>=C2=A015 =C2=A0 - name: ce<br>=C2=A016 =C2=A0 =C2=A0 freq: &quot;[]&quot;<=
br>=C2=A017<br>=C2=A018 control:<br>=C2=A019 =C2=A0 sw_iface: nocscript<br>=
=C2=A020 =C2=A0 fpga_iface: ctrlport<br>=C2=A021 =C2=A0 interface_direction=
: slave<br>=C2=A022 =C2=A0 fifo_depth: 32<br>=C2=A023 =C2=A0 clk_domain: ce=
<br>=C2=A024 =C2=A0 ctrlport:<br>=C2=A025 =C2=A0 =C2=A0 byte_mode: False<br=
>=C2=A026 =C2=A0 =C2=A0 timed: False<br>=C2=A027 =C2=A0 =C2=A0 has_status: =
False<br>=C2=A028<br>=C2=A029 data:<br>=C2=A030 <b>=C2=A0 fpga_iface: axis_=
pyld_ctxt</b><br>=C2=A031 =C2=A0 clk_domain: ce<br>=C2=A032 =C2=A0 inputs:<=
br>=C2=A033 =C2=A0 =C2=A0 in:<br>=C2=A034 =C2=A0 =C2=A0 =C2=A0 item_width: =
32<br>=C2=A035 =C2=A0 =C2=A0 =C2=A0 nipc: 1<br>=C2=A036 =C2=A0 =C2=A0 =C2=
=A0 info_fifo_depth: 32<br>=C2=A037 =C2=A0 =C2=A0 =C2=A0 payload_fifo_depth=
: 32<br>=C2=A038 =C2=A0 =C2=A0 =C2=A0 format: int32<br>=C2=A039 =C2=A0 =C2=
=A0 =C2=A0 mdata_sig: ~<br>=C2=A040 =C2=A0 outputs:<br>=C2=A041 =C2=A0 =C2=
=A0 out:<br>=C2=A042 =C2=A0 =C2=A0 =C2=A0 item_width: 32<br>=C2=A043 =C2=A0=
 =C2=A0 =C2=A0 nipc: 1<br>=C2=A044 =C2=A0 =C2=A0 =C2=A0 info_fifo_depth: 32=
<br>=C2=A045 =C2=A0 =C2=A0 =C2=A0 payload_fifo_depth: 32<br>=C2=A046 =C2=A0=
 =C2=A0 =C2=A0 format: int32<br>=C2=A047 =C2=A0 =C2=A0 =C2=A0 mdata_sig: ~<=
br></div><div><br></div><div><br></div><div>Thanks</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 16, 202=
1 at 12:24 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus=
.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Julia=
n,<div><br></div><div>Generally, ctrlport and axis_pyld_ctrl are the correc=
t choices. One exception is when writing a block that changes sampling rate=
. You may want to use axis_chdr so you can easily interface with the axi_ra=
te_change module. The DDC / DUC are examples of that use case.</div><div><b=
r></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Tue, Mar 16, 2021 at 11:52 AM Julian Casallas=
 &lt;<a href=3D"mailto:jcasallas2019@gmail.com" target=3D"_blank">jcasallas=
2019@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr">Dear Jonathon,<div><br></div><div>Thanks for=
 your prompt reply, I checked the specification=C2=A0but before your reply,=
 I was looking into the <b>rfnoc_create_verilog.py=C2=A0 script=C2=A0</b>an=
d the block <b>demo</b> yaml file. I found the key <b>fpga_iface,=C2=A0</b>=
for control and data, has 2 options:</div><div><br></div><div>1.ctrlport or=
 axis_ctrl</div><div>2. axis_chdr or axis_pyld_ctxt</div><div><br></div><di=
v>The specification mentioned them too. However, the RFNoC 4 video talks ab=
out payload/context interface so could you please advise=C2=A0which should =
we use to be consistent?</div><div><br></div><div>Thanks=C2=A0</div><div>J<=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Tue, Mar 16, 2021 at 11:13 AM Jonathon Pendlum &lt;<a href=3D"mailt=
o:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div dir=3D"auto">Hello Julian,<div dir=3D"auto"><br></div>=
<div dir=3D"auto">For a multiple input / output port block, you will need t=
o use rfnoc_create_verilog with your own block definition yaml file. The RF=
NoC specification (<a href=3D"https://files.ettus.com/app_notes/RFNoC_Speci=
fication.pdf" target=3D"_blank">https://files.ettus.com/app_notes/RFNoC_Spe=
cification.pdf</a>) has information on the yaml file format in section 4.2.=
2. You can also look at the existing blocks in the UHD source tree for insp=
iration: <a href=3D"https://github.com/EttusResearch/uhd/tree/master/host/i=
nclude/uhd/rfnoc/blocks" target=3D"_blank">https://github.com/EttusResearch=
/uhd/tree/master/host/include/uhd/rfnoc/blocks</a>. For example, take a loo=
k at addsub.yml=C2=A0for a block with two fixed input / output ports and=C2=
=A0fir_filter.yml for a block where the number of ports is based on a param=
eter called NUM_PORTS.</div><div dir=3D"auto"><br></div><div>Jonathon</div>=
<div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Tue, Mar 16, 2021, 10:15 Julian Casallas &lt;<a href=3D=
"mailto:jcasallas2019@gmail.com" target=3D"_blank">jcasallas2019@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr">Hello,<div><br></div><div>I went through=C2=A0 the=C2=A0 Ge=
tting Started with RFNoC UHD 4 guide and I followed the RfNoC 4 WorkShop - =
GRCon 2020 to design a RFNoC block, this is what I did:</div><div><br></div=
><div>1. Created the gain block and it works fine following the RFNoC 4 vid=
eo. I checked the HDL files, and I could see the interfaces payload and con=
text were created between NoC Shell and the User Logic as expected.</div><d=
iv><br></div><div>2. Then I went ahead and created my own block,=C2=A0<b>no=
t</b>=C2=A0using the=C2=A0<b>rfnocmodtool=C2=A0</b>but in this case using t=
he=C2=A0<b>rfnoc_create_verilog.py=C2=A0</b>tool following=C2=A0 the UHD 4 =
guide based on the same gain.yml file for testing purposes, however,=C2=A0t=
he verilog files created in this case do not use payload/context approach.<=
/div><div><br></div><div>I was hoping that following the UHD 4 guide to des=
ign new blocks=C2=A0using the python script I could get the same verilog fi=
les used in the video.</div><div><br></div><div>Therefore,=C2=A0 my questio=
n is, what is the process to add a block with multiple inputs and outputs=
=C2=A0 using RFNoC 4?</div><div><br></div><div>Thanks</div><font color=3D"#=
888888"><font color=3D"#888888"><font color=3D"#888888"><font color=3D"#888=
888"><div>J</div></font></font></font></font></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000007d965f05bdaf55ef--

--===============5798279732523231566==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5798279732523231566==--
