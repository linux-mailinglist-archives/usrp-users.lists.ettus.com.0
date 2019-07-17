Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE046BDD2
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2019 16:06:05 +0200 (CEST)
Received: from [::1] (port=52236 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnkZH-0001r5-TS; Wed, 17 Jul 2019 10:06:03 -0400
Received: from mail-ot1-f53.google.com ([209.85.210.53]:43947)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <cogwsn@gmail.com>) id 1hnkZD-0001hM-NB
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 10:05:59 -0400
Received: by mail-ot1-f53.google.com with SMTP id j11so898061otp.10
 for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2019 07:05:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VQcewMGWP3CaIXQVuVptGEA64f0aXuWenRmJldoQdyc=;
 b=INWepGMuBI2nLi4T7g+1+j28+lmWzEDDAMa+zeEYAoO/VdmewHWlBQMEY7dvtnjlOg
 kRwUK5zqPffJFEC4aYX6e1B+iPlFX66GKJ4DtqZvHvjLSITMAEVlpPcYmUdqH1day6Vi
 F4uUYJ4+MSGQnJ4+h6s/LUSKYHr3ZLSdulHIfGB3GNlKEdW5M3fbyskmvSNg9MYkTjlp
 QFKfti/YpIS9CW4nS0WX1k3YeoLrH8z2LcNMslHGfGXxMqaPCVh9BvWZuT8vUJ2aS6KF
 /rU+csP0XcqD6Dp+6qVlGcuhPv0F1q4X0tO5sf2otlrQcf0S2XhWUroQ8BEG77hHAA7M
 7vxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VQcewMGWP3CaIXQVuVptGEA64f0aXuWenRmJldoQdyc=;
 b=PizitAidlY0X//qh2p60WDYMldY77wmX985ouRhUTNo75j1BmcasOdfTBEzROsiOgY
 aoy0WNuCPtKiVCA17k88T1ub+H69D9oqSWle2pRP0j0qdJ19IPg/T7ppOpYUEARuH6kC
 pQBmEp4Kyi8Fz0N+DU7X8vcEGQXY5aCy7sGhnF/Ry+k8RPcvvKRKXjUsqFJHw+bf0nc7
 l0CbD1XL3A+EO2bbG5lKaaQ2KLF9yRWcpzacZRyIzQCR8gnUI5kPjo6Fk+zdBuRu5Biq
 e2LdngCsMxwzvu5+DpGlapr0Dc7u9Axe6C3cuWB5C7awZ+Qfd1i4kNBQCjmC5a7WQbdB
 +NWQ==
X-Gm-Message-State: APjAAAV5OPEP7Xa4K0t9zZun1uTLb4EP2BtrjsBrQgrcMnq5ozNg3Z//
 t0SGd2gEvkgdrqz44dXBp7gfjERPh1XbXHz+bnoVrnUn
X-Google-Smtp-Source: APXvYqzTkQ3UCu1xEWUxiaZCxECkBYDsIFozTzbO1pWIDQHUFglOW/Dm62ZdDfTiJYwgmUJld5U3JZp4EuDNMp3AlVc=
X-Received: by 2002:a9d:65ca:: with SMTP id z10mr30225182oth.334.1563372318979; 
 Wed, 17 Jul 2019 07:05:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAOExtcQtL_gri3uWw9_NyXPEOwS6Gpc+NqSs07Vwmdc4gbHQTg@mail.gmail.com>
 <BL0PR12MB2340A337C6CBB311E990C16CAFC90@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAOExtcRbYo-15C2eVcmJNz98=0vK5nJEJsdZt6MUd0ViUhcQZQ@mail.gmail.com>
 <BL0PR12MB2340682EFC45C0AA255B6AA2AFC90@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAOExtcSLfxOUFfqoH0EVfJCWxRsrayZV9WnDLSk=Rf-7=pnCYA@mail.gmail.com>
 <BL0PR12MB234037B01F84C36682568490AFC90@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB234037B01F84C36682568490AFC90@BL0PR12MB2340.namprd12.prod.outlook.com>
