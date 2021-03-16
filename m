Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE6633D953
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 17:25:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 357F9383D3F
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 12:25:44 -0400 (EDT)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 65A34383791
	for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 12:24:48 -0400 (EDT)
Received: by mail-vs1-f54.google.com with SMTP id z65so18500354vsz.12
        for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 09:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wtJS0Vr2mNc006hzGykuwC0Z/w4OPcKDAYjM9I2DENE=;
        b=FAJ43uDt8aNWCtQa+1LkSWdb1XlXgIH0qEbQXJrhAJ7wE0G5P57wF6AKiCm023YIzN
         NlXNe0lXL5n1gfYBVKdQK/SS5k9MHioXpve+sHdtd4edxmSBILXLqsnIT0cF92UgQb6o
         dr/4peyy9gCcjE6JWd6pz4IpBQiWzPKQS3j0q10aIYKzyo5MJQYJYRrZgsJgzyEZhmgl
         3mzImDCqfud2qTlax5+WMcBH+/lqtimSGsfsSP612lwl8X1KdHPX6b9slU1bRHjsWZjQ
         YJ9eEOYr5lQ4O0RM2C+tkvseByGZ/67khXaqPdEPnI7daUr5Bd8hC3qNUnb0j0Vy3hrz
         Iyxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wtJS0Vr2mNc006hzGykuwC0Z/w4OPcKDAYjM9I2DENE=;
        b=fUFORjbcHTulQ36Bp6XAlgSPnyeFQwAhZxe07ile8DhHe/+wckTqPfBGM6b3swgUCV
         q5af9pUvvciP0B3tAoI/r5P5pXI5g0RahwFngRSQiH9SwanErtNdc/X2QkJd4taZ1eqC
         C8qp5npglsZ7EwPn1NM4K791CKaR87dyEGrhttRHQa0CyJm7vmr4M9lNfbY3J78y6dhs
         vjJbr0RHrxcB9MTXTlhhfWuvpun69uGp3IlB7VmqgcT5gcPdn+8vWZ/H8CuCuTLGMSEP
         dGjgNXgYNeKIK8wTcLZTknw1gnxka2POWQeiiDvufAC23zSqlFctXdo5mX3xprteT7K3
         nSag==
X-Gm-Message-State: AOAM530J54B661vz2lok8aUC/xfk7iHvA5aF6DHxK0101/t9+oKFRrId
	U4SpF1Hhwe20DgnyRFKFH90s2yTCS/kwxivHMspnyd1g
X-Google-Smtp-Source: ABdhPJzlpHrGvK25mN2mANieTd2I/MtGad3cNR6A7cRNkp7k1vONzzGm5T9gCWk0a2xYO8oN5u8IgXcuw/xER/8Jq+A=
X-Received: by 2002:a67:2e8f:: with SMTP id u137mr209135vsu.18.1615911887926;
 Tue, 16 Mar 2021 09:24:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAFBYX1VosRU86TF-8fmLRkJmHEPC2M39-myO9KteXE=uDMQrsw@mail.gmail.com>
 <CAL7q81u8n=JxLXGAdxwa4LfwBpRBMtWxJXunmDJoVXQv+E1KXg@mail.gmail.com> <CAFBYX1UfeAvZ2gQCHGu+x_ZLQGE=wB_x=NQsQO4LsKrReRFOrA@mail.gmail.com>
In-Reply-To: <CAFBYX1UfeAvZ2gQCHGu+x_ZLQGE=wB_x=NQsQO4LsKrReRFOrA@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Tue, 16 Mar 2021 12:24:12 -0400
Message-ID: <CAL7q81taBAES+tYkM1++195gsdX8QDf_nRHKdYaaWd79B0PbSA@mail.gmail.com>
To: Julian Casallas <jcasallas2019@gmail.com>
Message-ID-Hash: USE7N5XNIJ7RTQERGCV2SZ54MRKLN2LO
X-Message-ID-Hash: USE7N5XNIJ7RTQERGCV2SZ54MRKLN2LO
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using rfnoc_create_verilog.py creates verilog files different from rfsocmodtool.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/USE7N5XNIJ7RTQERGCV2SZ54MRKLN2LO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5330012496563668705=="

