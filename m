Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2F73C63D4
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 21:38:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 99402384DA6
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 15:38:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UDGQdma7";
	dkim-atps=neutral
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 6F5EB38489B
	for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 15:37:42 -0400 (EDT)
Received: by mail-qk1-f177.google.com with SMTP id z9so5140806qkg.5
        for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 12:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=q+v+aIj40siuiu3Fr+/uUYXsms/0mrFRqe89soMC+aA=;
        b=UDGQdma71UPvgD/U9iKFEDRgkYc7BOzBp1u6bbYnKYnuVGiqmjno5W1V57h/prlb9H
         k8QuYLtPJ4Zof5VAm96YQYmQFId7Kw+owxP/sc7TObduXaEn20TXalZmwpkYn4jCwqls
         56lWpRjT4Tcgsg0HAchxfQmpQs0B2JDyw2LvjMBMJjREamIVdj/ayYi5AkWFqR0E+7fd
         b6+BZ4hpRae182IJQH/aFoXniACAGVoM91Rj4CjUbBEd7ekVvtofF1m9mJxJG23HnQVq
         zIUGshf3SDj/gD1N+QZyN2drSFTcxCEMVQafrK9njSAaqarw60lLIPbD38Z643/98pkj
         tP5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=q+v+aIj40siuiu3Fr+/uUYXsms/0mrFRqe89soMC+aA=;
        b=YNiFjgwySd9AjSmivVpyqVqDeFgbSCCTv2QqlL6OmCXnQx1snO/2niwvZ9hK1W14UU
         Q2mbD0mZNVRBTaKQ3UCgMGJaZF8M8tGcvXbuOSy9Em372pgQkb2cu9ePA8HzCoQsY0Qu
         N2YMSiNTOv0xjy/OfhAo11yThcxSndHLrczSoWu+4d2N/TGADlGcIF/h8XQYiIaqc0vY
         62pk7MNPWBl2e3Y26n3AAb4xCVuMew6MxPcbuqVy9sd+y86jJoH2XMIABDX3p4Un3x4r
         p+4k6qguPAITr4BAv+j/Fj2GYFjAlhFCxg3HFqrsy8zA8BO9P2/eaAcE4vOstDjIdDId
         GjWg==
X-Gm-Message-State: AOAM5318IZEYUgvsYVgp61JOGL7hnf9cZ5ozUCJNQSsPCphnfpfTJJAU
	s4bzh+ru23HgcXCD7QPC3JR0o4A9ReFAFw==
X-Google-Smtp-Source: ABdhPJyQBdDJLSQ/oAYFjPTjq5AOnbxQVp1eopBVkltPBMAwOw+q19fapqJymu9lkrdROB5tRwzCSA==
X-Received: by 2002:a05:620a:a0e:: with SMTP id i14mr305985qka.445.1626118661678;
        Mon, 12 Jul 2021 12:37:41 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id o1sm1092365qta.87.2021.07.12.12.37.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jul 2021 12:37:41 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 12 Jul 2021 15:37:40 -0400
Message-Id: <0C93CCA0-8704-415A-9B50-56A7F5535EB4@gmail.com>
References: <CAMHwfujJV2XecfNenDrSY+hj0LhtnXdi3_Gk50nBacDXsBj16w@mail.gmail.com>
In-Reply-To: <CAMHwfujJV2XecfNenDrSY+hj0LhtnXdi3_Gk50nBacDXsBj16w@mail.gmail.com>
To: "shachar J. brown" <shachar.brown@gmail.com>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: 7RD7ZEDF6ZIRVGY2VQT6ERNZ6HNGOXBT
X-Message-ID-Hash: 7RD7ZEDF6ZIRVGY2VQT6ERNZ6HNGOXBT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "shachar J. brown via USRP-users" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USB Disconnects While running B210 on Intel Nuc
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7RD7ZEDF6ZIRVGY2VQT6ERNZ6HNGOXBT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4725149809364446731=="


--===============4725149809364446731==
Content-Type: multipart/alternative; boundary=Apple-Mail-449C031D-356A-4939-9AFF-6CA8F17049C2
Content-Transfer-Encoding: 7bit


--Apple-Mail-449C031D-356A-4939-9AFF-6CA8F17049C2
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Are you using the Ettus supplied cable?

Controllers will disconnect devices when they sense excess noise on the cabl=
e.=20



