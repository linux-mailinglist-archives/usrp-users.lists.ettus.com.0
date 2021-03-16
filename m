Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BDB33D6F7
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 16:14:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 77324383A97
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 11:14:25 -0400 (EDT)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 0F122383554
	for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 11:13:29 -0400 (EDT)
Received: by mail-vs1-f41.google.com with SMTP id e21so16398738vsh.5
        for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 08:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HeZoAw1oZkqzT5wARGgw7cz44g+ZjWohbh7nMiAmaDs=;
        b=YVJS/+F6kl72/OFKGVU7s4/uxgC8fmIVsCdrFkV3MJBvu3ZYzt9Si7CaJOqyHDgqwe
         eqsvVMbUNSOdDxFYzX5OZaVQ5fEkPaaPYgf8y8bw23Mb5ohvlAc7w0cB8Jr8CT/UhCbL
         xW+Vs24n7ZjCAIE1sT5LqjK/Y4psksMb6LHlcHzYgzknnkHjn7b+80oU+Nk0jVS0/4Ij
         qPrA6PGfS0egi7YLrana+W5ViFWkFeW9V92UUpU5TOik0bGFuFa2R5xjTuaUO9Rw9n2g
         6TlnrvVVeTec3XqJ24e2vaddqfPqefpsWFcKOM2j4ifrJiiixaDIrLHlYKU/K6HzQjhP
         AYNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HeZoAw1oZkqzT5wARGgw7cz44g+ZjWohbh7nMiAmaDs=;
        b=bbd2Kjiprag6ezUBWV+wQYDk1msX6Z66Cmp0g9J67MTwz6gsaLwWzfpaRlvlvanM04
         mP6bkWjY3LlQV+e3jEuFLVDMDFe1wrDyLJR8WXJOUnxSS5SPlj+lkHuha0b1uJdHHCz5
         ZSHB46nP8Qtw4ZBvag33+HXbDmJOOF2YUgV0OvhK+6CaBBtJgjWcWXVCHYsaLzHJyRRY
         CKNqlOaNiX0D+amWGSioXyvC5D6DJpzCzixONJkxlpXcyycmXhe/kIwL37x5yrlGbhTk
         AFvDmb/u7c8q/HlSeNwKz7RvYu5P5a9s/QYhITSPi89MrKBWVri8xYz5MA6WparDSGSd
         WI5w==
X-Gm-Message-State: AOAM530NsxlsV6u/0v5yZG0+9BjkD6dyLD8D07eSu1BfXza9Gh3fIywf
	3rOZPA30Lyv6CO+tRNjEm5Ksz/miUNN3I5OI95rjVA++
X-Google-Smtp-Source: ABdhPJzvQCHzHdEM+Uq3I86iuVHS2xcGUdcfrTF5l712HTKxnvO4Uk/Tp98mFLp15FfNA00n4AtIBct2may1aNFfOrs=
X-Received: by 2002:a67:f997:: with SMTP id b23mr72201vsq.7.1615907609418;
 Tue, 16 Mar 2021 08:13:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAFBYX1VosRU86TF-8fmLRkJmHEPC2M39-myO9KteXE=uDMQrsw@mail.gmail.com>
In-Reply-To: <CAFBYX1VosRU86TF-8fmLRkJmHEPC2M39-myO9KteXE=uDMQrsw@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Tue, 16 Mar 2021 11:12:53 -0400
Message-ID: <CAL7q81u8n=JxLXGAdxwa4LfwBpRBMtWxJXunmDJoVXQv+E1KXg@mail.gmail.com>
To: Julian Casallas <jcasallas2019@gmail.com>
Message-ID-Hash: A34KSYD22LRHXJ5VBCKCO7CJH7WQ4OGV
X-Message-ID-Hash: A34KSYD22LRHXJ5VBCKCO7CJH7WQ4OGV
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using rfnoc_create_verilog.py creates verilog files different from rfsocmodtool.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A34KSYD22LRHXJ5VBCKCO7CJH7WQ4OGV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2462784103439041040=="

--===============2462784103439041040==
Content-Type: multipart/alternative; boundary="0000000000000cb1d605bda8cfa7"

--0000000000000cb1d605bda8cfa7
Content-Type: text/plain; charset="UTF-8"

Hello Julian,

