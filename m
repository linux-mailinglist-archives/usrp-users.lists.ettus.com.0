Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB71F1418
	for <lists+usrp-users@lfdr.de>; Wed,  6 Nov 2019 11:38:44 +0100 (CET)
Received: from [::1] (port=33998 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iSIi0-0003Mv-9y; Wed, 06 Nov 2019 05:38:40 -0500
Received: from mail-ed1-f68.google.com ([209.85.208.68]:43372)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <msee17016@itu.edu.pk>)
 id 1iSIhw-0003E4-Q1
 for usrp-users@lists.ettus.com; Wed, 06 Nov 2019 05:38:36 -0500
Received: by mail-ed1-f68.google.com with SMTP id w6so1499943edx.10
 for <usrp-users@lists.ettus.com>; Wed, 06 Nov 2019 02:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itu-edu-pk.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=Apy4MiUjUT6KsvZkHb/1yMFpomLbx0P/DKtNg25fhh8=;
 b=dyiRZ9WgRkSusPccTF5dcfrrV4F9OMqgwTdFgRInw23AtlwUkBeeC7AD36h1OoV8rW
 h7F7ftKiNtRf8JhUuGCpbYtd+SSi66TdocOhFFUiXBmY9VgYeATSoq4stKIIHLdnI0QW
 FudkbizvDY18vnMtg8PuWS1v0sKM1mGtNISzNCmBQMjRQAxE7AJGJOfIWB7OriKRaNII
 gF/6BArMm1/K4+HDt3wdFMy2+ntrwX+t1+JnDsqpfqFDNXKljg80Ih4bWbmXrlr0YwGZ
 7JBT6U0iKryD2JJgAp2sHkvnKrkU3CLr8mebxS4xFB7jP91b/4L6pMy/p4hB8XaKxoMz
 nfRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Apy4MiUjUT6KsvZkHb/1yMFpomLbx0P/DKtNg25fhh8=;
 b=g+2tWYQ+MiCC9laA2VOhZQ3JhvM8XpvGuDUHxWex5hGinD5PzWkGsNoU+lr4SWQqhS
 4cTb4G7tfSfq7NCjTOtI348gXsThocswvV7nkF/znYHsmqkLEGfb56VG/75lWd9Ct2FH
 WXGDxXLVHdfk2YyneVvSd2pLRLu4VNg60jgHc9ZiQNG6Vmv/XhU7t8zMhXLvKz62Zfx5
 p7GGIdNnpyYV19DXflboeKsWtmtnIA0iN8GZa0XkJRaiQ4FSDHFL2BGed8j16H2Q+O37
 GY8TCn9B4UPpPKZV7gr1LjP1zZTz9Dd9ou6Y7AuDbINDJAxL6oDHkLp9pfEIWUf27wZU
 iHBg==
X-Gm-Message-State: APjAAAXVtzHhdJRS1cmJ28ZmR8hZKA4PbVhH185BXTF5V4jx1of5ZyLL
 LnPBY6gILLh4ZbE19ZApoWZqGRx4HYMW2PwQAze3FgNIeL2BSw==
X-Google-Smtp-Source: APXvYqzWNwPg8mPlBG6kN27//qdN/lNDQnjRpGe7QQm5tVDaUs5qcg06Erj6/D08Dod3MbCrVQHLy5FHDxnply2V+yQ=
X-Received: by 2002:a05:6402:20c:: with SMTP id
 t12mr1785277edv.109.1573036675403; 
 Wed, 06 Nov 2019 02:37:55 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 6 Nov 2019 15:37:19 +0500
Message-ID: <CAM-VyLj5FE32V_+z=yS5amYfHv8p6azfaSm_mkzJcw3yO-FAsA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] UHD and FPGA Image mismatch error
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
From: Bisma Amjad via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Bisma Amjad <msee17016@itu.edu.pk>
Content-Type: multipart/mixed; boundary="===============0883698742920898272=="
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

--===============0883698742920898272==
Content-Type: multipart/alternative; boundary="00000000000041b5c20596ab24ef"

--00000000000041b5c20596ab24ef
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi there,


=C2=B7         I have installed GNU Radio using PyBombs from
http://ecee.colorado.edu/~mathys/ecen4652/SDRsoftware/GNURadioInstall.html



=C2=B7         UHD was installed from
https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain=
_(UHD_and_GNU_Radio)_on_Linux



