Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6281A53DD32
	for <lists+usrp-users@lfdr.de>; Sun,  5 Jun 2022 18:51:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D1F2938419A
	for <lists+usrp-users@lfdr.de>; Sun,  5 Jun 2022 12:51:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654447909; bh=FAIOv2R8AVwrxDUa3TpK3ppzpNjm8Ze9slcckUTO/I0=;
	h=References:In-Reply-To:From:Date:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=yOacYJx512NDs14PhZtIYnnU5MQefgUjeckJg4A8vwv3MhfvRAL8lKx213bGGp+oN
	 OEKhp0VG33c4/pEgBq1kuXxvEimpDy53LFBq3VXrUHyFfV0TbdR+TorjuWUaKtJD+O
	 j31IqKWurlM7VfznLlKO356tbijBJnlJmqieC7x19GOHF/5fffrcbCs7ZL1jojegak
	 JC5Id0r5c2g6/+9cJqY82ovpCQ49LeZKAT6EinHq0b72/Ru6JHm4yOTtZc67OtQZQu
	 7ZcV75bXF09odhZrAIk7LqqlQHUzcAaCTxArhi4Nke7qxp9GnzpMz0LfywfsLCwAdU
	 49nlnvRzXEcqA==
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by mm2.emwd.com (Postfix) with ESMTPS id A14A638416C
	for <usrp-users@lists.ettus.com>; Sun,  5 Jun 2022 12:50:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kAoKDYGk";
	dkim-atps=neutral
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-30fa61b1a83so118116617b3.0
        for <usrp-users@lists.ettus.com>; Sun, 05 Jun 2022 09:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
        bh=FXaxUfnzhA4W0PwdpwwxEX44EFWjNEYCL6s+yMFcC/Q=;
        b=kAoKDYGkCk0nGnMdRS6mGVRsXKZg1oz3zzGH4PI+PE676HehPmvLHhMKtpaPFFW//j
         sXdFbPEUvv/D0+hpsfjcF7VWkn6v1mhDmPPfL6CWyAvzVQ/aTN4scBjQ/7BMoxQf24v9
         o7Tpb+mygVwPgyyKVcPpx7vo4qST4E+432fdR43JxE3sQO9qLdwoIwvd3hE9HTukx2MJ
         XdQYvkGcIstrRHgr3XGIMOvi1NjuyHOP96/BzBWCHVBZJE4tHcSMlwue+CjeiDBnxrr0
         nKdAzbLtZL6dG/a5yZZWHzSNr70WHJbMWW+QuRvZt6unID0bhh4bgfQE2A97dwwXi+aD
         TB4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc;
        bh=FXaxUfnzhA4W0PwdpwwxEX44EFWjNEYCL6s+yMFcC/Q=;
        b=Ciwywm3pWj9dPV/w0oDJLXALikmDegLtXfzN5Tzc33XDbHdLLZ4OvQ4TkD2u9o6NfJ
         aVvVxlfv3UBAkppoDcYHrG9UdZYWYsyq8n47K2P1Ia2jo+84rODd3zzmYSsebaeWfgSw
         ndXtgkudW1mdNYM6bGy2MX1OtYh3rLZzMKjCY1HJeW+9JMcGH9XPsNxonWiRGY3P/ze/
         Df1buc005QFyomP6Yqn+FStiYKlKosah2RI0wqPKItMP40qMBmM5MFp3ZH2Ed7sKoI3F
         KmPJW8+yHD03rO5kMYIVcfw2zTOH9Mi43h9gxYppBV8Zz1VzI8HMmzpBmIZxmne9uy17
         YO9w==
X-Gm-Message-State: AOAM533TO01kZhEuLbuyyq7lFYbsJpsT/YNL9KWaT8utT6DOW9vyF8Uu
	wo6nPYztjom6O8LYKr4mvc5B135aJMSzzzQrH2a8DhctbRccB+ORn5pkgQ==
X-Received: by 2002:a81:993:0:b0:30c:2287:7e6 with SMTP id 141-20020a810993000000b0030c228707e6mt14442908ywj.262.1654447848323;
 Sun, 05 Jun 2022 09:50:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQXYKCytT_8vzQwrJw=mRpNOfEyP93iHBVMfU59VtHEUZQ@mail.gmail.com>
 <CAB__hTSXdzfq2CDVJQOeEFoej_oPr6L=2H7Qr8n6PYX4f6fnTw@mail.gmail.com>
 <CAG16vQUa0NDnpxP1P9uu=7-4432oBobKwPj8WU6L1VgGY3OQWw@mail.gmail.com> <CAB__hTQ6Rpy6dpyqWYjg6f5z3xGUGRUc05k0OMMaQS_k+TWPYg@mail.gmail.com>
