Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 54865A76C28
	for <lists+usrp-users@lfdr.de>; Mon, 31 Mar 2025 18:47:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8820D3817DE
	for <lists+usrp-users@lfdr.de>; Mon, 31 Mar 2025 12:47:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743439646; bh=1UqXCQ7us/LYfrIpWoeYHriTONnqcmoHNJe3pXgK6r0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=GEGsNbvPeeO0Ls7jN0tHdulSOkMFTEJMUt80tPjMyXumYNJR1MwH1p4NkYynPkA5F
	 XVcIzMuFFyplRtKe1rMIG/lDAxrezVjbRoW5rabGJHYSDw00ub6L9OhmXbKx6naea9
	 XGiUP70qfNl671Lk7dRMGNFO6V5P3Hu3726mkj371d+mKg5EBXwHrpkQYhI2Apnz8h
	 bJ6Y1RI/twyIL8eoyjuC4ZOF+Gno28wwBJ6FJpoCrj42QCO2cfSWQWQhVX/M2OoJws
	 79cv3MMHVF486MPin9OkjZ5cZjnC6T7Cf7orwldnVmCrq08jiQ9gF7LSdME1VjtGPi
	 Nz5t8Pss5ClTg==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id CCD513852F8
	for <usrp-users@lists.ettus.com>; Mon, 31 Mar 2025 12:46:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iyOknFQ0";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7c56a3def84so483238285a.0
        for <usrp-users@lists.ettus.com>; Mon, 31 Mar 2025 09:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743439588; x=1744044388; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YSD1CSIwZKEg8iQR7/lxPyR0rHCN3eqB+R3UX1MdcO0=;
        b=iyOknFQ00Zscg1f8Eeyo9O+7/i5JoT9P2rIF2SWUTM6a0Ahmx3j5EDqcZsJ4ThGL+/
         K93sz4fg2nwGzE1XA8gTWU+2d3GVjN9Vbc+7fQGpDOrU2IGkobG2J3cF3QQOn1vyc2vA
         AWJyIxWDA2+EN/uKYR0laakwv3OvV0Y0NkXC74omX5imEv5uDftygW1+LWpbaz5+6jhX
         yUZpN9AL8urQ4H/yTh7NRYU7e2lp5Gn9lNiOMZ2kyJM1J4pkGOxXfyKhVS7W/ynjEzli
         bghDQ11/+uB54M1fDdU15pwTYWzdCf5WKIAJR6BI8YoLhZ1NlVlpwjX4xYa6zY6/iVHM
         l/Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743439588; x=1744044388;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YSD1CSIwZKEg8iQR7/lxPyR0rHCN3eqB+R3UX1MdcO0=;
        b=iDKewp9X4fOr+yUrpWC5DiJ/tOgDfrok9lu2jOpHIi5nJ7kcfCp2G6oiktj5kRDXdH
         rHk5UG/gbnaS51gtiYqu2n6CcSwJbt9u34ApteiSGkx3ucBZ7p8iwiJPv++Ls0a6sPQa
         jqJoeg3pEfG3Y3xYLFu6psPMYFy/4qTlUm5puUqgY9nvs0gpXP95Qs63b+nkOYTcrCQD
         t4k4lqdd2aY6y2AsolnHHOt4TIwdwxnfQg4pTTbN7LzNx/LlB3l0KGsh7Vb/4L0nWOUC
         5O9J0tqFWWu2+e5Tjx76zos9+jeQX+gYnyRVAUIieKuF98y421huHRsVDbH2h65Hf4yZ
         jmmw==
X-Gm-Message-State: AOJu0Yww5qtiXGrGXBEloIIxZ9m+OMOH+9CcibHxHAEvLT4S5JWusc0K
	x4OWBdu12OgUcJ4r0mlJD0oIEbf8f4s4IPJ5IjAwSnbKNuZ1NfQ/h/R5iw==
