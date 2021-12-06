Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB1D469868
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 15:15:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8522E384570
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 09:15:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="f01Jy926";
	dkim-atps=neutral
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id DEE2238454E
	for <usrp-users@lists.ettus.com>; Mon,  6 Dec 2021 09:14:41 -0500 (EST)
Received: by mail-qt1-f170.google.com with SMTP id o17so10905530qtk.1
        for <usrp-users@lists.ettus.com>; Mon, 06 Dec 2021 06:14:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=JdQOaUW1iO09D13sQ32UNFMGyOLIKlE+7MWk5s8Ts6M=;
        b=f01Jy926OqRfe13swE4WZr6CM7VquvbJ0ZsWzLjNKtiXDJklBT8U+dgNPQ/pqZTzZL
         +CVk0/j2BZGkJtZg0VP4q6PJIvO9/5KnRVsZ3ufkjby7We11Dwif4MeigMZUFKOHDuD7
         HudOUmngVjXIaQ/z2pc8weLcGVVBJm+34V8yNKplalR/ezvTFp0buzkS0/mk6xcXVQ6a
         Y9F5d+lz2ujPlKGKUHjUZ/SUCjJN7AiyGid9jc8veYrv1Lu4zi/o8nEIGnrdq5Nmpidc
         iHDxIp7jozcT6cbcwGKis92t6ZlpP4LiFLhd+pDBSb1xkJ07/fxN3XDW54SGvUAw4bk7
         i/TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=JdQOaUW1iO09D13sQ32UNFMGyOLIKlE+7MWk5s8Ts6M=;
        b=WpnoFflTA5HNR2JE+9KoQrnkE8TMq7qCu5nYPWGGe+s0zDPTkuDU7EvZLixPdju2vf
         8Nf6urzw+8Tf3I12KSTStHsltvaba4OyB9+rLZPeONUO8QdubR0oNoukaTtCWqcyK4se
         rYxiYKjdcmer/uYrZoguoy49Fl7ZlKnKTLgDCAZSCJDU6tcvIEvT0GLvydq2UPaJjtqD
         ekpX4isLHV2PojOoT/cATbzgBwFnB4y1QlhZ8Az8zocy8TIFwKiaeAPp5X9OJZyf1dGa
         Oqa+66QJbdRn+m+CuBkSgHPtbBDTQeBaGFOTrwI1YlQjbEHvcZdI5BYdxmGCXavJa4fE
         8FbA==
X-Gm-Message-State: AOAM531eVq/vNYuxq4tB2Au3jkIEJx0UPg2Fe9pQqMv7s1atX64s6TcD
	rbqut29iGNJivBoE2iKwv8YTWS6jSrs=
X-Google-Smtp-Source: ABdhPJydenBleFCqSaL2KQmrBc+jMOGS0WYkIiyoUDbiGsOTEovUBQD0BtveoAwXjOg7EFwDDNWtmw==
X-Received: by 2002:ac8:5ccf:: with SMTP id s15mr39852264qta.220.1638800080053;
        Mon, 06 Dec 2021 06:14:40 -0800 (PST)
Received: from [192.168.2.228] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id x16sm6645134qko.15.2021.12.06.06.14.39
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 06:14:39 -0800 (PST)
Message-ID: <92045f50-fdc4-f672-ce0a-3f7a95ef7835@gmail.com>
Date: Mon, 6 Dec 2021 09:14:38 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <e9dc828a6115487ab2fbd574b3b6685c@riedel.net>
 <c3a818edbb694a94a60a063804386d45@riedel.net>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <c3a818edbb694a94a60a063804386d45@riedel.net>
Message-ID-Hash: K3P2Y7DVH5DI2SOV6YHNDGO42A3WUFZQ
X-Message-ID-Hash: K3P2Y7DVH5DI2SOV6YHNDGO42A3WUFZQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RfnocError: OpTimeout: Control operation timed out waiting for space in command buffer
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K3P2Y7DVH5DI2SOV6YHNDGO42A3WUFZQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7015850917456376254=="

This is a multi-part message in MIME format.
--===============7015850917456376254==
Content-Type: multipart/alternative;
 boundary="------------XTQaFY6fe8fum9baDNsb54Go"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------XTQaFY6fe8fum9baDNsb54Go
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-06 02:13, Christoph Schultz (Riedel) wrote:
>
> Dear USRP-Users,
>
> I wanted to get back to you on the topic mentioned below. Meanwhile I=20
> reworked my code to work directly with the uhd Python class instead of=20
> using a gnuradio wrapper.
>
> Unfortunately I run into the identical issue again.
>
What is it you're trying to achieve?=C2=A0=C2=A0=C2=A0 The approach you'r=
e taking is=20
clearly exercising a deficiency in the UHD code *somewhere*, and perhaps=20
a different
 =C2=A0 approach is required.

