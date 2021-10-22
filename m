Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A5E437CCA
	for <lists+usrp-users@lfdr.de>; Fri, 22 Oct 2021 20:54:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CF742384954
	for <lists+usrp-users@lfdr.de>; Fri, 22 Oct 2021 14:54:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aftP4+pb";
	dkim-atps=neutral
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 0E55C38449D
	for <USRP-users@lists.ettus.com>; Fri, 22 Oct 2021 14:53:37 -0400 (EDT)
Received: by mail-yb1-f177.google.com with SMTP id o17so9103165ybq.4
        for <USRP-users@lists.ettus.com>; Fri, 22 Oct 2021 11:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0uLofkyIIYheb1+PtOqM+3ZWrrdyK6CsBwdyE7AvWyU=;
        b=aftP4+pbGyQM9FBHJNZYCUnFZt/vGJrHF37VKxgJVt7Si8g0HvNRLmZiJb9YUZMV6B
         DNmMyzoKczQSq3AxKWNAzgpq+CPgZLvZasj677CI/QGfpT00eTqT9Z6LxmqmsDkuhbXR
         PyUsF9APbgN4f8PwpH5fir50sVbe2S4/SanbbobzYoRZ0hulseTg264hmANvIIUtcvI1
         41Xj63pt5UooTBGvrp2XGLD/8/mc3BphP8XBUwkv8CNLQPE+BnKbFd80K5ZOcyZUOeo4
         LMbzfxcUDk05RwrQvKUrGBUMUh+p79StFKgwpbn0Qlxh5IrUjxHggGL78oOxoI5iv8RA
         VYXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0uLofkyIIYheb1+PtOqM+3ZWrrdyK6CsBwdyE7AvWyU=;
        b=YC269flMqt4SMuxE96WkDUj0W+hW/ze5Uly0L4SwXlWmiuWhnbJ0TDWmi4ZZDBkerk
         Sefn6ztl7ljgPOd+eOVpGlmGcEQQJuFuDsl5nxXFufpF2oqBdH996v93trLtUqlYuJke
         geC66kNDJ5EscPhjCnOVRj5VPxfwyIPlMhsBzuTYPuwpWafmhUVkOXjg8WpQhKFeM4py
         aBwz2GxAfnxZV4dhnZquOeEA0OjFygfFauCaCjpqV7C4k2rK7cOaUIkyJvSOtEmiltmE
         RU+G5kY7gKq8xGpv87w1aIaIDq+38RZsfA+h/YLkrIAj1dMGWWKr1LvgaMvAaYQKIwXA
         gbNw==
X-Gm-Message-State: AOAM530myf3rPRvsrmsIDBls6/owW4cWWT7QgRwwVQIDDWlhHD7c5z0Z
	yEVux4+OkbWrrfeQMV0Cz6vHMLF9opxfeF6oLiVkroTeGx7aCA==
X-Google-Smtp-Source: ABdhPJxUj65qdCWjItqHo88qUgOMHEjOxuIWrh9h3Qe6ZqvgbDw6sMBma26GM6By33gnmUaEFIWdLtXqiCBGAFpxblk=
X-Received: by 2002:a25:1c02:: with SMTP id c2mr1806682ybc.218.1634928817340;
 Fri, 22 Oct 2021 11:53:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAN+Y6vALVOHVGX+bT6EGDH6erEeSbK3mYMTABCRpEPFnQXdDSw@mail.gmail.com>
 <32778a04-eddc-32d4-7c93-23b24baa8669@gmail.com> <CAN+Y6vBOBQ=_7_cXtpu7vfAJmuo65-8Wi0aCPjU0hgUiEB0iOA@mail.gmail.com>
 <75f3809f-3c44-2e46-bbaa-bdf23b77c567@gmail.com> <CAN+Y6vA6o+OX48SEJUCpCtKua-R8gceQXuJu7o71ziJAAoLNXA@mail.gmail.com>
 <b0b6c4c0-4d4e-08cc-c785-cb1682646da3@gmail.com>
