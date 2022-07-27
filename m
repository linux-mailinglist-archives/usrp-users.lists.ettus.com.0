Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F58B582A83
	for <lists+usrp-users@lfdr.de>; Wed, 27 Jul 2022 18:17:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D83B1383CF2
	for <lists+usrp-users@lfdr.de>; Wed, 27 Jul 2022 12:17:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658938668; bh=6R+UIsg4Jlp/UpSmmI4HJz8K4l4mfWPXLTquR5/5f84=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=nkDddpDoAZszSgxAJA9XXBpJme5kzr5rDhywqWpbm1v9V3OtjcNnNvFEPfJvA0COL
	 g6rYsHLwUInGldMYnqakB3jfjXkQcnxJG0ldrI7uGRlNX5aQ1MblgMLYihxBAyLJrF
	 V5ndtTVjZKAg3BNIUdkEbdHug/33tvMX0dntgne9IGNIQZWeXgNN3qPD9VjGa6gd+v
	 h3dm6Yz8ZXCLDD6Dx8FCk5EieormalAwgzU6RTrjwa1klbl/cr0D3I+rEXwp5KyjLi
	 3EOK4CeN4pCxy4ODb/12Qol/8TEFiQ9vbf6PeFC9FVhXC/5H7qudqQ2xh7kbgRwxp/
	 NUgeGm4zY9Uqg==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id C011B383C77
	for <USRP-users@lists.ettus.com>; Wed, 27 Jul 2022 12:15:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=sma-rty-com.20210112.gappssmtp.com header.i=@sma-rty-com.20210112.gappssmtp.com header.b="3eeYFBq+";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id sz17so32390169ejc.9
        for <USRP-users@lists.ettus.com>; Wed, 27 Jul 2022 09:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sma-rty-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:cc:from:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=cPw7BGkq01zyI04K/hBROcjT7eZscK6b3aXjgATqubA=;
        b=3eeYFBq+gdQJ9wJN5Jm+jmhRoU6gv8gsIQSsFVqSiJWADRJQXGuwGSYDkA9kvayBoG
         p2BXJpc9PcYqpvBsBKLj8Gl3vcbJIxt7BTkc/C01PuJgpolCDufmqw1ujm2WbO9+2aKT
         0pDF8DlDeYVWN7HZTtQM3E6xJmLrsRUahbc1U1VX3ErVG6CW5U6xbfPXiHaV9PyYJRGV
         ZusPBw/umoOE133woAfGmFD7rHzlZ+oUJAs7yRTAsDdv32bsf1jsUNE5QPM5Vzho4D8v
         /Z1ouhDAcq4wn9GfT7pNLCT8PRK4tcUjmTMte6RY+p1b/iZt84MNEmtLDeswo26PevWY
         WqPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:cc:from:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=cPw7BGkq01zyI04K/hBROcjT7eZscK6b3aXjgATqubA=;
        b=TAriW724LJ9xtxCvyHzAJQgeGoCJp7G2LN2CnJu4RdJPVTytgMEsjMvvX8pp8PL9Kp
         WANkBqCYtUsm6/4VzdytF1EZ6sS/xy3H8FX7GEnX88pY92d8+QyrIGFoTBPUWs+Gi0BJ
         Y27qlQKoMgraF85jD+ci7CvvbHnqWGVAfYyc40QguCFHfBv4y69Iojf5f92L8bLYmT/F
         mzP1WR96e2KoI8X8yuV33FJ65YJcV3Yb6R/ZuPIqnmlwAWkmBgmmUHkUDwihViUkftIP
         oW3DDKMUDQgGOsXnfQpMyYXWNsbyYw+tb7PXlAkHJMjBwwynL4/9zSGKPZri3PlXmZpv
         ljWQ==
X-Gm-Message-State: AJIora8j7gAPs5TPtWrXY/UUqMndOKormiIiuNf/RE4y4UovkkzRezYl
	XKtpG1V2GYMmjzmarTsa8tFqV6roUJUo6g==
X-Google-Smtp-Source: AGRyM1vZxGnDpTENvoO95r4vy31U6QSjjln6f532iZiwjK1O1tD66A/R3B77Db1rkaYOSfSxJpqJog==
X-Received: by 2002:a17:906:98c7:b0:72b:20fe:807d with SMTP id zd7-20020a17090698c700b0072b20fe807dmr18636833ejb.75.1658938524985;
        Wed, 27 Jul 2022 09:15:24 -0700 (PDT)
Received: from [192.168.1.21] ([151.30.128.219])
        by smtp.gmail.com with ESMTPSA id qb27-20020a1709077e9b00b00728f6d4d0d7sm7762876ejc.67.2022.07.27.09.15.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 09:15:24 -0700 (PDT)
