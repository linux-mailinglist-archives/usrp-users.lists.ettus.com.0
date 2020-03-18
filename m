Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECC1189C32
	for <lists+usrp-users@lfdr.de>; Wed, 18 Mar 2020 13:44:00 +0100 (CET)
Received: from [::1] (port=41314 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jEY3C-0002JM-1D; Wed, 18 Mar 2020 08:43:58 -0400
Received: from mail-ed1-f48.google.com ([209.85.208.48]:46135)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bertolini.rodolphe@gmail.com>)
 id 1jEY37-00024U-TD
 for usrp-users@lists.ettus.com; Wed, 18 Mar 2020 08:43:54 -0400
Received: by mail-ed1-f48.google.com with SMTP id ca19so30728506edb.13
 for <usrp-users@lists.ettus.com>; Wed, 18 Mar 2020 05:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DzktUSNmSQAsndsxOwkNXrx9QMac6oDcOtbyCvk1Tg0=;
 b=EqukmoKuW5fwSr1etnDS+NSgr4az4Yp3CMk9Lh+JqnQoeGoKutIc2A2FT2nqZer0C/
 xdA6W+2NpfUcgzeNn6Dy1NK1P4E0bGLoFQlUxGXNOeMCprcgfUCJqbqVAJZwsiPx6AlK
 OpgxeS3YzJbuLmBnGLtPrMIjr/SpMW5XDJpsuFwfvcBx1VqG6BKeIhpmwnxljOlq06JU
 FwxB9tEWE7nqYeVSgfX6C7Nzdn0+IwE7Br23ACsRwlcjgxqKP8l0UMXoJeoWwUua0gH0
 XuF9hDT3rSFGr99PTs/44/TMa5ioJzU5zydRai/0DShq6mYQXmfZ1rFjjXLC9tp3V9EO
 K4rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DzktUSNmSQAsndsxOwkNXrx9QMac6oDcOtbyCvk1Tg0=;
 b=uQLlP5WbxyqIeW/ggJDbKb9yNKRjZ8hPbdU1ZOnjryYUkhgtkLDR06n4ogZcEpuj7u
 kTdlY31Q1EEJfbUq3rOq9fO1Y/o6RuoiCN0/x/j6USNKa2eNu9aaqFnfrLpcV+NHUX/M
 YizFqIIdK7mYr/XgLjQwqnoOa0I+xmOdMMaEVIU6sLlUkp035nvakEL86fNw/Q9anVJP
 BuLJTSf+MavNgDEjAeyypuEPZTkwqi7/cbZyEUUjnXIxAhKvUrtHfFx3V0Soop3Hi921
 vmU/CJvBFahuTDY4AL9S9pz6C/B1HAJCytTk77sxbcKuZ+C7dehSOOEBIyRtFeYIOt7i
 iQXA==
X-Gm-Message-State: ANhLgQ3BRkd4mSNGDTYZlz8vyAJft1jtnwCTizrwiD56dpfBJpO0mLrq
 WJr2+/eJYPdaaWZLcffGFNFsNnhlEgSPMvgwxDs=
X-Google-Smtp-Source: ADFU+vt1Cg+ztwnBLAAHXmid5o3/Oj5YG5msWKjZoMM/qXkl/yN2sZo84jB9o/bLLhxowPouClXr7KKgaiXeOyfCiOI=
X-Received: by 2002:a17:906:33c9:: with SMTP id
 w9mr4011532eja.382.1584535392641; 
 Wed, 18 Mar 2020 05:43:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAKaLowSaOhC6L9B4axxwV0=eq=PXzwRoCn22kqyfu529rTr7Dw@mail.gmail.com>
 <1661e285-c25d-8272-0e49-1d0f896033b4@comcast.net>
