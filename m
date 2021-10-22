Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7740443801E
	for <lists+usrp-users@lfdr.de>; Sat, 23 Oct 2021 00:09:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D0BD38508B
	for <lists+usrp-users@lfdr.de>; Fri, 22 Oct 2021 18:09:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="maxWCbZE";
	dkim-atps=neutral
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 4FBA338461B
	for <USRP-users@lists.ettus.com>; Fri, 22 Oct 2021 18:08:45 -0400 (EDT)
Received: by mail-yb1-f175.google.com with SMTP id g6so10086422ybb.3
        for <USRP-users@lists.ettus.com>; Fri, 22 Oct 2021 15:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GEPbVrTSvM4wUQ4ljtIkmvqKoFsrsQ2dDijftR+MN78=;
        b=maxWCbZEFMEHru6/fzM08Dftu0uZbwmA68eYRZ0D/KM1gxtnYEdZE6qxvMiEsJLXAX
         oJCE0MpS6AWpfQNHS/AI+HQBPQeIOEyqOiWHTzpqyB1J1xEkZQWCygw6Vbo5rNzICjdl
         u5e++TYQpFqh3D2AFgEFipkkK2GpUVdA/v1eXXTJ776hvoKngzKhoUsEIGdkcraZldd0
         Hu5NiOTdY9J9rdg70Gkzqln1hhOeB2r/M2GJpGHzM0hSIEKGpwaXcsiVIbtuhlYNSdJS
         PJXAtb8ymufeypO0Xr/2hUHkFfeIyfUP74ZjNPqqEAXFdylr4BjfN4zExMuGtCHVpEDt
         fSfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GEPbVrTSvM4wUQ4ljtIkmvqKoFsrsQ2dDijftR+MN78=;
        b=aMEMuf8RkIDZi2N23Ur78EztJtrXg8oN7/637wpYHsQfxEZnbGKJMhGiiFFtDg0Jmg
         tvXeAIirp6NFbWLevRYyPDL12vWQozPUOj5GN2p27aaumJu99tIH/948pybUlmVBKo+8
         CQdqxi3gdHyE+MGP3XcX6TIEj4gV+Rw8xG7r+znBS5bnvlMODpkIzHPeFwbKYjr25IfF
         EV6CoimNxKzKZWFumwMk//vYeuaduoGgvmLMeUEmRciH1wWKCZkL7mQNnj9shL6HleEU
         T5EhZV9iahWPaYYTnTcrcZTpW02bx0BNDqeEkbqTyR5K1wTihiRnEjkq90dzJ+UwzHGF
         e7fQ==
X-Gm-Message-State: AOAM530f1AXOV272+a5DpFpEH1CBXRP9vlim6lPzTXOaKWxg8XbhdTuU
	wlhnSfg9jRA6T7DxrDr96DqEN4VTAi+f5QV5rdc=
X-Google-Smtp-Source: ABdhPJwqOIsus5/kxtSXb/YqbmyqeDulB+VXBDCt78ZSnvJadcczIJh2ZrrtJ0WvIM7WVnP2Sl2e700dw5/bmu/Quzw=
X-Received: by 2002:a25:1c02:: with SMTP id c2mr2845527ybc.218.1634940524694;
 Fri, 22 Oct 2021 15:08:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAN+Y6vALVOHVGX+bT6EGDH6erEeSbK3mYMTABCRpEPFnQXdDSw@mail.gmail.com>
 <32778a04-eddc-32d4-7c93-23b24baa8669@gmail.com> <CAN+Y6vBOBQ=_7_cXtpu7vfAJmuo65-8Wi0aCPjU0hgUiEB0iOA@mail.gmail.com>
 <75f3809f-3c44-2e46-bbaa-bdf23b77c567@gmail.com> <CAN+Y6vA6o+OX48SEJUCpCtKua-R8gceQXuJu7o71ziJAAoLNXA@mail.gmail.com>
 <b0b6c4c0-4d4e-08cc-c785-cb1682646da3@gmail.com> <CAN+Y6vBJONWL7Sc3Su+y0u2nM4E4X7pBL8n6w5wiTRq5SDyWNQ@mail.gmail.com>
 <71dd07eb-ac55-4c6a-0a14-e928654ad43c@gmail.com>