X-Gm-Gg: ASbGnctQDS5YsU3HWlPEvindtmc9A2HM9SzEe9S6hVZF7MR9KbvEfPchXPj37HgAxLw
	7i6ejmlzpGcbrYkoyTcLn8snDRhn30+wxuPr/zL/mX4gce9PehNJelSH092f8bNIbFcXhZwI72x
	jrJMd0hD8lT2WXhpmuu4aV8H7dQ6irIz4rxbb6vJQzMu59Xq6T3jDafwEUpB1mGGXJ1nM0TzoRP
	wK/N63L+vbYYKScaYVQ0pDMJLxK2JFFAXmo1VwEMK9wzdZsK9FbooGPnUozdSiRgEp1PLbPC5CD
	LKF6C1ew6zHKYcqml26jo2/6jHj7JeCPGqhPU3qfhnNQ+XDF+lnkFXM=
X-Google-Smtp-Source: AGHT+IHFxhe8b/0CxESpgM4jUyUO5CsUIhmL5oaRwfdH083O4SFzt7nu1ZonNvCHu9Ob9yaQQFUAyg==
X-Received: by 2002:a05:6214:d41:b0:6e6:6686:afcf with SMTP id 6a1803df08f44-6eed5f88d07mr117727696d6.4.1743439587670;
        Mon, 31 Mar 2025 09:46:27 -0700 (PDT)
Received: from [192.168.2.170] ([76.67.104.188])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6eec9645f36sm48714866d6.42.2025.03.31.09.46.26
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Mar 2025 09:46:27 -0700 (PDT)
Message-ID: <78f46558-e584-4f36-8ce4-bd3a0d96ab94@gmail.com>
Date: Mon, 31 Mar 2025 12:46:16 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <CALM_BfYZML=gn1qcQEDVCc5W+DdeojAVxiFmKdmDESFuA1Ep6Q@mail.gmail.com>
 <b577024e-902c-4eed-8a32-409d7ba8335a@gmail.com>
 <CAOEzSFTb_RoOYxYuDzR4HHYQjL_rZz2oXKB9F3qHQ9op3xis+g@mail.gmail.com>
 <PH1P110MB1284346766755262C416A81D98A1A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
 <a5f4e895-2921-4c9d-9979-ede6bf91ceb0@gmail.com>
 <1606018006.2100559.1743436319414@mail.yahoo.com>
 <df01792d-cf76-4468-ac42-87a79806bd66@gmail.com>
 <1603686288.2112812.1743437855091@mail.yahoo.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1603686288.2112812.1743437855091@mail.yahoo.com>
Message-ID-Hash: XRIAFLZ3QQNGNCURJHRQPFYNJSI4ZMB6
X-Message-ID-Hash: XRIAFLZ3QQNGNCURJHRQPFYNJSI4ZMB6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Max Input RF Power in X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XRIAFLZ3QQNGNCURJHRQPFYNJSI4ZMB6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8468665674603803329=="

This is a multi-part message in MIME format.
--===============8468665674603803329==
Content-Type: multipart/alternative;
 boundary="------------qEcU0Ngp04uSlBupz0R82fVJ"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------qEcU0Ngp04uSlBupz0R82fVJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 31/03/2025 12:17, zhou via USRP-users wrote:
> Hi Marcus,
>
> Thanks for your quick response. I still have some doubt. In X410 spec,=20
> there is clear information on max input rf power: +14dBm for f<3GHz,=20
> +17dBm for f>3GHz
>
> https://www.ni.com/docs/en-US/bundle/ettus-usrp-x410-specs/page/specs.h=
tml#GUID-50099182-F4E2-42EC-BBBD-7E336B07FFBE__GUID-B1D08221-A553-4A47-80=
5A-896B34C98C07
>
> If the max input signal power is -15dBm, the difference between X310=20
> and X410 is too big.
>
> Any further inputs will be appreciated.
>
They are completely different designs, with completely different=20
components.=C2=A0 The X410 uses Xilinx RFSoCs that have
 =C2=A0 integrated RF chains inside the chips.

