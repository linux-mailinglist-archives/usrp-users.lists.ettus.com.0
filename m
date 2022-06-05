Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAD853DD69
	for <lists+usrp-users@lfdr.de>; Sun,  5 Jun 2022 19:43:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B8411383E58
	for <lists+usrp-users@lfdr.de>; Sun,  5 Jun 2022 13:43:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654451013; bh=TVnwNPo7/yCqoxx1GQKVVsHLxPsXtWan3lbaUtp7uOQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ymbtDjsvhrZ8XDx3s4Fm/V0ME1pl0ckFCDBqoKtppgvARDCXYaLgMSeOlmec8+cqo
	 qezMmbcBMZ/OAdcq31ZA5JfRa1Wvhc8KRgHUnQXLh6TvFE8Wntou1j77k9jh290eNi
	 8qNVhN9iywU5lK5RABqkIXdsByf7EvTcKgzXzUVtclmUFJ6qmD+KO8AeO+g1ewkLkf
	 cvOD1FjbvnB8kd2yMyeUDDXjVf4JN62SsxGdIa28Jb/YQrRUGenZmdBusYu6+72Fl8
	 XYNjaiOzyUBz2EQay1pQGYsgH+Lg4Ad7JsoGr+KMQAfyHhDlUm0Vn5l3QvBXqFGHNu
	 CxosPFkFkrDaw==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 7D5FB383DDD
	for <usrp-users@lists.ettus.com>; Sun,  5 Jun 2022 13:42:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qBk4FVfR";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id v1so14284443ejg.13
        for <usrp-users@lists.ettus.com>; Sun, 05 Jun 2022 10:42:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=h9Prg9JuEi6P9k82fDAnvdrQxX1m9hOJJHoHLMH+cpU=;
        b=qBk4FVfRd8e/hWIbLJthLIlSLQBKalYiPTIT9uhdMhr0aFJI5q7ur3BWYhIseeJcjF
         tWj/fcOd0FZssmB3xEHL76PQJiKdrDp560/qv6IBfNebbk9ed+SPByKIrd+3MTTn3BoK
         XBFAI4WaUasl+sZDSlfzHNZaWB4l1vJN4sCSKBvDP0vZd1Wy1RCj27pd7RyFY/1aSWi1
         Q3u5SOIcP1xzT9UIcZSFML2DXLMAqT69mv5oiHB02tTzvQUOcILW3GYUrHSssqIvY5gC
         FODTiMw2sipa2TCwV42sm0SPycmzDIcfuRnxiSBvH5FMAX5ETTAH3NWrIsZKksyS07Ow
         La7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=h9Prg9JuEi6P9k82fDAnvdrQxX1m9hOJJHoHLMH+cpU=;
        b=SB+BZd/+SioIcv8mgquIK0oJqPoJkP1AggSyfrq+s3J2EBng0ZDIcJ21nrHMrx63J/
         iiiEuHYIqgOO4WpiAIagM93rCVw//f6emiovcUl02prk7HkUpy/n1S5G/7T4onyN+dcm
         kXaZwc7HNttQQRMvjpbC4Iayxr5gXDllrBNMHoTpEoOtO510feb0zG5/98oYe5quR7at
         XTKRXlgUCv/0W3n1udveBvKEXK/PCPKXhhdzsg8RQHltocCU+n7WARVLqlyBFx1DOsAt
         buR6xofLWrwzcKO6/ryI4G6QbGOwr/oNE9HFjBiWzkTYAa4J5TYTV3VrMNZX0iUUuGUp
         //ww==
X-Gm-Message-State: AOAM530xKO15Y0kSxOzxC/G/cgpM0/OSkPxCqIJ8Ha83EVDpVY5xyFhK
	NDFI7PzLbzTtG/zABSjeUzf6dlAeu9N3mGv3Dfl8NziG
