Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F03924AC76E
	for <lists+usrp-users@lfdr.de>; Mon,  7 Feb 2022 18:30:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F410638508D
	for <lists+usrp-users@lfdr.de>; Mon,  7 Feb 2022 12:30:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZNdfX4np";
	dkim-atps=neutral
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 83B38384800
	for <usrp-users@lists.ettus.com>; Mon,  7 Feb 2022 12:29:04 -0500 (EST)
Received: by mail-yb1-f175.google.com with SMTP id bt13so18199828ybb.2
        for <usrp-users@lists.ettus.com>; Mon, 07 Feb 2022 09:29:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cz4wHdCjV2CSoLevpKuUPDbtidGxf8GEDg6qQzDoCuk=;
        b=ZNdfX4npKzjsBXEDmIAyB9D/2JLkYcAD2tpnNk9dYmWn71NJOkw/VjCsa6TCTb4m0G
         K+tdv77MQ4LsKodu5Dn69Qlsj1djBxu1NsmXYiNvPoSUg/5h1BufnfjdjizWdj6XFQnR
         OFyXqiV4iGJ9X22wKTn2hPNlvey23n+NG7D+I5Sr+vjcm4E/C5fg9TpMXw5CrefKx5mB
         9wBUqIf7RqJyqOdajcSFYibFXd4dNMYVrXq389KtYk+pSnr0YSdE4z2Q8ePtUVfXD7h1
         eHIVgfEXfSli9xhzOz21z0dxMmPI7EI4Bu5KSy5w9sMPGfUcD84kjQ+K8qiVRD6L7FXF
         7j0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cz4wHdCjV2CSoLevpKuUPDbtidGxf8GEDg6qQzDoCuk=;
        b=DJ4eTONwUnZYGdEc1NFrJXYSPetZylYqhAP7y2wPb3OYFy1uzmZQHbpCFeXhakjK9Z
         FX/ygUpQWl0BAR1FlqhjqeXcO9yNZB2AOqYeWmPThV1EjK+VSZe5NY8hfxQRg5vypPOy
         L8mE3QXjCx0IIDfx8rvQvUynOW5vDUDvYgjf6OF20FMe7nTm92etFEC1vFsl9kWCrP9L
         7TdjBSrIoWnfSS6xbriv1vqz1GSrPnbuk/iuN8lSt65/1QBWcXee0WIJMDDKoPob+wiJ
         zuHvyJPJcuw6/dkPZf91f9gW/mfFeVOOgOR4T/++iZXIGjFVoJ4+5gTplWXO2T740I+7
         olMw==
X-Gm-Message-State: AOAM531abznUcr9U9ZtHI0wQigyBRYDZ4SRzKUkeYFPH/rZM8ll+9BA+
	huuoUk5RTcuYdMSGbwE2t8jtzICvGLRWbfgr1bk=
X-Google-Smtp-Source: ABdhPJzB0lEjzOW3TIasrNEND0U30xz8F4wg1Z0O39XI52QejpMFedVQT5zq378nRGaNaY3vjdhgK/4C8S4gV69/tWY=
X-Received: by 2002:a0d:ed47:: with SMTP id w68mr900415ywe.420.1644254943241;
 Mon, 07 Feb 2022 09:29:03 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3Pt1itmEnH62eLNapn=3V3GBOyLNTXqzDrjwK_PPgTi-fQ@mail.gmail.com>
 <CANzM3hyE-NLwM+TuhN6ewaudHa4EQBbcMd4aeTHo989LK9PUig@mail.gmail.com> <CAFche=i1TGn8yhXsEw7GX2tgqFocugn_FvWLjADL+99hSj3+zw@mail.gmail.com>
In-Reply-To: <CAFche=i1TGn8yhXsEw7GX2tgqFocugn_FvWLjADL+99hSj3+zw@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Mon, 7 Feb 2022 20:58:43 +0330
Message-ID: <CAA=S3Psjsxj3hJ=Pj-6FpXRyxZKU5sj_YZdrfAiNtjFDvAhCDg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: MP5YTE2G2KDFTCY4P2LFXX725JTEAVOW
X-Message-ID-Hash: MP5YTE2G2KDFTCY4P2LFXX725JTEAVOW
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Vivado: Version 2019.1 not found error when i want to a built a custom RFNOC block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MP5YTE2G2KDFTCY4P2LFXX725JTEAVOW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7883154083429235016=="

