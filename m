Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DE943585D
	for <lists+usrp-users@lfdr.de>; Thu, 21 Oct 2021 03:41:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 07060384670
	for <lists+usrp-users@lfdr.de>; Wed, 20 Oct 2021 21:40:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fmy9C2mu";
	dkim-atps=neutral
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 355E8383CE5
	for <USRP-users@lists.ettus.com>; Wed, 20 Oct 2021 21:40:14 -0400 (EDT)
Received: by mail-qk1-f179.google.com with SMTP id bl14so4968811qkb.4
        for <USRP-users@lists.ettus.com>; Wed, 20 Oct 2021 18:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=+wMIG4FUCGTujYlnaygE9M+UyjZdrKbPnBwUFHFB0us=;
        b=fmy9C2muOR+3k/kaNYBRyKjsprCXUnGd4kNxc9sHL/L3hbWA9xlLsAYqmHtBhWsNUm
         BG082uDIDx+o+BbBJa7JcN9HbJ9itSh1AsM1ezEuILPzc2C+QolLAOvrCpct/YM3DiNR
         sm49zz0H/3YvKYWdK9+tkINFEbEAiaNvRC9g5gCCRuuXW3UstrxO70DulxHamAo+Vw8C
         x5DNKxj5saUFqncE30YKBpR5/hWQQ0CgXnhx845EpcVdb6nsZg4VukixYYjYZ8T5dhPQ
         qzFfelqUd5B+VyhlYopmDB8FKXh+QFKhM0/xRW5QoBR4k3UrRmc2KJ+kPow8NjIQlnu2
         sOTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=+wMIG4FUCGTujYlnaygE9M+UyjZdrKbPnBwUFHFB0us=;
        b=aP6kuPl2CzWk23HlQFPgxnSNzDtTnlK4oB3+xfZBTZpSHiMwBm9PdC+xZva12ECOH0
         84R6kUwFpGGrE5053wnmFAWzDI6f4PsHgCPT6jVWNAozpRheMdUybxYTnsmUT5tvkQbl
         jqpxlcIC16kbtHemxHSknN3CbMGqYIB13T7TSu2pf8XovkomIakReXnnKTxhbtiWWwPf
         k/7QI6d4O3sAVbcUOlMuPhAbGkGNjfI9yyQQ0IQAD15HFT6y6vYjZAhx2IWYgDe6DA7n
         bxwjGnnWs9kmFxiXdNaFpz+IlWP/TF3qtFU/crVVMWS8H/OwjcRMoq/C3WcA90DjJnls
         e+7A==
X-Gm-Message-State: AOAM533OTm74YpfuWrM4V87LGuiKA2Bauf0XIKJZqNeMV4NQosQmo9jt
	MDkuOVaDkMtLVGD4EKTcx0pcz/5OR3k=
X-Google-Smtp-Source: ABdhPJxrKJhU8lJtXmNlRIGm5rYrcBKfP8ceo8xpM2bJfDl+amHbv3Anhxe/EeKPYQhPNpXG36rx1Q==
X-Received: by 2002:ae9:edd6:: with SMTP id c205mr2192615qkg.137.1634780413409;
        Wed, 20 Oct 2021 18:40:13 -0700 (PDT)
Received: from [192.168.2.253] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id ay34sm1859059qkb.24.2021.10.20.18.40.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Oct 2021 18:40:12 -0700 (PDT)
To: isaac mario tupac davila <isacctd92@gmail.com>, discuss-gnuradio@gnu.org,
 USRP-users@lists.ettus.com
References: <CAN+Y6vALVOHVGX+bT6EGDH6erEeSbK3mYMTABCRpEPFnQXdDSw@mail.gmail.com>
 <32778a04-eddc-32d4-7c93-23b24baa8669@gmail.com>
 <CAN+Y6vBOBQ=_7_cXtpu7vfAJmuo65-8Wi0aCPjU0hgUiEB0iOA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <75f3809f-3c44-2e46-bbaa-bdf23b77c567@gmail.com>
Date: Wed, 20 Oct 2021 21:40:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAN+Y6vBOBQ=_7_cXtpu7vfAJmuo65-8Wi0aCPjU0hgUiEB0iOA@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: ENVHKT7HGGUYHKHRM6U6EDMLA3XQQZLC
X-Message-ID-Hash: ENVHKT7HGGUYHKHRM6U6EDMLA3XQQZLC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Installing Images and firmware USRPN200/N210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ENVHKT7HGGUYHKHRM6U6EDMLA3XQQZLC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8301581452076772075=="

