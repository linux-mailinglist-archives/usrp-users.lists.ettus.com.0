Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 907E5B1734
	for <lists+usrp-users@lfdr.de>; Fri, 13 Sep 2019 04:39:23 +0200 (CEST)
Received: from [::1] (port=42338 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i8bUU-0005LD-Ug; Thu, 12 Sep 2019 22:39:18 -0400
Received: from mail-io1-f47.google.com ([209.85.166.47]:43731)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1i8bUR-0005DO-Ix
 for usrp-users@lists.ettus.com; Thu, 12 Sep 2019 22:39:15 -0400
Received: by mail-io1-f47.google.com with SMTP id r8so34776600iol.10
 for <usrp-users@lists.ettus.com>; Thu, 12 Sep 2019 19:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=RDJNmsYs/JaOEiln575v3LFHptwEep9qFzNkeYdkMp8=;
 b=LG/OOcINq6Cat1Kc7PajmS29g1xYyh+yks8VR8hAxV7dcUNZ9cp0e4EiWf1SRC7FQm
 P7yi+Yq5yGZ9kWFBuWtoW3eOIbY/x0CPWIdEJh79+ATGDxMajRP8swRWwVcl1Edv5sBd
 Jsp7uQixV8vSQu/5Y4bhEPKU/Qi1iN+TttAsUBx6zoSbn7r28OvQaocZNVvu+r2uCNd8
 2Y5hpx+6UxkG5gKXyY9P4uRzu9T41U3aC/mgCjf7RraST+uDuTpV5miv1qJpfoeasm75
 8FbHR6aL17U1L8vG6N3gPdavrpEsKDMyd3l1QrHnjrAjP+5BR6fAJwHDTq2oAPi2Ptwo
 yDLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=RDJNmsYs/JaOEiln575v3LFHptwEep9qFzNkeYdkMp8=;
 b=F9oBmbbHYIyODUQ5OOjSP/AajyrpH2u6iJuV3dOYYu//mrSSyDsJNH5An9j6iuXcOv
 3t/w4cCt8WU8hVI7UvkM2laoztD9zcUYDcF2aCZBfJfFs3JtssrDYSulUUzxIE0JjvAy
 S8k/N4m27q7L/NvaVRr+mVnrs0l4fT1CubLqHLlFBFMA07WLbnr+fHT1ALc3fdQWkkYG
 J9VrrSqEt0wiqT5I3/pYoHydB/MQIc1bMe6OlYrJbBPTUrGSEfbidWU1XuRApU0TSnaL
 3p1pPWeg1rvOMs5+LRZ3jHxi5EPupFnfImJG/OKvSA3z7YEFec221YsN3bT+IibMHxIV
 9GmQ==
X-Gm-Message-State: APjAAAVZPCpcYjY9FsDbr85PtmXPWNmKJnURfHecfn/tN6F40Ir9hE2e
 gQBOt0Wyzg/DudNnzDE8kQSxu+m4
X-Google-Smtp-Source: APXvYqzjRpav9mQ15gIgRkZh+rBmxdoSzOB7VQHA9OmlUGgNoD+EBBI8ovgwMyFeX2YcgQWYGxzMfg==
X-Received: by 2002:a5d:9499:: with SMTP id v25mr9204826ioj.138.1568342314771; 
 Thu, 12 Sep 2019 19:38:34 -0700 (PDT)
Received: from [172.20.0.57] (cmr-208-97-88-52.cr.net.cable.rogers.com.
 [208.97.88.52])
 by smtp.gmail.com with ESMTPSA id q8sm18300698ion.82.2019.09.12.19.38.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Sep 2019 19:38:33 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16G102)
In-Reply-To: <CAMGw0PZ63vUUe-PEpJ1us2mxQwn85V7eHkP9HA6Lv1F=m5vhOw@mail.gmail.com>
Date: Thu, 12 Sep 2019 22:38:32 -0400
Message-Id: <DAA31D94-DFC9-459E-8201-2AA7921FFFFC@gmail.com>
References: <CAMGw0PawXrX2hyLvDSPVqxhpccCh+L6HP64OmbOTqA21C6i6gA@mail.gmail.com>
 <CAKJyDk+38rceb_8WrDNiy1-VJ4QgSxhNQf7hFFn-aF-LfHfoOQ@mail.gmail.com>
 <5E86E19F-EFD1-4C1A-9886-3375F03B1E93@gmail.com>
 <CAMGw0PZ63vUUe-PEpJ1us2mxQwn85V7eHkP9HA6Lv1F=m5vhOw@mail.gmail.com>
To: Javier Uranga <javiercba@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4960343615862626614=="
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


--===============4960343615862626614==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-B234CF51-D59E-4F24-AB4B-CBC5C06FF5F3
Content-Transfer-Encoding: 7bit


--Apple-Mail-B234CF51-D59E-4F24-AB4B-CBC5C06FF5F3
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Quite likely means that your EEPROM is damaged in some way.=20



Sent from my iPhone

