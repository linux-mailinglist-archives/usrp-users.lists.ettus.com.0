Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D87B4379F7
	for <lists+usrp-users@lfdr.de>; Fri, 22 Oct 2021 17:34:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 42B9A3847DC
	for <lists+usrp-users@lfdr.de>; Fri, 22 Oct 2021 11:34:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MCyzstpe";
	dkim-atps=neutral
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by mm2.emwd.com (Postfix) with ESMTPS id E6249384407
	for <USRP-users@lists.ettus.com>; Fri, 22 Oct 2021 11:33:52 -0400 (EDT)
Received: by mail-yb1-f180.google.com with SMTP id i84so7765592ybc.12
        for <USRP-users@lists.ettus.com>; Fri, 22 Oct 2021 08:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RVAIYhrY83l700THmnntkEFpE9PU/xTz0AfY/yJb9ZE=;
        b=MCyzstpegKV+nO55IRBxUlhwpuGiuT5flEs2uPb6enOXRmehXs3knV4NNdbDbMv3PS
         4TA38PY7d7AMot+8lKNHgwe3qAeUdbzqYYklr9honnucNQW871i88ceUfsTA9x4u7Tv6
         tPnwT1OQ/nfpraozWm5SfPHUUApO3Wk+uFK+riQPDasmTcQGW3Db57sFscKk4plorOp5
         taZz6StNAPBabL2i5FXQ2pDiFQf2Ie3LKsnTPAsm1CZj1t8RJ2rMhOqg8ALA8ZVlyjEx
         /FPotnHnYRD34AXyNKEeo8pbK3dCtR5p9NsIvYgUEUoeFJD5+KFgUAyldG5eVYrYQ+tF
         H0cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RVAIYhrY83l700THmnntkEFpE9PU/xTz0AfY/yJb9ZE=;
        b=U70FgjD0cgtDLl8hUz38JH1NUELZN9PzMLozDNgRlkK68ioX7X9l7ED0FPwVJ/4q4B
         07qpTDolWfb5U28YjFClfFPSIUv4L6OIUeARry9GtEnLqQw5qMVtZUbrQP98WBfVrB3x
         CsJn/3QpNA5t+eb65FzwjSKCtHKCYZq9GesX+L3xpMt7VU/ERaAtddfwW5U9zmyEZCpN
         sLqa7eka4vboDTL+vhfoaery24dXaTzpJWHwHzzHm7e/40eaE8K4UQe4jzRuOnq9VgzJ
         WLowYDCFJSdl+ijn54yJeCptAXpe/50scr5ZW4j00EyHqtuUNT6DI3EwM31CsIMDB+NI
         p9fw==
X-Gm-Message-State: AOAM532THiGaD8JhOqPrLOojGjxA9elcRzEMl21CYwpKjav6OTyR+j2B
	RnTI83PGBMcUYUcYGVNZFMoSRmEET2IsnHnMd9Q=
X-Google-Smtp-Source: ABdhPJzmE/f8D99R5ADuMAfWinTXrVwujOSrRtvKjaCzG0MEIM9tYTu2r6VSZ39RXPYDv2XnJHnbhZOR8tryx4rFpO8=
X-Received: by 2002:a25:81c8:: with SMTP id n8mr413025ybm.371.1634916832109;
 Fri, 22 Oct 2021 08:33:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAN+Y6vALVOHVGX+bT6EGDH6erEeSbK3mYMTABCRpEPFnQXdDSw@mail.gmail.com>
 <32778a04-eddc-32d4-7c93-23b24baa8669@gmail.com> <CAN+Y6vBOBQ=_7_cXtpu7vfAJmuo65-8Wi0aCPjU0hgUiEB0iOA@mail.gmail.com>
 <75f3809f-3c44-2e46-bbaa-bdf23b77c567@gmail.com>
