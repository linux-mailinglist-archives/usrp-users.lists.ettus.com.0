Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC24B171E
	for <lists+usrp-users@lfdr.de>; Fri, 13 Sep 2019 04:05:25 +0200 (CEST)
Received: from [::1] (port=39364 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i8axg-0003XZ-08; Thu, 12 Sep 2019 22:05:24 -0400
Received: from mail-io1-f53.google.com ([209.85.166.53]:40925)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <javiercba@gmail.com>) id 1i8axb-0003TS-TB
 for usrp-users@lists.ettus.com; Thu, 12 Sep 2019 22:05:19 -0400
Received: by mail-io1-f53.google.com with SMTP id h144so59520582iof.7
 for <usrp-users@lists.ettus.com>; Thu, 12 Sep 2019 19:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FuybgtLZepPvG+H1364ZB2e4wuB384orhHn/Mnin5hs=;
 b=fFVVE23ecCO+hJidr6MvvbMsKmzMzEaqQaqLcpj7hr9JyTn42vO8S7BKxBeg1obNQd
 o8YbSkyCqbfy9MtKcaPb3nktOc8oE4CKrgeNoQp93WefbihJvI/swMgLSvqDJrhhxt+b
 +KBc+Tpvoiy2JoLFoYWyJR3QtorBRnnOoMF2kgiYGgtc3eOlJOspz/dhK4YnU6Th4Ibz
 BhtaPvlsPqwpG12dX6sEmtlYRiZZSqpw5c6vkxtz0gVFDYZfwjjxCpHOD/oGXuQeC+zr
 sm53hdg3pfnOoGJLEWND33MAq+UMFiKPM0HfYcIrlI3RWmnWnPaCcogyCvWZSjLxF211
 glDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FuybgtLZepPvG+H1364ZB2e4wuB384orhHn/Mnin5hs=;
 b=YHivtSm9cC5TPTIKtf8hciZMO6lWiuBWZTGa6hqBDU2Yeu7QoUAZccV0He1Gnc1Hv9
 Y74Dxo0ZhX+uDW4VY+InbhJtiovYo0OzOpdAeB1/beZLEsFmJaEhJmEir0w/0UIJvyWX
 /deUd+U04EXL9J7XCl4mzSBu26Viuztmi5Z/myAkuVoQD4hGmYBdb6U++bOmEBI//+NH
 03fWdpE0hFALXxv/EYp1+c09zatI5OGsf/uRYtkw0wYucgn0yBwWPNUZIxDBeJWsaAVr
 ElysN8rncOnL31AFRSCB5oEWyhuBaPxMQHm/kNkAY+fvm2RaEiJZoSY8zhBRBj2Cea1e
 SQeg==
X-Gm-Message-State: APjAAAUU++WafUUQbeM60d5O4huiPQz4htsG5DAM+P9Mlzn/AW9OJZ5d
 B5jWwjhILWJ6Q1zVIokBoDfcfGcrM+1LPwhJEBU=
X-Google-Smtp-Source: APXvYqyQxXPA68ydF7HqsMSDvvtN8o81JSFUrwGI1tM8OJ7pE2HZ+GJZiTOqhwsfIQVe/R1yK1gf4o8Y+9Ccnxpwz4k=
X-Received: by 2002:a5d:814d:: with SMTP id f13mr8688328ioo.162.1568340279153; 
 Thu, 12 Sep 2019 19:04:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAMGw0PawXrX2hyLvDSPVqxhpccCh+L6HP64OmbOTqA21C6i6gA@mail.gmail.com>
 <CAKJyDk+38rceb_8WrDNiy1-VJ4QgSxhNQf7hFFn-aF-LfHfoOQ@mail.gmail.com>
 <5E86E19F-EFD1-4C1A-9886-3375F03B1E93@gmail.com>
In-Reply-To: <5E86E19F-EFD1-4C1A-9886-3375F03B1E93@gmail.com>
Date: Thu, 12 Sep 2019 23:04:26 -0300
Message-ID: <CAMGw0PZ63vUUe-PEpJ1us2mxQwn85V7eHkP9HA6Lv1F=m5vhOw@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
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
From: Javier Uranga via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Javier Uranga <javiercba@gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2368107882411705559=="
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

--===============2368107882411705559==
Content-Type: multipart/alternative; boundary="00000000000039d9ac059265ad0a"

--00000000000039d9ac059265ad0a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you  Guys,

I received a Magic word