This is a multi-part message in MIME format.
--===============8301581452076772075==
Content-Type: multipart/alternative;
 boundary="------------9E835CF9A87B792CF985537D"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9E835CF9A87B792CF985537D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-20 4:19 p.m., isaac mario tupac davila wrote:
> Hi Marcus
>
> Curiosity and quickness possessed me. I tried first to burn it with=20
> the usrp_n210_r4_fpga.bit as I have a N210 but it failed. Later, I=20
> could burn it with the usrp_n200_r4_fpga.bit. I changed the Ip and=20
> installed the usrp_n200_fw.bin=C2=A0 and usrp_n200_r4_fpga.bin. It coul=
d=20
> recognize it. My FPGA is a Spartan 3 XC3SD1800A.
That FPGA type unambiguously makes it an N200, not an N210, so loading=20
the N210 FPGA into it would be guaranteed to fail.

The N210 has the XC3SD3400A.

What is the voltage level of your PPS signal?

COuld you share the complete output log of the test_pps_input program?

Also, are you specifying the --source external option?=C2=A0 It may be=20
looking at the PPS from the GPSDO, which you don't have installed.





>
> EnvironmentError: OSError: error in pthread_setschedparam
> =C2=A0 _____________________________________________________
> =C2=A0/
> | =C2=A0 =C2=A0 =C2=A0 Device: USRP2 / N-Series Device
> | =C2=A0 =C2=A0 _____________________________________________________
> | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: N???
> | =C2=A0 | =C2=A0 mac-addr: 00:00:00:00:40:00
> | =C2=A0 | =C2=A0 ip-addr: 192.168.10.3
> | =C2=A0 | =C2=A0 subnet: 0.0.0.104
> | =C2=A0 | =C2=A0 gateway: 255.255.255.255
> | =C2=A0 | =C2=A0 gpsdo: none
> | =C2=A0 | =C2=A0 serial: 0
> | =C2=A0 | =C2=A0 FW Version: 12.4
> | =C2=A0 | =C2=A0 FPGA Version: 11.1
> | =C2=A0 |
> | =C2=A0 | =C2=A0 Time sources: =C2=A0none, external, _external_, mimo
> | =C2=A0 | =C2=A0 Clock sources: internal, external, mimo
> | =C2=A0 | =C2=A0 Sensors: mimo_locked, ref_locked
>
> The problem is when I run the ./test_pps_input from the uhd my USRP=20
> fails finding the PPS.
>
> Please see the general application notes in the manual for instructions=
.
> EnvironmentError: OSError: error in pthread_setschedparam
> Error: RuntimeError: Board 0 may not be getting a PPS signal!
> No PPS detected within the time interval.
> See the application notes for your device.
>
> What could be the problem? Maybe the firmware? I'm not completely sure=20
> about it
>
> Any help or advice will be appreciate
>
> Regards
> Isaac T.
>
> El vie, 15 oct 2021 a las 20:12, Marcus D. Leech=20
> (<patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>>) escribi=C3=
=B3:
>
>     On 2021-10-15 5:57 p.m., isaac mario tupac davila wrote:
>     > Hello
>     >
>     > I'm Isaac. I have a tricky thing here instaling images. I have a
>     USRP
>     > N210 with FW Version: 12.1 FPGA Version: 10.0. When I prove the p=
ps
>     > test, it says: No PPS detected within the time interval. I
>     believe it
>     > is for the FPGA image(v10). So I tried to update the image and
>     > firmware doing: ./uhd_images_downloader.py and later:
>     > ./uhd_image_loader
>     > --args=3D"type=3Dusrp2,addr=3D192.168.10.2,overwrite-safe"
>     > --fw-path=3D/usr/local/share/uhd/images/usrp_n210_fw.bin
>     > --fpga-path=3D/usr/local/share/uhd/images/usrp_n210_r4_fpga.bin,
>     only once.
>     >
>     > I turned off my USRPN210 and now I can't find it (doesn't have IP
>     > anymore) and any light(A,B,C or D) has turned on.
>     >
>     > The interesting thing is that I have a second USRP (N200,FW
>     Version:
>     > 12.3 FPGA Version: 10.0) with the same PPS problem and I don't
>     want to
>     > make the same mistake again. So...
>     >
>     > 1. What do you think I did wrong? =C2=BFDo I have to eliminate
>     > overwrite-safe in the command?
>     Why did you use overwrite-safe?=C2=A0 What possessed you to do that=
?
>     Most of
>     the time there is NO reason to overwrite the safe-mode image, since=
 it