In-Reply-To: <75f3809f-3c44-2e46-bbaa-bdf23b77c567@gmail.com>
From: isaac mario tupac davila <isacctd92@gmail.com>
Date: Fri, 22 Oct 2021 10:33:39 -0500
Message-ID: <CAN+Y6vA6o+OX48SEJUCpCtKua-R8gceQXuJu7o71ziJAAoLNXA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: EANA6O36OXGL2IATZIZXNVXN6M3CIHRY
X-Message-ID-Hash: EANA6O36OXGL2IATZIZXNVXN6M3CIHRY
X-MailFrom: isacctd92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: discuss-gnuradio@gnu.org, USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Installing Images and firmware USRPN200/N210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EANA6O36OXGL2IATZIZXNVXN6M3CIHRY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5161823353173687443=="

--===============5161823353173687443==
Content-Type: multipart/alternative; boundary="00000000000003e76205cef2bded"

--00000000000003e76205cef2bded
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus

The voltage level of my PPS is 5.04V,from a trimble thunderbolt.

This is the complete output log when I run test_pps_input.

itupac@itupac:~/workarea-uhd/uhd/host/build/examples$ ./test_pps_input
--source external
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
UHD_3.14.0.HEAD-0-g6875d061
[WARNING]
[UHD] Unable to set the thread priority. Performance may be negatively
affected.
Please see the general application notes in the manual for instructions.
EnvironmentError: OSError: error in pthread_setschedparamCreating the usrp
device with: ...

[INFO] [USRP2] Opening a USRP2/N-Series device...
[INFO] [USRP2] Current recv frame size: 1472 bytes
[INFO] [USRP2] Current send frame size: 1472 bytes
[WARNING] [USRP2] Unable to identify device - assuming USRP2/N-Series devic=
e
[WARNING] [UHD] Unable to set the thread priority. Performance may be
negatively affected.
Please see the general application notes in the manual for instructions.
EnvironmentError: OSError: error in pthread_setschedparam
Using Device: Single USRP:
  Device: USRP2 / N-Series Device
  Mboard 0: N???
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: BasicRX (AB)
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Unknown (0xffff) - 0


Attempt to detect the PPS and set the time...

[INFO] [MULTI_USRP]     1) catch time transition at pps edge
[WARNING] [UHD] Unable to set the thread priority. Performance may be
negatively affected.
Please see the general application notes in the manual for instructions.
EnvironmentError: OSError: error in pthread_setschedparam
[WARNING] [UHD] Unable to set the thread priority. Performance may be
negatively affected.
Please see the general application notes in the manual for instructions.
[WARNING] [UHD] Unable to set the thread priority. Performance may be
negatively affected.
Please see the general application notes in the manual for instructions.
EnvironmentError: OSError: error in pthread_setschedparam
Error: RuntimeError: Board 0 may not be getting a PPS signal!
No PPS detected within the time interval.
See the application notes for your device.

El mi=C3=A9, 20 oct 2021 a las 20:40, Marcus D. Leech (<patchvonbraun@gmail=
.com>)
escribi=C3=B3:

> On 2021-10-20 4:19 p.m., isaac mario tupac davila wrote:
>
> Hi Marcus
>
> Curiosity and quickness possessed me. I tried first to burn it with the
> usrp_n210_r4_fpga.bit as I have a N210 but it failed. Later, I could burn
> it with the usrp_n200_r4_fpga.bit. I changed the Ip and installed the
> usrp_n200_fw.bin  and  usrp_n200_r4_fpga.bin. It could recognize it. My
> FPGA is a Spartan 3 XC3SD1800A.
>
> That FPGA type unambiguously makes it an N200, not an N210, so loading th=
e
> N210 FPGA into it would be guaranteed to fail.
>
> The N210 has the XC3SD3400A.
>
> What is the voltage level of your PPS signal?
>
> COuld you share the complete output log of the test_pps_input program?
>
> Also, are you specifying the --source external option?  It may be looking
> at the PPS from the GPSDO, which you don't have installed.
>
>
>
>
>
>
> EnvironmentError: OSError: error in pthread_setschedparam
>   _____________________________________________________
>  /
> |       Device: USRP2 / N-Series Device
> |     _____________________________________________________
> |    /
> |   |       Mboard: N???
> |   |   mac-addr: 00:00:00:00:40:00
> |   |   ip-addr: 192.168.10.3
> |   |   subnet: 0.0.0.104
> |   |   gateway: 255.255.255.255
> |   |   gpsdo: none
> |   |   serial: 0
> |   |   FW Version: 12.4
> |   |   FPGA Version: 11.1
> |   |
> |   |   Time sources:  none, external, _external_, mimo
> |   |   Clock sources: internal, external, mimo
> |   |   Sensors: mimo_locked, ref_locked
>
> The problem is when I run the ./test_pps_input from the uhd my USRP fails
> finding the PPS.
>
> Please see the general application notes in the manual for instructions.
> EnvironmentError: OSError: error in pthread_setschedparam
> Error: RuntimeError: Board 0 may not be getting a PPS signal!
> No PPS detected within the time interval.
> See the application notes for your device.
>
> What could be the problem? Maybe the firmware? I'm not completely sure
> about it
>
> Any help or advice will be appreciate
>
> Regards
> Isaac T.
>
> El vie, 15 oct 2021 a las 20:12, Marcus D. Leech (<patchvonbraun@gmail.co=
m>)
> escribi=C3=B3:
>
>> On 2021-10-15 5:57 p.m., isaac mario tupac davila wrote:
>> > Hello
>> >
>> > I'm Isaac. I have a tricky thing here instaling images. I have a USRP
>> > N210 with FW Version: 12.1 FPGA Version: 10.0. When I prove the pps
>> > test, it says: No PPS detected within the time interval. I believe it
>> > is for the FPGA image(v10). So I tried to update the image and
>> > firmware doing: ./uhd_images_downloader.py and later:
>> > ./uhd_image_loader
>> > --args=3D"type=3Dusrp2,addr=3D192.168.10.2,overwrite-safe"
>> > --fw-path=3D/usr/local/share/uhd/images/usrp_n210_fw.bin
>> > --fpga-path=3D/usr/local/share/uhd/images/usrp_n210_r4_fpga.bin, only
>> once.
>> >
>> > I turned off my USRPN210 and now I can't find it (doesn't have IP
>> > anymore) and any light(A,B,C or D) has turned on.
>> >
>> > The interesting thing is that I have a second USRP (N200,FW Version:
>> > 12.3 FPGA Version: 10.0) with the same PPS problem and I don't want to
>> > make the same mistake again. So...
>> >
>> > 1. What do you think I did wrong? =C2=BFDo I have to eliminate
>> > overwrite-safe in the command?
>> Why did you use overwrite-safe?  What possessed you to do that? Most of
>> the time there is NO reason to overwrite the safe-mode image, since it
>>    is an image specifically to help you get through loading a bad "main"
>> image.
>>
>> > 2. How could I save my first USRP? Do I have to burn the FW and image
>> > with a burner JTAG directly on the motherboard?
>> Almost certainly you do now.
>>
>>
>> https://kb.ettus.com/N200/N210_Device_Recovery#Unbricking_an_N-Series_De=
vice
>>
>>
>> >
>> > Any help will be appreciate it.
>> > Thanks
>> > Regards
>> > Isaac T.
>> >
>>
>>
>>
>

--00000000000003e76205cef2bded
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Marcus</div><div><br></div><div>The voltage level =
of my PPS is 5.04V,from a trimble thunderbolt.<br></div><div><br></div><div=
>This is the complete output log when I run test_pps_input.</div><div><br><=
/div><div>itupac@itupac:~/workarea-uhd/uhd/host/build/examples$ ./test_pps_=
input --source external </div>[INFO] [UHD] linux; GNU C++ version 7.4.0; Bo=
ost_106501; UHD_3.14.0.HEAD-0-g6875d061<br>[WARNING] <br>[UHD] Unable to se=
t the thread priority. Performance may be negatively affected.<br>Please se=
e the general application notes in the manual for instructions.<br>Environm=
entError: OSError: error in pthread_setschedparamCreating the usrp device w=
ith: ...<br><br>[INFO] [USRP2] Opening a USRP2/N-Series device...<br>[INFO]=
 [USRP2] Current recv frame size: 1472 bytes<br>[INFO] [USRP2] Current send=
 frame size: 1472 bytes<br>[WARNING] [USRP2] Unable to identify device - as=
