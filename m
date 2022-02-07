Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F37084AC413
	for <lists+usrp-users@lfdr.de>; Mon,  7 Feb 2022 16:46:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 40C6E386108
	for <lists+usrp-users@lfdr.de>; Mon,  7 Feb 2022 10:46:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="txtTjFTI";
	dkim-atps=neutral
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 503AA385236
	for <usrp-users@lists.ettus.com>; Mon,  7 Feb 2022 10:45:06 -0500 (EST)
Received: by mail-yb1-f182.google.com with SMTP id j2so41401154ybu.0
        for <usrp-users@lists.ettus.com>; Mon, 07 Feb 2022 07:45:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9AF81UuNu5QmI+D9zaQ6RoRcCjSRF4MxOguS4qON1W0=;
        b=txtTjFTI2vij9DxIsPpz/VxMkTpg/fNKuQBLruJayBHp/VWq3WEZMv+xaC1zcIs+yL
         SXw+i0Js/CaU4LbOtvvuU1EhTXpWEpq0NjVYK+NQ59hW40PvTKhnqWG+r7qhnHnuXpae
         YEwZSWik5XgahwYhmg/MBUlUe2p4rGECgymI7OWT+5SSU44tHr31lOOS7hiJs+K/0heh
         u6lsBmNQitFCELIm/39mjUQqGruQvYcMx9WDOFAhWc/Ej7oIxIO4pFkKVS9HG1/zUC8g
         CTfrMozbnZw334pi5kjPpGi61fA+z3Bouc0/jL1d9ZDoDRYW7bEA0V4iN1NAlou+PwaE
         zvSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9AF81UuNu5QmI+D9zaQ6RoRcCjSRF4MxOguS4qON1W0=;
        b=iNaUxRn6cwAf4Mh8T9amZbxX/hYwjTZeVysXy8rEmw88lbKCTr/NdDWcsO9SOmO+vL
         3ZLCU0nZrpbeQFGSbOpbuJhCOUZIkyU4fM/voTwd4pK+u4bcgeXPB/NVZA4v7vsiavq0
         0u3KGFRBX5LoYug2BDkTwHUFeaodmSzthk6vnzQwCvgw1BzFW+Uu/9+rOBV/1mnllYSz
         0TIZ44dw5CWU4AX3wYgrgDYMnOM13K7DXCew2qY3BPYx+NBc6poyXRpN9n/KgrTMrpM2
         7/tLCWglC21kvmdNf1qK+fOAox3avR0IFyvKLY4zmbH2MHiD248QJcgJhQi+UhssoHsp
         5lpw==
X-Gm-Message-State: AOAM5302MrhBnLoxkX50Xy3W0HFPNILOx5k/Xssy2skbZNacWt9Z/NJ9
	PmaIa7odgHdWeHWHhw14RXy6/lnX3xWsEYYw2OCotmhT
X-Google-Smtp-Source: ABdhPJzt2dVUPc6izU5vy0PLTre6EjvKlIZ70xxITNHX8y8AKNIWASXTEub5u0sDMjDcTwGmDqsdt+daNzEM2ADqQ50=
X-Received: by 2002:a0d:f0c7:: with SMTP id z190mr372129ywe.61.1644248705546;
 Mon, 07 Feb 2022 07:45:05 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3Pt1itmEnH62eLNapn=3V3GBOyLNTXqzDrjwK_PPgTi-fQ@mail.gmail.com>
 <CANzM3hyE-NLwM+TuhN6ewaudHa4EQBbcMd4aeTHo989LK9PUig@mail.gmail.com>
In-Reply-To: <CANzM3hyE-NLwM+TuhN6ewaudHa4EQBbcMd4aeTHo989LK9PUig@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 7 Feb 2022 09:44:49 -0600
Message-ID: <CAFche=i1TGn8yhXsEw7GX2tgqFocugn_FvWLjADL+99hSj3+zw@mail.gmail.com>
To: Arash Jafari <arash.jafari.telecom@gmail.com>
Message-ID-Hash: A2E5OPHKOSMFCKT2ZIDLBW4VOLLHBB4F
X-Message-ID-Hash: A2E5OPHKOSMFCKT2ZIDLBW4VOLLHBB4F
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sp h <stackprogramer@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Vivado: Version 2019.1 not found error when i want to a built a custom RFNOC block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A2E5OPHKOSMFCKT2ZIDLBW4VOLLHBB4F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7399827947991077625=="