X-Google-Smtp-Source: ABdhPJwJY5Wn0nWQscGl0muKe7A81FqqB4S6Xf9RtY5JkNN8IS3nmBWXnt5V++WGEIQ7nCEBDQS1HgqQVQ+9eEtLF9c=
X-Received: by 2002:a17:907:a40a:b0:705:973d:ed78 with SMTP id
 sg10-20020a170907a40a00b00705973ded78mr18549600ejc.656.1654450953416; Sun, 05
 Jun 2022 10:42:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQXYKCytT_8vzQwrJw=mRpNOfEyP93iHBVMfU59VtHEUZQ@mail.gmail.com>
 <CAB__hTSXdzfq2CDVJQOeEFoej_oPr6L=2H7Qr8n6PYX4f6fnTw@mail.gmail.com>
 <CAG16vQUa0NDnpxP1P9uu=7-4432oBobKwPj8WU6L1VgGY3OQWw@mail.gmail.com>
 <CAB__hTQ6Rpy6dpyqWYjg6f5z3xGUGRUc05k0OMMaQS_k+TWPYg@mail.gmail.com> <CAA=S3PvcFooQUm716MFVT7MuLJmLg0=JceGB0UHou8H-SS7k7Q@mail.gmail.com>
In-Reply-To: <CAA=S3PvcFooQUm716MFVT7MuLJmLg0=JceGB0UHou8H-SS7k7Q@mail.gmail.com>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Sun, 5 Jun 2022 19:42:21 +0200
Message-ID: <CAG16vQXjJu2wtLQ3zLZLPu=JmEXEnbFBgSitdpZsq9xyQoR9oQ@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: YCLKJLTHLUSFJC3ZNCW2RM3RBLPPH43X
X-Message-ID-Hash: YCLKJLTHLUSFJC3ZNCW2RM3RBLPPH43X
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to add an ip core to rfnoc OOT block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YCLKJLTHLUSFJC3ZNCW2RM3RBLPPH43X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9201299862370918805=="

--===============9201299862370918805==
Content-Type: multipart/alternative; boundary="00000000000060749105e0b6e1f7"

--00000000000060749105e0b6e1f7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks for the answer.
I think that what I'm trying to do should be possible since the addsub
example has an option for a hls instance. Maybe I have not explain myself
well.
I have a top level module which includes several .vhd sources alongside
with an ip from xilinx. I can instance this top level entity in the
rfnoc_rfnocblock_blockname.v and I can synthesize it if my top_level hasn't
include any ip core. But when I have this IP instanced inside my top_level,
the makefile chain can't read or regenerate the ip core from the source
file (which is an .xci file).
What I do not know is how to add the .xci source to the Makefiles so the
vivado scripts (which are called when I do "rfnoc_image_builder")
synthesize it.

Kind Regards,
Maria


El dom., 5 jun. 2022 18:50, sp h <stackprogramer@gmail.com> escribi=C3=B3:

