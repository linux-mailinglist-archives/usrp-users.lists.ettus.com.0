Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A00118AF9A
	for <lists+usrp-users@lfdr.de>; Thu, 19 Mar 2020 10:19:47 +0100 (CET)
Received: from [::1] (port=59524 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jErL8-0003DT-6x; Thu, 19 Mar 2020 05:19:46 -0400
Received: from mail-ed1-f44.google.com ([209.85.208.44]:39796)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bertolini.rodolphe@gmail.com>)
 id 1jErL3-00036C-HJ
 for usrp-users@lists.ettus.com; Thu, 19 Mar 2020 05:19:41 -0400
Received: by mail-ed1-f44.google.com with SMTP id a43so1678551edf.6
 for <usrp-users@lists.ettus.com>; Thu, 19 Mar 2020 02:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Wogg/sulyCKxO2wvaXFmoDz8OlQKZDBod/AaBRZpsRE=;
 b=dXjkT4r53cM2aF6EfKyWWMnAwmIK5TQbNSIF9uOBlTLW/onoGfbrEsOqEpl6pJl0Wa
 OECAVSDf7lTVUEr+LHSdDk1vlDwrU6xU/tcuiXWOkCELvl/mpga1B52v6vfjfr2b26bC
 16BYv0WwHdPkdx3+VPZEPZsN6FF0HXwV7Ryzf9Q9foPFHA5XGubGq5UW/znp4phV1QU6
 hEeKmY3aNx310mCRQ+Y6T918Z0OirdXZ/yR+/tKQVu6W2NVqHotWyPvbalm3ouCqmIo9
 R5S181T9NRgxrUXpxNY5+MqAw5hwEUyQy7CVsrmphnV5rmMZ31jBye9XxCP85QqEmMfB
 0+wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Wogg/sulyCKxO2wvaXFmoDz8OlQKZDBod/AaBRZpsRE=;
 b=d7Dk3lDB3IUxyJvqDJvJyF7t/17MVUasFnDjIo0cFDZCugn8zuWEiDQ3XfBhErQgkv
 eq1sUk3ev0BHkfygvJbRg4hrIoLkedu5vZofXyT6ewnbXk4Mrqn/6LgG9FBZOQupA+2O
 pe+qx1TMwkEoZa5neAdJanmaWun8xiJOyyzQiJIIsSkDvjJjhQVYSFpx5/rx6yFzAnQp
 ait9yx0J+0eo5n3d6LF0wkfw9/SGgRwoJXq5NTxHXAsU3Q2BNoRvpJuHWYY0L7syyWtW
 CS8KphAfHsi9Mlh7zD3BVGX/a8GrAhsdcHktJERbij2fxVgufZcek3lEdfKRSicEmhpr
 i+8A==
X-Gm-Message-State: ANhLgQ1FTt2p36/rlCN8howZUX4pf5eGp6amzdy1wdQDnDxcut+NNOH/
 o8WSrwoTGtAbrPLDEAJ54HoKlIIlQALctmze54g=
X-Google-Smtp-Source: ADFU+vutcI+C8yzOMOxTwAsh2///AJph0iXhkxKwI5Lk+CenA/QFq/WYVrs/YXPjog5a2RfUbeL/Gx9bkJ4YaFqTOoM=
X-Received: by 2002:a50:8a03:: with SMTP id i3mr1702955edi.121.1584609540431; 
 Thu, 19 Mar 2020 02:19:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAKaLowSaOhC6L9B4axxwV0=eq=PXzwRoCn22kqyfu529rTr7Dw@mail.gmail.com>
 <1661e285-c25d-8272-0e49-1d0f896033b4@comcast.net>
 <CAKaLowQZETbs6g=Ry5wGxuV7cJRM7eQWKmh1zyDDtHLrYuOxvQ@mail.gmail.com>
 <0d486110-0f4a-9605-ae9a-b68075c797e5@ettus.com>
 <dcddce1b-6d5c-9139-d2c9-61f88dfd1743@eurecom.fr>
 <CAKaLowTQ3GEHZgksydU0pVm1ewHQjR810ZcVZObfLedX9w53+w@mail.gmail.com>
 <00072490-e939-e531-5917-aa617f204ada@ettus.com>
 <CAKaLowQkki_q1HSij8gmtusRJtkOzDP3pbKvQhKj9Sz1syRuEQ@mail.gmail.com>
 <f57b84f3-22dd-629a-cfa3-4e3bbe01cf5e@gmail.com>
 <CAKaLowTYMnyzOL4zYpmzAMEGE9j5GfPKgWYQKJpvs07QHMonYw@mail.gmail.com>
 <CAKaLowQ77qcZfCiY3r+6U5eub8PNJzEKr1qEn9gHgaA64UXKdQ@mail.gmail.com>
 <CAKaLowSTadzf2vphTQD7areNu=UotESakesxp1-MS5ej9McRYw@mail.gmail.com>