Now, having said THAT, the UBX-160 has either an MGA62563 LNA chip or=20
PMA3-83LN LNA chip "up front", depending on
 =C2=A0 the selected frequency range.=C2=A0 Both of these chips can toler=
ate=20
considerably higher input powers.=C2=A0 However, that doesn't
 =C2=A0 mean that components that are *downstream* from those LNAs are go=
ing=20
to be happy seeing those high input powers
 =C2=A0 *amplified* by the font-end LNA.=C2=A0 So, for the most part,=20
Ettus/NI/Emerson recommend no more than -15dBm as
 =C2=A0 a safe, conservative, value.=C2=A0 In the intended application sp=
ace,=20
where they are intended to be directly antenna-connected,
 =C2=A0 a signal of -15dBm is "blow the doors off" loud.




>
>
>
> On Monday 31 March 2025 at 16:59:11 BST, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>
> On 31/03/2025 11:51, zhou via USRP-users wrote:
> Hi,
>
> What is the max input signal power to RF ports in X310?=C2=A0 There is =
a=20
> spec in the below link:
> https://www.ettus.com/wp-content/uploads/2024/01/X300_X310_Spec_Sheet_2=
024-01-23.pdf=20
> <https://www.ettus.com/wp-content/uploads/2024/01/X300_X310_Spec_Sheet_=
2024-01-23.pdf>
> There are max output powers, but not input power.
> I am using UBX-160 daughterboard.
>
> In X300/X310 Getting Started Guides - Ettus Knowledge Base=20
> <https://kb.ettus.com/X300/X310_Getting_Started_Guides>, it says that
>
>
> =09
>
>
> =09
>
>
>     X300/X310 Getting Started Guides - Ettus Knowledge Base
>
> <https://kb.ettus.com/X300/X310_Getting_Started_Guides>
>
>
> "Never apply more than -15 dBm of power into any RF input."
>
> ChatGpt says that "*UBX 40*: *+10 dBm* (10 mW)"
>
> What is the max input signal power?
>
> Thanks for any comments,
>
> Zhou
>
> -15dBm is somewhat conservative, but if that's what the manufacturer=20
> recommends, I'd go with that, rather than a
> =C2=A0 hallucination produced by ChatGPT.
>
> The receivers on USRPs are generally designed to be connected to an=20
> antenna, and as such have sensitive, lower-noise
> =C2=A0 front-ends.=C2=A0 Such front-ends generally don't tolerate highe=
r input=20
> powers without damage--and +10dBm *IS* high
> =C2=A0 input power for a radio receiver.
>
> One may have gotten used to the relatively-insensitive inputs of=20
> laboratory spectrum analyzers, which often have
> =C2=A0 inputs that can tolerate considerably-higher power levels, but a=
re=20
> insensitive at levels expected from direct
> =C2=A0 connection to an antenna.=C2=A0 But USRPs are designed for anten=
na=20
> connection.=C2=A0=C2=A0 If you want to use them as
> =C2=A0 a laboratory spectrum analyser, you'll need to use attenuators.
>
>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com  <mailto:usrp-use=
rs@lists.ettus.com>
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com  <mail=
to:usrp-users-leave@lists.ettus.com>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------qEcU0Ngp04uSlBupz0R82fVJ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 31/03/2025 12:17, zhou via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1603686288.2112812.1743437855091@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <!--[if gte mso 9]><xml><o:OfficeDocumentSettings><o:AllowPNG/><o:P=
ixelsPerInch>96</o:PixelsPerInch></o:OfficeDocumentSettings></xml><![endi=
f]-->
      <div class=3D"ydp24bbc0e8yahoo-style-wrap"
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks for your quick
          response. I still have some doubt. In X410 spec, there is
          clear information on max input rf power: +14dBm for f&lt;3GHz,
          +17dBm for f&gt;3GHz</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><a