Date: Wed, 17 Jul 2019 16:05:07 +0200
Message-ID: <CAOExtcTPgp-yE_DBzDY--wZWdTEw_=NtoGQtVdGbYDoiAmxTtg@mail.gmail.com>
To: Jason Matusiak <jason@gardettoengineering.com>
Subject: Re: [USRP-users] Sequence Errors N200
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
From: Sumit Kumar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sumit Kumar <cogwsn@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8067938837034465172=="
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

--===============8067938837034465172==
Content-Type: multipart/alternative; boundary="000000000000b97c86058de0fbe5"

--000000000000b97c86058de0fbe5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Following is what I am getting after the command you asked to run. The
192.168.10.5 gives SSSSSSS.

john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$
./usrp_burn_mb_eeprom --read-all --args "addr=3D192.168.10.5"
Creating USRP device from address: addr=3D192.168.10.5
[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
UHD_3.15.0.git-1-gf83faf28
[INFO] [USRP2] Opening a USRP2/N-Series device...
[INFO] [USRP2] Current recv frame size: 1472 bytes
[INFO] [USRP2] Current send frame size: 1472 bytes
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2500000 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2500000
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2500000 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2500000
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2500000 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2500000
[WARNING] [UHD] Unable to set the thread priority. Performance may be
negatively affected.
Please see the general application notes in the manual for instructions.
EnvironmentError: OSError: error in pthread_setschedparam

Fetching current settings from EEPROM...
    EEPROM ["hardware"] is "2576"
    EEPROM ["revision"] is ""
    EEPROM ["product"] is ""
    EEPROM ["mac-addr"] is "a0:36:fa:26:34:44"
    EEPROM ["ip-addr"] is "192.168.10.5"
    EEPROM ["subnet"] is "255.255.255.255"
    EEPROM ["gateway"] is "255.255.255.255"
    EEPROM ["gpsdo"] is "none"
    EEPROM ["serial"] is "E4R14V4UN"
    EEPROM ["name"] is ""

Power-cycle the USRP device for the changes to take effect.

Done


john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$
./usrp_burn_mb_eeprom --read-all --args "addr=3D192.168.10.3"
Creating USRP device from address: addr=3D192.168.10.3
[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
UHD_3.15.0.git-1-gf83faf28
[INFO] [USRP2] Opening a USRP2/N-Series device...
[INFO] [USRP2] Current recv frame size: 1472 bytes
[INFO] [USRP2] Current send frame size: 1472 bytes
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2500000 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2500000
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2500000 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2500000
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2500000 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2500000
[WARNING] [UHD] Unable to set the thread priority. Performance may be
negatively affected.
Please see the general application notes in the manual for instructions.
EnvironmentError: OSError: error in pthread_setschedparam

Fetching current settings from EEPROM...
    EEPROM ["hardware"] is "2576"
    EEPROM ["revision"] is ""
    EEPROM ["product"] is ""
    EEPROM ["mac-addr"] is "a0:36:fa:26:34:42"
    EEPROM ["ip-addr"] is "192.168.10.3"
    EEPROM ["subnet"] is "255.255.255.255"
    EEPROM ["gateway"] is "255.255.255.255"
    EEPROM ["gpsdo"] is "none"
    EEPROM ["serial"] is "E4R14V2UN"
    EEPROM ["name"] is ""

Power-cycle the USRP device for the changes to take effect.

Done


On Wed, Jul 17, 2019 at 3:19 PM Jason Matusiak <
jason@gardettoengineering.com> wrote:

> You are right, the table of revisions was for the X-series
>
> try running the command from your prefix:
> src/uhd/host/build/utils/usrp_burn_mb_eeprom --args=3D"type=3Dn200" --rea=
d-all
>
> don't quote me on the type portion, I don't have a board in front of me t=
o
> see if it is n200 or something else.  I //think// that will report the
> major and minor revision values (I am grasping at straws here, just tryin=
g
> to figure out what the differences might be).
>
> You are connecting the ethernet connections to the two devices through th=
e
> exact same port on your PC?
>
> ------------------------------
> *From:* Sumit Kumar <cogwsn@gmail.com>
> *Sent:* Wednesday, July 17, 2019 8:24 AM
> *To:* Jason Matusiak <jason@gardettoengineering.com>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Sequence Errors N200
>
> The sticker  for sbx shows F33612 and F33814.
> How will this help ?
>
>
> On Wed, Jul 17, 2019 at 1:50 PM Jason Matusiak <
> jason@gardettoengineering.com> wrote:
>
> Sumit,
>
> OK, the last idea I have:
>
> There is a sticker on the back of the N-series devices it *usually* says
> the version there, but not always.  This has a little info:
> https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_on_USR=
P_Devices#N200.2F210_EEPROM
>
> Do they match?
>
> ------------------------------
> *From:* Sumit Kumar <cogwsn@gmail.com>
> *Sent:* Wednesday, July 17, 2019 7:45 AM
> *To:* Jason Matusiak <jason@gardettoengineering.com>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Sequence Errors N200
>
> Hi Jason,
>
> Yes they are consistent, I mean the output of uhd_usrp_probe for both N20=
0
> is exactly the same (except the ip, serial and mac addr).
> I do not know where the problem is! Hardware or software
>
> Regards
> Sumit
>
> On Wed, Jul 17, 2019 at 1:19 PM Jason Matusiak <
> jason@gardettoengineering.com> wrote:
>
> I am not really an N-series guy, so this probably won't be helpful.  Have
> you tried doing a uhd_usrp_probe on both devices and seen that the
> responses are consistent?
>
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
> Sumit Kumar via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Wednesday, July 17, 2019 7:15 AM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Sequence Errors N200
>
> Hi,
> I am trying transmit using Ettus N200 (call it A) but getting this error
> message on the console
>
>
> SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
..................................
>
> I looked for it on google and found these links
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-May/0374=
95.html
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2012-July/032=
838.html
>
> Both the links  suggested problem related to the gigabit port. Then I
> connected another USRP N200 (call it B) to the same laptop and tried
> transmitting using that as there were no such sequence error messages.
>
> This makes me believe there is some problem with the first USRP, i.e., A.
>
> Further I tried with different versions of UHD 3.11, UHD 3.15.. but its
> the same.
>
> Receive is good only transmit is throwing error.
>
> Not only with UHD, even in labview, when I transmit, I see nothing coming
> out from the N200 (A).
>
> I am using SBXv2 daughter board.
>
> Any clue!
>
> Regards
> --
> --
> Sumit kumar
> Postdoc
> SnT, Luxembourg
>
>
>
>
> --
> --
> Sumit kumar
> Postdoc
> SnT, Luxembourg
>
>
>
>
> --
> --
> Sumit kumar
> Postdoc
> SnT, Luxembourg
>
>
>

--=20
--=20
Sumit kumar
Postdoc
SnT, Luxembourg

--000000000000b97c86058de0fbe5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Following is what I am getting after the command you asked=
 to run. The 192.168.10.5 gives SSSSSSS.=C2=A0<div><br></div><div>john@john=
-Precision-M4600:~/pybombs/src/uhd/host/build/utils$ ./usrp_burn_mb_eeprom =
--read-all --args &quot;addr=3D192.168.10.5&quot;<br>Creating USRP device f=
rom address: addr=3D192.168.10.5<br>[INFO] [UHD] linux; GNU C++ version 5.4=
.0 20160609; Boost_105800; UHD_3.15.0.git-1-gf83faf28<br>[INFO] [USRP2] Ope=
ning a USRP2/N-Series device...<br>[INFO] [USRP2] Current recv frame size: =
1472 bytes<br>[INFO] [USRP2] Current send frame size: 1472 bytes<br>[WARNIN=
G] [UDP] The send buffer could not be resized sufficiently.<br>Target sock =
buff size: 2500000 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See t=
he transport application notes on buffer resizing.<br>Please run: sudo sysc=
tl -w net.core.wmem_max=3D2500000<br>[WARNING] [UDP] The send buffer could =
not be resized sufficiently.<br>Target sock buff size: 2500000 bytes.<br>Ac=
tual sock buff size: 1048576 bytes.<br>See the transport application notes =
on buffer resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D25000=
00<br>[WARNING] [UDP] The send buffer could not be resized sufficiently.<br=
>Target sock buff size: 2500000 bytes.<br>Actual sock buff size: 1048576 by=
tes.<br>See the transport application notes on buffer resizing.<br>Please r=
un: sudo sysctl -w net.core.wmem_max=3D2500000<br>[WARNING] [UHD] Unable to=
 set the thread priority. Performance may be negatively affected.<br>Please=
 see the general application notes in the manual for instructions.<br>Envir=
onmentError: OSError: error in pthread_setschedparam<br><br>Fetching curren=
t settings from EEPROM...<br>=C2=A0 =C2=A0 EEPROM [&quot;hardware&quot;] is=
 &quot;2576&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;revision&quot;] is &quot;&=
quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;product&quot;] is &quot;&quot;<br>=C2=
=A0 =C2=A0 EEPROM [&quot;mac-addr&quot;] is &quot;a0:36:fa:26:34:44&quot;<b=
r>=C2=A0 =C2=A0 EEPROM [&quot;ip-addr&quot;] is &quot;192.168.10.5&quot;<br=
>=C2=A0 =C2=A0 EEPROM [&quot;subnet&quot;] is &quot;255.255.255.255&quot;<b=
r>=C2=A0 =C2=A0 EEPROM [&quot;gateway&quot;] is &quot;255.255.255.255&quot;=
<br>=C2=A0 =C2=A0 EEPROM [&quot;gpsdo&quot;] is &quot;none&quot;<br>=C2=A0 =
=C2=A0 EEPROM [&quot;serial&quot;] is &quot;E4R14V4UN&quot;<br>=C2=A0 =C2=
=A0 EEPROM [&quot;name&quot;] is &quot;&quot;<br><br>Power-cycle the USRP d=
evice for the changes to take effect.<br><br><div>Done</div><div><br></div>=
<div><br></div><div>john@john-Precision-M4600:~/pybombs/src/uhd/host/build/=
utils$ ./usrp_burn_mb_eeprom --read-all --args &quot;addr=3D192.168.10.3&qu=
ot;<br>Creating USRP device from address: addr=3D192.168.10.3<br>[INFO] [UH=
D] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.15.0.git-1-gf=
83faf28<br>[INFO] [USRP2] Opening a USRP2/N-Series device...<br>[INFO] [USR=
P2] Current recv frame size: 1472 bytes<br>[INFO] [USRP2] Current send fram=
e size: 1472 bytes<br>[WARNING] [UDP] The send buffer could not be resized =
sufficiently.<br>Target sock buff size: 2500000 bytes.<br>Actual sock buff =
size: 1048576 bytes.<br>See the transport application notes on buffer resiz=
ing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2500000<br>[WARNING]=
 [UDP] The send buffer could not be resized sufficiently.<br>Target sock bu=
