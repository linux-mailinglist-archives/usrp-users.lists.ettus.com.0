Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1A43C68CE
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jul 2021 05:06:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8B32A38476D
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 23:06:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Y4qaOe7y";
	dkim-atps=neutral
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 4EFF7383DA6
	for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 23:05:37 -0400 (EDT)
Received: by mail-qt1-f174.google.com with SMTP id r17so4626248qtp.5
        for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 20:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=NpTCz4eVJHdP+PY2D4ksQhuLtmcwtd0BJ7gESKEn6gA=;
        b=Y4qaOe7yXS+6kcg2zbODHUQKDev6/KS7ZtRk399eKq5lUDk2071Zpe/d9xbdGU8WDM
         ta1trsrwaqY5vcaK3qP+vHLb8gzVmkuRoH9zZBn2dDnTgAgtmo4uaK0jule50v5y2sCu
         lKTl6LRat1V6Az3AdE4S+ePS8f/smzfreR1jIoknsEOpqMV9p1xBJEznMzNMqsy5rFLq
         2CQ1Do/OgDi6zks1ypIkmI55WdhZS3t6I5qIX5h2l2PhE/KQ9bhMAsKIBjWrqIJui+vr
         O06vuH3eH+sdNSzAHf9gRnRLJkr9Cz9xyEHcXjEJC3NnFcxUuDaFtOl8ahqfgJ/yEOJr
         PTxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=NpTCz4eVJHdP+PY2D4ksQhuLtmcwtd0BJ7gESKEn6gA=;
        b=oa9RmCUtwGg5ndmAPH+ydNMzvMWnxZ5CDIL7CNTAyJPMZbuJjy9eSbgXO6dZe8gpw0
         ZFExNcalwNdAKVR/PazhOxye8vH2SeFWlhqfLDjxwbrRaDeWR4mKANB8P47a4R8+ST0l
         fPgR5Igxtf4ZRi4LGDUkyLEVb3tkWsFfZYK7ubMXdFNdb/mS3AeUS0vVVeUU46z7cYxX
         Ds5Jy+5FNIxBhiBvYfpQuEHlaVlBe/b7fD/T83RaNRA4xn9BWW0su+xMkJiidpwtFmSz
         t5R8uN3hOwJevhpC2k1P7aYtMWLLsYFtgt9WjdYkmLfHJbTavS6GZaXfFGlP6fvegJnt
         Ccqg==
X-Gm-Message-State: AOAM531D0WlasTvKxFKD96dUWjrZu2FJablyVd9EJhRWSVrzXG0m/71+
	KpT6XRTaZiBCNpqf/PMvSjpqD/OFU60=
X-Google-Smtp-Source: ABdhPJzg+Jb78KrtBShM2WdZ8LT5fjnOyOZ9LjyGxeNweAUQ8/cA+kNRAVKV8ZDGKhVuQE/2+13jyQ==
X-Received: by 2002:ac8:5cd5:: with SMTP id s21mr2007749qta.192.1626145536236;
        Mon, 12 Jul 2021 20:05:36 -0700 (PDT)
Received: from smtpclient.apple ([2601:151:c000:a810:8147:5bb9:b185:1190])
        by smtp.gmail.com with ESMTPSA id h4sm6543918qti.0.2021.07.12.20.05.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jul 2021 20:05:35 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 12 Jul 2021 23:05:34 -0400
Message-Id: <7437B3C0-7B54-4FD3-B3C9-C95ABF3BE713@gmail.com>
References: <CAMHwfuhSj+b=UicdcQEufuWRmhUiOHgVFpBRNmhCaWwkcvVVGw@mail.gmail.com>
In-Reply-To: <CAMHwfuhSj+b=UicdcQEufuWRmhUiOHgVFpBRNmhCaWwkcvVVGw@mail.gmail.com>
To: "shachar J. brown" <shachar.brown@gmail.com>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: WLOK4ZZNV5DSX7JV4TVCUMKLVTUR2XAP
X-Message-ID-Hash: WLOK4ZZNV5DSX7JV4TVCUMKLVTUR2XAP
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "shachar J. brown via USRP-users" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USB Disconnects While running B210 on Intel Nuc
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WLOK4ZZNV5DSX7JV4TVCUMKLVTUR2XAP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5432938898505867642=="


--===============5432938898505867642==
Content-Type: multipart/alternative; boundary=Apple-Mail-34B4DB4E-86F1-4B65-9C55-9D971435E3CF
Content-Transfer-Encoding: 7bit


--Apple-Mail-34B4DB4E-86F1-4B65-9C55-9D971435E3CF
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Have you disabled usb auto-suspend, turned off all power saving, turned off f=
requency scaling?

<end transmission>

