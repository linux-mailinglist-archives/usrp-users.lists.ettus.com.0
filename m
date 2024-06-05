Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B988FCDEE
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jun 2024 14:56:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 02F3E38513D
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jun 2024 08:56:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1717592200; bh=gXH+O5HTFpv8yw1c4HK+8zAtDhfI4wDNdLxJ2qQhvaY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DPIB0TwkqTJUTzPAxzRQ3cDv4SwH6s6X6fqCsmh4wKdgOlML2wvtDF2EA12KUsIwI
	 OT/MibdOd3tP+L6zIHl+cAlBFntcGKlCrtxZf0q2VFiQ3YVVOhl8A2iUByHzR50r1N
	 0aT2i4rOl5IpMtZdk/l9hqv7EnkFx4m498EL9y/4GY0nHQGku1CjmWgH4bL3tdTzAc
	 llnOwgQ13lJhEk975gRcxLMowydVHcEf50EWf/ECUF1OvHO4iJosR3IBAzQSJlTR0t
	 XM3UXoPIl+7irhbsdxjifqtLj8nbYnMJ34e1pOVT3VpfbPH0y0Nl9osW79+DjzVi4m
	 DurXW2n4v4cKw==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 40D873814E9
	for <usrp-users@lists.ettus.com>; Wed,  5 Jun 2024 08:56:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jlcv3s8f";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-6ae60725ea1so12647366d6.2
        for <usrp-users@lists.ettus.com>; Wed, 05 Jun 2024 05:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717592188; x=1718196988; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4PmaJPsvzmwCQetFMEgoXh7rmFnf6fwmaUO3rHYizUM=;
        b=jlcv3s8fuz/UnC0/eGl3/vwatfk8nAqi4xuAATTLc9LYNEU8S9aVSz6TTNCf9wHGOQ
         6YmHMO40bVKUSfHFhziR9VyqvzIFA5t3Dvt885znktPrbPFzwSQZAnZL66kmp/oKr7i7
         4n0nAtEbhxyp698dRJhTMeFDxaExSZM6nVdZONUPmJtu/1Rc5SSdsz9Rqch75ijJn66h
         2K+F8Za5cOukFU2VbMpLqHWxFSCK0XQdnunRqwnPTmuN1JksbncPGAcTDJ9PGCwilR+6
         0huGM2wXopbQOzdoCgI0JZoW8MamuJOZsEMTZ7kovbOHGYUZVx3YVz+dJWV13dzToeQr
         EvPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717592188; x=1718196988;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4PmaJPsvzmwCQetFMEgoXh7rmFnf6fwmaUO3rHYizUM=;
        b=eftqgP3OvGRgNqN+7Jknm6h1UdVZmoEqSppa4WvBhMeftL20MKMunYgnbeLdkG8qdz
         CmDPbjmd7EAxngCZ8fXjJlG7oRdTX83DEcVSWQY1j7vdpqTaAiywCzInFMUHYa+iZtYQ
         r8CQM50kX2BgD+4dTrwEZMibiP1uCDXEDizLfx09OqKMilUXu51iLGmsds0vP62YMeoG
         pg7o4Em0/HbJmUtGhYvk1ffqng6jbjaq/2sDSjCpTTaFq2OFT8CKZpZnHSJRLyjvAAM7
         25FML+ETpOVoNInNAy0ga9c4UP2JRUVLFR7jNDCpMmuvHctvM74LjLjwudKer0Auhi4V
         J53A==
X-Gm-Message-State: AOJu0YxqjkbrmC/vpcs5Gmi4hffGTj3X0yzmLgSYQut1+8ZzJOabyz0W
	8+wclAX3JYMQfuUufBJLCz+5OV/o7NWnoEINE39QRCCVItxhN8ck2+iIcA==