ff size: 2500000 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See the=
 transport application notes on buffer resizing.<br>Please run: sudo sysctl=
 -w net.core.wmem_max=3D2500000<br>[WARNING] [UDP] The send buffer could no=
t be resized sufficiently.<br>Target sock buff size: 2500000 bytes.<br>Actu=
al sock buff size: 1048576 bytes.<br>See the transport application notes on=
 buffer resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2500000=
<br>[WARNING] [UHD] Unable to set the thread priority. Performance may be n=
egatively affected.<br>Please see the general application notes in the manu=
al for instructions.<br>EnvironmentError: OSError: error in pthread_setsche=
dparam<br><br>Fetching current settings from EEPROM...<br>=C2=A0 =C2=A0 EEP=
ROM [&quot;hardware&quot;] is &quot;2576&quot;<br>=C2=A0 =C2=A0 EEPROM [&qu=
ot;revision&quot;] is &quot;&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;product&q=
uot;] is &quot;&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;mac-addr&quot;] is &qu=
ot;a0:36:fa:26:34:42&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;ip-addr&quot;] is=
 &quot;192.168.10.3&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;subnet&quot;] is &=
quot;255.255.255.255&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;gateway&quot;] is=
 &quot;255.255.255.255&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;gpsdo&quot;] is=
 &quot;none&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;serial&quot;] is &quot;E4R=