In-Reply-To: <b0b6c4c0-4d4e-08cc-c785-cb1682646da3@gmail.com>
From: isaac mario tupac davila <isacctd92@gmail.com>
Date: Fri, 22 Oct 2021 13:53:25 -0500
Message-ID: <CAN+Y6vBJONWL7Sc3Su+y0u2nM4E4X7pBL8n6w5wiTRq5SDyWNQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: UUDQTP2WHM6H5JFKCEFSUBV2KNC75GH7
X-Message-ID-Hash: UUDQTP2WHM6H5JFKCEFSUBV2KNC75GH7
X-MailFrom: isacctd92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: discuss-gnuradio@gnu.org, USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Installing Images and firmware USRPN200/N210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UUDQTP2WHM6H5JFKCEFSUBV2KNC75GH7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4945771067284519012=="

--===============4945771067284519012==
Content-Type: multipart/alternative; boundary="0000000000006404f205cef58763"

--0000000000006404f205cef58763
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi!

This is what appears:

itupac@itupac:/usr/local/lib/uhd/utils$ ./usrp_burn_mb_eeprom --args
"addr=3D192.168.10.3" --read-all
Creating USRP device from address: addr=3D192.168.10.3
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
UHD_3.14.0.HEAD-0-g6875d061
[INFO] [USRP2] Opening a USRP2/N-Series device...
[INFO] [USRP2] Current recv frame size: 1472 bytes
[INFO] [USRP2] Current send frame size: 1472 bytes
[WARNING] [USRP2] Unable to identify device - assuming USRP2/N-Series devic=
e
[WARNING] [UHD] Unable to set the thread priority. Performance may be
negatively affected.
Please see the general application notes in the manual for instructions.
EnvironmentError: OSError: error in pthread_setschedparam

Fetching current settings from EEPROM...
    EEPROM ["hardware"] is ""
    EEPROM ["revision"] is ""
    EEPROM ["product"] is ""
    EEPROM ["mac-addr"] is "00:00:00:00:40:00"
    EEPROM ["ip-addr"] is "192.168.10.3"
    EEPROM ["subnet"] is "0.0.0.104"
    EEPROM ["gateway"] is "255.255.255.255"
    EEPROM ["gpsdo"] is "none"
    EEPROM ["serial"] is "0"
    EEPROM ["name"] is ""

Power-cycle the USRP device for the changes to take effect.

Done
[WARNING] [UHD] Unable to set the thread priority. Performance may be
negatively affected.
Please see the general application notes in the manual for instructions.
EnvironmentError: OSError: error in pthread_setschedparam

El vie, 22 oct 2021 a las 12:33, Marcus D. Leech (<patchvonbraun@gmail.com>=
)
escribi=C3=B3:

> On 2021-10-22 11:33 a.m., isaac mario tupac davila wrote:
> > Using Device: Single USRP:
> >   Device: USRP2 / N-Series Device
> >   Mboard 0: N???
> >   RX Channel: 0
> >     RX DSP: 0
> >     RX Dboard: A
> >     RX Subdev: BasicRX (AB)
> >   TX Channel: 0
> >     TX DSP: 0
> >     TX Dboard: A
> >     TX Subdev: Unknown (0xffff) - 0
>
> If you look here:
>
> Using Device: Single USRP:
>    Device: USRP2 / N-Series Device
>    Mboard 0: N???
>    RX Channel: 0
>      RX DSP: 0
>      RX Dboard: A
>      RX Subdev: BasicRX (AB)
>    TX Channel: 0
>      TX DSP: 0
>      TX Dboard: A
>      TX Subdev: Unknown (0xffff) - 0
>
> You can see that it's unable to clearly identify what type of device
> this is.  This implies that the motherboard EEPROM contains invalid data.
>
> What happens if you:
>
> /usr/lib/uhd/utils/usrp_burn_mb_eeprom --args "addr=3D192.168.10.2"
> --read-all
>
> Or substitute whatever IP address your device has.
>
>
>
>
>
>