In-Reply-To: <CAKaLowSTadzf2vphTQD7areNu=UotESakesxp1-MS5ej9McRYw@mail.gmail.com>
Date: Thu, 19 Mar 2020 10:18:49 +0100
Message-ID: <CAKaLowRMoex-Z=JA8U_8b-qyrqTkPw=Af=ZkBO=brk5Y+Dfuxg@mail.gmail.com>
To: Cinaed Simson <cinaed.simson@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============6880507465388054940=="
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

--===============6880507465388054940==
Content-Type: multipart/alternative; boundary="000000000000c3e41c05a131a811"

--000000000000c3e41c05a131a811
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Please ignore messages about  Bus 02, it is not a bus linked to USB ports.
USB ports are linked to bus 01.

I did the same procedure (plug USRP / USB 3.0 stick and check lsusb) with a
computer that is currently OK with USRP b210 over 3.0 (UHD 3.10) :
Both USRP and USB stick are "5000M", whereas it is "480M" when using the
erroneous computer.

This is thus in my opinion excluding a problem of UHD.

Regards,
Rodolphe





Le jeu. 19 mars 2020 =C3=A0 09:28, Rodolphe Bertolini <
bertolini.rodolphe@gmail.com> a =C3=A9crit :

> Last update :
>
> When I plug a USB 3.0 stick, dmesg still says that it acts with
> "full-speed", however lsusb gives me :
>       Device can operate at SuperSpeed (5Gbps)
>
> This does not appear when USRP is plugged in instead of the USB stick.
>
> Also I noticed in the very early messages of dmesg :
>
> [    1.684307] xhci_hcd 0000:00:14.0: Host supports USB 3.1 Enhanced
> SuperSpeed
>
> Regards,
> Rodolphe
>
> Le jeu. 19 mars 2020 =C3=A0 09:17, Rodolphe Bertolini <
> bertolini.rodolphe@gmail.com> a =C3=A9crit :
>
>> Also lsusb -t gives me this :
>>
>> # lsusb -t
>> /:  Bus 02.Port 1: Dev 1, Class=3Droot_hub, Driver=3Dxhci_hcd/10p, 10000=
M
>> /:  Bus 01.Port 1: Dev 1, Class=3Droot_hub, Driver=3Dxhci_hcd/16p, 480M
>>     |__ Port 1: Dev 5, If 0, Class=3DVendor Specific Class, Driver=3D, 4=
80M
>>     |__ Port 10: Dev 2, If 0, Class=3DApplication Specific Interface,
>> Driver=3D, 12M
>>     |__ Port 10: Dev 2, If 1, Class=3DChip/SmartCard, Driver=3D, 12M
>>     |__ Port 11: Dev 3, If 0, Class=3DVideo, Driver=3Duvcvideo, 480M
>>     |__ Port 11: Dev 3, If 1, Class=3DVideo, Driver=3Duvcvideo, 480M
>>
>>
>> Also erratum : I don't "think" that the bus is 3.0 capable, I am "sure",
>> because I had USRP b210 working for few months over 3.0.
>>
>> Rodolphe
>>
>> Le jeu. 19 mars 2020 =C3=A0 09:06, Rodolphe Bertolini <
>> bertolini.rodolphe@gmail.com> a =C3=A9crit :
>>
>>> Cinaed,
>>>
>>> Thank you.
>>> Output is empty (except at FIXME warning : "FIXME: alloc bigger buffer
>>> for device capability descriptors").
>>> However, without filtering I have something like this :
>>>
>>> Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
>>> Device Descriptor:
>>>   bLength                18
>>>   bDescriptorType         1
>>>   bcdUSB               3.10
>>> ...
>>>       bInterfaceProtocol      0 Full speed (or root) hub
>>>
>>> I think that this bus is USB 3.0 capable, but for some reason the
>>> "superspeed" is not activated.
>>> Also no information about data rate is given about this bus.
>>>
>>> Regards,
>>> Rodolphe
>>>
>>> Le mer. 18 mars 2020 =C3=A0 20:29, Cinaed Simson via USRP-users <
>>> usrp-users@lists.ettus.com> a =C3=A9crit :
>>>
>>>> A USB3 port is  SuperSpeed port.
>>>>
>>>> For a quick check, try
>>>>
>>>>   lsusb -v | grep 5Gbps
>>>>
>>>> to confirm you have at least 1 working USB3 port.
>>>>
>>>> And then you can check the port speed where the device is connected
>>>> using lsusb -v.
>>>>
>>>> -- Cinaed
>>>>
>>>>
>>>>
>>>> On 3/18/20 7:36 AM, Rodolphe Bertolini via USRP-users wrote:
>>>>
>>>> Marcus,
>>>> USB plug is rotated (from row is at top), but yes I get the exact same
>>>> port as your.
>>>> Thank you
>>>> Regards,
>>>> Rodolphe
>>>>
>>>> Le mer. 18 mars 2020 =C3=A0 16:20, Marcus M=C3=BCller via USRP-users <
>>>> usrp-users@lists.ettus.com> a =C3=A9crit :
>>>>
>>>>> Hi Rodolphe,
>>>>>
>>>>> considering this is as confusing to me as to you: I took a picture of
>>>>> my
>>>>> USB3 port. When looking at an oblique angle at yours, do you see the
>>>>> five front-row bronze/gold contacts shown in the attached photo?
>>>>>
>>>>> Best regards,
>>>>> Marcus
>>>>>
>>>>> On 18.03.20 14:33, Rodolphe Bertolini via USRP-users wrote:
>>>>> > Thanks to both of you.
>>>>> >
>>>>> > The port is black, but it has been working for few months until I
>>>>> > shutdown / change session (I can't log back to previous session for
>>>>> > reasons) so I believe that the port by itself isn't the bad guy.
>>>>> >
>>>>> > It keeps appearing as USB 2 ("high-speed") when I plug it and also
>>>>> when
>>>>> > I run uhd_find_devices
>>>>> >
>>>>> > @Cedric I made sure to plug at max both ends
>>>>> >
>>>>> > Thank you again
>>>>> > Regards,
>>>>> > Rodolphe
>>>>> >
>>>>> > Le mer. 18 mars 2020 =C3=A0 15:02, Cedric Roux via USRP-users
>>>>> > <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> a
>>>>> =C3=A9crit :
>>>>> >
>>>>> >     Hi,
>>>>> >
>>>>> >     be also sure to plug the cable firmly on both
>>>>> >     ends. I've seen it more than once with a cable
>>>>> >     "half-plugged" and then it becomes usb2, not usb3.
>>>>> >
>>>>> >     My 2 cents.
>>>>> >
>>>>> >     Regards,
>>>>> >     C=C3=A9dric.
>>>>> >
>>>>> >     On 3/18/20 2:54 PM, Marcus M=C3=BCller via USRP-users wrote:
>>>>> >     > Hi Rodolphe,
>>>>> >     >
>>>>> >     > first of all, check whether you're actually dealing with a US=
B3
>>>>> >     port. I
>>>>> >     > know, sounds strange, but if it's not blue and doesn't have
>>>>> more than
>>>>> >     > four visible contacts, it's not standard-compliant USB3. The
>>>>> fact that
>>>>> >     > it's attached to a xHCI doesn't itself mean it can do USB3.
>>>>> >     >
>>>>> >     > Then, I can't quite remember whether the USB controller on th=
e
>>>>> B200
>>>>> >     > would even register as USB3 before the initial firmware is
>>>>> loaded. Try
>>>>> >     > the following: In one terminal window, run `dmesg -Hwx`. Plug
>>>>> in the
>>>>> >     > USRP, and see how it appears on the bus (it seems, as USB2
>>>>> high-speed
>>>>> >     > device). After that, in another terminal, you'd run
>>>>> >     `uhd_find_devices`,
>>>>> >     > and see whether the device re-enumerates as USB3 SuperSpeed
>>>>> device.
>>>>> >     >
>>>>> >     > Best regards,
>>>>> >     > Marcus
>>>>> >     >
>>>>> >     > On 18.03.20 13:43, Rodolphe Bertolini via USRP-users wrote:
>>>>> >     >> Hello Ron, (I resend the email, I forgot to "reply to all")
>>>>> >     >> Thank you for your quick feedback.
>>>>> >     >>
>>>>> >     >> Ok I understand. More information, lspci gives me :
>>>>> >     >> 00:14.0 USB controller: Intel Corporation Cannon Lake PCH US=
B
>>>>> 3.1
>>>>> >     xHCI
>>>>> >     >> Host Controller (rev 10)
>>>>> >     >> So I don't get why doesn't Ubuntu enables USB 3.0 with the
>>>>> B210.
>>>>> >     >>
>>>>> >     >> My problems looks like this one
>>>>> >     >>
>>>>> >
>>>>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-July=
/057323.html
>>>>> >     >>
>>>>> >     >> The output of lsusb -t is similar, with "Driver=3D(none)"
>>>>> >     >> A message of above mentioned thread suggests to enable 3.0
>>>>> option in
>>>>> >     >> BIOS, however I don't have such option. And even if I had, I
>>>>> >     didn't not
>>>>> >     >> change anything between reboot / session switch so I really
>>>>> don't
>>>>> >     >> understand where this regression is coming from.
>>>>> >     >> Also I did the "solution" mentioned by the author :
>>>>> >     >>
>>>>> >     >> uhd_image_loader --args=3D"type=3Db200,reset"
>>>>> >     >>
>>>>> >     >>
>>>>> >     >> Which did not improve the situation.
>>>>> >     >>
>>>>> >     >>
>>>>> >     >> Thank you again
>>>>> >     >>
>>>>> >     >> Rodolphe
>>>>> >     >>
>>>>> >     >> Le mer. 18 mars 2020 =C3=A0 12:02, Ron Economos via USRP-use=
rs
>>>>> >     >> <usrp-users@lists.ettus.com <mailto:
>>>>> usrp-users@lists.ettus.com>
>>>>> >     <mailto:usrp-users@lists.ettus.com
>>>>> >     <mailto:usrp-users@lists.ettus.com>>> a =C3=A9crit :
>>>>> >     >>
>>>>> >     >>     dmesg should say "new SuperSpeed USB device number X usi=
ng
>>>>> >     xhci_hcd"
>>>>> >     >>     or "new SuperSpeed Gen 1 USB device number X using
>>>>> xhci_hcd"
>>>>> >     if you
>>>>> >     >>     have a newer kernel.
>>>>> >     >>
>>>>> >     >>     "high-speed" means USB 2.0.
>>>>> >     >>
>>>>> >     >>     Ron
>>>>> >     >>
>>>>> >     >>     On 3/18/20 03:41, Rodolphe Bertolini via USRP-users wrot=
e:
>>>>> >     >>>     Dear all,
>>>>> >     >>>
>>>>> >     >>>     I have been using a USRP B210 on a laptop for months
>>>>> now. For
>>>>> >     >>>     reasons, I switched to another Linux session, and using
>>>>> this
>>>>> >     >>>     session UHD fails to talk to B210 over USB 3.0
>>>>> >     >>>
>>>>> >     >>>     dmesg tells me it is using the xhci_hcd driver (which I
>>>>> >     believe is
>>>>> >     >>>     the driver for USB 3.0), and is also mentioning  "new
>>>>> high-speed
>>>>> >     >>>     USB", which leads me to think that USB 3.0 link is well
>>>>> >     recognized
>>>>> >     >>>     and active:
>>>>> >     >>>
>>>>> >     >>>     [  306.133028] usb 1-1: new high-speed USB device numbe=
r
>>>>> 16
>>>>> >     using
>>>>> >     >>>     xhci_hcd
>>>>> >     >>>     [  306.260349] usb 1-1: New USB device found,
>>>>> idVendor=3D2500,
>>>>> >     >>>     idProduct=3D0020
>>>>> >     >>>     [  306.260351] usb 1-1: New USB device strings: Mfr=3D1=
,
>>>>> >     Product=3D2,
>>>>> >     >>>     SerialNumber=3D3
>>>>> >     >>>     [  306.260352] usb 1-1: Product: USRP B200
>>>>> >     >>>     [  306.260354] usb 1-1: Manufacturer: Ettus Research LL=
C
>>>>> >     >>>     [  306.260355] usb 1-1: SerialNumber: 31B9289
>>>>> >     >>>
>>>>> >     >>>     However, when running any uhd command line, it fails
>>>>> using
>>>>> >     USB 3.0:
>>>>> >     >>>
>>>>> >     >>>     [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
>>>>> >     Boost_105800;
>>>>> >     >>>     UHD_3.15.0.0-release
>>>>> >     >>>     [INFO] [B200] Detected Device: B210
>>>>> >     >>>     [INFO] [B200] Operating over USB 2.
>>>>> >     >>>
>>>>> >     >>>     I have also tried with UHD 3.14.1, no improvement.
>>>>> >     >>>
>>>>> >     >>>     I remember having a similar issue (maybe the same?) tha=
t
>>>>> had
>>>>> >     been
>>>>> >     >>>     solved with something related to udev, but I sadly didn=
't
>>>>> >     take any
>>>>> >     >>>     note of this.
>>>>> >     >>>
>>>>> >     >>>     Do you have any hint?
>>>>> >     >>>
>>>>> >     >>>     Thank you.
>>>>> >     >>>     Regards,
>>>>> >     >>>     Rodolphe
>>>>> >     >>>
>>>>> >     >>>     _______________________________________________
>>>>> >     >>>     USRP-users mailing list
>>>>> >     >>>     USRP-users@lists.ettus.com
>>>>> >     <mailto:USRP-users@lists.ettus.com>
>>>>> >     <mailto:USRP-users@lists.ettus.com <mailto:
>>>>> USRP-users@lists.ettus.com>>
>>>>> >     >>>
>>>>> >
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>> >     >>     _______________________________________________
>>>>> >     >>     USRP-users mailing list
>>>>> >     >>     USRP-users@lists.ettus.com
>>>>> >     <mailto:USRP-users@lists.ettus.com>
>>>>> >     <mailto:USRP-users@lists.ettus.com <mailto:
>>>>> USRP-users@lists.ettus.com>>
>>>>> >     >>
>>>>> >
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>> >     >>
>>>>> >     >>
>>>>> >     >> _______________________________________________
>>>>> >     >> USRP-users mailing list
>>>>> >     >> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.co=
m
>>>>> >
>>>>> >     >>
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>> >     >>
>>>>> >     >
>>>>> >     > _______________________________________________
>>>>> >     > USRP-users mailing list
>>>>> >     > USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com=
>
>>>>> >     >
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>> >     >
>>>>> >
>>>>> >
>>>>> >     _______________________________________________
>>>>> >     USRP-users mailing list
>>>>> >     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>>>> >
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>> >
>>>>> >
>>>>> > _______________________________________________
>>>>> > USRP-users mailing list
>>>>> > USRP-users@lists.ettus.com
>>>>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>> >
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>

--000000000000c3e41c05a131a811
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Please ignore messages about=C2=A0 Bus 02, it is not =
a bus linked to USB ports. USB ports are linked to bus 01.</div><div><br></=
div><div>I did the same procedure (plug USRP / USB 3.0 stick and check lsus=
b) with a computer that is currently OK with USRP b210 over 3.0 (UHD 3.10) =
:</div><div>Both USRP and USB stick are &quot;5000M&quot;, whereas it is &q=
uot;480M&quot; when using the erroneous computer.</div><div><br></div><div>=
This is thus in my opinion excluding a problem of UHD.</div><div><br></div>=
<div>Regards,</div><div>Rodolphe<br></div><div><br></div><div><br></div><di=
v><br></div></div><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0jeu. 19 mar=
s 2020 =C3=A0=C2=A009:28, Rodolphe Bertolini &lt;<a href=3D"mailto:bertolin=
i.rodolphe@gmail.com" target=3D"_blank">bertolini.rodolphe@gmail.com</a>&gt=
; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div>Last update :</div><div><br></div><div>When I p=
lug a USB 3.0 stick, dmesg still says that it acts with &quot;full-speed&qu=
ot;, however lsusb gives me :</div><div>=C2=A0 =C2=A0 =C2=A0 Device can ope=
rate at SuperSpeed (5Gbps)</div><div><br></div><div>This does not appear wh=
en USRP is plugged in instead of the USB stick.</div><div><br></div><div>Al=
so I noticed in the very early messages of dmesg :</div><div><br></div><div=
>[ =C2=A0 =C2=A01.684307] xhci_hcd 0000:00:14.0: Host supports USB 3.1 Enha=
nced SuperSpeed</div><div><br></div><div>Regards,</div><div>Rodolphe<br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">Le=C2=A0jeu. 19 mars 2020 =C3=A0=C2=A009:17, Rodolphe Bertolini &lt;<a h=
ref=3D"mailto:bertolini.rodolphe@gmail.com" target=3D"_blank">bertolini.rod=
olphe@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Also lsusb -t gives me th=
is :</div><div><br></div><div># lsusb -t<br>/: =C2=A0<span style=3D"color:r=
gb(255,0,0)">Bus 02.Port 1: Dev 1</span>, Class=3Droot_hub, Driver=3Dxhci_h=
cd/10p, <span style=3D"color:rgb(255,0,0)">10000M</span><br>/: =C2=A0Bus 01=
.Port 1: Dev 1, Class=3Droot_hub, Driver=3Dxhci_hcd/16p, 480M<br>=C2=A0 =C2=
=A0 |__ Port 1: Dev 5, If 0, Class=3DVendor Specific Class, Driver=3D, 480M=
<br>=C2=A0 =C2=A0 |__ Port 10: Dev 2, If 0, Class=3DApplication Specific In=
terface, Driver=3D, 12M<br>=C2=A0 =C2=A0 |__ Port 10: Dev 2, If 1, Class=3D=
Chip/SmartCard, Driver=3D, 12M<br>=C2=A0 =C2=A0 |__ Port 11: Dev 3, If 0, C=
lass=3DVideo, Driver=3Duvcvideo, 480M<br>=C2=A0 =C2=A0 |__ Port 11: Dev 3, =
If 1, Class=3DVideo, Driver=3Duvcvideo, 480M</div><div><br></div><div><br><=
/div><div>Also erratum : I don&#39;t &quot;think&quot; that the bus is 3.0 =
capable, I am &quot;sure&quot;, because I had USRP b210 working for few mon=
ths over 3.0.</div><div><br></div><div>Rodolphe<br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0jeu. 19 ma=
rs 2020 =C3=A0=C2=A009:06, Rodolphe Bertolini &lt;<a href=3D"mailto:bertoli=
ni.rodolphe@gmail.com" target=3D"_blank">bertolini.rodolphe@gmail.com</a>&g=
t; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>Cinaed,</div><div><br></div><div>Thank you.</d=
iv><div>Output is empty (except at FIXME warning : &quot;FIXME: alloc bigge=
r buffer for device capability descriptors&quot;).</div><div>However, witho=
ut filtering I have something like this :</div><div><br></div><div>Bus 002 =
Device 001: ID 1d6b:0003 Linux Foundation <span style=3D"color:rgb(255,0,0)=
">3.0 </span>root hub<br>Device Descriptor:<br>=C2=A0 bLength =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A018<br>=C2=A0 bDescriptorType =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 1<br><span style=3D"color:rgb(255,0,0)">=C2=A0 bcd=
USB =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 3.10</span><br></div><=
div>...</div><div><span style=3D"color:rgb(255,0,0)">=C2=A0 =C2=A0 =C2=A0 b=
InterfaceProtocol =C2=A0 =C2=A0 =C2=A00 Full speed (or root) hub</span></di=
v><div><span style=3D"color:rgb(255,0,0)"><br></span></div><div><span style=
=3D"color:rgb(255,0,0)"><font color=3D"#000000">I think that this bus is US=
B 3.0 capable, but for some reason the &quot;superspeed&quot; is not activa=
ted.</font><br></span></div><div><span style=3D"color:rgb(0,0,0)">Also no i=
nformation about data rate is given about this bus.</span></div><div><span =
style=3D"color:rgb(0,0,0)"><br></span></div><div><span style=3D"color:rgb(0=
,0,0)">Regards,</span></div><div><span style=3D"color:rgb(0,0,0)">Rodolphe<=
/span><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">Le=C2=A0mer. 18 mars 2020 =C3=A0=C2=A020:29, Cinaed Simson =
via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <p>A USB3 port is=C2=A0 SuperSpeed port.</p>
    <p>For a quick check, try<br>
    </p>
    <p>=C2=A0 lsusb -v | grep 5Gbps</p>
    <p>to confirm you have at least 1 working USB3 port.<br>
    </p>
    <p>And then you can check the port speed where the device is
      connected using lsusb -v.</p>
    <p>-- Cinaed</p>
    <p><br>
    </p>
    <p><br>
    </p>
    <div>On 3/18/20 7:36 AM, Rodolphe Bertolini
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Marcus,</div>
        <div>USB plug is rotated (from row is at top), but yes I get the
          exact same port as your.</div>
        <div>Thank you<br>
        </div>
        <div>Regards,</div>
        <div>Rodolphe<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mer. 18 mars 2020 =C3=
=A0=C2=A016:20,
          Marcus M=C3=BCller via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; a
          =C3=A9crit=C2=A0:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi
          Rodolphe,<br>
          <br>
          considering this is as confusing to me as to you: I took a
          picture of my<br>
          USB3 port. When looking at an oblique angle at yours, do you
          see the<br>
          five front-row bronze/gold contacts shown in the attached
          photo?<br>
          <br>
          Best regards,<br>
          Marcus<br>
          <br>
          On 18.03.20 14:33, Rodolphe Bertolini via USRP-users wrote:<br>
          &gt; Thanks to both of you.<br>
          &gt; <br>
          &gt; The port is black, but it has been working for few months
          until I<br>
          &gt; shutdown / change session (I can&#39;t log back to previous
          session for<br>
          &gt; reasons) so I believe that the port by itself isn&#39;t the
          bad guy.<br>
          &gt; <br>
          &gt; It keeps appearing as USB 2 (&quot;high-speed&quot;) when I =
plug it
          and also when<br>
          &gt; I run uhd_find_devices<br>
          &gt; <br>
          &gt; @Cedric I made sure to plug at max both ends<br>
          &gt; <br>
          &gt; Thank you again<br>
          &gt; Regards,<br>
          &gt; Rodolphe<br>
          &gt; <br>
          &gt; Le=C2=A0mer. 18 mars 2020 =C3=A0=C2=A015:02, Cedric Roux via=
 USRP-users<br>
          &gt; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>
          &lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt;&gt;
          a =C3=A9crit=C2=A0:<br>
          &gt; <br>
          &gt;=C2=A0 =C2=A0 =C2=A0Hi,<br>
          &gt; <br>
          &gt;=C2=A0 =C2=A0 =C2=A0be also sure to plug the cable firmly on =
both<br>
          &gt;=C2=A0 =C2=A0 =C2=A0ends. I&#39;ve seen it more than once wit=
h a cable<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&quot;half-plugged&quot; and then it beco=
mes usb2, not usb3.<br>
          &gt; <br>
          &gt;=C2=A0 =C2=A0 =C2=A0My 2 cents.<br>
          &gt; <br>
          &gt;=C2=A0 =C2=A0 =C2=A0Regards,<br>
          &gt;=C2=A0 =C2=A0 =C2=A0C=C3=A9dric.<br>
          &gt; <br>
          &gt;=C2=A0 =C2=A0 =C2=A0On 3/18/20 2:54 PM, Marcus M=C3=BCller vi=
a USRP-users
          wrote:<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt; Hi Rodolphe,<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt; first of all, check whether you&#39;=
re actually
          dealing with a USB3<br>
          &gt;=C2=A0 =C2=A0 =C2=A0port. I<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt; know, sounds strange, but if it&#39;=
s not blue and
          doesn&#39;t have more than<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt; four visible contacts, it&#39;s not
          standard-compliant USB3. The fact that<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt; it&#39;s attached to a xHCI doesn&#3=
9;t itself mean it
          can do USB3.<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt; Then, I can&#39;t quite remember whe=
ther the USB
          controller on the B200<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt; would even register as USB3 before t=
he initial
          firmware is loaded. Try<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt; the following: In one terminal windo=
w, run
          `dmesg -Hwx`. Plug in the<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt; USRP, and see how it appears on the =
bus (it
          seems, as USB2 high-speed<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt; device). After that, in another term=
inal, you&#39;d
          run<br>
          &gt;=C2=A0 =C2=A0 =C2=A0`uhd_find_devices`,<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt; and see whether the device re-enumer=
ates as USB3
          SuperSpeed device.<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt; Best regards,<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt; Marcus<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt; On 18.03.20 13:43, Rodolphe Bertolin=
i via
          USRP-users wrote:<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Hello Ron, (I resend the email, =
I forgot to
          &quot;reply to all&quot;)<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Thank you for your quick feedbac=
k.<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Ok I understand. More informatio=
n, lspci
          gives me :<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; 00:14.0 USB controller: Intel Co=
rporation
          Cannon Lake PCH USB 3.1<br>
          &gt;=C2=A0 =C2=A0 =C2=A0xHCI<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Host Controller (rev 10)<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; So I don&#39;t get why doesn&#39=
;t Ubuntu enables
          USB 3.0 with the B210.<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; My problems looks like this one<=
br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://lists.ettus.com/piperma=
il/usrp-users_lists.ettus.com/2018-July/057323.html" rel=3D"noreferrer" tar=
get=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/=
2018-July/057323.html</a><br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; The output of lsusb -t is simila=
r, with
          &quot;Driver=3D(none)&quot;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; A message of above mentioned thr=
ead suggests
          to enable 3.0 option in<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; BIOS, however I don&#39;t have s=
uch option. And
          even if I had, I<br>
          &gt;=C2=A0 =C2=A0 =C2=A0didn&#39;t not<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; change anything between reboot /=
 session
          switch so I really don&#39;t<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; understand where this regression=
 is coming
          from.<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Also I did the &quot;solution&qu=
ot; mentioned by the
          author :<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; uhd_image_loader --args=3D&quot;=
type=3Db200,reset&quot;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Which did not improve the situat=
ion.<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Thank you again<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Rodolphe<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Le=C2=A0mer. 18 mars 2020 =C3=A0=
=C2=A012:02, Ron Economos
          via USRP-users<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>
          &lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;&gt;&gt=
;
          a =C3=A9crit=C2=A0:<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0dmesg should =
say &quot;new SuperSpeed USB
          device number X using<br>
          &gt;=C2=A0 =C2=A0 =C2=A0xhci_hcd&quot;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0or &quot;new =
SuperSpeed Gen 1 USB device
          number X using xhci_hcd&quot;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0if you<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0have a newer =
kernel.<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0&quot;high-sp=
eed&quot; means USB 2.0.<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0Ron<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0On 3/18/20 03=
:41, Rodolphe Bertolini via
          USRP-users wrote:<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Dear all,=
<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0I have be=
en using a USRP B210 on a
          laptop for months now. For<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0reasons, =
I switched to another Linux
          session, and using this<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0session U=
HD fails to talk to B210
          over USB 3.0<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0dmesg tel=
ls me it is using the
          xhci_hcd driver (which I<br>
          &gt;=C2=A0 =C2=A0 =C2=A0believe is<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0the drive=
r for USB 3.0), and is also
          mentioning=C2=A0 &quot;new high-speed<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0USB&quot;=
, which leads me to think that
          USB 3.0 link is well<br>
          &gt;=C2=A0 =C2=A0 =C2=A0recognized<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0and activ=
e:<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[ =C2=A03=
06.133028] usb 1-1: new
          high-speed USB device number 16<br>
          &gt;=C2=A0 =C2=A0 =C2=A0using<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0xhci_hcd<=
br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[ =C2=A03=
06.260349] usb 1-1: New USB
          device found, idVendor=3D2500,<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0idProduct=
=3D0020<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[ =C2=A03=
06.260351] usb 1-1: New USB
          device strings: Mfr=3D1,<br>
          &gt;=C2=A0 =C2=A0 =C2=A0Product=3D2,<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0SerialNum=
ber=3D3<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[ =C2=A03=
06.260352] usb 1-1: Product:
          USRP B200<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[ =C2=A03=
06.260354] usb 1-1:
          Manufacturer: Ettus Research LLC<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[ =C2=A03=
06.260355] usb 1-1:
          SerialNumber: 31B9289<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0However, =
when running any uhd
          command line, it fails using<br>
          &gt;=C2=A0 =C2=A0 =C2=A0USB 3.0:<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [U=
HD] linux; GNU C++ version
          5.4.0 20160609;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0Boost_105800;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0UHD_3.15.=
0.0-release<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [B=
200] Detected Device: B210<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [B=
200] Operating over USB 2.<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0I have al=
so tried with UHD 3.14.1,
          no improvement.<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0I remembe=
r having a similar issue
          (maybe the same?) that had<br>
          &gt;=C2=A0 =C2=A0 =C2=A0been<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0solved wi=
th something related to
          udev, but I sadly didn&#39;t<br>
          &gt;=C2=A0 =C2=A0 =C2=A0take any<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0note of t=
his.<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Do you ha=
ve any hint?<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Thank you=
.<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Regards,<=
br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Rodolphe<=
br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0
          =C2=A0_______________________________________________<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0USRP-user=
s mailing list<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0<a href=
=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.e=
ttus.com</a><br>
          &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:USRP-users@l=
ists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:USRP-users@l=
ists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>
          &lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" target=
=3D"_blank">USRP-users@lists.ettus.com</a>&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0<br>
          &gt;=C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_b=
lank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a=
><br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0
          =C2=A0_______________________________________________<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0USRP-users ma=
iling list<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"ma=
ilto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.c=
om</a><br>
          &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:USRP-users@l=
ists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:USRP-users@l=
ists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>
          &lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" target=
=3D"_blank">USRP-users@lists.ettus.com</a>&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0<br>
          &gt;=C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_b=
lank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a=
><br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;
          _______________________________________________<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; USRP-users mailing list<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; <a href=3D"mailto:USRP-users@lis=
ts.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>
          &lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" target=
=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; <a href=3D"http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D=
"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
</a><br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt; ____________________________________=
___________<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt; USRP-users mailing list<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt; <a href=3D"mailto:USRP-users@lists.e=
ttus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>
          &lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" target=
=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt; <a href=3D"http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_bl=
ank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>=
<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
          &gt; <br>
          &gt; <br>
          &gt;=C2=A0 =C2=A0 =C2=A0_________________________________________=
______<br>
          &gt;=C2=A0 =C2=A0 =C2=A0USRP-users mailing list<br>
          &gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:USRP-users@lists.ettus.=
com" target=3D"_blank">USRP-users@lists.ettus.com</a>
          &lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" target=
=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://lists.ettus.com/mailman=
/listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">=
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          &gt; <br>
          &gt; <br>
          &gt; _______________________________________________<br>
          &gt; USRP-users mailing list<br>
          &gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_bla=
nk">USRP-users@lists.ettus.com</a><br>
          &gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-user=
s_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.=
com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          &gt; <br>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">U=
SRP-users@lists.ettus.com</a><br>
          <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
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
</blockquote></div>
</blockquote></div>
</blockquote></div></div>

--000000000000c3e41c05a131a811--


--===============6880507465388054940==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6880507465388054940==--

