Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D5418C8DB
	for <lists+usrp-users@lfdr.de>; Fri, 20 Mar 2020 09:18:09 +0100 (CET)
Received: from [::1] (port=37920 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jFCqx-00064V-C8; Fri, 20 Mar 2020 04:18:03 -0400
Received: from mail-ed1-f65.google.com ([209.85.208.65]:46650)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bertolini.rodolphe@gmail.com>)
 id 1jFCqt-00060S-3f
 for usrp-users@lists.ettus.com; Fri, 20 Mar 2020 04:17:59 -0400
Received: by mail-ed1-f65.google.com with SMTP id ca19so6098439edb.13
 for <usrp-users@lists.ettus.com>; Fri, 20 Mar 2020 01:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+J13wJ6rRMZfJvHpzKMBiDyDB3Pr8ogb87HacNU5j24=;
 b=uzJqCdeSnrcqEiA0UmfP20jl0UdgsWn+EuyYzO44KNv1Edq40Mp3dgDYIqpByNF/jR
 HoBP7BRgmFFd0SScJdiN8eafRIDIozAH8gkQ7+kPZJpMiFsUUvry4cfS5/8D+UcV/HYp
 qtrES5kVthI9/eKgRhqWyUBziMytHAZVivpB5Z1oxs1NHGmJVIHQYLUdH2HzkeThZazz
 ddTmCAJVNP3b1uRzBtNWuVzLd0IzJCdRZnkbRROCLk4+sguZlWJntT6kOrgtPCGe3o/C
 /2foyVY+c2j7IYCXXoLxYYhq7YTqnP2zj/utVssCaHNPhcwDXn68+3GGOnbes6tQ6nyq
 PIZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+J13wJ6rRMZfJvHpzKMBiDyDB3Pr8ogb87HacNU5j24=;
 b=cCVg/GBuB2h9rEAjsvusRFiCNLjFbaA8Kite/8lhnFzU16lb7W76FTbIrrPZ/z7I6v
 X7eCRNezKGHZf2WCIBcQH7t5Fwo1voFZOIu3V+mEsoQOAzdhamOXdDGefS4lBDPpD2Lj
 mIc3LruTxifp40pdAOjsO8Xdlt2Y3vCmDnTxYuVNB0B5PNGhkkKfW4TbRxLQ8h+dUeTO
 PZIYSvYdCvEmjes+z1RTrMt+oW3B9uPsDZJpPTdrYCfRScGc34/Y2ExamgS+sFMyxPgb
 u0ODeQymES3OaEFSnoYj/39Xo3vIrb3iyoHw2IUpqP6cj+QHWffA7L+4GOXBChLxgbvd
 4H9A==
X-Gm-Message-State: ANhLgQ3T7lsLb+f6vjlbMDw0/ptZKXcI8424Vi9mWCDA31v2B7MqXfOk
 QoBMJyN2xx78wDwxc2ACmFled2OFXKh19fLLJ9A=
X-Google-Smtp-Source: ADFU+vuXs8O4WV4pKnJfvvczWfY6udVVqcz89NlMZzP6VdUCcjAtUxSRX9je67YBY1wP9V49LOq2VS6JKwBH3FOcqdA=
X-Received: by 2002:a05:6402:38e:: with SMTP id
 o14mr6658368edv.356.1584692238035; 
 Fri, 20 Mar 2020 01:17:18 -0700 (PDT)
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
 <cf3f3450-64ad-4ed9-3180-0e4025dfaf03@gmail.com>
In-Reply-To: <cf3f3450-64ad-4ed9-3180-0e4025dfaf03@gmail.com>
Date: Fri, 20 Mar 2020 09:17:06 +0100
Message-ID: <CAKaLowQYC2G5LjSYszfTA4HTrJVC5XfVZmRdTPx0gibb40LLPg@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4312091906837934865=="
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