--0000000000006404f205cef58763
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>This is what appears:</d=
iv><div><br></div><div>itupac@itupac:/usr/local/lib/uhd/utils$ ./usrp_burn_=
mb_eeprom --args &quot;addr=3D192.168.10.3&quot; --read-all<br>Creating USR=
P device from address: addr=3D192.168.10.3<br>[INFO] [UHD] linux; GNU C++ v=
ersion 7.4.0; Boost_106501; UHD_3.14.0.HEAD-0-g6875d061<br>[INFO] [USRP2] O=
pening a USRP2/N-Series device...<br>[INFO] [USRP2] Current recv frame size=
: 1472 bytes<br>[INFO] [USRP2] Current send frame size: 1472 bytes<br>[WARN=
ING] [USRP2] Unable to identify device - assuming USRP2/N-Series device<br>=
[WARNING] [UHD] Unable to set the thread priority. Performance may be negat=
ively affected.<br>Please see the general application notes in the manual f=
or instructions.<br>EnvironmentError: OSError: error in pthread_setschedpar=
am<br><br>Fetching current settings from EEPROM...<br>=C2=A0 =C2=A0 EEPROM =
[&quot;hardware&quot;] is &quot;&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;revis=
ion&quot;] is &quot;&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;product&quot;] is=
 &quot;&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;mac-addr&quot;] is &quot;00:00=
:00:00:40:00&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;ip-addr&quot;] is &quot;1=
92.168.10.3&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;subnet&quot;] is &quot;0.0=
.0.104&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;gateway&quot;] is &quot;255.255=
.255.255&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;gpsdo&quot;] is &quot;none&qu=
ot;<br>=C2=A0 =C2=A0 EEPROM [&quot;serial&quot;] is &quot;0&quot;<br>=C2=A0=
 =C2=A0 EEPROM [&quot;name&quot;] is &quot;&quot;<br><br>Power-cycle the US=
RP device for the changes to take effect.<br><br>Done<br>[WARNING] [UHD] Un=
able to set the thread priority. Performance may be negatively affected.<br=
>Please see the general application notes in the manual for instructions.<b=
r>EnvironmentError: OSError: error in pthread_setschedparam<br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El vie=
, 22 oct 2021 a las 12:33, Marcus D. Leech (&lt;<a href=3D"mailto:patchvonb=
raun@gmail.com">patchvonbraun@gmail.com</a>&gt;) escribi=C3=B3:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">On 2021-10-22 11:33 a.m., i=
saac mario tupac davila wrote:<br>
&gt; Using Device: Single USRP:<br>
&gt; =C2=A0 Device: USRP2 / N-Series Device<br>
&gt; =C2=A0 Mboard 0: N???<br>
&gt; =C2=A0 RX Channel: 0<br>
&gt; =C2=A0 =C2=A0 RX DSP: 0<br>
&gt; =C2=A0 =C2=A0 RX Dboard: A<br>
&gt; =C2=A0 =C2=A0 RX Subdev: BasicRX (AB)<br>
&gt; =C2=A0 TX Channel: 0<br>
&gt; =C2=A0 =C2=A0 TX DSP: 0<br>
&gt; =C2=A0 =C2=A0 TX Dboard: A<br>
&gt; =C2=A0 =C2=A0 TX Subdev: Unknown (0xffff) - 0<br>
<br>
If you look here:<br>
<br>
Using Device: Single USRP:<br>
=C2=A0=C2=A0 Device: USRP2 / N-Series Device<br>
=C2=A0=C2=A0 Mboard 0: N???<br>
=C2=A0=C2=A0 RX Channel: 0<br>
=C2=A0=C2=A0 =C2=A0 RX DSP: 0<br>
=C2=A0=C2=A0 =C2=A0 RX Dboard: A<br>
=C2=A0=C2=A0 =C2=A0 RX Subdev: BasicRX (AB)<br>
=C2=A0=C2=A0 TX Channel: 0<br>
=C2=A0=C2=A0 =C2=A0 TX DSP: 0<br>
=C2=A0=C2=A0 =C2=A0 TX Dboard: A<br>
=C2=A0=C2=A0 =C2=A0 TX Subdev: Unknown (0xffff) - 0<br>
<br>
You can see that it&#39;s unable to clearly identify what type of device <b=
r>
this is.=C2=A0 This implies that the motherboard EEPROM contains invalid da=
ta.<br>
<br>
What happens if you:<br>
<br>
/usr/lib/uhd/utils/usrp_burn_mb_eeprom --args &quot;addr=3D192.168.10.2&quo=
t; --read-all<br>
<br>
Or substitute whatever IP address your device has.<br>
<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--0000000000006404f205cef58763--

--===============4945771067284519012==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4945771067284519012==--
