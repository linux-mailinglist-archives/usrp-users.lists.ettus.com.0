Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 753644AB093
	for <lists+usrp-users@lfdr.de>; Sun,  6 Feb 2022 17:10:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D20D3854D8
	for <lists+usrp-users@lfdr.de>; Sun,  6 Feb 2022 11:10:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UFKPrrKI";
	dkim-atps=neutral
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 5CC5F385433
	for <usrp-users@lists.ettus.com>; Sun,  6 Feb 2022 11:09:14 -0500 (EST)
Received: by mail-yb1-f176.google.com with SMTP id j2so33793893ybu.0
        for <usrp-users@lists.ettus.com>; Sun, 06 Feb 2022 08:09:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=3nNaO77+ObWBzwa4TzTVAH6mxaB6e5WC5SFYjpRvazQ=;
        b=UFKPrrKIUA1agegYUVNPsaiBDsuJoZIc6SCdl+EsVn/tbdUYjWyNm0/oTElNkIagMV
         ZzAgKuE/IKoWPnNqiimyeLIZ/EItLjs632WPG3T8/uClIBoFfXLzH9rQWZ/KVfUzMldG
         052AlZU2d/8N8slmXRzXbkAZ0g9+wxqqmfOFuevKKRbMAHPodxubYsE5MnyltZZXFd27
         tEjN10JTN4KPsNYF6112TDqCifVUQzZye5cJXkPgwwvdPGL+qhZv0LfJ3xMnFdplnuBt
         fsY9VGE1YWQKDbBnfBkZ0pvzvBuizsVdMEfGJwcX8YIc/cb4J6kUZRGO5GHSeJI95j2l
         RTVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=3nNaO77+ObWBzwa4TzTVAH6mxaB6e5WC5SFYjpRvazQ=;
        b=xVlKEsTS3l69Hp406pPgWeOiG6nZE0pQX1eOk600nQX/l3/RqaQCSvAMSpmSW3hpVR
         A2plZWFOOGjhwQoq7pSgDpoWdYTPDwY5l8CJGArAaZzhUgXsoV3/5B2OHcZQpo97Fk/a
         q+MgxV90penxRlKhw8DnsbziYaM/F2E/IzKkn3buv/f4K9Ky/XbbLvOwwlSj5sOXqlhA
         OXfRB3XteT7dp5xUc8oVV3a3uM6qovc65TOY0Sr6gSoyPggHfv+ngwJ2RQ9JH9wxLS8r
         EIC3+ye6VBttAML9DlrOMtXZVmyv88aaerh90J/4qhFvVC8h7Za84kYgwTXHYDnCcuaI
         uX1A==
X-Gm-Message-State: AOAM533sBcr7S0xOUTuRLgrtEoEh9kmZASedMhvnRcY7HL32rklpEA7a
	f4HL6F5q6pBbIG8jgw11cIHdyMeAteWQe+Zn2ubt8yWbhO57+tnX
X-Google-Smtp-Source: ABdhPJyk/a6AGkA3dZUb9Ux2PQ24yWd031oqeBWdUSoHy28OMjeHKtY1VX+9BLjfEFGHVLR9zhAoJPkhxrlHOdP86Mg=
X-Received: by 2002:a81:e50b:: with SMTP id s11mr2391162ywl.262.1644163752940;
 Sun, 06 Feb 2022 08:09:12 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Sun, 6 Feb 2022 19:38:53 +0330
Message-ID: <CAA=S3Pt1itmEnH62eLNapn=3V3GBOyLNTXqzDrjwK_PPgTi-fQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: ZEGJKDCICXZKOEFQ2IHRBNAECFQZ3XPM
X-Message-ID-Hash: ZEGJKDCICXZKOEFQ2IHRBNAECFQZ3XPM
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Vivado: Version 2019.1 not found error when i want to a built a custom RFNOC block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZEGJKDCICXZKOEFQ2IHRBNAECFQZ3XPM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0244416075355117772=="

--===============0244416075355117772==
Content-Type: multipart/alternative; boundary="00000000000072599805d75bb44c"