=C2=B7         GNU Radio works fine. I=E2=80=99ve created an FM Radio appli=
cation on
it.  USRP E320 is also detected on the system. However, when the flowgraph
is executed on GNU Radio, following error shows up:



*RuntimeError: FPGA component =E2=80=98noc_shell=E2=80=99 is revision 2 and=
 UHD supports
revision 3. Please either upgrade the FPGA image (Recommended) or downgrade
UHD.*

*Troubleshooting:*

=C2=B7As indicated by few web sources, Pybombs could=E2=80=99ve created iss=
ues during
GNU Radio installation. So, I re-installed GNU radio and UHD without using
pybombs (from
https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain=
_(UHD_and_GNU_Radio)_on_Linux)
.

 But the error still persists.



*RuntimeError: FPGA component =E2=80=98noc_shell=E2=80=99 is revision 2 and=
 UHD supports
revision 6. Please either upgrade the FPGA image (Recommended) or downgrade
UHD.*





=C2=B7Moreover, the required installation libraries for UHD are supported f=
or
Ubuntu version 18.10 or less. Whereas, our system has Ubuntu version 19.0.
Could this be the possible reason for this issue? Should I downgrade Ubuntu
to 18.10?

--00000000000041b5c20596ab24ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi there,<div><p class=3D"MsoNormal" align=3D"center" styl=
e=3D"text-align:center;margin:0in 0in 8pt;line-height:107%;font-size:11pt;f=
ont-family:Calibri,sans-serif"><br></p>

<p class=3D"gmail-MsoListParagraphCxSpFirst" style=3D"margin:0in 0in 0.0001=
pt 0.5in;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif"><s=
pan style=3D"font-size:12pt;line-height:107%;font-family:Symbol">=C2=B7<spa=
n style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font-=
stretch:normal;font-size:7pt;line-height:normal;font-family:&quot;Times New=
 Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><span style=3D"font-size:12pt;line-height:107%">I
have installed GNU Radio using PyBombs from </span><a href=3D"http://ecee.c=
olorado.edu/~mathys/ecen4652/SDRsoftware/GNURadioInstall.html" style=3D"col=
or:blue"><span style=3D"font-size:12pt;line-height:107%">http://ecee.colora=
do.edu/~mathys/ecen4652/SDRsoftware/GNURadioInstall.html</span></a><span st=
yle=3D"font-size:12pt;line-height:107%"></span></p>

<p class=3D"gmail-MsoListParagraphCxSpMiddle" style=3D"margin:0in 0in 0.000=
1pt 0.5in;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif"><=
span style=3D"font-size:12pt;line-height:107%">=C2=A0</span></p>

<p class=3D"gmail-MsoListParagraphCxSpMiddle" style=3D"margin:0in 0in 0.000=
1pt 0.5in;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif"><=
span style=3D"font-size:12pt;line-height:107%;font-family:Symbol">=C2=B7<sp=
an style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;font-size:7pt;line-height:normal;font-family:&quot;Times Ne=
w Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><span style=3D"font-size:12pt;line-height:107%">UHD
was installed from </span><a href=3D"https://kb.ettus.com/Building_and_Inst=
alling_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux" style=
=3D"color:blue"><span style=3D"font-size:12pt;line-height:107%">https://kb.=
ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_G=
NU_Radio)_on_Linux</span></a><span style=3D"font-size:12pt;line-height:107%=
"></span></p>

<p class=3D"gmail-MsoListParagraphCxSpMiddle" style=3D"margin:0in 0in 0.000=
1pt 0.5in;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif"><=
span style=3D"font-size:12pt;line-height:107%">=C2=A0</span></p>

<p class=3D"gmail-MsoListParagraphCxSpMiddle" style=3D"margin:0in 0in 0.000=
1pt 0.5in;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif"><=
span style=3D"font-size:12pt;line-height:107%;font-family:Symbol">=C2=B7<sp=
an style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;font-size:7pt;line-height:normal;font-family:&quot;Times Ne=
w Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><span style=3D"font-size:12pt;line-height:107%">GNU
Radio works fine. I=E2=80=99ve created an FM Radio application on it.=C2=A0=
 USRP E320 is also detected on the system.
However, when the flowgraph is executed on GNU Radio, following error shows=
 up:</span></p>

<p class=3D"gmail-MsoListParagraphCxSpMiddle" style=3D"margin:0in 0in 0.000=
1pt 0.5in;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif"><=
span style=3D"font-size:12pt;line-height:107%">=C2=A0</span></p>