sudo /=E2=81=A0path/=E2=81=A0to/=E2=81=A0fx2_init_eeprom -=E2=81=A0-=E2=81=
=A0type b100 -=E2=81=A0-=E2=81=A0vid 04b4 -=E2=81=A0-=E2=81=A0pid 8613

And it's worked perfect

Now my old USRP B100 is alive again!

But when I power off/on the device I must to repeat the process, because
the eeprom do not remain loaded

just in case, do you have any other magic word ? to make the changes
permanently

Best Regards
Javier

El mi=C3=A9., 11 sept. 2019 a las 20:55, Marcus D Leech (<patchvonbraun@gma=
il.com>)
escribi=C3=B3:

> I recall this used to happen to some B100s.
>
> There=E2=80=99s an EEPROM writer command, I think, that can restore the c=
orrect
> identity.
>
> These devices are quite obsolete now, so don=E2=80=99t get your hopes up =
too much.
>
> I=E2=80=99m in the road at the moment and won=E2=80=99t be back until Fri=
day. I should be
> able to dig up the magic incantations after then. Unless some other Ettus
> old-timer remembers the correct spell.
>
>
> Sent from my iPhone
>
> On Sep 11, 2019, at 6:27 PM, Robin Coxe via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Does this help?
>
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolcha=
in_(UHD_and_GNU_Radio)_on_Linux#Configuring_USB
>
> On Wed, Sep 11, 2019 at 1:08 PM Javier Uranga via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Dear Members in the List,
>>
>> I'm working with an old USRP B100 that came with a cubesat development
>>  kit,
>>
>> Now suddenly stop working, no longer respond to:
>>
>> uhd_find_devices
>> linux; GNU C++ version 5.3.1 20151219; Boost_105800;
>> UHD_003.009.002-=E2=81=A00-=E2=81=A0unknown
>> No UHD Devices Found
>>
>> uhd_usrp_probe
>> linux; GNU C++ version 5.3.1 20151219; Boost_105800;
>> UHD_003.009.002-=E2=81=A00-=E2=81=A0unknown
>> Error: LookupError: KeyError: No devices found for -=E2=81=A0-=E2=81=A0-=
=E2=81=A0-=E2=81=A0-=E2=81=A0>
>> Empty Device Address
>>
>> I must to say that, until few minutes before, the device showed no
>> problems, but after a switch OFF/ON the device, problems came up
>>
>> And when I ask:
>>
>> $lsusb
>> the device found is:
>> Bus 003 Device 003: ID 04b4:8613 Cypress Semiconductor Corp. CY7C68013
>> EZ-=E2=81=A0USB FX2 USB 2.0 Development Kit
>>
>> As you can see, the detected device is not longer Ettus USRP as use to
>> be. More over, in the front panel, new led is on, there is a new led in =
ON
>> status, the LED B: FPGA loaded
>> (in addition to:
>> LED A: transmitting,    ON
>> LED C: receiving,          ON
>> LED D: FPGA loaded,   OFF
>> LED E: reference lock, ON
>> LED F: board power,     ON )
>>
>> I already re installed the GNU RADIO 3.7.9 drivers for Ubuntu 16.04 and
>> GNU RADIO 3.7.11 for Ubuntu 18.04, all systems where it use to work, But
>> the USRP is no longer detected.
>>
>> drivers in Ubuntu 16.04:
>> /usr/share/uhd/images$ ls
>> usrp_b100_fw.ihx
>> usrp_b100_fpga.bin
>>
>> What can be wrong ?, it's Firmware problem ?
>> How can I solve it?
>>
>> I'll be very grateful with any comments or suggestions
>>
>> Best Regards,
>> Javier Nicolas
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

--00000000000039d9ac059265ad0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif;font-size:small">Thank you=C2=A0 Guys,</div><div class=
=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif;font-siz=
e:small"><br>I received a Magic word</div><div class=3D"gmail_default" styl=
e=3D"font-family:arial,helvetica,sans-serif;font-size:small"><br>sudo /=E2=
=81=A0path/=E2=81=A0to/=E2=81=A0fx2_init_eeprom -=E2=81=A0-=E2=81=A0type b1=
00 -=E2=81=A0-=E2=81=A0vid 04b4 -=E2=81=A0-=E2=81=A0pid 8613</div><div clas=
s=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif;font-si=
ze:small"><br>And it&#39;s worked perfect<br><br>Now my old USRP B100 is al=
ive again!<br><br>But when I power off/on the device I must to repeat the p=
rocess, because the eeprom do not remain loaded<br><br>just in case, do you=
 have any other magic word ? to make the changes permanently<br><br>Best Re=
