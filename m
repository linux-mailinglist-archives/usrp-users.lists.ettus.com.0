Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CAA49FA05C
	for <lists+usrp-users@lfdr.de>; Sat, 21 Dec 2024 12:15:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B09EF3854CF
	for <lists+usrp-users@lfdr.de>; Sat, 21 Dec 2024 06:15:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734779748; bh=V5ZielvDR1blR7JKQf6EZC8JP98kJwfcfuN7tqrgcV8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=HnNREqO/eShfjGEd6RWNg1kqhAzHYAhIy+K5njb6zRbMgjjFgwW8RoDLvAgYbEFmo
	 XGwPXATIqB7Z3pRbTFUdViRXEx0T/s7c6djC72TTPbar+y62xeWMck92eCnx1qKeBq
	 NerSZ+/LDfwK6VUsibJKVDAdK9IDt9BZMxfIliF/hxKbAFQgF0qNzqjMReKUfcE8Kp
	 rlCG6kCOQS7g23O6pVWiVCic1dR2xvrhS3ER2/QHDNI00fLuoO+BfHNLTrRcUT2ueU
	 wQI80OOz0HUWr2v5hoWJOl82QT6+6QpMEKDhTvO8xYpSBgC4m1wAhZmzj+7S7SV4bM
	 JRB6G+4O4KDmQ==
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 908C5385F0B
	for <usrp-users@lists.ettus.com>; Sat, 21 Dec 2024 06:14:52 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CnJ4aTWk";
	dkim-atps=neutral
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-728e78c4d7bso2112834b3a.0
        for <usrp-users@lists.ettus.com>; Sat, 21 Dec 2024 03:14:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734779691; x=1735384491; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mph9m/52aHTNie8bAdbFiS14wIQ9IPN/IxX2h4MCemY=;
        b=CnJ4aTWkFuOtDGXf5flTglzOOzVte81RNh4lUehE+SaWhxMYybKp92ucm4SZiN0kwp
         vDTW7/KUADaZ5KZUkKWbMVoErt8CNn88oSbhmB32Ozm4d1ybzsE3S2UMfFkDcW+DyttO
         zYrhj2fUKLwzfk0Hke/MD1OP27qyGwfXniFzwHptFTn3vxCzzNJaB+Ovq9Bl7c7D4puT
         TV2wI4EmI7ZEmgAJOk4nvvSVU90xxGigT9uWJIg8q/WUqSFn7mJan7TGXX4QTyEhmaDA
         EkNgFmELYd6okT/2llDbAiRg/ENk27nH4BW+djKE+zrMkZMejCXj8SX42KPOeIlwy04A
         Ekqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734779691; x=1735384491;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mph9m/52aHTNie8bAdbFiS14wIQ9IPN/IxX2h4MCemY=;
        b=PEoy7xono9zX8C3qUvvDCi6ZMNyog+/pWNenW6CKJEyRvl2sZOWdKNu27CBqz9pShG
         EgcqUJSl06C2TTDl7NtN+2wII16Rlhsn+GYilsLLxQPOozv/B+xvXAG3bUgBDRXO0AFJ
         yKbris1eKunHva7CtA4LZaNeYlmJPyimd1G9068AnLf7ocmAcxS7N8um6iAZOxf4Ik6/
         d7MgQqEhNqak1jy2VUXcWDO/tBhS2qt5hhVI7R/0v+iR95KguA/IgVJmpPTI86hWK6B5
         3mqzDKsAhlkrBQRwz11tX9yseQWqrXlNlbV0SzgQjg+H1qARtsBRU/rSSKL/m0Q1ARiY
         jROQ==
X-Gm-Message-State: AOJu0YwseZ7YgFl5ESf+XV6oZyNadIsc0MmefnaKXfUTatds4S+VJ4Ot
	H366BfFcOeK0WCU4S9GE+Y0ff/j01+U8ykaFR85laylUSVW8cl06SE19xgj062VSfiOPo8znGms
	ZY+fna+6U+5Mtzxz8Bm+nCx9Wi2ZgKA==
X-Gm-Gg: ASbGncu99qYTVETFgHOla10+i+52CoZm08W4KLk+fJXXLYdSSXuEcxgIPZV9TkKqE03
	wz/cJTeBx8Ltm4wx4AKKMQIeL5XJht34/t3wOpek=
X-Google-Smtp-Source: AGHT+IEvQ65HPlGQzLO2Tn/VPQrhI2f9BLuUIBYaMTpwBcdWnUD+7JHAwBuzXZEq0sWUbvDThDWQTSZrdHCNnEDWngo=
X-Received: by 2002:a05:6a00:918b:b0:725:d9b6:3952 with SMTP id
 d2e1a72fcca58-72abdab855amr9569604b3a.3.1734779691257; Sat, 21 Dec 2024
 03:14:51 -0800 (PST)
MIME-Version: 1.0
References: <CA+0p0ZR12K_ExioWxeC9yhXe-MUK75QqiNa0U1OvPwrFFb1i5w@mail.gmail.com>
 <CAFche=hcoUPrUuziHGOF+SWQVHbdGQ_r+PeQELSZ0EFq1RNsqg@mail.gmail.com>