> Hi, You should not expect that integrate or add Xilinx IP core directly t=
o
> RFNOC blocks, Even If you be a master in Verilog...
> If you see the UHD source code you will realize that UHD is an RFNOC
> framework for USRP ...
> For working with the RFNOC UHD framework you should know more details:
> 1)Please see this link
> https://files.ettus.com/app_notes/RFNoC_Specification.pdf
> 2)Any RFNOC block has two files, noc_shell_blockname.v  and
> rfnoc_block_blockname.v  these two file are very important
> the first file is a low-level definition for the RFNOC block and the
> second file is the high-level definition for the block. I mention that we
> should use IP core in the second file ...
> And more details that you should study UHD source code till getting them.=
..
>
>
> On Fri, Jun 3, 2022 at 6:03 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Maria,
>> I apologize but I am not very experienced with these matters. I am able
>> to copy the rfnoc-example folder to an OOT location and build it and I k=
now
>> it has both OOT and in-tree IP options.  In the past I have successfully
>> run the 'make <testbench>' and also built an image such as "make
>> <x300_core>". But, outside of that, I don't really know what I'm doing..=
..
>> Rob
>>
>> On Fri, Jun 3, 2022 at 9:05 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wro=
te:
>>
>>> Hi Rob,
>>>
>>> I try to put these lines in the makefile.srcs inside my_block/fpga
>>> folder as in the rfnoc example:
>>>
>>> #RFNOC_OOT_SRCS +=3D $(abspath $(addprefix ${RFNOC_EXAMPLE_DIR},
>>> #my_other_module.v \
>>> #ip/my_ip_core/my_ip_core.xci \
>>> #))
>>>
>>> I add my .xci IP to this folder and give the name of the IP as a
>>> rfnoc_oot_src. I can compile the block but when I try to perform synthe=
sis
>>> it gives me this error:
>>>
>>> ERROR: [DRC INBB-3] Black Box Instances: Cell
>>> 'x300_core/bus_int_i/rfnoc_sandbox_i/b_3/top_i/my_clk' of type 'clk_wiz=
_0'
>>> has undefined contents and is considered a black box.  The contents of =
this
>>> cell must be defined for opt_design to complete successfully.
>>> ERROR: [Vivado_Tcl 4-78] Error(s) found during DRC. Opt_design not run.
>>> ERROR: [Common 17-39] 'opt_design' failed due to earlier errors.
>>>
>>> So I think I am missing something. I do not see anything else related t=
o
>>> IP core. Is there something else I have to do?
>>>
>>> Kind regards,
>>> Maria
>>>
>>> El mi=C3=A9, 1 jun 2022 a las 17:48, Rob Kossler (<rkossler@nd.edu>)
>>> escribi=C3=B3:
>>>
>>>> Hi Maria,
>>>> The rfnoc-example folder within the UHD tree shows an example of how t=
o
>>>> add an out-of-tree IP block. Did you look at this yet?
>>>> Rob
>>>>
>>>> On Wed, Jun 1, 2022 at 5:12 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> w=
rote:
>>>>
>>>>> Hi all,
>>>>>
>>>>> I'm trying to synthesize a design that includes a vivado ip core
>>>>> inside.
>>>>> Normally, I add my .vhd/.v source files to the Makefile.srcs inside m=
y
>>>>> block like this:
>>>>>
>>>>> RFNOC_OOT_SRCS +=3D $(addprefix $(dir $(abspath $(lastword
>>>>> $(MAKEFILE_LIST)))), \
>>>>> source1.vhd \
>>>>> source2.v \
>>>>> source3.v \
>>>>> )
>>>>>
>>>>> But adding the .xci file of my IP core does not work.
>>>>>
>>>>> What is the process to include this file in the makefile chain to
>>>>> compile it?
>>>>>
>>>>> Kind Regards,
>>>>>
>>>>> Maria.
>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--00000000000060749105e0b6e1f7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br><div dir=3D"auto">Thanks for the=
 answer.</div><div dir=3D"auto">I think that what I&#39;m trying to do shou=
ld be possible since the addsub example has an option for a hls instance. M=
aybe I have not explain myself well.</div><div dir=3D"auto">I have a top le=
vel module which includes several .vhd sources alongside with an ip from xi=
linx. I can instance this top level entity in the rfnoc_rfnocblock_blocknam=
e.v and I can synthesize it if my top_level hasn&#39;t include any ip core.=
 But when I have this IP instanced inside my top_level, the makefile chain =
can&#39;t read or regenerate the ip core from the source file (which is an =
.xci file).=C2=A0</div><div dir=3D"auto">What I do not know is how to add t=
he .xci source to the Makefiles so the vivado scripts (which are called whe=
n I do &quot;rfnoc_image_builder&quot;) synthesize it.</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">Kind Regards,</div><div dir=3D"auto">Maria</=
div><br><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=
=3D"gmail_attr">El dom., 5 jun. 2022 18:50, sp h &lt;<a href=3D"mailto:stac=
kprogramer@gmail.com">stackprogramer@gmail.com</a>&gt; escribi=C3=B3:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi, Yo=
u should not expect that integrate or add Xilinx IP core directly to RFNOC =
blocks, Even If you be a master in Verilog...<div>If you see the UHD source=
 code you will realize that UHD is an RFNOC framework for USRP ...</div><di=