>     =C2=A0=C2=A0 is an image specifically to help you get through loadi=
ng a bad
>     "main"
>     image.
>
>     > 2. How could I save my first USRP? Do I have to burn the FW and
>     image
>     > with a burner JTAG directly on the motherboard?
>     Almost certainly you do now.
>
>     https://kb.ettus.com/N200/N210_Device_Recovery#Unbricking_an_N-Seri=
es_Device
>     <https://kb.ettus.com/N200/N210_Device_Recovery#Unbricking_an_N-Ser=
ies_Device>
>
>
>     >
>     > Any help will be appreciate it.
>     > Thanks
>     > Regards
>     > Isaac T.
>     >
>
>


--------------9E835CF9A87B792CF985537D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-20 4:19 p.m., isaac mario
      tupac davila wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAN+Y6vBOBQ=3D_7_cXtpu7vfAJmuo65-8Wi0aCPjU0hgUiEB0iOA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
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
    Also, are you specifying the --source external option?=C2=A0 It may b=
e
    looking at the PPS from the GPSDO, which you don't have installed.<br=
>
    <br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAN+Y6vBOBQ=3D_7_cXtpu7vfAJmuo65-8Wi0aCPjU0hgUiEB0iOA@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>EnvironmentError: OSError: error in pthread_setschedparam<br=
>
          =C2=A0 _____________________________________________________<br=
>
          =C2=A0/<br>
          | =C2=A0 =C2=A0 =C2=A0 Device: USRP2 / N-Series Device<br>
          | =C2=A0 =C2=A0 _______________________________________________=
______<br>
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
          | =C2=A0 | =C2=A0 Time sources: =C2=A0none, external, _external=
_, mimo<br>
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
          Error: RuntimeError: Board 0 may not be getting a PPS signal!<b=
r>
          No PPS detected within the time interval.<br>
          See the application notes for your device.<br>
        </div>
        <div><br>
        </div>
        <div>What could be the problem? Maybe the firmware? I'm not
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
          20:12, Marcus D. Leech (&lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue">patchvonbraun@gmail.com</a>&gt;)
          escribi=C3=B3:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On
          2021-10-15 5:57 p.m., isaac mario tupac davila wrote:<br>
          &gt; Hello<br>
          &gt;<br>
          &gt; I'm Isaac. I have a tricky thing here instaling images. I
          have a USRP <br>
          &gt; N210 with FW Version: 12.1 FPGA Version: 10.0. When I
          prove the pps <br>
          &gt; test, it says: No PPS detected within the time interval.
          I believe it <br>
          &gt; is for the FPGA image(v10). So I tried to update the
          image and <br>
          &gt; firmware doing: ./uhd_images_downloader.py and later: <br>
          &gt; ./uhd_image_loader <br>
          &gt; --args=3D"type=3Dusrp2,addr=3D192.168.10.2,overwrite-safe"=
 <br>
          &gt; --fw-path=3D/usr/local/share/uhd/images/usrp_n210_fw.bin <=
br>
          &gt;
          --fpga-path=3D/usr/local/share/uhd/images/usrp_n210_r4_fpga.bin=
,
          only once.<br>
          &gt;<br>
          &gt; I turned off my USRPN210 and now I can't find it (doesn't
          have IP <br>
          &gt; anymore) and any light(A,B,C or D) has turned on.<br>
          &gt;<br>
          &gt; The interesting thing is that I have a second USRP
          (N200,FW Version: <br>
          &gt; 12.3 FPGA Version: 10.0) with the same PPS problem and I
          don't want to <br>
          &gt; make the same mistake again. So...<br>
          &gt;<br>
          &gt; 1. What do you think I did wrong? =C2=BFDo I have to elimi=
nate
          <br>
          &gt; overwrite-safe in the command?<br>
          Why did you use overwrite-safe?=C2=A0 What possessed you to do
          that? Most of <br>
          the time there is NO reason to overwrite the safe-mode image,
          since it<br>
          =C2=A0=C2=A0 is an image specifically to help you get through l=
oading a
          bad "main" <br>
          image.<br>
          <br>
          &gt; 2. How could I save my first USRP? Do I have to burn the
          FW and image <br>
          &gt; with a burner JTAG directly on the motherboard?<br>
          Almost certainly you do now.<br>
          <br>
          <a
href=3D"https://kb.ettus.com/N200/N210_Device_Recovery#Unbricking_an_N-Se=
ries_Device"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>https://kb.ettus.com/N200/N210_Device_Recovery#Unbricking_an_N-Series_De=
vice</a><br>
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
  </body>
</html>

--------------9E835CF9A87B792CF985537D--

--===============8301581452076772075==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8301581452076772075==--
