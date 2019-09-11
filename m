Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7543DB061F
	for <lists+usrp-users@lfdr.de>; Thu, 12 Sep 2019 01:56:33 +0200 (CEST)
Received: from [::1] (port=41822 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i8CTN-0005xz-9r; Wed, 11 Sep 2019 19:56:29 -0400
Received: from mail-io1-f45.google.com ([209.85.166.45]:45828)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1i8CTJ-0005X3-Cx
 for usrp-users@lists.ettus.com; Wed, 11 Sep 2019 19:56:25 -0400
Received: by mail-io1-f45.google.com with SMTP id f12so50107616iog.12
 for <usrp-users@lists.ettus.com>; Wed, 11 Sep 2019 16:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=3Z0r7ecR1C8DuKdI6zZfLuVFER4G488lmgxiLfq9S4c=;
 b=EGx1bhbo0LoA8XGDEGj9wHCuTWZPQGfzwTyGnF7wvWZdm/yF73qVewT1cHeolcYUGy
 y60WosyzcXwqmN3ECsoyt8r1AeZ+dEe7GZxbXX1DxkYUCAfylP31OK+Za4ZgSb9huCto
 GUPeLnoezptD/9qn5xJlZy+rPGoOvV1a3YVtr40CdemW76HYUR2RXrSarfikvC68lDLR
 OuFeiW3+cEC/fxMqYoeh8WUACB6kuwy1LfdfwMC5+ongqUDqn+lCSSyAkKE+7YMaTGwk
 Id93LGMVDdAWCjzO3VBysTozZAx9cSb3pHwD1Rd4HrjTHGkH8GqeXG5h1Yrc4yp0WjO7
 W6Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=3Z0r7ecR1C8DuKdI6zZfLuVFER4G488lmgxiLfq9S4c=;
 b=mT9hEdTYIYPlr0pOTAoK237qjCH6EQbPlEgCOKrOmnBScFT1fa4rwkZmhMxbuhLG1T
 rsQxe6NkfhgLhKfLyezCLlMyatRTHplmoZ7czYMuLOHq3/mFXMimNpsdYI0m8Mzc+JS5
 vHbercD8IYH/N8YVGfg+Hnee+tIqmqPwngiL9qrYE9JwD42IXw717TvIheL27iSuzc9d
 xtQIQmiAmu9m4WFJkiDOmQaFVshKmyxBG5JAJbIb5qzLYOx42LpUPtWIyhrmFmfElrTX
 TLCZkjGG4uA6EoteJBnJk+SCCDcBFYNOxY2BrJv3FmE/oc1OcXMACp8P4SS7BzgSttCd
 ZKZA==
X-Gm-Message-State: APjAAAWPkVNVN4HwIYUrFYOp0MZKeVgEvVvO/nCao7zA/9MTMWAh3d3Z
 1+ZrFg1YGGmww8xrCzRBbnT//fDL
X-Google-Smtp-Source: APXvYqxfxJ9AJeWvq4QuJJqQnQRqDidwtD6CPi0w71bTiaYCNlEq9/RKKs/Tk2SECZsu7t84wFsfWA==
X-Received: by 2002:a5e:9e09:: with SMTP id i9mr795219ioq.24.1568246144713;
 Wed, 11 Sep 2019 16:55:44 -0700 (PDT)
Received: from [172.20.0.57] (cmr-208-97-88-52.cr.net.cable.rogers.com.
 [208.97.88.52])
 by smtp.gmail.com with ESMTPSA id z8sm18813107ioh.62.2019.09.11.16.55.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 16:55:43 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16G102)
In-Reply-To: <CAKJyDk+38rceb_8WrDNiy1-VJ4QgSxhNQf7hFFn-aF-LfHfoOQ@mail.gmail.com>
Date: Wed, 11 Sep 2019 19:55:43 -0400
Message-Id: <5E86E19F-EFD1-4C1A-9886-3375F03B1E93@gmail.com>
References: <CAMGw0PawXrX2hyLvDSPVqxhpccCh+L6HP64OmbOTqA21C6i6gA@mail.gmail.com>
 <CAKJyDk+38rceb_8WrDNiy1-VJ4QgSxhNQf7hFFn-aF-LfHfoOQ@mail.gmail.com>
