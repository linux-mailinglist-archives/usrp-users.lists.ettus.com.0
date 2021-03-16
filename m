Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 414FA33D840
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 16:53:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8859E383823
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 11:53:24 -0400 (EDT)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 77F5E3836F3
	for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 11:52:19 -0400 (EDT)
Received: by mail-ed1-f47.google.com with SMTP id j3so22133863edp.11
        for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 08:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gNW6QaBStxdA9NCgPwcWuRdzCvueyzB0LGZoW7buco0=;
        b=d1oGJ8F1gKp+OiKOKm19HsnRz9o5fur4zF40PR++b1UEviVZQ32fcBMIbTvOzTg46m
         lTKvWtHSsJFr9vtPt/YaLt5UJa9vN6TAJdDsN81E1MSn3XQmtACENlza4xRJtY3oM/Qp
         yWWDaJ09EA+wP2NLkT4U4B0KvRD9vlyj9SMCFI5FFfsowU+O95u4LLqcrA+fRojAQXzW
         UwaHmGhN0Zl0ONxvCdztEbrnciSkImHWmyOo90cIftLK5lAxWnidExEEFPPQRacaUJ80
         elktrWj2049fCIJp6qHsGuOEixid/m8uaH8wZtc7Fn4FUUR11InUcI7ZAwqLZC6FNPSP
         wu5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gNW6QaBStxdA9NCgPwcWuRdzCvueyzB0LGZoW7buco0=;
        b=IsOTrO2aL233R4g7tpmDWmjmxvju3r7jjOPVZFu/a9nUlo6nDBywYnMxubmvz1d5zl
         cKjjfB3P3tPN7CqUcwfpb5NhB/GshWDAHLwyalsv7aIsU+MqnPBmBrKPttWuWQ5a5fDA
         +RKcKb1r4AAmpToXkhikvP16VO2G89+qC2c038kjeXc6ZOxXx0VdtFoG0v9lvZ7cJ7jd
         k2nMad+GpkH8vTbhOlX3uyQfUpyEQMYrz7JGOwXNiA9RXOzxUr+hwiy7mndr0fm/aq8f
         mONPiMW7l1ARoj1Rqm01Oq2o9WQxANyYDkdnnW4nWaKDv6ZM+oU9Ga00v3v9kRDeTm+Q
         cJlw==
X-Gm-Message-State: AOAM533bYWhuywCw41CMsUdHW2mK7T5oTMz5H6E1nMwv+ZxYozVLpXur
	qrhWa8n/36Ak3pBVBwLOFjSDFddPanNAvmp9ciU=
X-Google-Smtp-Source: ABdhPJzm+sipzr6RM0LqV8fWGwlaaL/v5Yzdt1PT52y+gP8mQbClMTBdaz2XfcNIzj5zOWuQfI/7aPwLB65sidfzHhE=
X-Received: by 2002:a05:6402:31b7:: with SMTP id dj23mr37367247edb.245.1615909938567;
 Tue, 16 Mar 2021 08:52:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAFBYX1VosRU86TF-8fmLRkJmHEPC2M39-myO9KteXE=uDMQrsw@mail.gmail.com>
 <CAL7q81u8n=JxLXGAdxwa4LfwBpRBMtWxJXunmDJoVXQv+E1KXg@mail.gmail.com>
In-Reply-To: <CAL7q81u8n=JxLXGAdxwa4LfwBpRBMtWxJXunmDJoVXQv+E1KXg@mail.gmail.com>
From: Julian Casallas <jcasallas2019@gmail.com>
Date: Tue, 16 Mar 2021 11:52:07 -0400
Message-ID: <CAFBYX1UfeAvZ2gQCHGu+x_ZLQGE=wB_x=NQsQO4LsKrReRFOrA@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID-Hash: K57NESSRZD3EFZYBK2BNAH6XAZ4KCP32
X-Message-ID-Hash: K57NESSRZD3EFZYBK2BNAH6XAZ4KCP32
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using rfnoc_create_verilog.py creates verilog files different from rfsocmodtool.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K57NESSRZD3EFZYBK2BNAH6XAZ4KCP32/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4952982820997886062=="

--===============4952982820997886062==
Content-Type: multipart/alternative; boundary="000000000000e09ba905bda95939"

--000000000000e09ba905bda95939
Content-Type: text/plain; charset="UTF-8"

Dear Jonathon,

Thanks for your prompt reply, I checked the specification but before your
reply, I was looking into the *rfnoc_create_verilog.py  script *and the
block *demo* yaml file. I found the key *fpga_iface, *for control and data,
has 2 options:

1.ctrlport or axis_ctrl
2. axis_chdr or axis_pyld_ctxt

The specification mentioned them too. However, the RFNoC 4 video talks
about payload/context interface so could you please advise which should we
use to be consistent?

Thanks
J

On Tue, Mar 16, 2021 at 11:13 AM Jonathon Pendlum <
jonathon.pendlum@ettus.com> wrote:

