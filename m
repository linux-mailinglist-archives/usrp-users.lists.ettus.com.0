Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B92D14C366
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jan 2020 00:08:12 +0100 (CET)
Received: from [::1] (port=54848 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iwZxp-0002tS-CC; Tue, 28 Jan 2020 18:08:09 -0500
Received: from mail-oi1-f169.google.com ([209.85.167.169]:41790)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1iwZxm-0002oR-59
 for usrp-users@lists.ettus.com; Tue, 28 Jan 2020 18:08:06 -0500
Received: by mail-oi1-f169.google.com with SMTP id i1so12113730oie.8
 for <usrp-users@lists.ettus.com>; Tue, 28 Jan 2020 15:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iV6WDU6u+rAKp8a+g1BZ/wc36fQReKBPLnw7ltSbrVI=;
 b=XpnKsr9ne8qxIFtsVbOJKEQv3sdFuC6r/rFcEPqwOpcv8ckyMaIIDVuNGtCKr/onni
 07tQAsOtIz0OcXkZJRP0e5ZLm8HJ3rRTR2jsoUgYl55IGsQ8nW5mt0UTN3yECIc81fMv
 5caT7WMMCMEW4TGUIaJDeWko8oB9pM8r5/+sKE2Vapwx+mQvNQpfl1BaYq8YR6uIISGQ
 s85+FUvVJw4ur2kr5G+cVVuDzVzLtgYGhZZVImdkPTKL5YMaxuumpmNqzq17dTmeLk6J
 McdbuL3an8Fw3Emx+GzBEKGYsQhFYMj+I16xpBHX4TPbIVyjkooMFrdkHjDkHtVFaImz
 dXEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iV6WDU6u+rAKp8a+g1BZ/wc36fQReKBPLnw7ltSbrVI=;
 b=ipZy5Dog3bqofpc4lPZ7UmCSiXukghhdbe2PJLL0gdOLphGK8Q9jpsyDGuuIswB/a4
 ZOYm73+98zAh8yR0g3uIM2p5dwelCJC7CCT6BCmfiEvsG4gNBOyubVP8GC36AGh5a92H
 nhitE+PXZssT4yDdSb00I5C6B80Lmm9Z3+/AWb4QS2eqJNpwKNYj0oYphdCQ1cb29iPj
 nXF98bS8NF6LZAKMt7hUnDkXQWu2MXpctiSa15PMmUsLEXXA9xjGD7vG+IZ8XgaokMaL
 lBOkoEx91EFQ938bQEfIBXspdQhW3cNzhgj1nbDtAUiDgHCt0TI4Up1uhD9/03hV/29g
 urZw==
X-Gm-Message-State: APjAAAWyEnu6YYPbTohIQXgEQAh8ZFmpJvapEDJ9bFq1fqxCJX/9djhd
 2wsW5IzEekkioukCTrTBjnpZNOwIbp/oCJnDkizEM0Q1
X-Google-Smtp-Source: APXvYqxLhoRXhOz02a4x5FjyhW2ga0wvcwIzU0CCGDZQspjNlhSbpp5dIWo+F6v4UiSoJFDlKVusg97YUkW7y8l1u8w=
X-Received: by 2002:a05:6808:683:: with SMTP id
 k3mr4347510oig.50.1580252845389; 
 Tue, 28 Jan 2020 15:07:25 -0800 (PST)
MIME-Version: 1.0
References: <CAMKs6he+ik2fcJqXGXzBVhn-80ixSegP4DoKVzoGGOc_rcW5=w@mail.gmail.com>
In-Reply-To: <CAMKs6he+ik2fcJqXGXzBVhn-80ixSegP4DoKVzoGGOc_rcW5=w@mail.gmail.com>
Date: Tue, 28 Jan 2020 15:09:18 -0800
Message-ID: <CAL263iy0PaLZ7h+XQw-J0HAKsyLKuAn_RUkbwccg=hJCxQ9C6g@mail.gmail.com>
To: Austin Adam <austinadam42@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============0361293343539249566=="
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

--===============0361293343539249566==
Content-Type: multipart/alternative; boundary="000000000000814f06059d3b49a7"

--000000000000814f06059d3b49a7
Content-Type: text/plain; charset="UTF-8"

Hi Austin,

The MTUs on your host and N310 must match. You should modify the systemd
configuration on the N310 are restart the whole device or restart
systemd-networkd

https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updating_the_Network_Configurations

It is not recommended to stream over a wireless connection as the
additional delay will cause flow control errors. It is also generally
recommended to not have a switch in line as some switches can reorder
packets. You should directly connect to the USRP for the streaming
interfaces. On the N3xx, it's fine to access the RJ45 management port via a
switch.

Regards,
Nate Temple



On Tue, Jan 28, 2020 at 2:52 PM Austin Adam via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi everyone,
> I have a very basic GNU script with just a USRP block and a time sink that
> when I run, there are tons of streaming errors with the tx and rx. In GNU,
> the console is being filled with 'D's and the console for the N210 is
> getting filled with 'U's and 'S's.
>
> My setup is just a USRP N210 connected to the RX LO ports of the N310. I
> am sending the following command to the N210:
>
> *"sudo '/home/austin/workarea-uhd/uhd/host/build/examples/tx_waveforms'
> --args "addr=192.168.10.15,type=usrp2" --freq 3.90000e9 --ant "TX/RX"
> --subdev "A:0" --channels 0 --rate 1.25e6 --gain 29.5"*
>
> The USRPs are connected to a router via cat 5e cables, and then my laptop
> is connected to the router via wifi. Something I noticed is that when I
> connect to the router via ethernet to my laptop, I don't get any of the
> performance issues. It seems to only happen over the wifi.
>
> When I run ifconfig on my laptop, my MTU is set to 1500, and on the USRP
> N310 the MTU on the sfp0 port that we are using is 8000. I wasn't able to
> change the MTU on the N310 because it said the device was in use, but those
> values seem to work fine over ethernet so I didn't look too much into it.
>
> The sample rate on my GNU script is set to 5M for now, and lowering it
> does seem to reduce the amount of 'D's that I get, but also negatively
> affects our data.
>
> Lastly, here is some output from the N210 that shows the error:
>
> *austin@Austin-Blade:~$ sudo '/home/*austin
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> */workarea-uhd/uhd/host/build/examples/tx_waveforms' --args
> "addr=192.168.10.15,type=usrp2" --freq 3.90000e9 --ant "TX/RX" --subdev
> "A:0" --channels 0 --rate 1.25e6 --gain 29.5Creating the usrp device with:
> addr=192.168.10.15,type=usrp2...[INFO] [UHD] linux; GNU C++ version 8.3.0;
> Boost_106700; UHD_3.14.0.HEAD-0-g6875d061[INFO] [USRP2] Opening a
> USRP2/N-Series device...[INFO] [USRP2] Current recv frame size: 1472
> bytes[INFO] [USRP2] Current send frame size: 1472 bytesUsing Device: Single
> USRP:  Device: USRP2 / N-Series Device  Mboard 0: N210r4  RX Channel: 0
> RX DSP: 0    RX Dboard: A    RX Subdev: SBXv3 RX  TX Channel: 0    TX DSP:
> 0    TX Dboard: A    TX Subdev: SBXv3 TXSetting TX Rate: 1.250000
> Msps...Actual TX Rate: 1.250000 Msps...Setting TX Freq: 3900.000000
> MHz...Setting TX LO Offset: 0.000000 MHz...Actual TX Freq: 3900.000000
> MHz...Setting TX Gain: 29.500000 dB...Actual TX Gain: 29.500000
> dB...Setting device timestamp to 0...Checking TX: LO: locked ...Press Ctrl
> + C to stop streaming...*UUUSUUUU[ERROR] [USRP2] Control packet attempt
> 0, sequence number 470:
> RuntimeError: no control response, possible packet loss
> UUUSUUUUSUUUUUU^C
> *      Done!*
>
> I appreciate any help that anyone has to offer!
>
> Best,
> Austin
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000814f06059d3b49a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Austin,<br><br>The MTUs on your host and N310 must m=
atch. You should modify the systemd configuration on the N310 are restart t=
he whole device or restart systemd-networkd <br><br><a href=3D"https://kb.e=
ttus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updating_the_Networ=
k_Configurations">https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Sta=
rted_Guide#Updating_the_Network_Configurations</a><br><br>It is not recomme=
nded to stream over a wireless connection as the additional delay will caus=
e flow control errors. It is also generally recommended to not have a switc=
h in line as some switches can reorder packets. You should directly connect=
 to the USRP for the streaming interfaces. On the N3xx, it&#39;s fine to ac=
cess the RJ45 management port via a switch. <br><br>Regards,<br>Nate Temple=
<br><br><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Tue, Jan 28, 2020 at 2:52 PM Austin Adam via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr">Hi everyone,<div>I have a very basic GNU script with ju=
st a USRP block and a time sink that when I run, there are tons of streamin=
g errors with the tx and rx. In GNU, the console is being filled with &#39;=
D&#39;s and the console for the N210 is getting filled with &#39;U&#39;s an=
d &#39;S&#39;s.<br></div><div><br></div><div>My setup is just a USRP N210 c=
onnected to the RX LO ports of the N310. I am sending the following command=
 to the N210:</div><div><i><br></i></div><div><i>&quot;sudo &#39;/home/aust=
in/workarea-uhd/uhd/host/build/examples/tx_waveforms&#39; --args &quot;addr=
=3D192.168.10.15,type=3Dusrp2&quot; --freq 3.90000e9 --ant &quot;TX/RX&quot=
; --subdev &quot;A:0&quot; --channels 0 --rate 1.25e6 --gain 29.5&quot;</i>=
</div><div><i><br></i></div><div>The USRPs are connected to a router via ca=
t 5e cables, and then my laptop is connected=C2=A0to the router via wifi. S=
omething I noticed is that when I connect to the router via ethernet=C2=A0t=
o my laptop, I don&#39;t get any of the performance issues. It seems to onl=
y happen over the wifi.</div><div><br></div><div>When I run ifconfig on my =
laptop, my MTU is set to 1500, and on the USRP N310 the MTU on the sfp0 por=
t that we are using is 8000. I wasn&#39;t able to change the MTU on the N31=
0 because it said the device was in use, but those values seem to work fine=
 over ethernet so I didn&#39;t look too much into it.</div><div><br></div><=
div>The sample rate on my GNU script is set to 5M for now, and lowering it =
does seem to reduce the amount of &#39;D&#39;s that I get, but also negativ=
ely affects our data.=C2=A0</div><div><br></div><div>Lastly, here is some o=
utput from the N210 that shows the error:</div><div><br></div><div><i>austi=
n@Austin-Blade:~$ sudo &#39;/home/</i>austin<i>/workarea-uhd/uhd/host/build=
/examples/tx_waveforms&#39; --args &quot;addr=3D192.168.10.15,type=3Dusrp2&=
quot; --freq 3.90000e9 --ant &quot;TX/RX&quot; --subdev &quot;A:0&quot; --c=
hannels 0 --rate 1.25e6 --gain 29.5<br><br>Creating the usrp device with: a=
ddr=3D192.168.10.15,type=3Dusrp2...<br>[INFO] [UHD] linux; GNU C++ version =
8.3.0; Boost_106700; UHD_3.14.0.HEAD-0-g6875d061<br>[INFO] [USRP2] Opening =
a USRP2/N-Series device...<br>[INFO] [USRP2] Current recv frame size: 1472 =
bytes<br>[INFO] [USRP2] Current send frame size: 1472 bytes<br>Using Device=
: Single USRP:<br>=C2=A0 Device: USRP2 / N-Series Device<br>=C2=A0 Mboard 0=
: N210r4<br>=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=
=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: SBXv3 RX<br>=C2=A0 TX Channel:=
 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=
=A0 TX Subdev: SBXv3 TX<br><br>Setting TX Rate: 1.250000 Msps...<br>Actual =
TX Rate: 1.250000 Msps...<br><br>Setting TX Freq: 3900.000000 MHz...<br>Set=
ting TX LO Offset: 0.000000 MHz...<br>Actual TX Freq: 3900.000000 MHz...<br=
><br>Setting TX Gain: 29.500000 dB...<br>Actual TX Gain: 29.500000 dB...<br=
><br>Setting device timestamp to 0...<br>Checking TX: LO: locked ...<br>Pre=
ss Ctrl + C to stop streaming...<br></i>UUUSUUUU[ERROR] [USRP2] Control pac=
ket attempt 0, sequence number 470:<br>RuntimeError: no control response, p=
ossible packet loss<br>UUUSUUUUSUUUUUU^C<i>=C2=A0 =C2=A0 =C2=A0=C2=A0<br>Do=
ne!</i><br></div><div><i><br></i></div><div>I appreciate any help that anyo=
ne has to offer!</div><div><br></div><div>Best,</div><div>Austin</div></div=
>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000814f06059d3b49a7--


--===============0361293343539249566==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0361293343539249566==--