X-Google-Smtp-Source: AGHT+IHo+hErjv8NBdQ1M/xwwAVG03K0N5nFLVcyQTGfe64khFTtex4iLvFN0qd5HuNmMJ4Mh6nTrA==
X-Received: by 2002:a0c:da82:0:b0:6b0:488c:6f48 with SMTP id 6a1803df08f44-6b0488c6f8fmr5562216d6.57.1717592188063;
        Wed, 05 Jun 2024 05:56:28 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-192.dsl.bell.ca. [174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6ae4e0c3b6csm47027896d6.104.2024.06.05.05.56.26
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jun 2024 05:56:26 -0700 (PDT)
Message-ID: <fdbc8ac5-6030-494f-af46-d718d40b7236@gmail.com>
Date: Wed, 5 Jun 2024 08:56:25 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BN2P110MB1747451A80AF745107DB2C51B7F9A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN2P110MB1747451A80AF745107DB2C51B7F9A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: BR2FGEPPQ5QOK3QXKITYGKQR6PA6COGV
X-Message-ID-Hash: BR2FGEPPQ5QOK3QXKITYGKQR6PA6COGV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPS fix behavior on USRP E320
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BR2FGEPPQ5QOK3QXKITYGKQR6PA6COGV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9091120416077309039=="

This is a multi-part message in MIME format.
--===============9091120416077309039==
Content-Type: multipart/alternative;
 boundary="------------w7IiB0dWDBH4yQCMH6QGeV8K"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------w7IiB0dWDBH4yQCMH6QGeV8K
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 05/06/2024 08:43, David Raeman via USRP-users wrote:
>
> Hello,
>
> I'm having a difficult time getting consistent GPS fix behavior from a=20
> set of USRP E320 radios. They are all using UHD 4.4 with the same=20
> active GPS antenna (Siretta Tango 21, which has a 28dB LNA and short=20
> ~6" coax run).
>
> When outside with a view of the sky and 6 radios sitting together,=20
> 10-15 minutes after power-on, some of the radios will have a lock and=20
> others will not. For radios that get a lock, sometimes they will=20
> briefly glitch into "unlocked" state briefly every 20-30 seconds=20
> before reporting as locked again. If I let it sit another 10-15=20
> minutes, nothing really changes. Looking at the output of 'gpsmon' on=20
> the radio, the radios which never locked will see fewer satellites,=20
> and the ones in common will have far different SNR levels.
>
> I'm trying to find a solution for more consistent behavior, especially=20
> since these are outside with a view of the sky. I confirmed the=20
> radio's GPS ANT port has the +3.3V bias so I assume the antennas=20
> receive power as expected.
>
> Searching the mailing list, over the years this topic has come up a=20
> couple times specifically with E320 radios. I know the same Jackson=20
> Labs LTE-Lite SOM is also used in the newer X410 radios, though it's=20
> configured a bit differently via strapping pins. I think:
>
> * The X410 sets the module in 1Hz mode instead of 5Hz.
>
> * The X410 uses it in "mobile" mode instead of auto-surveying=20
> =E2=80=9Cstationary=E2=80=9D mode.
>
> * Curiously, the E320 seems to connect pin 1 (EFC) to pin 2 (NC),=20
> though this doesn't make any sense based on the LTE-Lite public tech=20
> manual. The X410 leaves them NC.
>
> Does anybody know whether any of the changes (or others) represent=20
> "lessons learned" that would improve GPS TTFF or disciplining=20
> behavior? I don=E2=80=99t mind changing resistor populations if there i=
s a=20
> reason to. Or any other suggestions around this topic?
>
> Thank you,
>
> David Raeman
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
IF you move the antennas further apart, what happens?

If they are all tightly packed together, there's an opportunity for=20
shadowing (small, but, maybe?).


--------------w7IiB0dWDBH4yQCMH6QGeV8K
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 05/06/2024 08:43, David Raeman via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB1747451A80AF745107DB2C51B7F9A@BN2P110MB1747.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hello,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I'm having a difficult time getting
          consistent GPS fix behavior from a set of USRP E320 radios.
          They are all using UHD 4.4 with the same active GPS antenna
          (Siretta Tango 21, which has a 28dB LNA and short ~6" coax
          run).<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">When outside with a view of the sky and 6
          radios sitting together, 10-15 minutes after power-on, some of
          the radios will have a lock and others will not. For radios
          that get a lock, sometimes they will briefly glitch into
          "unlocked" state briefly every 20-30 seconds before reporting
          as locked again. If I let it sit another 10-15 minutes,
          nothing really changes. Looking at the output of 'gpsmon' on
          the radio, the radios which never locked will see fewer
          satellites, and the ones in common will have far different SNR
          levels.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I'm trying to find a solution for more
          consistent behavior, especially since these are outside with a
          view of the sky. I confirmed the radio's GPS ANT port has the
          +3.3V bias so I assume the antennas receive power as expected.<=
o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Searching the mailing list, over the years
          this topic has come up a couple times specifically with E320
          radios. I know the same Jackson Labs LTE-Lite SOM is also used
          in the newer X410 radios, though it's configured a bit
          differently via strapping pins. I think:<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">* The X410 sets the module in 1Hz mode
          instead of 5Hz.<o:p></o:p></p>
        <p class=3D"MsoNormal">* The X410 uses it in "mobile" mode instea=
d
          of auto-surveying =E2=80=9Cstationary=E2=80=9D mode.<o:p></o:p>=
</p>
        <p class=3D"MsoNormal">* Curiously, the E320 seems to connect pin
          1 (EFC) to pin 2 (NC), though this doesn't make any sense
          based on the LTE-Lite public tech manual. The X410 leaves them
          NC.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Does anybody know whether any of the
          changes (or others) represent "lessons learned" that would
          improve GPS TTFF or disciplining behavior? I don=E2=80=99t mind
          changing resistor populations if there is a reason to. Or any
          other suggestions around this topic?<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
        <p class=3D"MsoNormal">David Raeman<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
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
    IF you move the antennas further apart, what happens?<br>
    <br>
    If they are all tightly packed together, there's an opportunity for
    shadowing (small, but, maybe?).<br>
    <br>
    <br>
  </body>
</html>

--------------w7IiB0dWDBH4yQCMH6QGeV8K--

--===============9091120416077309039==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9091120416077309039==--
