Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DF714C3B1
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jan 2020 00:43:49 +0100 (CET)
Received: from [::1] (port=42662 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iwaWK-0006k9-8b; Tue, 28 Jan 2020 18:43:48 -0500
Received: from mail-oi1-f176.google.com ([209.85.167.176]:43363)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1iwaWG-0006cg-2b
 for usrp-users@lists.ettus.com; Tue, 28 Jan 2020 18:43:44 -0500
Received: by mail-oi1-f176.google.com with SMTP id p125so12175504oif.10
 for <usrp-users@lists.ettus.com>; Tue, 28 Jan 2020 15:43:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FIQibX7F6XyUGeR3jGbVWa6/eBAfeeFIowH6EDVisuM=;
 b=TQ74eGKfzikxFYX74CglINrXjiBXXV4EaK1Op/45WQtBPjHl857XOqnDtWzTml3/YJ
 l/zigNq3L1RKnTZSlm2xVfWNlxcUd/MXish+lyej+1a7gSqCt4WR2UqM8J5xOfacSaB3
 +o24CAXaSsuWHrtC5xmH0b22E6PcEy7FvkIesmwXcIpN2acGxKxrwKl+V/bh4Whf5iP6
 Yw7mcuoXosnJSiPL3e5Vs/J/ZmgVlE8tJFHRLEcWj2kocNYEVEfh7bHgrWd5AzgaBH6f
 +hZzJ2INTAY3nHfLksrS3TlOhKAisHbPwtk8LmBukZpW+VrLATnbs5vmIVIeD9ol4O8F
 f/1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FIQibX7F6XyUGeR3jGbVWa6/eBAfeeFIowH6EDVisuM=;
 b=pSlAeapf1wl9uwajiHdysbh723r6zu5sbCrCSxvLDkT1pOmdeAzWIoYX2NVeR38trG
 h7NI8GQ3qj65EO84U8EVFf+X7c6BInrSa9CF0y0cZOOI7QnPogmBzgbgyP1GSdvCoMjX
 zIRAkoHq1dxA8IizugrzZ2llIAUzPYyl4C8Mj5xkggQJzAHgHAOW6B4RGKf4xucj5KfJ
 quMqaMiwOqa8MmuCOJtGoxoiQyTVcUgEd2bVAFFEnTvNmM6fB/c6HgebCRO5dNlMZEa8
 N11GbdCj0kbJ7IDylR8Ypjd5nWEkchiZfvpXiV93F0v5TmVKrb3aTk+H6vN+O9LtHa9M
 /zMg==
X-Gm-Message-State: APjAAAUIXHnVDdL81NeLJvYJpU2pvkoIRXC0Xqs+uqSAzxGsBg89S4Eb
 Qo8qM4/7Qllr3cn+fykyHDDhCt6bCxNm5QRBdWBs63Y4
X-Google-Smtp-Source: APXvYqwW5fQWqp5jpkykp8vOFU/tQoRtFE7D49joKOWmFU6bT161jU8gt4J6uemZdS/mm+gsGn7W81MTbsUTAVYNpug=
X-Received: by 2002:a05:6808:683:: with SMTP id
 k3mr4431655oig.50.1580254983301; 
 Tue, 28 Jan 2020 15:43:03 -0800 (PST)
MIME-Version: 1.0
References: <2CC2C4B3-61AB-453B-8DC7-DAD50E259F11@gmail.com>
 <04D8FAC9-95EB-4023-98A3-B05998A1193E@gmail.com>
In-Reply-To: <04D8FAC9-95EB-4023-98A3-B05998A1193E@gmail.com>
Date: Tue, 28 Jan 2020 15:44:56 -0800
Message-ID: <CAL263iwLfvCHSduFxN75yuNxcZmvbjRuap2qPUyUcHSN_8LzXw@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] USRP N310 Performance Issues
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4979089966604374746=="
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

--===============4979089966604374746==
Content-Type: multipart/alternative; boundary="000000000000ef3bfb059d3bc851"

--000000000000ef3bfb059d3bc851
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Austin,

>Is there a way to do it directly via the jtag and using the screen command
to speak with the N310?

You could connect to the ARM via JTAG as detailed in the link below, but
you're better off just SSH'ing into it.

https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Connect=
ing_to_the_ARM_via_SSH

Streaming will be very flakey over any sort of wifi. Two options I'd
suggest exploring:

1) Use fiber to have a direct connection. Aqua multimode fiber is pretty
cheap and you can have long runs.

