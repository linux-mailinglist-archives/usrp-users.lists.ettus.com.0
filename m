Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4D52BC91B
	for <lists+usrp-users@lfdr.de>; Sun, 22 Nov 2020 21:21:16 +0100 (CET)
Received: from [::1] (port=40704 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kgvrF-0001R4-UV; Sun, 22 Nov 2020 15:21:13 -0500
Received: from mail-wm1-f68.google.com ([209.85.128.68]:50764)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dario@iptronix.com>) id 1kgvrB-0001LS-V4
 for usrp-users@lists.ettus.com; Sun, 22 Nov 2020 15:21:10 -0500
Received: by mail-wm1-f68.google.com with SMTP id c198so14175838wmd.0
 for <usrp-users@lists.ettus.com>; Sun, 22 Nov 2020 12:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=iptronix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3d+MgsxD+q7Q3h8run+Pn2h/78OATgb1K6P+XNsI+fQ=;
 b=dyylew3RHA8DqrAPc8CNXzyTs+ZEiIRM3N3ymk4r4RQZG6e8EkSTTpP6y74Plm8Qcj
 vZlde3bMgvpyshG/W62HMc9+saWk5EYWF0Z7MVu4xK6ntdlmJqg/25f82S4/0PW7o9Qi
 QaWYiG2/JjuG/kr9rnjwwhV14fhdFGa5OqgOnMS8whtmGNhQF0ab58V7EFhAl1AwNoLB
 lY+kJiP7gUR8oYh9nFjiA3T7cdCjMIOs1d5wTtPsGTrBk4fOnefR4w4UeK26fv4+HfNX
 QPw6/xQTUumpP4eJMqr9V+NpKnZ11uR/lIkVnvuQWGJyfftaQ9yyZt0DxfOSrjaVQRf7
 RVCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3d+MgsxD+q7Q3h8run+Pn2h/78OATgb1K6P+XNsI+fQ=;
 b=cGMzSaXN6Tgmb0hwJMrMXMXHsTgr7MeSEpEekh0uMKb6ntx73GqRlhrS2g3AXl1b7u
 4ddx2oyvKGG8vkcbToBBJ7h0k6BRSmwL1ASH6K0mKMuGvc9z5cKJdHNYbe/vFUcy9tj7
 ma4OwRnCELb8t0LU/K6Om8AohlfB1E/wnqly2A23obAj07XLnxlNwLmzpFwxiF29rcYZ
 dO19KqmBi8q/2mG5faqfAuZZNNk26VyQ9QeJgdFTceN8MVnHWSzJNJPV16YrNdCZEKEH
 Ih4qX/62F8C5KQdWAggH2PXFyryEirg/oKHh/a57hOUG8ATOiXsHE8GQwIn1sPGkISEu
 ltMA==
X-Gm-Message-State: AOAM530ml6BKPfVZgrEJr6PritGRZzJvK0aRD9DfC6PIJaqONcdH7m5f
 JI6brtz9jRfqDYOW4BbC6TdV6RhHkIpsnX6NaqFCTEgYJe+8uEDZdWfg3A==
X-Google-Smtp-Source: ABdhPJwgRd40LeRGSyNcWKrlK2FyIB4dKjP0hAJJO6DwAUFL1WIMF4rWiDNxmgouNcO1v5KRsTQBxRI6WEboobYxN9M=
X-Received: by 2002:a1c:9a12:: with SMTP id c18mr20238720wme.22.1606076428885; 
 Sun, 22 Nov 2020 12:20:28 -0800 (PST)
MIME-Version: 1.0
References: <CAKHaR3=cWOn8QPbVSU=h040NaquMntJoMgs2j1zXexcQmLDNpA@mail.gmail.com>
 <CAL7q81veqFNTKH46mdb-5Sf-KOGeJR0Y_dEphB1-BhsGcrmK6g@mail.gmail.com>
In-Reply-To: <CAL7q81veqFNTKH46mdb-5Sf-KOGeJR0Y_dEphB1-BhsGcrmK6g@mail.gmail.com>
Date: Sun, 22 Nov 2020 21:20:17 +0100
Message-ID: <CAKHaR3=YnX0o_Hju-s_HKpmr2vM-tep45aZdSH8dT9gh4XPSKg@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] simulation error with uhd 4.0
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
From: Dario Pennisi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dario Pennisi <dario@iptronix.com>
Content-Type: multipart/mixed; boundary="===============8649097272764662699=="
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