> Hello Julian,
>
> For a multiple input / output port block, you will need to use
> rfnoc_create_verilog with your own block definition yaml file. The RFNoC
> specification (https://files.ettus.com/app_notes/RFNoC_Specification.pdf)
> has information on the yaml file format in section 4.2.2. You can also look
> at the existing blocks in the UHD source tree for inspiration:
> https://github.com/EttusResearch/uhd/tree/master/host/include/uhd/rfnoc/blocks.
> For example, take a look at addsub.yml for a block with two fixed input /
> output ports and fir_filter.yml for a block where the number of ports is
> based on a parameter called NUM_PORTS.
>
> Jonathon
>
> On Tue, Mar 16, 2021, 10:15 Julian Casallas <jcasallas2019@gmail.com>
> wrote:
>
>> Hello,
>>
>> I went through  the  Getting Started with RFNoC UHD 4 guide and I
>> followed the RfNoC 4 WorkShop - GRCon 2020 to design a RFNoC block, this is
>> what I did:
>>
>> 1. Created the gain block and it works fine following the RFNoC 4 video.
>> I checked the HDL files, and I could see the interfaces payload and context
>> were created between NoC Shell and the User Logic as expected.
>>
>> 2. Then I went ahead and created my own block, *not* using the
>> *rfnocmodtool *but in this case using the *rfnoc_create_verilog.py *tool
>> following  the UHD 4 guide based on the same gain.yml file for testing
>> purposes, however, the verilog files created in this case do not use
>> payload/context approach.
>>
>> I was hoping that following the UHD 4 guide to design new blocks using
>> the python script I could get the same verilog files used in the video.
>>
>> Therefore,  my question is, what is the process to add a block with
>> multiple inputs and outputs  using RFNoC 4?
>>
>> Thanks
>> J
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000e09ba905bda95939
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear Jonathon,<div><br></div><div>Thanks for your prompt r=
eply, I checked the specification=C2=A0but before your reply, I was looking=
 into the <b>rfnoc_create_verilog.py=C2=A0 script=C2=A0</b>and the block <b=
>demo</b> yaml file. I found the key <b>fpga_iface,=C2=A0</b>for control an=
d data, has 2 options:</div><div><br></div><div>1.ctrlport or axis_ctrl</di=
v><div>2. axis_chdr or axis_pyld_ctxt</div><div><br></div><div>The specific=
ation mentioned them too. However, the RFNoC 4 video talks about payload/co=
ntext interface so could you please advise=C2=A0which should we use to be c=
onsistent?</div><div><br></div><div>Thanks=C2=A0</div><div>J</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, M=
ar 16, 2021 at 11:13 AM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pen=
dlum@ettus.com">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"auto=
">Hello Julian,<div dir=3D"auto"><br></div><div dir=3D"auto">For a multiple=
 input / output port block, you will need to use rfnoc_create_verilog with =
your own block definition yaml file. The RFNoC specification (<a href=3D"ht=
tps://files.ettus.com/app_notes/RFNoC_Specification.pdf" target=3D"_blank">=
https://files.ettus.com/app_notes/RFNoC_Specification.pdf</a>) has informat=
ion on the yaml file format in section 4.2.2. You can also look at the exis=
ting blocks in the UHD source tree for inspiration: <a href=3D"https://gith=
ub.com/EttusResearch/uhd/tree/master/host/include/uhd/rfnoc/blocks" target=
=3D"_blank">https://github.com/EttusResearch/uhd/tree/master/host/include/u=
hd/rfnoc/blocks</a>. For example, take a look at addsub.yml=C2=A0for a bloc=
k with two fixed input / output ports and=C2=A0fir_filter.yml for a block w=
here the number of ports is based on a parameter called NUM_PORTS.</div><di=
v dir=3D"auto"><br></div><div>Jonathon</div><div></div></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 16=
, 2021, 10:15 Julian Casallas &lt;<a href=3D"mailto:jcasallas2019@gmail.com=
" target=3D"_blank">jcasallas2019@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello,<div><br>=
</div><div>I went through=C2=A0 the=C2=A0 Getting Started with RFNoC UHD 4 =
guide and I followed the RfNoC 4 WorkShop - GRCon 2020 to design a RFNoC bl=
ock, this is what I did:</div><div><br></div><div>1. Created the gain block=
 and it works fine following the RFNoC 4 video. I checked the HDL files, an=
d I could see the interfaces payload and context were created between NoC S=
hell and the User Logic as expected.</div><div><br></div><div>2. Then I wen=
t ahead and created my own block,=C2=A0<b>not</b>=C2=A0using the=C2=A0<b>rf=
nocmodtool=C2=A0</b>but in this case using the=C2=A0<b>rfnoc_create_verilog=
.py=C2=A0</b>tool following=C2=A0 the UHD 4 guide based on the same gain.ym=
l file for testing purposes, however,=C2=A0the verilog files created in thi=
s case do not use payload/context approach.</div><div><br></div><div>I was =
hoping that following the UHD 4 guide to design new blocks=C2=A0using the p=
ython script I could get the same verilog files used in the video.</div><di=
v><br></div><div>Therefore,=C2=A0 my question is, what is the process to ad=
d a block with multiple inputs and outputs=C2=A0 using RFNoC 4?</div><div><=
br></div><div>Thanks</div><font color=3D"#888888"><font color=3D"#888888"><=
font color=3D"#888888"><font color=3D"#888888"><div>J</div></font></font></=
font></font></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000e09ba905bda95939--

--===============4952982820997886062==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4952982820997886062==--