> On Sep 12, 2019, at 10:04 PM, Javier Uranga <javiercba@gmail.com> wrote:
>=20
> Thank you  Guys,
>=20
> I received a Magic word
>=20
> sudo /=E2=81=A0path/=E2=81=A0to/=E2=81=A0fx2_init_eeprom -=E2=81=A0-=E2=81=
=A0type b100 -=E2=81=A0-=E2=81=A0vid 04b4 -=E2=81=A0-=E2=81=A0pid 8613
>=20
> And it's worked perfect
>=20
> Now my old USRP B100 is alive again!
>=20
> But when I power off/on the device I must to repeat the process, because t=
he eeprom do not remain loaded
>=20
> just in case, do you have any other magic word ? to make the changes perma=
nently
>=20
> Best Regards
> Javier
>=20
>> El mi=C3=A9., 11 sept. 2019 a las 20:55, Marcus D Leech (<patchvonbraun@g=
mail.com>) escribi=C3=B3:
>> I recall this used to happen to some B100s.=20
>>=20
>> There=E2=80=99s an EEPROM writer command, I think, that can restore the c=
orrect identity.=20
>>=20
>> These devices are quite obsolete now, so don=E2=80=99t get your hopes up t=
oo much.=20
>>=20
>> I=E2=80=99m in the road at the moment and won=E2=80=99t be back until Fri=
day. I should be able to dig up the magic incantations after then. Unless so=
me other Ettus old-timer remembers the correct spell.=20
>>=20
>>=20
>> Sent from my iPhone
>>=20
>>> On Sep 11, 2019, at 6:27 PM, Robin Coxe via USRP-users <usrp-users@lists=
.ettus.com> wrote:
>>>=20
>>> Does this help?
>>> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolch=
ain_(UHD_and_GNU_Radio)_on_Linux#Configuring_USB
>>>=20
>>>> On Wed, Sep 11, 2019 at 1:08 PM Javier Uranga via USRP-users <usrp-user=
s@lists.ettus.com> wrote:
>>>> Dear Members in the List,
>>>>=20
>>>> I'm working with an old USRP B100 that came with a cubesat development =
 kit,
>>>>=20
>>>> Now suddenly stop working, no longer respond to:
>>>>=20
>>>> uhd_find_devices
>>>> linux; GNU C++ version 5.3.1 20151219; Boost_105800;
>>>> UHD_003.009.002-=E2=81=A00-=E2=81=A0unknown
>>>> No UHD Devices Found
>>>>=20
>>>> uhd_usrp_probe
>>>> linux; GNU C++ version 5.3.1 20151219; Boost_105800;
>>>> UHD_003.009.002-=E2=81=A00-=E2=81=A0unknown
>>>> Error: LookupError: KeyError: No devices found for -=E2=81=A0-=E2=81=A0=
-=E2=81=A0-=E2=81=A0-=E2=81=A0>
>>>> Empty Device Address
>>>>=20
>>>> I must to say that, until few minutes before, the device showed no
>>>> problems, but after a switch OFF/ON the device, problems came up
>>>>=20
>>>> And when I ask:
>>>>=20
>>>> $lsusb
>>>> the device found is:
>>>> Bus 003 Device 003: ID 04b4:8613 Cypress Semiconductor Corp. CY7C68013
>>>> EZ-=E2=81=A0USB FX2 USB 2.0 Development Kit
>>>>=20
>>>> As you can see, the detected device is not longer Ettus USRP as use to b=
e. More over, in the front panel, new led is on, there is a new led in ON st=
atus, the LED B: FPGA loaded
>>>> (in addition to:
>>>> LED A: transmitting,    ON
>>>> LED C: receiving,          ON
>>>> LED D: FPGA loaded,   OFF
>>>> LED E: reference lock, ON
>>>> LED F: board power,     ON )
>>>>=20
>>>> I already re installed the GNU RADIO 3.7.9 drivers for Ubuntu 16.04 and=
 GNU RADIO 3.7.11 for Ubuntu 18.04, all systems where it use to work, But th=
e USRP is no longer detected.
>>>>=20
>>>> drivers in Ubuntu 16.04:
>>>> /usr/share/uhd/images$ ls
>>>> usrp_b100_fw.ihx
>>>> usrp_b100_fpga.bin  =20
>>>>=20
>>>> What can be wrong ?, it's Firmware problem ?
>>>> How can I solve it?
>>>>=20
>>>> I'll be very grateful with any comments or suggestions
>>>>=20
>>>> Best Regards,
>>>> Javier Nicolas
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-B234CF51-D59E-4F24-AB4B-CBC5C06FF5F3
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Quite likely means that your EEPROM is dama=
ged in some way.&nbsp;<div><br></div><div><br><br><div id=3D"AppleMailSignat=
ure" dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br>On Sep 12, 20=
19, at 10:04 PM, Javier Uranga &lt;<a href=3D"mailto:javiercba@gmail.com">ja=
viercba@gmail.com</a>&gt; wrote:<br><br></div><blockquote type=3D"cite"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-fam=
ily:arial,helvetica,sans-serif;font-size:small">Thank you&nbsp; Guys,</div><=
div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif;=
font-size:small"><br>I received a Magic word</div><div class=3D"gmail_defaul=
t" style=3D"font-family:arial,helvetica,sans-serif;font-size:small"><br>sudo=
 /=E2=81=A0path/=E2=81=A0to/=E2=81=A0fx2_init_eeprom -=E2=81=A0-=E2=81=A0typ=