Message-ID: <c7d470b2-ff35-b44a-995d-c4e82a8096ad@sma-rty.com>
Date: Wed, 27 Jul 2022 18:15:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
References: <3ee43cde-ca0f-074e-57a6-5b041cd1cc8e@sma-rty.com>
 <CAB__hTR2t4CRv_MrEH5ioTBoSC=77F4AhAuPDwyLaBc3vouStw@mail.gmail.com>
 <b95a1d8f-608f-ff79-1e44-3a79b2f6f889@gmail.com>
From: Federico Civerchia <federico.civerchia@sma-rty.com>
In-Reply-To: <b95a1d8f-608f-ff79-1e44-3a79b2f6f889@gmail.com>
Message-ID-Hash: 23AYT6GZSQH2AVOD6TMU3PE5QQIZHGTE
X-Message-ID-Hash: 23AYT6GZSQH2AVOD6TMU3PE5QQIZHGTE
X-MailFrom: federico.civerchia@sma-rty.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Suggested SFP+ for Ettus N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/23AYT6GZSQH2AVOD6TMU3PE5QQIZHGTE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8167269554174097855=="

This is a multi-part message in MIME format.
--===============8167269554174097855==
Content-Type: multipart/alternative;
 boundary="------------tKC8tx2AlyaqNYAn6jzwpliS"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------tKC8tx2AlyaqNYAn6jzwpliS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Rob, Marcus,

thank you for your answers.

Yes, I have packet loss with ping and also with iperf3 (considering udp)=20
at low rates (500Mb, 1Gb).
 From the host side I can also see continuous disconnection and=20
re-connection of the link. For the Intel X520-DA2 NIC, I have bought=20
Intel SFP+ (E10GSFPSR) but this does not resolve the issue.
I would like to clarify my setup, maybe it can help to find out what is=20
going wrong:

  * First setup:
      o Dell PowerEdge R550 (2xXeon Gold) equipped with dual port
        Broadcom BCM57414 NetXtreme-E 10Gb/25Gb.
      o USRP Ettus N310
      o 4x SFP+ FS transceiver at 850nm (SR)
      o 2x LC/UPC-LC/UPC Duplex, Single mode Fiber patch cables
  * Second setup:
      o Dell Precision tower 3650 (Intel core i9) equipped with dual
        port Intel X520-DA2 10Gb
      o USRP Ettus N310
      o 2x SFP+ FS transceiver at 850nm (SR)
      o 2x Intel E10GSFPSR
      o 2x LC/UPC-LC/UPC Duplex, Single mode Fiber patch cables

For the USRP, I considered UHD 4.2.0, 4.0.0 and 3.15.0. All of them=20
highlight an unstable connection (packet loss and flapping)

Do you have other hints?

Thank you

Federico

On 27/07/22 17:45, Marcus D. Leech wrote:
> On 2022-07-27 11:30, Rob Kossler wrote:
>> Hi Federico,
>> I have several N310s and different types of 10Gb links: direct attach=20
>> copper, multi-mode (850nm), single mode (1310nm).=C2=A0 All have worke=
d=20
>> well including the transceivers from lower cost vendors such as FS=20
>> and GTek. I have also used the X520-DA2.=C2=A0 So, while it is possibl=
e=20
>> that your transceivers are causing the problem, I want to point out=20
>> that there are other causes for sequence errors related to the=20
>> optimization of networking on the host. Do your sequence errors=20
>> happen at all transfer rates or only at very high rates?
>>
>> Rob
>>
>>
> It was noted that he had errors even with "ping", so I don't think=20
> it's a host-performance issue.
>
> I have recently deployed a 10Ge connection on an *X310*, using an=20
> 82599-based card with SFP+, transceivers from 10GTek intended for=20
> 850nm multi-mode fiber with
> =C2=A0 duplex LC terminations, and matching OM3 LC-terminated duplex ca=
ble,=20
> also from 10GTek.=C2=A0 That worked flawlessly.=C2=A0 Not exactly the s=
ame=20
> situation (N310 vs X310), but
> =C2=A0 an indicator that this can work just fine.
>
> The fiber ends can get dirty if you run the cabling without the caps=20
> on--wipe with an alcohol wipe and let dry.
>
>
>
>
>>
>>     _______________________________________________
>>     USRP-users mailing list -- usrp-users@lists.ettus.com
>>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------tKC8tx2AlyaqNYAn6jzwpliS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi Rob, Marcus,<br>
    </p>
    <p>thank you for your answers.</p>
    <p>Yes, I have packet loss with ping and also with iperf3
      (considering udp) at low rates (500Mb, 1Gb).<br>
      From the host side I can also see continuous disconnection and
      re-connection of the link. For the Intel X520-DA2 NIC, I have
      bought Intel SFP+ (E10GSFPSR) but this does not resolve the issue.<=
