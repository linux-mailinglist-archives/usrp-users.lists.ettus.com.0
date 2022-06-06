Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E6953E194
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 10:21:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3D663384048
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 04:21:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654503712; bh=Wy4Eym6MMGCjQYegDQih44Zb2PjQWeFuyj1rjdj2cMM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=EId5QoOTxxTUJ0BsQCwqsDuEu9PXtRsNcQ0Cf/YJFaTIiA9jhMifALL8nSTTB7ADk
	 x/4hMMWFryf3yrsluys+yWIsUya7o/GnIzTPfzmbwgJw9cGtd6JOx3n/65E9BSwlWh
	 Yv2AZSqUQWAUtvlqg/Yzjl+ww7whJ+mzDZvnXXGQzQwqUZ1r8Zzw7FYWsTHZxYLIET
	 NTRKwKGnwicI24DrJQLVQxEU20vNxUPNa7yoe+HPOdUZ7mywHEz0noZ1l6BTHrqlJl
	 6L/wDeBAJyAntdAzScnREjLRu/POqBwCC/yDM7ZKYjzPYSYVE3WolgiuNjKusE0qBF
	 fAb0qn2XXMXRw==
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id D02E1383F87
	for <usrp-users@lists.ettus.com>; Mon,  6 Jun 2022 04:20:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LX1Dxwnp";
	dkim-atps=neutral
Received: by mail-yb1-f178.google.com with SMTP id u3so14663047ybi.4
        for <usrp-users@lists.ettus.com>; Mon, 06 Jun 2022 01:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i6b0yXbizbhtn4Dtnf2rkA20TB4g3YNaay+kVapzHXc=;
        b=LX1Dxwnpb6UT7ASmVNTJ2k5dBf9Nog7KD/X+fn0S1hMvJvTRdQdQzOtZlyb+QtinDY
         pPYKUBfh2YkWbQfHDZJvmyKpRjQIWdlcQW7jIN99Qumg8+JO7pFXIrnZVC8C3mw0PyHR
         Ktc+pjrXuB6AvuQ4NDQY4dJANuOy49hr1HqAtCrY6gNlWo+yiOvQ5ZsEuizQEX7oikck
         vITLTLNvDrVO0aDU/CmxT9m04JPQyu13w/I2JPmiHMi6EYuCrCegtkfXajtcCS+diZaJ
         skyZ5fu7EJDfelYhDGlxFgyvE0bhBqx+dvfTrkQKsqHnaPwQCjIfrfqH+8UATQqb9wcj
         iRRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i6b0yXbizbhtn4Dtnf2rkA20TB4g3YNaay+kVapzHXc=;
        b=e/WqPYzyc/aCTtB16jtz8dx6myMvvn+u/OcEUVnVU+ojs04UCmPCPzrEEhb/+wdgXg
         7bX006kpIqSJev23u7FjA+QYyIaRl3PLut7SY01kcrVaWz1JeSiO16QvgL9+uuMT+Rx0
         pV6HkR2whIa63pcXvQpNRBNoFJEhRYwiGCS/wFOzetJ4jKnq+uc5DmKrfFZESZYJmh3A
         3HzNMqq720yBzS3DOYAGPfjMLk/6e9VVnYYkXxT+iy+HUIZ+KZxq0XDebmert4tb35z8
         mapGReqxeS+OWWveIOqZr9Dcw7xQaBCAJSIx4CwqLidb7kB0EgSQE4iUAiVXTW5mC4c+
         vxYQ==
X-Gm-Message-State: AOAM533bo+fcUwDpgrW80FOyN7bYkJgNVN2njEYm1+5rvxwxva5nCxoP
	IADBeegqacF0sKjsH1+WISCkwNi3y+ter2VeGO/TdknS77Dy5ym0G20O7Q==
X-Google-Smtp-Source: ABdhPJwMT77A8IMJe/hnh+kvt7IxtdBDgVY0jC0saW/qbPp2IWjvoBl2Zt2lpRQrBbVkQcxy19DNdrAhpBdXCL7fSeY=
X-Received: by 2002:a25:6885:0:b0:65c:bbf4:a706 with SMTP id
 d127-20020a256885000000b0065cbbf4a706mr23319751ybc.229.1654503643140; Mon, 06
 Jun 2022 01:20:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQXYKCytT_8vzQwrJw=mRpNOfEyP93iHBVMfU59VtHEUZQ@mail.gmail.com>
 <CAB__hTSXdzfq2CDVJQOeEFoej_oPr6L=2H7Qr8n6PYX4f6fnTw@mail.gmail.com>
 <CAG16vQUa0NDnpxP1P9uu=7-4432oBobKwPj8WU6L1VgGY3OQWw@mail.gmail.com>
 <CAB__hTQ6Rpy6dpyqWYjg6f5z3xGUGRUc05k0OMMaQS_k+TWPYg@mail.gmail.com>
 <CAA=S3PvcFooQUm716MFVT7MuLJmLg0=JceGB0UHou8H-SS7k7Q@mail.gmail.com> <CAG16vQXjJu2wtLQ3zLZLPu=JmEXEnbFBgSitdpZsq9xyQoR9oQ@mail.gmail.com>
In-Reply-To: <CAG16vQXjJu2wtLQ3zLZLPu=JmEXEnbFBgSitdpZsq9xyQoR9oQ@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Mon, 6 Jun 2022 12:50:31 +0430
Message-ID: <CAA=S3Ps-BZziEa8uaym9k1KEV+0_RAWNmjNUNYrnpw5uu5v6-w@mail.gmail.com>
To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Message-ID-Hash: FNAJHLG65GSUV754UIYKZTKL7FALQROT
X-Message-ID-Hash: FNAJHLG65GSUV754UIYKZTKL7FALQROT
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to add an ip core to rfnoc OOT block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FNAJHLG65GSUV754UIYKZTKL7FALQROT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2017132665952245215=="

--===============2017132665952245215==
Content-Type: multipart/related; boundary="000000000000ee0ea305e0c32503"

--000000000000ee0ea305e0c32503
Content-Type: multipart/alternative; boundary="000000000000ee0ea105e0c32502"

--000000000000ee0ea105e0c32502
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ok, I'll take a look. I had a question for creating your custom RFNOC block
do you use rfnocmodtool creator?
I think for using an IP core from Xilinx in your
rfnoc_rfnocblock_blockname.v, you should see a folder in the UHD driver?
I worked with x300 series RFNOC block, In a folder on this path
(/home/sp/Documents/uhd-4.2.0.0/fpga/usrp3/lib
) exist a folder as name ip..
IP cores that we need should be defined in the UHD driver folder...
Your IP list should be added to this folder and changed makefiles
carefully!!!!

Before you complete your development may be useful this info that we
follow...
1)Do you make the default  UHD FPGA image successfully? Does it work?
For me, the default UHD FPGA that I make bitstream myself works fine.

2)But !!! When I want to change RFNOC blocks for example Added an FFT
block, Radiocores, DDC, and DUC work but
for FFT and new blocks that I added it does not work.
It generates OOOOO I described it in the below link
https://lists.ettus.com/empathy/thread/VJB7A53C6X77JN7DPP3ATASYO4MAH7GH

3)When I created a custom RFNOC block, Testbench and generate bitstream is
ok but for working RFNOC block in GNURadio I faced with error section 2.
Generate OOOOOO in Gnuradio


[image: Screenshot from 2022-06-06 12-34-22.png]

For using IP core directly I think you are not familiar with noc_shell and
RFNOC module structure...

On Sun, Jun 5, 2022 at 10:12 PM Maria Mu=C3=B1oz <mamuki92@gmail.com> wrote=
:

> Hi,
>
> Thanks for the answer.
> I think that what I'm trying to do should be possible since the addsub
> example has an option for a hls instance. Maybe I have not explain myself
> well.
> I have a top level module which includes several .vhd sources alongside
> with an ip from xilinx. I can instance this top level entity in the
> rfnoc_rfnocblock_blockname.v and I can synthesize it if my top_level hasn=
't
> include any ip core. But when I have this IP instanced inside my top_leve=
l,
> the makefile chain can't read or regenerate the ip core from the source
> file (which is an .xci file).
> What I do not know is how to add the .xci source to the Makefiles so the
> vivado scripts (which are called when I do "rfnoc_image_builder")
> synthesize it.
>
> Kind Regards,
> Maria
>
>
> El dom., 5 jun. 2022 18:50, sp h <stackprogramer@gmail.com> escribi=C3=B3=
:
>
>> Hi, You should not expect that integrate or add Xilinx IP core directly
>> to RFNOC blocks, Even If you be a master in Verilog...
>> If you see the UHD source code you will realize that UHD is an RFNOC
>> framework for USRP ...
>> For working with the RFNOC UHD framework you should know more details:
>> 1)Please see this link
>> https://files.ettus.com/app_notes/RFNoC_Specification.pdf
>> 2)Any RFNOC block has two files, noc_shell_blockname.v  and
>> rfnoc_block_blockname.v  these two file are very important
>> the first file is a low-level definition for the RFNOC block and the
>> second file is the high-level definition for the block. I mention that w=
e
>> should use IP core in the second file ...
>> And more details that you should study UHD source code till getting
>> them...
>>
>>
>> On Fri, Jun 3, 2022 at 6:03 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Hi Maria,
>>> I apologize but I am not very experienced with these matters. I am able
>>> to copy the rfnoc-example folder to an OOT location and build it and I =
know
>>> it has both OOT and in-tree IP options.  In the past I have successfull=
y
>>> run the 'make <testbench>' and also built an image such as "make
>>> <x300_core>". But, outside of that, I don't really know what I'm doing.=
...
>>> Rob
>>>
>>> On Fri, Jun 3, 2022 at 9:05 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wr=
ote:
>>>
>>>> Hi Rob,
>>>>
>>>> I try to put these lines in the makefile.srcs inside my_block/fpga
>>>> folder as in the rfnoc example:
>>>>
>>>> #RFNOC_OOT_SRCS +=3D $(abspath $(addprefix ${RFNOC_EXAMPLE_DIR},
>>>> #my_other_module.v \
>>>> #ip/my_ip_core/my_ip_core.xci \
>>>> #))
>>>>
>>>> I add my .xci IP to this folder and give the name of the IP as a
>>>> rfnoc_oot_src. I can compile the block but when I try to perform synth=
esis
>>>> it gives me this error:
>>>>
>>>> ERROR: [DRC INBB-3] Black Box Instances: Cell
>>>> 'x300_core/bus_int_i/rfnoc_sandbox_i/b_3/top_i/my_clk' of type 'clk_wi=
z_0'
>>>> has undefined contents and is considered a black box.  The contents of=
 this
>>>> cell must be defined for opt_design to complete successfully.
>>>> ERROR: [Vivado_Tcl 4-78] Error(s) found during DRC. Opt_design not run=
.
>>>> ERROR: [Common 17-39] 'opt_design' failed due to earlier errors.
>>>>
>>>> So I think I am missing something. I do not see anything else related
>>>> to IP core. Is there something else I have to do?
>>>>
>>>> Kind regards,
>>>> Maria
>>>>
>>>> El mi=C3=A9, 1 jun 2022 a las 17:48, Rob Kossler (<rkossler@nd.edu>)
>>>> escribi=C3=B3:
>>>>
>>>>> Hi Maria,
>>>>> The rfnoc-example folder within the UHD tree shows an example of how
>>>>> to add an out-of-tree IP block. Did you look at this yet?
>>>>> Rob
>>>>>
>>>>> On Wed, Jun 1, 2022 at 5:12 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> =
wrote:
>>>>>
>>>>>> Hi all,
>>>>>>
>>>>>> I'm trying to synthesize a design that includes a vivado ip core
>>>>>> inside.
>>>>>> Normally, I add my .vhd/.v source files to the Makefile.srcs inside
>>>>>> my block like this:
>>>>>>
>>>>>> RFNOC_OOT_SRCS +=3D $(addprefix $(dir $(abspath $(lastword
>>>>>> $(MAKEFILE_LIST)))), \
>>>>>> source1.vhd \
>>>>>> source2.v \
>>>>>> source3.v \
>>>>>> )
>>>>>>
>>>>>> But adding the .xci file of my IP core does not work.
>>>>>>
>>>>>> What is the process to include this file in the makefile chain to
>>>>>> compile it?
>>>>>>
>>>>>> Kind Regards,
>>>>>>
>>>>>> Maria.
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>
>>>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--000000000000ee0ea105e0c32502
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok, I&#39;ll take a look. I had a question for creating yo=
ur custom RFNOC block do you use rfnocmodtool creator?<div>I think for usin=
g an IP core from Xilinx in your rfnoc_rfnocblock_blockname.v, you should s=
ee a folder in the UHD driver?</div><div>I worked with x300 series=C2=A0RFN=
OC block, In a folder on this path (/home/sp/Documents/uhd-4.2.0.0/fpga/usr=
p3/lib</div><div>) exist a folder as name ip..</div><div>IP cores that we n=
eed should be defined in the UHD driver folder...</div><div>Your IP list sh=
ould be added to this folder and changed makefiles carefully!!!!</div><div>=
<br></div><div>Before you complete your development may be useful=C2=A0this=
 info=C2=A0that we follow...</div><div>1)Do you make the default=C2=A0 UHD =