--===============7883154083429235016==
Content-Type: multipart/alternative; boundary="000000000000cfe8f705d770ef90"

--000000000000cfe8f705d770ef90
Content-Type: text/plain; charset="UTF-8"

Thank you for the clarification. When I used these commands:

 source setupenv.sh  --vivado-path=/home/sp/xilinx/Vivado
rfnoc_image_builder  -F /home/sp/Documents/uhd-4.1.0.5/fpga   -I
/home/sp/Documents/rfnoc-tutorial/include/rfnoc  -y
/home/sp/Documents/rfnoc-tutorial/rfnoc/icores/gain_x310_rfnoc_image_core.yml
--vivado-path=/home/sp/xilinx/Vivado

But after it, I was faced with these errors? This is an RFNOC example for
gain block why It doesn't work correctly

ERROR: [Synth 8-439] module 'rfnoc_block_gain' not found
[/home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.v:1055]
ERROR: [Synth 8-6156] failed synthesizing module 'rfnoc_image_core'
[/home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.v:24]
ERROR: [Synth 8-6156] failed synthesizing module 'bus_int'
[/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/bus_int.v:9]
ERROR: [Synth 8-6156] failed synthesizing module 'x300_core'
[/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_core.v:9]
ERROR: [Synth 8-6156] failed synthesizing module 'x300'
[/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300.v:20]
ERROR: [Common 17-69] Command failed: Synthesis failed - please see the
console or run log file for details
[00:04:31] Current task: Synthesis +++ Current Phase: Starting
[00:04:31] Current task: Synthesis +++ Current Phase: Finished
[00:04:31] Process terminated. Status: Failure


On Mon, Feb 7, 2022 at 7:15 PM Wade Fife <wade.fife@ettus.com> wrote:

