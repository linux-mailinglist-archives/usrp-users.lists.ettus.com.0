Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF68B058A
	for <lists+usrp-users@lfdr.de>; Thu, 12 Sep 2019 00:28:42 +0200 (CEST)
Received: from [::1] (port=52090 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i8B6M-0007oR-OH; Wed, 11 Sep 2019 18:28:38 -0400
Received: from mail-io1-f53.google.com ([209.85.166.53]:34921)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1i8B6I-0007fI-LO
 for usrp-users@lists.ettus.com; Wed, 11 Sep 2019 18:28:34 -0400
Received: by mail-io1-f53.google.com with SMTP id f4so49040742ion.2
 for <usrp-users@lists.ettus.com>; Wed, 11 Sep 2019 15:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q2G4yLuQOYqLxWCp2bLm+SM1y3Ozb8c9K2Gsit2U8qk=;
 b=Sm1TBvCuQk7RQq9r5uT0dIg07XQlfX4DZBP+X9MQAhbIT/8+JPvjoMV4YNkUpOmROd
 pPmz7GlEmD89CvZXq8F30Az49Eh8pCMXMAd0LPQfSKSBus8kERsyOckDWg59qF6PucXL
 EB0XVRRyZzT5+I0vdOKE0FkpZk5sK2/uS09jIzsRy4N6lKOpGDkdF2lBDTDHCT92isK/
 yEpKwyklHGoYzcwPvOChV+2HgAf9Us1nnt/vDvpW/V846e56J9drSGgEiTDdUEWpGmw/
 5XbxTh4kO2evjQ7ez/WiCc7xGzCYbV09WJkepwNmCJ/5Ll+RPZmy1ZVJRHRQVXFe4cX2
 etRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q2G4yLuQOYqLxWCp2bLm+SM1y3Ozb8c9K2Gsit2U8qk=;
 b=kKJucIfKmelaCpyfWJ20MgXjMX4qUdsNiltqpQ5582O8iU6ypz0/WCTjX2e5RPXt+o
 JFdiX6DQZ0UF1TfFhskk8+7V7CpZ5tLn1NqnWVct1LgFLk5wKJ+jtkUet/67FsBx4OZy
 ed+c5YTFH85n1AHd4PgIXg4K1lgC2W8jJecsqX9l06NxWyCjAdgx1ITrlMs1lyhXvPvY
 X9pU2npFWtWoDZCgA9WH+82SD7DjwGQ4QTs3i5EfLQXU69gpfcwSe3R7CRoTCEdWYB2y
 lOUY8apvPjWirkEqHJtsV7o/+Y1saltbKNgNT0aGolX4j2WaLB568BNBn28YG3/hWf6d
 7oXg==
X-Gm-Message-State: APjAAAUKjcG1ziB0N/CRDDrKbXrQRsNLBca9FPvPmgVFQuN3V9v38xuH
 IHNTtPuBlZQy8fpdHs1NugUmQUEpnpfAVsUWzTeuEg==
X-Google-Smtp-Source: APXvYqzpozlfmR+eD86bejG/V3mEN6V4KMVcUGwrRVtYjoadfpJRTWHqnHqBg04WHwynazgUlSBK4cXxa6xmnax1WWM=
X-Received: by 2002:a5e:8402:: with SMTP id h2mr292593ioj.38.1568240873774;
 Wed, 11 Sep 2019 15:27:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAMGw0PawXrX2hyLvDSPVqxhpccCh+L6HP64OmbOTqA21C6i6gA@mail.gmail.com>
In-Reply-To: <CAMGw0PawXrX2hyLvDSPVqxhpccCh+L6HP64OmbOTqA21C6i6gA@mail.gmail.com>
Date: Wed, 11 Sep 2019 15:27:42 -0700
Message-ID: <CAKJyDk+38rceb_8WrDNiy1-VJ4QgSxhNQf7hFFn-aF-LfHfoOQ@mail.gmail.com>
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8065397277463638132=="
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

--===============8065397277463638132==
Content-Type: multipart/alternative; boundary="00000000000034320405924e88bb"

--00000000000034320405924e88bb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Does this help?
https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain=
_(UHD_and_GNU_Radio)_on_Linux#Configuring_USB

On Wed, Sep 11, 2019 at 1:08 PM Javier Uranga via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear Members in the List,
>
> I'm working with an old USRP B100 that came with a cubesat development
>  kit,
>
> Now suddenly stop working, no longer respond to:
>
> uhd_find_devices
> linux; GNU C++ version 5.3.1 20151219; Boost_105800;
> UHD_003.009.002-=E2=81=A00-=E2=81=A0unknown
> No UHD Devices Found
>
> uhd_usrp_probe
> linux; GNU C++ version 5.3.1 20151219; Boost_105800;
> UHD_003.009.002-=E2=81=A00-=E2=81=A0unknown
> Error: LookupError: KeyError: No devices found for -=E2=81=A0-=E2=81=A0-=
=E2=81=A0-=E2=81=A0-=E2=81=A0>
> Empty Device Address
>
> I must to say that, until few minutes before, the device showed no
> problems, but after a switch OFF/ON the device, problems came up
>
> And when I ask:
>
> $lsusb
> the device found is:
> Bus 003 Device 003: ID 04b4:8613 Cypress Semiconductor Corp. CY7C68013
> EZ-=E2=81=A0USB FX2 USB 2.0 Development Kit
>
> As you can see, the detected device is not longer Ettus USRP as use to be=
.
> More over, in the front panel, new led is on, there is a new led in ON
> status, the LED B: FPGA loaded
> (in addition to:
> LED A: transmitting,    ON
> LED C: receiving,          ON
> LED D: FPGA loaded,   OFF
> LED E: reference lock, ON
> LED F: board power,     ON )
>
> I already re installed the GNU RADIO 3.7.9 drivers for Ubuntu 16.04 and
> GNU RADIO 3.7.11 for Ubuntu 18.04, all systems where it use to work, But
> the USRP is no longer detected.
>
> drivers in Ubuntu 16.04:
> /usr/share/uhd/images$ ls
> usrp_b100_fw.ihx
> usrp_b100_fpga.bin
>
> What can be wrong ?, it's Firmware problem ?
> How can I solve it?
>
> I'll be very grateful with any comments or suggestions
>
> Best Regards,
> Javier Nicolas
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000034320405924e88bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Does this help?<div><a href=3D"https://kb.ettus.com/Buildi=
ng_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Lin=
ux#Configuring_USB">https://kb.ettus.com/Building_and_Installing_the_USRP_O=
pen-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux#Configuring_USB</a><br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Wed, Sep 11, 2019 at 1:08 PM Javier Uranga via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,=
sans-serif;font-size:small">Dear Members in the List,<br><br>I&#39;m workin=
g with an old USRP B100 that came with a cubesat development =C2=A0kit,<br>=
<br>Now suddenly stop working, no longer respond to:<br><br>uhd_find_device=
s<br>linux; GNU C++ version 5.3.1 20151219; Boost_105800;<br>UHD_003.009.00=
2-=E2=81=A00-=E2=81=A0unknown<br>No UHD Devices Found<br><br>uhd_usrp_probe=
<br>linux; GNU C++ version 5.3.1 20151219; Boost_105800;<br>UHD_003.009.002=
-=E2=81=A00-=E2=81=A0unknown<br>Error: LookupError: KeyError: No devices fo=
und for -=E2=81=A0-=E2=81=A0-=E2=81=A0-=E2=81=A0-=E2=81=A0&gt;<br>Empty Dev=
ice Address<br><br>I must to say that, until few minutes before, the device=
 showed no<br>problems, but after a switch OFF/ON the device, problems came=
 up<br><br>And when I ask:<br><br>$lsusb<br>the device found is:<br>Bus 003=
 Device 003: ID 04b4:8613 Cypress Semiconductor Corp. CY7C68013<br>EZ-=E2=
=81=A0USB FX2 USB 2.0 Development Kit<br><br>As you can see, the detected d=
evice is not longer Ettus USRP as use to be. More over, in the front panel,=
 new led is on, there is a new led in ON status, the LED B: FPGA loaded<br>=
(in addition to:<br>LED A: transmitting, =C2=A0 =C2=A0ON<br>LED C: receivin=
g, =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ON<br>LED D: FPGA loaded, =C2=A0 OFF<b=
r>LED E: reference lock, ON<br>LED F: board power, =C2=A0 =C2=A0 ON )<br><b=
r>I already re installed the GNU RADIO 3.7.9 drivers for Ubuntu 16.04 and G=
NU RADIO 3.7.11 for Ubuntu 18.04, all systems where it use to work, But the=
 USRP is no longer detected.<br><br>drivers in Ubuntu 16.04:<br>/usr/share/=
uhd/images$ ls<br>usrp_b100_fw.ihx<br>usrp_b100_fpga.bin =C2=A0 <br><br>Wha=
t can be wrong ?, it&#39;s Firmware problem ?<br>How can I solve it?<br><br=
>I&#39;ll be very grateful with any comments or suggestions<br><br>Best Reg=
ards,<br>Javier Nicolas<br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000034320405924e88bb--


--===============8065397277463638132==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8065397277463638132==--