14V2UN&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;name&quot;] is &quot;&quot;<br>=
<br>Power-cycle the USRP device for the changes to take effect.<br><br>Done=
<div class=3D"gmail-yj6qo"></div><div class=3D"gmail-adL"><br></div></div><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Wed, Jul 17, 2019 at 3:19 PM Jason Matusiak &lt;<a href=3D"mailto:j=
ason@gardettoengineering.com">jason@gardettoengineering.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
You are right, the table of revisions was for the X-series</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
try running the command from your prefix: src/uhd/host/build/utils/usrp_bur=
n_mb_eeprom=C2=A0--args=3D&quot;type=3Dn200&quot; --read-all</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
don&#39;t quote me on the type portion, I don&#39;t have a board in front o=
f me to see if it is n200 or something else.=C2=A0 I //think// that will re=
port the major and minor revision values (I am grasping at straws here, jus=
t trying to figure out what the differences might
 be).</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
You are connecting the ethernet connections to the two devices through the =
exact same port on your PC?</div>
<div id=3D"gmail-m_3403553355508831478Signature">
<div>
<div id=3D"gmail-m_3403553355508831478appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_3403553355508831478divRplyFwdMsg" dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From=
:</b> Sumit Kumar &lt;<a href=3D"mailto:cogwsn@gmail.com" target=3D"_blank"=
>cogwsn@gmail.com</a>&gt;<br>
<b>Sent:</b> Wednesday, July 17, 2019 8:24 AM<br>
<b>To:</b> Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.c=
om" target=3D"_blank">jason@gardettoengineering.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Sequence Errors N200</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">The sticker=C2=A0 for sbx shows F33612 and F33814.=C2=A0
<div>How will this help ?=C2=A0</div>
<div><br>
</div>
</div>
<br>
<div class=3D"gmail-m_3403553355508831478x_gmail_quote">
<div dir=3D"ltr" class=3D"gmail-m_3403553355508831478x_gmail_attr">On Wed, =
Jul 17, 2019 at 1:50 PM Jason Matusiak &lt;<a href=3D"mailto:jason@gardetto=
engineering.com" target=3D"_blank">jason@gardettoengineering.com</a>&gt; wr=
ote:<br>
</div>
<blockquote class=3D"gmail-m_3403553355508831478x_gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Sumit,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
OK, the last idea I have:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
There is a sticker on the back of the N-series devices it=C2=A0<em>usually<=
/em>=C2=A0says the version there, but not always.=C2=A0 This has a little i=
nfo:=C2=A0<a href=3D"https://kb.ettus.com/About_the_Motherboard_and_Daughte=
rcard_EEPROM_on_USRP_Devices#N200.2F210_EEPROM" rel=3D"nofollow" style=3D"c=
olor:rgb(59,115,175)" target=3D"_blank">https://kb.ettus.com/About_the_Moth=
erboard_and_Daughtercard_EEPROM_on_USRP_Devices#N200.2F210_EEPROM</a><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Do they match?</div>
<div id=3D"gmail-m_3403553355508831478x_gmail-m_6506407344245079092Signatur=
e">
<div>
<div id=3D"gmail-m_3403553355508831478x_gmail-m_6506407344245079092appendon=
send"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_3403553355508831478x_gmail-m_6506407344245079092divRplyF=
wdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000" sty=
le=3D"font-size:11pt"><b>From:</b> Sumit Kumar &lt;<a href=3D"mailto:cogwsn=
@gmail.com" target=3D"_blank">cogwsn@gmail.com</a>&gt;<br>
<b>Sent:</b> Wednesday, July 17, 2019 7:45 AM<br>
<b>To:</b> Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.c=
om" target=3D"_blank">jason@gardettoengineering.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Sequence Errors N200</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Hi Jason,
<div><br>
<div>Yes they are consistent, I mean the output of uhd_usrp_probe for both =
N200 is exactly=C2=A0the same (except the ip, serial and mac addr).</div>
<div>I do not know where the problem is! Hardware or software=C2=A0</div>
<div><br>
</div>
<div>Regards</div>
<div>Sumit=C2=A0=C2=A0</div>
</div>
</div>
<br>
<div class=3D"gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gma=
il_quote">
<div dir=3D"ltr" class=3D"gmail-m_3403553355508831478x_gmail-m_650640734424=
5079092x_gmail_attr">On Wed, Jul 17, 2019 at 1:19 PM Jason Matusiak &lt;<a =
href=3D"mailto:jason@gardettoengineering.com" target=3D"_blank">jason@garde=
ttoengineering.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail-m_3403553355508831478x_gmail-m_65064073442450790=
92x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I am not really an N-series guy, so this probably won&#39;t be helpful.=C2=
=A0 Have you tried doing a uhd_usrp_probe on both devices and seen that the=
 responses are consistent?</div>
