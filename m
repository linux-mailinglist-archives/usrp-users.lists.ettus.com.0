Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B20D18C02F
	for <lists+usrp-users@lfdr.de>; Thu, 19 Mar 2020 20:17:18 +0100 (CET)
Received: from [::1] (port=59520 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jF0fM-0007Gf-4o; Thu, 19 Mar 2020 15:17:16 -0400
Received: from mail-pl1-f169.google.com ([209.85.214.169]:42906)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cinaed.simson@gmail.com>)
 id 1jF0ei-00074P-6O
 for usrp-users@lists.ettus.com; Thu, 19 Mar 2020 15:16:36 -0400
Received: by mail-pl1-f169.google.com with SMTP id t3so1455156plz.9
 for <usrp-users@lists.ettus.com>; Thu, 19 Mar 2020 12:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language;
 bh=HhXYoQ55xsZoec+ferSqh4jJLH/0tEdT0EUZF2mt7bk=;
 b=gITDHe/JdLkuOm3fqZeB3oXNH3RQWtT6a7OUphvgyGfAhoGWWiF66M9Jk8WSlUU1Kd
 i3yd4tQBJDoXY+hQpyEtsyB/HuJ/9O0mDHvkJX7KR9bJSW1C0SWcNO1ic4hRioyuRyc4
 lI5vdKfah/JoDkC5M9j/X6swW/4W+w79n23w2tR3cCXuV56wjA0dadQV0UcIXqb1C0Ly
 Ffi6jEqWaNaCjimfk8xDPzBJAuof8bYcS+SHZZTus9pjT/ZA+nBnjkH2mTZ9SN4TQOAA
 rebO/7eG08qvyQlfOpRmWmSMflQ4/7RXUaDbCnFpsGmbfjLt/rp5wpx4dcSylinCcX1f
 ZN4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language;
 bh=HhXYoQ55xsZoec+ferSqh4jJLH/0tEdT0EUZF2mt7bk=;
 b=XoTRrXiXyYnDGjb2SspojeYTmH/gbhTA6Zp/DyTumGij9mPTuH5TrBP0l9xPSKZd7t
 AkZ2G29vIvLDux7T0LcQI4BWryLPjMazoFL1GTcN57wpGj4jLgZjsZWdPFfzjZImwAQL
 nv7zOCPWLbmHe0IhRmDyBTRnClj0EarqHQ48wtCh6p/cWzS6p9NCib1RZwGU4nOX9pUh
 CGH7y4H35ilayWid+An8x0GmPsyw+4nAsoioUFmGOGzWMh0KwNHy9eDSsUc/JaS/I38X
 xZYLsORECBXoy+fO65R+XILHVJRqEU0cfY4eS94S3mbNaiLB5WqAArNdZxZ2eMB2zmZh
 Kg5Q==
X-Gm-Message-State: ANhLgQ2C+pempx8qFNH7M16hPfvepY/ssV9DsrNa0LOgcEjMH7t9tuhR
 oQIqoZVbyKep53uuk45SrGvV9Eo=
X-Google-Smtp-Source: ADFU+vteg3snc+EsI3bHz41AaRD3dOGNFUL9IirjIgrGYFFUv12yJjc8e2t+yOLfAN45rRi4zTY9cw==
X-Received: by 2002:a17:902:9a4c:: with SMTP id
 x12mr4542009plv.297.1584645355017; 
 Thu, 19 Mar 2020 12:15:55 -0700 (PDT)
Received: from [10.0.0.16] (c-76-103-30-197.hsd1.ca.comcast.net.
 [76.103.30.197])
 by smtp.gmail.com with ESMTPSA id a15sm3206335pfg.77.2020.03.19.12.15.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Mar 2020 12:15:54 -0700 (PDT)
To: Rodolphe Bertolini <bertolini.rodolphe@gmail.com>
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
Autocrypt: addr=cinaed.simson@gmail.com; keydata=
 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
 tgKEmwfIndcGZvKmEA==
Message-ID: <cf3f3450-64ad-4ed9-3180-0e4025dfaf03@gmail.com>
Date: Thu, 19 Mar 2020 12:15:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAKaLowTYMnyzOL4zYpmzAMEGE9j5GfPKgWYQKJpvs07QHMonYw@mail.gmail.com>
Content-Language: en-US
X-Mailman-Approved-At: Thu, 19 Mar 2020 15:17:11 -0400
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
From: Cinaed Simson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Cinaed Simson <cinaed.simson@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3718301021323321594=="
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

This is a multi-part message in MIME format.
--===============3718301021323321594==
Content-Type: multipart/alternative;
 boundary="------------CD5F1FEE667996E233B9B0E3"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------CD5F1FEE667996E233B9B0E3
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Rodolphe - you need to type

=C2=A0 =C2=A0 lsusb

and find your USRP device ID.

For instance, for my HackRF lsusb indicates it's ID is:

=C2=A0 Bus 003 Device 003: ID 1d50:6089 OpenMoko, Inc. Great Scott Gadget=
s
HackRF One SDR

Then I would type

=C2=A0 lsusb -v -d 1d50:6089

Once you have the output for you USRP device, look for the entry

=C2=A0 bcdUSB

My HackRF has USB2 interface but it's plugged into a USB3 port and lsusb
indicates

=C2=A0 bcdUSB 2

