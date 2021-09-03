Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1369D4006E3
	for <lists+usrp-users@lfdr.de>; Fri,  3 Sep 2021 22:45:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D273384872
	for <lists+usrp-users@lfdr.de>; Fri,  3 Sep 2021 16:45:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Og38GTtY";
	dkim-atps=neutral
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id B2C693842CB
	for <usrp-users@lists.ettus.com>; Fri,  3 Sep 2021 16:44:43 -0400 (EDT)
Received: by mail-qt1-f169.google.com with SMTP id 2so326514qtw.1
        for <usrp-users@lists.ettus.com>; Fri, 03 Sep 2021 13:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=NYzLv1ICDNxHZ6EBPjwBkZDzNK05KEaC7oTq9z+m9ZQ=;
        b=Og38GTtY62daZhyh92ZIYzekqR6R8BzrwMDoCz+bVGit1sX3PELtkROn7UbFDTLjgL
         trs9KeQAjXe4/cjINC+qzYMtqpn2kdz/6KzFGuNxxhbCFfp6KLjQa/MrbEgfzk1pp9oR
         Cv+6Ev2hOCvbXnuoyRaOfQVXociRQq/zo3Q1nkiMqPyxvQ9i93x+e3uvUN8G00O+zqiZ
         PAgzIqkbUKZsLQp88fKPYTjZwa5MuUxMVtEimuOvfpNBmTAA8C8dm93Vrfl7+4Xdrz1I
         DFF8YjiswCvFCcibPd3UR9UA2fs+ktkBEhwW0bUXFn/dVIWHqC8FojKZ/Z48By6tUHaC
         X3Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=NYzLv1ICDNxHZ6EBPjwBkZDzNK05KEaC7oTq9z+m9ZQ=;
        b=ReGEtHb5+sOdFWWvnGOE/WkW+CoxGB+hGeckwpYfABQIbnc0FV3y5f4Ru7AwcFY+KX
         TmZwXuppqZADb3WmyQsBCfMKqm99aUVsHMZxNo9mV8q8e9BLE/OFXLlzb1exsObBwgP2
         uvkYlntPf3tCoPJCSvZjX0ZH1rCjTeUioS7J97V5CdegDzhyYLOAyGjjtBqqd86+pJIJ
         OPVeviFxc8Yv1rX/4ZV4rqNWBiRFL3p4UxrXl6J38czFLYViASHvugOiUThEZhF59m7U
         RzeQZEjFMgcLVVMD3k/IOpgZq/naWJRRrmKrLSigY/pFa2rHRUiCmtQ8ZFK7WzxV7VQe
         FqTw==
X-Gm-Message-State: AOAM531q7Telc0zVN7AFSIxwRjb0PJPEDnyMmlfNxHIxMn+iCD5ts59z
	SVacMqNyuiYKaogTcjQY4Kyw6YzCgdFQaQ==
X-Google-Smtp-Source: ABdhPJx13DgS0MLgu+2kQrQFM26hH/Flluja5ewQJ/uVZ0o2cxR/HVzQVpM2ACN3sk5k9FXtiuBnWw==
X-Received: by 2002:ac8:9:: with SMTP id a9mr787185qtg.351.1630701882979;
        Fri, 03 Sep 2021 13:44:42 -0700 (PDT)
Received: from [192.168.2.232] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id d20sm254767qkl.13.2021.09.03.13.44.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Sep 2021 13:44:42 -0700 (PDT)
To: Cameron Matson <ncmatson95@gmail.com>
References: <CAGLr63voh9G8EnOVZMi6phwk+5rPkY7zBnuX5pu9szfdrL_KmQ@mail.gmail.com>
 <VE1PR04MB6653860A9AA24499243B8395BACC9@VE1PR04MB6653.eurprd04.prod.outlook.com>
 <CAGLr63tyG4LJkwtAoiY1QNBPr5CN_5Mu6Ygn0R90+vB52OLrOg@mail.gmail.com>
 <cdb81990-bb54-6aa9-33cb-2cbb77c3fe2c@gmail.com>
 <CAGLr63tiizj-HtMScfX3e2Np-5+_nc31boT7Ngw-5Gb=PWkm2A@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <e47dc17c-0601-073f-2def-dd9f96dd1e68@gmail.com>
Date: Fri, 3 Sep 2021 16:44:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAGLr63tiizj-HtMScfX3e2Np-5+_nc31boT7Ngw-5Gb=PWkm2A@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: B2IGHM3XLGJA3R6U3FFPUG7EAJC6J66J
X-Message-ID-Hash: B2IGHM3XLGJA3R6U3FFPUG7EAJC6J66J
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Cannot Ping SFP port
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B2IGHM3XLGJA3R6U3FFPUG7EAJC6J66J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3541197003177018554=="