2) Put a host computer next to the USRP wherever it is installed, and
perform your DSP / streaming to that machine, Then connect to that remote
host via wifi for command and control. You can then stream at lower rate
your processed data off that host to a dashboard or whatever your
application is.

Regards,
Nate Temple



On Tue, Jan 28, 2020 at 3:34 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Let=E2=80=99s do some quick math, shall we?
>
> 5msps with 16-bit complex =3D=3D 160Mbit/second
> 1.25msps with 16-bit complex samples =3D=3D an additional 40mbit-second
>
> Unless you have super reliable 1Gig wireless infrastructure, this just
> isn=E2=80=99t going to work.
>
> Sent from my iPhone
>
> On Jan 28, 2020, at 6:23 PM, Austin Adam via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> =EF=BB=BFHey Nate,
> Thanks for the quick response as always! I tried editing those files in
> the past, but I remember having issues because they were locked or I wasn=
=E2=80=99t
> able to actually save any changes that I made. Is there a way to do it
> directly via the jtag and using the screen command to speak with the N310=
?
>
> Also, unfortunately for the current project I am working on, we really
> need to have a wireless connection to the USRPs via the router. I am sure
> there is some way to make it work because we can still get data that look=
s
> good, it just starts to get clunky after a few seconds of streaming.
>
>
> On Jan 28, 2020, at 3:07 PM, Nate Temple <nate.temple@ettus.com> wrote:
>
> =EF=BB=BF
> Hi Austin,
>
> The MTUs on your host and N310 must match. You should modify the systemd
> configuration on the N310 are restart the whole device or restart
> systemd-networkd
>
>
> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updat=
ing_the_Network_Configurations
>
> It is not recommended to stream over a wireless connection as the
> additional delay will cause flow control errors. It is also generally
> recommended to not have a switch in line as some switches can reorder
> packets. You should directly connect to the USRP for the streaming
> interfaces. On the N3xx, it's fine to access the RJ45 management port via=
 a
> switch.
>
> Regards,
> Nate Temple
>
>
>
> On Tue, Jan 28, 2020 at 2:52 PM Austin Adam via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi everyone,
>> I have a very basic GNU script with just a USRP block and a time sink
>> that when I run, there are tons of streaming errors with the tx and rx. =
In
>> GNU, the console is being filled with 'D's and the console for the N210 =
is
>> getting filled with 'U's and 'S's.
>>
>> My setup is just a USRP N210 connected to the RX LO ports of the N310. I
>> am sending the following command to the N210:
>>
>> *"sudo '/home/austin/workarea-uhd/uhd/host/build/examples/tx_waveforms'
>> --args "addr=3D192.168.10.15,type=3Dusrp2" --freq 3.90000e9 --ant "TX/RX=
"
>> --subdev "A:0" --channels 0 --rate 1.25e6 --gain 29.5"*
>>
>> The USRPs are connected to a router via cat 5e cables, and then my lapto=
p
>> is connected to the router via wifi. Something I noticed is that when I
>> connect to the router via ethernet to my laptop, I don't get any of the
>> performance issues. It seems to only happen over the wifi.
>>
>> When I run ifconfig on my laptop, my MTU is set to 1500, and on the USRP
>> N310 the MTU on the sfp0 port that we are using is 8000. I wasn't able t=
o
>> change the MTU on the N310 because it said the device was in use, but th=
ose
>> values seem to work fine over ethernet so I didn't look too much into it=
.
>>
>> The sample rate on my GNU script is set to 5M for now, and lowering it
>> does seem to reduce the amount of 'D's that I get, but also negatively
>> affects our data.
>>
>> Lastly, here is some output from the N210 that shows the error:
>>
>> *austin@Austin-Blade:~$ sudo '/home/*austin
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> */workarea-uhd/uhd/host/build/examples/tx_waveforms' --args
>> "addr=3D192.168.10.15,type=3Dusrp2" --freq 3.90000e9 --ant "TX/RX" --sub=
dev
>> "A:0" --channels 0 --rate 1.25e6 --gain 29.5Creating the usrp device wit=
h:
>> addr=3D192.168.10.15,type=3Dusrp2...[INFO] [UHD] linux; GNU C++ version =
8.3.0;
>> Boost_106700; UHD_3.14.0.HEAD-0-g6875d061[INFO] [USRP2] Opening a
>> USRP2/N-Series device...[INFO] [USRP2] Current recv frame size: 1472
>> bytes[INFO] [USRP2] Current send frame size: 1472 bytesUsing Device: Sin=
gle
>> USRP:  Device: USRP2 / N-Series Device  Mboard 0: N210r4  RX Channel: 0
>> RX DSP: 0    RX Dboard: A    RX Subdev: SBXv3 RX  TX Channel: 0    TX DS=
P:
>> 0    TX Dboard: A    TX Subdev: SBXv3 TXSetting TX Rate: 1.250000
>> Msps...Actual TX Rate: 1.250000 Msps...Setting TX Freq: 3900.000000
>> MHz...Setting TX LO Offset: 0.000000 MHz...Actual TX Freq: 3900.000000
>> MHz...Setting TX Gain: 29.500000 dB...Actual TX Gain: 29.500000
>> dB...Setting device timestamp to 0...Checking TX: LO: locked ...Press Ct=
rl
>> + C to stop streaming...*UUUSUUUU[ERROR] [USRP2] Control packet attempt
>> 0, sequence number 470:
>> RuntimeError: no control response, possible packet loss
>> UUUSUUUUSUUUUUU^C
>> *      Done!*
>>
>> I appreciate any help that anyone has to offer!
>>
>> Best,
>> Austin
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--000000000000ef3bfb059d3bc851
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Austin,<br><br>&gt;Is there a way to do it directly =
via the jtag and using the screen command to speak with the N310?<br><br>Yo=
u could connect to the ARM via JTAG as detailed in the link below, but you&=
#39;re better off just SSH&#39;ing into it. <br><br><a href=3D"https://kb.e=
ttus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Connecting_to_the_A=
RM_via_SSH">https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_G=
uide#Connecting_to_the_ARM_via_SSH</a><br><br>Streaming will be very flakey=
 over any sort of wifi. Two options I&#39;d suggest exploring:<br><br>1) Us=