To: Robin Coxe <coxe@quanttux.com>
Subject: Re: [USRP-users] USRP B100 Help
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0618493411565877426=="
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


--===============0618493411565877426==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-46C024B1-B33B-4906-A9DD-3C3467FF5AF1
Content-Transfer-Encoding: 7bit


--Apple-Mail-46C024B1-B33B-4906-A9DD-3C3467FF5AF1
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I recall this used to happen to some B100s.=20

There=E2=80=99s an EEPROM writer command, I think, that can restore the corr=
ect identity.=20

These devices are quite obsolete now, so don=E2=80=99t get your hopes up too=
 much.=20

I=E2=80=99m in the road at the moment and won=E2=80=99t be back until Friday=
. I should be able to dig up the magic incantations after then. Unless some o=
ther Ettus old-timer remembers the correct spell.=20


Sent from my iPhone

> On Sep 11, 2019, at 6:27 PM, Robin Coxe via USRP-users <usrp-users@lists.e=
ttus.com> wrote:
>=20
> Does this help?
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchai=
n_(UHD_and_GNU_Radio)_on_Linux#Configuring_USB
>=20
>> On Wed, Sep 11, 2019 at 1:08 PM Javier Uranga via USRP-users <usrp-users@=
lists.ettus.com> wrote:
>> Dear Members in the List,
>>=20
>> I'm working with an old USRP B100 that came with a cubesat development  k=
it,
>>=20
>> Now suddenly stop working, no longer respond to:
>>=20
>> uhd_find_devices
>> linux; GNU C++ version 5.3.1 20151219; Boost_105800;
>> UHD_003.009.002-=E2=81=A00-=E2=81=A0unknown
>> No UHD Devices Found
>>=20
>> uhd_usrp_probe
>> linux; GNU C++ version 5.3.1 20151219; Boost_105800;
>> UHD_003.009.002-=E2=81=A00-=E2=81=A0unknown
>> Error: LookupError: KeyError: No devices found for -=E2=81=A0-=E2=81=A0-=E2=
=81=A0-=E2=81=A0-=E2=81=A0>
>> Empty Device Address
>>=20
>> I must to say that, until few minutes before, the device showed no
>> problems, but after a switch OFF/ON the device, problems came up
>>=20
>> And when I ask:
>>=20
>> $lsusb
>> the device found is:
>> Bus 003 Device 003: ID 04b4:8613 Cypress Semiconductor Corp. CY7C68013
>> EZ-=E2=81=A0USB FX2 USB 2.0 Development Kit
>>=20
>> As you can see, the detected device is not longer Ettus USRP as use to be=
. More over, in the front panel, new led is on, there is a new led in ON sta=
tus, the LED B: FPGA loaded
>> (in addition to:
>> LED A: transmitting,    ON
>> LED C: receiving,          ON
>> LED D: FPGA loaded,   OFF
>> LED E: reference lock, ON
>> LED F: board power,     ON )
>>=20
>> I already re installed the GNU RADIO 3.7.9 drivers for Ubuntu 16.04 and G=
NU RADIO 3.7.11 for Ubuntu 18.04, all systems where it use to work, But the U=
SRP is no longer detected.
>>=20
>> drivers in Ubuntu 16.04:
>> /usr/share/uhd/images$ ls
>> usrp_b100_fw.ihx
>> usrp_b100_fpga.bin  =20
>>=20
>> What can be wrong ?, it's Firmware problem ?
>> How can I solve it?
>>=20
>> I'll be very grateful with any comments or suggestions
>>=20
>> Best Regards,
>> Javier Nicolas
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-46C024B1-B33B-4906-A9DD-3C3467FF5AF1
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I recall this used to happen to some B100s.=
&nbsp;<div><br></div><div>There=E2=80=99s an EEPROM writer command, I think,=
 that can restore the correct identity.&nbsp;</div><div><br></div><div>These=
 devices are quite obsolete now, so don=E2=80=99t get your hopes up too much=
