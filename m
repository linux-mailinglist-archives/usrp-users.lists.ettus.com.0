Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4402D41F175
	for <lists+usrp-users@lfdr.de>; Fri,  1 Oct 2021 17:47:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2D3CE384B0C
	for <lists+usrp-users@lfdr.de>; Fri,  1 Oct 2021 11:47:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="V5TWuHxn";
	dkim-atps=neutral
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id B699938308E
	for <usrp-users@lists.ettus.com>; Fri,  1 Oct 2021 11:44:15 -0400 (EDT)
Received: by mail-qt1-f171.google.com with SMTP id a13so9327398qtw.10
        for <usrp-users@lists.ettus.com>; Fri, 01 Oct 2021 08:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=xl+O4/2tMUvd8T7WsdYsD6bcnJD352/NBIz3WmYof6k=;
        b=V5TWuHxnSm8SNqMtcaDKcWwGedK8fMNN076pChK7AjMrLYN6NzxI+D13Lm8/SP0K2P
         o2FMaAGf/xMizctKLjR4BQAf76iq1QpvxiryYSrrfM20qwjkUKhF5g0Ia/5CJbyWKsuw
         cN+djfPTMe/CKpgEO1bOfyrPhRbeUaWBEjvdeGegvLewNVjxZHwhPkdXx+denT0ifLYO
         JMmX8Q9jdAIPfy0lB7TyuTKZ5qMpKFEV9uHwkI/w+tVTODmtpwKFQSZVb1WfbBVnMj2Q
         P8s1PGWDVddx67b8Q3UzHmXcAHv6TytWcTFLKmg3NZJBTTsFNB5H8hLqaCFuqTXL+jvi
         vjqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=xl+O4/2tMUvd8T7WsdYsD6bcnJD352/NBIz3WmYof6k=;
        b=cMH/7TTQVQkvmbtkGGAKNERYR0pZdzr44lBwd2Qgw3XiwUArOkOt5HQc7Y18UM1lYB
         V53jYOqGSz3/TSCeYtL2WVSKLHt63GwaFP2dwBtbnvZ5msn/p5O5UTTn+LdGAUR/drJ6
         YqTRFCSQevgLzTOCM9v7UZUaBcwfPgX6hWTDgzJybW9mKX+qnCZvPOAtE2lEKYOL2F0D
         km2lAi1bOdb70p+JIsqJkMPFwbCLBT65yxmD5fRaMJHv3HS/u7+YgRFty1QFVPv+REAL
         GleoqFZ0bGWZyjxsBw3Vg4Ju5SMBd78S8GWNdwc4B+EqubaaNtII3c26ofXd8yQHeg9D
         01Aw==
X-Gm-Message-State: AOAM532kKCmcRw7qKniSAzwQvnIl7EYUI08yVWJOOwYnZx/k7zlk7cJY
	kHG5meJwbziJCxFlAhTc68CwXl3VjYp2dA==
X-Google-Smtp-Source: ABdhPJyg+b0an67Yw0F7uFjWT3GH8YH5hGjdbp/961uX/mUmpQ7Jkq3xm8mDgMtqXXFzUig4KZvzUQ==
X-Received: by 2002:ac8:4042:: with SMTP id j2mr13603415qtl.229.1633103054880;
        Fri, 01 Oct 2021 08:44:14 -0700 (PDT)
Received: from [192.168.2.246] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id o9sm3212261qko.91.2021.10.01.08.44.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Oct 2021 08:44:14 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <Vffa68wBmJSpZO6YvdXabgahWAJ2W11iaR9HdcU@lists.ettus.com>
 <4c7f7514-27d4-817b-9e5f-542f4454296d@virginia.edu>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <36b93ecb-28c2-606b-2140-b0ec4f12d3d6@gmail.com>
Date: Fri, 1 Oct 2021 11:44:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <4c7f7514-27d4-817b-9e5f-542f4454296d@virginia.edu>
Content-Language: en-US
Message-ID-Hash: JTWHL7VN5CJSJG3FS3HXTREKKGWKEDIX
X-Message-ID-Hash: JTWHL7VN5CJSJG3FS3HXTREKKGWKEDIX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Change mtu-size
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JTWHL7VN5CJSJG3FS3HXTREKKGWKEDIX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8576263057864061650=="

This is a multi-part message in MIME format.
--===============8576263057864061650==
Content-Type: multipart/alternative;
 boundary="------------7B9E50DE343D99F3735DB1A9"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7B9E50DE343D99F3735DB1A9
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-01 11:23 a.m., Dustin Widmann wrote:
>
> Hi Markus,
>
> The wiki suggests using an MTU size of 9000, perhaps it's picky?
>
> See this page for reference:=20
> https://kb.ettus.com/Using_Dual_10_Gigabit_Ethernet_on_the_USRP_X300/X3=
10
>
> It may also be worth noting that with the default HG image, only the=20
> second Ethernet port will be 10GbE enabled.
>
> Regarding changing the MTU size on the USRP side, I've never had to do=20
> it to get things working appropriately, changing it on my computer and=20
> my switch was always enough to get the desired effect.
>
> =E2=80=94Dustin
>
https://en.wikipedia.org/wiki/Jumbo_frame

