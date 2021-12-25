Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D57F47F440
	for <lists+usrp-users@lfdr.de>; Sat, 25 Dec 2021 19:40:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6F5CB384697
	for <lists+usrp-users@lfdr.de>; Sat, 25 Dec 2021 13:40:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="N4ds5vQR";
	dkim-atps=neutral
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 921EF384665
	for <usrp-users@lists.ettus.com>; Sat, 25 Dec 2021 13:39:49 -0500 (EST)
Received: by mail-qk1-f180.google.com with SMTP id f138so10891493qke.10
        for <usrp-users@lists.ettus.com>; Sat, 25 Dec 2021 10:39:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=YlHswMgM49GGahzKSdMvDnmlD8sUZ1wfLAJcQ/QinYA=;
        b=N4ds5vQRda3C2phRqxBzmJ/dM76Vg+OHwPY/pc0J6JCHeDfHwSgkx4p6idlDaY+0jI
         ZGb7FsHUFwfNTZYCRjmM5fIWMiKsjBbhn5iYs4FcusNZ0zNRkQWoJL1BYRnw+uHchTB7
         29QaH5uiDgX55KAqnBIh3VSQ83+T1FbQBStdBmP27guWqwRA/v0pzQAtlxImbg0xkiR6
         Hehp0RFwThG7JrI48lVqu47MMXUPp1N8aRc8BR9rJG1fkOnD+x4oSCofVkLn/nY+iLA/
         Hbt0PJVeAvMw9wfRUam1bViGZ4BurmODnVPfA6IGir46F9nX/gfW27hROWdv/zpBn8uy
         FVmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=YlHswMgM49GGahzKSdMvDnmlD8sUZ1wfLAJcQ/QinYA=;
        b=lypmJa+ZNYlXERpBgmKo+rRr4bZmIdMtqvAm3mqsDlHo+owidZ3s/ipVsA91bA6d1v
         HEvYSvRAd6MUzFkStARjCsQ8jSj65ecNj7OLZ0p+J39by3YMk6Tm1ezXND8NZt7ljr+x
         Cl9TI4cSWejbxmYUNDq3lBlDV5qGtYRzpezCG3ivk5e8IShipFkYyLW/xqTtGutp9irA
         ywoxBxwBKlA99peOirBKIxloq8HPBwXCq0VlkTZiQ1IYFQTsZobo72gOabVh7dkZVedj
         CCN7/g5URxU5xZblO0ol93jtLCgBxFOgy4Q1TX/KZbsw8XPAdEuTYw2vFWyjxNyWlUFK
         uRAQ==
X-Gm-Message-State: AOAM530xnb+rIqeJJJop+L0DYs2mYH7QT9nxvBElC8JOhIi2zkLpGLdj
	kjW6znkmff3L53GuTtzxccsgGO+ij2XYOQ==
X-Google-Smtp-Source: ABdhPJzAeXPED3t5HrLroap8sMSmxfPxB/t1YDL5U1ScFp++6jd4aMV5n+f66lMiemWTYSno8SUG5Q==
X-Received: by 2002:a05:620a:d87:: with SMTP id q7mr7876704qkl.377.1640457588683;
        Sat, 25 Dec 2021 10:39:48 -0800 (PST)
Received: from [192.168.2.222] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id t18sm9599437qkp.84.2021.12.25.10.39.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Dec 2021 10:39:48 -0800 (PST)
Message-ID: <32d2eed5-f7cb-d4b3-68f7-d4f2262b2e7c@gmail.com>
Date: Sat, 25 Dec 2021 13:39:47 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAA=S3PtGfkoD9bQ+zDzpOpE5ioxQK-N_15tLAa89hj8nrG96xg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAA=S3PtGfkoD9bQ+zDzpOpE5ioxQK-N_15tLAa89hj8nrG96xg@mail.gmail.com>
Message-ID-Hash: RLN7FH5I6ZXUD4OUNBTOYU2IITZCR6UY
X-Message-ID-Hash: RLN7FH5I6ZXUD4OUNBTOYU2IITZCR6UY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: What's difference between noc_shell_gain.v & rfnoc_block_gain.v in RFNOC blocks
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RLN7FH5I6ZXUD4OUNBTOYU2IITZCR6UY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5849683000778663065=="

This is a multi-part message in MIME format.
--===============5849683000778663065==
Content-Type: multipart/alternative;
 boundary="------------zxs4f0e700IG3HPhfJ75nIJ4"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------zxs4f0e700IG3HPhfJ75nIJ4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-25 13:20, sp h wrote:
