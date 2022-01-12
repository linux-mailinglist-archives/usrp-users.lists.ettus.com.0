Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C58A748C7AA
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jan 2022 16:55:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A82DF3847FA
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jan 2022 10:55:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kWQa7rGV";
	dkim-atps=neutral
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 3DE2338498B
	for <usrp-users@lists.ettus.com>; Wed, 12 Jan 2022 10:54:09 -0500 (EST)
Received: by mail-ed1-f46.google.com with SMTP id k15so11600969edk.13
        for <usrp-users@lists.ettus.com>; Wed, 12 Jan 2022 07:54:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LWpg97X7Gx0NuwNenObbssHM/s0PJkmDXEM9qS+1tpY=;
        b=kWQa7rGVj0JjRWSPcsn5AieIkItYIJ+Ng4IQHGS0lFn3GhfB8e7b1nav+HUZUin6z/
         iscitIu3OJSOSo/Eqs86ATbNIWc+RrLYP70jRLQgbWoloJElqY8qzTv4BAiyr33D9N6V
         /oF1UVCUQx7lzaT1S4vk7s/dA5JjWAf5+D00NGRQqx3lDcbwVdaDV6MTf3epMegLgdm4
         6qz97MVaxq8l5eIvtY9gG7twHpPTpK3NQdIKbelUgXegYzwF7JjgFVf1DyeXpsyGuaID
         KbJoZkkYnKsXGyTEy9816lFWsoTqrERLBY2wKTYOOsPfIwFKL+kSwkM5pe9E58Ky40MR
         //1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LWpg97X7Gx0NuwNenObbssHM/s0PJkmDXEM9qS+1tpY=;
        b=KkFblispbeAyZijUSfIYbbynRi3ystvcjlwolLwjsSB9KkMvd5XZZideK3nQtVxatW
         H+k1qKC7uULFTh+FdeNPYhDhWnUcT+I5CFJ6kVGixBeOlz3q9z90EEQkwtlysrbNwZjm
         H+g4jArDu1UCwn6SLW9w7cvudMwE/PWFqmhVrnReiIf8Wl5veI3xgH0024E6XdJwLsbU
         KJm/eosEvDuKMDl88M/DaRBfq51le9rumCVhjHro1nNgW89wOi1HmBoNm7bPQoAKEOMP
         SP8kewyMDjEo2GUuwNUUQNtzNBiidOBxWJWHgX8fnoB0Cnj4cBTuuoVvNgNYRUOpKVja
         uUsw==
X-Gm-Message-State: AOAM533iml/zDbqIh4dpA7udTAF/GSBFoVP4rVWCnEoUz9qo0/qJTPSf
	0MWIdXYS+mFQwZfriapr2TwEvBzyHKAoshbaRFdZqU7n
X-Google-Smtp-Source: ABdhPJyWnyztC2Cmgw4kbvbENlsxeKPtOjVr6suQ3K/dwU5ETLh0n7T9mg9KajfIyNwcoJxBUf3KwS9xpNDVxJUL6kk=
X-Received: by 2002:a17:907:6d1b:: with SMTP id sa27mr310149ejc.526.1642002848071;
 Wed, 12 Jan 2022 07:54:08 -0800 (PST)
MIME-Version: 1.0
References: <CAG16vQVXoc1UkG0B1LSBxje62MPsbGZqrX167aUPgivpWxBiiw@mail.gmail.com>
 <CAFche=j15Tb_B9fbSswennzHfqSM6YZRFSokcs51Uk6L0Oua2Q@mail.gmail.com>
In-Reply-To: <CAFche=j15Tb_B9fbSswennzHfqSM6YZRFSokcs51Uk6L0Oua2Q@mail.gmail.com>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Wed, 12 Jan 2022 16:53:56 +0100
Message-ID: <CAG16vQUc296w6v+JUV4kGCfPn4R8xqcinYcWWV3GTeVYWkeSww@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: 6OXU5CY5LIWU6WGD6C3P4UY34RUQRVDN
X-Message-ID-Hash: 6OXU5CY5LIWU6WGD6C3P4UY34RUQRVDN
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC custom block with 2in/2out
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6OXU5CY5LIWU6WGD6C3P4UY34RUQRVDN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1949902669423178536=="