v>For working with the RFNOC UHD framework you should know more details:</d=
iv><div>1)Please see this link</div><div><a href=3D"https://files.ettus.com=
/app_notes/RFNoC_Specification.pdf" target=3D"_blank" rel=3D"noreferrer">ht=
tps://files.ettus.com/app_notes/RFNoC_Specification.pdf</a><br></div><div>2=
)Any RFNOC block has two files, noc_shell_blockname.v=C2=A0 and=C2=A0 rfnoc=
_block_blockname.v=C2=A0 these two file are very important</div><div>the fi=
rst file is a low-level definition for the RFNOC block and the second file =
is the high-level definition=C2=A0for the block. I mention that we should u=
se IP core in the second file ...</div><div>And more details that you shoul=
d study UHD source code till getting them...</div><div><br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Ju=
n 3, 2022 at 6:03 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" tar=
get=3D"_blank" rel=3D"noreferrer">rkossler@nd.edu</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Maria,=
<div>I apologize but I am not very experienced with these matters. I am abl=
e to copy the rfnoc-example folder to an OOT location and build it and I kn=
ow it has both OOT and in-tree IP options.=C2=A0 In the past I have success=
fully run the &#39;make &lt;testbench&gt;&#39; and also built an image such=
 as &quot;make &lt;x300_core&gt;&quot;. But, outside of that, I don&#39;t r=
eally know what I&#39;m doing....</div><div>Rob</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 3, 2022 =
at 9:05 AM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com" targe=
t=3D"_blank" rel=3D"noreferrer">mamuki92@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Rob,<=
div><br></div><div>I try to put these lines in the makefile.srcs inside my_=
block/fpga folder as in the rfnoc example:</div><blockquote style=3D"margin=
:0px 0px 0px 40px;border:none;padding:0px"><div>#RFNOC_OOT_SRCS +=3D $(absp=
ath $(addprefix ${RFNOC_EXAMPLE_DIR},</div><div>#my_other_module.v \</div><=
div>#ip/my_ip_core/my_ip_core.xci \</div><div>#))</div></blockquote><div>I =
add my .xci IP to this folder and give the name of the IP as a rfnoc_oot_sr=
c. I can compile the block but when I try to perform synthesis it gives me =
this error:</div><div><br></div><div>ERROR: [DRC INBB-3] Black Box Instance=
s: Cell &#39;x300_core/bus_int_i/rfnoc_sandbox_i/b_3/top_i/my_clk&#39; of t=
ype &#39;clk_wiz_0&#39; has undefined contents and is considered a black bo=
x.=C2=A0 The contents of this cell must be defined for opt_design to comple=
te successfully.<br>ERROR: [Vivado_Tcl 4-78] Error(s) found during DRC. Opt=
_design not run.<br>ERROR: [Common 17-39] &#39;opt_design&#39; failed due t=
o earlier errors.<br></div><div><br></div><div>So I think I am missing some=
thing. I do not see anything=C2=A0else related to IP core. Is there somethi=
ng else I have to do?</div><div><br></div><div>Kind regards,</div><div>Mari=
a=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">El mi=C3=A9, 1 jun 2022 a las 17:48, Rob Kossler (&lt;<a href=
=3D"mailto:rkossler@nd.edu" target=3D"_blank" rel=3D"noreferrer">rkossler@n=
d.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div>Hi Maria,</div><div>The rfnoc-example f=
older within the UHD tree shows an example of how to add an out-of-tree IP =
block. Did you look at this yet?</div><div>Rob<br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 1, 2022=
 at 5:12 AM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com" targ=
et=3D"_blank" rel=3D"noreferrer">mamuki92@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi all,=
<br><div><br></div><div>I&#39;m trying to synthesize a design that includes=
 a vivado ip core inside.=C2=A0</div><div>Normally, I add my .vhd/.v source=
 files to the Makefile.srcs inside my block like this:</div><div><br></div>=
<div>RFNOC_OOT_SRCS +=3D $(addprefix $(dir $(abspath $(lastword $(MAKEFILE_=
LIST)))), \<br>source1.vhd \<br></div><div>source2.v \<br>source3.v \<br>)<=
br></div><div><br></div><div>But adding the .xci file of my IP core does no=
t work.</div><div><br></div><div>What is the process to include this file i=
n the makefile chain to compile it?</div><div><br></div><div>Kind Regards,<=
/div><div><br></div><div>Maria.</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div></div>
</blockquote></div></div></div>

--00000000000060749105e0b6e1f7--

--===============9201299862370918805==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9201299862370918805==--