--===============7399827947991077625==
Content-Type: multipart/alternative; boundary="000000000000044cb105d76f7c90"

--000000000000044cb105d76f7c90
Content-Type: text/plain; charset="UTF-8"

Hi sp,

Regarding the error message about Vivado not being found. You need to set
up your environment before building an FPGA. rfnoc_image_builder does this
automatically for you. But if you run make directly then you need to source
setupenv.sh manually. For example:

source uhd/fpga/usrp3/top/x300/setupenv.sh

The error about the unresolved clock domain means you need to connect a
clock to the ce clock input of your gain block. The tools expects something
like this in your YAML file:

clk_domains:
    - { srcblk: _device_, srcport: ce,    dstblk: gain0,   dstport: ce    }

However, the gain example in UHD doesn't have a ce clock port, so I assume
you modified the example to add that clock port. The tool requires all
clock inputs to be connected.

Wade


On Mon, Feb 7, 2022 at 5:56 AM Arash Jafari <arash.jafari.telecom@gmail.com>
wrote:

> Hello sp h,
>
> I did it about 3 years ago, as I remember, there is a Tcl file in the make
> folder or s.w else the Vivado version is defined there, you need to change
> the Vivado version there.
> Please keep this in mind, in some scenarios the Vivado version must be
> exactly the same as configured in the mentioned Tcl file, otherwise due to
> some kind of incompatibility you can't proceed.
> use *grep -r vivado *command or s.t similar in ubuntu to find where to
> configure it.
>
> Kind Regards
> ------------------------
> Dipl.-Ing. Arash Jafari
> Phone: +43 650 844 3617
> E-mail: arash.jafari.telecom@gmail.com
>
> On Sun, Feb 6, 2022 at 5:10 PM sp h <stackprogramer@gmail.com> wrote:
>
>> I copied the RFNOC example in a folder. for building, I used these
>> commands...
>> Building and Installing an OOT Module
>> mkdir build
>> cd build
>> cmake .. -DUHD_FPGA_DIR=/home/sp/Documents/uhd-4.1.0.5/fpga
>> make
>> Building an FPGA Image with OOT Blocks
>> when I want to build FPGA I used these commands...
>>
>> make x310_rfnoc_image_core
>>
>> I faced with this error
>> *Errors:*
>>
>>
>>
>> *Setting up a 64-bit FPGA build environment for the USRP-X3x0...- Vivado:
>> Version 2019.1 not found in /opt/Xilinx/Vivado (ERROR.. Builds and
>> simulations will not work)          Use the --vivado-path option to
>> override the search pathBuilt target x310_rfnoc_image_core*
>>
>> When I used these options I was faced another error...
>>
>> make x310_rfnoc_image_core --vivado-path=/home/sp/xilinx/Vivado
>>
>> *Errors:*
>> make: unrecognized option '--vivado-path=/home/sp/xilinx/Vivado'
>>
>> How can build Gain RFNOC example successfully?
>> thanks in advance
>>
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000044cb105d76f7c90
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi sp,</div><div><br></div><div>Regarding the error m=
essage about Vivado not being found. You need to set up your environment be=
fore building an FPGA. rfnoc_image_builder does this automatically for you.=
 But if you run make directly then you need to source setupenv.sh manually.=
 For example:<br></div><div><br></div><div>source uhd/fpga/usrp3/top/x300/s=
etupenv.sh</div><div><br></div><div>The error about the unresolved clock do=
main means you need to connect a clock to the ce clock input of your gain b=
lock. The tools expects something like this in your YAML file:</div><div><b=
r></div><div>clk_domains:<br>=C2=A0 =C2=A0 - { srcblk: _device_, srcport: c=
e, =C2=A0 =C2=A0dstblk: gain0, =C2=A0 dstport: ce =C2=A0 =C2=A0}</div><div>=
<br></div><div>However, the gain example in UHD doesn&#39;t have a ce clock=
 port, so I assume you modified the example to add that clock port. The too=