href=3D"https://www.ni.com/docs/en-US/bundle/ettus-usrp-x410-specs/page/s=
pecs.html#GUID-50099182-F4E2-42EC-BBBD-7E336B07FFBE__GUID-B1D08221-A553-4=
A47-805A-896B34C98C07"
            rel=3D"nofollow" target=3D"_blank" class=3D"moz-txt-link-free=
text"
            moz-do-not-send=3D"true">https://www.ni.com/docs/en-US/bundle=
/ettus-usrp-x410-specs/page/specs.html#GUID-50099182-F4E2-42EC-BBBD-7E336=
B07FFBE__GUID-B1D08221-A553-4A47-805A-896B34C98C07</a></div>
        <div><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">If the max input signal po=
wer
          is -15dBm, the difference between X310 and X410 is too big.</di=
v>
        <div><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Any further inputs will be
          appreciated.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
      </div>
    </blockquote>
    They are completely different designs, with completely different
    components.=C2=A0 The X410 uses Xilinx RFSoCs that have<br>
    =C2=A0 integrated RF chains inside the chips.<br>
    <br>
    Now, having said THAT, the UBX-160 has either an MGA62563 LNA chip
    or PMA3-83LN LNA chip "up front", depending on<br>
    =C2=A0 the selected frequency range.=C2=A0 Both of these chips can to=
lerate
    considerably higher input powers.=C2=A0 However, that doesn't<br>
    =C2=A0 mean that components that are *downstream* from those LNAs are
    going to be happy seeing those high input powers<br>
    =C2=A0 *amplified* by the font-end LNA.=C2=A0 So, for the most part,
    Ettus/NI/Emerson recommend no more than -15dBm as<br>
    =C2=A0 a safe, conservative, value.=C2=A0 In the intended application=
 space,
    where they are intended to be directly antenna-connected,<br>
    =C2=A0 a signal of -15dBm is "blow the doors off" loud.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:1603686288.2112812.1743437855091@mail.yahoo.com">
      <div class=3D"ydp24bbc0e8yahoo-style-wrap"
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;">
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div><br>
        </div>
      </div>
      <div id=3D"ydp5dab60bcyahoo_quoted_3528664397"
        class=3D"ydp5dab60bcyahoo_quoted">
        <div
style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-=
size:13px;color:#26282a;">
          <div> On Monday 31 March 2025 at 16:59:11 BST, Marcus D. Leech
            <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonbra=
un@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"ydp5dab60bcyiv9675524893">
              <div id=3D"ydp5dab60bcyiv9675524893yqt35953"
                class=3D"ydp5dab60bcyiv9675524893yqt0555802826">
                <div>
                  <div class=3D"ydp5dab60bcyiv9675524893moz-cite-prefix">=
On
                    31/03/2025 11:51, zhou via USRP-users wrote:<br
                      clear=3D"none">
                  </div>
                  <blockquote type=3D"cite"> </blockquote>
                </div>
                <div>
                  <div
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;"
class=3D"ydp5dab60bcyiv9675524893ydpcf4bf1c9yahoo-style-wrap">
                    <div dir=3D"ltr">Hi,</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">What is the max input signal power t=
o
                      RF ports in X310?=C2=A0 There is a spec in the belo=
w
                      link:</div>
                    <div dir=3D"ltr"><a shape=3D"rect"
href=3D"https://www.ettus.com/wp-content/uploads/2024/01/X300_X310_Spec_S=
heet_2024-01-23.pdf"
class=3D"ydp5dab60bcyiv9675524893moz-txt-link-freetext moz-txt-link-freet=
ext"
                        rel=3D"nofollow" target=3D"_blank"
                        moz-do-not-send=3D"true">https://www.ettus.com/wp=