> Hi sp,
>
> Regarding the error message about Vivado not being found. You need to set
> up your environment before building an FPGA. rfnoc_image_builder does this
> automatically for you. But if you run make directly then you need to source
> setupenv.sh manually. For example:
>
> source uhd/fpga/usrp3/top/x300/setupenv.sh
>
> The error about the unresolved clock domain means you need to connect a
> clock to the ce clock input of your gain block. The tools expects something
> like this in your YAML file:
>
> clk_domains:
>     - { srcblk: _device_, srcport: ce,    dstblk: gain0,   dstport: ce    }
>
> However, the gain example in UHD doesn't have a ce clock port, so I assume
> you modified the example to add that clock port. The tool requires all
> clock inputs to be connected.
>
> Wade
>
>
> On Mon, Feb 7, 2022 at 5:56 AM Arash Jafari <
> arash.jafari.telecom@gmail.com> wrote:
>
>> Hello sp h,
>>
>> I did it about 3 years ago, as I remember, there is a Tcl file in the
>> make folder or s.w else the Vivado version is defined there, you need to
>> change the Vivado version there.
>> Please keep this in mind, in some scenarios the Vivado version must be
>> exactly the same as configured in the mentioned Tcl file, otherwise due to
>> some kind of incompatibility you can't proceed.
>> use *grep -r vivado *command or s.t similar in ubuntu to find where to
>> configure it.
>>
>> Kind Regards
>> ------------------------
>> Dipl.-Ing. Arash Jafari
>> Phone: +43 650 844 3617
>> E-mail: arash.jafari.telecom@gmail.com
>>
>> On Sun, Feb 6, 2022 at 5:10 PM sp h <stackprogramer@gmail.com> wrote:
>>
>>> I copied the RFNOC example in a folder. for building, I used these
>>> commands...
>>> Building and Installing an OOT Module
>>> mkdir build
>>> cd build
>>> cmake .. -DUHD_FPGA_DIR=/home/sp/Documents/uhd-4.1.0.5/fpga
>>> make
>>> Building an FPGA Image with OOT Blocks
>>> when I want to build FPGA I used these commands...
>>>
>>> make x310_rfnoc_image_core
>>>
>>> I faced with this error
>>> *Errors:*
>>>
>>>
>>>
>>> *Setting up a 64-bit FPGA build environment for the USRP-X3x0...-
>>> Vivado: Version 2019.1 not found in /opt/Xilinx/Vivado (ERROR.. Builds and
>>> simulations will not work)          Use the --vivado-path option to
>>> override the search pathBuilt target x310_rfnoc_image_core*
>>>
>>> When I used these options I was faced another error...
>>>
>>> make x310_rfnoc_image_core --vivado-path=/home/sp/xilinx/Vivado
>>>
>>> *Errors:*
>>> make: unrecognized option '--vivado-path=/home/sp/xilinx/Vivado'
>>>
>>> How can build Gain RFNOC example successfully?
>>> thanks in advance
>>>
>>>
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000cfe8f705d770ef90
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you for the clarification. When I used these command=
s:<div><br><div>=C2=A0source setupenv.sh =C2=A0--vivado-path=3D/home/sp/xil=
inx/Vivado<br></div></div><div>rfnoc_image_builder =C2=A0-F /home/sp/Docume=
nts/uhd-4.1.0.5/fpga =C2=A0 -I /home/sp/Documents/rfnoc-tutorial/include/rf=
noc =C2=A0-y /home/sp/Documents/rfnoc-tutorial/rfnoc/icores/gain_x310_rfnoc=
_image_core.yml --vivado-path=3D/home/sp/xilinx/Vivado<br></div><div><br></=
div><div>But after it, I was faced with these errors? This is an RFNOC exam=
ple for gain block why It doesn&#39;t work correctly</div><div><br></div><d=
iv>ERROR: [Synth 8-439] module &#39;rfnoc_block_gain&#39; not found [/home/=
sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.v:1055]<br>E=
RROR: [Synth 8-6156] failed synthesizing module &#39;rfnoc_image_core&#39; =
[/home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.v:24]=
<br>ERROR: [Synth 8-6156] failed synthesizing module &#39;bus_int&#39; [/ho=
me/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/bus_int.v:9]<br>ERROR: [Syn=
th 8-6156] failed synthesizing module &#39;x300_core&#39; [/home/sp/Documen=
ts/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_core.v:9]<br>ERROR: [Synth 8-6156] =
failed synthesizing module &#39;x300&#39; [/home/sp/Documents/uhd-4.1.0.5/f=
pga/usrp3/top/x300/x300.v:20]<br>ERROR: [Common 17-69] Command failed: Synt=
hesis failed - please see the console or run log file for details<br>[00:04=
:31] Current task: Synthesis +++ Current Phase: Starting<br>[00:04:31] Curr=
ent task: Synthesis +++ Current Phase: Finished<br>[00:04:31] Process termi=
nated. Status: Failure<br><br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 7, 2022 at 7:15 PM Wade Fif=
e &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div>Hi sp,</div><div><br></div><div>Regarding the error message abou=
t Vivado not being found. You need to set up your environment before buildi=
ng an FPGA. rfnoc_image_builder does this automatically for you. But if you=
 run make directly then you need to source setupenv.sh manually. For exampl=
e:<br></div><div><br></div><div>source uhd/fpga/usrp3/top/x300/setupenv.sh<=
/div><div><br></div><div>The error about the unresolved clock domain means =
you need to connect a clock to the ce clock input of your gain block. The t=
ools expects something like this in your YAML file:</div><div><br></div><di=
v>clk_domains:<br>=C2=A0 =C2=A0 - { srcblk: _device_, srcport: ce, =C2=A0 =
=C2=A0dstblk: gain0, =C2=A0 dstport: ce =C2=A0 =C2=A0}</div><div><br></div>=
<div>However, the gain example in UHD doesn&#39;t have a ce clock port, so =
I assume you modified the example to add that clock port. The tool requires=
 all clock inputs to be connected.<br></div><div><br></div><div>Wade</div><=
div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Feb 7, 2022 at 5:56 AM Arash Jafari &lt;<a href=3D"=
mailto:arash.jafari.telecom@gmail.com" target=3D"_blank">arash.jafari.telec=
om@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr">Hello sp h,<br><br>I did it about 3 years ago,=
 as I remember, there is a Tcl file in the make folder or s.w else the=C2=
=A0Vivado=C2=A0version is defined there, you need to change the=C2=A0Vivado=
=C2=A0version there.<br>Please keep this in mind, in some scenarios the Viv=
ado version must be exactly the same as configured in the mentioned Tcl fil=
e, otherwise=C2=A0due to some kind of incompatibility=C2=A0you can&#39;t=C2=
=A0proceed.<br>use <b>grep -r vivado </b>command<b>=C2=A0</b>or s.t similar=
=C2=A0in ubuntu to find where to configure it.<br><br>Kind Regards<div><div=
 dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><span style=3D"color:rgb(0,0=