l requires all clock inputs to be connected.<br></div><div><br></div><div>W=
ade</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Mon, Feb 7, 2022 at 5:56 AM Arash Jafari &lt;<a =
href=3D"mailto:arash.jafari.telecom@gmail.com">arash.jafari.telecom@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr">Hello sp h,<br><br>I did it about 3 years ago, as I reme=
mber, there is a Tcl file in the make folder or s.w else the=C2=A0Vivado=C2=
=A0version is defined there, you need to change the=C2=A0Vivado=C2=A0versio=
n there.<br>Please keep this in mind, in some scenarios the Vivado version =
must be exactly the same as configured in the mentioned Tcl file, otherwise=
=C2=A0due to some kind of incompatibility=C2=A0you can&#39;t=C2=A0proceed.<=
br>use <b>grep -r vivado </b>command<b>=C2=A0</b>or s.t similar=C2=A0in ubu=
ntu to find where to configure it.<br><br>Kind Regards<div><div dir=3D"ltr"=
><div dir=3D"ltr"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-fam=
ily:monospace,monospace">------------------------</span></div><div dir=3D"l=
tr"><span style=3D"color:rgb(0,0,0);font-family:monospace,monospace">Dipl.-=
Ing. Arash Jafari</span><font size=3D"2" face=3D"monospace, monospace" colo=
r=3D"#000000">=C2=A0</font><br></div><div dir=3D"ltr"><div><span style=3D"f=
ont-family:monospace;color:rgb(0,0,0)">Phone: +43 650 844 3617</span><br></=
div><div><span style=3D"font-family:monospace"><font size=3D"2" color=3D"#0=
00000">E-mail:=C2=A0<a href=3D"mailto:arash.jafari.telecom@gmail.com" targe=
t=3D"_blank">arash.jafari.telecom@gmail.com</a></font></span></div></div></=
div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sun, Feb 6, 2022 at 5:10 PM sp h &lt;<a href=3D"mailto:s=
tackprogramer@gmail.com" target=3D"_blank">stackprogramer@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">I copied the RFNOC example in a folder. for building, I used these=
 commands...<div><h3 style=3D"color:rgb(0,0,0);background-image:none;backgr=
ound-position:initial;background-size:initial;background-repeat:initial;bac=
kground-origin:initial;background-clip:initial;margin:0.3em 0px 0px;overflo=
w:hidden;padding-top:0.5em;padding-bottom:0px;border-bottom:medium none;lin=
e-height:1.6;font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grand=
e&quot;,sans-serif"><span id=3D"gmail-m_-634076465941088241gmail-m_34871143=
84417369716gmail-Building_and_Installing_an_OOT_Module"><font size=3D"2">Bu=
ilding and Installing an OOT Module</font></span></h3></div><div>mkdir buil=
d=C2=A0<br><div>cd build</div>cmake .. -DUHD_FPGA_DIR=3D/home/sp/Documents/=
uhd-4.1.0.5/fpga<br><div>make<br></div></div><div><h3 style=3D"color:rgb(0,=
0,0);background-image:none;background-position:initial;background-size:init=
ial;background-repeat:initial;background-origin:initial;background-clip:ini=
tial;margin:0.3em 0px 0px;overflow:hidden;padding-top:0.5em;padding-bottom:=
0px;border-bottom:medium none;line-height:1.6;font-family:&quot;Lucida Sans=
 Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif"><span id=3D"gmail-m_-6=
34076465941088241gmail-m_3487114384417369716gmail-Building_an_FPGA_Image_wi=
th_OOT_Blocks"><font size=3D"2">Building an FPGA Image with OOT Blocks</fon=
t></span></h3><div><span><font size=3D"2">when I want to build FPGA I used =
these commands...</font></span></div><div><span><font size=3D"2"><br></font=
></span></div>make x310_rfnoc_image_core<br></div><div><br></div><div>I fac=
ed with this error=C2=A0</div><div><b>Errors:</b></div><div><b>Setting up a=
 64-bit FPGA build environment for the USRP-X3x0...<br>- Vivado: Version 20=
19.1 not found in /opt/Xilinx/Vivado (ERROR.. Builds and simulations will n=
ot work)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Use the --vivado-path option=
 to override the search path<br>Built target x310_rfnoc_image_core</b><br><=
/div><div><br></div><div>When I used these options I was=C2=A0faced another=
 error...</div><div><br></div><div>make x310_rfnoc_image_core --vivado-path=
=3D/home/sp/xilinx/Vivado<br></div><div><br></div><div><b>Errors:</b></div>=
<div>make: unrecognized option &#39;--vivado-path=3D/home/sp/xilinx/Vivado&=
#39;<br></div><div><br></div><div>How can build Gain RFNOC example successf=
ully?</div><div>thanks in=C2=A0advance</div><div><br></div><div><br></div><=
div><br></div><div><br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000044cb105d76f7c90--

--===============7399827947991077625==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7399827947991077625==--