The normal "pattern" is:

 =C2=A0=C2=A0=C2=A0=C2=A0 o set up device parameters
 =C2=A0=C2=A0=C2=A0=C2=A0 o iterate getting data until satisfied

But I think the call you're using basically does a lot of "set up device=20
parameters" work every time you call it, which is not the usual "pattern"=
.


> Code is:
>
> >>
>
> import uhd
>
> import numpy as np
>
> device =3D uhd.usrp.MultiUSRP(=E2=80=9Ctype=3Dx300,addr=3D192.168.40.2=E2=
=80=9D)
>
> for i in range(200):
>
> sig =3D device.recv_num_samps(int(1e5),900e6,4e6,[0],0)
>
> print(np.mean(sig))
>
> <<
>
> It=E2=80=99ll crash after 104 runs in file multi_usrp.py on line 54:
>
> >>
>
> super(MultiUSRP, self).set_rx_gain(gain,chan)
>
> <<
>
> with the message mentioned below
>
> >>
>
> RfnocError: OpTimeout: Control operation timed out waiting for space=20
> in command buffer
>
> <<
>
> Anybody got an idea, if this might be some known issue with e.g. the=20
> FPGA code, or the drivers?
>
> Best regards
>
> Christoph
>
>
> ChristophSchultz
> RF System Architect
>
>
> RIEDEL at Social Media <https://www.riedel.net/en/social-media-links/>
>
> ____________________________
>
> RIEDEL
> Communications GmbH & Co. KG
> Uellendahler Str. 353
> 42109 Wuppertal
> Deutschland
>
> phone: +49 202 292-9150
>
> Christoph.Schultz@riedel.net <mailto:Christoph.Schultz@riedel.net>
> www.riedel.net <http://www.riedel.net>
> ____________________________
> RIEDEL Communications GmbH & Co. KG
> Registergericht: Amtsgericht Wuppertal HRA 22390
> Umsatzsteuer-Identifikationsnummer: DE 814906984
> Komplement=C3=A4rin: RIEDEL Communications International GmbH, Wupperta=
l
> Registergericht: Amtsgericht Wuppertal HRB 17038
> Gesch=C3=A4ftsf=C3=BChrer: Thomas Riedel, Frank Eischet, Martin Berger
>
> *From:* Christoph Schultz (Riedel) <Christoph.Schultz@riedel.net>
> *Sent:* Donnerstag, 25. November 2021 17:08
> *To:* usrp-users@lists.ettus.com
> *Subject:* RfnocError: OpTimeout: Control operation timed out waiting=20
> for space in command buffer
>
> Dear USRP-Users,
>
> I am facing a crash when repeatedly receiving data on a X300 using=20
> Gnuradio.
>
> To run into this issue, I load a top_block with a usrp_source, a head=20
> and a file_sink initially.
>
> Then a sequence of start()-wait()-stop()-wait()-reconfigure is run for=20
> e.g. 200 times.
>
> After a deterministic number of cycles the following error will appear:
>
> thread[thread-per-block[0] <block usrp_source(1)>]: RfnocError:=20
> OpTimeout: Control operation timed out waiting for space in command buf=
fer
>
> Similar to the issue discussed here:
>
> https://www.mail-archive.com/usrp-users@lists.ettus.com/msg11413.html
>
> my first idea was, that the command buffer is getting filled faster=20
> than it is sent to the USRP device, but artificial sleeps between the=20
> loop cycles do not change the behavior at all.
>
> I was also not successful in reloading the usrp_source object on=20
> Python level (without stopping the full python process, and restarting=20
> it again manually).
>
> So it looks like the gnuradio functions leave something in the command=20
> buffer which I couldn=E2=80=99t clear so far without reloading the whol=
e=20
> library by restarting Python.
>
> Is this a known issue? Are there any ways to manually release the=20
> command buffer, or is it a potential bug, which should go to the bug=20
> tracker of gr?
>
> Many thanks in advance and
>
> Best regards
>
> Christoph
>
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------XTQaFY6fe8fum9baDNsb54Go
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-06 02:13, Christoph Schultz
      (Riedel) wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:c3a818edbb694a94a60a063804386d45@riedel.net">
      <!-- Template generated by  on 08:13:28 Montag, 6 Dezember 2021 -->
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css">P.ImprintUniqueID {
	MARGIN: 0cm 0cm 0pt
}LI.ImprintUniqueID {
	MARGIN: 0cm 0cm 0pt
}DIV.ImprintUniqueID {
	MARGIN: 0cm 0cm 0pt
}TABLE.ImprintUniqueIDTable {
	MARGIN: 0cm 0cm 0pt
}DIV.Section1 {
	page: Section1
}</style>
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Dear USRP-Users,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I wanted to get back to you on the topic
          mentioned below. Meanwhile I reworked my code to work directly
          with the uhd Python class instead of using a gnuradio wrapper.<=