--00000000000072599805d75bb44c
Content-Type: text/plain; charset="UTF-8"

I copied the RFNOC example in a folder. for building, I used these
commands...
Building and Installing an OOT Module
mkdir build
cd build
cmake .. -DUHD_FPGA_DIR=/home/sp/Documents/uhd-4.1.0.5/fpga
make
Building an FPGA Image with OOT Blocks
when I want to build FPGA I used these commands...

make x310_rfnoc_image_core

I faced with this error
*Errors:*



*Setting up a 64-bit FPGA build environment for the USRP-X3x0...- Vivado:
Version 2019.1 not found in /opt/Xilinx/Vivado (ERROR.. Builds and
simulations will not work)          Use the --vivado-path option to
override the search pathBuilt target x310_rfnoc_image_core*

When I used these options I was faced another error...

make x310_rfnoc_image_core --vivado-path=/home/sp/xilinx/Vivado

*Errors:*
make: unrecognized option '--vivado-path=/home/sp/xilinx/Vivado'

How can build Gain RFNOC example successfully?
thanks in advance

--00000000000072599805d75bb44c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I copied the RFNOC example in a folder. for building, I us=
ed these commands...<div><h3 style=3D"color:rgb(0,0,0);background-image:non=
e;background-position:initial;background-size:initial;background-repeat:ini=
tial;background-origin:initial;background-clip:initial;margin:0.3em 0px 0px=
;overflow:hidden;padding-top:0.5em;padding-bottom:0px;border-bottom:none;li=
ne-height:1.6;font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Gran=
de&quot;,sans-serif"><span class=3D"gmail-mw-headline" id=3D"gmail-Building=
_and_Installing_an_OOT_Module"><font size=3D"2">Building and Installing an =
OOT Module</font></span></h3></div><div>mkdir build=C2=A0<br><div>cd build<=
/div>cmake .. -DUHD_FPGA_DIR=3D/home/sp/Documents/uhd-4.1.0.5/fpga<br><div>=
make<br></div></div><div><h3 style=3D"color:rgb(0,0,0);background-image:non=
e;background-position:initial;background-size:initial;background-repeat:ini=
tial;background-origin:initial;background-clip:initial;margin:0.3em 0px 0px=
;overflow:hidden;padding-top:0.5em;padding-bottom:0px;border-bottom:none;li=
ne-height:1.6;font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Gran=
de&quot;,sans-serif"><span class=3D"gmail-mw-headline" id=3D"gmail-Building=
_an_FPGA_Image_with_OOT_Blocks"><font size=3D"2">Building an FPGA Image wit=
h OOT Blocks</font></span></h3><div><span class=3D"gmail-mw-headline"><font=
 size=3D"2">when I want to build FPGA I used these commands...</font></span=
></div><div><span class=3D"gmail-mw-headline"><font size=3D"2"><br></font><=
/span></div>make x310_rfnoc_image_core<br></div><div><br></div><div>I faced=
 with this error=C2=A0</div><div><b>Errors:</b></div><div><b>Setting up a 6=
4-bit FPGA build environment for the USRP-X3x0...<br>- Vivado: Version 2019=
.1 not found in /opt/Xilinx/Vivado (ERROR.. Builds and simulations will not=
 work)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Use the --vivado-path option t=
o override the search path<br>Built target x310_rfnoc_image_core</b><br></d=
iv><div><br></div><div>When I used these options I was=C2=A0faced another e=
rror...</div><div><br></div><div>make x310_rfnoc_image_core --vivado-path=
=3D/home/sp/xilinx/Vivado<br></div><div><br></div><div><b>Errors:</b></div>=
<div>make: unrecognized option &#39;--vivado-path=3D/home/sp/xilinx/Vivado&=
#39;<br></div><div><br></div><div>How can build Gain RFNOC example successf=
ully?</div><div>thanks in=C2=A0advance</div><div><br></div><div><br></div><=
div><br></div><div><br></div><div><br></div></div>

--00000000000072599805d75bb44c--

--===============0244416075355117772==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0244416075355117772==--