suming USRP2/N-Series device<br>[WARNING] [UHD] Unable to set the thread pr=
iority. Performance may be negatively affected.<br>Please see the general a=
pplication notes in the manual for instructions.<br>EnvironmentError: OSErr=
or: error in pthread_setschedparam<br>Using Device: Single USRP:<br>=C2=A0 =
Device: USRP2 / N-Series Device<br>=C2=A0 Mboard 0: N???<br>=C2=A0 RX Chann=
el: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =
=C2=A0 RX Subdev: BasicRX (AB)<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX =
DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: Unknown (0=
xffff) - 0<br><br><br>Attempt to detect the PPS and set the time...<br><br>=
[INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch time transition at pps edge<br>[=
WARNING] [UHD] Unable to set the thread priority. Performance may be negati=
vely affected.<br>Please see the general application notes in the manual fo=
r instructions.<br>EnvironmentError: OSError: error in pthread_setschedpara=
m<br>[WARNING] [UHD] Unable to set the thread priority. Performance may be =
negatively affected.<br>Please see the general application notes in the man=
ual for instructions.<br>[WARNING] [UHD] Unable to set the thread priority.=
 Performance may be negatively affected.<br>Please see the general applicat=
ion notes in the manual for instructions.<br>EnvironmentError: OSError: err=
or in pthread_setschedparam<br>Error: RuntimeError: Board 0 may not be gett=
ing a PPS signal!<br>No PPS detected within the time interval.<br>See the a=
pplication notes for your device.</div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">El mi=C3=A9, 20 oct 2021 a las 20:40, Marc=
us D. Leech (&lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@g=
mail.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-10-20 4:19 p.m., isaac mario
      tupac davila wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Hi Marcus</div>
        <div><br>
        </div>
        <div>Curiosity and quickness possessed me. I tried first to burn
          it with the usrp_n210_r4_fpga.bit as I have a N210 but it
          failed. Later, I could burn it with the usrp_n200_r4_fpga.bit.
          I changed the Ip and installed the usrp_n200_fw.bin=C2=A0 and=C2=
=A0
          usrp_n200_r4_fpga.bin. It could recognize it. My FPGA is a
          Spartan 3 XC3SD1800A.<br>
        </div>
      </div>
    </blockquote>
    That FPGA type unambiguously makes it an N200, not an N210, so
    loading the N210 FPGA into it would be guaranteed to fail.<br>
    <br>
    The N210 has the XC3SD3400A.<br>
    <br>
    What is the voltage level of your PPS signal?=C2=A0 <br>
    <br>
    COuld you share the complete output log of the test_pps_input
    program?<br>
    <br>
    Also, are you specifying the --source external option?=C2=A0 It may be
    looking at the PPS from the GPSDO, which you don&#39;t have installed.<=
br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>EnvironmentError: OSError: error in pthread_setschedparam<br>
          =C2=A0 _____________________________________________________<br>
          =C2=A0/<br>
          | =C2=A0 =C2=A0 =C2=A0 Device: USRP2 / N-Series Device<br>
          | =C2=A0 =C2=A0 _________________________________________________=
____<br>
          | =C2=A0 =C2=A0/<br>
          | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: N???<br>
          | =C2=A0 | =C2=A0 mac-addr: 00:00:00:00:40:00<br>
          | =C2=A0 | =C2=A0 ip-addr: 192.168.10.3<br>
          | =C2=A0 | =C2=A0 subnet: 0.0.0.104<br>
          | =C2=A0 | =C2=A0 gateway: 255.255.255.255<br>
          | =C2=A0 | =C2=A0 gpsdo: none<br>
          | =C2=A0 | =C2=A0 serial: 0<br>
          | =C2=A0 | =C2=A0 FW Version: 12.4<br>
          | =C2=A0 | =C2=A0 FPGA Version: 11.1<br>
          | =C2=A0 | =C2=A0 <br>
          | =C2=A0 | =C2=A0 Time sources: =C2=A0none, external, _external_,=
 mimo<br>
          | =C2=A0 | =C2=A0 Clock sources: internal, external, mimo<br>
          | =C2=A0 | =C2=A0 Sensors: mimo_locked, ref_locked</div>
        <div><br>
        </div>
        <div>The problem is when I run the ./test_pps_input from the uhd
          my USRP fails finding the PPS.</div>
        <div><br>
        </div>
        <div>Please see the general application notes in the manual for
          instructions.<br>
          EnvironmentError: OSError: error in pthread_setschedparam<br>
          Error: RuntimeError: Board 0 may not be getting a PPS signal!<br>
          No PPS detected within the time interval.<br>
          See the application notes for your device.<br>
        </div>
        <div><br>
        </div>
        <div>What could be the problem? Maybe the firmware? I&#39;m not
          completely sure about it</div>
        <div><br>
        </div>
        <div>Any help or advice will be appreciate</div>
        <div><br>
        </div>
        <div>Regards</div>
        <div>Isaac T.<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">El vie, 15 oct 2021 a las
          20:12, Marcus D. Leech (&lt;<a href=3D"mailto:patchvonbraun@gmail=
.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;)
          escribi=C3=B3:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          2021-10-15 5:57 p.m., isaac mario tupac davila wrote:<br>
          &gt; Hello<br>
          &gt;<br>
          &gt; I&#39;m Isaac. I have a tricky thing here instaling images. =
I
          have a USRP <br>
          &gt; N210 with FW Version: 12.1 FPGA Version: 10.0. When I
          prove the pps <br>
          &gt; test, it says: No PPS detected within the time interval.
          I believe it <br>
          &gt; is for the FPGA image(v10). So I tried to update the
          image and <br>
          &gt; firmware doing: ./uhd_images_downloader.py and later: <br>
          &gt; ./uhd_image_loader <br>
          &gt; --args=3D&quot;type=3Dusrp2,addr=3D192.168.10.2,overwrite-sa=
fe&quot; <br>
          &gt; --fw-path=3D/usr/local/share/uhd/images/usrp_n210_fw.bin <br=
>
          &gt;
          --fpga-path=3D/usr/local/share/uhd/images/usrp_n210_r4_fpga.bin,
          only once.<br>
          &gt;<br>
          &gt; I turned off my USRPN210 and now I can&#39;t find it (doesn&=
#39;t
          have IP <br>
          &gt; anymore) and any light(A,B,C or D) has turned on.<br>
          &gt;<br>
          &gt; The interesting thing is that I have a second USRP
          (N200,FW Version: <br>
          &gt; 12.3 FPGA Version: 10.0) with the same PPS problem and I
          don&#39;t want to <br>
          &gt; make the same mistake again. So...<br>
          &gt;<br>
          &gt; 1. What do you think I did wrong? =C2=BFDo I have to elimina=
te
          <br>
          &gt; overwrite-safe in the command?<br>
          Why did you use overwrite-safe?=C2=A0 What possessed you to do
          that? Most of <br>
          the time there is NO reason to overwrite the safe-mode image,
          since it<br>
          =C2=A0=C2=A0 is an image specifically to help you get through loa=
ding a
          bad &quot;main&quot; <br>
          image.<br>
          <br>
          &gt; 2. How could I save my first USRP? Do I have to burn the
          FW and image <br>
          &gt; with a burner JTAG directly on the motherboard?<br>
          Almost certainly you do now.<br>
          <br>
          <a href=3D"https://kb.ettus.com/N200/N210_Device_Recovery#Unbrick=
ing_an_N-Series_Device" rel=3D"noreferrer" target=3D"_blank">https://kb.ett=
us.com/N200/N210_Device_Recovery#Unbricking_an_N-Series_Device</a><br>
          <br>
          <br>
          &gt;<br>
          &gt; Any help will be appreciate it.<br>
          &gt; Thanks<br>
          &gt; Regards<br>
          &gt; Isaac T.<br>
          &gt;<br>
          <br>
          <br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--00000000000003e76205cef2bded--

--===============5161823353173687443==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5161823353173687443==--