<p class=3D"gmail-MsoListParagraphCxSpLast" style=3D"margin:0in 0in 8pt 0.5=
in;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif"><i><span=
 style=3D"font-size:12pt;line-height:107%;color:red">RuntimeError: FPGA
component =E2=80=98noc_shell=E2=80=99 is revision 2 and UHD supports revisi=
on 3. Please either
upgrade the FPGA image (Recommended) or downgrade UHD.</span></i></p>

<p class=3D"MsoNormal" style=3D"text-align:justify;margin:0in 0in 8pt;line-=
height:107%;font-size:11pt;font-family:Calibri,sans-serif"><b><span style=
=3D"font-size:12pt;line-height:107%">Troubleshooting:</span></b></p>

<p class=3D"gmail-MsoListParagraphCxSpFirst" style=3D"text-align:justify;ma=
rgin:0in 0in 0.0001pt 0.5in;line-height:107%;font-size:11pt;font-family:Cal=
ibri,sans-serif"><span style=3D"font-size:12pt;line-height:107%;font-family=
:Symbol">=C2=B7</span><span style=3D"font-size:12pt;line-height:107%">As
indicated by few web sources, Pybombs could=E2=80=99ve created issues durin=
g GNU Radio
installation. So, I re-installed GNU radio and UHD without using pybombs (f=
rom </span><a href=3D"https://kb.ettus.com/Building_and_Installing_the_USRP=
_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux)" style=3D"color:blue">=
https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain=
_(UHD_and_GNU_Radio)_on_Linux)</a><span style=3D"font-size:12pt;line-height=
:107%">.<b></b></span></p>

<p class=3D"gmail-MsoListParagraphCxSpMiddle" style=3D"text-align:justify;m=
argin:0in 0in 0.0001pt 0.5in;line-height:107%;font-size:11pt;font-family:Ca=
libri,sans-serif"><span style=3D"font-size:12pt;line-height:107%">=C2=A0But=
 the error still persists.<b></b></span></p>

<p class=3D"gmail-MsoListParagraphCxSpMiddle" style=3D"text-align:justify;m=
argin:0in 0in 0.0001pt 0.5in;line-height:107%;font-size:11pt;font-family:Ca=
libri,sans-serif"><b><span style=3D"font-size:12pt;line-height:107%">=C2=A0=
</span></b></p>

<p class=3D"gmail-MsoListParagraphCxSpMiddle" style=3D"margin:0in 0in 0.000=
1pt 0.5in;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif"><=
i><span style=3D"font-size:12pt;line-height:107%;color:red">RuntimeError: F=
PGA
component =E2=80=98noc_shell=E2=80=99 is revision 2 and UHD supports revisi=
on 6. Please either
upgrade the FPGA image (Recommended) or downgrade UHD.</span></i></p>

<p class=3D"gmail-MsoListParagraphCxSpMiddle" style=3D"text-align:justify;m=
argin:0in 0in 0.0001pt 0.5in;line-height:107%;font-size:11pt;font-family:Ca=
libri,sans-serif"><b><span style=3D"font-size:12pt;line-height:107%">=C2=A0=
</span></b></p>

<p class=3D"gmail-MsoListParagraphCxSpMiddle" style=3D"text-align:justify;m=
argin:0in 0in 0.0001pt 0.5in;line-height:107%;font-size:11pt;font-family:Ca=
libri,sans-serif"><b><span style=3D"font-size:12pt;line-height:107%">=C2=A0=
</span></b></p>

<p class=3D"gmail-MsoListParagraphCxSpLast" style=3D"text-align:justify;mar=
gin:0in 0in 8pt 0.5in;line-height:107%;font-size:11pt;font-family:Calibri,s=
ans-serif"><span style=3D"font-size:12pt;line-height:107%;font-family:Symbo=
l">=C2=B7</span><span style=3D"font-size:12pt;line-height:107%">Moreover,
the required installation libraries for UHD are supported for Ubuntu versio=
n
18.10 or less. Whereas, our system has Ubuntu version 19.0. Could this be t=
he
possible reason for this issue? Should I downgrade Ubuntu to 18.10?<b></b><=
/span></p></div></div>

--00000000000041b5c20596ab24ef--


--===============0883698742920898272==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0883698742920898272==--