FPGA image=C2=A0successfully? Does it work?</div><div>For me, the=C2=A0defa=
ult UHD FPGA that I make bitstream myself works fine.</div><div><br></div><=
div>2)But !!! When I want to change RFNOC blocks for example=C2=A0Added an =
FFT block, Radiocores,=C2=A0DDC, and DUC work but</div><div>for FFT and new=
 blocks that I added it does not work.</div><div>It generates OOOOO I descr=
ibed it in the below link</div><div><a href=3D"https://lists.ettus.com/empa=
thy/thread/VJB7A53C6X77JN7DPP3ATASYO4MAH7GH">https://lists.ettus.com/empath=
y/thread/VJB7A53C6X77JN7DPP3ATASYO4MAH7GH</a><br></div><div><br></div><div>=
3)When I created a custom RFNOC block, Testbench and generate bitstream is =
ok but for working RFNOC block in GNURadio I faced with error section 2. Ge=
nerate=C2=A0OOOOOO in Gnuradio</div><div><br></div><div><br></div><div><img=
 src=3D"cid:ii_l42gb22a0" alt=3D"Screenshot from 2022-06-06 12-34-22.png" w=
idth=3D"472" height=3D"270"><br></div><div><br></div><div>For using IP core=
 directly I think you are not familiar with noc_shell and RFNOC module stru=
cture...</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sun, Jun 5, 2022 at 10:12 PM Maria Mu=C3=B1oz &lt;<a hre=
f=3D"mailto:mamuki92@gmail.com">mamuki92@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Hi,<div=
 dir=3D"auto"><br><div dir=3D"auto">Thanks for the answer.</div><div dir=3D=
"auto">I think that what I&#39;m trying to do should be possible since the =
addsub example has an option for a hls instance. Maybe I have not explain m=
yself well.</div><div dir=3D"auto">I have a top level module which includes=
 several .vhd sources alongside with an ip from xilinx. I can instance this=
 top level entity in the rfnoc_rfnocblock_blockname.v and I can synthesize =
it if my top_level hasn&#39;t include any ip core. But when I have this IP =
instanced inside my top_level, the makefile chain can&#39;t read or regener=
ate the ip core from the source file (which is an .xci file).=C2=A0</div><d=
iv dir=3D"auto">What I do not know is how to add the .xci source to the Mak=
efiles so the vivado scripts (which are called when I do &quot;rfnoc_image_=
builder&quot;) synthesize it.</div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Kind Regards,</div><div dir=3D"auto">Maria</div><br><br><div class=3D=
"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">El dom., 5=
 jun. 2022 18:50, sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com" targ=
et=3D"_blank">stackprogramer@gmail.com</a>&gt; escribi=C3=B3:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"=
ltr">Hi, You should not expect that integrate or add Xilinx IP core directl=
y to RFNOC blocks, Even If you be a master in Verilog...<div>If you see the=
 UHD source code you will realize that UHD is an RFNOC framework for USRP .=
..</div><div>For working with the RFNOC UHD framework you should know more =
details:</div><div>1)Please see this link</div><div><a href=3D"https://file=
s.ettus.com/app_notes/RFNoC_Specification.pdf" rel=3D"noreferrer" target=3D=
"_blank">https://files.ettus.com/app_notes/RFNoC_Specification.pdf</a><br><=
/div><div>2)Any RFNOC block has two files, noc_shell_blockname.v=C2=A0 and=
=C2=A0 rfnoc_block_blockname.v=C2=A0 these two file are very important</div=
><div>the first file is a low-level definition for the RFNOC block and the =
second file is the high-level definition=C2=A0for the block. I mention that=
 we should use IP core in the second file ...</div><div>And more details th=
at you should study UHD source code till getting them...</div><div><br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Fri, Jun 3, 2022 at 6:03 PM Rob Kossler &lt;<a href=3D"mailto:rkossler=
@nd.edu" rel=3D"noreferrer" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r">Hi Maria,<div>I apologize but I am not very experienced with these matte=
rs. I am able to copy the rfnoc-example folder to an OOT location and build=
 it and I know it has both OOT and in-tree IP options.=C2=A0 In the past I =
have successfully run the &#39;make &lt;testbench&gt;&#39; and also built a=
n image such as &quot;make &lt;x300_core&gt;&quot;. But, outside of that, I=
 don&#39;t really know what I&#39;m doing....</div><div>Rob</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Ju=