In-Reply-To: <71dd07eb-ac55-4c6a-0a14-e928654ad43c@gmail.com>
From: isaac mario tupac davila <isacctd92@gmail.com>
Date: Fri, 22 Oct 2021 17:08:33 -0500
Message-ID: <CAN+Y6vCe2NcKXdCxesMmKzq01B3GJLj1vnJ_oWzYCHnyTiLRqA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: NOIDK7KLDZI5YOB7F2GJLRA64PSUOMZ6
X-Message-ID-Hash: NOIDK7KLDZI5YOB7F2GJLRA64PSUOMZ6
X-MailFrom: isacctd92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: discuss-gnuradio@gnu.org, USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Installing Images and firmware USRPN200/N210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NOIDK7KLDZI5YOB7F2GJLRA64PSUOMZ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7581757036612811841=="

--===============7581757036612811841==
Content-Type: multipart/alternative; boundary="000000000000340f1405cef84190"

--000000000000340f1405cef84190
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Well, I was not me how played with the EEPROM. I found it like that

What I've just done is to set the hardware and subnet with the commands:

itupac@itupac:/usr/local/lib/uhd/utils$ ./usrp_burn_mb_eeprom --args
"addr=3D192.168.10.3" --values=3D"hardware=3D2576"
itupac@itupac:/usr/local/lib/uhd/utils$ ./usrp_burn_mb_eeprom --args
"addr=3D192.168.10.3" --values=3D"subnet=3D255.255.255.255"

Finally configuration:

|   |  Mboard: N200r4
|   |   hardware: 2576
|   |   mac-addr: 00:00:00:00:40:00
|   |   ip-addr: 192.168.10.3
|   |   subnet: 255.255.255.255
|   |   gateway: 255.255.255.255
|   |   gpsdo: none
|   |   serial: 0
|   |   FW Version: 12.4
|   |   FPGA Version: 11.1

Now It could recognize my external PPS. :)

Thank you!!!
Regards
Isaac T.



El vie, 22 oct 2021 a las 14:51, Marcus D. Leech (<patchvonbraun@gmail.com>=
)
escribi=C3=B3:

> On 2021-10-22 2:53 p.m., isaac mario tupac davila wrote:
> > Hi!
> >
> > This is what appears:
> >
> > itupac@itupac:/usr/local/lib/uhd/utils$ ./usrp_burn_mb_eeprom --args
> > "addr=3D192.168.10.3" --read-all
> > Creating USRP device from address: addr=3D192.168.10.3
> > [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> > UHD_3.14.0.HEAD-0-g6875d061
> > [INFO] [USRP2] Opening a USRP2/N-Series device...
> > [INFO] [USRP2] Current recv frame size: 1472 bytes
> > [INFO] [USRP2] Current send frame size: 1472 bytes
> > [WARNING] [USRP2] Unable to identify device - assuming USRP2/N-Series
> > device
> > [WARNING] [UHD] Unable to set the thread priority. Performance may be
> > negatively affected.
> > Please see the general application notes in the manual for instructions=
.
> > EnvironmentError: OSError: error in pthread_setschedparam
> >
> > Fetching current settings from EEPROM...
> >     EEPROM ["hardware"] is ""
> >     EEPROM ["revision"] is ""
> >     EEPROM ["product"] is ""
> >     EEPROM ["mac-addr"] is "00:00:00:00:40:00"
> >     EEPROM ["ip-addr"] is "192.168.10.3"
> >     EEPROM ["subnet"] is "0.0.0.104"
> >     EEPROM ["gateway"] is "255.255.255.255"
> >     EEPROM ["gpsdo"] is "none"
> >     EEPROM ["serial"] is "0"
> >     EEPROM ["name"] is ""
> >
> > Power-cycle the USRP device for the changes to take effect.
> >
> OK, so the EEPROM on your motherboard has been mostly erased.  This is
> either because it was replaced by someone (broken hardware), or someone
> (you??) had
>    previously used usrp_burn_mb_eeprom on it in a careless way.  The
> "MAC-ADDR" for example should NOT be what it is--that prefix is NOT
> assigned to
>    National Instruments.
>
>
>
>
>

--000000000000340f1405cef84190
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Well, I was not me how played with the EEPROM. I foun=
d it like that</div><div><br></div><div>What I&#39;ve just done is to set t=
he hardware and subnet with the commands:</div><div><br></div><div>itupac@i=
tupac:/usr/local/lib/uhd/utils$ ./usrp_burn_mb_eeprom --args &quot;addr=3D1=
92.168.10.3&quot; --values=3D&quot;hardware=3D2576&quot;</div><div>itupac@i=
tupac:/usr/local/lib/uhd/utils$ ./usrp_burn_mb_eeprom --args &quot;addr=3D1=
92.168.10.3&quot; --values=3D&quot;subnet=3D255.255.255.255&quot;</div><div=
><br></div><div>Finally configuration:</div><div><br></div><div>| =C2=A0 |=
=C2=A0 Mboard: N200r4<br>| =C2=A0 | =C2=A0 hardware: 2576<br>| =C2=A0 | =C2=
=A0 mac-addr: 00:00:00:00:40:00<br>| =C2=A0 | =C2=A0 ip-addr: 192.168.10.3<=
br>| =C2=A0 | =C2=A0 subnet: 255.255.255.255<br>| =C2=A0 | =C2=A0 gateway: =
255.255.255.255<br>| =C2=A0 | =C2=A0 gpsdo: none<br>| =C2=A0 | =C2=A0 seria=
l: 0<br>| =C2=A0 | =C2=A0 FW Version: 12.4<br>| =C2=A0 | =C2=A0 FPGA Versio=
n: 11.1</div><div><br></div><div>Now It could recognize my external PPS. :)=
</div><div><br></div><div>Thank you!!!</div><div>Regards</div><div>Isaac T.=
<br></div><div><br></div><div><br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">El vie, 22 oct 2021 a las 14:51, Ma=
rcus D. Leech (&lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun=
@gmail.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">On 2021-10-22 2:53 p.m., isaac mario tupac davila wrote:=
<br>
&gt; Hi!<br>
&gt;<br>
&gt; This is what appears:<br>
&gt;<br>
&gt; itupac@itupac:/usr/local/lib/uhd/utils$ ./usrp_burn_mb_eeprom --args <=
br>
&gt; &quot;addr=3D192.168.10.3&quot; --read-all<br>
&gt; Creating USRP device from address: addr=3D192.168.10.3<br>
&gt; [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; <br>
&gt; UHD_3.14.0.HEAD-0-g6875d061<br>
&gt; [INFO] [USRP2] Opening a USRP2/N-Series device...<br>
&gt; [INFO] [USRP2] Current recv frame size: 1472 bytes<br>
&gt; [INFO] [USRP2] Current send frame size: 1472 bytes<br>
&gt; [WARNING] [USRP2] Unable to identify device - assuming USRP2/N-Series =
<br>
&gt; device<br>
&gt; [WARNING] [UHD] Unable to set the thread priority. Performance may be =
<br>
&gt; negatively affected.<br>
&gt; Please see the general application notes in the manual for instruction=
s.<br>
&gt; EnvironmentError: OSError: error in pthread_setschedparam<br>
&gt;<br>
&gt; Fetching current settings from EEPROM...<br>
&gt; =C2=A0 =C2=A0 EEPROM [&quot;hardware&quot;] is &quot;&quot;<br>
&gt; =C2=A0 =C2=A0 EEPROM [&quot;revision&quot;] is &quot;&quot;<br>
&gt; =C2=A0 =C2=A0 EEPROM [&quot;product&quot;] is &quot;&quot;<br>
&gt; =C2=A0 =C2=A0 EEPROM [&quot;mac-addr&quot;] is &quot;00:00:00:00:40:00=
&quot;<br>
&gt; =C2=A0 =C2=A0 EEPROM [&quot;ip-addr&quot;] is &quot;192.168.10.3&quot;=
<br>
&gt; =C2=A0 =C2=A0 EEPROM [&quot;subnet&quot;] is &quot;0.0.0.104&quot;<br>
&gt; =C2=A0 =C2=A0 EEPROM [&quot;gateway&quot;] is &quot;255.255.255.255&qu=
ot;<br>
&gt; =C2=A0 =C2=A0 EEPROM [&quot;gpsdo&quot;] is &quot;none&quot;<br>
&gt; =C2=A0 =C2=A0 EEPROM [&quot;serial&quot;] is &quot;0&quot;<br>
&gt; =C2=A0 =C2=A0 EEPROM [&quot;name&quot;] is &quot;&quot;<br>
&gt;<br>
&gt; Power-cycle the USRP device for the changes to take effect.<br>
&gt;<br>
OK, so the EEPROM on your motherboard has been mostly erased.=C2=A0 This is=
 <br>
either because it was replaced by someone (broken hardware), or someone <br=
>
(you??) had<br>
=C2=A0=C2=A0 previously used usrp_burn_mb_eeprom on it in a careless way.=
=C2=A0 The <br>
&quot;MAC-ADDR&quot; for example should NOT be what it is--that prefix is N=
OT <br>
assigned to<br>
=C2=A0=C2=A0 National Instruments.<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000340f1405cef84190--

--===============7581757036612811841==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7581757036612811841==--