--===============1949902669423178536==
Content-Type: multipart/alternative; boundary="0000000000007ac5e505d564943d"

--0000000000007ac5e505d564943d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Wade,

Thanks for the help.

I have reduced the number of input/outputs of my block to 1 in and 1 out,
and that way there's no timeout, but some unknown X values in
s_rfnoc_chdr_tdata/m_rfnoc_chdr_tdata ports.
I manage to open the Vivado simulation in a newer version and as you said
it works. So I will check there and compare with the blocks that you
mention.

Thanks again,

Maria


El mi=C3=A9, 12 ene 2022 a las 16:36, Wade Fife (<wade.fife@ettus.com>) esc=
ribi=C3=B3:

> Hi Maria,
>
> The addsub block is an example with two inputs and two outputs.
>
>
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blo=
cks/rfnoc_block_addsub/rfnoc_block_addsub.v
>
> https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/rfnoc/b=
locks/addsub.yml
>
> Moving Average is an example with a configurable number of ports. The
> NUM_PORTS parameter is used to set the number of input ports, which in th=
is
> case is always the same as the number of output ports. Several of the
> blocks are set up like this one.
>
>
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blo=
cks/rfnoc_block_moving_avg/rfnoc_block_moving_avg.v
>
> https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/rfnoc/b=
locks/moving_avg.yml
>
> To run the simulation in the GUI, add GUI=3D1 to the make command.
>
> make xsim GUI=3D1
>
> You can find more information about running simulations in the manual.
>
> https://files.ettus.com/manual/md_usrp3_sim_running_testbenches.html
>
> Unfortunately, the Vivado crashing is a known issue that we have reported
> to Xilinx. It should be resolved when we upgrade Vivado versions. In the
> mean time you could use ModelSim if you have access, or run xsim from the
> console only, or perhaps you could try running just your simulation in th=
e
> GUI of a newer version of Vivado.
>
> Thanks,
>
> Wade
>
> On Wed, Jan 12, 2022 at 4:08 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wro=
te:
>
>> Hi all,
>>
>> I am using USRP E320 with UHD 4.0, GNURadio 3.8 and gr-ettus master
>> versions.
>>
>> I have made a custom RFNoC block using rfnocmodtool. Since the
>> skeleton that this tool creates only has 1 input and 1 output, I have
>> modified the yml block generated to have 2 inputs and 2 outputs and then
>> I've run the rfnoc_create_verilog.py script inside the block folder. Thi=
s
>> creates the noc shell and block Verilog files with 2 inputs and 2 output=
s.
>> When I modify the block Verilog file with my code and try to test it wit=
h
>> the interface tb to send and receive packages, I have timeout.
>> I have simulated my code in Vivado and works as expected, so I think the
>> problem comes with the interface between my block and rfnoc. I also try =
to
>> bypass my code (axis inputs to axis output) and still have a timeout
>> issue.  I try to open the simulation in GUI mode, but Vivado crashes. I
>> test the gain block tutorial created with rfnocmodtool (1 input and 1
>> output) and it works fine.
>>
>> So I have several questions:
>>
>> Is it possible to have custom block with 2in/2out (or several
>> inputs/outputs)? What is the best way to do it?
>> Is there a way to open simulation with the rfnoc framework in GUI mode
>> directly? (I have modified the simulation.tcl with -g option created onc=
e I
>> run make tb)
>>
>> Kind Regards,
>>
>> Maria
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000007ac5e505d564943d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Wade,<br><br>Thanks for the help.=C2=A0<div><br><div>I =
have reduced the number of input/outputs of my block to 1 in and 1 out, and=
 that way there&#39;s no timeout, but some unknown X values in s_rfnoc_chdr=