> Hi, I am studying gain RFNOC example, there is two Verilog source in=20
> the FPGA-src folder.
> (see this link https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4=
.0)
> *noc_shell_gain.v *& *rfnoc_block_gain.v *
>
> It is described=C2=A0in the referer link,
>
>   * *|rfnoc_block_gain.v|
>     The top-level synthesizable file for the Gain block*
>   * *|noc_shell_gain.v|
>     The NoC Shell for the Gain block*
>
> My question is:
> What's difference between noc_shell_gain.v & rfnoc_block_gain.v =C2=A0i=
n=20
> RFNOC blocks.
> What's NOC shell??
>
> thanks in advance
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
From:

https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#What_is_RFNoC.=
3F


he IP blocks in RFNoC are called /RFNoC blocks/. The RFNoC blocks wrap=20
the IP and provide a custom interface to the RFNoC infrastructure=20
through a tool-generated interface called the /NoC Shell/. Many standard=20
blocks are included in UHD 4.0. These blocks enable typical operation of=20
the USRP and allow RFNoC to connect to the different hardware components=20
of the USRP. Several of the included blocks are described in the section=20
Available RFNoC Blocks=20
<https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Available_RFN=
oC_Blocks>.=20
You can mix the available blocks for your application, or develop your=20
own custom RFNoC blocks with your own IP to open up new applications.=20
The NoC Shell hides the complexity of RFNoC from your block, making it=20
easy to plug your IP into the USRP.





--------------zxs4f0e700IG3HPhfJ75nIJ4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-25 13:20, sp h wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAA=3DS3PtGfkoD9bQ+zDzpOpE5ioxQK-N_15tLAa89hj8nrG96xg@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi, I am studying gain RFNOC example, there is two
        Verilog source in the FPGA-src folder.
        <div>(see this link=C2=A0<a
            href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UH=
D_4.0"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0</a>)</div>
        <div>
          <div>
            <div><b>noc_shell_gain.v </b>&amp; <b>rfnoc_block_gain.v=C2=A0=
=C2=A0</b><br>
            </div>
          </div>
          <div><br>
          </div>
          <div>It is described=C2=A0in the referer link,=C2=A0</div>
          <div>
            <ul style=3D"margin:0.3em 0px 0px
              1.6em;padding:0px;color:rgb(0,0,0);font-family:&quot;Lucida
              Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif">
              <li style=3D"margin-bottom:0.1em"><font size=3D"1"><b><code
style=3D"font-family:monospace,Courier;background-color:rgb(249,249,249);=
border:1px
                      solid
                      rgb(221,221,221);border-radius:2px;padding:1px
                      4px">rfnoc_block_gain.v</code><br>
                    The top-level synthesizable file for the Gain block</=
b></font></li>
              <li style=3D"margin-bottom:0.1em"><font size=3D"1"><b><code
style=3D"font-family:monospace,Courier;background-color:rgb(249,249,249);=
border:1px
                      solid
                      rgb(221,221,221);border-radius:2px;padding:1px
                      4px">noc_shell_gain.v</code><br>
                    The NoC Shell for the Gain block</b></font></li>
            </ul>
            <div><font face=3D"Lucida Sans Unicode, Lucida Grande,
                sans-serif" color=3D"#000000">My question is:</font></div=
>
          </div>
          <div>What's difference between noc_shell_gain.v &amp;
            rfnoc_block_gain.v =C2=A0in RFNOC blocks.</div>
        </div>
        <div>What's NOC shell??</div>
        <div><br>
        </div>
        <div>thanks in advance</div>
      </div>
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
    From:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/Getting_S=
tarted_with_RFNoC_in_UHD_4.0#What_is_RFNoC.3F">https://kb.ettus.com/Getti=
ng_Started_with_RFNoC_in_UHD_4.0#What_is_RFNoC.3F</a><br>
    <br>
    <br>
    he IP blocks in RFNoC are called <i>RFNoC blocks</i>. The RFNoC
    blocks wrap the IP and provide a custom interface to the RFNoC
    infrastructure through a tool-generated interface called the <i>NoC
      Shell</i>. Many standard blocks are included in UHD 4.0. These
    blocks enable typical operation of the USRP and allow RFNoC to
    connect to the different hardware components of the USRP. Several of
    the included blocks are described in the section <a
href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Availa=
ble_RFNoC_Blocks">Available
      RFNoC Blocks</a>. You can mix the available blocks for your
    application, or develop your own custom RFNoC blocks with your own
    IP to open up new applications. The NoC Shell hides the complexity
    of RFNoC from your block, making it easy to plug your IP into the
    USRP.<br>
    <br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>
--------------zxs4f0e700IG3HPhfJ75nIJ4--

--===============5849683000778663065==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5849683000778663065==--
