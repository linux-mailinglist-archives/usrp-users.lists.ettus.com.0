Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 298274D320A
	for <lists+usrp-users@lfdr.de>; Wed,  9 Mar 2022 16:45:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 177ED3850C3
	for <lists+usrp-users@lfdr.de>; Wed,  9 Mar 2022 10:45:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JHUvLwPz";
	dkim-atps=neutral
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 0C2FD384B52
	for <USRP-users@lists.ettus.com>; Wed,  9 Mar 2022 10:44:27 -0500 (EST)
Received: by mail-pg1-f175.google.com with SMTP id 132so2280760pga.5
        for <USRP-users@lists.ettus.com>; Wed, 09 Mar 2022 07:44:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=A1rm2HQep/JQrB2CETC1Dd7UMYiDSFrKYNYhK0qkXrE=;
        b=JHUvLwPzxkQQ30+a6dd2A+0D7K9ROy53bQORKy7AQsyN/Zet8cAcIVlXmBA3nriCwZ
         TWB3+jsD/h44jmsa5vq7kygew8HKOZNrIeELw0bCaNJm6gA7tqltpD2ozouE/nPUsxsK
         hgOlryeR9C41jO6t6J5bHkCFQIuK7CtNSsACseMHnvGTD/e9i9sZ2GH7WBhIog/CTTfR
         d44BhjWChnCLeD0O9byXyfPJUDbtzM6mRb6JKVRDHP5Q9+7tFUuXsBMU/sB3qQ8YIIKM
         1mP+NyPcyxEIl1ULLFsLiu1llUCHejF6KxB8jVKi4HIeezLSijNRD5eoHqsKMWfPEQ+3
         /37Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=A1rm2HQep/JQrB2CETC1Dd7UMYiDSFrKYNYhK0qkXrE=;
        b=2yLwwQGClleYhVIdIN7U8y4/ZDHsKp40mASXqOUHnk61xWCgseGqkADi19lp3nbeq0
         yGvOtK1tR6pyx2c9aNCRuliTlEafIfb/gxBM0jYtTbKVN4tkrAsGoACTANYLxu65eK/7
         +SVIwl/GE3BuI2LWy1DDIzwHIgOKnyGS3Gj/fKpkvFGe1tSeqR8oos8bSJil8VMAuvMn
         9sVijmV4idw9kGbK+wBSY/3T5I12F1+d+qHkyIpOK3x/pGGK+4Xz35IteOe9J48dds2W
         hTiQOUPbA20hjPOHeTbs67+ohSg5BZ/5CFXTmGMFiuRokj16GVOwPz8P9weT7VEqBz8G
         i/DA==
X-Gm-Message-State: AOAM5333l5pGldo22ktxUQGmhN67MZuQIe+M2B3hBklzkXvUlOV71QsJ
	NCB73LkS6vLUx/XdpHpqygjVqVkeDb/TupR1d+Ur1spBI70=
X-Google-Smtp-Source: ABdhPJwadIgoZhrmdqk5k0N+ie7TaFupUzdtjo/S1/yTpezxJE/zNGHPnYTR13H8/rM+GhB8gJr3ZEOTqTBV26E1IQ0=
X-Received: by 2002:a63:2b94:0:b0:380:7ee:e641 with SMTP id
 r142-20020a632b94000000b0038007eee641mr269125pgr.584.1646840666808; Wed, 09
 Mar 2022 07:44:26 -0800 (PST)
MIME-Version: 1.0
References: <AM8P250MB0107E39DAA11AA08F47D2EB89B099@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <b6f6c119-6c99-2a6a-4a80-117f382d265a@gmail.com> <AM8P250MB01078848E6B9E7E818D989539B0A9@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <eadede9a-80ac-2d21-1d8f-2176de0dcb8b@gmail.com>
In-Reply-To: <eadede9a-80ac-2d21-1d8f-2176de0dcb8b@gmail.com>
From: Dan CaJacob <dan.cajacob@gmail.com>
Date: Wed, 9 Mar 2022 10:44:10 -0500
Message-ID: <CAMOmJODYr23nX5vs8vJETn8neN-u+-p_0hdYoWt0Vs3dQYvSYA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: DWLRI4LVM6GEBWVF4UDEPTANDHAT3PL3
X-Message-ID-Hash: DWLRI4LVM6GEBWVF4UDEPTANDHAT3PL3
X-MailFrom: dan.cajacob@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>, "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPS alarm PIN set to true
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DWLRI4LVM6GEBWVF4UDEPTANDHAT3PL3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5303901483646819826=="

--===============5303901483646819826==
Content-Type: multipart/alternative; boundary="000000000000f267af05d9caf89c"

--000000000000f267af05d9caf89c
Content-Type: text/plain; charset="UTF-8"

It looks like this antenna requires 3.3V bias on the center pin to power
the LNA inside? What voltage is supported on the X410's center pin? Often
these things provide a bias to the active antenna to power it.

If the X410 does not provide a bias voltage (or the wrong one - e.g. 5V),
you may try putting a Bias-T between the antenna and the USRP and feeding
3.3V to the antenna that way.

Do you have another GPS device that you can use with the antenna to
eliminate the possibility that the antenna is bad?

On Wed, Mar 9, 2022 at 9:45 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-03-09 04:34, Tobias Kronauer wrote:
>
> If the GPS light is the light left to the GPS ANT port, then yes it it
> shining green.
>
> Currently, I have two GPS antennas connected to two X410. The GPS antenna
> has multiple outputs, I use the "GPS" output and screw it to the SMA
> connector. Then I probe the module pins (and call the `./sync_to_gps`
> example).
>
> We use a Poynting A-Puck-0005-V1-01 antenna, in case it helps.
>
> ------------------------------
>
> Could you share the complete output of "sync_to_gps" ?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>


-- 
Very Respectfully,

Dan CaJacob

--000000000000f267af05d9caf89c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It looks like this antenna requires 3.3V bias on the cente=
r pin to power the LNA inside? What voltage is supported on the X410&#39;s =
center pin? Often these things provide a bias to the active antenna=C2=A0to=
 power it.<div><br></div><div>If the X410 does not provide a bias voltage (=
or the wrong=C2=A0one - e.g. 5V), you may try putting a Bias-T between the =
antenna and the USRP and feeding 3.3V to the antenna that way.</div><div><b=
r></div><div>Do you have another GPS device that you can use with the anten=
na to eliminate the possibility that the antenna is bad?</div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 9=
, 2022 at 9:45 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail=
.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-03-09 04:34, Tobias Kronauer
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        If the GPS light is the light left to the GPS ANT port, then yes
        it it shining green.</div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        <br>
      </div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        Currently, I have two GPS antennas connected to two X410. The
        GPS antenna has multiple outputs, I use the &quot;GPS&quot; output =
and
        screw it to the SMA connector. Then I probe the module pins (and
        call the `./sync_to_gps` example).</div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        <br>
      </div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        We use a Poynting A-Puck-0005-V1-01 antenna, in case it helps.<br>
      </div>
      <div>
        <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-s=
ize:12pt;color:rgb(0,0,0)">
          <br>
        </div>
        <hr style=3D"display:inline-block;width:98%"><br>
      </div>
    </blockquote>
    Could you share the complete output of &quot;sync_to_gps&quot; ?<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Very Respectfully,<br><br>Dan C=
aJacob</div></div>

--000000000000f267af05d9caf89c--

--===============5303901483646819826==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5303901483646819826==--