--===============5330012496563668705==
Content-Type: multipart/alternative; boundary="00000000000011897e05bda9ce05"

--00000000000011897e05bda9ce05
Content-Type: text/plain; charset="UTF-8"

Hi Julian,

Generally, ctrlport and axis_pyld_ctrl are the correct choices. One
exception is when writing a block that changes sampling rate. You may want
to use axis_chdr so you can easily interface with the axi_rate_change
module. The DDC / DUC are examples of that use case.

Jonathon

On Tue, Mar 16, 2021 at 11:52 AM Julian Casallas <jcasallas2019@gmail.com>
wrote:

> Dear Jonathon,
>
> Thanks for your prompt reply, I checked the specification but before your
> reply, I was looking into the *rfnoc_create_verilog.py  script *and the
> block *demo* yaml file. I found the key *fpga_iface, *for control and
> data, has 2 options:
>
> 1.ctrlport or axis_ctrl
> 2. axis_chdr or axis_pyld_ctxt
>
> The specification mentioned them too. However, the RFNoC 4 video talks
> about payload/context interface so could you please advise which should we
> use to be consistent?
>
> Thanks
> J
>
> On Tue, Mar 16, 2021 at 11:13 AM Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> Hello Julian,
>>
>> For a multiple input / output port block, you will need to use
>> rfnoc_create_verilog with your own block definition yaml file. The RFNoC
>> specification (https://files.ettus.com/app_notes/RFNoC_Specification.pdf)
>> has information on the yaml file format in section 4.2.2. You can also look
>> at the existing blocks in the UHD source tree for inspiration:
>> https://github.com/EttusResearch/uhd/tree/master/host/include/uhd/rfnoc/blocks.
>> For example, take a look at addsub.yml for a block with two fixed input /
>> output ports and fir_filter.yml for a block where the number of ports is
>> based on a parameter called NUM_PORTS.
>>
>> Jonathon
>>
>> On Tue, Mar 16, 2021, 10:15 Julian Casallas <jcasallas2019@gmail.com>
>> wrote:
>>
>>> Hello,
>>>
>>> I went through  the  Getting Started with RFNoC UHD 4 guide and I
>>> followed the RfNoC 4 WorkShop - GRCon 2020 to design a RFNoC block, this is
>>> what I did:
>>>
>>> 1. Created the gain block and it works fine following the RFNoC 4 video.
>>> I checked the HDL files, and I could see the interfaces payload and context
>>> were created between NoC Shell and the User Logic as expected.
>>>
>>> 2. Then I went ahead and created my own block, *not* using the
>>> *rfnocmodtool *but in this case using the *rfnoc_create_verilog.py *tool
>>> following  the UHD 4 guide based on the same gain.yml file for testing
>>> purposes, however, the verilog files created in this case do not use
>>> payload/context approach.
>>>
>>> I was hoping that following the UHD 4 guide to design new blocks using
>>> the python script I could get the same verilog files used in the video.
>>>
>>> Therefore,  my question is, what is the process to add a block with
>>> multiple inputs and outputs  using RFNoC 4?
>>>
>>> Thanks
>>> J
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--00000000000011897e05bda9ce05
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Julian,<div><br></div><div>Generally, ctrlport and axis=
_pyld_ctrl are the correct choices. One exception is when writing a block t=
hat changes sampling rate. You may want to use axis_chdr so you can easily =
interface with the axi_rate_change module. The DDC / DUC are examples of th=
at use case.</div><div><br></div><div>Jonathon</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 16, 2021 at=
 11:52 AM Julian Casallas &lt;<a href=3D"mailto:jcasallas2019@gmail.com">jc=
asallas2019@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr">Dear Jonathon,<div><br></div><div>Tha=
nks for your prompt reply, I checked the specification=C2=A0but before your=
 reply, I was looking into the <b>rfnoc_create_verilog.py=C2=A0 script=C2=
=A0</b>and the block <b>demo</b> yaml file. I found the key <b>fpga_iface,=
=C2=A0</b>for control and data, has 2 options:</div><div><br></div><div>1.c=
trlport or axis_ctrl</div><div>2. axis_chdr or axis_pyld_ctxt</div><div><br=
></div><div>The specification mentioned them too. However, the RFNoC 4 vide=
o talks about payload/context interface so could you please advise=C2=A0whi=
ch should we use to be consistent?</div><div><br></div><div>Thanks=C2=A0</d=
iv><div>J</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Mar 16, 2021 at 11:13 AM Jonathon Pendlum &lt;<a hr=
ef=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum=
@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div dir=3D"auto">Hello Julian,<div dir=3D"auto=
"><br></div><div dir=3D"auto">For a multiple input / output port block, you=
 will need to use rfnoc_create_verilog with your own block definition yaml =
file. The RFNoC specification (<a href=3D"https://files.ettus.com/app_notes=
/RFNoC_Specification.pdf" target=3D"_blank">https://files.ettus.com/app_not=
es/RFNoC_Specification.pdf</a>) has information on the yaml file format in =
section 4.2.2. You can also look at the existing blocks in the UHD source t=
ree for inspiration: <a href=3D"https://github.com/EttusResearch/uhd/tree/m=
aster/host/include/uhd/rfnoc/blocks" target=3D"_blank">https://github.com/E=
ttusResearch/uhd/tree/master/host/include/uhd/rfnoc/blocks</a>. For example=
, take a look at addsub.yml=C2=A0for a block with two fixed input / output =
ports and=C2=A0fir_filter.yml for a block where the number of ports is base=
d on a parameter called NUM_PORTS.</div><div dir=3D"auto"><br></div><div>Jo=
nathon</div><div></div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Mar 16, 2021, 10:15 Julian Casallas &=
lt;<a href=3D"mailto:jcasallas2019@gmail.com" target=3D"_blank">jcasallas20=
19@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr">Hello,<div><br></div><div>I went through=C2=A0=
 the=C2=A0 Getting Started with RFNoC UHD 4 guide and I followed the RfNoC =
4 WorkShop - GRCon 2020 to design a RFNoC block, this is what I did:</div><=
div><br></div><div>1. Created the gain block and it works fine following th=
e RFNoC 4 video. I checked the HDL files, and I could see the interfaces pa=
yload and context were created between NoC Shell and the User Logic as expe=
cted.</div><div><br></div><div>2. Then I went ahead and created my own bloc=
k,=C2=A0<b>not</b>=C2=A0using the=C2=A0<b>rfnocmodtool=C2=A0</b>but in this=
 case using the=C2=A0<b>rfnoc_create_verilog.py=C2=A0</b>tool following=C2=
=A0 the UHD 4 guide based on the same gain.yml file for testing purposes, h=
owever,=C2=A0the verilog files created in this case do not use payload/cont=
ext approach.</div><div><br></div><div>I was hoping that following the UHD =
4 guide to design new blocks=C2=A0using the python script I could get the s=
ame verilog files used in the video.</div><div><br></div><div>Therefore,=C2=
=A0 my question is, what is the process to add a block with multiple inputs=
 and outputs=C2=A0 using RFNoC 4?</div><div><br></div><div>Thanks</div><fon=
t color=3D"#888888"><font color=3D"#888888"><font color=3D"#888888"><font c=
olor=3D"#888888"><div>J</div></font></font></font></font></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--00000000000011897e05bda9ce05--

--===============5330012496563668705==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5330012496563668705==--