,0);font-family:monospace,monospace">------------------------</span></div><=
div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:monospace,monos=
pace">Dipl.-Ing. Arash Jafari</span><font size=3D"2" face=3D"monospace, mon=
ospace" color=3D"#000000">=C2=A0</font><br></div><div dir=3D"ltr"><div><spa=
n style=3D"font-family:monospace;color:rgb(0,0,0)">Phone: +43 650 844 3617<=
/span><br></div><div><span style=3D"font-family:monospace"><font size=3D"2"=
 color=3D"#000000">E-mail:=C2=A0<a href=3D"mailto:arash.jafari.telecom@gmai=
l.com" target=3D"_blank">arash.jafari.telecom@gmail.com</a></font></span></=
div></div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sun, Feb 6, 2022 at 5:10 PM sp h &lt;<a hr=
ef=3D"mailto:stackprogramer@gmail.com" target=3D"_blank">stackprogramer@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr">I copied the RFNOC example in a folder. for building=
, I used these commands...<div><h3 style=3D"color:rgb(0,0,0);background-ima=
ge:none;background-position:initial;background-size:initial;background-repe=
at:initial;background-origin:initial;background-clip:initial;margin:0.3em 0=
px 0px;overflow:hidden;padding-top:0.5em;padding-bottom:0px;border-bottom:m=
edium none;line-height:1.6;font-family:&quot;Lucida Sans Unicode&quot;,&quo=
t;Lucida Grande&quot;,sans-serif"><span id=3D"gmail-m_-2009826883643822219g=
mail-m_-634076465941088241gmail-m_3487114384417369716gmail-Building_and_Ins=
talling_an_OOT_Module"><font size=3D"2">Building and Installing an OOT Modu=
le</font></span></h3></div><div>mkdir build=C2=A0<br><div>cd build</div>cma=
ke .. -DUHD_FPGA_DIR=3D/home/sp/Documents/uhd-4.1.0.5/fpga<br><div>make<br>=
</div></div><div><h3 style=3D"color:rgb(0,0,0);background-image:none;backgr=
ound-position:initial;background-size:initial;background-repeat:initial;bac=
kground-origin:initial;background-clip:initial;margin:0.3em 0px 0px;overflo=
w:hidden;padding-top:0.5em;padding-bottom:0px;border-bottom:medium none;lin=
e-height:1.6;font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grand=
e&quot;,sans-serif"><span id=3D"gmail-m_-2009826883643822219gmail-m_-634076=
465941088241gmail-m_3487114384417369716gmail-Building_an_FPGA_Image_with_OO=
T_Blocks"><font size=3D"2">Building an FPGA Image with OOT Blocks</font></s=
pan></h3><div><span><font size=3D"2">when I want to build FPGA I used these=
 commands...</font></span></div><div><span><font size=3D"2"><br></font></sp=
an></div>make x310_rfnoc_image_core<br></div><div><br></div><div>I faced wi=
th this error=C2=A0</div><div><b>Errors:</b></div><div><b>Setting up a 64-b=
it FPGA build environment for the USRP-X3x0...<br>- Vivado: Version 2019.1 =
not found in /opt/Xilinx/Vivado (ERROR.. Builds and simulations will not wo=
rk)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Use the --vivado-path option to o=
verride the search path<br>Built target x310_rfnoc_image_core</b><br></div>=
<div><br></div><div>When I used these options I was=C2=A0faced another erro=
r...</div><div><br></div><div>make x310_rfnoc_image_core --vivado-path=3D/h=
ome/sp/xilinx/Vivado<br></div><div><br></div><div><b>Errors:</b></div><div>=
make: unrecognized option &#39;--vivado-path=3D/home/sp/xilinx/Vivado&#39;<=
br></div><div><br></div><div>How can build Gain RFNOC example successfully?=
</div><div>thanks in=C2=A0advance</div><div><br></div><div><br></div><div><=
br></div><div><br></div><div><br></div></div>
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
</blockquote></div>

--000000000000cfe8f705d770ef90--

--===============7883154083429235016==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7883154083429235016==--