--===============8649097272764662699==
Content-Type: multipart/alternative; boundary="00000000000006b75905b4b7cfe1"

--00000000000006b75905b4b7cfe1
Content-Type: text/plain; charset="UTF-8"

i did some step forward. it looks like in the build directory there's a
file called complex_multiplier_sim_netlist.v that allows simulation however
when calling the simulation from an OOT directory the IP is rebuilt under
that directory and that file is not created.
unfortunately the sim/complex_multiplier.vhd being created is not usable as
it causes the simulator to crash.
any suggestions on how to have this done by the simulation makefile?

thanks,
Dario

On Sat, Nov 21, 2020 at 8:43 PM Jonathon Pendlum <jonathon.pendlum@ettus.com>
wrote:

> Hi Dario,
>
> Unfortunately, Vivado's xsim simulator sometimes crashes when it runs into
> syntax and elaboration errors. Make sure you don't have issues like signals
> with multiple drivers, undriven signals, missing reset logic, typos, etc.
> Note that these issues may be in code that is/seems unrelated to the cmul
> instantiation.
>
> Also, if you have access to ModelSim, I would highly suggest trying that
> tool instead as it is far more robust than xsim. You can use the vsim make
> target to use ModelSim.
>
> Jonathon
>
> On Sat, Nov 21, 2020 at 5:54 AM Dario Pennisi via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> i'm trying to simulate a block where i'm using cmul. in order to have
>> that compiled in i am including the following in my Makefile under
>> rfnoc/fpga in my OOT directory:
>>
>> include $(BASE_DIR)/../lib/ip/Makefile.inc
>> SIM_SRCS = $(abspath rfnoc_block_demod_tb.sv)  \
>> $(LIB_IP_COMPLEX_MULTIPLIER_OUTS) \
>>
>> i tried also adding this to DESIGN_SRCS but when running simulation with
>> Vivado 2019.1 i see the following error:
>>
>> ERROR: [XSIM 43-3983] Internal Compiler error encountered while
>> processing aggregate association.
>> ERROR: [XSIM 43-3915] Encountered a fatal error. Cannot continue.
>> Exiting...
>>
>> if i remove cmul instance from my design simulation works.
>>
>> can you please shed some light on how to fix this?
>> thanks,
>>
>> Dario Pennisi
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

-- 
Dario Pennisi
ipTronix S.r.l.

Tel     +39 06 66183814
Fax     +39 06 66188420
Mobile  +39 335 6878904
Web     www.iptronix.com
<https://urldefense.com/v3/__http:/www.iptronix.com__;!!KXGHL9MWuGc!s5Tn7AzcrRbHxw-tqBwTDmxvGjHnCEyM7Hgx2K_iBSRF5MT3mAq3Hf-oopBP-dAa$>

The information contained in this message is confidential and may be
legally privileged. The message is intended solely for the addressee(s), if
you are not the intended recipient, you are hereby notified that any use,
dissemination or reproduction is strictly prohibited and may be unlawful.
If you are not the intended recipient please contact the sender by return
e-mail and destroy all copies of the original message.

--00000000000006b75905b4b7cfe1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>i did some step forward. it looks like in the build d=
irectory there&#39;s a file called complex_multiplier_sim_netlist.v that al=
lows simulation however when calling the simulation from an OOT directory t=
he IP is rebuilt under that directory and that file is not created.</div><d=
iv>unfortunately the sim/complex_multiplier.vhd being created is not usable=
 as it causes the simulator to crash.<br></div><div>any suggestions on how =
to have this done by the simulation makefile?</div><div><br></div><div>than=
ks,</div><div>Dario<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sat, Nov 21, 2020 at 8:43 PM Jonathon Pend=
lum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com">jonathon.pendlum@ettu=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr">Hi Dario,<div><br></div><div>Unfortunately, Vivado&#3=
9;s xsim simulator sometimes crashes when it runs into syntax and elaborati=
on errors. Make sure you don&#39;t have issues like signals with multiple d=
rivers, undriven signals, missing reset logic, typos, etc. Note that these =
issues may be in code that is/seems unrelated to the cmul instantiation.</d=
iv><div><br></div><div>Also, if you have access to ModelSim, I would highly=
 suggest trying that tool instead as it is far more robust than xsim. You c=