e b100 -=E2=81=A0-=E2=81=A0vid 04b4 -=E2=81=A0-=E2=81=A0pid 8613</div><div c=
lass=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif;font-=
size:small"><br>And it's worked perfect<br><br>Now my old USRP B100 is alive=
 again!<br><br>But when I power off/on the device I must to repeat the proce=
ss, because the eeprom do not remain loaded<br><br>just in case, do you have=
 any other magic word ? to make the changes permanently<br><br>Best Regards<=
br>Javier<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">El mi=C3=A9., 11 sept. 2019 a las 20:55, Marcus D Leech (&=
lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt=
;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"auto">I recall this used to happen to some B100s.&nbsp;<div><br>=
</div><div>There=E2=80=99s an EEPROM writer command, I think, that can resto=
re the correct identity.&nbsp;</div><div><br></div><div>These devices are qu=
ite obsolete now, so don=E2=80=99t get your hopes up too much.&nbsp;</div><d=
iv><br></div><div>I=E2=80=99m in the road at the moment and won=E2=80=99t be=
 back until Friday. I should be able to dig up the magic incantations after t=
hen. Unless some other Ettus old-timer remembers the correct spell.&nbsp;</d=
iv><div><br></div><div><br><div id=3D"gmail-m_67761875502938736AppleMailSign=
ature" dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br>On Sep 11, 2=
019, at 6:27 PM, Robin Coxe via USRP-users &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:=
<br><br></div><blockquote type=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr">Do=
es this help?<div><a href=3D"https://kb.ettus.com/Building_and_Installing_th=
e_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux#Configuring_USB" t=
arget=3D"_blank">https://kb.ettus.com/Building_and_Installing_the_USRP_Open-=
Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux#Configuring_USB</a><br></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Wed, Sep 11, 2019 at 1:08 PM Javier Uranga via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,helv=
etica,sans-serif;font-size:small">Dear Members in the List,<br><br>I'm worki=
ng with an old USRP B100 that came with a cubesat development &nbsp;kit,<br>=
<br>Now suddenly stop working, no longer respond to:<br><br>uhd_find_devices=
<br>linux; GNU C++ version 5.3.1 20151219; Boost_105800;<br>UHD_003.009.002-=
=E2=81=A00-=E2=81=A0unknown<br>No UHD Devices Found<br><br>uhd_usrp_probe<br=
>linux; GNU C++ version 5.3.1 20151219; Boost_105800;<br>UHD_003.009.002-=E2=
=81=A00-=E2=81=A0unknown<br>Error: LookupError: KeyError: No devices found f=
or -=E2=81=A0-=E2=81=A0-=E2=81=A0-=E2=81=A0-=E2=81=A0&gt;<br>Empty Device Ad=
dress<br><br>I must to say that, until few minutes before, the device showed=
 no<br>problems, but after a switch OFF/ON the device, problems came up<br><=
br>And when I ask:<br><br>$lsusb<br>the device found is:<br>Bus 003 Device 0=
03: ID 04b4:8613 Cypress Semiconductor Corp. CY7C68013<br>EZ-=E2=81=A0USB FX=
2 USB 2.0 Development Kit<br><br>As you can see, the detected device is not l=
onger Ettus USRP as use to be. More over, in the front panel, new led is on,=
 there is a new led in ON status, the LED B: FPGA loaded<br>(in addition to:=
<br>LED A: transmitting, &nbsp; &nbsp;ON<br>LED C: receiving, &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;ON<br>LED D: FPGA loaded, &nbsp; OFF<br>LED E: reference l=
ock, ON<br>LED F: board power, &nbsp; &nbsp; ON )<br><br>I already re instal=
led the GNU RADIO 3.7.9 drivers for Ubuntu 16.04 and GNU RADIO 3.7.11 for Ub=
untu 18.04, all systems where it use to work, But the USRP is no longer dete=
cted.<br><br>drivers in Ubuntu 16.04:<br>/usr/share/uhd/images$ ls<br>usrp_b=
100_fw.ihx<br>usrp_b100_fpga.bin &nbsp; <br><br>What can be wrong ?, it's Fi=
rmware problem ?<br>How can I solve it?<br><br>I'll be very grateful with an=
y comments or suggestions<br><br>Best Regards,<br>Javier Nicolas<br></div></=
div>
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
ist</span><br><span><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"=
_blank">USRP-users@lists.ettus.com</a></span><br><span><a href=3D"http://lis=
ts.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank">=
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></span=
><br></div></blockquote></div></div></blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-B234CF51-D59E-4F24-AB4B-CBC5C06FF5F3--


--===============4960343615862626614==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4960343615862626614==--

