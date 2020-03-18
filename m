Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A76E1899C2
	for <lists+usrp-users@lfdr.de>; Wed, 18 Mar 2020 11:42:23 +0100 (CET)
Received: from [::1] (port=33218 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jEW9S-0000bA-VD; Wed, 18 Mar 2020 06:42:18 -0400
Received: from mail-qk1-f181.google.com ([209.85.222.181]:42663)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bertolini.rodolphe@gmail.com>)
 id 1jEW9P-0000X1-EM
 for usrp-users@lists.ettus.com; Wed, 18 Mar 2020 06:42:15 -0400
Received: by mail-qk1-f181.google.com with SMTP id e11so37740189qkg.9
 for <usrp-users@lists.ettus.com>; Wed, 18 Mar 2020 03:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=RkBsIisjsJUDM+hSb38tRu1oC2ZNhF1hkmH2K4f+qaw=;
 b=FmQSaBC+E/H0ruTgGSxE7mI0X9aPqU3DG2LspLExGrrS5czSKtA/Bh6QITjfdJOFEZ
 0AI84QXkNcAsJxdMSPlGOoX4OZNDdxFBx+5yE5fVW84b8/xajpipKTT8uF151OmGbT/w
 3vQSIlZbdo+3F/4KxHWnsDIiabrbjo0hr/s6BKJ2fUfVhNI3PwhvGs3uawQxx44dATAi
 ryWTiZHPOs3NQOPgyu6PBtsDltjiRAS+Lri5ZVNxkqwlPwrGlg3rKSuYZlFm77K/Y7jF
 VcyW5SoThqSyyFibXUOtrA3z4PQjph9v/w029PYYYF2S+4uw837YKqWurUE4wy8dATzJ
 jOhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=RkBsIisjsJUDM+hSb38tRu1oC2ZNhF1hkmH2K4f+qaw=;
 b=hFjihrfwCYb3bIJSSu1ZBt7XCWBUeB96NNU92YIljPWr5UKQL8pApitBtaGUxQwgE8
 i8ZoYRPXY9M1N92gMyU2XAvbHoJy7XQqAGdi5M00MS9fxZuwYQuXNdmMeyPzHcnPFVFS
 0FdF/ple7xWVfxokYvF3T1Xp7pfb6Z48SIpjG4wQ88FbAi8Sv5RobhsAHdZlcMdcJQUd
 JmY49RDoEfPHd0pfYK7OtGpKVt553XQ9FJmAsmWE6V4PQwPbp4eItOiwrJPOylSVvI4e
 2oVUHqxTPN+SRy0BkvmGI7tlQh63iLDEDlNiBCmfKeo2q+znPEdDoXKbZUI9eVR9IAez
 rI/Q==
X-Gm-Message-State: ANhLgQ1dNdWTqScpnLNTZhDUaHKb56NzSX5uietL4pm4mOgGn7f09Pn9
 y/HI4XaFItQ82iVYLCEzGwbCN3jbC4Bc79EcDN3iSI68
X-Google-Smtp-Source: ADFU+vsMygcB51CeJGjgf+ipmnR1Y5jtquApzU2dWPtVOGFFWGRr2UYs+qDjYZ+8P3vjQOoc38VvYTrM0Qwl6JQ7iqc=
X-Received: by 2002:a25:6043:: with SMTP id u64mr4921979ybb.117.1584528094589; 
 Wed, 18 Mar 2020 03:41:34 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 18 Mar 2020 11:41:23 +0100
Message-ID: <CAKaLowSaOhC6L9B4axxwV0=eq=PXzwRoCn22kqyfu529rTr7Dw@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] Apologize if duplicate : UHD 3.15 isn't using USB 3.0
 although Linux driver are loaded
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rodolphe Bertolini via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rodolphe Bertolini <bertolini.rodolphe@gmail.com>
Content-Type: multipart/mixed; boundary="===============0151400834578669278=="
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

--===============0151400834578669278==
Content-Type: multipart/alternative; boundary="000000000000374b7f05a11eb274"

--000000000000374b7f05a11eb274
Content-Type: text/plain; charset="UTF-8"

Dear all,

I have been using a USRP B210 on a laptop for months now. For reasons, I
switched to another Linux session, and using this session UHD fails to talk
to B210 over USB 3.0

dmesg tells me it is using the xhci_hcd driver (which I believe is the
driver for USB 3.0), and is also mentioning  "new high-speed USB", which
leads me to think that USB 3.0 link is well recognized and active:

[  306.133028] usb 1-1: new high-speed USB device number 16 using xhci_hcd
[  306.260349] usb 1-1: New USB device found, idVendor=2500, idProduct=0020
[  306.260351] usb 1-1: New USB device strings: Mfr=1, Product=2,
SerialNumber=3
[  306.260352] usb 1-1: Product: USRP B200
[  306.260354] usb 1-1: Manufacturer: Ettus Research LLC
[  306.260355] usb 1-1: SerialNumber: 31B9289

However, when running any uhd command line, it fails using USB 3.0:

[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
UHD_3.15.0.0-release
[INFO] [B200] Detected Device: B210
[INFO] [B200] Operating over USB 2.

I have also tried with UHD 3.14.1, no improvement.

I remember having a similar issue (maybe the same?) that had been solved
with something related to udev, but I sadly didn't take any note of this.

Do you have any hint?

Thank you.
Regards,
Rodolphe

--000000000000374b7f05a11eb274
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear all,</div><div><br></div><div>I have been using =
a USRP B210 on
 a laptop for months now. For reasons, I switched to another Linux=20
session, and using this session UHD fails to talk to B210 over USB 3.0<br><=
/div><div><br></div><div>dmesg
 tells me it is using the xhci_hcd driver (which I believe is the driver
 for USB 3.0), and is also mentioning=C2=A0 &quot;new high-speed USB&quot;,=
 which leads
 me to think that USB 3.0 link is well recognized and active:</div><div><br=
></div><div>[ =C2=A0306.133028] usb 1-1: new high-speed USB device number 1=
6 using xhci_hcd<br>[ =C2=A0306.260349] usb 1-1: New USB device found, idVe=
ndor=3D2500, idProduct=3D0020<br>[ =C2=A0306.260351] usb 1-1: New USB devic=
e strings: Mfr=3D1, Product=3D2, SerialNumber=3D3<br>[ =C2=A0306.260352] us=
b 1-1: Product: USRP B200<br>[ =C2=A0306.260354] usb 1-1: Manufacturer: Ett=
us Research LLC<br>[ =C2=A0306.260355] usb 1-1: SerialNumber: 31B9289</div>=
<div><br></div><div>However, when running any uhd command line, it fails us=
ing USB 3.0:</div><div><br></div><div>[INFO] [UHD] linux; GNU C++ version 5=
.4.0 20160609; Boost_105800; UHD_3.15.0.0-release<br>[INFO] [B200] Detected=
 Device: B210<br>[INFO] [B200] Operating over USB 2.</div><div><br></div><d=
iv>I have also tried with UHD 3.14.1, no improvement.</div><div><br></div><=
div>I
 remember having a similar issue (maybe the same?) that had been solved=20
with something related to udev, but I sadly didn&#39;t take any note of=20
this.</div><div><br></div><div>Do you have any hint?</div><div><br></div><d=
iv>Thank you.<br></div><div>Regards,</div><div>Rodolphe</div></div>

--000000000000374b7f05a11eb274--


--===============0151400834578669278==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0151400834578669278==--

