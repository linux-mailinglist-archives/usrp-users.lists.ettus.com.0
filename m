Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4561FE8FBD
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2019 20:12:27 +0100 (CET)
Received: from [::1] (port=44408 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iPWug-0007Dc-AW; Tue, 29 Oct 2019 15:12:18 -0400
Received: from mail-qk1-f175.google.com ([209.85.222.175]:46866)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <wddias@gmail.com>) id 1iPWue-000711-2J
 for usrp-users@lists.ettus.com; Tue, 29 Oct 2019 15:12:16 -0400
Received: by mail-qk1-f175.google.com with SMTP id e66so13391883qkf.13
 for <usrp-users@lists.ettus.com>; Tue, 29 Oct 2019 12:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LEP9gxmq7u4g5kdnkeb/BG6Y3pjdp7TvNFqBQlKuxuA=;
 b=E7UDZXErtKhoow4XuwnIw79v4OeYaO3oqhJzRs0I4Yvoyp4G2BYUja9wCE1Ot0Fjo4
 YnvbShW6DvzvvkIZIePnZKFcTwNKB9MwG4grbuChsQkUextHAoLFRAWDaadX1VuzCptr
 dBdB5+rW9ExP1bP6Cxuvl230fCUjXwY/krtIPicME8qdI9QSK1JDkGp8m7as12pN85GE
 Dz4ceWPOsnA0cbH3dd/iztOyQn0h18Rw50X0rd0JRWWJy+VCUD/PD+Wk+kFSvrlPOTjs
 bLm7UeM6UTXtAKVKiuXrREc2TYunnKAR9cVFXvVjDWTOiEM6LhgrsLN46QLiVBPMlbB4
 netQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LEP9gxmq7u4g5kdnkeb/BG6Y3pjdp7TvNFqBQlKuxuA=;
 b=RCBcuTLgttPbZ6Q0N2udAK+DhshCdlMJ+VsnaDT/dbeU/uXYa1RoXOqUGvY7BN6lRG
 yULezBYv9JA43jlMy8dWqNoUAQQpqog/xphbLxYLfEGf3yMhZR45P2MXdBngcuE/AIPy
 /HkZbwPQQOto1xMftEIu5zzQJYG/uOxX4YPueOqusb/sz715l6DVCLf0vZ4YzCW+aJSB
 MEBUx/VmJNsYOkl5C6tI0489i/BvqMp5aemNigI5As7uPEEKZ531KciWFoGciqq3pfjS
 efDNQmzmp09xwG4Lc8CwreVfIF+b8WKWRTLMNik6DF+cwW5dQ148GLZnF9JCP8Vveubo
 swZg==
X-Gm-Message-State: APjAAAWVm4j11kOX4Pbk7o0A/nUQC4aC9JU8S4t5cRpJr1AnUT7tOJf5
 6gbO6OXWW3s/jIGeBMwbvFgrDIxmvSCbnG2NkcP31Er/
X-Google-Smtp-Source: APXvYqwPoDRPkWelg99hXf/m8w1vCC6br0+83bKTqev+QR9DPugXcdCO+VsE/LsfozRSXJfZS+0qYvAKF6GSkXzxW8M=
X-Received: by 2002:a05:620a:a1a:: with SMTP id
 i26mr15937550qka.467.1572376294983; 
 Tue, 29 Oct 2019 12:11:34 -0700 (PDT)
MIME-Version: 1.0
References: <CALSKgPy9YoLX2fXWJPiy5kWDxswB_0oQ4VC1chWw6EqCVKJ+Rw@mail.gmail.com>
 <CANf970YQrC0_ZXOYQhyr9SqaqP8gj6rjuiMszESpPv769PnxgA@mail.gmail.com>
 <CALSKgPxmmkkxu-9nfeCFrK81MD7A4P7p6xqQMbWagK+HwttF5g@mail.gmail.com>
 <CANf970Yg4YF+Hvcdaa9GMdfQ6xwO75ZN15qsUUdoihmCc5Khog@mail.gmail.com>
 <CALSKgPwFnAZMzPEiAAarLWXT3tu6n0X4SeaFyVMKtrA5AK1rCQ@mail.gmail.com>
In-Reply-To: <CALSKgPwFnAZMzPEiAAarLWXT3tu6n0X4SeaFyVMKtrA5AK1rCQ@mail.gmail.com>
Date: Tue, 29 Oct 2019 16:11:23 -0300
Message-ID: <CALSKgPx9Zq7sYdkjMS7NRJd2uUXnL9S_nRT5qNS+9FTE2Fb4Sw@mail.gmail.com>
To: Sam Reiter <sam.reiter@ettus.com>
Subject: Re: [USRP-users] X310 over PCIe not found in Ubuntu 18
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Wheberth Damascena Dias via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wheberth Damascena Dias <wheberth@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0745821722544156376=="
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

--===============0745821722544156376==
Content-Type: multipart/alternative; boundary="000000000000840c8705961162be"

--000000000000840c8705961162be
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Here is the full output of the lspci. I will try to install Ubuntu 16.04
and see