<div id=3D"gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail-=
m_9014729813065413461Signature">
<div>
<div id=3D"gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail-=
m_9014729813065413461appendonsend">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail-=
m_9014729813065413461divRplyFwdMsg" dir=3D"ltr">
<font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11p=
t"><b>From:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.e=
ttus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on b=
ehalf of Sumit Kumar via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, July 17, 2019 7:15 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Sequence Errors N200</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Hi,=C2=A0
<div>I am trying transmit using Ettus N200 (call it A) but getting this err=
or message on the console=C2=A0</div>
<div><br>
</div>
<div>SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.............................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
.....................................<br>
</div>
<div><br>
</div>
<div>I looked for it on google and found these links=C2=A0</div>
<div><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2014-May/037495.html" target=3D"_blank">http://lists.ettus.com/pipermail/u=
srp-users_lists.ettus.com/2014-May/037495.html</a><br>
</div>
<div><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2012-July/032838.html" target=3D"_blank">http://lists.ettus.com/pipermail/=
usrp-users_lists.ettus.com/2012-July/032838.html</a><br>
</div>
<div><br>
</div>
<div>Both the links=C2=A0 suggested problem related to the gigabit port. Th=
en I connected another USRP N200 (call it B) to the same laptop and tried t=
ransmitting using that as there were no such sequence error messages.</div>
<div><br>
</div>
<div>This makes me believe there is some problem with the first USRP, i.e.,=
 A.=C2=A0<br>