--===============4312091906837934865==
Content-Type: multipart/alternative; boundary="000000000000ed2d7a05a144e98c"

--000000000000ed2d7a05a144e98c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Cinaed,

During the tests I use a USB 3.0 stick that behaves same as the USRP : with
an other computer, both are well recognized as 3.0, but not in the
erroneous machine. I don't think that neither USB stick, neither USRP USB
cable are faulty.

The output for both USB stickand USRP gives is:
  bcdUSB               2.10

Also for both :
  Device can operate at SuperSpeed (5Gbps)

USB ports are on bus 1.
However, something strange : when USB stick is plugged in (bus 1) at boot
time, it is often detected in bus 2 as SuperSpeed (so as 3.0), then it is
also detected in bus 1, and finally disconnected from bus 2. I don't touch
it during those 3 steps that span over half a second.

I am completely lost.

Thank you !
Regards,
Rodolphe

Le jeu. 19 mars 2020 =C3=A0 20:15, Cinaed Simson <cinaed.simson@gmail.com> =
a
=C3=A9crit :

> Hi Rodolphe - you need to type
>
>     lsusb
>
> and find your USRP device ID.
> For instance, for my HackRF lsusb indicates it's ID is:
>
>   Bus 003 Device 003: ID 1d50:6089 OpenMoko, Inc. Great Scott Gadgets
> HackRF One SDR
>
> Then I would type
>
>   lsusb -v -d 1d50:6089
>
> Once you have the output for you USRP device, look for the entry
>
>   bcdUSB
>
> My HackRF has USB2 interface but it's plugged into a USB3 port and lsusb
> indicates
>
>   bcdUSB 2
>
> It the problem persists, you may have to swap out the cable - it could be
> a cable problem.
>
> -- Cinaed
> On 3/19/20 1:06 AM, Rodolphe Bertolini wrote:
>
> Cinaed,
>
> Thank you.
> Output is empty (except at FIXME warning : "FIXME: alloc bigger buffer fo=
r
> device capability descriptors").
> However, without filtering I have something like this :
>
> Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
> Device Descriptor:
>   bLength                18
>   bDescriptorType         1
>   bcdUSB               3.10
> ...
>       bInterfaceProtocol      0 Full speed (or root) hub
>
> I think that this bus is USB 3.0 capable, but for some reason the
> "superspeed" is not activated.
> Also no information about data rate is given about this bus.
>
> Regards,
> Rodolphe
>
> Le mer. 18 mars 2020 =C3=A0 20:29, Cinaed Simson via USRP-users <
> usrp-users@lists.ettus.com> a =C3=A9crit :
>
>> A USB3 port is  SuperSpeed port.
>>
>> For a quick check, try
>>
>>   lsusb -v | grep 5Gbps
>>
>> to confirm you have at least 1 working USB3 port.
>>
>> And then you can check the port speed where the device is connected usin=
g
>> lsusb -v.
>>
>> -- Cinaed
>>
>>
>>
>> On 3/18/20 7:36 AM, Rodolphe Bertolini via USRP-users wrote:
>>
>> Marcus,
>> USB plug is rotated (from row is at top), but yes I get the exact same
>> port as your.
>> Thank you
>> Regards,
>> Rodolphe
>>
>> Le mer. 18 mars 2020 =C3=A0 16:20, Marcus M=C3=BCller via USRP-users <
>> usrp-users@lists.ettus.com> a =C3=A9crit :
>>
>>> Hi Rodolphe,
>>>
>>> considering this is as confusing to me as to you: I took a picture of m=
y
>>> USB3 port. When looking at an oblique angle at yours, do you see the
>>> five front-row bronze/gold contacts shown in the attached photo?
>>>
>>> Best regards,
>>> Marcus
>>>
>>> On 18.03.20 14:33, Rodolphe Bertolini via USRP-users wrote:
>>> > Thanks to both of you.
>>> >
>>> > The port is black, but it has been working for few months until I
>>> > shutdown / change session (I can't log back to previous session for
>>> > reasons) so I believe that the port by itself isn't the bad guy.
>>> >
>>> > It keeps appearing as USB 2 ("high-speed") when I plug it and also wh=
en
>>> > I run uhd_find_devices
>>> >
>>> > @Cedric I made sure to plug at max both ends
>>> >
>>> > Thank you again
>>> > Regards,
>>> > Rodolphe
>>> >
>>> > Le mer. 18 mars 2020 =C3=A0 15:02, Cedric Roux via USRP-users
>>> > <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> a
>>> =C3=A9crit :
>>> >
>>> >     Hi,
>>> >
>>> >     be also sure to plug the cable firmly on both
>>> >     ends. I've seen it more than once with a cable
>>> >     "half-plugged" and then it becomes usb2, not usb3.
>>> >
>>> >     My 2 cents.
>>> >
>>> >     Regards,
>>> >     C=C3=A9dric.
>>> >
>>> >     On 3/18/20 2:54 PM, Marcus M=C3=BCller via USRP-users wrote:
>>> >     > Hi Rodolphe,
>>> >     >
>>> >     > first of all, check whether you're actually dealing with a USB3
>>> >     port. I
>>> >     > know, sounds strange, but if it's not blue and doesn't have mor=
e
>>> than
>>> >     > four visible contacts, it's not standard-compliant USB3. The
>>> fact that
>>> >     > it's attached to a xHCI doesn't itself mean it can do USB3.
>>> >     >
>>> >     > Then, I can't quite remember whether the USB controller on the
>>> B200
>>> >     > would even register as USB3 before the initial firmware is
>>> loaded. Try
>>> >     > the following: In one terminal window, run `dmesg -Hwx`. Plug i=
n
>>> the
>>> >     > USRP, and see how it appears on the bus (it seems, as USB2
>>> high-speed
>>> >     > device). After that, in another terminal, you'd run
>>> >     `uhd_find_devices`,
>>> >     > and see whether the device re-enumerates as USB3 SuperSpeed
>>> device.
>>> >     >
>>> >     > Best regards,
>>> >     > Marcus
>>> >     >
>>> >     > On 18.03.20 13:43, Rodolphe Bertolini via USRP-users wrote:
>>> >     >> Hello Ron, (I resend the email, I forgot to "reply to all")
>>> >     >> Thank you for your quick feedback.
>>> >     >>
>>> >     >> Ok I understand. More information, lspci gives me :
>>> >     >> 00:14.0 USB controller: Intel Corporation Cannon Lake PCH USB
>>> 3.1
>>> >     xHCI
>>> >     >> Host Controller (rev 10)
>>> >     >> So I don't get why doesn't Ubuntu enables USB 3.0 with the B21=
0.
>>> >     >>
>>> >     >> My problems looks like this one
>>> >     >>
>>> >
>>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-July/0=
57323.html
>>> >     >>
>>> >     >> The output of lsusb -t is similar, with "Driver=3D(none)"
>>> >     >> A message of above mentioned thread suggests to enable 3.0
>>> option in
>>> >     >> BIOS, however I don't have such option. And even if I had, I
>>> >     didn't not
>>> >     >> change anything between reboot / session switch so I really
>>> don't
>>> >     >> understand where this regression is coming from.
>>> >     >> Also I did the "solution" mentioned by the author :
>>> >     >>
>>> >     >> uhd_image_loader --args=3D"type=3Db200,reset"
>>> >     >>
>>> >     >>
>>> >     >> Which did not improve the situation.
>>> >     >>
>>> >     >>
>>> >     >> Thank you again
>>> >     >>
>>> >     >> Rodolphe
>>> >     >>
>>> >     >> Le mer. 18 mars 2020 =C3=A0 12:02, Ron Economos via USRP-users
>>> >     >> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com=
>
>>> >     <mailto:usrp-users@lists.ettus.com
>>> >     <mailto:usrp-users@lists.ettus.com>>> a =C3=A9crit :
>>> >     >>
>>> >     >>     dmesg should say "new SuperSpeed USB device number X using
>>> >     xhci_hcd"
>>> >     >>     or "new SuperSpeed Gen 1 USB device number X using xhci_hc=
d"
>>> >     if you
>>> >     >>     have a newer kernel.
>>> >     >>
>>> >     >>     "high-speed" means USB 2.0.
>>> >     >>
>>> >     >>     Ron
>>> >     >>
>>> >     >>     On 3/18/20 03:41, Rodolphe Bertolini via USRP-users wrote:
>>> >     >>>     Dear all,
>>> >     >>>
>>> >     >>>     I have been using a USRP B210 on a laptop for months now.
>>> For
>>> >     >>>     reasons, I switched to another Linux session, and using
>>> this
>>> >     >>>     session UHD fails to talk to B210 over USB 3.0
>>> >     >>>
>>> >     >>>     dmesg tells me it is using the xhci_hcd driver (which I
>>> >     believe is
>>> >     >>>     the driver for USB 3.0), and is also mentioning  "new
>>> high-speed
>>> >     >>>     USB", which leads me to think that USB 3.0 link is well
>>> >     recognized
>>> >     >>>     and active:
>>> >     >>>
>>> >     >>>     [  306.133028] usb 1-1: new high-speed USB device number =
16
>>> >     using
>>> >     >>>     xhci_hcd
>>> >     >>>     [  306.260349] usb 1-1: New USB device found,
>>> idVendor=3D2500,
>>> >     >>>     idProduct=3D0020
>>> >     >>>     [  306.260351] usb 1-1: New USB device strings: Mfr=3D1,
>>> >     Product=3D2,
>>> >     >>>     SerialNumber=3D3
>>> >     >>>     [  306.260352] usb 1-1: Product: USRP B200
>>> >     >>>     [  306.260354] usb 1-1: Manufacturer: Ettus Research LLC
>>> >     >>>     [  306.260355] usb 1-1: SerialNumber: 31B9289
>>> >     >>>
>>> >     >>>     However, when running any uhd command line, it fails usin=
g
>>> >     USB 3.0:
>>> >     >>>
>>> >     >>>     [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
>>> >     Boost_105800;
>>> >     >>>     UHD_3.15.0.0-release
>>> >     >>>     [INFO] [B200] Detected Device: B210
>>> >     >>>     [INFO] [B200] Operating over USB 2.
>>> >     >>>
>>> >     >>>     I have also tried with UHD 3.14.1, no improvement.
>>> >     >>>
>>> >     >>>     I remember having a similar issue (maybe the same?) that
>>> had
>>> >     been
>>> >     >>>     solved with something related to udev, but I sadly didn't
>>> >     take any
>>> >     >>>     note of this.
>>> >     >>>
>>> >     >>>     Do you have any hint?
>>> >     >>>
>>> >     >>>     Thank you.
>>> >     >>>     Regards,
>>> >     >>>     Rodolphe
>>> >     >>>
>>> >     >>>     _______________________________________________
>>> >     >>>     USRP-users mailing list
>>> >     >>>     USRP-users@lists.ettus.com
>>> >     <mailto:USRP-users@lists.ettus.com>
>>> >     <mailto:USRP-users@lists.ettus.com <mailto:
>>> USRP-users@lists.ettus.com>>
>>> >     >>>
>>> >
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>> >     >>     _______________________________________________
>>> >     >>     USRP-users mailing list
>>> >     >>     USRP-users@lists.ettus.com
>>> >     <mailto:USRP-users@lists.ettus.com>
>>> >     <mailto:USRP-users@lists.ettus.com <mailto:
>>> USRP-users@lists.ettus.com>>
>>> >     >>
>>> >
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>> >     >>
>>> >     >>
>>> >     >> _______________________________________________
>>> >     >> USRP-users mailing list
>>> >     >> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>> >     >>
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>> >     >>
>>> >     >
>>> >     > _______________________________________________
>>> >     > USRP-users mailing list
>>> >     > USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>> >     >
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>> >     >
>>> >
>>> >
>>> >     _______________________________________________
>>> >     USRP-users mailing list
>>> >     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>> >     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m
>>> >
>>> >
>>> > _______________________________________________
>>> > USRP-users mailing list
>>> > USRP-users@lists.ettus.com
>>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>> >
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>> _______________________________________________
>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000ed2d7a05a144e98c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Cinaed,</div><div><br></div><div>During the tes=
ts I use a USB 3.0 stick that behaves same as the USRP : with an other comp=
uter, both are well recognized as 3.0, but not in the erroneous machine. I =
don&#39;t think that neither USB stick, neither USRP USB cable are faulty.<=
br></div><div><br></div><div>The output for both USB stickand USRP gives is=
:</div><div>=C2=A0 bcdUSB =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
2.10</div><div><br></div><div>Also for both :</div><div>=C2=A0 Device can o=
perate at SuperSpeed (5Gbps)<br></div><div><br></div><div>USB ports are on =
bus 1.<br></div><div>However, something strange : when USB stick is plugged=
 in (bus 1) at boot time, it is often detected in bus 2 as SuperSpeed (so a=
s 3.0), then it is also detected in bus 1, and finally disconnected from bu=
s 2. I don&#39;t touch it during those 3 steps that span over half a second=
.</div><div><br></div><div>I am completely lost.</div><div><br></div><div>T=
hank you !</div><div>Regards,</div><div>Rodolphe<br></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0jeu. 19 m=
ars 2020 =C3=A0=C2=A020:15, Cinaed Simson &lt;<a href=3D"mailto:cinaed.sims=
on@gmail.com">cinaed.simson@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <p>Hi Rodolphe - you need to type</p>
    <p>=C2=A0 =C2=A0 lsusb <br>
    </p>
    <p>and find your USRP device ID. <br>
    </p>
    For instance, for my HackRF lsusb indicates it&#39;s ID is:<br>
    <p>=C2=A0 Bus 003 Device 003: ID 1d50:6089 OpenMoko, Inc. Great Scott
      Gadgets HackRF One SDR</p>
    <p>Then I would type <br>
    </p>
    <p>=C2=A0 lsusb -v -d 1d50:6089</p>
    <p>Once you have the output for you USRP device, look for the entry
      <br>
    </p>
    <p>=C2=A0 bcdUSB <br>
    </p>
    <p>My HackRF has USB2 interface but it&#39;s plugged into a USB3 port
      and lsusb indicates</p>
    <p>=C2=A0 bcdUSB 2</p>
    <p>It the problem persists, you may have to swap out the cable - it
      could be a cable problem.<br>
    </p>
    <p>-- Cinaed<br>
    </p>
    <div>On 3/19/20 1:06 AM, Rodolphe Bertolini
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Cinaed,</div>
        <div><br>
        </div>
        <div>Thank you.</div>
        <div>Output is empty (except at FIXME warning : &quot;FIXME: alloc
          bigger buffer for device capability descriptors&quot;).</div>
        <div>However, without filtering I have something like this :</div>
        <div><br>
        </div>
        <div>Bus 002 Device 001: ID 1d6b:0003 Linux Foundation <span style=
=3D"color:rgb(255,0,0)">3.0 </span>root hub<br>
          Device Descriptor:<br>
          =C2=A0 bLength =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A018<br>
          =C2=A0 bDescriptorType =C2=A0 =C2=A0 =C2=A0 =C2=A0 1<br>
          <span style=3D"color:rgb(255,0,0)">=C2=A0 bcdUSB =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 3.10</span><br>
        </div>
        <div>...</div>
        <div><span style=3D"color:rgb(255,0,0)">=C2=A0 =C2=A0 =C2=A0 bInter=
faceProtocol =C2=A0
            =C2=A0 =C2=A00 Full speed (or root) hub</span></div>
        <div><span style=3D"color:rgb(255,0,0)"><br>
          </span></div>
        <div><span style=3D"color:rgb(255,0,0)"><font color=3D"#000000">I
              think that this bus is USB 3.0 capable, but for some
              reason the &quot;superspeed&quot; is not activated.</font><br=
>
          </span></div>
        <div><span style=3D"color:rgb(0,0,0)">Also no information about
            data rate is given about this bus.</span></div>
        <div><span style=3D"color:rgb(0,0,0)"><br>
          </span></div>
        <div><span style=3D"color:rgb(0,0,0)">Regards,</span></div>
        <div><span style=3D"color:rgb(0,0,0)">Rodolphe</span><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mer. 18 mars 2020 =C3=
=A0=C2=A020:29,
          Cinaed Simson via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; a
          =C3=A9crit=C2=A0:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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
            <div>On 3/18/20 7:36 AM, Rodolphe Bertolini via USRP-users
              wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>Marcus,</div>
                <div>USB plug is rotated (from row is at top), but yes I
                  get the exact same port as your.</div>
                <div>Thank you<br>
                </div>
                <div>Regards,</div>
                <div>Rodolphe<br>
                </div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mer. 18 mars =
2020
                  =C3=A0=C2=A016:20, Marcus M=C3=BCller via USRP-users &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&gt;
                  a =C3=A9crit=C2=A0:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Rodolp=
he,<br>
                  <br>
                  considering this is as confusing to me as to you: I
                  took a picture of my<br>
                  USB3 port. When looking at an oblique angle at yours,
                  do you see the<br>
                  five front-row bronze/gold contacts shown in the
                  attached photo?<br>
                  <br>
                  Best regards,<br>
                  Marcus<br>
                  <br>
                  On 18.03.20 14:33, Rodolphe Bertolini via USRP-users
                  wrote:<br>
                  &gt; Thanks to both of you.<br>
                  &gt; <br>
                  &gt; The port is black, but it has been working for
                  few months until I<br>
                  &gt; shutdown / change session (I can&#39;t log back to
                  previous session for<br>
                  &gt; reasons) so I believe that the port by itself
                  isn&#39;t the bad guy.<br>
                  &gt; <br>
                  &gt; It keeps appearing as USB 2 (&quot;high-speed&quot;)=
 when I
                  plug it and also when<br>
                  &gt; I run uhd_find_devices<br>
                  &gt; <br>
                  &gt; @Cedric I made sure to plug at max both ends<br>
                  &gt; <br>
                  &gt; Thank you again<br>
                  &gt; Regards,<br>
                  &gt; Rodolphe<br>
                  &gt; <br>
                  &gt; Le=C2=A0mer. 18 mars 2020 =C3=A0=C2=A015:02, Cedric =
Roux via
                  USRP-users<br>
                  &gt; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
                  &lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;&gt;
                  a =C3=A9crit=C2=A0:<br>
                  &gt; <br>
                  &gt;=C2=A0 =C2=A0 =C2=A0Hi,<br>
                  &gt; <br>
                  &gt;=C2=A0 =C2=A0 =C2=A0be also sure to plug the cable fi=
rmly on both<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0ends. I&#39;ve seen it more than =
once with a
                  cable<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&quot;half-plugged&quot; and then=
 it becomes usb2, not
                  usb3.<br>
                  &gt; <br>
                  &gt;=C2=A0 =C2=A0 =C2=A0My 2 cents.<br>
                  &gt; <br>
                  &gt;=C2=A0 =C2=A0 =C2=A0Regards,<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0C=C3=A9dric.<br>
                  &gt; <br>
                  &gt;=C2=A0 =C2=A0 =C2=A0On 3/18/20 2:54 PM, Marcus M=C3=
=BCller via
                  USRP-users wrote:<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt; Hi Rodolphe,<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt; first of all, check whether =
you&#39;re
                  actually dealing with a USB3<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0port. I<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt; know, sounds strange, but if=
 it&#39;s not
                  blue and doesn&#39;t have more than<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt; four visible contacts, it&#3=
9;s not
                  standard-compliant USB3. The fact that<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt; it&#39;s attached to a xHCI =
doesn&#39;t itself
                  mean it can do USB3.<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt; Then, I can&#39;t quite reme=
mber whether the
                  USB controller on the B200<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt; would even register as USB3 =
before the
                  initial firmware is loaded. Try<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt; the following: In one termin=
al window,
                  run `dmesg -Hwx`. Plug in the<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt; USRP, and see how it appears=
 on the bus
                  (it seems, as USB2 high-speed<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt; device). After that, in anot=
her
                  terminal, you&#39;d run<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0`uhd_find_devices`,<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt; and see whether the device r=
e-enumerates
                  as USB3 SuperSpeed device.<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt; Best regards,<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt; Marcus<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt; On 18.03.20 13:43, Rodolphe =
Bertolini
                  via USRP-users wrote:<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Hello Ron, (I resend the=
 email, I
                  forgot to &quot;reply to all&quot;)<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Thank you for your quick=
 feedback.<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Ok I understand. More in=
formation,
                  lspci gives me :<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; 00:14.0 USB controller: =
Intel
                  Corporation Cannon Lake PCH USB 3.1<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0xHCI<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Host Controller (rev 10)=
<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; So I don&#39;t get why d=
oesn&#39;t Ubuntu
                  enables USB 3.0 with the B210.<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; My problems looks like t=
his one<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://lists.ettus.com=
/pipermail/usrp-users_lists.ettus.com/2018-July/057323.html" rel=3D"norefer=
rer" target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.et=
tus.com/2018-July/057323.html</a><br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; The output of lsusb -t i=
s similar,
                  with &quot;Driver=3D(none)&quot;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; A message of above menti=
oned thread
                  suggests to enable 3.0 option in<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; BIOS, however I don&#39;=
t have such
                  option. And even if I had, I<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0didn&#39;t not<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; change anything between =
reboot /
                  session switch so I really don&#39;t<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; understand where this re=
gression is
                  coming from.<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Also I did the &quot;sol=
ution&quot; mentioned
                  by the author :<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; uhd_image_loader
                  --args=3D&quot;type=3Db200,reset&quot;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Which did not improve th=
e situation.<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Thank you again<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Rodolphe<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Le=C2=A0mer. 18 mars 202=
0 =C3=A0=C2=A012:02, Ron
                  Economos via USRP-users<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &lt;<a href=3D"mailto:us=
rp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>
                  &lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br=
>
                  &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt=
;&gt;&gt;
                  a =C3=A9crit=C2=A0:<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0dmesg=
 should say &quot;new SuperSpeed
                  USB device number X using<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0xhci_hcd&quot;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0or &q=
uot;new SuperSpeed Gen 1 USB
                  device number X using xhci_hcd&quot;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0if you<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0have =
a newer kernel.<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0&quot=
;high-speed&quot; means USB 2.0.<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0Ron<b=
r>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0On 3/=
18/20 03:41, Rodolphe
                  Bertolini via USRP-users wrote:<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0D=
ear all,<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0I=
 have been using a USRP
                  B210 on a laptop for months now. For<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0r=
easons, I switched to
                  another Linux session, and using this<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0s=
ession UHD fails to talk to
                  B210 over USB 3.0<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0d=
mesg tells me it is using
                  the xhci_hcd driver (which I<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0believe is<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0t=
he driver for USB 3.0), and
                  is also mentioning=C2=A0 &quot;new high-speed<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0U=
SB&quot;, which leads me to
                  think that USB 3.0 link is well<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0recognized<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0a=
nd active:<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[=
 =C2=A0306.133028] usb 1-1: new
                  high-speed USB device number 16<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0using<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0x=
hci_hcd<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[=
 =C2=A0306.260349] usb 1-1: New
                  USB device found, idVendor=3D2500,<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0i=
dProduct=3D0020<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[=
 =C2=A0306.260351] usb 1-1: New
                  USB device strings: Mfr=3D1,<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0Product=3D2,<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0S=
erialNumber=3D3<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[=
 =C2=A0306.260352] usb 1-1:
                  Product: USRP B200<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[=
 =C2=A0306.260354] usb 1-1:
                  Manufacturer: Ettus Research LLC<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[=
 =C2=A0306.260355] usb 1-1:
                  SerialNumber: 31B9289<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0H=
owever, when running any
                  uhd command line, it fails using<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0USB 3.0:<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[=
INFO] [UHD] linux; GNU C++
                  version 5.4.0 20160609;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0Boost_105800;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0U=
HD_3.15.0.0-release<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[=
INFO] [B200] Detected
                  Device: B210<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[=
INFO] [B200] Operating over
                  USB 2.<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0I=
 have also tried with UHD
                  3.14.1, no improvement.<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0I=
 remember having a similar
                  issue (maybe the same?) that had<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0been<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0s=
olved with something
                  related to udev, but I sadly didn&#39;t<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0take any<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0n=
ote of this.<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0D=
o you have any hint?<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0T=
hank you.<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0R=
egards,<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0R=
odolphe<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0
                  =C2=A0_______________________________________________<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0U=
SRP-users mailing list<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0<=
a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:USRP=
-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt=
;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:USRP=
-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>
                  &lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;=C2=A0 =C2=A0<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://lists.ett=
us.com/mailman/listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" targ=
et=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettu=
s.com</a><br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0
                  =C2=A0_______________________________________________<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0USRP-=
users mailing list<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0<a hr=
ef=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists=
.ettus.com</a><br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:USRP=
-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt=
;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:USRP=
-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>
                  &lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://lists.ett=
us.com/mailman/listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" targ=
et=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettu=
s.com</a><br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;
                  _______________________________________________<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; USRP-users mailing list<=
br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; <a href=3D"mailto:USRP-u=
sers@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>
                  &lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; <a href=3D"http://lists.=
ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" t=
arget=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.e=
ttus.com</a><br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;
                  _______________________________________________<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt; USRP-users mailing list<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt; <a href=3D"mailto:USRP-users=
@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>
                  &lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt; <a href=3D"http://lists.ettu=
s.com/mailman/listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" targe=
t=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
.com</a><br>
                  &gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
                  &gt; <br>
                  &gt; <br>
                  &gt;=C2=A0 =C2=A0
                  =C2=A0_______________________________________________<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0USRP-users mailing list<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:USRP-users@list=
s.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>
                  &lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
                  &gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://lists.ettus.com=
/mailman/listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<=
/a><br>
                  &gt; <br>
                  &gt; <br>
                  &gt; _______________________________________________<br>
                  &gt; USRP-users mailing list<br>
                  &gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=
=3D"_blank">USRP-users@lists.ettus.com</a><br>
                  &gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/u=
srp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://list=
s.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                  &gt; <br>
                  _______________________________________________<br>
                  USRP-users mailing list<br>
                  <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_=
blank">USRP-users@lists.ettus.com</a><br>
                  <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-u=
sers_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ett=
us.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
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
          <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">U=
SRP-users@lists.ettus.com</a><br>
          <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
  </div>

</blockquote></div>

--000000000000ed2d7a05a144e98c--


--===============4312091906837934865==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4312091906837934865==--