00:00.0 Host bridge: Intel Corporation Device 3e30 (rev 0a)
00:01.0 PCI bridge: Intel Corporation Xeon E3-1200 v5/E3-1500 v5/6th Gen
Core Processor PCIe Controller (x16) (rev 0a)
00:02.0 VGA compatible controller: Intel Corporation Device 3e98
00:14.0 USB controller: Intel Corporation Cannon Lake PCH USB 3.1 xHCI Host
Controller (rev 10)
00:14.2 RAM memory: Intel Corporation Cannon Lake PCH Shared SRAM (rev 10)
00:14.3 Network controller: Intel Corporation Wireless-AC 9560 [Jefferson
Peak] (rev 10)
00:16.0 Communication controller: Intel Corporation Cannon Lake PCH HECI
Controller (rev 10)
00:17.0 SATA controller: Intel Corporation Cannon Lake PCH SATA AHCI
Controller (rev 10)
00:1b.0 PCI bridge: Intel Corporation Device a340 (rev f0)
00:1c.0 PCI bridge: Intel Corporation Device a338 (rev f0)
00:1d.0 PCI bridge: Intel Corporation Cannon Lake PCH PCI Express Root Port
9 (rev f0)
00:1f.0 ISA bridge: Intel Corporation Device a305 (rev 10)
00:1f.3 Audio device: Intel Corporation Cannon Lake PCH cAVS (rev 10)
00:1f.4 SMBus: Intel Corporation Cannon Lake PCH SMBus Controller (rev 10)
00:1f.5 Serial bus controller [0c80]: Intel Corporation Cannon Lake PCH SPI
Controller (rev 10)
00:1f.6 Ethernet controller: Intel Corporation Ethernet Connection (7)
I219-V (rev 10)
01:00.0 PCI bridge: PLX Technology, Inc. PEX 8608 8-lane, 8-Port PCI
Express Gen 2 (5.0 GT/s) Switch (rev ba)
02:01.0 PCI bridge: PLX Technology, Inc. PEX 8608 8-lane, 8-Port PCI
Express Gen 2 (5.0 GT/s) Switch (rev ba)
03:00.0 Signal processing controller: National Instruments PXIe/PCIe Device

Em sex, 25 de out de 2019 =C3=A0s 20:55, Wheberth Damascena Dias <
wheberth@gmail.com> escreveu:

> This computer has a mini-ITX board (ASUS ROG Strix Z390-I ) with just one
> x16 slot.
> However, on monday I can get the full output of the lspci command.
>
> Em sex, 25 de out de 2019 =C3=A0s 18:28, Sam Reiter <sam.reiter@ettus.com=
>
> escreveu:
>
>> Would you be able to try shifting this card to another PCIe slot in your
>> machine?
>>
>> I'm also interested in knowing what other PCIe devices you have connecte=
d
>> to the computer. It might be worth making the X310's PCIe link the only
>> connection, at least for testing purposes.
>>
>> Sam
>>
>>
>> On Wed, Oct 23, 2019 at 6:58 PM Wheberth Damascena Dias <
>> wheberth@gmail.com> wrote:
>>
>>> Hi Mr Reiter,
>>> Thank you for your answer.
>>>
>>> Actually yes, the same X310 runs perfectly in another machine. Its a i7
>>> 6th gen with ubuntu 18.04 kernel  4.15.0, libuhd and uhd-host on same
>>> version.
>>>
>>> I think this can be some PCIe related setting on the BIOS, since the
>>> lspci shows [disabled] next to the base address, but I can't find any
>>> option to change it on the BIOS.
>>>
>>> Best Regards
>>>
>>>
>>>
>>>
>>>
>
> --
> *Wheberth Damascena Dias*
> _______________ _____ _____ __ ___ __ _ _ _  _
> http://www.linkedin.com/in/wheberth
> e-mail:wheberth@gmail.com
>
>

--=20
*Wheberth Damascena Dias*
_______________ _____ _____ __ ___ __ _ _ _  _
http://www.linkedin.com/in/wheberth
e-mail:wheberth@gmail.com