</div>
<div><br>
</div>
<div>Further I tried with different versions of UHD 3.11, UHD 3.15.. but it=
s the same.=C2=A0</div>
<div><br>
</div>
<div>Receive is good only transmit is throwing error.=C2=A0</div>
<div><br>
</div>
<div>Not only with UHD, even in labview, when I transmit, I see nothing com=
ing out from the N200 (A).=C2=A0</div>
<div><br>
</div>
<div>I am using SBXv2 daughter board.=C2=A0</div>
<div><br>
</div>
<div>Any clue!</div>
<div><br>
</div>
<div>Regards</div>
<div>-- <br>
<div dir=3D"ltr" class=3D"gmail-m_3403553355508831478x_gmail-m_650640734424=
5079092x_gmail-m_9014729813065413461x_gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font-size:12.8px">--=
=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:12.8px">
<div style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit kumar<br>
Postdoc</div>
<div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT, Luxembourg</div=
>
<div style=3D"color:rgb(136,136,136);font-size:12.8px"><br>
</div>
<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div dir=3D"ltr" class=3D"gmail-m_3403553355508831478x_gmail-m_650640734424=
5079092x_gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font-size:12.8px">--=
=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:12.8px">
<div style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit kumar<br>
Postdoc</div>
<div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT, Luxembourg</div=
>
<div style=3D"color:rgb(136,136,136);font-size:12.8px"><br>
</div>
<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div dir=3D"ltr" class=3D"gmail-m_3403553355508831478x_gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font-size:12.8px">--=
=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:12.8px">
<div style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit kumar<br>
Postdoc</div>
<div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT, Luxembourg</div=
>
<div style=3D"color:rgb(136,136,136);font-size:12.8px"><br>
</div>
<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span sty=
le=3D"color:rgb(136,136,136);font-size:12.8px">--=C2=A0</span><br style=3D"=
color:rgb(136,136,136);font-size:12.8px"><div style=3D"color:rgb(136,136,13=
6);font-size:12.8px">Sumit kumar<br>Postdoc</div><div style=3D"color:rgb(13=
6,136,136);font-size:12.8px">SnT, Luxembourg</div><div style=3D"color:rgb(1=
36,136,136);font-size:12.8px"><br></div><br></div></div></div></div>

--000000000000b97c86058de0fbe5--


--===============8067938837034465172==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8067938837034465172==--

