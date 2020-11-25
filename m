Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8392C471B
	for <lists+usrp-users@lfdr.de>; Wed, 25 Nov 2020 18:55:41 +0100 (CET)
Received: from [::1] (port=44544 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khz0y-0004fk-Un; Wed, 25 Nov 2020 12:55:36 -0500
Received: from mail-lj1-f179.google.com ([209.85.208.179]:39453)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wandrewp@gmail.com>) id 1khz0v-0004Yu-IF
 for usrp-users@lists.ettus.com; Wed, 25 Nov 2020 12:55:33 -0500
Received: by mail-lj1-f179.google.com with SMTP id o24so3208959ljj.6
 for <usrp-users@lists.ettus.com>; Wed, 25 Nov 2020 09:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wc+L3zo3TuZTbxkZ/exz+i8CR4tXfmxW7mA12XG8vps=;
 b=rpWY40hhlDC+b0SEs5rbaPVUC4jZiF2AWnCPhZiTqWWGmCHd4dcDUZz86NZ69hBIiy
 7PsFoaXTZmWj5lTD5VckGtkn8w8mGeTunrhvrq9ngPrG1sIN5QZqykDEo89u0WwCuzZR
 Ifwdtbhd3ziyVcLviN4Ber2+QXpbzQmONwmnFhvNd2Ny4EZYL8iv9XHV6TFIgKMe91VY
 bNYPgNNhzkJ2LgK1UcZ7eVjt69lNkz2eykY2hBRaYAP1GAf8iXlT7cbC9XIq2G/+oOxo
 x8QGynKDsB4NUZ/599igRSyaB8zlgc746BYY8yaDlLKirYPSB7vnIHDFIYkIV9x9GVG4
 keGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wc+L3zo3TuZTbxkZ/exz+i8CR4tXfmxW7mA12XG8vps=;
 b=m5Ev7hv0t9y68H7WGCm8RoBbtXBVaTZLZ0LAmcZEgi5LcHTvuSYMRvGuvZ+B2pJ+TW
 cj6hWkPvuKwMx0KQNMPJL/NNJeK+OwqSdd6FNqxSH/sQkuL60DoJxfxTEtri4uA1MI7w
 LzpPW8wJR2jCpXiGpZFbNWphg3XB0LYFFWalWgeEAqgQyX8Vc4F7AL6suMTmjhQT9l/O
 Im6m3QYugyoSNu0YW71TSWezCEGNrvZ62ftd6tmT5Hgh2uhh0wiRmZUjRUmLNlJSRrkA
 JYWpZILFnoHkJUcL4RhjZ7/m6RjYxjqV4zL2xlAA0WEqkRetQV9ZpYzocnt1ZwVBKWNJ
 VOqg==
X-Gm-Message-State: AOAM533qJV+UWVSamKv2pkRzje0D+UXrsOXtnUqZTPxMVnO9cxiFb2Sy
 0iXmqrI3A08DqO0fH4UFdDfwNQhG/QJeMRVuZ9groi5pwNc=
X-Google-Smtp-Source: ABdhPJwRk3aEUscoAK0ClU8prWPc8JTEry6+qR8aPGGKHbUsbyr7kyzRI7h/YW2diGmkrBj0fpuNCkcUiK2CGURWRMI=
X-Received: by 2002:a2e:92d5:: with SMTP id k21mr1810758ljh.244.1606326892178; 
 Wed, 25 Nov 2020 09:54:52 -0800 (PST)
MIME-Version: 1.0
References: <CAB50+dRQJvM2+xh5ZK7D43Z_B_6aHVmZ9fGK+V8NjjTJK5Deag@mail.gmail.com>
 <996a7e51-1d29-c221-20bb-0c7513e8eb8f@balister.org>
 <CAB50+dS+HbL_DypVqs4uzmJ87f8afzpG7y46YFatLRgjdP2P0w@mail.gmail.com>
 <CAB50+dS5yhcRs5=9_4AVwZPcBr2JUiST0njmc49ofNae6xGJdg@mail.gmail.com>
 <faf24b56-d85c-84e1-a90d-f6eb115c6688@balister.org>
In-Reply-To: <faf24b56-d85c-84e1-a90d-f6eb115c6688@balister.org>
Date: Wed, 25 Nov 2020 12:54:42 -0500
Message-ID: <CAB50+dSat-OFqtA38AxNiftepxCP4d=LuxrVjbLMKOtu6q+krg@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: usrp-users <usrp-users@lists.ettus.com>
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
Content-Type: multipart/mixed; boundary="===============8744700399717460486=="
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