_tdata/m_rfnoc_chdr_tdata ports.</div><div>I manage to open the Vivado simu=
lation in a newer=C2=A0version and as you said it works. So I will check th=
ere and compare with the blocks that you mention.<br><br>Thanks again,</div=
><div><br></div><div>Maria</div><div><br></div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El mi=C3=A9, 12 ene =
2022 a las 16:36, Wade Fife (&lt;<a href=3D"mailto:wade.fife@ettus.com">wad=
e.fife@ettus.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr">Hi Maria,<br><br>The addsub block=
 is an example with two inputs and two outputs.<br><br><div><a href=3D"http=
s://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rf=
noc_block_addsub/rfnoc_block_addsub.v" target=3D"_blank">https://github.com=
/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_adds=
ub/rfnoc_block_addsub.v</a></div><div><a href=3D"https://github.com/EttusRe=
search/uhd/blob/master/host/include/uhd/rfnoc/blocks/addsub.yml" target=3D"=
_blank">https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/r=
fnoc/blocks/addsub.yml</a></div><br>Moving Average is an example with a con=
figurable number of ports. The NUM_PORTS parameter is used to set the numbe=
r of input ports, which in this case is always the same as the number of ou=
tput ports. Several of the blocks are set up like this one.<br><br><div><a =
href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfn=
oc/blocks/rfnoc_block_moving_avg/rfnoc_block_moving_avg.v" target=3D"_blank=
">https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blo=
cks/rfnoc_block_moving_avg/rfnoc_block_moving_avg.v</a></div><div><a href=
=3D"https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/rfnoc=
/blocks/moving_avg.yml" target=3D"_blank">https://github.com/EttusResearch/=
uhd/blob/master/host/include/uhd/rfnoc/blocks/moving_avg.yml</a><br></div><=
br><div>To run the simulation in the GUI, add GUI=3D1 to the make command.<=
/div><br>make xsim GUI=3D1<br><br>You can find more information about runni=
ng simulations in the manual.<br><br><div><a href=3D"https://files.ettus.co=
m/manual/md_usrp3_sim_running_testbenches.html" target=3D"_blank">https://f=
iles.ettus.com/manual/md_usrp3_sim_running_testbenches.html</a></div><div><=
br></div><div>Unfortunately, the Vivado crashing is a known issue that we h=
ave reported to Xilinx. It should be resolved when we upgrade Vivado versio=
ns. In the mean time you could use ModelSim if you have access, or run xsim=
 from the console only, or perhaps you could try running just your simulati=
on in the GUI of a newer version of Vivado.<br></div><div></div><br>Thanks,=
<br><br>Wade</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Wed, Jan 12, 2022 at 4:08 AM Maria Mu=C3=B1oz &lt;<a href=3D=
"mailto:mamuki92@gmail.com" target=3D"_blank">mamuki92@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr">Hi all,<br><div><br></div><div>I am using USRP E320 with UHD 4.0, GNU=
Radio 3.8 and gr-ettus master versions.</div><div><br></div><div>I have mad=
e a custom RFNoC block using=C2=A0rfnocmodtool. Since the skeleton=C2=A0tha=
t this tool creates only has 1 input and 1 output, I have modified the yml =
block generated to have 2 inputs and 2 outputs and then I&#39;ve run the rf=
noc_create_verilog.py script inside the block folder. This creates the noc =
shell and block Verilog files with 2 inputs and 2 outputs.</div><div>When I=
 modify the block Verilog file with my code and try to test it with the int=
erface tb to send and receive packages, I have timeout.=C2=A0</div><div>I h=
ave simulated my code in Vivado and works as expected, so I think the probl=
em comes with the interface between my block and rfnoc. I also try to bypas=
s my code (axis inputs to axis output) and still have a timeout issue.=C2=
=A0=C2=A0I try to open the simulation in GUI mode, but Vivado crashes. I te=
st the gain block tutorial created with rfnocmodtool (1 input and 1 output)=
 and it works fine.</div><div><br></div><div>So I have several questions:</=
div><div><br></div><div>Is it possible to have custom block with 2in/2out (=
or several inputs/outputs)? What is the best way to do it?</div><div>Is the=
re a way to open simulation with the rfnoc framework in GUI mode directly? =
(I have modified the simulation.tcl with -g option created once I run make =
tb)</div><div>=C2=A0</div><div>Kind Regards,</div><div><br></div><div>Maria=
</div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000007ac5e505d564943d--

--===============1949902669423178536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1949902669423178536==--
