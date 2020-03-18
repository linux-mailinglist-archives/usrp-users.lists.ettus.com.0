Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6610E189DF9
	for <lists+usrp-users@lfdr.de>; Wed, 18 Mar 2020 15:34:58 +0100 (CET)
Received: from [::1] (port=52774 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jEZma-0003hY-KK; Wed, 18 Mar 2020 10:34:56 -0400
Received: from mail-ed1-f54.google.com ([209.85.208.54]:43305)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bertolini.rodolphe@gmail.com>)
 id 1jEZmW-0003a3-NM
 for usrp-users@lists.ettus.com; Wed, 18 Mar 2020 10:34:52 -0400
Received: by mail-ed1-f54.google.com with SMTP id dc19so31157108edb.10
 for <usrp-users@lists.ettus.com>; Wed, 18 Mar 2020 07:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=RMQo/wKxmlYE6koBJd5xJB2ivHoxDa20is68jlNItto=;
 b=tQa0vhIgoejf51ZFIYdIIRG8Mhb4Sb5tS1BhlZiZVZXrww+Z40wyOdLKlEz1xOJxKy
 E4CregGrWT9aGDl+DAIFjSbUyJqIYLsgMnULlLbWafuNjSPa0fHkgVbox/aZfE3nt/Dz
 JhvkZw0lPtBeifs8dhdgIlV4XdPHw2DixIDSA6TxnKqb2rL2yVmrkTFQnc2mAjCFOPcR
 L7E8w4Rv9wF2STvAJhloCnvq1jNtn5+ym8pT5fOw6Nwdxo3dYN7ZpFP1WcOwWrJbFR7C
 p2dDIne4gth+VDCs5QO4QdGQIfCY/BHJ7BB7a7D2/15cBoE/ZM13JRBjgktkbLztlYOd
 4YYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=RMQo/wKxmlYE6koBJd5xJB2ivHoxDa20is68jlNItto=;
 b=GvJU3CM9cHGacnpxOvK3tbd/HnGYDriFaereJWFwZCxl+pUjskb/dyS7FvBvOZB3ro
 f5GkFsT6S+d2cCDXlfZI2pwKyJmJtuAX+fjjeyezZ9UsAwEJWnM2EasmkWsexuhLf7pw
 9FkaAf+eCPPfQ+8YcticUeSgHvJ306ccxqFH7AysmDpQvNS7PSmeB3ad7uPifnY6qibr
 N/Y6qCJep6Rp1Rb+WEPoVFXi8XTyXfacBaWzISLRZfhfamZ2p4ahe1dXDcuk8gYx8Rfd
 FQ2D5iNtY+08ZsLA+p7ifou/D9iKBhNhNxSRJopR787uvDt/L1e7ouVqDMqZzu6aOwZl
 Zu9g==
X-Gm-Message-State: ANhLgQ1Q9BKEKNwsnDLED+aYmfGaP8rCoUmCuQVizw4Xr+vIK4HHYhF2
 QRuyKtyQWXezFBY2OcMXDPB+QbxDCb1qGRUpEuUHWQ==
X-Google-Smtp-Source: ADFU+vvA596B8NVr+NIzkFezdu9PsjGkyjrSqPh0rYpObtxG3/969Mwwn+8JxzTnQ3NcyfcGAGQR3HaOidNwab9/LPU=
X-Received: by 2002:a50:8d1a:: with SMTP id s26mr4392647eds.152.1584542051255; 
 Wed, 18 Mar 2020 07:34:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAKaLowSaOhC6L9B4axxwV0=eq=PXzwRoCn22kqyfu529rTr7Dw@mail.gmail.com>
 <1661e285-c25d-8272-0e49-1d0f896033b4@comcast.net>
 <CAKaLowQZETbs6g=Ry5wGxuV7cJRM7eQWKmh1zyDDtHLrYuOxvQ@mail.gmail.com>
 <0d486110-0f4a-9605-ae9a-b68075c797e5@ettus.com>
 <dcddce1b-6d5c-9139-d2c9-61f88dfd1743@eurecom.fr>
In-Reply-To: <dcddce1b-6d5c-9139-d2c9-61f88dfd1743@eurecom.fr>
Date: Wed, 18 Mar 2020 14:33:59 +0100
Message-ID: <CAKaLowTQ3GEHZgksydU0pVm1ewHQjR810ZcVZObfLedX9w53+w@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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
Content-Type: multipart/mixed; boundary="===============2632233580239266583=="
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