-content/uploads/2024/01/X300_X310_Spec_Sheet_2024-01-23.pdf</a></div>
                    <div dir=3D"ltr"><span><span
style=3D"color:rgb(0, 0, 0);font-family:Helvetica Neue, Helvetica, Arial,=
 sans-serif;">There
                          are max output powers, but not input power.</sp=
an></span><br
                        clear=3D"none">
                    </div>
                    <div dir=3D"ltr">I am using UBX-160 daughterboard.</d=
iv>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">In=C2=A0<a shape=3D"rect"
href=3D"https://kb.ettus.com/X300/X310_Getting_Started_Guides"
class=3D"ydp5dab60bcyiv9675524893moz-txt-link-freetext enhancr_card_37562=
91537"
                        rel=3D"nofollow" target=3D"_blank"
                        moz-do-not-send=3D"true">X300/X310 Getting Starte=
d
                        Guides - Ettus Knowledge Base</a>, it says that</=
div>
                    <div><br>
                    </div>
                    <div id=3D"ydp58fcfaf4enhancr_card_3756291537"
class=3D"ydp58fcfaf4yahoo-link-enhancr-card ydp58fcfaf4ymail-preserve-cla=
ss ydp58fcfaf4ymail-preserve-style"
style=3D"max-width:400px;font-family:YahooSans VF, YahooSans, OpenSans VF=
, OpenSans, Helvetica Neue, Segoe UI, Helvetica, Arial, sans-serif"
data-url=3D"https://kb.ettus.com/X300/X310_Getting_Started_Guides"
                      data-type=3D"YENHANCER" data-size=3D"MEDIUM"
                      contenteditable=3D"false"><a
href=3D"https://kb.ettus.com/X300/X310_Getting_Started_Guides"
style=3D"text-decoration:none !important;color:#000 !important"
                        class=3D"ydp58fcfaf4yahoo-enhancr-cardlink"
                        rel=3D"nofollow" target=3D"_blank"
                        moz-do-not-send=3D"true">
                        <table
class=3D"ydp58fcfaf4card-wrapper ydp58fcfaf4yahoo-ignore-table"
                          style=3D"max-width:400px" cellspacing=3D"0"
                          cellpadding=3D"0" border=3D"0">
                          <tbody>
                            <tr>
                              <td width=3D"400">
                                <table
class=3D"ydp58fcfaf4card ydp58fcfaf4yahoo-ignore-table"
style=3D"max-width:400px;border-width:1px;border-style:solid;border-color=
:rgb(224, 228, 233);border-radius:2px"
                                  width=3D"100%" cellspacing=3D"0"
                                  cellpadding=3D"0" border=3D"0">
                                  <tbody>
                                    <tr>
                                      <td
class=3D"ydp58fcfaf4card-primary-image-cell"
style=3D"background-color: rgb(0, 0, 0); background-repeat: no-repeat; ba=
ckground-size: cover; position: relative; border-radius: 2px 2px 0px 0px;=
 min-height: 175px;"
                                        valign=3D"top" height=3D"175"
                                        bgcolor=3D"#000000"
background=3D"https://s.yimg.com/lo/api/res/1.2/d.Bvlg.XAKfnIXmW85NzWw--~=
A/Zmk9ZmlsbDt3PTQwMDtoPTIwMDthcHBpZD1pZXh0cmFjdA--/https://kb.ettus.com/i=
mages/thumb/4/48/Product_x300.jpg/250px-Product_x300.jpg.cf.jpg"><!--[if =
gte mso 9]><v:rect fill=3D"true" stroke=3D"false" style=3D"width:396px;he=
ight:175px;position:absolute;top:0;left:0;"><v:fill type=3D"frame" color=3D=
"#000000" src=3D"https://s.yimg.com/lo/api/res/1.2/d.Bvlg.XAKfnIXmW85NzWw=
--~A/Zmk9ZmlsbDt3PTQwMDtoPTIwMDthcHBpZD1pZXh0cmFjdA--/https://kb.ettus.co=
m/images/thumb/4/48/Product_x300.jpg/250px-Product_x300.jpg.cf.jpg"/></v:=
rect><![endif]-->
                                        <table
