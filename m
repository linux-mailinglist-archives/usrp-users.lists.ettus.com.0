Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E3E189FC4
	for <lists+usrp-users@lfdr.de>; Wed, 18 Mar 2020 16:37:13 +0100 (CET)
Received: from [::1] (port=47298 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jEakp-0000l1-0M; Wed, 18 Mar 2020 11:37:11 -0400
Received: from mail-ed1-f46.google.com ([209.85.208.46]:39969)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bertolini.rodolphe@gmail.com>)
 id 1jEakk-0000cm-83
 for usrp-users@lists.ettus.com; Wed, 18 Mar 2020 11:37:06 -0400
Received: by mail-ed1-f46.google.com with SMTP id a24so31479470edy.7
 for <usrp-users@lists.ettus.com>; Wed, 18 Mar 2020 08:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kecM0jTQn0dHbMRlzpzSpn/cvVfZsW7DeNn72TqTVrM=;
 b=Iu+v0IPMByQgFdg4iFAqxrUSqcQf5nSlLqSSMgHChOPZW3yVyzcAUz5hDFxNYU+v0O
 s8KFo0OdAkixuA1lwRGYWIjhnoZMYXhpQ4UUE3VZzPYRqseIpy4PvS5XFqC9BpwNJ0R/
 ZV8/USaZVsRhSPtN2zSa32I9WwoQ8xS6zChnx2B83JSVLASCzeYR5VlegNsrqPp/lkyO
 qBi1H/xynaXzHJJGy2DLF78yv1MCy0Iblp87xyz8fTJn/ziGNChSKcdZ6Oow063Ia9AM
 KvQ6BAdDyydk5TQ3Z9tBY7kP7kN/diA6vjb+IwxBk3SvMiOVaSvmlC4AAwkf5vjSvWz5
 uCSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kecM0jTQn0dHbMRlzpzSpn/cvVfZsW7DeNn72TqTVrM=;
 b=OIQ6K2wTEBm/uKDn4HbDpInCNpZMXors9wyAOr0scQkzn+DAG2XGB5IbMYJRNy+hyB
 onKuNKEn2d+82Sp7GAz57bH7HcCILgQLcWFowB3/U0AF78v+MAf0tyJZ/yQp4tYbSpCq
 KayHRoalkk7K5v0p2H+QkkOVDAUmdEkKBfE+BqfZi8ZjXeKGdt7x1wE6p288TY6Fhy2o
 9D2XnNuBz7lysrlgpYKP+UEqQnJC7y5shZRlFxA6USWphWw32+GMQ8NN2Wbe3cQok0/s
 ns5N0gZvGfuECFJS19M5y9M6lh1XnLtQD/uWRsDdaLNYFaXac4g9ec16l+UK2/j/sX1V
 dPkg==
X-Gm-Message-State: ANhLgQ1WJAlRsfIMeUsppO+iOn99lIvHGy9tc/JffH1YLxBsrqXwibpO
 Gc4Dgfzj7SZ/zHx6S7ogtl1lApN+2d8ACueMfC5rlg==
X-Google-Smtp-Source: ADFU+vvhu46V3YEniXENAroHPbbqx4eXNvBv7+s8dpDC6QfC9+H8cY8+7VEadhUovh9YXO4c94rMLDver8mOrMpcuEc=
X-Received: by 2002:a05:6402:38e:: with SMTP id
 o14mr4583186edv.356.1584545785044; 
 Wed, 18 Mar 2020 08:36:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAKaLowSaOhC6L9B4axxwV0=eq=PXzwRoCn22kqyfu529rTr7Dw@mail.gmail.com>
 <1661e285-c25d-8272-0e49-1d0f896033b4@comcast.net>
 <CAKaLowQZETbs6g=Ry5wGxuV7cJRM7eQWKmh1zyDDtHLrYuOxvQ@mail.gmail.com>
 <0d486110-0f4a-9605-ae9a-b68075c797e5@ettus.com>
 <dcddce1b-6d5c-9139-d2c9-61f88dfd1743@eurecom.fr>
 <CAKaLowTQ3GEHZgksydU0pVm1ewHQjR810ZcVZObfLedX9w53+w@mail.gmail.com>
 <00072490-e939-e531-5917-aa617f204ada@ettus.com>
