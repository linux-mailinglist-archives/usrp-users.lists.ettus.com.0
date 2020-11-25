Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 458E12C480E
	for <lists+usrp-users@lfdr.de>; Wed, 25 Nov 2020 20:10:35 +0100 (CET)
Received: from [::1] (port=45058 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ki0BU-0001LY-Bz; Wed, 25 Nov 2020 14:10:32 -0500
Received: from mail-qk1-f175.google.com ([209.85.222.175]:45962)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1ki0BR-0001Fc-DQ
 for usrp-users@lists.ettus.com; Wed, 25 Nov 2020 14:10:29 -0500
Received: by mail-qk1-f175.google.com with SMTP id q5so5680844qkc.12
 for <usrp-users@lists.ettus.com>; Wed, 25 Nov 2020 11:10:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=9hhki8bl+TCEeukPHg4xGKlkS1xssZ0ideY4+kHuL0U=;
 b=hQjvlK0qTETk4xoQ8LDMuEcETdyMFWakTAj1nKqlSBg19Cbpf5zLiCQ1swe5hch/ys
 y1WwovW7Pee0YulqyIRG4Ttkv2tfZxpe5ASS/4wH0kMU9oG6k1S6G/zrHdTPSAC+oY3b
 jJxE3nKUbv1FcRwv7xIqDdOnBHk2emUor/VGeMLx+Eo6X7Ybfy/tivPtzpzsPcX3y6XX
 aM/rIPA1uMrpmbEHM1ry6j0Af3n0Kt0tF11QXvCtH733MQhM83gbrJNHgkIn9h3TjG7l
 8fIKKzO/9DpO6fZS0NR5mOqnY+t10eOyKvkGzs1mR/M3k54YrQbs7WJFfnu18Axab/yT
 l/CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=9hhki8bl+TCEeukPHg4xGKlkS1xssZ0ideY4+kHuL0U=;
 b=RNk+gU4GavttEhzaCAxVqfHaGTKn5gRnUn0MH9wyYSVyq7HcGV19Pkvsq5Myk9VDMl
 K1SFo+IDV+pLa1+aIJ4ZxxnXfMUO74cMK9KBvBwVjbZ8YclO7Ry7YiXHYK5MKH1uTqay
 q0aEsmav20Q+PFmkJJ/ghbklsdpS4uvFkdbLvmr/a3GV6bTYD52NAC9RpxRgSi5WRGaH
 ASQ+EVf/6EWnpIrKSFZYKJ6ENz0yIc9AYmvveSmBndpBhviq2O6ic5g2T62SBiP1717w
 pfCptjfG3o4MmARUN5FlEpeOR4oCQdbgbN4s9cofABprLA3sMLenQM4JP4X3x9t54r5z
 84lA==
X-Gm-Message-State: AOAM5309dO8MTMagO0eCON7oOL/ARon/nkxuMUkHPjTQ4nMRhTFoBEwr
 9rLYJ9y/nVGcsvaZ43v3iIE=
X-Google-Smtp-Source: ABdhPJwDMNZAx1+7NjbmbTXIa54eNNT8G2pxheoQh4SSkRuxfp+iY6Eqg+QX2k49ttwhuncx9lw6fQ==
X-Received: by 2002:ae9:e850:: with SMTP id a77mr348203qkg.496.1606331388831; 
 Wed, 25 Nov 2020 11:09:48 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id x4sm274324qtm.48.2020.11.25.11.09.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Nov 2020 11:09:48 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Wed, 25 Nov 2020 14:09:47 -0500
Message-Id: <82C8BA12-2EC5-45E9-9446-1890860A8F30@gmail.com>
References: <CAB50+dSat-OFqtA38AxNiftepxCP4d=LuxrVjbLMKOtu6q+krg@mail.gmail.com>
Cc: Philip Balister <philip@balister.org>,
 usrp-users <usrp-users@lists.ettus.com>
In-Reply-To: <CAB50+dSat-OFqtA38AxNiftepxCP4d=LuxrVjbLMKOtu6q+krg@mail.gmail.com>
To: Andrew Payne <wandrewp@gmail.com>
X-Mailer: iPhone Mail (18A8395)
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============6919525099090033599=="
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


--===============6919525099090033599==
Content-Type: multipart/alternative; boundary=Apple-Mail-284CE8EC-6B3A-45ED-9FAE-6A393B64EFA4
Content-Transfer-Encoding: 7bit


--Apple-Mail-284CE8EC-6B3A-45ED-9FAE-6A393B64EFA4
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Near as I can tell the e310 gets its MAC from the motherboard i2c eeprom.=20=


Sent from my iPhone

> On Nov 25, 2020, at 12:55 PM, Andrew Payne via USRP-users <usrp-users@list=
s.ettus.com> wrote:
>=20
> =EF=BB=BF
> So does the U-Boot environment determine the MAC address of eth0 prior to b=
ooting the kernel?  Or is it during the make of the boot image?  I just find=
 it a stretch to believe that I am running an image on a number of SDRs, and=
 they're all using the same MAC address, possibly from the e310 for which th=
e boot image was generated?
>=20
>=20
>=20
>> On Wed, Nov 25, 2020 at 8:59 AM Philip Balister <philip@balister.org> wro=
te:
>> Mine is different, but both seem to be from the National Instruments
>> block (which is good):
>>=20
>> root@ni-e31x-30D280A:~# ifconfig
>> eth0      Link encap:Ethernet  HWaddr 00:80:2F:25:02:37
>>           inet addr:192.168.11.152  Bcast:192.168.11.255
>>=20
>> I see a warning early in boot about using a MAC address from ROM. I'm
>> not sure where that came from.
>>=20
>> Philip
>>=20
>> On 11/25/20 8:36 AM, Andrew Payne via USRP-users wrote:
>> > ---------- Forwarded message ---------
>> > From: Andrew Payne <wandrewp@gmail.com>
>> > Date: Wed, Nov 25, 2020 at 8:35 AM
>> > Subject: Re: [USRP-users] E310: Change MAC Address?
>> > To: Philip Balister <philip@balister.org>
>> >=20
>> >=20
>> > It is: 00:80:2f:19:4c:37
>> >=20
>> > When is that .patch file ran, is it during compilation of the BSP?  Whe=
n
>> > would I see that error message printf("I2C EEPROM MAC address read
>> > failed\n");?
>> >=20
>> > How could I experiment with compiling a new BSP with the UHD 3.15
>> > environment loaded, so then I may insert my own MAC Address or get the i=
2c
>> > EEPROM read to work? Do I need
>> > https://github.com/EttusResearch/meta-ettus
>> > and
>> > https://github.com/Xilinx/u-boot-xlnx
>> > and may be use this guide:
>> > https://opencpi.github.io/bsp_e310/Ettus_E3xx_Getting_Started_Guide.pdf=

>> > ?
>> >=20
>> > Thanks,
>> > Andrew
>> >=20
>> >=20
>> > On Wed, Nov 25, 2020 at 8:26 AM Philip Balister <philip@balister.org> w=
rote:
>> >=20
>> >> What is that mac address? I'd like to see if it matches mine.
>> >>
>> >> If I recall correctly, the mac address is flashed into the i2c eeprom,=

>> >> u-boot is supposed to read that and use it. Factory test should set it=

>> >> up uniquely. But my memories fade. Inspecting the u-boot source might
>> >> show us ....
>> >>
>> >>
>> >> https://github.com/EttusResearch/meta-ettus/blob/zeus/meta-e31x/recipe=
s-bsp/u-boot/files/0001-ni-zynq-Add-support-for-NI-E31x-SG1-SG3-boards.patch=
#L397
>> >>
>> >> I didn't sift through the ifdef's though.
>> >>
>> >> Philip
>> >>
>> >> On 11/24/20 7:28 PM, Andrew Payne via USRP-users wrote:
>> >>> Is there a way to change the mac address of my e310s?  I have imaged
>> >>> several e310s using the image file in
>> >>> https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/, an=
d
>> >> they
>> >>> all have the same MAC address.
>> >>>
>> >>> On some searching around the web I can see that it is likely that the=
 MAC
>> >>> address parameter is specified as a U-boot parameter.  I'd like to kn=
ow
>> >>> what my options are for changing it.
>> >>>
>> >>> Thanks,
>> >>> Andrew
>> >>>
>> >>>
>> >>> _______________________________________________
>> >>> USRP-users mailing list
>> >>> USRP-users@lists.ettus.com
>> >>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> >>>
>> >>
>> >=20
>> >=20
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> >=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-284CE8EC-6B3A-45ED-9FAE-6A393B64EFA4
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Near as I can tell the e310 gets its MAC fr=
om the motherboard i2c eeprom.&nbsp;<br><br><div dir=3D"ltr">Sent from my iP=
hone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Nov 25, 2020, at=
 12:55 PM, Andrew Payne via USRP-users &lt;usrp-users@lists.ettus.com&gt; wr=
ote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=
=BB=BF<div dir=3D"ltr">So does the U-Boot environment determine the MAC addr=
ess of eth0 prior to booting the kernel?&nbsp; Or is it during the make of t=
he boot image?&nbsp; I just find it a stretch to believe that I am running a=
n image on a number of SDRs, and they're all using the same MAC address, pos=
sibly from the e310 for which the boot image was generated?<br><div><br></di=
v><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Nov 25, 2020 at 8:59 AM Philip Balister &lt;<a href=3D=
"mailto:philip@balister.org">philip@balister.org</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">Mine is different, but both se=
em to be from the National Instruments<br>
block (which is good):<br>
<br>
root@ni-e31x-30D280A:~# ifconfig<br>
eth0&nbsp; &nbsp; &nbsp; Link encap:Ethernet&nbsp; HWaddr 00:80:2F:25:02:37<=
br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; inet addr:192.168.11.152&nbsp; Bcast:192.=
168.11.255<br>
<br>
I see a warning early in boot about using a MAC address from ROM. I'm<br>
not sure where that came from.<br>
<br>
Philip<br>
<br>
On 11/25/20 8:36 AM, Andrew Payne via USRP-users wrote:<br>
&gt; ---------- Forwarded message ---------<br>
&gt; From: Andrew Payne &lt;<a href=3D"mailto:wandrewp@gmail.com" target=3D"=
_blank">wandrewp@gmail.com</a>&gt;<br>
&gt; Date: Wed, Nov 25, 2020 at 8:35 AM<br>
&gt; Subject: Re: [USRP-users] E310: Change MAC Address?<br>
&gt; To: Philip Balister &lt;<a href=3D"mailto:philip@balister.org" target=3D=
"_blank">philip@balister.org</a>&gt;<br>
&gt; <br>
&gt; <br>
&gt; It is: 00:80:2f:19:4c:37<br>
&gt; <br>
&gt; When is that .patch file ran, is it during compilation of the BSP?&nbsp=
; When<br>
&gt; would I see that error message printf("I2C EEPROM MAC address read<br>
&gt; failed\n");?<br>
&gt; <br>
&gt; How could I experiment with compiling a new BSP with the UHD 3.15<br>
&gt; environment loaded, so then I may insert my own MAC Address or get the i=
2c<br>
&gt; EEPROM read to work? Do I need<br>
&gt; <a href=3D"https://github.com/EttusResearch/meta-ettus" rel=3D"noreferr=
er" target=3D"_blank">https://github.com/EttusResearch/meta-ettus</a><br>
&gt; and<br>
&gt; <a href=3D"https://github.com/Xilinx/u-boot-xlnx" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/Xilinx/u-boot-xlnx</a><br>
&gt; and may be use this guide:<br>
&gt; <a href=3D"https://opencpi.github.io/bsp_e310/Ettus_E3xx_Getting_Starte=
d_Guide.pdf" rel=3D"noreferrer" target=3D"_blank">https://opencpi.github.io/=
bsp_e310/Ettus_E3xx_Getting_Started_Guide.pdf</a><br>
&gt; ?<br>
&gt; <br>
&gt; Thanks,<br>
&gt; Andrew<br>
&gt; <br>
&gt; <br>
&gt; On Wed, Nov 25, 2020 at 8:26 AM Philip Balister &lt;<a href=3D"mailto:p=
hilip@balister.org" target=3D"_blank">philip@balister.org</a>&gt; wrote:<br>=

&gt; <br>
&gt;&gt; What is that mac address? I'd like to see if it matches mine.<br>
&gt;&gt;<br>
&gt;&gt; If I recall correctly, the mac address is flashed into the i2c eepr=
om,<br>
&gt;&gt; u-boot is supposed to read that and use it. Factory test should set=
 it<br>
&gt;&gt; up uniquely. But my memories fade. Inspecting the u-boot source mig=
ht<br>
&gt;&gt; show us ....<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://github.com/EttusResearch/meta-ettus/blob/zeus/me=
ta-e31x/recipes-bsp/u-boot/files/0001-ni-zynq-Add-support-for-NI-E31x-SG1-SG=
3-boards.patch#L397" rel=3D"noreferrer" target=3D"_blank">https://github.com=
/EttusResearch/meta-ettus/blob/zeus/meta-e31x/recipes-bsp/u-boot/files/0001-=
ni-zynq-Add-support-for-NI-E31x-SG1-SG3-boards.patch#L397</a><br>
&gt;&gt;<br>
&gt;&gt; I didn't sift through the ifdef's though.<br>
&gt;&gt;<br>
&gt;&gt; Philip<br>
&gt;&gt;<br>
&gt;&gt; On 11/24/20 7:28 PM, Andrew Payne via USRP-users wrote:<br>
&gt;&gt;&gt; Is there a way to change the mac address of my e310s?&nbsp; I h=
ave imaged<br>
&gt;&gt;&gt; several e310s using the image file in<br>
&gt;&gt;&gt; <a href=3D"https://files.ettus.com/binaries/cache/e3xx/meta-ett=
us-v3.15.0.0/" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/=
binaries/cache/e3xx/meta-ettus-v3.15.0.0/</a>, and<br>
&gt;&gt; they<br>
&gt;&gt;&gt; all have the same MAC address.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On some searching around the web I can see that it is likely th=
at the MAC<br>
&gt;&gt;&gt; address parameter is specified as a U-boot parameter.&nbsp; I'd=
 like to know<br>
&gt;&gt;&gt; what my options are for changing it.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Thanks,<br>
&gt;&gt;&gt; Andrew<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank"=
>USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_l=
ists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-us=
ers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ett=
us.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/=
listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></body></html>=

--Apple-Mail-284CE8EC-6B3A-45ED-9FAE-6A393B64EFA4--


--===============6919525099090033599==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6919525099090033599==--

