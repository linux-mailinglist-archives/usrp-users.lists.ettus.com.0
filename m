Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E112C6B86
	for <lists+usrp-users@lfdr.de>; Fri, 27 Nov 2020 19:24:00 +0100 (CET)
Received: from [::1] (port=34622 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kiiPX-0002kF-FN; Fri, 27 Nov 2020 13:23:59 -0500
Received: from mail-lf1-f51.google.com ([209.85.167.51]:39802)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wandrewp@gmail.com>) id 1kiiPT-0002dQ-Ou
 for usrp-users@lists.ettus.com; Fri, 27 Nov 2020 13:23:55 -0500
Received: by mail-lf1-f51.google.com with SMTP id j205so8239237lfj.6
 for <usrp-users@lists.ettus.com>; Fri, 27 Nov 2020 10:23:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=PuwMrv6L3/XPleD5UGrYcugUeSlzIgNY6yM1HK9/cus=;
 b=OsMxlvXYq0nE7uOlaP6rQeQzkwoqnh2VaFFufNL0G1X7oI2y+i2+VnjMyfEDvtkLNR
 vsvYq1X+fiRr3np7RZ5Ux5kdCIFdd4c+61TnFKodbFDvVJMa1gatT5i+T6rq8sMckEmy
 khmdd8Uhf5hS129Y69OPh8l2DpMynL6PPdgKfFE9r68vviTkr+usMsCXRgtX6JiFbuBe
 H8JbZOh6fgobb5pkkprxIe1M8xMrLM+ZiNQwQ3Ab25eGb583JmzaYAq1OGVdg+CNQtOO
 U2StcoEmhokFO+L7XoTmu7jG46cJSWVYPZdTL5vHevu35PCNL0keTbepbFmnGAwHCWyN
 UO/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=PuwMrv6L3/XPleD5UGrYcugUeSlzIgNY6yM1HK9/cus=;
 b=GeoRBZTlFJ/YZRpGkAty8rZSfmuD99MYqkOsjpr2Aj0bFipXATMaak7IMEf03a1Ak/
 JfNRj0Z+pfMuXqDbQ+QnBxZWXZF39fpK9GwM+EnWYA4VCfQJg9EtAgP42Bc7OtWL9TkP
 b4xODpja0j3blKNMrX77GTinYvp2qykQXCSFHV+T0R4vWrypwRyqt8veFWBhmv/PmBrI
 qV5ifgrQLeFmRzf/7c1/mLKRCIZZXw/BUiA/mggazthdjvMiZf/pcriKJ/mnQp56LVYL
 QbD5lJ4UH68zplGjZrgzMHZNORBA8Lf3cgGiJqh3bCY40tpXAbEihFrdFk7XQWZid9mI
 1blw==
X-Gm-Message-State: AOAM5338f4gsfk03avb3Dwg2HWRyeMEG+AfNlFOZ7qxbE+3igBKYDy3W
 W7ZQSxZsZoXPIcQmvnYiUXA0esef7L11HbWvtnxAiJ0z
X-Google-Smtp-Source: ABdhPJwn/rUsYQGxAvTBjKcWWc0CvcI/GKDwKjnLJHBzyVGd5I4vAaHTeCZ+LQ0LwmijqUyeOT4+IFQ4RNdtJByR0E8=
X-Received: by 2002:ac2:5c4a:: with SMTP id s10mr4483068lfp.134.1606501392896; 
 Fri, 27 Nov 2020 10:23:12 -0800 (PST)
MIME-Version: 1.0
References: <CAB50+dSat-OFqtA38AxNiftepxCP4d=LuxrVjbLMKOtu6q+krg@mail.gmail.com>
 <82C8BA12-2EC5-45E9-9446-1890860A8F30@gmail.com>
 <CAB50+dT2ah526Vw7gp7q0UYNw5iWA8zt0Gyx0hOhhSF5F1Lxag@mail.gmail.com>
 <CAB50+dSFc_DDhR=-dyN85vGG_utfRwhc1Dvjciv_q3K6U3_GcA@mail.gmail.com>
In-Reply-To: <CAB50+dSFc_DDhR=-dyN85vGG_utfRwhc1Dvjciv_q3K6U3_GcA@mail.gmail.com>
Date: Fri, 27 Nov 2020 13:23:02 -0500
Message-ID: <CAB50+dTqG7GiBOn=3vBMu=n5MNS-XvpJqsw_QryGkjeP=OWQkA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Fwd: E310: Change MAC Address?
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
From: Andrew Payne via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrew Payne <wandrewp@gmail.com>
Content-Type: multipart/mixed; boundary="===============8546103374297194940=="
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