an use the vsim make target to use ModelSim.<br></div><div><br></div><div>J=
onathon</div><div></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Sat, Nov 21, 2020 at 5:54 AM Dario Pennisi via U=
SRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blan=
k">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi,</div><div>i&#39;m tr=
ying to simulate a block where i&#39;m using cmul. in order to have that co=
mpiled in i am including the following in my Makefile under rfnoc/fpga in m=
y OOT directory:</div><div><br></div><div>include $(BASE_DIR)/../lib/ip/Mak=
efile.inc</div><div>SIM_SRCS =3D $(abspath <a href=3D"http://rfnoc_block_de=
mod_tb.sv" target=3D"_blank">rfnoc_block_demod_tb.sv</a>) =C2=A0\<br>$(LIB_=
IP_COMPLEX_MULTIPLIER_OUTS) \</div><div><br></div><div>i tried also adding =
this to DESIGN_SRCS but when running simulation with Vivado 2019.1 i see th=
e following error:</div><div><br></div><div>ERROR: [XSIM 43-3983] Internal =
Compiler error encountered while processing aggregate association.<br>ERROR=
: [XSIM 43-3915] Encountered a fatal error. Cannot continue. Exiting... <br=
></div><div><br></div><div>if i remove cmul instance from my design simulat=
ion works.</div><div><br></div><div>can you please shed some light on how t=
o fix this?</div><div>thanks,</div><div><br></div><div>Dario Pennisi<br></d=
iv></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-famil=
y:Calibri,sans-serif;font-size:13.3333px">Dario Pennisi</span><br style=3D"=
color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px"><span =
style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333p=
x">ipTronix S.r.l.</span><br style=3D"color:rgb(0,0,0);font-family:Calibri,=
sans-serif;font-size:13.3333px"><span style=3D"color:rgb(0,0,0);font-family=
:Calibri,sans-serif;font-size:13.3333px">=C2=A0</span><br style=3D"color:rg=
b(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px"><span style=3D=
"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px">Tel=
=C2=A0=C2=A0=C2=A0=C2=A0 +39 06 66183814</span><br style=3D"color:rgb(0,0,0=
);font-family:Calibri,sans-serif;font-size:13.3333px"><span style=3D"color:=
rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px">Fax=C2=A0=C2=
=A0=C2=A0=C2=A0 +39 06 66188420</span><br style=3D"color:rgb(0,0,0);font-fa=
mily:Calibri,sans-serif;font-size:13.3333px"><span style=3D"color:rgb(0,0,0=
);font-family:Calibri,sans-serif;font-size:13.3333px">Mobile=C2=A0 +39 335 =
6878904</span><br style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;=
font-size:13.3333px"><span style=3D"color:rgb(0,0,0);font-family:Calibri,sa=
ns-serif;font-size:13.3333px">Web=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><a hr=
ef=3D"https://urldefense.com/v3/__http:/www.iptronix.com__;!!KXGHL9MWuGc!s5=
Tn7AzcrRbHxw-tqBwTDmxvGjHnCEyM7Hgx2K_iBSRF5MT3mAq3Hf-oopBP-dAa$" style=3D"f=
ont-family:Calibri,sans-serif;font-size:13.3333px" target=3D"_blank">www.ip=
tronix.com</a><br style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;=
font-size:13.3333px"><span style=3D"color:rgb(0,0,0);font-family:Calibri,sa=
ns-serif;font-size:13.3333px">=C2=A0</span><br style=3D"color:rgb(0,0,0);fo=
nt-family:Calibri,sans-serif;font-size:13.3333px"><span style=3D"color:rgb(=
0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px">The information =
contained in this message is confidential and may be legally privileged. Th=
e message is intended solely for the addressee(s), if you are not the inten=
ded recipient, you are hereby notified that any use, dissemination or repro=
duction is strictly prohibited and may be unlawful. If you are not the inte=
nded recipient please contact the sender by return e-mail and destroy all c=
opies of the original message.</span><br></div></div>

--00000000000006b75905b4b7cfe1--


--===============8649097272764662699==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8649097272764662699==--