In-Reply-To: <CAFche=hcoUPrUuziHGOF+SWQVHbdGQ_r+PeQELSZ0EFq1RNsqg@mail.gmail.com>
From: Andrew D <sciensfpgaeng@gmail.com>
Date: Sat, 21 Dec 2024 06:14:40 -0500
Message-ID: <CA+0p0ZTEPn9RbXWzX_2GFodWpFZA1UzsZiyyhNt33Hk4GSjsRQ@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: PDFGAAOOGNUHRTJHVET5XD3YE2XADTQR
X-Message-ID-Hash: PDFGAAOOGNUHRTJHVET5XD3YE2XADTQR
X-MailFrom: sciensfpgaeng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users mailing-list <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410/RFNoC xsim simulation support pertaining to rfnoc, x410, and system verilog.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PDFGAAOOGNUHRTJHVET5XD3YE2XADTQR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6078698844609696821=="

--===============6078698844609696821==
Content-Type: multipart/alternative; boundary="00000000000042d9880629c5dfe0"

--00000000000042d9880629c5dfe0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Wade,

Thank you for the feedback, that is very helpful.  It would be tremendously
helpful if the excluded simulation information eventually makes its way
into the online documentation since the online manual and knowledge is most
likely to be reviewed prior endeavoring on a project.

I have been referring to UG900.  It appears that the generic interface
bundles and hierarchical references of parameters are some of the initial
hurdles to get the Ethernet simulations up and running in the Vivado
simulator.

Sincerely,
Andrew

On Fri, Dec 20, 2024 at 9:22=E2=80=AFPM Wade Fife <wade.fife@ettus.com> wro=
te:

> Hi Andrew,
>
> All of the testbenches that have a Makefile should work with XSim except
> for the ones listed in this file:
>
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/tools/utils/t=
estbenches.excludes
>
> And all of the testbenches that have a Makefile should work in ModelSim
> except for the ones listed in this file:
>
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/tools/utils/m=
odelsim.excludes
>
> There aren't specific constructs I'm aware of in the code that aren't
> supported by XSim. Most of the testbenches were written for one simulator
> or the other, and not always ported to the other simulator when it didn't
> just work as written. In some cases that might be because XSim didn't
> implement something correctly, but it could also be because of normal
> differences between simulators (e.g., non-deterministic execution of
> processes). It depends on the testbench. In general, if you want to know
> what constructs are supported by XSim, check out UG900, the Vivado Design
> Suite User Guide for Logic Simulation.
>
> Thanks,
>
> Wade
>
> On Fri, Dec 20, 2024 at 6:03=E2=80=AFAM Andrew D <sciensfpgaeng@gmail.com=
> wrote:
>
>> Is there documentation that declares which simulations are not supported
>> by xsim?  I have used build.py to produce modules.json.  I also found a =
git
>> issue that states the qsfp wrapper simulation is not supported for xsim.
>> Can you provide any details on the system verilog constructs that are
>> utilized within the codebase that are incompatible with xsim?
>>
>> Thank you,
>> Andrew
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--00000000000042d9880629c5dfe0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Wade,</div><div><br></div><div>Thank you for the feed=
back, that is very helpful.=C2=A0 It would be tremendously helpful if the e=
xcluded simulation information eventually makes its way into the online doc=
umentation since the online manual and knowledge is most likely to be revie=
wed prior endeavoring on a project.<br><br></div><div>I have been referring=
 to UG900.=C2=A0 It appears that the generic interface bundles and hierarch=
ical references of parameters are some of the initial hurdles to get the Et=
hernet simulations up and running in the Vivado simulator.<br></div><div><b=
r></div><div>Sincerely,</div><div>Andrew<br></div></div><br><div class=3D"g=
mail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On =
Fri, Dec 20, 2024 at 9:22=E2=80=AFPM Wade Fife &lt;<a href=3D"mailto:wade.f=
ife@ettus.com">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Andrew,</div><di=
v><br></div><div>All of the testbenches that have a Makefile should work wi=
th XSim except for the ones listed in this file:</div><div><a href=3D"https=
://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/tools/utils/testbenc=
hes.excludes" target=3D"_blank">https://github.com/EttusResearch/uhd/blob/m=
aster/fpga/usrp3/tools/utils/testbenches.excludes</a></div><div><br></div><=
div>And all of the testbenches that have a Makefile should work in ModelSim=
 except for the ones listed in this file:<br><a href=3D"https://github.com/=
EttusResearch/uhd/blob/master/fpga/usrp3/tools/utils/modelsim.excludes" tar=
get=3D"_blank">https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/=
tools/utils/modelsim.excludes</a></div><div><br></div><div>There aren&#39;t=
 specific constructs I&#39;m aware of in the code that aren&#39;t supported=
 by XSim. Most of the testbenches were written for one simulator or the oth=
er, and not always ported to the other simulator when it didn&#39;t just wo=
rk as written. In some cases that might be because XSim didn&#39;t implemen=
t something correctly, but it could also be because of normal differences b=
etween simulators (e.g., non-deterministic execution of processes). It depe=
nds on the testbench. In general, if you want to know what constructs are s=
upported by XSim, check out UG900, the Vivado Design Suite User Guide for L=
ogic Simulation.</div><div><br></div><div>Thanks,</div><div><br></div><div>=
Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Dec 20, 2024 at 6:03=E2=80=AFAM Andrew D &lt;<a hre=
f=3D"mailto:sciensfpgaeng@gmail.com" target=3D"_blank">sciensfpgaeng@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div>Is there documentation that declares which simulat=
ions are not supported by xsim?=C2=A0 I have used build.py to produce modul=
es.json.=C2=A0 I also found a git issue that states the qsfp wrapper simula=
tion is not supported for xsim.=C2=A0 Can you provide any details on the sy=
stem verilog constructs that are utilized within the codebase that are inco=
mpatible with xsim?</div><div><br></div><div>Thank you,</div><div>Andrew<br=
></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--00000000000042d9880629c5dfe0--

--===============6078698844609696821==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6078698844609696821==--