o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Unfortunately I run into the identical
          issue again.</p>
      </div>
    </blockquote>
    What is it you're trying to achieve?=C2=A0=C2=A0=C2=A0 The approach y=
ou're taking
    is clearly exercising a deficiency in the UHD code *somewhere*, and
    perhaps a different<br>
    =C2=A0 approach is required.<br>
    <br>
    The normal "pattern" is:<br>
    <br>
    =C2=A0=C2=A0=C2=A0=C2=A0 o set up device parameters<br>
    =C2=A0=C2=A0=C2=A0=C2=A0 o iterate getting data until satisfied<br>
    <br>
    But I think the call you're using basically does a lot of "set up
    device parameters" work every time you call it, which is not the
    usual "pattern".<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:c3a818edbb694a94a60a063804386d45@riedel.net">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Code is:<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">&gt;&gt;<o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">import uhd<o:p></o:p></p>
        <p class=3D"MsoNormal">import numpy as np<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">device =3D
          uhd.usrp.MultiUSRP(=E2=80=9Ctype=3Dx300,addr=3D192.168.40.2=E2=80=
=9D)<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">for i in range(200):<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <span lang=3D"DE">sig =3D
            device.recv_num_samps(int(1e5),900e6,4e6,[0],0)<o:p></o:p></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"DE">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            print(np.mean(sig))<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"DE"><o:p>=C2=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"DE">&lt;&lt;<o:p>=C2=A0</o:p=
></span></p>
        <p class=3D"MsoNormal"><span lang=3D"DE"><o:p>=C2=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal">It=E2=80=99ll crash after 104 runs in file
          multi_usrp.py on line 54:<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">&gt;&gt;<o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">super(MultiUSRP,
          self).set_rx_gain(gain,chan)<o:p></o:p></p>
        <p class=3D"MsoNormal">&lt;&lt;<o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">with the message mentioned below<o:p></o:p=
></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">&gt;&gt;<o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">RfnocError: OpTimeout: Control operation
          timed out waiting for space in command buffer<o:p></o:p></p>
        <p class=3D"MsoNormal">&lt;&lt;<o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Anybody got an idea, if this might be some
          known issue with e.g. the FPGA code, or the drivers?<o:p></o:p>=
</p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Best regards<o:p></o:p></p>
        <p class=3D"MsoNormal">Christoph<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
      <br>
      <font style=3D"font-family:Arial;font-size:11pt;font-weight:bold;">=
Christoph</font><font
        face=3D"Arial">=C2=A0</font><font
        style=3D"font-family:Arial;font-size:11pt;font-weight:bold;">Schu=
ltz</font><br>
      <font style=3D"font-family:Arial;font-size:10pt;">RF System
        Architect</font><br>
      <br>
      <br>
      <table style=3D"font-family:Arial; text-align: left; vertical-align=
:
        top;" class=3D"cbd3e871-1ea6-4be4-8106-176ad32d0939Table"
        cellspacing=3D"0" cellpadding=3D"0">
        <tbody>
          <tr style=3D"text-align: left; vertical-align: top; ">
            <td style=3D"padding-right: 5px; " align=3D"Center"><font
                style=3D"font-family:Arial;"><font
                  style=3D"font-family:Arial;"><a
                    href=3D"https://www.riedel.net/en/social-media-links/=
"
                    target=3D"" moz-do-not-send=3D"true"><img style=3D"bo=
rder:
                      0px Solid ; "
src=3D"https://www.riedel.net/fileadmin/user_upload/1004-social-media/Ico=
ns/Signatur.jpg"
                      title=3D"RIEDEL at Social Media" alt=3D"RIEDEL at
                      Social Media" moz-do-not-send=3D"true"></a></font><=
/font></td>
          </tr>
        </tbody>
      </table>
      <font face=3D"Arial">____________________________<br>
        <br>
      </font><font style=3D"font-family:Arial;font-size:10pt;">RIEDEL<br>
        Communications GmbH &amp; Co. KG</font><br>
      <font style=3D"font-family:Arial;font-size:10pt;">Uellendahler Str.
        353</font><br>
      <font size=3D"2" face=3D"Arial"><font
          style=3D"font-family:Arial;font-size:10pt;">42109</font>=C2=A0<=
font
          style=3D"font-family:Arial;font-size:10pt;">Wuppertal</font></f=
ont><br>
      <font style=3D"font-family:Arial;font-size:10pt;">Deutschland</font=