It the problem persists, you may have to swap out the cable - it could
be a cable problem.

-- Cinaed

On 3/19/20 1:06 AM, Rodolphe Bertolini wrote:
> Cinaed,
>
> Thank you.
> Output is empty (except at FIXME warning : "FIXME: alloc bigger buffer
> for device capability descriptors").
> However, without filtering I have something like this :
>
> Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
> Device Descriptor:
> =C2=A0 bLength =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01=
8
> =C2=A0 bDescriptorType =C2=A0 =C2=A0 =C2=A0 =C2=A0 1
> =C2=A0 bcdUSB =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 3.10
> ...
> =C2=A0 =C2=A0 =C2=A0 bInterfaceProtocol =C2=A0 =C2=A0 =C2=A00 Full spee=
d (or root) hub
>
> I think that this bus is USB 3.0 capable, but for some reason the
> "superspeed" is not activated.
> Also no information about data rate is given about this bus.
>
> Regards,
> Rodolphe
>
> Le=C2=A0mer. 18 mars 2020 =C3=A0=C2=A020:29, Cinaed Simson via USRP-use=
rs
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> a =C3=A9=
crit=C2=A0:
>
>     A USB3 port is=C2=A0 SuperSpeed port.
>
>     For a quick check, try
>
>     =C2=A0 lsusb -v | grep 5Gbps
>
>     to confirm you have at least 1 working USB3 port.
>
>     And then you can check the port speed where the device is
>     connected using lsusb -v.
>
>     -- Cinaed
>
>
>
>     On 3/18/20 7:36 AM, Rodolphe Bertolini via USRP-users wrote:
>>     Marcus,
>>     USB plug is rotated (from row is at top), but yes I get the exact
>>     same port as your.
>>     Thank you
>>     Regards,
>>     Rodolphe
>>
>>     Le=C2=A0mer. 18 mars 2020 =C3=A0=C2=A016:20, Marcus M=C3=BCller vi=
a USRP-users
>>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>>     a =C3=A9crit=C2=A0:
>>
>>         Hi Rodolphe,
>>
>>         considering this is as confusing to me as to you: I took a
>>         picture of my
>>         USB3 port. When looking at an oblique angle at yours, do you
>>         see the
>>         five front-row bronze/gold contacts shown in the attached phot=
o?
>>
>>         Best regards,
>>         Marcus
>>
>>         On 18.03.20 14:33, Rodolphe Bertolini via USRP-users wrote:
>>         > Thanks to both of you.
>>         >
>>         > The port is black, but it has been working for few months
>>         until I
>>         > shutdown / change session (I can't log back to previous
>>         session for
>>         > reasons) so I believe that the port by itself isn't the bad
>>         guy.
>>         >
>>         > It keeps appearing as USB 2 ("high-speed") when I plug it
>>         and also when
>>         > I run uhd_find_devices
>>         >
>>         > @Cedric I made sure to plug at max both ends
>>         >
>>         > Thank you again
>>         > Regards,
>>         > Rodolphe
>>         >
>>         > Le=C2=A0mer. 18 mars 2020 =C3=A0=C2=A015:02, Cedric Roux via=
 USRP-users
>>         > <usrp-users@lists.ettus.com
>>         <mailto:usrp-users@lists.ettus.com>
>>         <mailto:usrp-users@lists.ettus.com
>>         <mailto:usrp-users@lists.ettus.com>>> a =C3=A9crit=C2=A0:
>>         >
>>         >=C2=A0 =C2=A0 =C2=A0Hi,
>>         >
>>         >=C2=A0 =C2=A0 =C2=A0be also sure to plug the cable firmly on =
both
>>         >=C2=A0 =C2=A0 =C2=A0ends. I've seen it more than once with a =
cable
>>         >=C2=A0 =C2=A0 =C2=A0"half-plugged" and then it becomes usb2, =
not usb3.
>>         >
>>         >=C2=A0 =C2=A0 =C2=A0My 2 cents.
>>         >
>>         >=C2=A0 =C2=A0 =C2=A0Regards,
>>         >=C2=A0 =C2=A0 =C2=A0C=C3=A9dric.
>>         >
>>         >=C2=A0 =C2=A0 =C2=A0On 3/18/20 2:54 PM, Marcus M=C3=BCller vi=
a USRP-users wrote:
>>         >=C2=A0 =C2=A0 =C2=A0> Hi Rodolphe,
>>         >=C2=A0 =C2=A0 =C2=A0>
>>         >=C2=A0 =C2=A0 =C2=A0> first of all, check whether you're actu=
ally dealing
>>         with a USB3
>>         >=C2=A0 =C2=A0 =C2=A0port. I
>>         >=C2=A0 =C2=A0 =C2=A0> know, sounds strange, but if it's not b=
lue and
>>         doesn't have more than
>>         >=C2=A0 =C2=A0 =C2=A0> four visible contacts, it's not standar=
d-compliant
>>         USB3. The fact that
>>         >=C2=A0 =C2=A0 =C2=A0> it's attached to a xHCI doesn't itself =
mean it can do
>>         USB3.
>>         >=C2=A0 =C2=A0 =C2=A0>
>>         >=C2=A0 =C2=A0 =C2=A0> Then, I can't quite remember whether th=
e USB
>>         controller on the B200
>>         >=C2=A0 =C2=A0 =C2=A0> would even register as USB3 before the =
initial
>>         firmware is loaded. Try
>>         >=C2=A0 =C2=A0 =C2=A0> the following: In one terminal window, =
run `dmesg
>>         -Hwx`. Plug in the
>>         >=C2=A0 =C2=A0 =C2=A0> USRP, and see how it appears on the bus=
 (it seems, as
>>         USB2 high-speed
>>         >=C2=A0 =C2=A0 =C2=A0> device). After that, in another termina=
l, you'd run
>>         >=C2=A0 =C2=A0 =C2=A0`uhd_find_devices`,
>>         >=C2=A0 =C2=A0 =C2=A0> and see whether the device re-enumerate=
s as USB3
>>         SuperSpeed device.
>>         >=C2=A0 =C2=A0 =C2=A0>
>>         >=C2=A0 =C2=A0 =C2=A0> Best regards,
>>         >=C2=A0 =C2=A0 =C2=A0> Marcus
>>         >=C2=A0 =C2=A0 =C2=A0>
>>         >=C2=A0 =C2=A0 =C2=A0> On 18.03.20 13:43, Rodolphe Bertolini v=
ia USRP-users
>>         wrote:
>>         >=C2=A0 =C2=A0 =C2=A0>> Hello Ron, (I resend the email, I forg=
ot to "reply
>>         to all")
>>         >=C2=A0 =C2=A0 =C2=A0>> Thank you for your quick feedback.
>>         >=C2=A0 =C2=A0 =C2=A0>>
>>         >=C2=A0 =C2=A0 =C2=A0>> Ok I understand. More information, lsp=
ci gives me :
>>         >=C2=A0 =C2=A0 =C2=A0>> 00:14.0 USB controller: Intel Corporat=
ion Cannon
>>         Lake PCH USB 3.1
>>         >=C2=A0 =C2=A0 =C2=A0xHCI
>>         >=C2=A0 =C2=A0 =C2=A0>> Host Controller (rev 10)
>>         >=C2=A0 =C2=A0 =C2=A0>> So I don't get why doesn't Ubuntu enab=
les USB 3.0
>>         with the B210.
>>         >=C2=A0 =C2=A0 =C2=A0>>
>>         >=C2=A0 =C2=A0 =C2=A0>> My problems looks like this one
>>         >=C2=A0 =C2=A0 =C2=A0>>
>>         >=C2=A0 =C2=A0
>>         =C2=A0http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/2018-July/057323.html
>>         >=C2=A0 =C2=A0 =C2=A0>>
>>         >=C2=A0 =C2=A0 =C2=A0>> The output of lsusb -t is similar, wit=
h "Driver=3D(none)"
>>         >=C2=A0 =C2=A0 =C2=A0>> A message of above mentioned thread su=
ggests to
>>         enable 3.0 option in
>>         >=C2=A0 =C2=A0 =C2=A0>> BIOS, however I don't have such option=
=2E And even if
>>         I had, I
>>         >=C2=A0 =C2=A0 =C2=A0didn't not
>>         >=C2=A0 =C2=A0 =C2=A0>> change anything between reboot / sessi=
on switch so I
>>         really don't
>>         >=C2=A0 =C2=A0 =C2=A0>> understand where this regression is co=
ming from.
>>         >=C2=A0 =C2=A0 =C2=A0>> Also I did the "solution" mentioned by=
 the author :
>>         >=C2=A0 =C2=A0 =C2=A0>>
>>         >=C2=A0 =C2=A0 =C2=A0>> uhd_image_loader --args=3D"type=3Db200=
,reset"
>>         >=C2=A0 =C2=A0 =C2=A0>>
>>         >=C2=A0 =C2=A0 =C2=A0>>
>>         >=C2=A0 =C2=A0 =C2=A0>> Which did not improve the situation.
>>         >=C2=A0 =C2=A0 =C2=A0>>
>>         >=C2=A0 =C2=A0 =C2=A0>>
>>         >=C2=A0 =C2=A0 =C2=A0>> Thank you again
>>         >=C2=A0 =C2=A0 =C2=A0>>
>>         >=C2=A0 =C2=A0 =C2=A0>> Rodolphe
>>         >=C2=A0 =C2=A0 =C2=A0>>
>>         >=C2=A0 =C2=A0 =C2=A0>> Le=C2=A0mer. 18 mars 2020 =C3=A0=C2=A0=
12:02, Ron Economos via
>>         USRP-users
>>         >=C2=A0 =C2=A0 =C2=A0>> <usrp-users@lists.ettus.com
>>         <mailto:usrp-users@lists.ettus.com>
>>         <mailto:usrp-users@lists.ettus.com
>>         <mailto:usrp-users@lists.ettus.com>>
>>         >=C2=A0 =C2=A0 =C2=A0<mailto:usrp-users@lists.ettus.com
>>         <mailto:usrp-users@lists.ettus.com>
>>         >=C2=A0 =C2=A0 =C2=A0<mailto:usrp-users@lists.ettus.com
>>         <mailto:usrp-users@lists.ettus.com>>>> a =C3=A9crit=C2=A0:
>>         >=C2=A0 =C2=A0 =C2=A0>>
>>         >=C2=A0 =C2=A0 =C2=A0>>=C2=A0 =C2=A0 =C2=A0dmesg should say "n=
ew SuperSpeed USB device
>>         number X using
>>         >=C2=A0 =C2=A0 =C2=A0xhci_hcd"
>>         >=C2=A0 =C2=A0 =C2=A0>>=C2=A0 =C2=A0 =C2=A0or "new SuperSpeed =
Gen 1 USB device number X
>>         using xhci_hcd"
>>         >=C2=A0 =C2=A0 =C2=A0if you
>>         >=C2=A0 =C2=A0 =C2=A0>>=C2=A0 =C2=A0 =C2=A0have a newer kernel=
=2E
>>         >=C2=A0 =C2=A0 =C2=A0>>
>>         >=C2=A0 =C2=A0 =C2=A0>>=C2=A0 =C2=A0 =C2=A0"high-speed" means =
USB 2.0.
>>         >=C2=A0 =C2=A0 =C2=A0>>
>>         >=C2=A0 =C2=A0 =C2=A0>>=C2=A0 =C2=A0 =C2=A0Ron
>>         >=C2=A0 =C2=A0 =C2=A0>>
>>         >=C2=A0 =C2=A0 =C2=A0>>=C2=A0 =C2=A0 =C2=A0On 3/18/20 03:41, R=
odolphe Bertolini via
>>         USRP-users wrote:
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0Dear all,
>>         >=C2=A0 =C2=A0 =C2=A0>>>
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0I have been using =
a USRP B210 on a laptop for
>>         months now. For
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0reasons, I switche=
d to another Linux session,
>>         and using this
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0session UHD fails =
to talk to B210 over USB 3.0
>>         >=C2=A0 =C2=A0 =C2=A0>>>
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0dmesg tells me it =
is using the xhci_hcd driver
>>         (which I
>>         >=C2=A0 =C2=A0 =C2=A0believe is
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0the driver for USB=
 3.0), and is also
>>         mentioning=C2=A0 "new high-speed
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0USB", which leads =
me to think that USB 3.0 link
>>         is well
>>         >=C2=A0 =C2=A0 =C2=A0recognized
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0and active:
>>         >=C2=A0 =C2=A0 =C2=A0>>>
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.133028=
] usb 1-1: new high-speed USB
>>         device number 16
>>         >=C2=A0 =C2=A0 =C2=A0using
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0xhci_hcd
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.260349=
] usb 1-1: New USB device found,
>>         idVendor=3D2500,
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0idProduct=3D0020
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.260351=
] usb 1-1: New USB device strings:
>>         Mfr=3D1,
>>         >=C2=A0 =C2=A0 =C2=A0Product=3D2,
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0SerialNumber=3D3
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.260352=
] usb 1-1: Product: USRP B200
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.260354=
] usb 1-1: Manufacturer: Ettus
>>         Research LLC
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0[ =C2=A0306.260355=
] usb 1-1: SerialNumber: 31B9289
>>         >=C2=A0 =C2=A0 =C2=A0>>>
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0However, when runn=
ing any uhd command line, it
>>         fails using
>>         >=C2=A0 =C2=A0 =C2=A0USB 3.0:
>>         >=C2=A0 =C2=A0 =C2=A0>>>
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0[INFO] [UHD] linux=
; GNU C++ version 5.4.0 20160609;
>>         >=C2=A0 =C2=A0 =C2=A0Boost_105800;
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0UHD_3.15.0.0-relea=
se
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0[INFO] [B200] Dete=
cted Device: B210
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0[INFO] [B200] Oper=
ating over USB 2.
>>         >=C2=A0 =C2=A0 =C2=A0>>>
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0I have also tried =
with UHD 3.14.1, no improvement.
>>         >=C2=A0 =C2=A0 =C2=A0>>>
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0I remember having =
a similar issue (maybe the
>>         same?) that had
>>         >=C2=A0 =C2=A0 =C2=A0been
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0solved with someth=
ing related to udev, but I
>>         sadly didn't
>>         >=C2=A0 =C2=A0 =C2=A0take any
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0note of this.
>>         >=C2=A0 =C2=A0 =C2=A0>>>
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0Do you have any hi=
nt?
>>         >=C2=A0 =C2=A0 =C2=A0>>>
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0Thank you.
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0Regards,
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0Rodolphe
>>         >=C2=A0 =C2=A0 =C2=A0>>>
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0__________________=
_____________________________
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0USRP-users mailing=
 list
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0 =C2=A0USRP-users@lists.e=
ttus.com
>>         <mailto:USRP-users@lists.ettus.com>
>>         >=C2=A0 =C2=A0 =C2=A0<mailto:USRP-users@lists.ettus.com
>>         <mailto:USRP-users@lists.ettus.com>>
>>         >=C2=A0 =C2=A0 =C2=A0<mailto:USRP-users@lists.ettus.com
>>         <mailto:USRP-users@lists.ettus.com>
>>         <mailto:USRP-users@lists.ettus.com
>>         <mailto:USRP-users@lists.ettus.com>>>
>>         >=C2=A0 =C2=A0 =C2=A0>>>=C2=A0 =C2=A0
>>         >=C2=A0 =C2=A0
>>         =C2=A0=C2=A0http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com
>>         >=C2=A0 =C2=A0 =C2=A0>>=C2=A0 =C2=A0 =C2=A0___________________=
____________________________
>>         >=C2=A0 =C2=A0 =C2=A0>>=C2=A0 =C2=A0 =C2=A0USRP-users mailing =
list
>>         >=C2=A0 =C2=A0 =C2=A0>>=C2=A0 =C2=A0 =C2=A0USRP-users@lists.et=
tus.com
>>         <mailto:USRP-users@lists.ettus.com>
>>         >=C2=A0 =C2=A0 =C2=A0<mailto:USRP-users@lists.ettus.com
>>         <mailto:USRP-users@lists.ettus.com>>
>>         >=C2=A0 =C2=A0 =C2=A0<mailto:USRP-users@lists.ettus.com
>>         <mailto:USRP-users@lists.ettus.com>
>>         <mailto:USRP-users@lists.ettus.com
>>         <mailto:USRP-users@lists.ettus.com>>>
>>         >=C2=A0 =C2=A0 =C2=A0>>=C2=A0 =C2=A0
>>         >=C2=A0 =C2=A0
>>         =C2=A0=C2=A0http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com
>>         >=C2=A0 =C2=A0 =C2=A0>>
>>         >=C2=A0 =C2=A0 =C2=A0>>
>>         >=C2=A0 =C2=A0 =C2=A0>> ______________________________________=
_________
>>         >=C2=A0 =C2=A0 =C2=A0>> USRP-users mailing list
>>         >=C2=A0 =C2=A0 =C2=A0>> USRP-users@lists.ettus.com
>>         <mailto:USRP-users@lists.ettus.com>
>>         <mailto:USRP-users@lists.ettus.com
>>         <mailto:USRP-users@lists.ettus.com>>
>>         >=C2=A0 =C2=A0 =C2=A0>>
>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
=2Ecom
>>         >=C2=A0 =C2=A0 =C2=A0>>
>>         >=C2=A0 =C2=A0 =C2=A0>
>>         >=C2=A0 =C2=A0 =C2=A0> _______________________________________=
________
>>         >=C2=A0 =C2=A0 =C2=A0> USRP-users mailing list
>>         >=C2=A0 =C2=A0 =C2=A0> USRP-users@lists.ettus.com
>>         <mailto:USRP-users@lists.ettus.com>
>>         <mailto:USRP-users@lists.ettus.com
>>         <mailto:USRP-users@lists.ettus.com>>
>>         >=C2=A0 =C2=A0 =C2=A0>
>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
=2Ecom
>>         >=C2=A0 =C2=A0 =C2=A0>
>>         >
>>         >
>>         >=C2=A0 =C2=A0 =C2=A0_________________________________________=
______
>>         >=C2=A0 =C2=A0 =C2=A0USRP-users mailing list
>>         >=C2=A0 =C2=A0 =C2=A0USRP-users@lists.ettus.com
>>         <mailto:USRP-users@lists.ettus.com>
>>         <mailto:USRP-users@lists.ettus.com
>>         <mailto:USRP-users@lists.ettus.com>>
>>         >=C2=A0 =C2=A0
>>         =C2=A0http://lists.ettus.com/mailman/listinfo/usrp-users_lists=
=2Eettus.com
>>         >
>>         >
>>         > _______________________________________________
>>         > USRP-users mailing list
>>         > USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.co=
m>
>>         >
>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
=2Ecom
>>         >
>>         _______________________________________________
>>         USRP-users mailing list
>>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>=