n 3, 2022 at 9:05 AM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.=
com" rel=3D"noreferrer" target=3D"_blank">mamuki92@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
">Hi Rob,<div><br></div><div>I try to put these lines in the makefile.srcs =
inside my_block/fpga folder as in the rfnoc example:</div><blockquote style=
=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div>#RFNOC_OOT_SRCS +=
=3D $(abspath $(addprefix ${RFNOC_EXAMPLE_DIR},</div><div>#my_other_module.=
v \</div><div>#ip/my_ip_core/my_ip_core.xci \</div><div>#))</div></blockquo=
te><div>I add my .xci IP to this folder and give the name of the IP as a rf=
noc_oot_src. I can compile the block but when I try to perform synthesis it=
 gives me this error:</div><div><br></div><div>ERROR: [DRC INBB-3] Black Bo=
x Instances: Cell &#39;x300_core/bus_int_i/rfnoc_sandbox_i/b_3/top_i/my_clk=
&#39; of type &#39;clk_wiz_0&#39; has undefined contents and is considered =
a black box.=C2=A0 The contents of this cell must be defined for opt_design=
 to complete successfully.<br>ERROR: [Vivado_Tcl 4-78] Error(s) found durin=
g DRC. Opt_design not run.<br>ERROR: [Common 17-39] &#39;opt_design&#39; fa=
iled due to earlier errors.<br></div><div><br></div><div>So I think I am mi=
ssing something. I do not see anything=C2=A0else related to IP core. Is the=
re something else I have to do?</div><div><br></div><div>Kind regards,</div=
><div>Maria=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">El mi=C3=A9, 1 jun 2022 a las 17:48, Rob Kossler (&l=
t;<a href=3D"mailto:rkossler@nd.edu" rel=3D"noreferrer" target=3D"_blank">r=
kossler@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Maria,</div><div>The rfnoc-=
example folder within the UHD tree shows an example of how to add an out-of=
-tree IP block. Did you look at this yet?</div><div>Rob<br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Ju=
n 1, 2022 at 5:12 AM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.=
com" rel=3D"noreferrer" target=3D"_blank">mamuki92@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
">Hi all,<br><div><br></div><div>I&#39;m trying to synthesize a design that=
 includes a vivado ip core inside.=C2=A0</div><div>Normally, I add my .vhd/=
.v source files to the Makefile.srcs inside my block like this:</div><div><=
br></div><div>RFNOC_OOT_SRCS +=3D $(addprefix $(dir $(abspath $(lastword $(=
MAKEFILE_LIST)))), \<br>source1.vhd \<br></div><div>source2.v \<br>source3.=
v \<br>)<br></div><div><br></div><div>But adding the .xci file of my IP cor=
e does not work.</div><div><br></div><div>What is the process to include th=
is file in the makefile chain to compile it?</div><div><br></div><div>Kind =
Regards,</div><div><br></div><div>Maria.</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div></div>
</blockquote></div></div></div>
</blockquote></div>

--000000000000ee0ea105e0c32502--

--000000000000ee0ea305e0c32503
Content-Type: image/png; name="Screenshot from 2022-06-06 12-34-22.png"
Content-Disposition: inline;
	filename="Screenshot from 2022-06-06 12-34-22.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_l42gb22a0>
X-Attachment-Id: ii_l42gb22a0

iVBORw0KGgoAAAANSUhEUgAABQ4AAALlCAYAAACFA3v7AAAABHNCSVQICAgIfAhkiAAAABl0RVh0
U29mdHdhcmUAZ25vbWUtc2NyZWVuc2hvdO8Dvz4AAAAvdEVYdENyZWF0aW9uIFRpbWUATW9uIDA2
IEp1biAyMDIyIDEyOjM0OjIyIFBNICswNDMwYk+KAQAAIABJREFUeJzs3Xd0FFUbx/HvbEkhjdA7
0kILXXqxAoJUqSIqiopdkSKIWBB4kSb2iiKoCGIFaSLSO9J7aMGEnkB6smXeP1IISTbJhmT3Jnk+
5+RAsrMzd+9vZ+7uM01r3rSpjhBCCCGEEEIIIYQQQqRjcHcDhBBCCCGEEEIIIYQQ6pHCoRBCCCGE
EEIIIYQQIhMpHAohhBBCCCGEEEIIITKRwqEQQgghhBBCCCGEECITU3YP6rqO1WbDbre7pDHx8fEu
WY6maZhMJry9vDAYpHZa1NntdmJiY0lMSMCuy72AhBBCCCGEEMWDQdPw9PLC18cnx+++rvr+bzAY
MBmNaJqmRHvcQbU+yG17RPHksHCo6zo2u50Af398fXwwGo0F3pgjx45RuXLlAl+OzWYjLi6OmJiY
XG1AReFlt9uJjonhtmrV8PLycndzipUzoaHcVq2au5shnCCZFQ7FPafi/vqzI32TvTOhoQT4+bm7
GUII4VI2m42Y2FgiIiMpFRjo8Luvq77/p7YnKjoao8HgsFDljnqEq8ZR1fogt+0RxZfDwqHVZiPA
358Af39XtscljEYjfikfHOPj4/EpUcLNLRIFJSY2lupSNBRCCCGEEEIUQ0ajMe07fUxsLP4OdqC4
6vt/+vZcj4rCbMq6JFHU6xEq9UFu2yOKL4eH2tntdnx9fFzZFpcrUaIEVqvV3c0QBSghIQFvKRoK
IYQQQgghijFfHx8SExMdPu7q7/++Pj7Znn5bHOoRqvVBTu0RxVe25+i64nBgdzIajehyzbsiTfIV
QgghhBBCFHdGozHHopArv//nZlnFoR6RH9Pkl6Le3yLv5BhUIYQQQgghhBBCCCEKAZMG7XwstPO1
UMvDShlT8gFTV6waIYkmtsaa2RJrxppPx1FJ4VAIIYQQQgghhBBCCMV18LXweOl4KpozH0FcxUOn
ikcSd/olEW4x8M1VbzbFmG95mQV2O+G77rmnoGZ9k1q1arlkOaJ4ahgcTMPgYHc3QwghhBBCCCGE
EMWUAXiiTDwTKsRmWTTMqJLZzoQKsTxRJv6WC38FcsRhterV6de/P//8/XdBzP4mjRo35mpEBNci
Iwt8WaJ4aRgczCujRwMwe+ZMDh086OYWCVEEaP7U69qbxlGrWbLlIrm6/LJWikbdu1Pz/DL++Pca
cuVSIQqQVpbWQx+hafhCvvw7PPM6qvlTr3NPgqPW8Mu2XK7DQgghigyz2UyXrl3p0KkTVatWBeDc
uXNsWL+ev1atkpuPClFAHi8TT7+Sjm9w5Ei/konoOsy96p3nZef7EYeenp6MfOUVPv344/yedZa2
bd1Kx44dMcktw0U+qle/Pq+MHs2cWbOY8e67vDJ6NI0aNXJ3s0RxonlTrl4LGlcrgebutuQnLZBG
XXrSoZZf7l+XoRwtevai7W0+Rasv3EwrUYuuL/yPT75bzKKffuDT59tQwt2NEu5nCKBWq9bUK++V
vL4Z6zJkzre8/1gwHpC8Dt/Xm051nFiHhRBCFAmlSpXif+++S8PgYBZ8+y1PPPYYTzz2GN/Nn0+T
Jk2YNmMGpUqVcll7lvz6a9qPEEVZB19LnoqGqfoHJtLWx5Ln5+d7tW3goEH8u3u3y47OunDhAmFh
YTRu0oR/d+92yTJF0Vavfn3GvPoqc2bN4sCBAwDMePfdtL/Vb9iQgYMG0b9v31tbkFaSzm98weOJ
H/HYtA0kpHvIs8NY5r3owzdPv8XqiGJ8fJXmR7uX5/Bc+0A8DGC3xHH98jlC9m/j72Wr2B2ekPM8
CitjbXqPeZUaf7zIgdA4d7emEDFSpv3zvPVyB6K+e4EJv1/I4ghFM+Va9GZw/3toVqM0HolXOLlj
KfPnrSQk1sH6ZihNs0FP8XCXxlT0iuXcrj+Z9+VvHI7Kp+ldzkjt/iMZ1ug/fvzgbQ5fA8+k/4h3
d7OKOq0k9e8fzAP33E69ygFoseEc2/wr8xas41zePwsWLD2eq+HhhF+NlaMLhRCiGDObzbz2+uts
2riR3zIU6g4dPMihgwd5oH9/xr/+OuPHjnXZkYf9+/ZNKxzmVEC85e9vispt4bSovv6izqTB8NJZ
fErXDKA7+HSWxWNPlolnZ1zebpiSr4XD6tWr07pNG0a/8kp+zjZH+/bupUfPnpw5fZqIiAiXLlsU
LfUbNGD02LE3FQ0Bjh45clPxcPGiRW5sZXFixMffD+Oxn5j83V4s5hIEVgyi+T19GTvrbtbOmcSX
26/Kl1mRQsO/2eO89kQjzEnZjIjeDekz7E58dv7BF0suoVXtxMDBTzDaFs5Ln+0jc/3GSLU+YxjV
y5utC95jfmQl7nlkCK+OjGPMpFVcyrQoZ6d3A60c9RuU4+qWD1m24xg2d7en2LBg9rBxYvlXLLuQ
iG+tuxjw4HO8HHuWsQtPq5mDPZRV08ezyt3tEEII4VZdunbl0qVLmYqG6f2yZAlBQUF07tKFFcuX
u6Rd6YtmxbUwVlxft6sMf+KJLP8+96uvXLL8dj4WKmS8pqFmoOTE+SRuWkr82ptrE953D8KzQ0+u
vfPITcXDimY7bX0sbMzDzVLytXA44pln+HbePBISXHsUkM1mY/fu3bRu3ZoVK1a4dNmi6HBUNEyV
sXjoUoZSNH7gMYZ0aU71knDtzG5WL/iG3w9EJhfNtNK0Gf4C/VpUp0JpPzyI5+LBNfy53UqDu9rT
+LYymOPC2LP0Cz7/7QgxqYULY1laDBhGv07BVC9t4PrJ7fz+9desDolT6jpyenQYx44cST4qc/9u
Nq9Zy/5RU3n22Sc4cnw6GyL1nPsIwFCS4N6PMeS+FtQINJJw9SR/vv82S0Lq8eTnE6nxx4tpR6hp
5Xvyzoe9OfPO03x1MCD/+zc1s+bVKV/GD08SiDi9i2Vzv2T58diU/jcRNOxTfhoGYGHbrIeZudnA
bfc+xhP92lKrjBfWqHB2LZjCB/9cUiMzU6Ps+/IQgEbpTi/z/r1lKONtJTLj6zZXot1Dwxl4Z0Mq
eCdy6fgZknwhp/3WxopdeOG5YA5+9DGJw8bR0NGE8XuZO/IlbNaUMs3uQ9hqtuCVuvWoYNjH2YyV
aHMDunSrRcSqiXyx/CgW4FhSFd4f15POtdbwfYjt1qZ3B80DTw8DFXpPY1FvABshC17itV8TaDns
OR5oWYNKZfzwsMdw4fgOVv7wHSuPRt14j2kladDzEYZ0a0mtst7Y4yO4GHqCNXNns/yUTqWuY3h1
cBPK+Xlgi/6Pg3/N54sf/yVClSp/Tu/Tg2bH65lWkmaDR9C/fV2qlfPHbIlgx1fjeG+dRquc+k6P
Zf8vX7I/tR0HT+LVuA1P3FYVD06recSnoToDZs6g457XGLkgJKW4qeHX7GHealuT2mVNxIYfZN3C
uSzadoG8nwQjhBBCZR07dWL+t9/mON2ypUsZMnSoSwqHUjATrpBVgdBRMbEgZHmKsW4nYdMf+I+Y
CiYz8au/A8Dr7oH4jZhC9Ny3sjwa0e2Fw2bNm2M0mdi1c2d+zdIp/507R3BwMJUqVSI8PNwtbRCF
V/0GDRg/YQIzpk3LsmiYKrV4OPHNN5k2ZUq20+aaZsRsNt90pInJmP7yox7UeXAi4+7X2fTd+3x3
Dqrd+SAPTngdj9fHsSjEApovVRs0IODMAmZ/dAqrXx3ue2woTzx8ijU/LGDO9wmUvH0gjz/0Ev2P
Pc+8w1bAi3pDJ/JKx8v8/vU0vrriR5P+T/LYuGFcevET9qh8dqztIhsXruD+9wZyT9vSbFweRe2c
+ggPag+ayPieRrYt+oQfQ6IxB/oTeyEXp1EURP8mpMwz9Afe/+wkFq8KtOj7MI+MfZTwFz5hjwXA
ypnfpvHhP1fQ0Ym7koSh2gCef/J2ri56nzf3RKAFVKbE1Ug1ioZOSAzbyqKlB4ikLM37PnLjdSeU
oMnjE3mxUxzrf5jD1+eslKp3Dw8EadkXDk3V6fniYEqsmMSCvUYG5LD8tKIhgOZLyZImEi6cJ6sr
AxjK1yWoZBzH9p9MK4rEH9nHCVsngoIC0UKu3NT/zk7vPnYurZnD9KWh2IHEaxexa5Wp1iiYUucW
8sHnJ0nyLE/wfQN45M3b8JkwgSWnUtalwROZ0NuT3Ys/Z8nx62hl2/Pwc52oU9YAp6xcO7qa7+b8
TkQslGrUh8eGvMQjp5/l/a2xirz27Bmq9XS8nmkB1G55O+XP/8gHnx8h1uiLPfwaulY1F32XfiEl
qNDkfu6oFcveb49QuC68oOFhjmb/Lx/z8xUDVToNYNCo1zG/PZpvDubPK+nTty9DH3kk22kW//ij
nAEghBAuUqVKFU6dOpXjdCdDQqiWctOUguauow1ljCoeNm/dmuXf27dt69J21PHK+ltQwtrFAMnF
Q0C3JuE/YirRc99KKyRmFORgXjnJt8LhA/368cN336Hr7vtKsG/fPho3aiSFQ+GU1CMNS5QokatC
4NEjR/D09OTlUaMcHp3oDHOrF/lm8YuZH7AkH5Oi+baiV7fKnF0yks+Wh2EHDh4+j1e1WfTu3ZKl
s7aQWuNLCD/C/kMh2DjClQptad73HDtWb2WfFTgKDTqNp3798hgOh6H7tqJnl9Ls++J1ftqSfDTM
6S/K0uyTgbSr/yV7dqt93Ij9/ElOxxpoWqUiRt96OfeRT0t6da9K6JKRfPJ72M2nBOZyS5iv/bsn
ZZ5hB9m7PwQbBzh0tRxNpt1Bs5pG9hxLfjzpWjihoTeu02f0L4mfFsO+Qwc5fioByPkDnHp0Yk5u
Z8vu5KOXjkRWoNm7ya9777nWdLuzNCEL3+KzPy8mv+5DMdx2dwvqpTzb6FkCT5OWfGMG3UpCnJWK
PZ6mJ3/w9u+nsVDbibaYqHTvU/SveZKfJ2whOoshTAsoiT9RRF5Pt9cuMZKIaI3KgQEYuHLT+8nZ
6d3JGnWBc6GhN9qTss8i/r8D/LsvOZ99e06jz5zG/b2a8eecHcSXuJ2e3atx/rcxfPDLGayAFlCB
++2dUmaiE3d2DzvPJv928tT3VGs/i7uCKmPYelyZ154dLcf1TCcudB//Hghxru9SJvW5Yxyfv9gK
L83GxQ3v8+H6y4WioHqDnas7fuOXNcmvc+/+s5irzKFvtxYsOriZ/NjvlHoqnKMvZvKFTAgh1KRp
rr11ljuucajaGCXXOCw4GYuEjoqJBamU0fGnxIS1i9HQ8BsxBYDozydkOnU5t/PKjtyKWBR7QUFB
zJ45k7ffeSfLxwMDA/H39ycsLOymi/zOnjmT2rVr33Lh0HpoIZPn7yUp3d/MTYbyesohU4ZKtbjN
8wo7D164ccqtLZzDhyMY2KIWlYxbCMm0/tuJvBoB3v74e5J8jqc9kqvXoL5P8p1ptUo1qO7lTdnn
v+KH51KfZ8BospMY6I2GpdB8kc1NH52uXJsaXsnT3HrhIj/6N4u5XrrAJd0Pfz/HN7y3HV3F7/tb
88ibc6i1cTWrVq5hx6moQlGMccR+6TyXU163oWJ1qpiusP2oo6PyzDR96nPG3e2b3IeWLcx+YTcd
+5Tgn6l/EmoFjLldsgdVOo9kwrDy7JzzFkvPOtoDp4FTa4Oz0yvOcpq9ByPpFVybisYdnK1Smxpe
V9m995yDo0DNlG81gKF92xFUORBPSzQWbwO2Yx4ubnje5dt6lqHvTqXMIG7nXF57dSnlaraix+AX
mfSclfEfbuNaYX3b2C9w7HgkHo1vo4Jxc9rrvFWOvphJ0VAIIVzv3H//UatWrRxvglqrVi1CQ0Nd
1Cr3HXWo0hglBUFR0PKtcPjLzz8zZOhQ9u/b57ajDps0acL+ffvcsmxReP3+22/ZPv7l118DcPDA
Ad564420v6fePexW6TEXCDl+/Oa7KpeLAXzSfs/Lfjub1YaOGYOWUsTQrVhtpPwOaBroEWz6cBK/
nEz/LU8nITJG+bKHoVIdavrYufDfeezkoo80zfE0uo7dDgajMdcln1vv38DMzbBZsWHAoKVNmpnl
LMsnP8e/je/ivt49eW5GH+7/YRKTfg65qfjsNnnoS91uu/G6U8YPxzurrRz7ZQpv/mNKOeIwiuuN
h9HUvwrNJn/H/cnPxmAyYnj4A765bSZPvr8ji+uumajUeRRvDCvHjvfe5utdjk/31q9HEkUAJQMM
kFo68ihJKV+d65HXM92cx9npCwVdvxGKwYgBGzYHL8RQrTevjLof+19z+WhuCNf1SnR+cRQtXdfa
nOX0Ps3P9Sx936X+Ke4yoSGXCQ05zNGEcnz6fA/aLdzO8suqb3mzoWlp629+yvjFTIqGQgjhHhvX
r6dnr145fv/p0asX69etc0mb3F0wkzFKuEKETaOyIevPWOmvaZh6qnL6ax5mdNWatyOC861wuOff
fxkwcCC3t2zJzh078mu2uValalU0kNOURYFp0NDhrRYKlD38JGeS7qd+cAUMx5NPw8VYiQYNSpF4
5iThNtJOkXNqvufPcs7Sg+qVDFzcEJrjjSeUYqrAHUO6US12Nx9vvYrNknMf2c+f4ZylO/WDK2A8
nuFUZT2Ka1EaZatUxExYFnfVdV6O/ZtTZnoSiUlQwrcE6cpPKY8lcGHfCubt+4dtw2bwVvd7qft7
CAdUCPEW+zL5/d6D4CZVMR07k8X7Uicm7CiHw278xXD6E0Yd9rxRGDZWp8f4l6m9dQpzlh3L8r3t
3fAhxjxWmT1zJjI3m6IhgP3iMY5fG0TjRjUw/3scC+BVvwl1TJdYfzzzc52dXnmGCtStG0jSuTNc
sIH9wn+ct3ejbt0yaMcvZno95uq1qKYd4Ysf/+FAjA5aPOezOgfcnXLzPnW0njlT+c3Qd1kuRgc0
I8ZcHynrGk6damauQZOGgcSfOcn5Ajj8+bdff8XD0xNAvpAJIYSb/LV6NXffey8P9O/PL0uWZDlN
/wEDqFW7NjPefdclbVLhjsoyRuVdTqf9uvpags5w1R2VAY4nmKhszrzr2uvugVle0zD1modZFQ9P
JOatBJivpyp//umnjHn1VQ7s3+/SOysbjUZatGjBxg0bXLZMUfwYDHmozuUDPWYnfywP461+oxgR
v5AN5zSq3/kgfaue488vduX5WlJ61Hb+XNOPCX1G85JtCf8cvYzFswxV/S7wz7pjxCv0PV8LqEqD
4GAsJm8CKgbR4u4utKtyjbVzvmJTpI5OLvooajtL/+rHxAGv8gI/sf54BDafcnhe3MLOM2Hs3h5K
/wceZsRpM+vPxEC56vjdwiVacuzfnGZgD+f0WQv3d+xHt+MrOauVxf/6DrZdr8e9wQbOnblCgqkM
Dav6QkzUjTs5u5v91vpSj9nB78vP8Va/sYxkEWsOX8HiVZeK3tksMu4K4elXBKM30VYdy/WLhEck
gH8bnpv+HEG7ZjLuq33Ea2XpNPA+Sh35kX8ul6R6jZIpC0/iengY17za8Gz66S2HWb3iFHcOeJrh
579nc2RF7nm0E54Hv2bNSRuav3PTq89A6ZZ9eCB8E8evQOWOA3ngtous/XZ38rp0fRurNw9i9MCR
PJawmK3/6ZS/vT3VjXAQsIaFcl7rzr0D7iRi81mu20pTzieHRbpaDu9TQ4Xb6Zyn9SyHvjMHcW//
uiSeOMvVeA2/yk3oMrAlHJvH7kuKrMT2aKJiNMo2akfTiuf592LWk3lXCaZpI08SPMrRqOsgepU/
xc8f/Ftgd4Ze/OOPBTRnIYQQuWGxWJj6zju8NnEiQUFBLFu6lJCQEADq1K5Nj169qFW7NiVLluTh
Rx/lm7lzXdIud1zjMCN3j1GF9RqHKhcGU7njmoYZbYs1c5dfhsKhZsCrfa9M1zRMveahZ4eexP/1
Q6Y7K2+Jdf6OypDPhcOzZ8+yfds2BgwcyIL58/Nz1tlq0rQp586dIyIiwmXLFMJ1Ejm+cDLvJg7j
wQde5vUAuH7mX36d+jW/nbiVk1PjODjvLaZHPcKAe4YzepA3xF3h7JYFbM9NYcslbMRFRWNv3I/x
k/pht8YTdekcIft/Yfp7q9gdnrqDIjd9FM/h+W/zbvSjDOo6grFDPLFG/ce2efvZdeYqZ36dzcf+
TzKw/8u09zVgiYnk0vEDnL6W1xNLb7F/9Wi2zv+cBi8OZdDY1hjjLrBn4Ql2nbmNNn168kgFP8y2
GC6d3Mm8D3/jjDL1KNst9mUSJxZOYkr0UAbf9zhjBvpisMRwNfww2/+7hTvypj9V3VSNOjU98fEd
xuTm6Zt+jl9eHcnCyxmmx0bob9OZ5fkUDw8Zwx2ecfy3exHvfrmai3rKafJOTK8+nSSrH437PccD
5czEhh1k1ayvWJR6t1w9ml1fTubzxGH0GDSKzr5JnD9xBZuuY9fBdupXPvgikOEPPM64HiUwWBOI
jgwj5EKMe1/WTbJ/nxpLZrOeZbsPKfu+07x9KFOzE526VaN0CY3Ea2Ec2/EV7/y4inBVzmHXL7Fx
8R/cPqILD3fZwd4FGXYE6zGcO3SE6y378sobvphsMVw8vp0Fb3/Hiox3jhZCCFGkREREMG7MGDp3
7cqQhx6iWrVqoGmEnj3L+nXrmPHuuzz86KPc36MHgEuKhyocdehuxfV1FzRVCptbYs2ctxioaE73
YVG3c23yI5kKgwDxaxcR/89PmR4LtxjYlsfCoda8adMsv8YkJiVxW7VqTs/Q09OTadOn89WXXzp9
/bcjx45RuXJlp55ToUIFWrZqxYrly2+6cUVuhYWFUTIgwOnnicLh4qVLNG3cOFfTLvn11yw3ulkN
Ro6mFTecCQ3N0zZEuI9kVjgUaE6G6gyYOYOOe15j5IKQXN8MxFClP9Nm383B119g/vGCrWIr+z7N
Y9/lJ2X7RhFnQkMJ8PNzdzOEEMJtzp47R/ly5bJ8LK/f/7Py2PDh3N+jB7NnzmTL5s0OpzsTGoqn
R9Y3T8vP9uSWO8ZRFfvAUXuE+7T3tfB6hdhbmsfb533yXDjM97sqJyYm8t7s2YwdN47nn3kmv2ef
SZu2bVm3bl2eioZCZJTbw7yFEKL4MlK1bTeCtHAuRMRg96lGy749qHpxLV+dVubQVyGEEEK4yTdz
53Ls6FG2btni7qYIUSRsjjHz8zVP+pXM29X4f4r0zHPREAqgcAgQevYsP//0U0HMOpMD+/dzLTLS
JcsSRZszRxDK0YZCiGJLK0G5oDb07FidsgHeaAlXCT34F3M+XsxxOVNVCCGEEJDtkYZCCOd9fcUb
XYf+gc4VD3+K9GTe1WwuGJ8LBVI4BPhn7dqCmvVNTp486ZLlCCGEEEWe/Sw/vTKQbHf96dHs/vZ1
dn/rqkYVErnpOyGEEEIIIfLADsy96s3hBBNPlImnkjn7C2SHWwx8ccWb7bdwpGGqAiscCiGEEEII
IYQQQggh8sfWWDM748y09bHQ1sdCbU8bZU3JRcTLVgMhiUa2xprZGmvGmk83ZpTCoRBCCCGEEEII
IYQQhYBVh40xZjbG3PrRhLlhyO5Bm61oX+TcZrOhaZq7myEKkEHyFUIIIYQQQhRzNpsNgyHbr/8u
/f6fm2UVh3pEfkyTX4p6f4u8c7jlMBgMxMTe2u2eVRcXF4fJJAddFmWeXl7Ex8e7uxlCCCGEEEII
4TYxsbF4eno6fNzV3/9jYmOzLWQWh3qEan2QU3tE8eXwXaFpGlFRUVyPiipylWebzUZ0dDQxMTF4
e3m5uzmiAPn4+HDm7FkpHgohhBBCCCGKHZvNxvWoKKJjYvD18XE4nau+/6e2JyoqKtuz/4p6PUKl
Pshte0TxpTVv2jTLyyXquo7NZkPXdex6Pl1RMQeuKu5omobJZMLby0sq6sWAzW4nKiqKxMRE7Pbs
7zwkhBBCiKLLaDS6uwlCCOFSBoMBT09PfH18sv3u68rv/wZNQ9M0jEajw0KVO+oRrqRaH+SmPaL4
cnierqZpGE0m7DYb6HryTwErGRBQ4MsQxY/RYCCwZEl3N0MIIYQQQgghlOSy7/+ahkHTMBgMOR5t
5+p6hMuo1ge5bI8ovrK9wJ9G8p5Z2TcrhBBCCCGEEEIUXap9/1etPe4gfSBUIOfpCiGEEEIIIYQQ
QgghMpHCoRBCCCGEEEIIIYQQIhMpHAohhBBCCCGEEEIIITIxRURGursNQgghhBBCCCGEEEIIxWjx
8fFF6PZEQoiiIjQ0lKCgIHc3QwghhBBCCCGEKLbkVGUhhBBCCCGEEEIIIUQmUjgUQgghhBBCCCGE
EEJkIoVDIYQQQgghhBBCCCFEJlI4FEIIIYQQQgghhBBCZCKFQyGEEEIIIYQQQgghRCZSOBRCCCGE
EEIIIYQQQmQihUMhhBBCCCGEEEIIIUQmUjgUQgghhBBCCCGEEEJkYnJ3A4QQQlUxVyLZ/+tqrpw4
Q1xkJJoOVosFu9V203RGTcdo0DFiT/5XS/7xK1+aVmNH4RUY6KZXUHRIFuqQLNQhWahDslCHZKEO
yUIdkoVaJA91SBa5o8XHx+vuboQQQmQUGhpKUFCQ25YfduA4q6Z9SdT5S9ji49EtSWjYAR3dnnmz
adR0TAY7Js2OyaBj0ux4enlQuWUTWo8fW+QHk4IkWahDslCHZKEOyUIdkoU6JAt1SBZqkTzUIVnk
nvH1119/y92NEEKIjK5fv07p0qXdsmxLYhKLRs3g/OEQkuLisVts6LoOuo5G1vtadDQ0QNO05D9o
GrrNStzly0SdOkmF21tg8vZ23YsoIiQLdUgW6pAs1CFZqEOyUIdkoQ7JQi2ShzokC+fIEYdCCCW5
84jDfcs38sv4D8BuxZByGLpB0zFA8r+a481m+j1QxtQ9Ud5mAqtVxmgypM0rbZ6ajlGzY0DHqIHB
YMeg6ZjQMaQdBm/HoIHJoGH0NmMye2LyD8BUpTZezTphrhnsus5xMclCHZKFOiQLdUgW6pAs1CFZ
qEOyUIvkoQ7JwjlyjUMhhMjg1I6D2Gy2lH1K6Wg66Ml/czSYWHUD6HbAAHY7mkEjKd7ClROnMKUb
OJKvjWFPuz5G2v9T/m5K/bsh5f+p/5rzeDNiAAAgAElEQVQ0zEYNo9mE6eBWEjb9jnf7nvj2f76A
e8U9JAt1SBbqkCzUIVmoQ7JQh2ShDslCLZKHOiQL50jhUAghMrh44hy6roGmY08ZONKGlJQBRNM1
NAeDic1uAEPKYKID2MFuQDPYU+alodlBMxjQsCcf8k7y/7EDBkPycwD0lOEsdZ5WHew2dKsFPSEO
/foVYld9j6lmQ7ya31UQ3eFWkoU6JAt1SBbqkCzUIVmoQ7JQh2ShFslDHZKFc/KlcKjrOps2bWLT
pk2cPHmSqKgo/P39qVWrFh06dKBDhw43zgMXQgjFRV2JTP6PrqGnG0xuoukYHQwmOsmDiWawo9k1
dIMBqz0Ro/3GniVDhj1OyXumwIg9wyHr6fY+aWAyJD/PbLRj1sDTBB7XrxC7aVmRHNQlC3VIFuqQ
LNQhWahDslCHZKEOyUItkoc6JAvn3FLh8NNPP6VLly589tlneHh40L17d55++mn8/f25fv06R44c
Yfny5fz++++MGTOG8uXL51e73U+P5sz2TZzyb89dDfwzHuAqhCjELPFJaZfE1dINJhnXc01Lvg5G
Vuu/DljtBnQDGLBg79KRJH+/TDtR0v+e3WPJbdEx6sl7prxtSQTEX+W2UzsoH3sRw4l9zr/QQkCy
UIdkoQ7JQh2ShTokC3VIFuqQLNQieahDsnBOnguHly5dYs2aNaxZs4YhQ4bQr1+/mx4vVaoU7du3
p3379qxatYoJEyYwZcqU3BcP9Qh+fvx2nlpygXgbGD38KFW1Hq3ve5hRYx+jdVljXpuePyy7eW/I
g+x76V/ulMKhEEWKNdF60720UgcTW4Y9Uam/GTQ9y22AHbBrdoz3tCE8IZ6kqOs3P9/JQSX1B8Bk
MuHp6Udoo14En9pGw6snQNehiB3dLVmoQ7JQh2ShDslCHZKFOiQLdUgWapE81CFZOCfPhcPdu3en
/X/nzp307t0bkyl5dv369ePnn39Oe7xr164AzJw5k+nTp2fqoKxZuXYlAmurcfwxpSs+SVFcOrGe
r6ePotv6UJavm0SbEnltvRBCOGaz25MPW8cOmo3ka1bo6JoOOsl7pDQdO6mHoSfvjcq0h8pkwNC5
JeFJ8SQmJjq1tymrx3RdR9d1NE3DYrFgsViIi4vDWqU5la6do0pSApqnd351gxIkC3VIFuqQLNQh
WahDslCHZKEOyUItkoc6JAvn5LlwGBoaSrt27WjWrBmtWrVKKxo60rVrVzZs2MDmzZvp0KFDrpdj
KF2XNm1a4wvQqTP3VrtG4wcW8P2212lztwdYQlnx7nim/bieQ+E2yjbrxcgZ03myeUByqLaLrH9/
HG98sZL9Fyz4VG7Oc3OXMr6NZ/bPtYfx29inmLbyEGfCrhKLL5Uad+OFGe/xXKuUeWNh+7iG+IwD
8KLPgjAW9pdqphCFncVuxW634FneF9/gyhDog+5lQjfdfKRzToOBrutcuHw50yCS0a0czq7rOlev
XedkmSAaWi0Yi9igLlmoQ7JQh2ShDslCHZKFOiQLdUgWapE81CFZOCfPhcMRI0Y4/Zxu3bqxadMm
pwqHGXmWCsSXeOLidCCWLW/0YehP1XhlxmLmVI7g7+kjGTNwPNX//YSu/vHsntqHfh9a6T3hE95s
HkjihauUrGHO+bk+kRzetJlLDd7i6w+b4RV7khWzJzJ+yHiC9nxCF08AM01eXsSXQ6tgwEBA1aK1
MglRXFntVjyCy2FuXJWIuDgSYiKxRFrQ9RsHtOe0gc/tYJCXPVEZf9d1nTAPv+xeUqElWahDslCH
ZKEOyUIdkoU6JAt1SBZqkTzUIVk4J1/uqpxbDRo0YN68eXl4po4tIYrzxzfy7ZvzOVWmG5PaeqBH
/sr7X4dzz5y/eK1vaTSgyZxQVgdP5Zct79G17XLe++QIDV7dzucv1b3pxeqRS7N/bmcADb+6Hely
VwtM3EGnymf5+86FrNproUvr5Pl4VahDw4Y1Mdxi3wghFBLggV6nLOcvXEgbPApqD1Ju55PTtFcN
Pg6nLdQkC3VIFuqQLNQhWahDslCHZKEOyUItkoc6JAunFFjh0GazYTTefJinn58f0dHRTs0nYekw
ynoPS/5FM1G+9eN89Ps79CqtYd2xj0Ox0Zx9uhaBz6Q+w441yYD3hWiSju1mX1wVenSsmemFWk9k
/9zMN9wGY/VaVDdEcCXS7tRrEEIUMhX9iLwWmfarCgNFTsuMNxiw6+Dm20blP8lCHZKFOiQLdUgW
6pAs1CFZqEOyUIvkoQ7Jwil5Lhw+8cQTTJ8+nVKlSmV6rFWrVsycOZNRo0bddO3DqKgo/PycO7zS
845JrJzelRKxu5j56Mus9Q+mfepdjHUdDBUY9PkfjGmW/qUY8K0QiHbUnmUBkNw8lwuZnqIZzZiw
Y0utGzp+DwghCrFED53UFVyVgSKn+djsOlarFbPDKQsnyUIdkoU6JAt1SBbqkCzUIVmoQ7JQi+Sh
DsnCOXk+w7ZmzZocOXIky8dGjRoFwKxZs7Dbbxydd/jwYWrXru3UcjT/agQ3bkzjto/x0TfPUXHD
BJ764CBJgKl2I+p7XuZAiI0adetSN+2nDpUDjJhqN6aB539s3ngKa4b55vTcnBvmjbc3REVGIccf
ClG02BxsAtw5UORmWqs145au8JMs1CFZqEOyUIdkoQ7JQh2ShTokC7VIHuqQLJyT58Jhp06dWLFi
xU0Xj0xlMpkYNWoU7du3x2C4sYiVK1fSsWPHPC5Rw7/9G3w2shZ7p73Mp0etaKV78vywmhx772GG
TfuBles38s/yhXz8/XaidNBK9+SFYTXY/78HGT5zMas2bGTt0u9Yuj8ux+fmyFSHZsFehCyewWd/
ruefZQv4aXuk4yMchRCFhj1ls+XMxt8VA0VOy0y/o6aokCzUIVmoQ7JQh2ShDslCHZKFOiQLtUge
6pAsnJPnwmG7du1ITExk1apVWT5uMpluunvyihUrSEpKol27dnldJOBNi1GzeLLSTt59fSHhdn/u
mLqMxWOaEjZ/NEN6dKffk5NYtO0/onUAPzpOWcpPY4I5/dVLDL6/B4Nf/IClRyKxk9Nzc6CVou/k
OTxafifvDOlBv6dnsWTfBTn6UIgiwNvfxyUbf2emzc18jCV8Hc67sJIs1CFZqEOyUIdkoQ7JQh2S
hTokC7VIHuqQLJyT52scGgwGRo8ezYQJEwC47777HE67YsUKfv75Z6ZOnZptJ95EK8fwpdcYnvHv
Pu14d+913k1rSBW6jPuWLuMczMdchc6vzqfzq1k/5vi5wby2LZLX0v8p4EF+inww7VeP2oP58J/B
fJirFySEKCxctfF3xV6rwk6yUIdkoQ7JQh2ShTokC3VIFuqQLNQieahDsnDOLd1VuXz58kyZMoWZ
M2eyceNGunXrRoMGDfD39+f69escPnyYlStXkpSUxNSpUylXrlx+tVsIIVzCHRv/W5m2KJMs1CFZ
qEOyUIdkoQ7JQh2ShTokC7VIHuqQLHJ2S4VDSC4eTp8+nc2bN7Np0ybmzZtHdHQ0fn5+1K5dm+7d
u9OuXTslXqwQQuRG6vbKHQPFrey1KookC3VIFuqQLNQhWahDslCHZKEOyUItkoc6JAvn3HLhEJJf
TIcOHW66pqEQQhQlrhoo8muZRZlkoQ7JQh2ShTokC3VIFuqQLNQhWahF8lCHZOFYnm+OIoQQRZWu
68oPFCruiSoIkoU6JAt1SBbqkCzUIVmoQ7JQh2ShFslDHZKFc6RwKIQQGag+ULh74HAlyUIdkoU6
JAt1SBbqkCzUIVmoQ7JQi+ShDsnCOVI4FEKIbKg2UKg+qBQkyUIdkoU6JAt1SBbqkCzUIVmoQ7JQ
i+ShDskiZ1I4FEIIB1QfKFQYRFxFslCHZKEOyUIdkoU6JAt1SBbqkCzUInmoQ7LIHSkcCiFELqgw
UOR1mUWNZKEOyUIdkoU6JAt1SBbqkCzUIVmoRfJQh2ThmBQOhRAiC4VpoCjqA7pkoQ7JQh2ShTok
C3VIFuqQLNQhWahF8lCHZJF7UjgUQogMVB8o3D1wuJJkoQ7JQh2ShTokC3VIFuqQLNQhWahF8lCH
ZOEcKRwKIUQ2nNn4u3OvldFodPicokKyUIdkoQ7JQh2ShTokC3VIFuqQLNQieahDssiZFA6FEMIB
V+yJcmba7AaRoj6oSxbqkCzUIVmoQ7JQh2ShDslCHZKFWiQPdUgWuSOFQyGEyEJBb/zzMm1Wj6UO
ItlNW9hJFuqQLNQhWahDslCHZKEOyUIdkoVaJA91SBa5J4VDIYTIQX5v/PNrWhUGEVeTLNQhWahD
slCHZKEOyUIdkoU6JAu1SB7qkCyyJ4VDIYTIwGC4sWl0x0CRm71WWQ0i7h5QCoJkoQ7JQh2ShTok
C3VIFuqQLNQhWahF8lCHZOEcKRwKIUQG6QeS9Fw1UOQ0H0fXuCiK1yCRLNQhWahDslCHZKEOyUId
koU6JAu1SB7qkCycI4VDIYTIIHUgcddAkd206QeRjNOaTCaHzy2sJAt1SBbqkCzUIVmoQ7JQh2Sh
DslCLZKHOiQL50jhUAghMvDy8nLbQJHdMrMbRIxGY5Ec1CULdUgW6pAs1CFZqEOyUIdkoQ7JQi2S
hzokC+dI4VAIITLw8/O76XdXDRTZTZvdIKJpGmaz2eFyCzPJQh2ShTokC3VIFuqQLNQhWahDslCL
5KEOycI5UjgUQogMypcvn/Z/Vw0U2T1mMpkcXs8iddoyZco4nF9hJlmoQ7JQh2ShDslCHZKFOiQL
dUgWapE81CFZOEcKh0IIkUGLFi1ISEjI9PeCGiiymzbjIJLVMuPi4qhXr57DeRRmkoU6JAt1SBbq
kCzUIVmoQ7JQh2ShFslDHZKFc6RwKIQQGdSsWZPWrVsTFRVFQkICVqsVXdfTfiD/Borsps1qz5Ou
69jtdqxWK3FxcVy9epUKFSrQunXrXL++wkSyUIdkoQ7JQh2ShTokC3VIFuqQLNQieahDsnCOFh8f
r7tt6UII4UBoaChBQUFuW350dDS7du1ix44dhIWFkZCQgMViQdd1LBZLts/N7Z6p7AaYrKZNHVhM
JhOenp5UqFCBBg0a0L59e0qWLOnMyytUJAt1SBbqkCzUIVmoQ7JQh2ShDslCLZKHOiSL3JPCoRBC
Se4uHAIkJiYSHx+fNoBk3AvlapqmpQ0uBoMBs9mMl5cXXl5ebmmPK0kW6pAs1CFZqEOyUIdkoQ7J
Qh2ShVokD3VIFrlslxQOhRAqUqFwKIQQQgghhBBCFGcFco3D48ePExISUhCzLhzs51n38Ru8t+oi
dne3RQghhBBCCCGEEEKIPCiQwuGKFStYsWJFQcz6Bj2aM9tWsPZwFModMmk7w/KPPuSXg9fVa5sQ
QgghhBBCCCGEELmQ74XDqKgotmzZwubNm4mOjr6FOelc/3cuL/VoQY1yAfgFlKN6ozsYPPkvLtoB
y27eG/Igk/66IsU5IYQQQgghhBBCCCHymSm/Z7h582asVisAW7ZsoWvXrnmaj37lF57v/RJrqj3M
uPffol6gzpUTO9ltCCCgQI6TFEIIIYQQQgghhBBCpLrlElxiYiKXL1/mzJkznDx5knXr1qU9tm7d
Ok6ePElYWBhXrlzJ8ZbW6VkObmDz9SoMnf4BLz3Yk6739eKhF95h9nOtuHE/GQvbxzXEx9sbb+9A
HlwSB9g48dVgmlYvR0k/f8re1pL+b68i3JbyFPtFVk0azF1Na1C+pD8B5YMY+v157I7+DmAJZcXk
h7gjuAplSlWk/j0j+OLfdKchJ5zg53F9aF6tNAGlqtCkxzusvybHQQohhNvZQ/l13GCe/vo4tpyn
FkKIok22ie4l/Z879nDWfvAaM1ZckOvFCyGEAm6pcLh48WKGDBnC008/zahRoxg7duxNN0U5fvw4
Y8eO5cUXX2TEiBEMHjyYJUuW5Grepmq1qWE6z98/riQ00dFUZpq8/Bs7du1i164tzOjiDRgo12Y4
73zzB2vXr+LrF2twcPZwxi9NKfTpl9m9fAWnaz3LV7+t4M/vZ/Nch3IYHP2dWLa80Yeh82Lp8s5i
/lr5JcMD1zJm4HhWRwH6dda82ofH512kzbhv+PXnLxhzhz/xiVI4FEI4wbKVCY3LUn/UOuLd3RaV
OdtP9kvs/OM3Np2OSR4DMj5fj+b0lj9Zc0jB6+UWZvJ+VpdkU3gUxPYp4zZROCb97z620yyb8x5L
9sv14vONIp939KjdfPpYe2oEemE0eNB88iES9/2PtuVqMeLP5LzTT2P29Oe24b9y3Y1tdjfps/wj
fZl3t1Q4HDhwIE8//TRGozHnBRkMPP300/Tv3z93Dav5JJ98OATPn4fQpF4Hhrz2BX+fyjzIelWo
Q8OGDWnYsD5V/DVAIyC4Mz3vbkPz5m3p+dLbPNYwlt3bj2G9MXcCGtxNtzvb0+HeHrStbnT4dz1y
Ke9/Hc4978zltb7taNaqB6/MGUnrK3/wy5ZE9IhlfPZDOLdP+IGPnu3F3Xd1Z+iYl7ivvJxPLYRw
gsGfykF1qVulJDlvUYuxbPvJSujiR6jt6Um7WSezPkoh4/MtO5kxoB9vrLwsX07y063mJAqOZFN4
yPbJvaT/RVGixPvZwo4pDzHyn3I8O281W7auZ97jdTD5VqJO3bpUCzSjZZhm0/plfPNSe/zc1mZ3
kz7LP+7sy0RO/zmVhzvUpoyPFz7lgrjziU/Ymf4sVVsYK9/sQ+OKvnj7VaHF4OlsuOzE4wXslq9x
2LlzZ6pUqcKsWbOIjIzMcpqAgABefvllGjdu7MScvaj70Kds6fsa25cuZP43sxnU7H+0HP89C19t
R0mHz0vk9NJpvD77V7Yfv0CcZyCeMVZMbRKcfGXJrCf2cSg2mrNP1yLwmdS/2rEmGfC+EI0l5ABH
k6rQq03VgrlFtRCieDA25Nklm3jW3e1QncN+0rm8aiT3v/gPid5aHp4v8tWt5iQKjmQjhBDCHexn
2bjxLFX7f8PLvdtiTnvgUeZvfDRlmhAH0xRT0mf5x519Gb2e6WMWcK3nK3w6vjr6kYW8/eaL9DPV
4chnnfHBwsGZAxgwK5r+075nRsXjfPXqRPoMDWD3ihHUMOT0eH411LF8WUT9+vWZOHGiw8fffvtt
J4uGN2glqtJm0Fg+WbmbtRNrsXvqS3x4IOXYwSw+19oOvc/QRz/lXPNRfLn0b/76eRp9q93Cy9R1
MFRg0Oeb2b59e8rPTnbv2cknfQPRNA3Q0e2yL1IIYeP45/2oX8EfL7MHfhUb02viCsJsADqXfn2E
at7BjNkUkzy55Qiz7yhJ5cGLOG85wKRm3tQbvzPd0dFFVf73k/XEFzw6fB13ff0lQytls823ZfV8
C1tH18aoaWiaN/0XxaX8+Sx/vjWQtnXK4luiFDU7Ps6nu3Jx2pQezd4vn6RjrVJ4mT3xrxTMQ9+e
wU4cfz5eHs9mkziQdnErnfDP7sW79EP8Gu1MH7qCC3Ny2Gc5KDJ97Sw3rkPpFdv+T8d2gX+mD6Vt
jUC8vXwpW/tO3tmSco0dWzhrpj5I6+oBeHmV5LbWQ5i29vyNa9vZ/+PnlzrTvE5FSnqbMXsHclvb
h3l/27V025kstk/2C6x4ox/t61ciwMsDz4DqDJofnry+5LTMokb6v2hIOM7i0d1pWN4HzxJlqdfl
TdZGphttsxsj7GH8Ouo+WgZVJMDLjIdPeerf8xQfbblSNI+advjZJIdtf/KF+514P2c3znBj/ald
gQBvM2bv0tS9bwyffP46g9vVoayPN36VmjJg+iYiUqPU44mLtxEyqx0emoamedD63WNYTs+ho1dF
RvyV5HAaGxTP9Uv6LP+4sy/9uvDB3v0sffdZBtx/PwNHf87k3n5c2LaFkzYgcSOffrybSk9/zmfP
96ZrvzF8/f5DeK+bwxe7rTk/7gL5VptMf23DjE6fPp0PS/Chwb0dqKKfIeSMDTRvvL0hKjLqpkEh
4dBuDtvb8eTrQ7mreUMaNmlOrcC8v0xT7UbU97zMgRAbNerWpW7aTx0qBxgxBTWnkfc51v19lKRb
f5FCiELNQPl2TzHtu5Vs2voP342sxYHpjzDmt2voaJTrM5M5/a/z8TOT2Rpr4dgnz/FOyH3Mfm8A
FYvVIcv53E9JB5j12Ftcf24B0zuXyWqfUg7MNB29nH0HDnDgwG7e6+YNxLLpte4MnBvDff/7lfVr
5/FU4Bpe7jualVHZz8128D0ee+FPAp6Yz7odW1n59QSG3l4RAyXocN8deB/9hw3hqSNXFBv/3oWp
fVc6+jrd8ALmupwc91n2ik5fO0uNdaj49n+qeHZOup+ek/dT5/kvWbrqD+ZNfpa7a5qBeLa/0Z1e
044SPGYBK1Z8y6gGh5jasweTdqacBaNHcmjDRi4Gj+K7ZatZsWg6fYwrGD1gDKvSiqtZbJ/0y+xc
uoxTtV9g/vK/+eunD3mxU3kMuVlmkSL9XyTo11n9Snce/uoi7V7/jj+XfsP4uwJuul58tmOEHsGB
tesIazCSBUtXsuyHKfTxWMXorvczdY/DC+UXUtl9NsnNtt+Z93N24ww31p8m41i08m9W/TCe4GNz
eGHcX5QcMo3vl/7GJw/6sGbCo7yzKf23ZAM1hi9k74EDHDiwh4XDa2Qx1meexlis1y/ps/zjvr40
e6Q7ftEewfmLSfjUqkNlA9hObWP7RX/a39MCz5RJ/DreSxvTabZtP48lh8ddsZPklk9VTrV79+60
/1eqVAm73c6FCxcA+Pfff+nUqZNT80vcMYfn5sfS+o6m1ChbAnvEUVZ+PJfjJVrzTBMzmOrQLNiL
TxbP4LOWT9FQD+VK2R70qRtMbf0Tvv7fD1Qa0JCypjDORuX9aECtdE+eHzaD3u89zDDTqzzStiqe
sf9xOLImDw9pjX/JHrzydH3um/kgDzOB4R2q4hmzjZAYOQJRiOJHI6BRV3o3Sv7t9maBHFzcgnnb
jmLt1wazVo6+s+bwQItHGDHiCoHLj9H10+8ZUNFA8dr1l5/9ZOHw+88wm5H8PaopXtquPLXIu0IQ
wcG10j486BG/MfuLMLp8vJ43+icXUpp9fJaVdSbx06aP6Nbd0+G87FcucUUPpPMdd9GmmQ/QPO0x
/7t60Mn8LMv/usKzj5dDi93A8vVW2r5zD6WUOzvUdTll12fZKTp97Sw11qHi2/8pri1l5oeHCJ6w
l69H1bvpQ7Ue+QczPzlK4wl7+eL5ehiBuzrWIfpgc2bOWsYrP/YnAAANv3p3cN89LTFxF3dWPsNf
7b5j+b8W7mubPK+M26fkDA0EBN/L/Xe3TFtu7pdZREj/Fwn61d/5aEEYrSat5vMXaib3c6dA9s1b
zuaUaXIeIzT8699F987JeXTp2gStZXven72Slxb0LjLXesv5s0k22/6U2l1u389A9uMMABp+Qe25
946WmGhP1ZCf+XN6A/o81Y8uHkA72PB9bzZtOoWtY72U6+pqeJStRcPg4LRl2TMdhZ55Gj1yUTFe
v6TP8o8KfZnE8bnPMfnfFkzY0J/SGlguXeAyZalYLt3Vp70rUqm0ztHzl7Dm8Lidgr9sXr7MX9d1
jh49iqZpdO/enZkzZzJ79my6dOkCwOHDh52dI0mepQi8tJoPRg/jgft7MvDZmWz06sW0X79heHUD
aKXoO3kOj5bfyTtDetDv6Vks2XcBQ5ORzH2vL8Y/x9D/rg50uGc4i6KCaFKzZB6OQgHw546py1g8
pilh80czpEd3+j05iUXb/iNaB/Cm5cQ/+P3t9kQuHMPg+++j16Pvc7RyB9rXDZDrHgpRrCRy6veJ
DGxfn6plSlK6Wg8+Pm4lMeHGniit3APMfLcb5xd+zb+t32bWgJyPqip68q+f7GHfM37mNR6b+QLB
HvnXQuvxvRyIjWbZ8Cp4e3nh5eVFiTqj2JQUzfnz2d+R0NxuBGPvucb7XRpx95PT+GnP5bRTQrUy
3Rhwl5FNf6ziqg5xG//gr/gODOhVScH3getyyq7PslN0+tpZaqxDxbf/k1mO7mJPbFU63lEr0554
67Hd7ItLfiztY76pDnd0rEzs3l0cd/AGN95Wm9sMV7kS4fzxA3ldZmEl/V80WE/s50hSVdq2q+Zw
2+D0GOHVlK53ViBqzy5OFKF+z81nk/z7nJnzOHMzIxWrVESLuczllCu+YKpA5fIQde3W744t65fz
pM/yT/71ZTyHv3yQLqNP0Xv+Il5plPrBS0fPtlqV0+MFL18+u4WHhxMYGMiUKVMYPnw4np6eeHp6
MmLECCZPnoyvry+XL192Yo4afk0eYcbi9Rw4e5mo2BiuXTjJzj8/5vl2ZdMa7VF7MB/+c5yL16OJ
+G8vi56qjxFfGj/+CWsOhRMZE0NUxAXOHtnBkucbJ3+oMAbz2rZI9r3T4uYPGY7+DmCuQpdx37L+
cDgR0dFEhB1hw4f9qJzaEGM5OrzwOasP/EdEdAzXL5/j8LZlTOtR3s3xCiFcyXZwFoMe/JDQFq8y
b+Um1v8xk37VM2xm9Uj2bthLnJ8/9h1LWHq6WB1qCORnP+lcWfEjqy4f5b07A/Hy8sLLtz0zjiWw
fXxDyj7yO7k6SSmrDbWug6EiQ77exd69e1N+9nPw8H6+7F8q+227ZyNe+PMYh34dTZP/5vJ4y/rc
9b9dxANoZeg+uDPGf35i+eUYNiz5k7g7B9OrgnqjhUtzyq7PslNE+tpZyqxDxbT/0+j2bL4M63n6
oqyZzJiwY0utWznVXXlbZqEl/V805OZ68XkYIzSDIXksL0py89kku22/E+/nXI0zGZg9zGi6DVtq
lpoHHmYNuz27dTW3ZP1ynvRZ/smPvkzi+FcP0mV0CD2+X81HPW8U9Q3lKlKOS1y4lG59TbhAeIRG
uYrlMOXwuCt2yObLMgICApgxYwZ169bN9Fj9+vWZMWMGJUqUyI9FCSGEshIO7OKgvQNPv/Uo99we
THCz26lTKv1mVufq8rE8u7AcE1YB7HAAACAASURBVNduYErj7Ux45nNCilntMP/6SaP0gC/Zd/gg
+1I/QO/+nsdreNJk5FI2T7uHtP14jr6QaN6U8Ibrkddvuj6IqU5jGnheYt8JGzXr1aNe2k8QVQKM
Wc/rpvn6Urvzs7y3Yg8rXy7Hjo/msiUppc09HqVXiXV8N38+3y2z0u3RPpRTsJbi8pwc9lkOikBf
O8sd65BDxbD/U5nqNKGh5zk2rj+Z6egnU90WNPE+x8b1p26cHW49wYZNYZRo0oKg3FwsyMH2yWF7
nFhmUbipn/R/0ZDcb6Gs/etI9teLd2aMsJ1ky9bzeDdsTK18uzCX++X82SSbbb+T7+ecxxnXypd1
upiRPss/+dGX0Rsm8MArR+m2YCUf9KhE+m8TxpptaF0+is3/7EnbYRuzaQ3bLDVo07oi5hwed8Wa
mS9vF1/f7K9ybTQa8fHxyY9FCSGEsjzrNaKO/iFfTl5A5UHBlDWFceb6jS8H+vU1THzpR0qN2sjI
5o0xfjqRX1pN5MWvu7PscTc23MXys5+MAVWpm/6iItYYSntoeJWrSVAlXzR7acqW0jn7z0+sOlGH
7jUzNMYURPPGXnywcBoftX6GRvpZLpftxaC2fXh5+P/oNmMQD5km8Fj7anjGnuNQRC2GPdwW/2yK
H7aTy/h8nZ3gxlXxSTrHusORUKoMaZ+3/Trz+KCy3PvmGMxlHuG37nm9lEbBcmVO9pz6zIGi0tfO
cuk6lE07imv/p9LK9GHkE/+j6zv9eER/nYfbVMJ87QyxNQbQu0kvRj9Xj7unDmaE7ySGNtQ5MH8i
/zvUgJc/6pG7ayE52j61ctCewFws05Bhm1jHv9BmIv1fNGiBvRnzfAPuntaPwbzJU52q4RmzhePp
rhef47YGG//9MZOpdQbTpiocXTiJqftq8Pj07kXqGm5amew/m/hFZbPtf8K593NO44yr5Wr9EjeR
Pss/t9yX9lAWTPqU8A5v82i1i+zfezFlxl6UD6pHRe+OPPNcc+ZPfoYXak9hcMUTfDXmB+LvnM2T
LUxgyOFxV4iPj9flR37kR35U+zl27Jhe+ETre754Qu9Yq5TuZTTqZu8AvXyNxnrP9/bqFj1J3/tW
M9271vP62ujU6RP07eODdc/Kj+q/X96nv93US687boducedLcIkC7CfLTn18fW+97cwQ3abruq7b
9Ysrx+l31Sil1x+zRU+y7s/0/MTj3+kj2lXT/T1MuneZenrfTw7pVl3X9aRQfcU7D+ptapbSvU0m
3bt0Db31iEX6OVv2ry5+8xT9nrpl9RImg270Lq3X7jBM/2jHNd2ebhrrwcl6Cw+z3uiNPQrn7bqc
ctNnWSk6fe0sV65DjhXf/k8nKVRfOXmw3vq2krqXyUP3q9hYH/b9ueS+s/6nr548SG9Z1V/39PTX
q7UarE9dE568fdF1Xc9ie6RfW6D38vLWBy5J0HXdwfYpq+elzTOHZWbcJhZk37iC9H/RYL2gr5/9
mH5HnTK6t8moe/iW1Ws266yP+v28btdz2NZY9+tvN/XQSze9R+9Yu5TuaS6hlw++Xx/7c4ie4OaX
VSAcfjbJYdsfYXfy/ZzdOKNnuf4kLBmoe3t217+5mjIKWA/rU1p46bVHp7zXHSzLduo9vYNnBf2p
1YkOp0meX07rVxEkfZZ/3NmXCcv0RwM1Hbj5x9RAf21XypKs5/TlE3vpweVK6J4+FfVmA6fp6y6m
+ySW0+MFTIuPj5dj5YUQygkNDSUoKMjdzRBCCCGEEKqyHWDS7a344b4NHPxfy/w5nU4IIcRNisqN
7YQQQgghhBBCCCGEEPlICodCCCGEE/RLX3Gfl4amZfFjLMvwlbm5o4fIDelr95L+F6LgyPolhBBF
Q3HYnsupykIIJcmpykJZ1ghOHQ4lKqvbEv6fvfuOj6LO/zj+mt1NI4QQQgtFemgBlI6IgJyAIoqC
iN2zKzYQVORAQUQFBDxUxHacnPqzICeK2A6liKCg0hUEBKUjAWISki3z+yMJhJBkd1O/Sd7PxyOP
lJmdmZ13vvPd+UyzXMQ2bk39qIp+u/sionVdurT+RYqP2peISPlQAbbnKhyKiJFUOBQREREREREp
XbpUWURERERERERERM6gwqGIiIiIiIiIiIicQYVDERERERGpYNLYuWgy15/XlOqR4UTWjKfXrS/y
/dFsd3Hy7uHTxwbRNq4yEVH16DBsCssOBTFcRESkHFDhUEREREREKpakpUwZPY+j3Ucy+935/Ouh
zhx6+z4GP/IlyQC42TjtSq58djsdxr7Jf+feT+M14xl03cvs9AUyXEREpHzQw1FExEh6OIqIiIgU
J3e6m5DQkMzfkllwTT2u2vwAa9Y+RlvPEoY3u4gvh37F+mnnEgYkLbqFFles5IYVG3iq7bL8h3dy
leI7ExERKTo641BERERERCqcU0VDwHeEfQfSiWzSjLoO8O5YxeoDVejepwNhmaNE9fgbXV07WbV6
H24/w3XSoYiIlBcqHIqIiIiISAWWztbXhjPphw6MfXwIsRb4Du7nEDWIq+k8NVpEHHVibQ7uO4jH
z3AVDkVEpLzQOfQiIiIiIlJBpbL5leu4eNQOLvvPF4xsE5r5dxsbK5/X+RsuIiJSPuiMQxERERER
qYDS2frq1fQd9SuXvPk5zw+MO7lz5KgZR00Osv+g99ToJ/az94hFzbiauPwM106WiIiUF+rTRERE
RESkwklaNpYrRv7MRfM+5Z+X1CHbRcc4G3elS63jfPPVj6Rl/u2vFV+yyt2Irl3iCPEzXDtZIiJS
XuhSZRERERERqVh8u5k3cTZ7z5vAjWcdYP1PBzL+boVTK74FcRE9uGt4e96YdBf3Nn2SYXHbeHX0
W6T2ms5tHVzg8DNcRESknLBSU1Pt0l4IEZGcdu/eTXx8fGkvhoiIiJRHaYu4KW4g/07MsSvkasWj
q9bxZAcXeP9g8YThPDTnS7YlR9NqwP3MmDWanjUzzyf0N1xERKQcUOFQRIykwqGIiIiIiIhI6dLh
MBERERERERERETmDCociIiIiIiIiIiJyBhUORURERERERERE5AzFUjjcuHEjGzduLI5Ji4iIiIiI
iIiISAko8sLhxo0bmT59OtOnT1fxUEREREREREREpIwq0sLhli1bmD59OiNGjGD06NFMnz6dDRs2
FOUsREREREREREREpAQUWeFwy5YtTJ06lREjRtCmTRtatmzJ6NGjmTFjBhs2bOCdd95h8ODBgU/Q
PshrA6sSM/Qd/soxKOX9q4mpejGv7LOLavFFREREREREREQkmyIpHOYsGmbJXjxs1aoVQ4cOLYrZ
iYiIiIiIiIiISDErdOEwr6JhlpzFw2Lh3ceSKTfQI74WVavWpnmPG5n29X68WcN9e/jvqAF0bd2A
WjFRRMXUoe2lY5jz6uNc3yuBerEx1GjUhWumryQx+0mM7t0snnQtPRPqUb1aHC373MHLPxxD5zmK
iIiIiIiIiEh5V6jC4ZYtW5g8eXKeRcMsWcXDp556Kvh7Htpu0k6c4ES2r3S3N9sIqXw/cRBDpm2l
9YjX+PDDV7i/5RamDL6cyWtPZE4jkc0rvuFgm9HMW7iYj/79EK22Ps/Icf+j6lWTmDv/XZ4bWomv
HruVySvTM6ebzMrxg7hubjJ9n3iXLz59hVtiljB66Bg+Px7cWxARERERERERESlrXAV9YdaZhikp
KfkWDbO0bNmStLQ0ZsyY4bfQmN2Jj2+jXsxtZw4I6w2AfXQRM17+hYSHV/PCXc1xAj27N+WvTd2Y
MXMx9827nGgALKKadeOCHh1w0Y162xfw6bMtGXjLIP4WCnSFFf93JStX7sTbvTmOxI947vW99Jn5
BY9eHosFtJu5m88TJvPByhn06x8W4JoSEREREREREREpewp8xuEvv/zCyJEj8xyemJjIrl278Hq9
p/195MiRbN++PeD5hPYYx6dLl7I029dnj/Ukq2zn2foDG1Lq0b1HY5xZL3I1pUf3OqSsX8uvntym
6qR23dpYyYc5nJr1mlrUqQVJR49jA55t69iUnMTiO5sQU7UqVatWpVrCI6xM/4v9+5N0ubKIiIiI
iIiIiJRrBT7jcNCgQfkOv/XWWwFISEhgwoQJJ/+ekJBAQkJCwPNxVG1Ch86dqZztbym7Y7A4lvmb
XaAiXkhoCJadjtdnAxZYoYS6LHw+X8b0bBsctblqzkJGn5N9NTmoXDsGqwDzFBERERERERERKSsK
XDgM1ObNm4t1+q749rSJmM03y3fi7Ryfcdah51dWrNxLpTbtaeoCvH4mktt0m7ahZdiLbPjVS6Nh
rQkt4uUWERERERERERExWbEXDn0+X7FO36o6gBF3NKf/lBu4J3IcV7ey2fjmRKZuacE9My/KvL9h
AaYbO5B7bprKZTOu5ybXw9zQrT5hyX+wObEx11/ThSo65VCk3PvrcCLrF3zO4W2/kZKYiGWDx+3G
5zn9aITTsnE6bJz4Mr5bGV9RtWLp/NCDhMfElNI7KD+UhTmUhTmUhTmOHDjEZ2+8w28bfubowUOA
TXp6Ol736ffMcVh2xhc2Dkfmdwuq14vj1unTqFK9eum8gXJE7cIcysIcysIsysMcyiIwxV44LH6V
6Dx+Ae9VepjHnr2Ztw9BzTb9GP3+FEZ2jCjEdKvQc/LHvBs7liffGMU1TyZBlXokXDGJQVercChS
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
6/NvZATRly7e/Ph0FhHjfwAcDgceHj4cqd6R4AMbqHb2r7gpFIykR0GKiIiIiIiIpJcRERGRrqn9
Espo0XD+/PkZ3aSI5BFHjhwhKCgoR7Y94p5exFyNAFwYRmzc3IOmCddGGNoM89pow/irI8eNPrxl
RKLDhq3lPZyIjiAqKip9owvTuKzNZqNwQV/a7lpA9dlrMDw0i6qIiIiIiIhkDY1/ExFJJMblxOWK
waN4fvIHlwK/fJieDkzHzaOQUyv+mabJidOnbykaJpaZ05dN0+TshYv8XSSIas4Y7CocioiIiIiI
SBbJVOFQIwdFJDdyupy4BxfDrUYZzoWHE3nlPDHnY266CFRWjRhMbT1p2YZpmhxz90npKYmIiIiI
iIikm0Yciogk5uuOGViU4ydOXC8WZteIwbSuJ7Vlz9ryJbusiIiIiIiISEaocCgikpi/D+cvnL/+
qxUKg6ltM8Jmw2VCSpd0EhEREREREUkPW07vgIiI1US5p/2U5JTuu52jFGNdJk6nM9nlRERERERE
RNJLhUMRkURikxm2l5OFwbQsq8KhiIiIiIiIZCUVDkVEEnFdOzKmp9hnhdOXXS5Xso8VERERERER
SS8VDkVEEvEqkO+2FPvSs2xa1mP3zp/sukVERERERETSS4VDEZFEblex73aMUhQRERERERHJKBUO
RURSYLVTklNbVkRERERERCSrqHAoIpJIfDHOiqckp7SsiIiIiIiISFZS4VBEJA2sfkVlFRFFRERE
REQkq6lwKCKSiGmali8MauShiIiIiIiIZDcVDkVEErF6YVCFQhEREREREbkdVDgUEUmB1QqDKiKK
iIiIiIjI7aLCoYhIMqxeGFTRUERERERERLKTCociImlghcKgTl8WERERERGR20mFQxGRJNxJhUEV
DUVERERERCQ7qHAoIpKI1QuDKhSKiIiIiIjI7aDCoYhICtJT7MvJUYp2uz3Zx4iIiIiIiIhkhAqH
IiLJuB0jD9OzbEpFQxUORUREREREJKupcCgikoTbdUpyZkcpxhcNdfqyiIiIiIiIZDUVDkVEUmGl
U5ITUtFQREREREREspMKhyIiidhsNw6NVjolOeHvSRUNVUAUERERERGRrKTCoYhIIgkLhwlZ5YrK
yc1pqHkORUREREREJCvljcKh6zg/Tx/B5B9O4srpfRERy4svHOZUYTClZRMWDRMv63A4kn2siIiI
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
nFuV7Y65KMf3q+SxK47LL4dulWm335Wj1lgqybTcf+KWGXrmrHz/iHNy9KA2mfHqG2ndo0mSqnRc
d88cd8lP0qV1JS//9YwcfMyeOWzgY7l0y1apymcf93zNo/Jmxtz9z0zo98tcfObqWeqdZ3Lr6Ud9
eK6+9cKZ+dFBt2a5Iy7K7d9ZLg2vPZm3unZaksszAAAAAAthiQ2H9a88maem1mTAGgOz1Bzeb9J/
zay61Iw8/MTzH66aW6rTSunff8WPYlZ9klSn7epDss2ma6Q2yfqdns2fN/h9bntwZjYecFP+9+JX
8q3f/DmHb9UuVUkG/mZcbh9wYq6954xssvH7n2/V75vZdMM15vtkVSbfnDPOH5sBh4zO2fv0SU2S
Ddbvlbcf+1rO+M2t+Z/Lt0qrt27JGec8nn6HjM55P+5T7KPVgI0zZPa/Bw1snTEj18vlo8dm1pZr
p8lnHvd8ziNJUpW6PoPznY3WSG02yDe6vJC/bHhlbntwZjZqeD0TK23yzcEbZO2BLZKsNp9nAwAA
AIAvk88lHA4dOnSeXx81atQ8jztvDzqZv8eh1HTrmRWqJ2Ximw2Z9dRDeeydqXlh755p8+GzXBoy
673qNH916kI/aGXWkw/kkXe7ZovBK370kJLaXhm8/nI54bb78/SsrbLq2Pvz0Oxtyi9jRp676Vc5
8vTrMvrJV/NuszZp9vas1K47/XOfxxpV5edquvVMt9nnqskme+agjW7IYVusmQe22zM/GrZbvjew
/ZJbngEAAABYKJ9L95lTDBw6dOh8RcJPq+ncK72Wqc8/Hngo03fZKJ++AXfmmAfy6PSm6dm7e2ry
aDKH8DUnVdW1qU1D6huSVCpJdaf8v/NuzMGrf/xUVGeZTm1SlVcXeP7vqzQeHysNc92m/rH/zU67
npua3U/NBacNSseqp3PRXrvkpo9vNE/HPQ/zmIOqmiYfnatmA7LvdQ9nkzuvyPDfnplh65+Rs4++
KX88eFDx3QAAAADw5bfk/kRdiw2z4zZd8upVp+TCMZ9aYTfzuVzxq0vzdOtNs8Nm7VJV1TzNmydT
3pwyXw/rqO21Svo2ez2PPF2fHn36pM+Hf1ZKl1Y1jQ/Q2Pi9B2WV5i/ln/947qO7h2c9nbvveSVL
rzIovWqT2l6rpl+zl/LPfzz70YNMZpv+2P0Z07Be9jpyp2w0qH/6DxyUnm0+9pXN43HPyzzmSdUy
6fmtYTn1hntz4/4d859zL829783jZwEAAAD4UlmC7zStyzePPjN737t9Dv/Ot/LQfntli9U7p2bi
Y7n90rPyu/+0yDYXnpSt2lcllZWy+oClcs7Vp2b4Wj9K/8q4TOywRbZZ87P3UNVuSPbf7dR8/4yd
s1vtIdnla8un2TsvZcybK2bnHdZJy/mYbcPEMfnbnXd+bPVdddr32yQHDuuT756yS/ZvcVS271fJ
o1ccm1MfXzn7/2bT939XsN2QHLDbqRly0vbZs3Jodli7c5q89ULe6bZ1Nu0zIL0q5+Tik36f5bbt
nw61L+eFKR9bO1g7b8dd1XrzxufRiPpnb8mFf29I/1WWT4v3Xszfn3gzadsubZfc9AwAAADAQliC
w2FS1W7jnHLHX7P26adk+B+Ozl4nT0790p3Td/2hOf22n2f3dTq8/5t9VW2z1fG/yd17/SLH7XBj
Ztb1zMa/WDNbNxIOk5bZ4MQ/5up2R+SEy36WHU6YmrTsmgFbH58tt5+/cPjev07JNpuf8rFXmmWz
C57PyF9cl2uWPiRHn7ZHrnw96bjKJjl45Ck5aM0PEmNdBp9wU65pd3iOu/DH+cEx76ZJ+z7Z8lcb
ZfP/d2AuOmN8Djrt4GxzzpTUN10mbZbtnbVWbP3+HcrzfNxLZ+1G5/HZZk54NDeccWYOf3ZSZjRp
ne6rb56Tz/tJVl2iryAAAAAAFlTVtGnTFvYZIHO0sL9xCHy1jRs3Lr17917c0wAAAICvrEUWDgEW
hnAIAAAAi5dfqAMAAAAACsIhAAAAAFAQDgEAAACAgnAIAAAAABSEQwAAAACgIBwCAAAAAAXhEAAA
AAAoCIcAAAAAQEE4BAAAAAAKwiEAAAAAUBAOAQAAAICCcAgAAAAAFIRDAAAAAKAgHAIAAAAABeEQ
AAAAACgIhwAAAABAQTgEAAAAAArCIQAAAABQEA4BAAAAgIJwCAAAAAAUhEMAAAAAoCAcAgAAAAAF
4RAAAAAAKAiHAAAAAEBBOAQAAAAACsIhAAAAAFAQDgEAAACAgnAIAAAAABSEQwAAAACgIBwCAAAA
AAXhEAAAAAAoCIcAAAAAQEE4BAAAAAAKwiEAAAAAUBAOAQAAAICCcAgAAAAAFIRDAAAAAKAgHAIA
AAAABeEQAAAAACgIhwAAAABAQTgEAAAAAArCIQAAAABQEA4BAAAAgIJwCAAAAAAUhEMAAAAAoCAc
AgAAAAAF4RAAAAAAKAiHAAAAAEBBOAQAAAAACsIhAAAAAFAQDgEAAACAgnAIAAAAABSEQwAAAACg
IBwCAAAAAAXhEAAAAAAoCIcAAAAAQEE4BAAAAAAKwiEAAAAAUBAOAQAAAICCcAgAAAAAFIRDAAAA
AKAgHAIAAAAABeEQAAAAACgIhwAAAABAQTgEAAAAAArCIQAAAABQEA4BAAAAgIJwCAAAAAAUhEMA
AAAAoCAcAgAAAAAF4RAAAAAAKAiHAAAAAEBBOAQAAAAACsIhAAAAAFAQDgEAAACAgnAIAAAAABSE
QwAAAACgIBwCAAAAAAXhEAAAAAAoCIcAAAAAQEE4BAAAAAAKwiEAAAAAUBAOAQAAAICCcAgAAAAA
FIRDAAAAAKAgHAIAAAAABeEQAAAAACgIhwAAAABAQTgEAAAAAArCIQAAAABQEA4BAAAAgIJwCAAA
AAAUhEMAAAAAoCAcAgAAAAAF4RAAAAAAKAiHAAAAAEBBOAQAAAAACsIhAAAAAFAQDgEAAACAgnAI
AAAAABSEQwAAAACgIBwCAAAAAAXhEAAAAAAoCIcAAAAAQEE4BAAAAAAKwiEAAAAAUBAOAQAAAICC
cAgAAAAAFIRDAAAAAKAgHAIAAAAABeEQAAAAACgIhwAAAABAQTgEAAAAAArCIQAAAABQEA4BAAAA
gIJwCAAAAAAUhEMAAAAAoCAcAgAAAAAF4RAAAAAAKAiHAAAAAEBBOAQAAAAACsIhAAAAAFAQDgEA
AACAgnAIAAAAABSEQwAAAACgIBwCAAAAAAXhEAAAAAAoCIcAAAAAQEE4BAAAAAAKwiEAAAAAUBAO
AQAAAICCcAgAAAAAFIRDAAAAAKAgHAIAAAAABeEQAAAAACgIhwAAAABAQTgEAAAAAArCIQAAAABQ
EA4BAAAAgIJwCAAAAAAUhEMAAAAAoCAcAgAAAAAF4RAAAAAAKAiHAAAAAEBBOAQAAAAACsIhAAAA
AFAQDgEAAACAgnAIAAAAABSEQwAAAACgIBwCAAAAAAXhEAAAAAAoCIcAAAAAQEE4BAAAAAAKwiEA
AAAAUBAOAQAAAICCcAgAAAAAFIRDAAAAAKAgHAIAAAAABeEQAAAAACgIhwAAAABAQTgEAAAAAArC
IQAAAABQEA4BAAAAgIJwCAAAAAAUhEMAAAAAoCAcAgAAAAAF4RAAAAAAKAiHAAAAAEBBOAQAAAAA
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
6rmx4hAAAABYjBoy8V8jc2WXDdO3Q/LiXSNy5TOd8t0frj379/Ya+fQro3Pzww3p3qNDlpr1eh56
4e2krmXqqpKqVutn6+/+IYdffXxOqtkhm/TvmCbTX88LUzrnO9/ul6WrW6Z1XSWvPfT3/OflLlm7
SyPbt1o/W2/6hxx2xbE5pbJDvt23XWreeS3TO30j6/Xoml4rNs31d/0hN6w8JD0qr+WtVl/LBv0a
GXOZr2Xb73fLwVcdmxOyczZbpWOaTn8sL0+bl/zVPL37dEvDrU/k2Vkbpn/t7GOe2xxX/Fq2+d7y
+fmVJ+Q3zXfNt7pV8twdv8uVz3fL1vuvM0/nOzVzPs6vL98jXSrX55Yr7kj7DXukVc3EvPrOgqxv
XDBVrdfPFt+4PMdecXLObb5jvrF8Mv6+v+XZ+mS1T29cmZA7RtyUNwbsko07vplnn3lz9iBN06bL
8mnbbECGfG+l3PH73+bsLrtnw7Yv59bz78qMgcOyae9GEtxczk+j18ECHPNnXftJ0vDq2Dw5pX1W
6d1ugW+8Fg4BAACAxapp7ZQ8cOXpuXLCe1mm62oZcvg+2XVgY49Fed+syc/m7quvzfnjp2RmbV06
rbRu9v7ptulZkyRLZ+Bev8ovW12YEbedm+Mufzdp0SE9Bu+Zr387Wbpq2Xxzx23yr9/enAtu+VrW
2KvfZ2+f5ln1hyflmJYX5LKbz8wxv5uemlYrZPCPVs/XVmyfb+x5QB459eJcduw/U99iuay5S598
o1+3RsZslpV3OTEntrw4v7tpeI69Ymrqm9alQ5dVsv4KSzcSfKqz3Lpfywoj7sg9T/0w/fvWJo3M
se+ux+eYZuflkqt+lcMnJ21WXDvbH7t3tutTPGJ6zqpazvk4h2ybn+//Rs6+enh+cf07aWjSPHVt
lk+fznWf868Fzn1e6+5/fH6y1PkZdfkJuXlqs3RZuWNqq6pT/ekJzHouTzw1I2+/fX4O+vfHXq/p
lu1/Ozy7r1Sb7tselSOnn5kLLj0uf57eIt3W2Sm/3G/zdG7sYOZ2fhq9DubfZ1/7DRn/r3vyfNt1
MmylBc9/VdOmzVPCBvhCjRs3Lr17917c0wAAgK+8J598MiussMKiGbzhuYzY74DcudZpuWCPPgt8
O+VXWuX13HLEj/K7uoNywaGD0/ILqXRfDg3jrswB+96W1U69MHv1/YqtnZvxcM4ddkQe2+Ss/Hb7
bgv8W4V+4xAAAADgy6qqQ761y5C0uueSjHh4Tk/n/aqozwv/uC63/v3feWjM43n0vj/lwt9elxc6
fT3r9/yKRcPMzLPXXpg/1W+UXYassFDx76t25gAAAAD+qzRbefsctGclTzQpH9nylVF5J68+cXdG
3fV8Jkyelkrzduk+cNMcdtCO6bfgDxX+kqpPTYfVs/2Pt85ayyzcElS3KgNLJLcqAwDAkmGR3qoM
LNHcqgwAAAAAFIRDAAAAAKDw/wGVQk0BQwoF7AAAAABJRU5ErkJggg==
--000000000000ee0ea305e0c32503--

--===============2017132665952245215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2017132665952245215==--