gards<br>Javier<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">El mi=C3=A9., 11 sept. 2019 a las 20:55, Marcus D =
Leech (&lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.c=
om</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"auto">I recall this used to happen to some B100s.=C2=
=A0<div><br></div><div>There=E2=80=99s an EEPROM writer command, I think, t=
hat can restore the correct identity.=C2=A0</div><div><br></div><div>These =
devices are quite obsolete now, so don=E2=80=99t get your hopes up too much=
.=C2=A0</div><div><br></div><div>I=E2=80=99m in the road at the moment and =
won=E2=80=99t be back until Friday. I should be able to dig up the magic in=
cantations after then. Unless some other Ettus old-timer remembers the corr=
ect spell.=C2=A0</div><div><br></div><div><br><div id=3D"gmail-m_6776187550=
2938736AppleMailSignature" dir=3D"ltr">Sent from my iPhone</div><div dir=3D=
"ltr"><br>On Sep 11, 2019, at 6:27 PM, Robin Coxe via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.=
ettus.com</a>&gt; wrote:<br><br></div><blockquote type=3D"cite"><div dir=3D=
"ltr"><div dir=3D"ltr">Does this help?<div><a href=3D"https://kb.ettus.com/=
Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_=
on_Linux#Configuring_USB" target=3D"_blank">https://kb.ettus.com/Building_a=
nd_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux#C=
onfiguring_USB</a><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Sep 11, 2019 at 1:08 PM Javier Uranga=
 via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D=
"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_def=
ault" style=3D"font-family:arial,helvetica,sans-serif;font-size:small">Dear=
 Members in the List,<br><br>I&#39;m working with an old USRP B100 that cam=
e with a cubesat development =C2=A0kit,<br><br>Now suddenly stop working, n=
o longer respond to:<br><br>uhd_find_devices<br>linux; GNU C++ version 5.3.=
1 20151219; Boost_105800;<br>UHD_003.009.002-=E2=81=A00-=E2=81=A0unknown<br=
>No UHD Devices Found<br><br>uhd_usrp_probe<br>linux; GNU C++ version 5.3.1=
 20151219; Boost_105800;<br>UHD_003.009.002-=E2=81=A00-=E2=81=A0unknown<br>=
Error: LookupError: KeyError: No devices found for -=E2=81=A0-=E2=81=A0-=E2=
=81=A0-=E2=81=A0-=E2=81=A0&gt;<br>Empty Device Address<br><br>I must to say=
 that, until few minutes before, the device showed no<br>problems, but afte=
r a switch OFF/ON the device, problems came up<br><br>And when I ask:<br><b=
r>$lsusb<br>the device found is:<br>Bus 003 Device 003: ID 04b4:8613 Cypres=
s Semiconductor Corp. CY7C68013<br>EZ-=E2=81=A0USB FX2 USB 2.0 Development =
Kit<br><br>As you can see, the detected device is not longer Ettus USRP as =
use to be. More over, in the front panel, new led is on, there is a new led=
 in ON status, the LED B: FPGA loaded<br>(in addition to:<br>LED A: transmi=
tting, =C2=A0 =C2=A0ON<br>LED C: receiving, =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0ON<br>LED D: FPGA loaded, =C2=A0 OFF<br>LED E: reference lock, ON<br>LED=
 F: board power, =C2=A0 =C2=A0 ON )<br><br>I already re installed the GNU R=
ADIO 3.7.9 drivers for Ubuntu 16.04 and GNU RADIO 3.7.11 for Ubuntu 18.04, =
all systems where it use to work, But the USRP is no longer detected.<br><b=
r>drivers in Ubuntu 16.04:<br>/usr/share/uhd/images$ ls<br>usrp_b100_fw.ihx=
<br>usrp_b100_fpga.bin =C2=A0 <br><br>What can be wrong ?, it&#39;s Firmwar=
e problem ?<br>How can I solve it?<br><br>I&#39;ll be very grateful with an=
y comments or suggestions<br><br>Best Regards,<br>Javier Nicolas<br></div><=
/div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr"><span>_______=
________________________________________</span><br><span>USRP-users mailing=
 list</span><br><span><a href=3D"mailto:USRP-users@lists.ettus.com" target=
=3D"_blank">USRP-users@lists.ettus.com</a></span><br><span><a href=3D"http:=
//lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_b=
lank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a=
></span><br></div></blockquote></div></div></blockquote></div>

--00000000000039d9ac059265ad0a--


--===============2368107882411705559==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2368107882411705559==--