><br>
      <br>
      <font style=3D"font-family:Arial;font-size:10pt;"><font
          style=3D"font-family:Arial;font-size:10pt;">phone:
        </font>+49 202 292-9150<font
          style=3D"font-family:Arial;font-size:10pt;"><br>
        </font></font><br>
      <span style=3D"font-family:Arial;font-size:10pt;"><a
          href=3D"mailto:Christoph.Schultz@riedel.net" title=3D"Click to
          send email to Christoph Schultz (Riedel)" target=3D""
          style=3D"font-family:Arial;font-size:10pt;"
          moz-do-not-send=3D"true"><span style=3D"font-family:Arial;
            font-size:10pt;">Christoph.Schultz@riedel.net</span></a></spa=
n><br>
      <span style=3D"font-family:Arial;font-size:10pt;"><a
          href=3D"http://www.riedel.net" title=3D"" target=3D""
          style=3D"font-family:Arial;font-size:10pt;"
          moz-do-not-send=3D"true"><span style=3D"font-family:Arial;
            font-size:10pt;">www.riedel.net</span></a></span><br>
      <font face=3D"Arial">____________________________<br>
      </font><font face=3D"Arial"><font size=3D"1"><font
            style=3D"font-family:Arial;font-size:8pt;">RIEDEL
            Communications GmbH &amp; Co. KG<br>
            Registergericht: Amtsgericht Wuppertal HRA 22390<br>
            Umsatzsteuer-Identifikationsnummer: DE 814906984<br>
            Komplement=C3=A4rin: RIEDEL Communications International GmbH=
,
            Wuppertal<br>
            Registergericht: Amtsgericht Wuppertal HRB 17038<br>
            Gesch=C3=A4ftsf=C3=BChrer: Thomas Riedel, Frank Eischet, Mart=
in Berger</font><br>
          <br>
        </font>
        <div class=3D"WordSection1">
          <div>
            <div style=3D"border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0cm 0cm 0cm">
              <p class=3D"MsoNormal"><b>From:</b> Christoph Schultz
                (Riedel) <a class=3D"moz-txt-link-rfc2396E" href=3D"mailt=
o:Christoph.Schultz@riedel.net">&lt;Christoph.Schultz@riedel.net&gt;</a>
                <br>
                <b>Sent:</b> Donnerstag, 25. November 2021 17:08<br>
                <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> RfnocError: OpTimeout: Control operation
                timed out waiting for space in command buffer<o:p></o:p><=
/p>
            </div>
          </div>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"DE">Dear USRP-Users,<o:p><=
/o:p></span></p>
          <p class=3D"MsoNormal"><span lang=3D"DE"><o:p>=C2=A0</o:p></spa=
n></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">I am faci=
ng
            a crash when repeatedly receiving data on a X300 using
            Gnuradio.<o:p></o:p></p>
          <p class=3D"MsoNormal">To run into this issue, I load a
            top_block with a usrp_source, a head and a file_sink
            initially.<o:p></o:p></p>
          <p class=3D"MsoNormal">Then a sequence of
            start()-wait()-stop()-wait()-reconfigure is run for e.g. 200
            times.<br>
            <br>
            After a deterministic number of cycles the following error
            will appear:<o:p></o:p></p>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">thread[th=
read-per-block[0]
            &lt;block usrp_source(1)&gt;]: RfnocError: OpTimeout:
            Control operation timed out waiting for space in command
            buffer<o:p></o:p></p>
          <p class=3D"MsoNormal">Similar to the issue discussed here:<o:p=
></o:p></p>
          <p class=3D"MsoNormal"><a
href=3D"https://www.mail-archive.com/usrp-users@lists.ettus.com/msg11413.=
html"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tps://www.mail-archive.com/usrp-users@lists.ettus.com/msg11413.html</a><o=
:p></o:p></p>
          <p class=3D"MsoNormal">my first idea was, that the command
            buffer is getting filled faster than it is sent to the USRP
            device, but artificial sleeps between the loop cycles do not
            change the behavior at all.<o:p></o:p></p>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          <p class=3D"MsoNormal">I was also not successful in reloading
            the usrp_source object on Python level (without stopping the
            full python process, and restarting it again manually).<o:p><=
/o:p></p>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          <p class=3D"MsoNormal">So it looks like the gnuradio functions
            leave something in the command buffer which I couldn=E2=80=99=
t clear
            so far without reloading the whole library by restarting
            Python.<br>
            <br>
            Is this a known issue? Are there any ways to manually
            release the command buffer, or is it a potential bug, which
            should go to the bug tracker of gr?<o:p></o:p></p>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          <p class=3D"MsoNormal">Many thanks in advance and<o:p></o:p></p=
>
          <p class=3D"MsoNormal">Best regards<o:p></o:p></p>
          <p class=3D"MsoNormal">Christoph<o:p></o:p></p>
        </div>
        <br>
        <br>
      </font>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>
--------------XTQaFY6fe8fum9baDNsb54Go--

--===============7015850917456376254==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7015850917456376254==--