e fiber to have a direct connection. Aqua multimode fiber is pretty cheap a=
nd you can have long runs. <br><br>2) Put a host computer next to the USRP =
wherever it is installed, and perform your DSP / streaming to that machine,=
 Then connect to that remote host via wifi for command and control. You can=
 then stream at lower rate your processed data off that host to a dashboard=
 or whatever your application is.<br><br>Regards,<br>Nate Temple<br><br><br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, Jan 28, 2020 at 3:34 PM Marcus D Leech &lt;<a href=3D"mailto=
:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Let=E2=
=80=99s do some quick math, shall we?<div><br></div><div>5msps with 16-bit =
complex =3D=3D 160Mbit/second</div><div>1.25msps with 16-bit complex sample=
s =3D=3D an additional 40mbit-second</div><div><br></div><div>Unless you ha=
ve super reliable 1Gig wireless infrastructure, this just isn=E2=80=99t goi=
ng to work. =C2=A0<br><br><div dir=3D"ltr">Sent from my iPhone</div><div di=
r=3D"ltr"><br><blockquote type=3D"cite">On Jan 28, 2020, at 6:23 PM, Austin=
 Adam via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targ=
et=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br><br></blockquote=
></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BFHey Nate,<div>Th=
anks for the quick response as always! I tried editing those files in the p=
ast, but I remember having issues because they were locked or I wasn=E2=80=
=99t able to actually save any changes that I made. Is there a way to do it=
 directly via the jtag and using the screen command to speak with the N310?=
</div><div><br></div><div>Also, unfortunately for the current project I am =
working on, we really need to have a wireless connection to the USRPs via t=
he router. I am sure there is some way to make it work because we can still=
 get data that looks good, it just starts to get clunky after a few seconds=
 of streaming.<br><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br><blockquo=
te type=3D"cite">On Jan 28, 2020, at 3:07 PM, Nate Temple &lt;<a href=3D"ma=
ilto:nate.temple@ettus.com" target=3D"_blank">nate.temple@ettus.com</a>&gt;=
 wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr=
">=EF=BB=BF<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-fami=
ly:arial,helvetica,sans-serif">Hi Austin,<br><br>The MTUs on your host and =
N310 must match. You should modify the systemd configuration on the N310 ar=
e restart the whole device or restart systemd-networkd <br><br><a href=3D"h=
ttps://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updating=
_the_Network_Configurations" target=3D"_blank">https://kb.ettus.com/USRP_N3=
00/N310/N320/N321_Getting_Started_Guide#Updating_the_Network_Configurations=
</a><br><br>It is not recommended to stream over a wireless connection as t=
he additional delay will cause flow control errors. It is also generally re=
commended to not have a switch in line as some switches can reorder packets=
. You should directly connect to the USRP for the streaming interfaces. On =
the N3xx, it&#39;s fine to access the RJ45 management port via a switch. <b=
r><br>Regards,<br>Nate Temple<br><br><br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 28, 2020 at 2:52=
 PM Austin Adam via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi every=
