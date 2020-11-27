Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 62ADD2C6B75
	for <lists+usrp-users@lfdr.de>; Fri, 27 Nov 2020 19:16:59 +0100 (CET)
Received: from [::1] (port=34584 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kiiIg-0002HK-VZ; Fri, 27 Nov 2020 13:16:54 -0500
Received: from mail-lf1-f51.google.com ([209.85.167.51]:36191)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wandrewp@gmail.com>) id 1kiiId-0002BF-7S
 for usrp-users@lists.ettus.com; Fri, 27 Nov 2020 13:16:51 -0500
Received: by mail-lf1-f51.google.com with SMTP id v14so8242381lfo.3
 for <usrp-users@lists.ettus.com>; Fri, 27 Nov 2020 10:16:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=TJwBQ8T/9q9903u2ycotcArF/z0NU0/wLWPXaaJbABE=;
 b=Kq5dt2uNyA6LpQUuuNa+cgiIDrK8nHWSCLZrKZHPsFKfrKnvfhMFs7TTFMRBZ1IcMU
 xKyL+q84lTBk7PxiOysINPmVITKsrjvjSdkyQC7ZxDzhZtjbMkrPDebiYAkvQ50y9ogs
 CsXA/i/17icYkGRS8EmfNojYg5R6YnBmnwrcRLFYddyoUgWal0cEyrnjK3A2iGw/v00D
 NZ9PLSvhk3daekrgsL+2jOSwgm0cH3jdsv9GVMoeMVgi020oBMiI/ca1NBAla3KqecQN
 VWYOtwQU11YC6WsQkZGV395QlKnpjXn8kwUzOKCYU73pBf6qngq7e4CKvF5Fifg5L5Ww
 Z1KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=TJwBQ8T/9q9903u2ycotcArF/z0NU0/wLWPXaaJbABE=;
 b=I+YMEH1p3ANQ1nyW8ha7mQL85L9C211DmQVSSmcwLvu3rlFK1canEJQFA1T3RAw11a
 bVK4ntE/GKrjwQEXAjgfIXBy8GBmt6cwfrZxQF0vCaLtNS/irS5zyXnU+Ft+30RFv3x8
 KfD9LQuzP5Kmj2q7gC1BK0PA8mhww/87oDwg+aLy2tATUyTWwoumaqruDBxqqBxp1lju
 yICKG0KbQ7nLCI07hqwkoM1QbT1flBrVhVvk6KkM838dQSrWu86eyTYOScXgJm2KoORh
 IZf57OZT6XPYTTv0tBD4pmMYvXAFY1zdCV//SbIYF/sdIih3GEnoLYP45sybGjHASHGW
 62uQ==
X-Gm-Message-State: AOAM530eQPNUIxB50l4LX500GpenN17XyTo845r5GFoS+XosozsTsGS/
 Hln6P5c+3nebG0TKT4HowGIRub/u32DqC5kBMLEmFejLTlA=
X-Google-Smtp-Source: ABdhPJzLMsB5qEUskEttnOO5s1bzgYl1KnDldWj+X3+AtuVo6lH3Hxn2yQI4CHdCjYJG0e7BcAa0ZrdsDOA6El+H6Hg=
X-Received: by 2002:a19:b16:: with SMTP id 22mr3734131lfl.49.1606500969055;
 Fri, 27 Nov 2020 10:16:09 -0800 (PST)
MIME-Version: 1.0
References: <CAB50+dSat-OFqtA38AxNiftepxCP4d=LuxrVjbLMKOtu6q+krg@mail.gmail.com>
 <82C8BA12-2EC5-45E9-9446-1890860A8F30@gmail.com>
 <CAB50+dT2ah526Vw7gp7q0UYNw5iWA8zt0Gyx0hOhhSF5F1Lxag@mail.gmail.com>
In-Reply-To: <CAB50+dT2ah526Vw7gp7q0UYNw5iWA8zt0Gyx0hOhhSF5F1Lxag@mail.gmail.com>
Date: Fri, 27 Nov 2020 13:15:58 -0500
Message-ID: <CAB50+dSFc_DDhR=-dyN85vGG_utfRwhc1Dvjciv_q3K6U3_GcA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============1608863694338420316=="
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

--===============1608863694338420316==
Content-Type: multipart/alternative; boundary="000000000000978a2805b51aa727"

--000000000000978a2805b51aa727
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Just an update on my findings with the MAC Address problem.  It seems that
on first boot, the mac address is set in stone in the u-boot environment
variable ethaddr.  It cannot be manually changed by me if I went into the
u-boot configuration menu:
https://www.denx.de/wiki/view/DULG/UBootEnvVariables