In-Reply-To: <1661e285-c25d-8272-0e49-1d0f896033b4@comcast.net>
Date: Wed, 18 Mar 2020 13:43:01 +0100
Message-ID: <CAKaLowQZETbs6g=Ry5wGxuV7cJRM7eQWKmh1zyDDtHLrYuOxvQ@mail.gmail.com>
To: Ron Economos <w6rz@comcast.net>
Subject: Re: [USRP-users] Apologize if duplicate : UHD 3.15 isn't using USB
 3.0 although Linux driver are loaded
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1674548386037026190=="
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

--===============1674548386037026190==
Content-Type: multipart/alternative; boundary="000000000000366bd005a1206577"

--000000000000366bd005a1206577
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Ron, (I resend the email, I forgot to "reply to all")
Thank you for your quick feedback.

Ok I understand. More information, lspci gives me :
00:14.0 USB controller: Intel Corporation Cannon Lake PCH USB 3.1 xHCI Host
Controller (rev 10)
So I don't get why doesn't Ubuntu enables USB 3.0 with the B210.

My problems looks like this one
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-July/05732=
3.html

The output of lsusb -t is similar, with "Driver=3D(none)"
A message of above mentioned thread suggests to enable 3.0 option in BIOS,
however I don't have such option. And even if I had, I didn't not change
anything between reboot / session switch so I really don't understand where
this regression is coming from.
Also I did the "solution" mentioned by the author :

uhd_image_loader --args=3D"type=3Db200,reset"


Which did not improve the situation.


Thank you again

Rodolphe

Le mer. 18 mars 2020 =C3=A0 12:02, Ron Economos via USRP-users <
usrp-users@lists.ettus.com> a =C3=A9crit :

> dmesg should say "new SuperSpeed USB device number X using xhci_hcd" or
> "new SuperSpeed Gen 1 USB device number X using xhci_hcd" if you have a
> newer kernel.
>
> "high-speed" means USB 2.0.
>
> Ron
> On 3/18/20 03:41, Rodolphe Bertolini via USRP-users wrote:
>
> Dear all,
>
> I have been using a USRP B210 on a laptop for months now. For reasons, I
> switched to another Linux session, and using this session UHD fails to ta=
lk
> to B210 over USB 3.0
>
> dmesg tells me it is using the xhci_hcd driver (which I believe is the
> driver for USB 3.0), and is also mentioning  "new high-speed USB", which
> leads me to think that USB 3.0 link is well recognized and active:
>
> [  306.133028] usb 1-1: new high-speed USB device number 16 using xhci_hc=
d
> [  306.260349] usb 1-1: New USB device found, idVendor=3D2500, idProduct=
=3D0020
> [  306.260351] usb 1-1: New USB device strings: Mfr=3D1, Product=3D2,
> SerialNumber=3D3
> [  306.260352] usb 1-1: Product: USRP B200
> [  306.260354] usb 1-1: Manufacturer: Ettus Research LLC
> [  306.260355] usb 1-1: SerialNumber: 31B9289
>
> However, when running any uhd command line, it fails using USB 3.0:
>
> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
> UHD_3.15.0.0-release
> [INFO] [B200] Detected Device: B210
> [INFO] [B200] Operating over USB 2.
>
> I have also tried with UHD 3.14.1, no improvement.
>
> I remember having a similar issue (maybe the same?) that had been solved
> with something related to udev, but I sadly didn't take any note of this.
>
> Do you have any hint?
>
> Thank you.
> Regards,
> Rodolphe
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000366bd005a1206577
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Ron, (I resend the email, I forgot to &quot;rep=
ly to all&quot;)<br></div><div>Thank you for your quick feedback.</div><div=
><br></div><div>Ok I understand. More information, lspci gives me : <br></d=
iv><div>00:14.0 USB controller: Intel Corporation Cannon Lake PCH USB 3.1 x=
HCI Host Controller (rev 10)</div><div>So I don&#39;t get why doesn&#39;t U=
buntu enables USB 3.0 with the B210.<br></div><div><br></div><div>My proble=
ms looks like this one <a href=3D"http://lists.ettus.com/pipermail/usrp-use=
rs_lists.ettus.com/2018-July/057323.html" target=3D"_blank">http://lists.et=
tus.com/pipermail/usrp-users_lists.ettus.com/2018-July/057323.html</a></div=
><div><br></div><div>The output of lsusb -t is similar, with &quot;Driver=
=3D(none)&quot;<br></div>A
 message of above mentioned thread suggests to enable 3.0 option in=20