--===============2632233580239266583==
Content-Type: multipart/alternative; boundary="00000000000018cc1805a121f2b9"

--00000000000018cc1805a121f2b9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks to both of you.

The port is black, but it has been working for few months until I shutdown
/ change session (I can't log back to previous session for reasons) so I
believe that the port by itself isn't the bad guy.

It keeps appearing as USB 2 ("high-speed") when I plug it and also when I
run uhd_find_devices

@Cedric I made sure to plug at max both ends

Thank you again
Regards,
Rodolphe

Le mer. 18 mars 2020 =C3=A0 15:02, Cedric Roux via USRP-users <
usrp-users@lists.ettus.com> a =C3=A9crit :

> Hi,
>
> be also sure to plug the cable firmly on both
> ends. I've seen it more than once with a cable
> "half-plugged" and then it becomes usb2, not usb3.
>
> My 2 cents.
>
> Regards,
> C=C3=A9dric.
>
> On 3/18/20 2:54 PM, Marcus M=C3=BCller via USRP-users wrote:
> > Hi Rodolphe,
> >
> > first of all, check whether you're actually dealing with a USB3 port. I
> > know, sounds strange, but if it's not blue and doesn't have more than
> > four visible contacts, it's not standard-compliant USB3. The fact that
> > it's attached to a xHCI doesn't itself mean it can do USB3.
> >
> > Then, I can't quite remember whether the USB controller on the B200
> > would even register as USB3 before the initial firmware is loaded. Try
> > the following: In one terminal window, run `dmesg -Hwx`. Plug in the
> > USRP, and see how it appears on the bus (it seems, as USB2 high-speed
> > device). After that, in another terminal, you'd run `uhd_find_devices`,
> > and see whether the device re-enumerates as USB3 SuperSpeed device.
> >
> > Best regards,
> > Marcus
> >
> > On 18.03.20 13:43, Rodolphe Bertolini via USRP-users wrote:
> >> Hello Ron, (I resend the email, I forgot to "reply to all")
> >> Thank you for your quick feedback.
> >>
> >> Ok I understand. More information, lspci gives me :
> >> 00:14.0 USB controller: Intel Corporation Cannon Lake PCH USB 3.1 xHCI
> >> Host Controller (rev 10)
> >> So I don't get why doesn't Ubuntu enables USB 3.0 with the B210.
> >>
> >> My problems looks like this one
> >>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-July/057=
323.html
> >>
> >> The output of lsusb -t is similar, with "Driver=3D(none)"
> >> A message of above mentioned thread suggests to enable 3.0 option in
> >> BIOS, however I don't have such option. And even if I had, I didn't no=
t
> >> change anything between reboot / session switch so I really don't
> >> understand where this regression is coming from.
> >> Also I did the "solution" mentioned by the author :
> >>
> >> uhd_image_loader --args=3D"type=3Db200,reset"
> >>
> >>
> >> Which did not improve the situation.
> >>
> >>
> >> Thank you again
> >>
> >> Rodolphe
> >>
> >> Le mer. 18 mars 2020 =C3=A0 12:02, Ron Economos via USRP-users
> >> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> a
> =C3=A9crit :
> >>
> >>     dmesg should say "new SuperSpeed USB device number X using xhci_hc=
d"
> >>     or "new SuperSpeed Gen 1 USB device number X using xhci_hcd" if yo=
u
> >>     have a newer kernel.
> >>
> >>     "high-speed" means USB 2.0.
> >>
> >>     Ron
> >>
> >>     On 3/18/20 03:41, Rodolphe Bertolini via USRP-users wrote:
> >>>     Dear all,
> >>>
> >>>     I have been using a USRP B210 on a laptop for months now. For
> >>>     reasons, I switched to another Linux session, and using this
> >>>     session UHD fails to talk to B210 over USB 3.0
> >>>
> >>>     dmesg tells me it is using the xhci_hcd driver (which I believe i=
s
> >>>     the driver for USB 3.0), and is also mentioning  "new high-speed
> >>>     USB", which leads me to think that USB 3.0 link is well recognize=
d
> >>>     and active:
> >>>
> >>>     [  306.133028] usb 1-1: new high-speed USB device number 16 using
> >>>     xhci_hcd
> >>>     [  306.260349] usb 1-1: New USB device found, idVendor=3D2500,
> >>>     idProduct=3D0020
> >>>     [  306.260351] usb 1-1: New USB device strings: Mfr=3D1, Product=
=3D2,
> >>>     SerialNumber=3D3
> >>>     [  306.260352] usb 1-1: Product: USRP B200
> >>>     [  306.260354] usb 1-1: Manufacturer: Ettus Research LLC
> >>>     [  306.260355] usb 1-1: SerialNumber: 31B9289
> >>>
> >>>     However, when running any uhd command line, it fails using USB 3.=
0:
> >>>
> >>>     [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
> >>>     UHD_3.15.0.0-release
> >>>     [INFO] [B200] Detected Device: B210
> >>>     [INFO] [B200] Operating over USB 2.
> >>>
> >>>     I have also tried with UHD 3.14.1, no improvement.
> >>>
> >>>     I remember having a similar issue (maybe the same?) that had been
> >>>     solved with something related to udev, but I sadly didn't take an=
y
> >>>     note of this.
> >>>
> >>>     Do you have any hint?
> >>>
> >>>     Thank you.
> >>>     Regards,
> >>>     Rodolphe
> >>>
> >>>     _______________________________________________
> >>>     USRP-users mailing list
> >>>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
> >>>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m
> >>     _______________________________________________
> >>     USRP-users mailing list
> >>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
> >>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>
> >>
> >> _______________________________________________
> >> USRP-users mailing list
> >> USRP-users@lists.ettus.com
> >> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000018cc1805a121f2b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks to both of you.</div><div><br></div><div>The p=
ort is black, but it has been working for few months until I shutdown / cha=
nge session (I can&#39;t log back to previous session for reasons) so I bel=
ieve that the port by itself isn&#39;t the bad guy.<br></div><div><br></div=
><div>It keeps appearing as USB 2 (&quot;high-speed&quot;) when I plug it a=
nd also when I run uhd_find_devices<br></div><div><br></div><div>@Cedric I =
made sure to plug at max both ends</div><div><br></div><div>Thank you again=
</div><div>Regards,</div><div>Rodolphe<br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mer. 18 mars 2020 =
=C3=A0=C2=A015:02, Cedric Roux via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; a =C3=A9crit=C2=A0:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
be also sure to plug the cable firmly on both<br>
ends. I&#39;ve seen it more than once with a cable<br>
&quot;half-plugged&quot; and then it becomes usb2, not usb3.<br>
<br>
My 2 cents.<br>
<br>
Regards,<br>
C=C3=A9dric.<br>
<br>
On 3/18/20 2:54 PM, Marcus M=C3=BCller via USRP-users wrote:<br>
&gt; Hi Rodolphe,<br>
&gt; <br>
&gt; first of all, check whether you&#39;re actually dealing with a USB3 po=
rt. I<br>
&gt; know, sounds strange, but if it&#39;s not blue and doesn&#39;t have mo=
re than<br>
&gt; four visible contacts, it&#39;s not standard-compliant USB3. The fact =
that<br>
&gt; it&#39;s attached to a xHCI doesn&#39;t itself mean it can do USB3.<br=
>
&gt; <br>
&gt; Then, I can&#39;t quite remember whether the USB controller on the B20=
0<br>
&gt; would even register as USB3 before the initial firmware is loaded. Try=
<br>
&gt; the following: In one terminal window, run `dmesg -Hwx`. Plug in the<b=
r>
&gt; USRP, and see how it appears on the bus (it seems, as USB2 high-speed<=
br>
&gt; device). After that, in another terminal, you&#39;d run `uhd_find_devi=
ces`,<br>
&gt; and see whether the device re-enumerates as USB3 SuperSpeed device.<br=
>
&gt; <br>
&gt; Best regards,<br>
&gt; Marcus<br>
&gt; <br>
&gt; On 18.03.20 13:43, Rodolphe Bertolini via USRP-users wrote:<br>
&gt;&gt; Hello Ron, (I resend the email, I forgot to &quot;reply to all&quo=
t;)<br>
&gt;&gt; Thank you for your quick feedback.<br>
&gt;&gt;<br>
&gt;&gt; Ok I understand. More information, lspci gives me :<br>
&gt;&gt; 00:14.0 USB controller: Intel Corporation Cannon Lake PCH USB 3.1 =
xHCI<br>
&gt;&gt; Host Controller (rev 10)<br>
&gt;&gt; So I don&#39;t get why doesn&#39;t Ubuntu enables USB 3.0 with the=
 B210.<br>
&gt;&gt;<br>
&gt;&gt; My problems looks like this one<br>
&gt;&gt; <a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/2018-July/057323.html" rel=3D"noreferrer" target=3D"_blank">http://lis=
ts.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-July/057323.html</a>=
<br>
&gt;&gt;<br>
&gt;&gt; The output of lsusb -t is similar, with &quot;Driver=3D(none)&quot=
;<br>
&gt;&gt; A message of above mentioned thread suggests to enable 3.0 option =
in<br>
&gt;&gt; BIOS, however I don&#39;t have such option. And even if I had, I d=
idn&#39;t not<br>
&gt;&gt; change anything between reboot / session switch so I really don&#3=
9;t<br>
&gt;&gt; understand where this regression is coming from.<br>
&gt;&gt; Also I did the &quot;solution&quot; mentioned by the author :<br>
&gt;&gt;<br>
&gt;&gt; uhd_image_loader --args=3D&quot;type=3Db200,reset&quot;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Which did not improve the situation.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Thank you again<br>
&gt;&gt;<br>
&gt;&gt; Rodolphe<br>
&gt;&gt;<br>
&gt;&gt; Le=C2=A0mer. 18 mars 2020 =C3=A0=C2=A012:02, Ron Economos via USRP=
-users<br>
&gt;&gt; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a> &lt;mailto:<a href=3D"mailto:usrp-users@li=
sts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;&gt; a =
=C3=A9crit=C2=A0:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0dmesg should say &quot;new SuperSpeed USB devic=
e number X using xhci_hcd&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0or &quot;new SuperSpeed Gen 1 USB device number=
 X using xhci_hcd&quot; if you<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0have a newer kernel.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&quot;high-speed&quot; means USB 2.0.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Ron<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0On 3/18/20 03:41, Rodolphe Bertolini via USRP-u=
sers wrote:<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Dear all,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0I have been using a USRP B210 on a laptop f=
or months now. For<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0reasons, I switched to another Linux sessio=
n, and using this<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0session UHD fails to talk to B210 over USB =
3.0<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0dmesg tells me it is using the xhci_hcd dri=
ver (which I believe is<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0the driver for USB 3.0), and is also mentio=
ning=C2=A0 &quot;new high-speed<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0USB&quot;, which leads me to think that USB=
 3.0 link is well recognized<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0and active:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.133028] usb 1-1: new high-speed=
 USB device number 16 using<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0xhci_hcd<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.260349] usb 1-1: New USB device=
 found, idVendor=3D2500,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0idProduct=3D0020<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.260351] usb 1-1: New USB device=
 strings: Mfr=3D1, Product=3D2,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0SerialNumber=3D3<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.260352] usb 1-1: Product: USRP =
B200<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.260354] usb 1-1: Manufacturer: =
Ettus Research LLC<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.260355] usb 1-1: SerialNumber: =
31B9289<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0However, when running any uhd command line,=
 it fails using USB 3.0:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [UHD] linux; GNU C++ version 5.4.0 2=
0160609; Boost_105800;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0UHD_3.15.0.0-release<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [B200] Detected Device: B210<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [B200] Operating over USB 2.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0I have also tried with UHD 3.14.1, no impro=
vement.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0I remember having a similar issue (maybe th=
e same?) that had been<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0solved with something related to udev, but =
I sadly didn&#39;t take any<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0note of this.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Do you have any hint?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Thank you.<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Regards,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Rodolphe<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0___________________________________________=
____<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0USRP-users mailing list<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:USRP-users@lists.ettus.co=
m" target=3D"_blank">USRP-users@lists.ettus.com</a> &lt;mailto:<a href=3D"m=
ailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.=
com</a>&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://lists.ettus.com/mailman/l=
istinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">ht=
tp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0_______________________________________________=
<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0USRP-users mailing list<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:USRP-users@lists.ettus.com" t=
arget=3D"_blank">USRP-users@lists.ettus.com</a> &lt;mailto:<a href=3D"mailt=
o:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com<=
/a>&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http:/=
/lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">US=
RP-users@lists.ettus.com</a><br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;<br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000018cc1805a121f2b9--


--===============2632233580239266583==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2632233580239266583==--