class=3D"ydp58fcfaf4card-overlay-container-table ydp58fcfaf4yahoo-ignore-=
table"
                                          style=3D"width:100%"
                                          cellspacing=3D"0"
                                          cellpadding=3D"0" border=3D"0">
                                          <tbody>
                                            <tr>
                                              <td
class=3D"ydp58fcfaf4card-overlay-cell"
style=3D"background-color: transparent; border-radius: 2px 2px 0px 0px; m=
in-height: 175px;"
                                                valign=3D"top"
                                                bgcolor=3D"transparent"
background=3D"https://s.yimg.com/cv/ae/nq/storm/assets/enhancrV21/1/enhan=
cr_gradient-400x175.png"><!--[if gte mso 9]><v:rect fill=3D"true" stroke=3D=
"false" style=3D"width:396px;height:175px;position:absolute;top:-18px;lef=
t:0;"><v:fill type=3D"pattern" color=3D"#000000" src=3D"https://s.yimg.co=
m/cv/ae/nq/storm/assets/enhancrV21/1/enhancr_gradient-400x175.png"/><v:te=
xtbox inset=3D"0,0,20px,0"><![endif]-->
                                                <table
class=3D"ydp58fcfaf4yahoo-ignore-table"
style=3D"width: 100%; min-height: 175px;" height=3D"175" border=3D"0">
                                                  <tbody>
                                                    <tr>
                                                      <td
class=3D"ydp58fcfaf4card-richInfo2"
style=3D"text-align:left;padding:15px 0 0 15px;vertical-align:top"><br>
                                                      </td>
                                                      <td
class=3D"ydp58fcfaf4card-actions"
style=3D"text-align:right;padding:15px 15px 0 0;vertical-align:top"><br>
                                                      </td>
                                                    </tr>
                                                  </tbody>
                                                </table>
                                                <!--[if gte mso 9]></v:te=
xtbox></v:rect><![endif]--></td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td>
                                        <table
class=3D"ydp58fcfaf4card-info ydp58fcfaf4yahoo-ignore-table"
style=3D"background:#fff;position:relative;z-index:2;width:100%;max-width=
:400px;border-radius:0 0 2px 2px;border-top:1px solid rgb(224, 228, 233)"
                                          cellspacing=3D"0"
                                          cellpadding=3D"0" border=3D"0"
                                          align=3D"center">
                                          <tbody>
                                            <tr>
                                              <td
style=3D"background-color:#ffffff;padding:16px 0 16px 12px;vertical-align=
:top;border-radius:0 0 0 2px"><br>
                                              </td>
                                              <td
style=3D"vertical-align:middle;padding:12px 24px 16px 12px;width:99%;font=
-family:YahooSans VF, YahooSans, OpenSans VF, OpenSans, Helvetica Neue, S=
egoe UI, Helvetica, Arial, sans-serif;border-radius:0 0 2px 0">
                                                <h2
class=3D"ydp58fcfaf4card-title"
style=3D"font-size: 14px; line-height: 19px; margin: 0px 0px 6px; font-fa=
mily: YahooSans VF, YahooSans, OpenSans VF, OpenSans, Helvetica Neue, Seg=
oe UI, Helvetica, Arial, sans-serif; color: rgb(29, 34, 40); max-width: 3=
14px;">X300/X310
                                                  Getting Started Guides
                                                  - Ettus Knowledge Base<=
/h2>
                                              </td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                    </tr>
                                  </tbody>
                                </table>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </a></div>
                    <div><br>
                    </div>
                    <div><br>
                    </div>
                    <div dir=3D"ltr">"<span><span