>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
=2Ecom
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list
>>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=

>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--------------CD5F1FEE667996E233B9B0E3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi Rodolphe - you need to type</p>
    <p>    lsusb <br>
    </p>
    <p>and find your USRP device ID. <br>
    </p>
    For instance, for my HackRF lsusb indicates it's ID is:<br>
    <p>  Bus 003 Device 003: ID 1d50:6089 OpenMoko, Inc. Great Scott
      Gadgets HackRF One SDR</p>
    <p>Then I would type <br>
    </p>
    <p>  lsusb -v -d 1d50:6089</p>
    <p>Once you have the output for you USRP device, look for the entry
      <br>
    </p>
    <p>  bcdUSB <br>
    </p>
    <p>My HackRF has USB2 interface but it's plugged into a USB3 port
      and lsusb indicates</p>
    <p>  bcdUSB 2</p>
    <p>It the problem persists, you may have to swap out the cable - it
      could be a cable problem.<br>
    </p>
    <p>-- Cinaed<br>
    </p>
    <div class="moz-cite-prefix">On 3/19/20 1:06 AM, Rodolphe Bertolini
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAKaLowTYMnyzOL4zYpmzAMEGE9j5GfPKgWYQKJpvs07QHMonYw@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Cinaed,</div>
        <div><br>
        </div>
        <div>Thank you.</div>
        <div>Output is empty (except at FIXME warning : "FIXME: alloc
          bigger buffer for device capability descriptors").</div>
        <div>However, without filtering I have something like this :</div>
        <div><br>
        </div>
        <div>Bus 002 Device 001: ID 1d6b:0003 Linux Foundation <span
            style="color:rgb(255,0,0)">3.0 </span>root hub<br>
          Device Descriptor:<br>
            bLength                18<br>
            bDescriptorType         1<br>
          <span style="color:rgb(255,0,0)">  bcdUSB               3.10</span><br>
        </div>
        <div>...</div>
        <div><span style="color:rgb(255,0,0)">      bInterfaceProtocol  
               0 Full speed (or root) hub</span></div>
        <div><span style="color:rgb(255,0,0)"><br>
          </span></div>
        <div><span style="color:rgb(255,0,0)"><font color="#000000">I
              think that this bus is USB 3.0 capable, but for some
              reason the "superspeed" is not activated.</font><br>
          </span></div>
        <div><span style="color:rgb(0,0,0)">Also no information about
            data rate is given about this bus.</span></div>
        <div><span style="color:rgb(0,0,0)"><br>
          </span></div>
        <div><span style="color:rgb(0,0,0)">Regards,</span></div>
        <div><span style="color:rgb(0,0,0)">Rodolphe</span><br>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">Le mer. 18 mars 2020 à 20:29,
          Cinaed Simson via USRP-users &lt;<a
            href="mailto:usrp-users@lists.ettus.com"
            moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt; a
          écrit :<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <p>A USB3 port is  SuperSpeed port.</p>
            <p>For a quick check, try<br>
            </p>
            <p>  lsusb -v | grep 5Gbps</p>
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
            <blockquote type="cite">
              <div dir="ltr">
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
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">Le mer. 18 mars 2020
                  à 16:20, Marcus Müller via USRP-users &lt;<a
                    href="mailto:usrp-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
                  a écrit :<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">Hi Rodolphe,<br>
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
                  &gt; shutdown / change session (I can't log back to
                  previous session for<br>
                  &gt; reasons) so I believe that the port by itself
                  isn't the bad guy.<br>
                  &gt; <br>
                  &gt; It keeps appearing as USB 2 ("high-speed") when I
                  plug it and also when<br>
                  &gt; I run uhd_find_devices<br>
                  &gt; <br>
                  &gt; @Cedric I made sure to plug at max both ends<br>
                  &gt; <br>
                  &gt; Thank you again<br>
                  &gt; Regards,<br>
                  &gt; Rodolphe<br>
                  &gt; <br>
                  &gt; Le mer. 18 mars 2020 à 15:02, Cedric Roux via
                  USRP-users<br>
                  &gt; &lt;<a href="mailto:usrp-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>
                  &lt;mailto:<a href="mailto:usrp-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;&gt;
                  a écrit :<br>
                  &gt; <br>
                  &gt;     Hi,<br>
                  &gt; <br>
                  &gt;     be also sure to plug the cable firmly on both<br>
                  &gt;     ends. I've seen it more than once with a
                  cable<br>
                  &gt;     "half-plugged" and then it becomes usb2, not
                  usb3.<br>
                  &gt; <br>
                  &gt;     My 2 cents.<br>
                  &gt; <br>
                  &gt;     Regards,<br>
                  &gt;     Cédric.<br>
                  &gt; <br>
                  &gt;     On 3/18/20 2:54 PM, Marcus Müller via
                  USRP-users wrote:<br>
                  &gt;     &gt; Hi Rodolphe,<br>
                  &gt;     &gt;<br>
                  &gt;     &gt; first of all, check whether you're
                  actually dealing with a USB3<br>
                  &gt;     port. I<br>
                  &gt;     &gt; know, sounds strange, but if it's not
                  blue and doesn't have more than<br>
                  &gt;     &gt; four visible contacts, it's not
                  standard-compliant USB3. The fact that<br>
                  &gt;     &gt; it's attached to a xHCI doesn't itself
                  mean it can do USB3.<br>
                  &gt;     &gt;<br>
                  &gt;     &gt; Then, I can't quite remember whether the
                  USB controller on the B200<br>
                  &gt;     &gt; would even register as USB3 before the
                  initial firmware is loaded. Try<br>
                  &gt;     &gt; the following: In one terminal window,
                  run `dmesg -Hwx`. Plug in the<br>
                  &gt;     &gt; USRP, and see how it appears on the bus
                  (it seems, as USB2 high-speed<br>
                  &gt;     &gt; device). After that, in another
                  terminal, you'd run<br>
                  &gt;     `uhd_find_devices`,<br>
                  &gt;     &gt; and see whether the device re-enumerates
                  as USB3 SuperSpeed device.<br>
                  &gt;     &gt;<br>
                  &gt;     &gt; Best regards,<br>
                  &gt;     &gt; Marcus<br>
                  &gt;     &gt;<br>
                  &gt;     &gt; On 18.03.20 13:43, Rodolphe Bertolini
                  via USRP-users wrote:<br>
                  &gt;     &gt;&gt; Hello Ron, (I resend the email, I
                  forgot to "reply to all")<br>
                  &gt;     &gt;&gt; Thank you for your quick feedback.<br>
                  &gt;     &gt;&gt;<br>
                  &gt;     &gt;&gt; Ok I understand. More information,
                  lspci gives me :<br>
                  &gt;     &gt;&gt; 00:14.0 USB controller: Intel
                  Corporation Cannon Lake PCH USB 3.1<br>
                  &gt;     xHCI<br>
                  &gt;     &gt;&gt; Host Controller (rev 10)<br>
                  &gt;     &gt;&gt; So I don't get why doesn't Ubuntu
                  enables USB 3.0 with the B210.<br>
                  &gt;     &gt;&gt;<br>
                  &gt;     &gt;&gt; My problems looks like this one<br>
                  &gt;     &gt;&gt;<br>
                  &gt;     <a
href="http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-July/057323.html"
                    rel="noreferrer" target="_blank"
                    moz-do-not-send="true">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-July/057323.html</a><br>
                  &gt;     &gt;&gt;<br>
                  &gt;     &gt;&gt; The output of lsusb -t is similar,
                  with "Driver=(none)"<br>
                  &gt;     &gt;&gt; A message of above mentioned thread
                  suggests to enable 3.0 option in<br>
                  &gt;     &gt;&gt; BIOS, however I don't have such
                  option. And even if I had, I<br>
                  &gt;     didn't not<br>
                  &gt;     &gt;&gt; change anything between reboot /
                  session switch so I really don't<br>
                  &gt;     &gt;&gt; understand where this regression is
                  coming from.<br>
                  &gt;     &gt;&gt; Also I did the "solution" mentioned
                  by the author :<br>
                  &gt;     &gt;&gt;<br>
                  &gt;     &gt;&gt; uhd_image_loader
                  --args="type=b200,reset"<br>
                  &gt;     &gt;&gt;<br>
                  &gt;     &gt;&gt;<br>
                  &gt;     &gt;&gt; Which did not improve the situation.<br>
                  &gt;     &gt;&gt;<br>
                  &gt;     &gt;&gt;<br>
                  &gt;     &gt;&gt; Thank you again<br>
                  &gt;     &gt;&gt;<br>
                  &gt;     &gt;&gt; Rodolphe<br>
                  &gt;     &gt;&gt;<br>
                  &gt;     &gt;&gt; Le mer. 18 mars 2020 à 12:02, Ron
                  Economos via USRP-users<br>
                  &gt;     &gt;&gt; &lt;<a
                    href="mailto:usrp-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>
                  &lt;mailto:<a href="mailto:usrp-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;<br>
                  &gt;     &lt;mailto:<a
                    href="mailto:usrp-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a><br>
                  &gt;     &lt;mailto:<a
                    href="mailto:usrp-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;&gt;&gt;
                  a écrit :<br>
                  &gt;     &gt;&gt;<br>
                  &gt;     &gt;&gt;     dmesg should say "new SuperSpeed
                  USB device number X using<br>
                  &gt;     xhci_hcd"<br>
                  &gt;     &gt;&gt;     or "new SuperSpeed Gen 1 USB
                  device number X using xhci_hcd"<br>
                  &gt;     if you<br>
                  &gt;     &gt;&gt;     have a newer kernel.<br>
                  &gt;     &gt;&gt;<br>
                  &gt;     &gt;&gt;     "high-speed" means USB 2.0.<br>
                  &gt;     &gt;&gt;<br>
                  &gt;     &gt;&gt;     Ron<br>
                  &gt;     &gt;&gt;<br>
                  &gt;     &gt;&gt;     On 3/18/20 03:41, Rodolphe
                  Bertolini via USRP-users wrote:<br>
                  &gt;     &gt;&gt;&gt;     Dear all,<br>
                  &gt;     &gt;&gt;&gt;<br>
                  &gt;     &gt;&gt;&gt;     I have been using a USRP
                  B210 on a laptop for months now. For<br>
                  &gt;     &gt;&gt;&gt;     reasons, I switched to
                  another Linux session, and using this<br>
                  &gt;     &gt;&gt;&gt;     session UHD fails to talk to
                  B210 over USB 3.0<br>
                  &gt;     &gt;&gt;&gt;<br>
                  &gt;     &gt;&gt;&gt;     dmesg tells me it is using
                  the xhci_hcd driver (which I<br>
                  &gt;     believe is<br>
                  &gt;     &gt;&gt;&gt;     the driver for USB 3.0), and
                  is also mentioning  "new high-speed<br>
                  &gt;     &gt;&gt;&gt;     USB", which leads me to
                  think that USB 3.0 link is well<br>
                  &gt;     recognized<br>
                  &gt;     &gt;&gt;&gt;     and active:<br>
                  &gt;     &gt;&gt;&gt;<br>
                  &gt;     &gt;&gt;&gt;     [  306.133028] usb 1-1: new
                  high-speed USB device number 16<br>
                  &gt;     using<br>
                  &gt;     &gt;&gt;&gt;     xhci_hcd<br>
                  &gt;     &gt;&gt;&gt;     [  306.260349] usb 1-1: New
                  USB device found, idVendor=2500,<br>
                  &gt;     &gt;&gt;&gt;     idProduct=0020<br>
                  &gt;     &gt;&gt;&gt;     [  306.260351] usb 1-1: New
                  USB device strings: Mfr=1,<br>
                  &gt;     Product=2,<br>
                  &gt;     &gt;&gt;&gt;     SerialNumber=3<br>
                  &gt;     &gt;&gt;&gt;     [  306.260352] usb 1-1:
                  Product: USRP B200<br>
                  &gt;     &gt;&gt;&gt;     [  306.260354] usb 1-1:
                  Manufacturer: Ettus Research LLC<br>
                  &gt;     &gt;&gt;&gt;     [  306.260355] usb 1-1:
                  SerialNumber: 31B9289<br>
                  &gt;     &gt;&gt;&gt;<br>
                  &gt;     &gt;&gt;&gt;     However, when running any
                  uhd command line, it fails using<br>
                  &gt;     USB 3.0:<br>
                  &gt;     &gt;&gt;&gt;<br>
                  &gt;     &gt;&gt;&gt;     [INFO] [UHD] linux; GNU C++
                  version 5.4.0 20160609;<br>
                  &gt;     Boost_105800;<br>
                  &gt;     &gt;&gt;&gt;     UHD_3.15.0.0-release<br>
                  &gt;     &gt;&gt;&gt;     [INFO] [B200] Detected
                  Device: B210<br>
                  &gt;     &gt;&gt;&gt;     [INFO] [B200] Operating over
                  USB 2.<br>
                  &gt;     &gt;&gt;&gt;<br>
                  &gt;     &gt;&gt;&gt;     I have also tried with UHD
                  3.14.1, no improvement.<br>
                  &gt;     &gt;&gt;&gt;<br>
                  &gt;     &gt;&gt;&gt;     I remember having a similar
                  issue (maybe the same?) that had<br>
                  &gt;     been<br>
                  &gt;     &gt;&gt;&gt;     solved with something
                  related to udev, but I sadly didn't<br>
                  &gt;     take any<br>
                  &gt;     &gt;&gt;&gt;     note of this.<br>
                  &gt;     &gt;&gt;&gt;<br>
                  &gt;     &gt;&gt;&gt;     Do you have any hint?<br>
                  &gt;     &gt;&gt;&gt;<br>
                  &gt;     &gt;&gt;&gt;     Thank you.<br>
                  &gt;     &gt;&gt;&gt;     Regards,<br>
                  &gt;     &gt;&gt;&gt;     Rodolphe<br>
                  &gt;     &gt;&gt;&gt;<br>
                  &gt;     &gt;&gt;&gt;   
                   _______________________________________________<br>
                  &gt;     &gt;&gt;&gt;     USRP-users mailing list<br>
                  &gt;     &gt;&gt;&gt;     <a
                    href="mailto:USRP-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
                  &gt;     &lt;mailto:<a
                    href="mailto:USRP-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>&gt;<br>
                  &gt;     &lt;mailto:<a
                    href="mailto:USRP-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
                  &lt;mailto:<a href="mailto:USRP-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>&gt;&gt;<br>
                  &gt;     &gt;&gt;&gt;   <br>
                  &gt;      <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                    rel="noreferrer" target="_blank"
                    moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                  &gt;     &gt;&gt;   
                   _______________________________________________<br>
                  &gt;     &gt;&gt;     USRP-users mailing list<br>
                  &gt;     &gt;&gt;     <a
                    href="mailto:USRP-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
                  &gt;     &lt;mailto:<a
                    href="mailto:USRP-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>&gt;<br>
                  &gt;     &lt;mailto:<a
                    href="mailto:USRP-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
                  &lt;mailto:<a href="mailto:USRP-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>&gt;&gt;<br>
                  &gt;     &gt;&gt;   <br>
                  &gt;      <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                    rel="noreferrer" target="_blank"
                    moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                  &gt;     &gt;&gt;<br>
                  &gt;     &gt;&gt;<br>
                  &gt;     &gt;&gt;
                  _______________________________________________<br>
                  &gt;     &gt;&gt; USRP-users mailing list<br>
                  &gt;     &gt;&gt; <a
                    href="mailto:USRP-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
                  &lt;mailto:<a href="mailto:USRP-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>&gt;<br>
                  &gt;     &gt;&gt; <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                    rel="noreferrer" target="_blank"
                    moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                  &gt;     &gt;&gt;<br>
                  &gt;     &gt;<br>
                  &gt;     &gt;
                  _______________________________________________<br>
                  &gt;     &gt; USRP-users mailing list<br>
                  &gt;     &gt; <a
                    href="mailto:USRP-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
                  &lt;mailto:<a href="mailto:USRP-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>&gt;<br>
                  &gt;     &gt; <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                    rel="noreferrer" target="_blank"
                    moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                  &gt;     &gt;<br>
                  &gt; <br>
                  &gt; <br>
                  &gt;   
                   _______________________________________________<br>
                  &gt;     USRP-users mailing list<br>
                  &gt;     <a href="mailto:USRP-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
                  &lt;mailto:<a href="mailto:USRP-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>&gt;<br>
                  &gt;     <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                    rel="noreferrer" target="_blank"
                    moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                  &gt; <br>
                  &gt; <br>
                  &gt; _______________________________________________<br>
                  &gt; USRP-users mailing list<br>
                  &gt; <a href="mailto:USRP-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
                  &gt; <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                    rel="noreferrer" target="_blank"
                    moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                  &gt; <br>
                  _______________________________________________<br>
                  USRP-users mailing list<br>
                  <a href="mailto:USRP-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
                  <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                    rel="noreferrer" target="_blank"
                    moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                </blockquote>
              </div>
              <br>
              <fieldset></fieldset>
              <pre>_______________________________________________
USRP-users mailing list
<a href="mailto:USRP-users@lists.ettus.com" target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
<a href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
            </blockquote>
          </div>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a href="mailto:USRP-users@lists.ettus.com" target="_blank"
            moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
          <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------CD5F1FEE667996E233B9B0E3--


--===============3718301021323321594==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3718301021323321594==--