> On Jul 12, 2021, at 19:22, shachar J. brown <shachar.brown@gmail.com> wrot=
e:
>=20
> =EF=BB=BF
> Hi Marcus,
>=20
> Yes indeed. original cable.
>=20
> BTW, additional information: Different ports have different durations befo=
re they crash.
> Specifically, ports on one side survive much longer than the other side.
> This holds while the ports share similar color and marking.
>=20
> BR,
> Steve
>=20
>=20
>=20
>> On Mon, Jul 12, 2021 at 10:37 PM Marcus D Leech <patchvonbraun@gmail.com>=
 wrote:
>> Are you using the Ettus supplied cable?
>>=20
>> Controllers will disconnect devices when they sense excess noise on the c=
able.=20
>>=20
>>=20
>>=20
>> Sent from my iPhone
>>=20
>>>> On Jul 12, 2021, at 3:27 PM, shachar J. brown <shachar.brown@gmail.com>=
 wrote:
>>>>=20
>>> =EF=BB=BF
>>> Hi Marcus,
>>>=20
>>> Thanks for the reply.
>>>=20
>>> I believe this is not a power problem as the B210 was fed with an extern=
al power.
>>> The problem still thrives, any further suggestions are more than welcome=
d.
>>>=20
>>> BR,
>>> Steve
>>>=20
>>>> On Thu, Jun 24, 2021 at 7:28 PM Marcus D. Leech <patchvonbraun@gmail.co=
m> wrote:
>>>> On 06/24/2021 02:31 AM, shachar J. brown wrote:
>>>>> Hi everyone,
>>>>>=20
>>>>> I am trying to run the given tx_samples_from_file example.
>>>>> Unfortunately, I keep receiving the uhd::usb_error, approximately 5-30=
 minutes into the run.
>>>>>=20
>>>>> Technical specs:
>>>>> USRP: B210.
>>>>> Host: Intel Nuc, Core i7, 8th gen.
>>>>> OS: Ubuntu 20
>>>>> UHD Version: 4.1.0
>>>>> USB Controler: XHCI (USB3).
>>>>>=20
>>>>> Error print:=20
>>>>> [ERROR] [TX-STREAM] The tx_stream timed out sending 5000 samples (4080=
 sent).
>>>>> [ERROR] [UHD] An unexpected exception was caught in a task loop.The ta=
sk loop will now exit, things may not work.EnvironmentError: IOError: usb rx=
8 transfer status: LIBUSB_TRANSFER_NO_DEVICE
>>>>> terminate called after throwing an instance of 'uhd::usb_error'
>>>>>   what():  RuntimeError: USBError -4: usb tx4 submit failed: LIBUSB_ER=
ROR_NO_DEVICE
>>>>> Aborted (core dumped)
>>>>>=20
>>>>> dmesg output:
>>>>> [19924.922965] usb 4-2: USB disconnect, device number 7
>>>>> [19925.195595] usb 4-2: new SuperSpeed Gen 1 USB device number 8 using=
 xhci_hcd
>>>>> [19925.217437] usb 4-2: LPM exit latency is zeroed, disabling LPM.
>>>>> [19925.220417] usb 4-2: New USB device found, idVendor=3D2500, idProdu=
ct=3D0020, bcdDevice=3D 0.00
>>>>> [19925.220422] usb 4-2: New USB device strings: Mfr=3D1, Product=3D2, S=
erialNumber=3D3
>>>>> [19925.220426] usb 4-2: Product: USRP B200
>>>>> [19925.220429] usb 4-2: Manufacturer: Ettus Research LLC
>>>>> [19925.220431] usb 4-2: SerialNumber: 31F80A2
>>>>>=20
>>>>> Is anyone familiar with this fault?
>>>>> I would appreciate any help on the matter.
>>>>>=20
>>>>> Thanks in advance,
>>>>> Steve
>>>>>=20
>>>>>=20
>>>> My guess is that your NUC USB controller is unhappy with power consumpt=
ion.    Are you using external power on the B2xx, or relying
>>>>   on USB3 power?
>>>>=20
>>>> Also, several years ago, there was an interaction between certain contr=
ollers and kernel power-saving features that caused the
>>>>   controller to disconnect stuff even if it was being used.  But I can'=
t for the live of me remember which driver parameter one
>>>>   had to change to fix this.  It has been several years since this was a=
 problem.