For a multiple input / output port block, you will need to use
rfnoc_create_verilog with your own block definition yaml file. The RFNoC
specification (https://files.ettus.com/app_notes/RFNoC_Specification.pdf)
has information on the yaml file format in section 4.2.2. You can also look
at the existing blocks in the UHD source tree for inspiration:
https://github.com/EttusResearch/uhd/tree/master/host/include/uhd/rfnoc/blocks.
For example, take a look at addsub.yml for a block with two fixed input /
output ports and fir_filter.yml for a block where the number of ports is
based on a parameter called NUM_PORTS.

Jonathon

On Tue, Mar 16, 2021, 10:15 Julian Casallas <jcasallas2019@gmail.com> wrote:

> Hello,
>
> I went through  the  Getting Started with RFNoC UHD 4 guide and I followed
> the RfNoC 4 WorkShop - GRCon 2020 to design a RFNoC block, this is what I
> did:
>
> 1. Created the gain block and it works fine following the RFNoC 4 video. I
> checked the HDL files, and I could see the interfaces payload and context
> were created between NoC Shell and the User Logic as expected.
>
> 2. Then I went ahead and created my own block, *not* using the
> *rfnocmodtool *but in this case using the *rfnoc_create_verilog.py *tool
> following  the UHD 4 guide based on the same gain.yml file for testing
> purposes, however, the verilog files created in this case do not use
> payload/context approach.
>
> I was hoping that following the UHD 4 guide to design new blocks using the
> python script I could get the same verilog files used in the video.
>
> Therefore,  my question is, what is the process to add a block with
> multiple inputs and outputs  using RFNoC 4?
>
> Thanks
> J
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000cb1d605bda8cfa7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"auto">Hello Julian,<div dir=3D"auto"><br></div=
><div dir=3D"auto">For a multiple input / output port block, you will need =
to use rfnoc_create_verilog with your own block definition yaml file. The R=
FNoC specification (<a href=3D"https://files.ettus.com/app_notes/RFNoC_Spec=
ification.pdf">https://files.ettus.com/app_notes/RFNoC_Specification.pdf</a=
>) has information on the yaml file format in section 4.2.2. You can also l=
ook at the existing blocks in the UHD source tree for inspiration: <a href=
=3D"https://github.com/EttusResearch/uhd/tree/master/host/include/uhd/rfnoc=
/blocks">https://github.com/EttusResearch/uhd/tree/master/host/include/uhd/=
rfnoc/blocks</a>. For example, take a look at addsub.yml=C2=A0for a block w=
ith two fixed input / output ports and=C2=A0fir_filter.yml for a block wher=
e the number of ports is based on a parameter called NUM_PORTS.</div><div d=
ir=3D"auto"><br></div><div>Jonathon</div><div></div></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 16, 2=
021, 10:15 Julian Casallas &lt;<a href=3D"mailto:jcasallas2019@gmail.com" t=
arget=3D"_blank">jcasallas2019@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello,<div><br></d=
iv><div>I went through=C2=A0 the=C2=A0 Getting Started with RFNoC UHD 4 gui=
de and I followed the RfNoC 4 WorkShop - GRCon 2020 to design a RFNoC block=
, this is what I did:</div><div><br></div><div>1. Created the gain block an=
d it works fine following the RFNoC 4 video. I checked the HDL files, and I=
 could see the interfaces payload and context were created between NoC Shel=
l and the User Logic as expected.</div><div><br></div><div>2. Then I went a=
head and created my own block,=C2=A0<b>not</b>=C2=A0using the=C2=A0<b>rfnoc=
modtool=C2=A0</b>but in this case using the=C2=A0<b>rfnoc_create_verilog.py=
=C2=A0</b>tool following=C2=A0 the UHD 4 guide based on the same gain.yml f=
ile for testing purposes, however,=C2=A0the verilog files created in this c=
ase do not use payload/context approach.</div><div><br></div><div>I was hop=
ing that following the UHD 4 guide to design new blocks=C2=A0using the pyth=
on script I could get the same verilog files used in the video.</div><div><=
br></div><div>Therefore,=C2=A0 my question is, what is the process to add a=
 block with multiple inputs and outputs=C2=A0 using RFNoC 4?</div><div><br>=
</div><div>Thanks</div><font color=3D"#888888"><font color=3D"#888888"><fon=
t color=3D"#888888"><font color=3D"#888888"><div>J</div></font></font></fon=
t></font></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>

--0000000000000cb1d605bda8cfa7--

--===============2462784103439041040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2462784103439041040==--