style=3D"color:rgb(0, 0, 0);font-family:Lucida Sans Unicode, Lucida Grand=
e, sans-serif;font-size:14px;">Never
                          apply more than -15 dBm of power into any RF
                          input.</span></span>"</div>
                    <div><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">ChatGpt says that "<strong>UBX 40</s=
trong>:
                      <strong>+10 dBm</strong> (10 mW)"</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">What is the max input signal power?<=
/div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Thanks for any comments,</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Zhou</div>
                    <div><br clear=3D"none">
                    </div>
                  </div>
                  -15dBm is somewhat conservative, but if that's what
                  the manufacturer recommends, I'd go with that, rather
                  than a<br clear=3D"none">
                  =C2=A0 hallucination produced by ChatGPT.<br clear=3D"n=
one">
                  <br clear=3D"none">
                  The receivers on USRPs are generally designed to be
                  connected to an antenna, and as such have sensitive,
                  lower-noise<br clear=3D"none">
                  =C2=A0 front-ends.=C2=A0 Such front-ends generally don'=
t
                  tolerate higher input powers without damage--and
                  +10dBm *IS* high<br clear=3D"none">
                  =C2=A0 input power for a radio receiver.<br clear=3D"no=
ne">
                  <br clear=3D"none">
                  One may have gotten used to the relatively-insensitive
                  inputs of laboratory spectrum analyzers, which often
                  have<br clear=3D"none">
                  =C2=A0 inputs that can tolerate considerably-higher pow=
er
                  levels, but are insensitive at levels expected from
                  direct<br clear=3D"none">
                  =C2=A0 connection to an antenna.=C2=A0 But USRPs are de=
signed
                  for antenna connection.=C2=A0=C2=A0 If you want to use =
them as<br
                    clear=3D"none">
                  =C2=A0 a laboratory spectrum analyser, you'll need to u=
se
                  attenuators.<br clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                  <blockquote type=3D"cite">
                    <div
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;"
class=3D"ydp5dab60bcyiv9675524893ydpcf4bf1c9yahoo-style-wrap">
                      <div><br clear=3D"none">
                      </div>
                      <div dir=3D"ltr"><br clear=3D"none">
                      </div>
                    </div>
                    <br clear=3D"none">
                    <fieldset
class=3D"ydp5dab60bcyiv9675524893moz-mime-attachment-header"></fieldset>
                    <pre class=3D"ydp5dab60bcyiv9675524893moz-quote-pre">=
_______________________________________________
USRP-users mailing list -- <a shape=3D"rect"
                    href=3D"mailto:usrp-users@lists.ettus.com"
class=3D"ydp5dab60bcyiv9675524893moz-txt-link-abbreviated moz-txt-link-fr=
eetext"
                    rel=3D"nofollow" target=3D"_blank"
                    moz-do-not-send=3D"true">usrp-users@lists.ettus.com</=
a>
To unsubscribe send an email to <a shape=3D"rect"
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
class=3D"ydp5dab60bcyiv9675524893moz-txt-link-abbreviated moz-txt-link-fr=
eetext"
                    rel=3D"nofollow" target=3D"_blank"
                    moz-do-not-send=3D"true">usrp-users-leave@lists.ettus=
.com</a>
</pre>
                  </blockquote>
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div class=3D"ydp5dab60bcyqt0555802826"
              id=3D"ydp5dab60bcyqt21074">________________________________=
_______________<br
                clear=3D"none">
              USRP-users mailing list -- <a shape=3D"rect"
                href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollo=
w"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.co=
m</a><br
                clear=3D"none">
              To unsubscribe send an email to <a shape=3D"rect"
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"tru=
e"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a><br
                clear=3D"none">
            </div>
          </div>
        </div>
      </div>
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
    <br>
  </body>
</html>

--------------qEcU0Ngp04uSlBupz0R82fVJ--

--===============8468665674603803329==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8468665674603803329==--