>>>>=20
>>>>=20
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-34B4DB4E-86F1-4B65-9C55-9D971435E3CF
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Have you disabled usb auto-suspend, turned o=
ff all power saving, turned off frequency scaling?<br><br><div dir=3D"ltr">&=
lt;<span class=3D"Apple-style-span" style=3D"-webkit-tap-highlight-color: rg=
ba(26, 26, 26, 0.296875); -webkit-composition-fill-color: rgba(175, 192, 227=
, 0.230469); -webkit-composition-frame-color: rgba(77, 128, 180, 0.230469); "=
>end transmission&gt;</span></div><div dir=3D"ltr"><br><blockquote type=3D"c=
ite">On Jul 12, 2021, at 19:22, shachar J. brown &lt;shachar.brown@gmail.com=
&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"=
ltr">=EF=BB=BF<div dir=3D"ltr"><div dir=3D"ltr">Hi Marcus,<div><br></div><di=
v>Yes indeed. original cable.</div><div><br></div><div>BTW, additional infor=
mation: Different ports have different durations before they crash.</div><di=
v>Specifically, ports on one side survive much longer than the other side.</=
div><div>This holds while the ports&nbsp;share similar&nbsp;color and markin=
g.</div><div><br></div><div>BR,</div><div>Steve</div><div><br></div><div><br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Mon, Jul 12, 2021 at 10:37 PM Marcus D Leech &lt;<a href=3D"mailto:=
patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Are you usin=
g the Ettus supplied cable?<div><br></div><div>Controllers will disconnect d=
evices when they sense excess noise on the cable.&nbsp;</div><div><br></div>=
<div><br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br>=
<blockquote type=3D"cite">On Jul 12, 2021, at 3:27 PM, shachar J. brown &lt;=
<a href=3D"mailto:shachar.brown@gmail.com" target=3D"_blank">shachar.brown@g=
mail.com</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite">=
<div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Hi Marcus,<div><br></div><div>Tha=
nks for the reply.</div><div><br></div><div>I believe this is not a power pr=
oblem as the B210 was fed with an external power.</div><div>The problem stil=
l thrives, any further suggestions are more than welcomed.</div><div><br></d=
iv><div>BR,</div><div>Steve</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 24, 2021 at 7:28 PM Marcus D. Le=
ech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvo=
nbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 06/24/2021 02:31 AM, shachar J.
      brown wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>Hi everyone,</div>
        <div><br>
        </div>
        <div>I am trying to run the given tx_samples_from_file example.</div=
>
        <div>Unfortunately, I keep receiving the uhd::usb_error,
          approximately 5-30 minutes into the run.</div>
        <div><br>
        </div>
        <div><b>Technical specs:</b></div>
        <div>USRP: B210.</div>
        <div>Host: Intel Nuc, Core i7, 8th gen.</div>
        <div>OS: Ubuntu 20</div>
        <div>UHD Version: 4.1.0</div>
        <div>USB Controler: XHCI (USB3).</div>
        <div><br>
        </div>
        <div><b>Error print: <br>
          </b></div>
        <div>[ERROR] [TX-STREAM] The tx_stream timed out sending 5000
          samples (4080 sent).<br>
          [ERROR] [UHD] An unexpected exception was caught in a task
          loop.The task loop will now exit, things may not
          work.EnvironmentError: IOError: usb rx8 transfer status:
          LIBUSB_TRANSFER_NO_DEVICE<br>
          terminate called after throwing an instance of
          'uhd::usb_error'<br>
          &nbsp; what(): &nbsp;RuntimeError: USBError -4: usb tx4 submit fai=
led:
          LIBUSB_ERROR_NO_DEVICE<br>
          Aborted (core dumped)</div>
        <div><br>
        </div>
        <div><b>dmesg output:<br>
          </b></div>
        <div>[19924.922965] usb 4-2: USB disconnect, device number 7<br>
          [19925.195595] usb 4-2: new SuperSpeed Gen 1 USB device number
          8 using xhci_hcd<br>
          [19925.217437] usb 4-2: LPM exit latency is zeroed, disabling
          LPM.<br>
          [19925.220417] usb 4-2: New USB device found, idVendor=3D2500,
          idProduct=3D0020, bcdDevice=3D 0.00<br>
          [19925.220422] usb 4-2: New USB device strings: Mfr=3D1,
          Product=3D2, SerialNumber=3D3<br>
          [19925.220426] usb 4-2: Product: USRP B200<br>
          [19925.220429] usb 4-2: Manufacturer: Ettus Research LLC<br>
          [19925.220431] usb 4-2: SerialNumber: 31F80A2<br>
        </div>
        <div><br>
        </div>
        <div>Is anyone familiar with this fault?</div>
        <div>I would appreciate any help on the matter.</div>
        <div><br>
        </div>
        <div>Thanks in advance,</div>
        <div>Steve<br>
        </div>
        <div><br>
        </div>
        <br>
      </div>
    </blockquote>
    My guess is that your NUC USB controller is unhappy with power
    consumption.&nbsp;&nbsp;&nbsp; Are you using external power on the B2xx,=
 or relying<br>
    &nbsp; on USB3 power?<br>
    <br>
    Also, several years ago, there was an interaction between certain
    controllers and kernel power-saving features that caused the<br>
    &nbsp; controller to disconnect stuff even if it was being used.&nbsp; B=
ut I
    can't for the live of me remember which driver parameter one<br>
    &nbsp; had to change to fix this.&nbsp; It has been several years since t=
his
    was a problem.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></div></blockquote></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-34B4DB4E-86F1-4B65-9C55-9D971435E3CF--

--===============5432938898505867642==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5432938898505867642==--