In-Reply-To: <00072490-e939-e531-5917-aa617f204ada@ettus.com>
Date: Wed, 18 Mar 2020 15:36:12 +0100
Message-ID: <CAKaLowQkki_q1HSij8gmtusRJtkOzDP3pbKvQhKj9Sz1syRuEQ@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
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
Content-Type: multipart/mixed; boundary="===============7495117497519394313=="
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

--===============7495117497519394313==
Content-Type: multipart/alternative; boundary="000000000000a5e3c905a122d0e4"

--000000000000a5e3c905a122d0e4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Marcus,
USB plug is rotated (from row is at top), but yes I get the exact same port
as your.
Thank you
Regards,
Rodolphe

Le mer. 18 mars 2020 =C3=A0 16:20, Marcus M=C3=BCller via USRP-users <
usrp-users@lists.ettus.com> a =C3=A9crit :

> Hi Rodolphe,
>
> considering this is as confusing to me as to you: I took a picture of my
> USB3 port. When looking at an oblique angle at yours, do you see the
> five front-row bronze/gold contacts shown in the attached photo?
>
> Best regards,
> Marcus
>
> On 18.03.20 14:33, Rodolphe Bertolini via USRP-users wrote:
> > Thanks to both of you.
> >
> > The port is black, but it has been working for few months until I
> > shutdown / change session (I can't log back to previous session for
> > reasons) so I believe that the port by itself isn't the bad guy.
> >
> > It keeps appearing as USB 2 ("high-speed") when I plug it and also when
> > I run uhd_find_devices
> >
> > @Cedric I made sure to plug at max both ends
> >
> > Thank you again
> > Regards,
> > Rodolphe
> >
> > Le mer. 18 mars 2020 =C3=A0 15:02, Cedric Roux via USRP-users
> > <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> a
> =C3=A9crit :
> >
> >     Hi,
> >
> >     be also sure to plug the cable firmly on both
> >     ends. I've seen it more than once with a cable
> >     "half-plugged" and then it becomes usb2, not usb3.
> >
> >     My 2 cents.
> >
> >     Regards,
> >     C=C3=A9dric.
> >
> >     On 3/18/20 2:54 PM, Marcus M=C3=BCller via USRP-users wrote:
> >     > Hi Rodolphe,
> >     >
> >     > first of all, check whether you're actually dealing with a USB3
> >     port. I
> >     > know, sounds strange, but if it's not blue and doesn't have more
> than
> >     > four visible contacts, it's not standard-compliant USB3. The fact
> that
> >     > it's attached to a xHCI doesn't itself mean it can do USB3.
> >     >
> >     > Then, I can't quite remember whether the USB controller on the B2=
00
> >     > would even register as USB3 before the initial firmware is loaded=
.
> Try
> >     > the following: In one terminal window, run `dmesg -Hwx`. Plug in
> the
> >     > USRP, and see how it appears on the bus (it seems, as USB2
> high-speed
> >     > device). After that, in another terminal, you'd run
> >     `uhd_find_devices`,
> >     > and see whether the device re-enumerates as USB3 SuperSpeed devic=
e.
> >     >
> >     > Best regards,
> >     > Marcus
> >     >
> >     > On 18.03.20 13:43, Rodolphe Bertolini via USRP-users wrote:
> >     >> Hello Ron, (I resend the email, I forgot to "reply to all")
> >     >> Thank you for your quick feedback.
> >     >>
> >     >> Ok I understand. More information, lspci gives me :
> >     >> 00:14.0 USB controller: Intel Corporation Cannon Lake PCH USB 3.=
1
> >     xHCI
> >     >> Host Controller (rev 10)
> >     >> So I don't get why doesn't Ubuntu enables USB 3.0 with the B210.
> >     >>
> >     >> My problems looks like this one
> >     >>
> >
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-July/057=
323.html
> >     >>
> >     >> The output of lsusb -t is similar, with "Driver=3D(none)"
> >     >> A message of above mentioned thread suggests to enable 3.0 optio=
n
> in
> >     >> BIOS, however I don't have such option. And even if I had, I
> >     didn't not
> >     >> change anything between reboot / session switch so I really don'=
t
> >     >> understand where this regression is coming from.
> >     >> Also I did the "solution" mentioned by the author :
> >     >>
> >     >> uhd_image_loader --args=3D"type=3Db200,reset"
> >     >>
> >     >>
> >     >> Which did not improve the situation.
> >     >>
> >     >>
> >     >> Thank you again
> >     >>
> >     >> Rodolphe
> >     >>
> >     >> Le mer. 18 mars 2020 =C3=A0 12:02, Ron Economos via USRP-users
> >     >> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
> >     <mailto:usrp-users@lists.ettus.com
> >     <mailto:usrp-users@lists.ettus.com>>> a =C3=A9crit :
> >     >>
> >     >>     dmesg should say "new SuperSpeed USB device number X using
> >     xhci_hcd"
> >     >>     or "new SuperSpeed Gen 1 USB device number X using xhci_hcd"
> >     if you
> >     >>     have a newer kernel.
> >     >>
> >     >>     "high-speed" means USB 2.0.
> >     >>
> >     >>     Ron
> >     >>
> >     >>     On 3/18/20 03:41, Rodolphe Bertolini via USRP-users wrote:
> >     >>>     Dear all,
> >     >>>
> >     >>>     I have been using a USRP B210 on a laptop for months now. F=
or
> >     >>>     reasons, I switched to another Linux session, and using thi=
s
> >     >>>     session UHD fails to talk to B210 over USB 3.0
> >     >>>
> >     >>>     dmesg tells me it is using the xhci_hcd driver (which I
> >     believe is
> >     >>>     the driver for USB 3.0), and is also mentioning  "new
> high-speed
> >     >>>     USB", which leads me to think that USB 3.0 link is well
> >     recognized
> >     >>>     and active:
> >     >>>
> >     >>>     [  306.133028] usb 1-1: new high-speed USB device number 16
> >     using
> >     >>>     xhci_hcd
> >     >>>     [  306.260349] usb 1-1: New USB device found, idVendor=3D25=
00,
> >     >>>     idProduct=3D0020
> >     >>>     [  306.260351] usb 1-1: New USB device strings: Mfr=3D1,
> >     Product=3D2,
> >     >>>     SerialNumber=3D3
> >     >>>     [  306.260352] usb 1-1: Product: USRP B200
> >     >>>     [  306.260354] usb 1-1: Manufacturer: Ettus Research LLC
> >     >>>     [  306.260355] usb 1-1: SerialNumber: 31B9289
> >     >>>
> >     >>>     However, when running any uhd command line, it fails using
> >     USB 3.0:
> >     >>>
> >     >>>     [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
> >     Boost_105800;
> >     >>>     UHD_3.15.0.0-release
> >     >>>     [INFO] [B200] Detected Device: B210
> >     >>>     [INFO] [B200] Operating over USB 2.
> >     >>>
> >     >>>     I have also tried with UHD 3.14.1, no improvement.
> >     >>>
> >     >>>     I remember having a similar issue (maybe the same?) that ha=
d
> >     been
> >     >>>     solved with something related to udev, but I sadly didn't
> >     take any
> >     >>>     note of this.
> >     >>>
> >     >>>     Do you have any hint?
> >     >>>
> >     >>>     Thank you.
> >     >>>     Regards,
> >     >>>     Rodolphe
> >     >>>
> >     >>>     _______________________________________________
> >     >>>     USRP-users mailing list
> >     >>>     USRP-users@lists.ettus.com
> >     <mailto:USRP-users@lists.ettus.com>
> >     <mailto:USRP-users@lists.ettus.com <mailto:
> USRP-users@lists.ettus.com>>
> >     >>>
> >      http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >     >>     _______________________________________________
> >     >>     USRP-users mailing list
> >     >>     USRP-users@lists.ettus.com
> >     <mailto:USRP-users@lists.ettus.com>
> >     <mailto:USRP-users@lists.ettus.com <mailto:
> USRP-users@lists.ettus.com>>
> >     >>
> >      http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >     >>
> >     >>
> >     >> _______________________________________________
> >     >> USRP-users mailing list
> >     >> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
> >     >>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >     >>
> >     >
> >     > _______________________________________________
> >     > USRP-users mailing list
> >     > USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
> >     > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m
> >     >
> >
> >
> >     _______________________________________________
> >     USRP-users mailing list
> >     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
> >     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a5e3c905a122d0e4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Marcus,</div><div>USB plug is rotated (from row is at=
 top), but yes I get the exact same port as your.</div><div>Thank you<br></=
div><div>Regards,</div><div>Rodolphe<br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mer. 18 mars 2020 =C3=
=A0=C2=A016:20, Marcus M=C3=BCller via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&g=
t; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">Hi Rodolphe,<br>
<br>
considering this is as confusing to me as to you: I took a picture of my<br=
>
USB3 port. When looking at an oblique angle at yours, do you see the<br>
five front-row bronze/gold contacts shown in the attached photo?<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On 18.03.20 14:33, Rodolphe Bertolini via USRP-users wrote:<br>
&gt; Thanks to both of you.<br>
&gt; <br>
&gt; The port is black, but it has been working for few months until I<br>
&gt; shutdown / change session (I can&#39;t log back to previous session fo=
r<br>
&gt; reasons) so I believe that the port by itself isn&#39;t the bad guy.<b=
r>
&gt; <br>
&gt; It keeps appearing as USB 2 (&quot;high-speed&quot;) when I plug it an=
d also when<br>
&gt; I run uhd_find_devices<br>
&gt; <br>
&gt; @Cedric I made sure to plug at max both ends<br>
&gt; <br>
&gt; Thank you again<br>
&gt; Regards,<br>
&gt; Rodolphe<br>
&gt; <br>
&gt; Le=C2=A0mer. 18 mars 2020 =C3=A0=C2=A015:02, Cedric Roux via USRP-user=
s<br>
&gt; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a> &lt;mailto:<a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;&gt; a =C3=
=A9crit=C2=A0:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Hi,<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0be also sure to plug the cable firmly on both<br>
&gt;=C2=A0 =C2=A0 =C2=A0ends. I&#39;ve seen it more than once with a cable<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;half-plugged&quot; and then it becomes usb2, =
not usb3.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0My 2 cents.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0C=C3=A9dric.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 3/18/20 2:54 PM, Marcus M=C3=BCller via USRP-use=
rs wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Hi Rodolphe,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; first of all, check whether you&#39;re actuall=
y dealing with a USB3<br>
&gt;=C2=A0 =C2=A0 =C2=A0port. I<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; know, sounds strange, but if it&#39;s not blue=
 and doesn&#39;t have more than<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; four visible contacts, it&#39;s not standard-c=
ompliant USB3. The fact that<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; it&#39;s attached to a xHCI doesn&#39;t itself=
 mean it can do USB3.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Then, I can&#39;t quite remember whether the U=
SB controller on the B200<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; would even register as USB3 before the initial=
 firmware is loaded. Try<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; the following: In one terminal window, run `dm=
esg -Hwx`. Plug in the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; USRP, and see how it appears on the bus (it se=
ems, as USB2 high-speed<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; device). After that, in another terminal, you&=
#39;d run<br>
&gt;=C2=A0 =C2=A0 =C2=A0`uhd_find_devices`,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; and see whether the device re-enumerates as US=
B3 SuperSpeed device.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Best regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Marcus<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; On 18.03.20 13:43, Rodolphe Bertolini via USRP=
-users wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Hello Ron, (I resend the email, I forgot t=
o &quot;reply to all&quot;)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Thank you for your quick feedback.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Ok I understand. More information, lspci g=
ives me :<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; 00:14.0 USB controller: Intel Corporation =
Cannon Lake PCH USB 3.1<br>
&gt;=C2=A0 =C2=A0 =C2=A0xHCI<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Host Controller (rev 10)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; So I don&#39;t get why doesn&#39;t Ubuntu =
enables USB 3.0 with the B210.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; My problems looks like this one<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://lists.ettus.com/pipermail/usrp-us=
ers_lists.ettus.com/2018-July/057323.html" rel=3D"noreferrer" target=3D"_bl=
ank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-July/=
057323.html</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; The output of lsusb -t is similar, with &q=
uot;Driver=3D(none)&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; A message of above mentioned thread sugges=
ts to enable 3.0 option in<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; BIOS, however I don&#39;t have such option=
. And even if I had, I<br>
&gt;=C2=A0 =C2=A0 =C2=A0didn&#39;t not<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; change anything between reboot / session s=
witch so I really don&#39;t<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; understand where this regression is coming=
 from.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Also I did the &quot;solution&quot; mentio=
ned by the author :<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; uhd_image_loader --args=3D&quot;type=3Db20=
0,reset&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Which did not improve the situation.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Thank you again<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Rodolphe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Le=C2=A0mer. 18 mars 2020 =C3=A0=C2=A012:0=
2, Ron Economos via USRP-users<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a> &lt;mailto:<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;&gt;&gt; a =C3=A9=
crit=C2=A0:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0dmesg should say &quot;=
new SuperSpeed USB device number X using<br>
&gt;=C2=A0 =C2=A0 =C2=A0xhci_hcd&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0or &quot;new SuperSpeed=
 Gen 1 USB device number X using xhci_hcd&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0if you<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0have a newer kernel.<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0&quot;high-speed&quot; =
means USB 2.0.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0Ron<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0On 3/18/20 03:41, Rodol=
phe Bertolini via USRP-users wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Dear all,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0I have been using a=
 USRP B210 on a laptop for months now. For<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0reasons, I switched=
 to another Linux session, and using this<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0session UHD fails t=
o talk to B210 over USB 3.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0dmesg tells me it i=
s using the xhci_hcd driver (which I<br>
&gt;=C2=A0 =C2=A0 =C2=A0believe is<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0the driver for USB =
3.0), and is also mentioning=C2=A0 &quot;new high-speed<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0USB&quot;, which le=
ads me to think that USB 3.0 link is well<br>
&gt;=C2=A0 =C2=A0 =C2=A0recognized<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0and active:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.133028]=
 usb 1-1: new high-speed USB device number 16<br>