In-Reply-To: <CAB__hTQ6Rpy6dpyqWYjg6f5z3xGUGRUc05k0OMMaQS_k+TWPYg@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Sun, 5 Jun 2022 21:20:37 +0430
Message-ID: <CAA=S3PvcFooQUm716MFVT7MuLJmLg0=JceGB0UHou8H-SS7k7Q@mail.gmail.com>
Message-ID-Hash: IPT5XYKDSOEILEELWRLYCEVVYGLOINYN
X-Message-ID-Hash: IPT5XYKDSOEILEELWRLYCEVVYGLOINYN
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to add an ip core to rfnoc OOT block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IPT5XYKDSOEILEELWRLYCEVVYGLOINYN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3177919923998743845=="

--===============3177919923998743845==
Content-Type: multipart/alternative; boundary="0000000000004d11db05e0b6285d"

--0000000000004d11db05e0b6285d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, You should not expect that integrate or add Xilinx IP core directly to
RFNOC blocks, Even If you be a master in Verilog...
If you see the UHD source code you will realize that UHD is an RFNOC
framework for USRP ...
For working with the RFNOC UHD framework you should know more details:
1)Please see this link
https://files.ettus.com/app_notes/RFNoC_Specification.pdf
2)Any RFNOC block has two files, noc_shell_blockname.v  and
rfnoc_block_blockname.v  these two file are very important
the first file is a low-level definition for the RFNOC block and the second
file is the high-level definition for the block. I mention that we should
use IP core in the second file ...
And more details that you should study UHD source code till getting them...


On Fri, Jun 3, 2022 at 6:03 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Maria,
> I apologize but I am not very experienced with these matters. I am able t=
o
> copy the rfnoc-example folder to an OOT location and build it and I know =
it
> has both OOT and in-tree IP options.  In the past I have successfully run
> the 'make <testbench>' and also built an image such as "make <x300_core>"=
.
> But, outside of that, I don't really know what I'm doing....
> Rob
>
> On Fri, Jun 3, 2022 at 9:05 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wrot=
e:
>
>> Hi Rob,
>>
>> I try to put these lines in the makefile.srcs inside my_block/fpga folde=
r
>> as in the rfnoc example:
>>
>> #RFNOC_OOT_SRCS +=3D $(abspath $(addprefix ${RFNOC_EXAMPLE_DIR},
>> #my_other_module.v \
>> #ip/my_ip_core/my_ip_core.xci \
>> #))
>>
>> I add my .xci IP to this folder and give the name of the IP as a
>> rfnoc_oot_src. I can compile the block but when I try to perform synthes=
is
>> it gives me this error:
>>
>> ERROR: [DRC INBB-3] Black Box Instances: Cell
>> 'x300_core/bus_int_i/rfnoc_sandbox_i/b_3/top_i/my_clk' of type 'clk_wiz_=
0'
>> has undefined contents and is considered a black box.  The contents of t=
his
>> cell must be defined for opt_design to complete successfully.
>> ERROR: [Vivado_Tcl 4-78] Error(s) found during DRC. Opt_design not run.
>> ERROR: [Common 17-39] 'opt_design' failed due to earlier errors.
>>
>> So I think I am missing something. I do not see anything else related to
>> IP core. Is there something else I have to do?
>>
>> Kind regards,
>> Maria
>>
>> El mi=C3=A9, 1 jun 2022 a las 17:48, Rob Kossler (<rkossler@nd.edu>) esc=
ribi=C3=B3:
>>
>>> Hi Maria,
>>> The rfnoc-example folder within the UHD tree shows an example of how to
>>> add an out-of-tree IP block. Did you look at this yet?
>>> Rob
>>>
>>> On Wed, Jun 1, 2022 at 5:12 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wr=
ote:
>>>
>>>> Hi all,
>>>>
>>>> I'm trying to synthesize a design that includes a vivado ip core
>>>> inside.
>>>> Normally, I add my .vhd/.v source files to the Makefile.srcs inside my
>>>> block like this:
>>>>
>>>> RFNOC_OOT_SRCS +=3D $(addprefix $(dir $(abspath $(lastword
>>>> $(MAKEFILE_LIST)))), \
>>>> source1.vhd \
>>>> source2.v \
>>>> source3.v \
>>>> )
>>>>
>>>> But adding the .xci file of my IP core does not work.
>>>>
>>>> What is the process to include this file in the makefile chain to
>>>> compile it?
>>>>
>>>> Kind Regards,
>>>>
>>>> Maria.
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000004d11db05e0b6285d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi, You should not expect that integrate =
or add Xilinx IP core directly to RFNOC blocks, Even If you be a master in =
Verilog...<div>If you see the UHD source code you will realize that UHD is =
an RFNOC framework for USRP ...</div><div>For working with the RFNOC UHD fr=
amework you should know more details:</div><div>1)Please see this link</div=
><div><a href=3D"https://files.ettus.com/app_notes/RFNoC_Specification.pdf"=
>https://files.ettus.com/app_notes/RFNoC_Specification.pdf</a><br></div><di=
v>2)Any RFNOC block has two files, noc_shell_blockname.v=C2=A0 and=C2=A0 rf=
noc_block_blockname.v=C2=A0 these two file are very important</div><div>the=
 first file is a low-level definition for the RFNOC block and the second fi=