--===============8744700399717460486==
Content-Type: multipart/alternative; boundary="000000000000cd317705b4f21f49"

--000000000000cd317705b4f21f49
Content-Type: text/plain; charset="UTF-8"

So does the U-Boot environment determine the MAC address of eth0 prior to
booting the kernel?  Or is it during the make of the boot image?  I just
find it a stretch to believe that I am running an image on a number of
SDRs, and they're all using the same MAC address, possibly from the e310
for which the boot image was generated?



On Wed, Nov 25, 2020 at 8:59 AM Philip Balister <philip@balister.org> wrote:

> Mine is different, but both seem to be from the National Instruments
> block (which is good):
>
> root@ni-e31x-30D280A:~# ifconfig
> eth0      Link encap:Ethernet  HWaddr 00:80:2F:25:02:37
>           inet addr:192.168.11.152  Bcast:192.168.11.255
>
> I see a warning early in boot about using a MAC address from ROM. I'm
> not sure where that came from.
>
> Philip
>
> On 11/25/20 8:36 AM, Andrew Payne via USRP-users wrote:
> > ---------- Forwarded message ---------
> > From: Andrew Payne <wandrewp@gmail.com>
> > Date: Wed, Nov 25, 2020 at 8:35 AM
> > Subject: Re: [USRP-users] E310: Change MAC Address?
> > To: Philip Balister <philip@balister.org>
> >
> >
> > It is: 00:80:2f:19:4c:37
> >
> > When is that .patch file ran, is it during compilation of the BSP?  When
> > would I see that error message printf("I2C EEPROM MAC address read
> > failed\n");?
> >
> > How could I experiment with compiling a new BSP with the UHD 3.15
> > environment loaded, so then I may insert my own MAC Address or get the
> i2c
> > EEPROM read to work? Do I need
> > https://github.com/EttusResearch/meta-ettus
> > and
> > https://github.com/Xilinx/u-boot-xlnx
> > and may be use this guide:
> > https://opencpi.github.io/bsp_e310/Ettus_E3xx_Getting_Started_Guide.pdf
> > ?
> >
> > Thanks,
> > Andrew
> >
> >
> > On Wed, Nov 25, 2020 at 8:26 AM Philip Balister <philip@balister.org>
> wrote:
> >
> >> What is that mac address? I'd like to see if it matches mine.
> >>
> >> If I recall correctly, the mac address is flashed into the i2c eeprom,
> >> u-boot is supposed to read that and use it. Factory test should set it
> >> up uniquely. But my memories fade. Inspecting the u-boot source might
> >> show us ....
> >>
> >>
> >>
> https://github.com/EttusResearch/meta-ettus/blob/zeus/meta-e31x/recipes-bsp/u-boot/files/0001-ni-zynq-Add-support-for-NI-E31x-SG1-SG3-boards.patch#L397
> >>
> >> I didn't sift through the ifdef's though.
> >>
> >> Philip
> >>
> >> On 11/24/20 7:28 PM, Andrew Payne via USRP-users wrote:
> >>> Is there a way to change the mac address of my e310s?  I have imaged
> >>> several e310s using the image file in
> >>> https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/, and
> >> they
> >>> all have the same MAC address.
> >>>
> >>> On some searching around the web I can see that it is likely that the
> MAC
> >>> address parameter is specified as a U-boot parameter.  I'd like to know
> >>> what my options are for changing it.
> >>>
> >>> Thanks,
> >>> Andrew
> >>>
> >>>
> >>> _______________________________________________
> >>> USRP-users mailing list
> >>> USRP-users@lists.ettus.com
> >>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>
> >>
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
>

--000000000000cd317705b4f21f49
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">So does the U-Boot environment determine the MAC address o=
f eth0 prior to booting the kernel?=C2=A0 Or is it during the make of the b=
oot image?=C2=A0 I just find it a stretch to believe that I am running an i=
mage on a number of SDRs, and they&#39;re all using the same MAC address, p=
ossibly from the e310 for which the boot image was generated?<br><div><br><=
/div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Wed, Nov 25, 2020 at 8:59 AM Philip Balister &lt;<a =
href=3D"mailto:philip@balister.org">philip@balister.org</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">Mine is different, b=
ut both seem to be from the National Instruments<br>
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

--000000000000cd317705b4f21f49--


--===============8744700399717460486==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8744700399717460486==--