--===============8546103374297194940==
Content-Type: multipart/alternative; boundary="000000000000dad52105b51ac052"

--000000000000dad52105b51ac052
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

P.S.: To add, in each of my 8 e310s, the following command:

cat /sys/class/net/eth0/address

yields:  00:80:2f:19:4c:37

So I have that mac address in 8 SDRs on my LAN.  And only one of them is
true, the one from which I cloned the golden image via dd.

But the following command:
hexdump /sys/bus/nvmem/devices/0-00510/nvmem

yields ... 8000 182f f624 ...
and if you rearrange each byte, you get: 00:80:2f:18:24:f6

which is the encoded hw address on the PHY on the sample e310.  If I knew
where Linux gets its /sys/class/net/... device tree from I could chase that
rabbit hole.

Any clues or tips I'd appreciate it.

Thanks,
Andrew


On Fri, Nov 27, 2020 at 1:15 PM Andrew Payne <wandrewp@gmail.com> wrote:

> Just an update on my findings with the MAC Address problem.  It seems tha=
t
> on first boot, the mac address is set in stone in the u-boot environment
> variable ethaddr.  It cannot be manually changed by me if I went into the
> u-boot configuration menu:
> https://www.denx.de/wiki/view/DULG/UBootEnvVariables
>
> So if you then move that SD card that has been booted in one particular
> e310 to another, the mac address will follow.  That is the problem I have=
,
> and I wanted to see if that also happens with others' e310s?  Or maybe it
> is the particular sdimg file I have downloaded (v3.15.0.0).
>
> I guess to solve this issue myself without digging in too deeply to the
> nuances of bitbaking (which I've already started and in a little bit over
> my head), I could just copy a fresh uboot image to the 7 other SDRs I hav=
e,
> and theoretically on bootup u-boot would detect the hw address and set
> their unique MAC address, which is what should happen.  But running md5su=
m
> on u-boot.img and boot.bin, to my dismay I have found out the checksum
> doesn't change after boot from a fresh sdimg file's u-boot.img and
> boot.bin.  So where could the u-boot environment variables actually be
> stored on the sd card?
>
> Thanks,
> Andrew
>
> On Wed, Nov 25, 2020 at 2:21 PM Andrew Payne <wandrewp@gmail.com> wrote:
>
>> Of the 8 e310s that I have tested with the same image, only one of them
>> has the actual MAC address of 00:80:2f:19:4c:37, which I was able to fin=
d
>> out via:
>> hexdump /sys/bus/nvmem/devices/0-00510/nvmem
>>
>> Weird.  Glad I found the one device that had that MAC though. So that
>> must have been patient 0. Then I copied that image to the others. But th=
e
>> question is why did they adopt the same MAC address instead of reading f=
rom
>> the PROM at every boot up?  I'll have to dig deeper into U-Boot to see.
>>
>> On Wed, Nov 25, 2020 at 2:09 PM Marcus D Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> Near as I can tell the e310 gets its MAC from the motherboard i2c
>>> eeprom.
>>>
>>> Sent from my iPhone
>>>
>>> On Nov 25, 2020, at 12:55 PM, Andrew Payne via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>> =EF=BB=BF
>>> So does the U-Boot environment determine the MAC address of eth0 prior
>>> to booting the kernel?  Or is it during the make of the boot image?  I =
just
>>> find it a stretch to believe that I am running an image on a number of
>>> SDRs, and they're all using the same MAC address, possibly from the e31=
0
>>> for which the boot image was generated?
>>>
>>>
>>>
>>> On Wed, Nov 25, 2020 at 8:59 AM Philip Balister <philip@balister.org>
>>> wrote:
>>>
>>>> Mine is different, but both seem to be from the National Instruments
>>>> block (which is good):
>>>>
>>>> root@ni-e31x-30D280A:~# ifconfig
>>>> eth0      Link encap:Ethernet  HWaddr 00:80:2F:25:02:37
>>>>           inet addr:192.168.11.152  Bcast:192.168.11.255
>>>>
>>>> I see a warning early in boot about using a MAC address from ROM. I'm
>>>> not sure where that came from.
>>>>
>>>> Philip
>>>>
>>>> On 11/25/20 8:36 AM, Andrew Payne via USRP-users wrote:
>>>> > ---------- Forwarded message ---------
>>>> > From: Andrew Payne <wandrewp@gmail.com>
>>>> > Date: Wed, Nov 25, 2020 at 8:35 AM
>>>> > Subject: Re: [USRP-users] E310: Change MAC Address?
>>>> > To: Philip Balister <philip@balister.org>
>>>> >
>>>> >
>>>> > It is: 00:80:2f:19:4c:37
>>>> >
>>>> > When is that .patch file ran, is it during compilation of the BSP?
>>>> When
>>>> > would I see that error message printf("I2C EEPROM MAC address read
>>>> > failed\n");?
>>>> >
>>>> > How could I experiment with compiling a new BSP with the UHD 3.15
>>>> > environment loaded, so then I may insert my own MAC Address or get
>>>> the i2c
>>>> > EEPROM read to work? Do I need
>>>> > https://github.com/EttusResearch/meta-ettus
>>>> > and
>>>> > https://github.com/Xilinx/u-boot-xlnx
>>>> > and may be use this guide:
>>>> >
>>>> https://opencpi.github.io/bsp_e310/Ettus_E3xx_Getting_Started_Guide.pd=
f
>>>> > ?
>>>> >
>>>> > Thanks,
>>>> > Andrew
>>>> >
>>>> >
>>>> > On Wed, Nov 25, 2020 at 8:26 AM Philip Balister <philip@balister.org=
>
>>>> wrote:
>>>> >
>>>> >> What is that mac address? I'd like to see if it matches mine.
>>>> >>
>>>> >> If I recall correctly, the mac address is flashed into the i2c
>>>> eeprom,
>>>> >> u-boot is supposed to read that and use it. Factory test should set
>>>> it
>>>> >> up uniquely. But my memories fade. Inspecting the u-boot source mig=
ht
>>>> >> show us ....
>>>> >>
>>>> >>
>>>> >>
>>>> https://github.com/EttusResearch/meta-ettus/blob/zeus/meta-e31x/recipe=
s-bsp/u-boot/files/0001-ni-zynq-Add-support-for-NI-E31x-SG1-SG3-boards.patc=
h#L397
>>>> >>
>>>> >> I didn't sift through the ifdef's though.
>>>> >>
>>>> >> Philip
>>>> >>
>>>> >> On 11/24/20 7:28 PM, Andrew Payne via USRP-users wrote:
>>>> >>> Is there a way to change the mac address of my e310s?  I have imag=
ed
>>>> >>> several e310s using the image file in
>>>> >>> https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/,
>>>> and
>>>> >> they
>>>> >>> all have the same MAC address.
>>>> >>>
>>>> >>> On some searching around the web I can see that it is likely that
>>>> the MAC
>>>> >>> address parameter is specified as a U-boot parameter.  I'd like to
>>>> know
>>>> >>> what my options are for changing it.
>>>> >>>
>>>> >>> Thanks,
>>>> >>> Andrew
>>>> >>>
>>>> >>>
>>>> >>> _______________________________________________
>>>> >>> USRP-users mailing list
>>>> >>> USRP-users@lists.ettus.com
>>>> >>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>> >>>
>>>> >>
>>>> >
>>>> >
>>>> > _______________________________________________
>>>> > USRP-users mailing list
>>>> > USRP-users@lists.ettus.com
>>>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>> >
>>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>>

--000000000000dad52105b51ac052
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">P.S.: To add, in each of my 8 e310s, the following command=
:<div><br></div><div>cat /sys/class/net/eth0/address</div><div><br></div><d=
iv>yields:=C2=A0 00:80:2f:19:4c:37</div><div><br></div><div>So I have that =
mac address in 8 SDRs on my LAN.=C2=A0 And only one of them is true, the on=
e from which I cloned the golden image via dd.</div><div><br></div><div>But=
 the following command:</div><div>hexdump /sys/bus/nvmem/devices/0-00510/nv=
mem</div><div><br></div><div>yields ... 8000 182f f624 ...</div><div>and if=
 you rearrange each byte, you get: 00:80:2f:18:24:f6</div><div><br></div><d=
iv>which is the encoded hw address on the PHY on the sample e310.=C2=A0 If =
I knew where Linux gets=C2=A0its /sys/class/net/... device tree from I coul=
d chase that rabbit hole.</div><div><br></div><div>Any clues or tips I&#39;=
d appreciate it.</div><div><br></div><div>Thanks,</div><div>Andrew</div><di=
v><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Fri, Nov 27, 2020 at 1:15 PM Andrew Payne &lt;<a href=3D"mai=
lto:wandrewp@gmail.com">wandrewp@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Just an update o=
n my findings with the MAC Address problem.=C2=A0 It seems that on first bo=
ot, the mac address is set in stone in the u-boot environment variable etha=
ddr.=C2=A0 It cannot be manually changed by me if I went into the u-boot co=
nfiguration menu: <a href=3D"https://www.denx.de/wiki/view/DULG/UBootEnvVar=
iables" target=3D"_blank">https://www.denx.de/wiki/view/DULG/UBootEnvVariab=
les</a><div><br></div><div>So if you then move that SD card that has been b=
ooted in one particular e310 to another, the mac address will follow.=C2=A0=
 That is the problem I have, and I wanted to see if that also happens with =
others&#39; e310s?=C2=A0 Or maybe it is the particular sdimg file I have do=
wnloaded (v3.15.0.0).<div><br><div>I guess to solve this issue myself witho=
ut digging in too deeply to the nuances of bitbaking (which I&#39;ve alread=
y started and in a little bit over my head), I could just copy a fresh uboo=
t image to the 7 other SDRs I have, and theoretically on bootup u-boot woul=
d detect the hw address and set their unique MAC address, which is what sho=
uld happen.=C2=A0 But running md5sum on u-boot.img and boot.bin, to my dism=
ay I have found out the checksum doesn&#39;t change after boot from a fresh=
 sdimg file&#39;s u-boot.img and boot.bin.=C2=A0 So where could the u-boot =
environment variables actually be stored on the sd card?</div></div><div><b=
r></div><div>Thanks,</div><div>Andrew</div></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 25, 2020 at 2:=
21 PM Andrew Payne &lt;<a href=3D"mailto:wandrewp@gmail.com" target=3D"_bla=
nk">wandrewp@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">Of the 8 e310s that I have tested wi=
th the same image, only one of them has the actual MAC address of 00:80:2f:=
19:4c:37, which I was able to find out via:<div>hexdump /sys/bus/nvmem/devi=
ces/0-00510/nvmem</div><div><br></div><div>Weird.=C2=A0 Glad I found the on=
e device that had that MAC though. So that must have been patient 0. Then I=
 copied that image to the others. But the question is why did they adopt th=
e same MAC address instead of reading from the PROM at every boot up?=C2=A0=
 I&#39;ll have to dig deeper into U-Boot to see.</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 25, 2020=
 at 2:09 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" t=
arget=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Near as I can tel=
l the e310 gets its MAC from the motherboard i2c eeprom.=C2=A0<br><br><div =
dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=
=3D"cite">On Nov 25, 2020, at 12:55 PM, Andrew Payne via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lis=
ts.ettus.com</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"c=
ite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">So does the U-Boot environm=
ent determine the MAC address of eth0 prior to booting the kernel?=C2=A0 Or=
 is it during the make of the boot image?=C2=A0 I just find it a stretch to=
 believe that I am running an image on a number of SDRs, and they&#39;re al=
l using the same MAC address, possibly from the e310 for which the boot ima=
ge was generated?<br><div><br></div><div><br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 25, 2020 at =
8:59 AM Philip Balister &lt;<a href=3D"mailto:philip@balister.org" target=
=3D"_blank">philip@balister.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Mine is different, but both seem to be fro=
m the National Instruments<br>
block (which is good):<br>
<br>
root@ni-e31x-30D280A:~# ifconfig<br>
eth0=C2=A0 =C2=A0 =C2=A0 Link encap:Ethernet=C2=A0 HWaddr 00:80:2F:25:02:37=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet addr:192.168.11.152=C2=A0 Bcast:192=
.168.11.255<br>
<br>
I see a warning early in boot about using a MAC address from ROM. I&#39;m<b=
r>
not sure where that came from.<br>
<br>
Philip<br>
<br>
On 11/25/20 8:36 AM, Andrew Payne via USRP-users wrote:<br>
&gt; ---------- Forwarded message ---------<br>
&gt; From: Andrew Payne &lt;<a href=3D"mailto:wandrewp@gmail.com" target=3D=
"_blank">wandrewp@gmail.com</a>&gt;<br>
&gt; Date: Wed, Nov 25, 2020 at 8:35 AM<br>
&gt; Subject: Re: [USRP-users] E310: Change MAC Address?<br>
&gt; To: Philip Balister &lt;<a href=3D"mailto:philip@balister.org" target=
=3D"_blank">philip@balister.org</a>&gt;<br>
&gt; <br>
&gt; <br>
&gt; It is: 00:80:2f:19:4c:37<br>
&gt; <br>
&gt; When is that .patch file ran, is it during compilation of the BSP?=C2=
=A0 When<br>
&gt; would I see that error message printf(&quot;I2C EEPROM MAC address rea=
d<br>
&gt; failed\n&quot;);?<br>
&gt; <br>
&gt; How could I experiment with compiling a new BSP with the UHD 3.15<br>
&gt; environment loaded, so then I may insert my own MAC Address or get the=
 i2c<br>
&gt; EEPROM read to work? Do I need<br>
&gt; <a href=3D"https://github.com/EttusResearch/meta-ettus" rel=3D"norefer=
rer" target=3D"_blank">https://github.com/EttusResearch/meta-ettus</a><br>
&gt; and<br>
&gt; <a href=3D"https://github.com/Xilinx/u-boot-xlnx" rel=3D"noreferrer" t=
arget=3D"_blank">https://github.com/Xilinx/u-boot-xlnx</a><br>
&gt; and may be use this guide:<br>
&gt; <a href=3D"https://opencpi.github.io/bsp_e310/Ettus_E3xx_Getting_Start=
ed_Guide.pdf" rel=3D"noreferrer" target=3D"_blank">https://opencpi.github.i=
o/bsp_e310/Ettus_E3xx_Getting_Started_Guide.pdf</a><br>
&gt; ?<br>
&gt; <br>
&gt; Thanks,<br>
&gt; Andrew<br>
&gt; <br>
&gt; <br>
&gt; On Wed, Nov 25, 2020 at 8:26 AM Philip Balister &lt;<a href=3D"mailto:=
philip@balister.org" target=3D"_blank">philip@balister.org</a>&gt; wrote:<b=
r>
&gt; <br>
&gt;&gt; What is that mac address? I&#39;d like to see if it matches mine.<=
br>
&gt;&gt;<br>
&gt;&gt; If I recall correctly, the mac address is flashed into the i2c eep=
rom,<br>
&gt;&gt; u-boot is supposed to read that and use it. Factory test should se=
t it<br>
&gt;&gt; up uniquely. But my memories fade. Inspecting the u-boot source mi=
ght<br>
&gt;&gt; show us ....<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://github.com/EttusResearch/meta-ettus/blob/zeus/m=
eta-e31x/recipes-bsp/u-boot/files/0001-ni-zynq-Add-support-for-NI-E31x-SG1-=
SG3-boards.patch#L397" rel=3D"noreferrer" target=3D"_blank">https://github.=
com/EttusResearch/meta-ettus/blob/zeus/meta-e31x/recipes-bsp/u-boot/files/0=
001-ni-zynq-Add-support-for-NI-E31x-SG1-SG3-boards.patch#L397</a><br>
&gt;&gt;<br>
&gt;&gt; I didn&#39;t sift through the ifdef&#39;s though.<br>
&gt;&gt;<br>
&gt;&gt; Philip<br>
&gt;&gt;<br>
&gt;&gt; On 11/24/20 7:28 PM, Andrew Payne via USRP-users wrote:<br>
&gt;&gt;&gt; Is there a way to change the mac address of my e310s?=C2=A0 I =
have imaged<br>
&gt;&gt;&gt; several e310s using the image file in<br>
&gt;&gt;&gt; <a href=3D"https://files.ettus.com/binaries/cache/e3xx/meta-et=
tus-v3.15.0.0/" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.co=
m/binaries/cache/e3xx/meta-ettus-v3.15.0.0/</a>, and<br>
&gt;&gt; they<br>
&gt;&gt;&gt; all have the same MAC address.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On some searching around the web I can see that it is likely t=
hat the MAC<br>
&gt;&gt;&gt; address parameter is specified as a U-boot parameter.=C2=A0 I&=
#39;d like to know<br>
&gt;&gt;&gt; what my options are for changing it.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Thanks,<br>
&gt;&gt;&gt; Andrew<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank=
">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_=
lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list</span><br><span><a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a></span><br><span><a h=
ref=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" =
target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com</a></span><br></div></blockquote></div></blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000dad52105b51ac052--


--===============8546103374297194940==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8546103374297194940==--