one,<div>I have a very basic GNU script with just a USRP block and a time s=
ink that when I run, there are tons of streaming errors with the tx and rx.=
 In GNU, the console is being filled with &#39;D&#39;s and the console for =
the N210 is getting filled with &#39;U&#39;s and &#39;S&#39;s.<br></div><di=
v><br></div><div>My setup is just a USRP N210 connected to the RX LO ports =
of the N310. I am sending the following command to the N210:</div><div><i><=
br></i></div><div><i>&quot;sudo &#39;/home/austin/workarea-uhd/uhd/host/bui=
ld/examples/tx_waveforms&#39; --args &quot;addr=3D192.168.10.15,type=3Dusrp=
2&quot; --freq 3.90000e9 --ant &quot;TX/RX&quot; --subdev &quot;A:0&quot; -=
-channels 0 --rate 1.25e6 --gain 29.5&quot;</i></div><div><i><br></i></div>=
<div>The USRPs are connected to a router via cat 5e cables, and then my lap=
top is connected=C2=A0to the router via wifi. Something I noticed is that w=
hen I connect to the router via ethernet=C2=A0to my laptop, I don&#39;t get=
 any of the performance issues. It seems to only happen over the wifi.</div=
><div><br></div><div>When I run ifconfig on my laptop, my MTU is set to 150=
0, and on the USRP N310 the MTU on the sfp0 port that we are using is 8000.=
 I wasn&#39;t able to change the MTU on the N310 because it said the device=
 was in use, but those values seem to work fine over ethernet so I didn&#39=
;t look too much into it.</div><div><br></div><div>The sample rate on my GN=
U script is set to 5M for now, and lowering it does seem to reduce the amou=
nt of &#39;D&#39;s that I get, but also negatively affects our data.=C2=A0<=
/div><div><br></div><div>Lastly, here is some output from the N210 that sho=
ws the error:</div><div><br></div><div><i>austin@Austin-Blade:~$ sudo &#39;=
/home/</i>austin<i>/workarea-uhd/uhd/host/build/examples/tx_waveforms&#39; =
--args &quot;addr=3D192.168.10.15,type=3Dusrp2&quot; --freq 3.90000e9 --ant=
 &quot;TX/RX&quot; --subdev &quot;A:0&quot; --channels 0 --rate 1.25e6 --ga=
in 29.5<br><br>Creating the usrp device with: addr=3D192.168.10.15,type=3Du=
srp2...<br>[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; UHD_3.1=
4.0.HEAD-0-g6875d061<br>[INFO] [USRP2] Opening a USRP2/N-Series device...<b=
r>[INFO] [USRP2] Current recv frame size: 1472 bytes<br>[INFO] [USRP2] Curr=
ent send frame size: 1472 bytes<br>Using Device: Single USRP:<br>=C2=A0 Dev=
ice: USRP2 / N-Series Device<br>=C2=A0 Mboard 0: N210r4<br>=C2=A0 RX Channe=
l: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=
=A0 RX Subdev: SBXv3 RX<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<=
br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: SBXv3 TX<br><br>S=
etting TX Rate: 1.250000 Msps...<br>Actual TX Rate: 1.250000 Msps...<br><br=
>Setting TX Freq: 3900.000000 MHz...<br>Setting TX LO Offset: 0.000000 MHz.=
..<br>Actual TX Freq: 3900.000000 MHz...<br><br>Setting TX Gain: 29.500000 =
dB...<br>Actual TX Gain: 29.500000 dB...<br><br>Setting device timestamp to=
 0...<br>Checking TX: LO: locked ...<br>Press Ctrl + C to stop streaming...=
<br></i>UUUSUUUU[ERROR] [USRP2] Control packet attempt 0, sequence number 4=
70:<br>RuntimeError: no control response, possible packet loss<br>UUUSUUUUS=
UUUUUU^C<i>=C2=A0 =C2=A0 =C2=A0=C2=A0<br>Done!</i><br></div><div><i><br></i=
></div><div>I appreciate any help that anyone has to offer!</div><div><br><=
/div><div>Best,</div><div>Austin</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div><span>____________________________________________=
___</span><br><span>USRP-users mailing list</span><br><span><a href=3D"mail=
to:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com=
</a></span><br><span><a href=3D"http://lists.ettus.com/mailman/listinfo/usr=
p-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.com/mailman/l=
istinfo/usrp-users_lists.ettus.com</a></span><br></div></blockquote></div><=
/div></blockquote></div>

--000000000000ef3bfb059d3bc851--


--===============4979089966604374746==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4979089966604374746==--