This is a multi-part message in MIME format.
--===============3541197003177018554==
Content-Type: multipart/alternative;
 boundary="------------CBBCE7FAE92B868546CAB63A"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------CBBCE7FAE92B868546CAB63A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-03 4:29 p.m., Cameron Matson wrote:
> Pinging from n310 to server yes. From server to n310 no.
>
>
> Cameron
This increasingly sounds like a PHY-layer issue of some sort to me.

When you plug/unplug the cable between your computer and the radio, what=20
does "dmesg" have to say (I assume LInux) about it?
 =C2=A0 Are there any untoward comments in the kernel/driver log?


>
>
> On Fri, Sep 3, 2021 at 1:11 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 2021-09-03 2:01 p.m., Cameron Matson wrote:
>     > Thanks for the tip Ming.=C2=A0 I have heard that there are some
>     > compatibility=C2=A0issues out there.=C2=A0 We are using the Finsa=
ir when
>     trying
>     > copper (ethernet) and 10Gtek AXS85-192-M3 when trying fiber
>     (which is
>     > how it was set and working.)
>     >
>     > One thing I've noticed is that when using fiber, there is no
>     link LED
>     > if I use sfp0, but there is in sfp1.=C2=A0 The opposite is true w=
hen I'm
>     > using copper (led on when plugged into sfp0, off sfp1.) =C2=A0Thi=
s is
>     true
>     > on multiple FPGA flavors (WX and HG).
>     >
>     > I'm really at a loss here...
>     >
>     > Thanks for your help,
>     >
>     > Cameron
>     >
>     When you're pinging, do you get an blinky lights on the N310,
>     indicating
>     that it has seen your traffic?
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>


--------------CBBCE7FAE92B868546CAB63A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-03 4:29 p.m., Cameron Matso=
n
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAGLr63tiizj-HtMScfX3e2Np-5+_nc31boT7Ngw-5Gb=3DPWkm2A@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">Pinging from n310 to server yes. From server to
        n310 no.</div>
      <div dir=3D"auto"><br>
      </div>
      <div dir=3D"auto"><br>
      </div>
      <div dir=3D"auto">Cameron</div>
    </blockquote>
    This increasingly sounds like a PHY-layer issue of some sort to me.<b=
r>
    <br>
    When you plug/unplug the cable between your computer and the radio,
    what does "dmesg" have to say (I assume LInux) about it?<br>
    =C2=A0 Are there any untoward comments in the kernel/driver log?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAGLr63tiizj-HtMScfX3e2Np-5+_nc31boT7Ngw-5Gb=3DPWkm2A@mail.gm=
ail.com">
      <div dir=3D"auto"><br>
      </div>
      <div><br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 3, 2021 at 1:=
11
            PM Marcus D. Leech &lt;<a
              href=3D"mailto:patchvonbraun@gmail.com"
              moz-do-not-send=3D"true">patchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">On
            2021-09-03 2:01 p.m., Cameron Matson wrote:<br>
            &gt; Thanks for the tip Ming.=C2=A0 I have heard that there a=
re
            some <br>
            &gt; compatibility=C2=A0issues out there.=C2=A0 We are using =
the
            Finsair when trying <br>
            &gt; copper (ethernet) and 10Gtek AXS85-192-M3 when trying
            fiber (which is <br>
            &gt; how it was set and working.)<br>
            &gt;<br>
            &gt; One thing I've noticed is that when using fiber, there
            is no link LED <br>
            &gt; if I use sfp0, but there is in sfp1.=C2=A0 The opposite =
is
            true when I'm <br>
            &gt; using copper (led on when plugged into sfp0, off sfp1.)
            =C2=A0This is true <br>
            &gt; on multiple FPGA flavors (WX and HG).<br>
            &gt;<br>
            &gt; I'm really at a loss here...<br>
            &gt;<br>
            &gt; Thanks for your help,<br>
            &gt;<br>
            &gt; Cameron<br>
            &gt;<br>
            When you're pinging, do you get an blinky lights on the
            N310, indicating <br>
            that it has seen your traffic?<br>
            _______________________________________________<br>
            USRP-users mailing list -- <a
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
"
              moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true">usrp-users-leave=
@lists.ettus.com</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------CBBCE7FAE92B868546CAB63A--

--===============3541197003177018554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3541197003177018554==--