le is the high-level definition=C2=A0for the block. I mention that we shoul=
d use IP core in the second file ...</div><div>And more details that you sh=
ould study UHD source code till getting them...</div><div><br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri,=
 Jun 3, 2022 at 6:03 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">=
rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr">Hi Maria,<div>I apologize but I am not very=
 experienced with these matters. I am able to copy the rfnoc-example folder=
 to an OOT location and build it and I know it has both OOT and in-tree IP =
options.=C2=A0 In the past I have successfully run the &#39;make &lt;testbe=
nch&gt;&#39; and also built an image such as &quot;make &lt;x300_core&gt;&q=
uot;. But, outside of that, I don&#39;t really know what I&#39;m doing....<=
/div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Fri, Jun 3, 2022 at 9:05 AM Maria Mu=C3=B1oz &lt;<a h=
ref=3D"mailto:mamuki92@gmail.com" target=3D"_blank">mamuki92@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr">Hi Rob,<div><br></div><div>I try to put these lines in the make=
file.srcs inside my_block/fpga folder as in the rfnoc example:</div><blockq=
uote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div>#RFNOC_=
OOT_SRCS +=3D $(abspath $(addprefix ${RFNOC_EXAMPLE_DIR},</div><div>#my_oth=
er_module.v \</div><div>#ip/my_ip_core/my_ip_core.xci \</div><div>#))</div>=
</blockquote><div>I add my .xci IP to this folder and give the name of the =
IP as a rfnoc_oot_src. I can compile the block but when I try to perform sy=
nthesis it gives me this error:</div><div><br></div><div>ERROR: [DRC INBB-3=
] Black Box Instances: Cell &#39;x300_core/bus_int_i/rfnoc_sandbox_i/b_3/to=
p_i/my_clk&#39; of type &#39;clk_wiz_0&#39; has undefined contents and is c=
onsidered a black box.=C2=A0 The contents of this cell must be defined for =
opt_design to complete successfully.<br>ERROR: [Vivado_Tcl 4-78] Error(s) f=
ound during DRC. Opt_design not run.<br>ERROR: [Common 17-39] &#39;opt_desi=
gn&#39; failed due to earlier errors.<br></div><div><br></div><div>So I thi=
nk I am missing something. I do not see anything=C2=A0else related to IP co=
re. Is there something else I have to do?</div><div><br></div><div>Kind reg=
ards,</div><div>Maria=C2=A0</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">El mi=C3=A9, 1 jun 2022 a las 17:48, Rob K=
ossler (&lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@n=
d.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div>Hi Maria,</div><div>The rfnoc-example f=
older within the UHD tree shows an example of how to add an out-of-tree IP =
block. Did you look at this yet?</div><div>Rob<br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 1, 2022=
 at 5:12 AM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com" targ=
et=3D"_blank">mamuki92@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi all,<br><div><br></div=
><div>I&#39;m trying to synthesize a design that includes a vivado ip core =
inside.=C2=A0</div><div>Normally, I add my .vhd/.v source files to the Make=
file.srcs inside my block like this:</div><div><br></div><div>RFNOC_OOT_SRC=
S +=3D $(addprefix $(dir $(abspath $(lastword $(MAKEFILE_LIST)))), \<br>sou=
rce1.vhd \<br></div><div>source2.v \<br>source3.v \<br>)<br></div><div><br>=
</div><div>But adding the .xci file of my IP core does not work.</div><div>=
<br></div><div>What is the process to include this file in the makefile cha=
in to compile it?</div><div><br></div><div>Kind Regards,</div><div><br></di=
v><div>Maria.</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000004d11db05e0b6285d--

--===============3177919923998743845==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3177919923998743845==--