BIOS, however I don&#39;t have such option. And even if I had, I didn&#39;t=
 not=20
change anything between reboot / session switch so I really don&#39;t=20
understand where this regression is coming from.<div>Also I did the &quot;s=
olution&quot; mentioned by the author :</div><div><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US"><span>uhd_image_loader
            --args=3D&quot;type=3Db200,reset&quot;</span></span></p><p clas=
s=3D"MsoNormal"><br></p><p class=3D"MsoNormal">Which did not improve the si=
tuation.</p><p class=3D"MsoNormal"><br></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US"><span></span><span></span></span></p></div><div>Thank you again=
</div><font color=3D"#888888"><div><br></div><div>Rodolphe</div></font></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=
=C2=A0mer. 18 mars 2020 =C3=A0=C2=A012:02, Ron Economos via USRP-users &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p>dmesg should say &quot;new SuperSpeed USB device number X using
      xhci_hcd&quot; or &quot;new SuperSpeed Gen 1 USB device number X usin=
g
      xhci_hcd&quot; if you have a newer kernel.</p>
    <p>&quot;high-speed&quot; means USB 2.0.<br>
    </p>
    <p>Ron<br>
    </p>
    <div>On 3/18/20 03:41, Rodolphe Bertolini
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Dear all,</div>
        <div><br>
        </div>
        <div>I have been using a USRP B210 on a laptop for months now.
          For reasons, I switched to another Linux session, and using
          this session UHD fails to talk to B210 over USB 3.0<br>
        </div>
        <div><br>
        </div>
        <div>dmesg tells me it is using the xhci_hcd driver (which I
          believe is the driver for USB 3.0), and is also mentioning=C2=A0
          &quot;new high-speed USB&quot;, which leads me to think that USB =
3.0
          link is well recognized and active:</div>
        <div><br>
        </div>
        <div>[ =C2=A0306.133028] usb 1-1: new high-speed USB device number =
16
          using xhci_hcd<br>
          [ =C2=A0306.260349] usb 1-1: New USB device found, idVendor=3D250=
0,
          idProduct=3D0020<br>
          [ =C2=A0306.260351] usb 1-1: New USB device strings: Mfr=3D1,
          Product=3D2, SerialNumber=3D3<br>
          [ =C2=A0306.260352] usb 1-1: Product: USRP B200<br>
          [ =C2=A0306.260354] usb 1-1: Manufacturer: Ettus Research LLC<br>
          [ =C2=A0306.260355] usb 1-1: SerialNumber: 31B9289</div>
        <div><br>
        </div>
        <div>However, when running any uhd command line, it fails using
          USB 3.0:</div>
        <div><br>
        </div>
        <div>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
          Boost_105800; UHD_3.15.0.0-release<br>
          [INFO] [B200] Detected Device: B210<br>
          [INFO] [B200] Operating over USB 2.</div>
        <div><br>
        </div>
        <div>I have also tried with UHD 3.14.1, no improvement.</div>
        <div><br>
        </div>
        <div>I remember having a similar issue (maybe the same?) that
          had been solved with something related to udev, but I sadly
          didn&#39;t take any note of this.</div>
        <div><br>
        </div>
        <div>Do you have any hint?</div>
        <div><br>
        </div>
        <div>Thank you.<br>
        </div>
        <div>Regards,</div>
        <div>Rodolphe</div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>
</pre>
    </blockquote>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000366bd005a1206577--


--===============1674548386037026190==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1674548386037026190==--