Sent from my iPhone

> On Jul 12, 2021, at 3:27 PM, shachar J. brown <shachar.brown@gmail.com> wr=
ote:
>=20
> =EF=BB=BF
> Hi Marcus,
>=20
> Thanks for the reply.
>=20
> I believe this is not a power problem as the B210 was fed with an external=
 power.
> The problem still thrives, any further suggestions are more than welcomed.=

>=20
> BR,
> Steve
>=20
>> On Thu, Jun 24, 2021 at 7:28 PM Marcus D. Leech <patchvonbraun@gmail.com>=
 wrote:
>> On 06/24/2021 02:31 AM, shachar J. brown wrote:
>>> Hi everyone,
>>>=20
>>> I am trying to run the given tx_samples_from_file example.
>>> Unfortunately, I keep receiving the uhd::usb_error, approximately 5-30 m=
inutes into the run.
>>>=20
>>> Technical specs:
>>> USRP: B210.
>>> Host: Intel Nuc, Core i7, 8th gen.
>>> OS: Ubuntu 20
>>> UHD Version: 4.1.0
>>> USB Controler: XHCI (USB3).
>>>=20
>>> Error print:=20
>>> [ERROR] [TX-STREAM] The tx_stream timed out sending 5000 samples (4080 s=
ent).
>>> [ERROR] [UHD] An unexpected exception was caught in a task loop.The task=
 loop will now exit, things may not work.EnvironmentError: IOError: usb rx8 t=
ransfer status: LIBUSB_TRANSFER_NO_DEVICE
>>> terminate called after throwing an instance of 'uhd::usb_error'
>>>   what():  RuntimeError: USBError -4: usb tx4 submit failed: LIBUSB_ERRO=
R_NO_DEVICE
>>> Aborted (core dumped)
>>>=20
>>> dmesg output:
>>> [19924.922965] usb 4-2: USB disconnect, device number 7
>>> [19925.195595] usb 4-2: new SuperSpeed Gen 1 USB device number 8 using x=
hci_hcd
>>> [19925.217437] usb 4-2: LPM exit latency is zeroed, disabling LPM.
>>> [19925.220417] usb 4-2: New USB device found, idVendor=3D2500, idProduct=
=3D0020, bcdDevice=3D 0.00
>>> [19925.220422] usb 4-2: New USB device strings: Mfr=3D1, Product=3D2, Se=
rialNumber=3D3
>>> [19925.220426] usb 4-2: Product: USRP B200
>>> [19925.220429] usb 4-2: Manufacturer: Ettus Research LLC
>>> [19925.220431] usb 4-2: SerialNumber: 31F80A2
>>>=20
>>> Is anyone familiar with this fault?
>>> I would appreciate any help on the matter.
>>>=20
>>> Thanks in advance,
>>> Steve
>>>=20
>>>=20
>> My guess is that your NUC USB controller is unhappy with power consumptio=
n.    Are you using external power on the B2xx, or relying
>>   on USB3 power?
>>=20
>> Also, several years ago, there was an interaction between certain control=
lers and kernel power-saving features that caused the
>>   controller to disconnect stuff even if it was being used.  But I can't f=
or the live of me remember which driver parameter one
>>   had to change to fix this.  It has been several years since this was a p=
roblem.
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-449C031D-356A-4939-9AFF-6CA8F17049C2
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Are you using the Ettus supplied cable?<div=
><br></div><div>Controllers will disconnect devices when they sense excess n=
oise on the cable.&nbsp;</div><div><br></div><div><br><br><div dir=3D"ltr">S=
ent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Ju=
l 12, 2021, at 3:27 PM, shachar J. brown &lt;shachar.brown@gmail.com&gt; wro=
te:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=
=BB=BF<div dir=3D"ltr">Hi Marcus,<div><br></div><div>Thanks for the reply.</=
div><div><br></div><div>I believe this is not a power problem as the B210 wa=
s fed with an external power.</div><div>The problem still thrives, any furth=
er suggestions are more than welcomed.</div><div><br></div><div>BR,</div><di=
v>Steve</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Thu, Jun 24, 2021 at 7:28 PM Marcus D. Leech &lt;<a href=3D"m=
ailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">
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
</div></blockquote></div></body></html>=

--Apple-Mail-449C031D-356A-4939-9AFF-6CA8F17049C2--

--===============4725149809364446731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4725149809364446731==--