--000000000000840c8705961162be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Here is the full output of the lspci. I will try to i=
nstall Ubuntu 16.04 and see <br></div><div><br></div><div>00:00.0 Host brid=
ge: Intel Corporation Device 3e30 (rev 0a)<br>00:01.0 PCI bridge: Intel Cor=
poration Xeon E3-1200 v5/E3-1500 v5/6th Gen Core Processor PCIe Controller =
(x16) (rev 0a)<br>00:02.0 VGA compatible controller: Intel Corporation Devi=
ce 3e98<br>00:14.0 USB controller: Intel Corporation Cannon Lake PCH USB 3.=
1 xHCI Host Controller (rev 10)<br>00:14.2 RAM memory: Intel Corporation Ca=
nnon Lake PCH Shared SRAM (rev 10)<br>00:14.3 Network controller: Intel Cor=
poration Wireless-AC 9560 [Jefferson Peak] (rev 10)<br>00:16.0 Communicatio=
n controller: Intel Corporation Cannon Lake PCH HECI Controller (rev 10)<br=
>00:17.0 SATA controller: Intel Corporation Cannon Lake PCH SATA AHCI Contr=
oller (rev 10)<br>00:1b.0 PCI bridge: Intel Corporation Device a340 (rev f0=
)<br>00:1c.0 PCI bridge: Intel Corporation Device a338 (rev f0)<br>00:1d.0 =
PCI bridge: Intel Corporation Cannon Lake PCH PCI Express Root Port 9 (rev =
f0)<br>00:1f.0 ISA bridge: Intel Corporation Device a305 (rev 10)<br>00:1f.=
3 Audio device: Intel Corporation Cannon Lake PCH cAVS (rev 10)<br>00:1f.4 =
SMBus: Intel Corporation Cannon Lake PCH SMBus Controller (rev 10)<br>00:1f=
.5 Serial bus controller [0c80]: Intel Corporation Cannon Lake PCH SPI Cont=
roller (rev 10)<br>00:1f.6 Ethernet controller: Intel Corporation Ethernet =
Connection (7) I219-V (rev 10)<br>01:00.0 PCI bridge: PLX Technology, Inc. =
PEX 8608 8-lane, 8-Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)<br>02:=
01.0 PCI bridge: PLX Technology, Inc. PEX 8608 8-lane, 8-Port PCI Express G=
en 2 (5.0 GT/s) Switch (rev ba)<br>03:00.0 Signal processing controller: Na=
tional Instruments PXIe/PCIe Device<br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">Em sex, 25 de out de 2019 =C3=
=A0s 20:55, Wheberth Damascena Dias &lt;<a href=3D"mailto:wheberth@gmail.co=
m">wheberth@gmail.com</a>&gt; escreveu:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div>This computer has a mini-ITX =
board (ASUS ROG Strix Z390-I ) with just one x16 slot.=C2=A0</div><div>Howe=
ver,=C2=A0on monday I can get the full output of the lspci command.<br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">Em sex, 25 de out de 2019 =C3=A0s 18:28, Sam Reiter &lt;<a href=3D"mailto=
:sam.reiter@ettus.com" target=3D"_blank">sam.reiter@ettus.com</a>&gt; escre=
veu:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr">Would you be able to try shifting this card to another PCIe slot in y=
our machine?<div><br></div><div>I&#39;m also interested in knowing what oth=
er PCIe devices you have connected to the computer. It might be worth makin=
g the X310&#39;s PCIe link the only connection, at least for testing purpos=
es.=C2=A0</div><div><br clear=3D"all"><div><div dir=3D"ltr"><div dir=3D"ltr=
"><div><div dir=3D"ltr">Sam=C2=A0</div></div></div></div></div><br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Wed, Oct 23, 2019 at 6:58 PM Wheberth Damascena Dias &lt;<a href=3D"mailto=
:wheberth@gmail.com" target=3D"_blank">wheberth@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">=
<div dir=3D"auto">Hi Mr Reiter,=C2=A0</div><div dir=3D"auto">Thank you for =
your answer.</div><div dir=3D"auto"><br></div>Actually yes, the same X310 r=
uns perfectly in another machine. Its a i7 6th gen with ubuntu 18.04 kernel=
=C2=A0 4.15.0, libuhd and uhd-host on same version.<div dir=3D"auto"><br></=
div><div dir=3D"auto">I think this can be some PCIe related setting on the =
BIOS, since the lspci shows [disabled] next to the base address, but I can&=
#39;t find any option to change it on the BIOS.=C2=A0</div><div dir=3D"auto=
"><br></div><div dir=3D"auto">Best Regards</div><div dir=3D"auto"><br></div=
><div dir=3D"auto"><br></div><div dir=3D"auto"><br><div dir=3D"auto"><br></=
div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr"><div><span style=3D"font-size:12.8px"><b>Wheberth Damasce=
na Dias</b></span><br></div><div><span style=3D"color:rgb(80,0,80);font-siz=
e:12.8px">_______________ _____ _____ __ ___ __ _ _ _=C2=A0 _=C2=A0</span><=
br><div><a href=3D"http://www.linkedin.com/in/wheberth" target=3D"_blank">h=
ttp://www.linkedin.com/in/wheberth</a></div><div><a href=3D"mailto:e-mail%3=
Awheberth@gmail.com" target=3D"_blank">e-mail:wheberth@gmail.com</a></div><=
div><div><div><br></div></div></div></div></div></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><div><span style=3D"font-size:12.8px"><b>W=
heberth Damascena Dias</b></span><br></div><div><span style=3D"color:rgb(80=
,0,80);font-size:12.8px">_______________ _____ _____ __ ___ __ _ _ _=C2=A0 =
_=C2=A0</span><br><div><a href=3D"http://www.linkedin.com/in/wheberth" targ=
et=3D"_blank">http://www.linkedin.com/in/wheberth</a></div><div><a href=3D"=
mailto:e-mail%3Awheberth@gmail.com" target=3D"_blank">e-mail:wheberth@gmail=
.com</a></div><div><div><div><br></div></div></div></div></div></div>

--000000000000840c8705961162be--


--===============0745821722544156376==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0745821722544156376==--