Suggests that 9000 is the "usual" limit.=C2=A0 It is probably the case th=
at=20
the MTU discovery code in UHD is balking at the >9000 MTU on the=20
interface and pulling it back
 =C2=A0 to the default 1472 for safety reasons.


> On 10/1/21 11:11, markus.freund@etit.tu-chemnitz.de wrote:
>> |Hello, I changed the mtu-size to 10000 on every ethernetport. I can=20
>> ping my computer from another computer with package size of 8972 but=20
>> I cannot do that with the x300. I have 10GbE Card connected to SF1=20
>> and tried both with an XG and an HG image. Since the info is not=20
>> coming from the [UHD] but the [X300] before the [GPS] is checked I=20
>> believe that the message is thrown from the device during start up.=20
>> Is it possible to change the mtu size inside the USRP and how is it=20
>> done? rfnoc@rfnoc-vm ~/rfnoc-workshop $ uhd_usrp_probe [INFO] [UHD]=20
>> linux; GNU C++ version 7.3.0; Boost_106501;=20
>> UHD_3.13.0.HEAD-0-g5b236772 [INFO] [X300] X300 initialization=20
>> sequence... [INFO] [X300] Maximum frame size: 1472 bytes. [INFO]=20
>> [X300] Radio 1x clock: 200 MHz [INFO] [GPS] No GPSDO found Thank you=20
>> very much Markus|
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--------------7B9E50DE343D99F3735DB1A9
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-01 11:23 a.m., Dustin
      Widmann wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:4c7f7514-27d4-817b-9e5f-542f4454296d@virginia.edu">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi Markus,</p>
      <p>The wiki suggests using an MTU size of 9000, perhaps it's
        picky?<br>
      </p>
      <p>See this page for reference:
        <a class=3D"moz-txt-link-freetext"
href=3D"https://kb.ettus.com/Using_Dual_10_Gigabit_Ethernet_on_the_USRP_X=
300/X310"
          moz-do-not-send=3D"true">https://kb.ettus.com/Using_Dual_10_Gig=
abit_Ethernet_on_the_USRP_X300/X310</a></p>
      <p>It may also be worth noting that with the default HG image,
        only the second Ethernet port will be 10GbE enabled. <br>
      </p>
      <p>Regarding changing the MTU size on the USRP side, I've never
        had to do it to get things working appropriately, changing it on
        my computer and my switch was always enough to get the desired
        effect. <br>
      </p>
      <p>=E2=80=94Dustin<br>
      </p>
    </blockquote>
    <a class=3D"moz-txt-link-freetext" href=3D"https://en.wikipedia.org/w=
iki/Jumbo_frame">https://en.wikipedia.org/wiki/Jumbo_frame</a><br>
    <br>
    Suggests that 9000 is the "usual" limit.=C2=A0 It is probably the cas=
e
    that the MTU discovery code in UHD is balking at the &gt;9000 MTU on
    the interface and pulling it back<br>
    =C2=A0 to the default 1472 for safety reasons.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:4c7f7514-27d4-817b-9e5f-542f4454296d@virginia.edu">
      <p> </p>
      <div class=3D"moz-cite-prefix">On 10/1/21 11:11, <a
          class=3D"moz-txt-link-abbreviated"
          href=3D"mailto:markus.freund@etit.tu-chemnitz.de"
          moz-do-not-send=3D"true">markus.freund@etit.tu-chemnitz.de</a>
        wrote:<br>
      </div>
      <blockquote type=3D"cite"
        cite=3D"mid:Vffa68wBmJSpZO6YvdXabgahWAJ2W11iaR9HdcU@lists.ettus.c=
om">
        <meta http-equiv=3D"content-type" content=3D"text/html;
          charset=3DUTF-8">
        <pre><code>Hello,

I changed the mtu-size to 10000 on every ethernetport. I can ping my comp=
uter from another computer with package size of 8972 but I cannot do that=
 with the x300. I have 10GbE Card connected to SF1 and tried both with an=
 XG and an HG image. Since the info is not coming from the [UHD] but the =
[X300] before the [GPS] is checked I believe that the message is thrown f=
rom the device during start up. Is it possible to change the mtu size ins=
ide the USRP and how is it done?

rfnoc@rfnoc-vm ~/rfnoc-workshop $ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106501; UHD_3.13.0.HEAD-=
0-g5b236772
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] No GPSDO found

Thank you very much
Markus</code></pre>
        <br>
        <fieldset class=3D"mimeAttachmentHeader"></fieldset>
        <pre class=3D"moz-quote-pre" wrap=3D"">__________________________=
_____________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com" moz-do-not-send=3D"true">usrp-users@li=
sts.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com" moz-do-not-send=3D"true">us=
rp-users-leave@lists.ettus.com</a>
</pre>
      </blockquote>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------7B9E50DE343D99F3735DB1A9--

--===============8576263057864061650==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8576263057864061650==--