.&nbsp;</div><div><br></div><div>I=E2=80=99m in the road at the moment and w=
on=E2=80=99t be back until Friday. I should be able to dig up the magic inca=
ntations after then. Unless some other Ettus old-timer remembers the correct=
 spell.&nbsp;</div><div><br></div><div><br><div id=3D"AppleMailSignature" di=
r=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br>On Sep 11, 2019, at 6=
:27 PM, Robin Coxe via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br><br></div><blockquote t=
ype=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr">Does this help?<div><a href=3D=
"https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain=
_(UHD_and_GNU_Radio)_on_Linux#Configuring_USB">https://kb.ettus.com/Building=
_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux#=
Configuring_USB</a><br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, Sep 11, 2019 at 1:08 PM Javier Uranga via=
 USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lis=
ts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-=
left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family=
:arial,helvetica,sans-serif;font-size:small">Dear Members in the List,<br><b=
r>I'm working with an old USRP B100 that came with a cubesat development &nb=
sp;kit,<br><br>Now suddenly stop working, no longer respond to:<br><br>uhd_f=
ind_devices<br>linux; GNU C++ version 5.3.1 20151219; Boost_105800;<br>UHD_0=
03.009.002-=E2=81=A00-=E2=81=A0unknown<br>No UHD Devices Found<br><br>uhd_us=
rp_probe<br>linux; GNU C++ version 5.3.1 20151219; Boost_105800;<br>UHD_003.=
009.002-=E2=81=A00-=E2=81=A0unknown<br>Error: LookupError: KeyError: No devi=
ces found for -=E2=81=A0-=E2=81=A0-=E2=81=A0-=E2=81=A0-=E2=81=A0&gt;<br>Empt=
y Device Address<br><br>I must to say that, until few minutes before, the de=
vice showed no<br>problems, but after a switch OFF/ON the device, problems c=
ame up<br><br>And when I ask:<br><br>$lsusb<br>the device found is:<br>Bus 0=
03 Device 003: ID 04b4:8613 Cypress Semiconductor Corp. CY7C68013<br>EZ-=E2=81=
=A0USB FX2 USB 2.0 Development Kit<br><br>As you can see, the detected devic=
e is not longer Ettus USRP as use to be. More over, in the front panel, new l=
ed is on, there is a new led in ON status, the LED B: FPGA loaded<br>(in add=
ition to:<br>LED A: transmitting, &nbsp; &nbsp;ON<br>LED C: receiving, &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;ON<br>LED D: FPGA loaded, &nbsp; OFF<br>LED E: r=
eference lock, ON<br>LED F: board power, &nbsp; &nbsp; ON )<br><br>I already=
 re installed the GNU RADIO 3.7.9 drivers for Ubuntu 16.04 and GNU RADIO 3.7=
.11 for Ubuntu 18.04, all systems where it use to work, But the USRP is no l=
onger detected.<br><br>drivers in Ubuntu 16.04:<br>/usr/share/uhd/images$ ls=
<br>usrp_b100_fw.ihx<br>usrp_b100_fpga.bin &nbsp; <br><br>What can be wrong ?=
, it's Firmware problem ?<br>How can I solve it?<br><br>I'll be very gratefu=
l with any comments or suggestions<br><br>Best Regards,<br>Javier Nicolas<br=
></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr"><span>________=
_______________________________________</span><br><span>USRP-users mailing l=
ist</span><br><span><a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users=
@lists.ettus.com</a></span><br><span><a href=3D"http://lists.ettus.com/mailm=
an/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a></span><br></div></blockquote></div></body=
></html>=

--Apple-Mail-46C024B1-B33B-4906-A9DD-3C3467FF5AF1--


--===============0618493411565877426==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0618493411565877426==--