So if you then move that SD card that has been booted in one particular
e310 to another, the mac address will follow.  That is the problem I have,
and I wanted to see if that also happens with others' e310s?  Or maybe it
is the particular sdimg file I have downloaded (v3.15.0.0).

I guess to solve this issue myself without digging in too deeply to the
nuances of bitbaking (which I've already started and in a little bit over
my head), I could just copy a fresh uboot image to the 7 other SDRs I have,
and theoretically on bootup u-boot would detect the hw address and set
their unique MAC address, which is what should happen.  But running md5sum
on u-boot.img and boot.bin, to my dismay I have found out the checksum
doesn't change after boot from a fresh sdimg file's u-boot.img and
boot.bin.  So where could the u-boot environment variables actually be
stored on the sd card?

Thanks,
Andrew

On Wed, Nov 25, 2020 at 2:21 PM Andrew Payne <wandrewp@gmail.com> wrote:

> Of the 8 e310s that I have tested with the same image, only one of them
> has the actual MAC address of 00:80:2f:19:4c:37, which I was able to find
> out via:
> hexdump /sys/bus/nvmem/devices/0-00510/nvmem
>
> Weird.  Glad I found the one device that had that MAC though. So that mus=
t
> have been patient 0. Then I copied that image to the others. But the
> question is why did they adopt the same MAC address instead of reading fr=
om
> the PROM at every boot up?  I'll have to dig deeper into U-Boot to see.
>
> On Wed, Nov 25, 2020 at 2:09 PM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> Near as I can tell the e310 gets its MAC from the motherboard i2c eeprom=
.
>>
>> Sent from my iPhone
>>
>> On Nov 25, 2020, at 12:55 PM, Andrew Payne via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> =EF=BB=BF
>> So does the U-Boot environment determine the MAC address of eth0 prior t=
o
>> booting the kernel?  Or is it during the make of the boot image?  I just
>> find it a stretch to believe that I am running an image on a number of
>> SDRs, and they're all using the same MAC address, possibly from the e310
>> for which the boot image was generated?
>>
>>
>>
>> On Wed, Nov 25, 2020 at 8:59 AM Philip Balister <philip@balister.org>
>> wrote:
>>
>>> Mine is different, but both seem to be from the National Instruments
>>> block (which is good):
>>>
>>> root@ni-e31x-30D280A:~# ifconfig
>>> eth0      Link encap:Ethernet  HWaddr 00:80:2F:25:02:37
>>>           inet addr:192.168.11.152  Bcast:192.168.11.255
>>>
>>> I see a warning early in boot about using a MAC address from ROM. I'm
>>> not sure where that came from.
>>>
>>> Philip
>>>
>>> On 11/25/20 8:36 AM, Andrew Payne via USRP-users wrote:
>>> > ---------- Forwarded message ---------
>>> > From: Andrew Payne <wandrewp@gmail.com>
>>> > Date: Wed, Nov 25, 2020 at 8:35 AM
>>> > Subject: Re: [USRP-users] E310: Change MAC Address?
>>> > To: Philip Balister <philip@balister.org>
>>> >
>>> >
>>> > It is: 00:80:2f:19:4c:37
>>> >
>>> > When is that .patch file ran, is it during compilation of the BSP?
>>> When
>>> > would I see that error message printf("I2C EEPROM MAC address read
>>> > failed\n");?
>>> >
>>> > How could I experiment with compiling a new BSP with the UHD 3.15
>>> > environment loaded, so then I may insert my own MAC Address or get th=
e
>>> i2c
>>> > EEPROM read to work? Do I need
>>> > https://github.com/EttusResearch/meta-ettus
>>> > and
>>> > https://github.com/Xilinx/u-boot-xlnx
>>> > and may be use this guide:
>>> >
>>> https://opencpi.github.io/bsp_e310/Ettus_E3xx_Getting_Started_Guide.pdf
>>> > ?
>>> >
>>> > Thanks,
>>> > Andrew
>>> >
>>> >
>>> > On Wed, Nov 25, 2020 at 8:26 AM Philip Balister <philip@balister.org>
>>> wrote:
>>> >
>>> >> What is that mac address? I'd like to see if it matches mine.
>>> >>
>>> >> If I recall correctly, the mac address is flashed into the i2c eepro=
m,
>>> >> u-boot is supposed to read that and use it. Factory test should set =
it
>>> >> up uniquely. But my memories fade. Inspecting the u-boot source migh=
t
>>> >> show us ....
>>> >>
>>> >>
>>> >>
>>> https://github.com/EttusResearch/meta-ettus/blob/zeus/meta-e31x/recipes=
-bsp/u-boot/files/0001-ni-zynq-Add-support-for-NI-E31x-SG1-SG3-boards.patch=
#L397
>>> >>
>>> >> I didn't sift through the ifdef's though.
>>> >>
>>> >> Philip
>>> >>
>>> >> On 11/24/20 7:28 PM, Andrew Payne via USRP-users wrote:
>>> >>> Is there a way to change the mac address of my e310s?  I have image=
d
>>> >>> several e310s using the image file in
>>> >>> https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/,
>>> and
>>> >> they
>>> >>> all have the same MAC address.
>>> >>>
>>> >>> On some searching around the web I can see that it is likely that
>>> the MAC
>>> >>> address parameter is specified as a U-boot parameter.  I'd like to
>>> know
>>> >>> what my options are for changing it.
>>> >>>
>>> >>> Thanks,
>>> >>> Andrew
>>> >>>
>>> >>>
>>> >>> _______________________________________________
>>> >>> USRP-users mailing list
>>> >>> USRP-users@lists.ettus.com
>>> >>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>> >>>
>>> >>
>>> >
>>> >
>>> > _______________________________________________
>>> > USRP-users mailing list
>>> > USRP-users@lists.ettus.com
>>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>> >
>>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>

--000000000000978a2805b51aa727
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Just an update on my findings with the MAC Address problem=
.=C2=A0 It seems that on first boot, the mac address is set in stone in the=
 u-boot environment variable ethaddr.=C2=A0 It cannot be manually changed b=
y me if I went into the u-boot configuration menu: <a href=3D"https://www.d=
enx.de/wiki/view/DULG/UBootEnvVariables">https://www.denx.de/wiki/view/DULG=
/UBootEnvVariables</a><div><br></div><div>So if you then move that SD card =
that has been booted in one particular e310 to another, the mac address wil=
l follow.=C2=A0 That is the problem I have, and I wanted to see if that als=
o happens with others&#39; e310s?=C2=A0 Or maybe it is the particular sdimg=
 file I have downloaded (v3.15.0.0).<div><br><div>I guess to solve this iss=
ue myself without digging in too deeply to the nuances of bitbaking (which =
I&#39;ve already started and in a little bit over my head), I could just co=
py a fresh uboot image to the 7 other SDRs I have, and theoretically on boo=
tup u-boot would detect the hw address and set their unique MAC address, wh=
ich is what should happen.=C2=A0 But running md5sum on u-boot.img and boot.=
bin, to my dismay I have found out the checksum doesn&#39;t change after bo=
ot from a fresh sdimg file&#39;s u-boot.img and boot.bin.=C2=A0 So where co=
uld the u-boot environment variables actually be stored on the sd card?</di=
v></div><div><br></div><div>Thanks,</div><div>Andrew</div></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov=
 25, 2020 at 2:21 PM Andrew Payne &lt;<a href=3D"mailto:wandrewp@gmail.com"=
>wandrewp@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr">Of the 8 e310s that I have tested with =
the same image, only one of them has the actual MAC address of 00:80:2f:19:=
4c:37, which I was able to find out via:<div>hexdump /sys/bus/nvmem/devices=
/0-00510/nvmem</div><div><br></div><div>Weird.=C2=A0 Glad I found the one d=
evice that had that MAC though. So that must have been patient 0. Then I co=
pied that image to the others. But the question is why did they adopt the s=
ame MAC address instead of reading from the PROM at every boot up?=C2=A0 I&=
#39;ll have to dig deeper into U-Boot to see.</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 25, 2020 at =
2:09 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" targe=
t=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Near as I can tell th=
e e310 gets its MAC from the motherboard i2c eeprom.=C2=A0<br><br><div dir=
=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"=
cite">On Nov 25, 2020, at 12:55 PM, Andrew Payne via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"=
><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">So does the U-Boot environment =
determine the MAC address of eth0 prior to booting the kernel?=C2=A0 Or is =
it during the make of the boot image?=C2=A0 I just find it a stretch to bel=
ieve that I am running an image on a number of SDRs, and they&#39;re all us=
ing the same MAC address, possibly from the e310 for which the boot image w=
as generated?<br><div><br></div><div><br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 25, 2020 at 8:59=
 AM Philip Balister &lt;<a href=3D"mailto:philip@balister.org" target=3D"_b=
lank">philip@balister.org</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">Mine is different, but both seem to be from the Na=
tional Instruments<br>
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

--000000000000978a2805b51aa727--


--===============1608863694338420316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1608863694338420316==--