br>
      I would like to clarify my setup, maybe it can help to find out
      what is going wrong:</p>
    <ul>
      <li>First setup:</li>
      <ul>
        <li>Dell PowerEdge R550 (2xXeon Gold) equipped with dual port
          Broadcom BCM57414 NetXtreme-E 10Gb/25Gb. <br>
        </li>
        <li>USRP Ettus N310 <br>
        </li>
        <li>4x SFP+ FS transceiver at 850nm (SR)</li>
        <li>2x LC/UPC-LC/UPC Duplex, Single mode Fiber patch cables</li>
      </ul>
      <li> Second setup:</li>
      <ul>
        <li>Dell Precision tower 3650 (Intel core i9) equipped with dual
          port Intel X520-DA2 10Gb</li>
        <li>USRP Ettus N310</li>
        <li>2x SFP+ FS transceiver at 850nm (SR)</li>
        <li>2x Intel E10GSFPSR</li>
        <li>2x LC/UPC-LC/UPC Duplex, Single mode Fiber patch cables</li>
      </ul>
    </ul>
    <p>For the USRP, I considered UHD 4.2.0, 4.0.0 and 3.15.0. All of
      them highlight an unstable connection (packet loss and flapping)</p=
>
    <p>Do you have other hints?</p>
    <p>Thank you</p>
    <p>Federico<br>
    </p>
    <div class=3D"moz-cite-prefix">On 27/07/22 17:45, Marcus D. Leech
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:b95a1d8f-608f-ff79-1e44-3a79b2f6f889@gmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"moz-cite-prefix">On 2022-07-27 11:30, Rob Kossler
        wrote:<br>
      </div>
      <blockquote type=3D"cite"
cite=3D"mid:CAB__hTR2t4CRv_MrEH5ioTBoSC=3D77F4AhAuPDwyLaBc3vouStw@mail.gm=
ail.com">
        <meta http-equiv=3D"content-type" content=3D"text/html;
          charset=3DUTF-8">
        <div dir=3D"ltr">Hi Federico,
          <div>I have several N310s and different types of 10Gb links:
            direct attach copper, multi-mode (850nm), single mode
            (1310nm).=C2=A0 All have worked well including the transceive=
rs
            from lower cost vendors such as FS and GTek. I have also
            used the X520-DA2.=C2=A0 So, while it is possible that your
            transceivers are causing the problem, I want to point out
            that there are other causes for sequence errors related to
            the optimization of networking on the host. Do your sequence
            errors happen at all transfer rates or only at very high
            rates?</div>
          <div><br>
          </div>
          <div>Rob</div>
          <div><br>
          </div>
        </div>
        <br>
      </blockquote>
      It was noted that he had errors even with "ping", so I don't think
      it's a host-performance issue.<br>
      <br>
      I have recently deployed a 10Ge connection on an *X310*, using an
      82599-based card with SFP+, transceivers from 10GTek intended for
      850nm multi-mode fiber with<br>
      =C2=A0 duplex LC terminations, and matching OM3 LC-terminated duple=
x
      cable, also from 10GTek.=C2=A0 That worked flawlessly.=C2=A0 Not ex=
actly the
      same situation (N310 vs X310), but<br>
      =C2=A0 an indicator that this can work just fine.<br>
      <br>
      The fiber ends can get dirty if you run the cabling without the
      caps on--wipe with an alcohol wipe and let dry.<br>
      <br>
      <br>
      <br>
      <br>
      <blockquote type=3D"cite"
cite=3D"mid:CAB__hTR2t4CRv_MrEH5ioTBoSC=3D77F4AhAuPDwyLaBc3vouStw@mail.gm=
ail.com">
        <p><br>
        </p>
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            _______________________________________________<br>
            USRP-users mailing list -- <a
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">us=
rp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettu=
s.com</a><br>
          </blockquote>
        </div>
        <br>
        <fieldset class=3D"moz-mime-attachment-header"></fieldset>
        <pre class=3D"moz-quote-pre" wrap=3D"">__________________________=
_____________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated moz-txt-l=
ink-freetext" href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-send=3D=
"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated moz-=
txt-link-freetext" href=3D"mailto:usrp-users-leave@lists.ettus.com" moz-d=
o-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
      </blockquote>
      <br>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------tKC8tx2AlyaqNYAn6jzwpliS--

--===============8167269554174097855==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8167269554174097855==--