&gt;=C2=A0 =C2=A0 =C2=A0using<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0xhci_hcd<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.260349]=
 usb 1-1: New USB device found, idVendor=3D2500,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0idProduct=3D0020<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.260351]=
 usb 1-1: New USB device strings: Mfr=3D1,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Product=3D2,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0SerialNumber=3D3<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.260352]=
 usb 1-1: Product: USRP B200<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.260354]=
 usb 1-1: Manufacturer: Ettus Research LLC<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.260355]=
 usb 1-1: SerialNumber: 31B9289<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0However, when runni=
ng any uhd command line, it fails using<br>
&gt;=C2=A0 =C2=A0 =C2=A0USB 3.0:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [UHD] linux;=
 GNU C++ version 5.4.0 20160609;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Boost_105800;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0UHD_3.15.0.0-releas=
e<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [B200] Detec=
ted Device: B210<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [B200] Opera=
ting over USB 2.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0I have also tried w=
ith UHD 3.14.1, no improvement.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0I remember having a=
 similar issue (maybe the same?) that had<br>
&gt;=C2=A0 =C2=A0 =C2=A0been<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0solved with somethi=
ng related to udev, but I sadly didn&#39;t<br>
&gt;=C2=A0 =C2=A0 =C2=A0take any<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0note of this.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Do you have any hin=
t?<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Thank you.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Rodolphe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0___________________=
____________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0USRP-users mailing =
list<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:U=
SRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a> &lt;mailto:<a href=
=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.e=
ttus.com</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http=
://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0_______________________=
________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0USRP-users mailing list=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:USRP-=
users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a> &lt;mailto:<a href=
=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.e=
ttus.com</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http=
://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; __________________________________________=
_____<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; USRP-users mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.c=
om" target=3D"_blank">USRP-users@lists.ettus.com</a> &lt;mailto:<a href=3D"=
mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus=
.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/=
listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">h=
ttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; ______________________________________________=
_<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; USRP-users mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank">USRP-users@lists.ettus.com</a> &lt;mailto:<a href=3D"mail=
to:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com=
</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; <a href=3D"http://lists.ettus.com/mailman/list=
info/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http:=
//lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0_______________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0USRP-users mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:USRP-users@lists.ettus.com" targe=
t=3D"_blank">USRP-users@lists.ettus.com</a> &lt;mailto:<a href=3D"mailto:US=
RP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&=
gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://lists.ettus.com/mailman/listinfo/=
usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lis=
ts.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a5e3c905a122d0e4--


--===============7495117497519394313==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7495117497519394313==--

