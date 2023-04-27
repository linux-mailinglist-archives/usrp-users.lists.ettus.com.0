Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C476F08BB
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 17:51:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E985C380C5D
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 11:51:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682610662; bh=NRwv2iCXpmSXzP2uOBqzu874XdN49XE3FziH7Un2I7s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ThpUHyvCJUZn9HYZXpfCG2ZY/v1OgstmrhuYkZSRnNnMr05XYPQHTXkhkJIiWhHr2
	 bPM6axuyPlIAmCcHdAFjwB9+oZSq9xB56J1fkleaVXqfybkliHbe4qijtEyUzNeWvp
	 qZiQJLheAyenMdRtgZhKKrMjR/zzTEZuGXA0hFghouA0OTiHbdAwZmI78NnTo2nQ+J
	 6xLRSQIn8WVlSXZV77+Yh29N+6bxS/a6IvAgVWPRSZF0TC9l9DxJKzX1izvJDAphuY
	 aPq6L8ii0Tne9NCUthI8w2jnqPgfRKH0VH6T67H+YLOvnbQQUQfxZWcQ5i/JV9XF9u
	 dU9aD+L7ddiWA==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 8FB8D3801BA
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 11:50:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JSomPxso";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-74e17099772so741082885a.1
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 08:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682610624; x=1685202624;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kGnXf2/Uhp/8Tg6SmWlRiVl0zoD/K0lGjt8XINQPpas=;
        b=JSomPxsoYlnKy6TelZcGgHdcTBY2haTt5WSL6m/zM8ZG4DWqMUWVfYjCj9k9jguHHI
         QeYbvQ0VXpOq3wRRsxj2xf3iX/Yqbv40CptWZtEB58/cnzFpJv4AFlWT8oSalBEoWILS
         NnnggDvonSkAXr4IRZzsxdi0fP+AO+8sqrdqjqlOD2g7gGspH5nUgHZCfHuimsyxQB3E
         KW1sGid61+q5TcF+yU78wc/SdOMoTrZx8quJ3cJYcHFIHYVsd0ODgEHQjT7vO7Hs/Kmm
         43F2VUzJ6R4eTVWsELHfE7jo6gqODrrZxmbYiiss7EHbI41skRu0xFnFITlchYoogDME
         nhFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682610624; x=1685202624;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kGnXf2/Uhp/8Tg6SmWlRiVl0zoD/K0lGjt8XINQPpas=;
        b=F90EjGAgFWzJVdzBjdZgQeRWdnF41vsnrH1adm+68Eo0t3T+L4DOwKTU53C0knnoYW
         pvL3tzyL03ySB2Oq+Azur7G1pv002efmFy97NMK5Q/TqD6CajoxIIdnsZi7GYkrEZuc3
         CVA5h6aNbYxrsIN7vMEAhjA9dy6wsXh3pV4wxy4dFMbPmZJV6iNZL6FTEneVTFk5oLgH
         21G6QXaV7khmXx/0QB9n6DKCbmgOLR5v8NcKJDLzTc/qjvkL44HRBTYJ8XOHcMRwNKMQ
         NQCpfyjCgVcVAMejXrlStcNRV079QEcc7hSijWywu8tPflL3DZCXfn1rM3DBS6pCB6CG
         rwGA==
X-Gm-Message-State: AC+VfDyLL0LkDwxr8f9icVwxeBle9Akv3Ll3MhaocH2H5Kq56DQ1SqKz
	E/exowDmznpDpoB3fcv4f2YjC4Nxjfw=
X-Google-Smtp-Source: ACHHUZ4gU1dkKMS3uZnE1JSMGImrqGmnzDtBgCkOsXPFvvNxxQBA4Gy3cyObbfQK0G75DXgpUnCWdA==
X-Received: by 2002:a05:6214:4007:b0:5f1:62d9:3368 with SMTP id kd7-20020a056214400700b005f162d93368mr2559939qvb.30.1682610623805;
        Thu, 27 Apr 2023 08:50:23 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id q17-20020a0ce211000000b005f5b71f75f3sm5705086qvl.125.2023.04.27.08.50.23
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 08:50:23 -0700 (PDT)
Message-ID: <c5a60683-4595-7d6b-882c-abd0c6add1d5@gmail.com>
Date: Thu, 27 Apr 2023 11:50:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <fUUKTLboBVD6NSdVJqlpdPQrwCA6D8BQcwqkXAcwxmk@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <fUUKTLboBVD6NSdVJqlpdPQrwCA6D8BQcwqkXAcwxmk@lists.ettus.com>
Message-ID-Hash: 6F6I7MW7447YM5YKEOAPSYHJR6AOJC2X
X-Message-ID-Hash: 6F6I7MW7447YM5YKEOAPSYHJR6AOJC2X
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Full duplex issues with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6F6I7MW7447YM5YKEOAPSYHJR6AOJC2X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4424583426849111930=="

This is a multi-part message in MIME format.
--===============4424583426849111930==
Content-Type: multipart/alternative;
 boundary="------------0cG5xOE9BWvARLYNc4GQBn21"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0cG5xOE9BWvARLYNc4GQBn21
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/04/2023 11:39, david.fernandes@viveris.fr wrote:
>
> Hi Marcus,
>
> I tried to wait 1 minute before starting a new test and it has no=20
> impact. Here are the logs displayed by GNU Radio of 2 successive=20
> tests, the first was successfull and the second launched 1 minute=20
> later failed.
>
> 1st TEST (successful) :
>
>     Generating: '/home/davidfernandes/tests_gnuradio/tutoriel_usrp_gnu.=
py'
>
>     Executing: /usr/bin/python3 -u
>     /home/davidfernandes/tests_gnuradio/tutoriel_usrp_gnu.py
>
>     Warning: Ignoring XDG_SESSION_TYPE=3Dwayland on Gnome. Use
>     QT_QPA_PLATFORM=3Dwayland to run on Wayland anyway.
>
>     [INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400;
>     UHD_4.1.0.6-0-g1a5b4fd2
>
>     [INFO] [X300] X300 initialization sequence...
>
>     [INFO] [X300] Maximum frame size: 1472 bytes.
>
>     [INFO] [X300] Radio 1x clock: 200 MHz
>
>     [WARNING] [MULTI_USRP] Could not set RX rate to 0.280 MHz. Actual
>     rate is 0.279 MHz
>
>     [WARNING] [MULTI_USRP] Could not set RX rate to 0.280 MHz. Actual
>     rate is 0.279 MHz
>
>     [WARNING] [MULTI_USRP] Could not set TX rate to 0.280 MHz. Actual
>     rate is 0.279 MHz
>
>     [WARNING] [MULTI_USRP] Could not set TX rate to 0.280 MHz. Actual
>     rate is 0.279 MHz
>
>     [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>
>     [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
>
>     [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
>
>     [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>
>     >>> Done
>
> 2nd TEST started 1 minute later (Failed) :
>
>     Generating: '/home/davidfernandes/tests_gnuradio/tutoriel_usrp_gnu.=
py'
>
>     Executing: /usr/bin/python3 -u
>     /home/davidfernandes/tests_gnuradio/tutoriel_usrp_gnu.py
>
>     Warning: Ignoring XDG_SESSION_TYPE=3Dwayland on Gnome. Use
>     QT_QPA_PLATFORM=3Dwayland to run on Wayland anyway.
>
>     [INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400;
>     UHD_4.1.0.6-0-g1a5b4fd2
>
>     [INFO] [X300] X300 initialization sequence...
>
>     [INFO] [X300] Maximum frame size: 1472 bytes.
>
>     [INFO] [X300] Radio 1x clock: 200 MHz
>
>     [WARNING] [MULTI_USRP] Could not set RX rate to 0.280 MHz. Actual
>     rate is 0.279 MHz
>
>     [WARNING] [MULTI_USRP] Could not set RX rate to 0.280 MHz. Actual
>     rate is 0.279 MHz
>
>     [WARNING] [MULTI_USRP] Could not set TX rate to 0.280 MHz. Actual
>     rate is 0.279 MHz
>
>     [WARNING] [MULTI_USRP] Could not set TX rate to 0.280 MHz. Actual
>     rate is 0.279 MHz
>
>     [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
>
>     [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>
>     [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>
>     [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
>
>     >>> Done
>
>
> I see no difference betwen the logs of a successful test and the logs=20
> of a failed test.
>
> The version of UHD is UHD_4.1.0.6-0.
>
> Thanks again for your support.
>
>
So, 280Ksps isn't a valid sample rate -- sample-rates must be full=20
integer fractions of the master clock rate, which in your
 =C2=A0 case is 200MHz.=C2=A0=C2=A0 Try something like 1Msps or 0.5msps j=
ust for=20
purposes of a test.=C2=A0=C2=A0=C2=A0=C2=A0 Also bump your RX gain up to =
about 20.



--------------0cG5xOE9BWvARLYNc4GQBn21
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/04/2023 11:39,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:david.fernande=
s@viveris.fr">david.fernandes@viveris.fr</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:fUUKTLboBVD6NSdVJqlpdPQrwCA6D8BQcwqkXAcwxmk@lists.ettus=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi Marcus,</p>
      <p>I tried to wait 1 minute before starting a new test and it has
        no impact. Here are the logs displayed by GNU Radio of 2
        successive tests, the first was successfull and the second
        launched 1 minute later failed.</p>
      <p>1st TEST (successful) :</p>
      <blockquote>
        <p>Generating:
          '/home/davidfernandes/tests_gnuradio/tutoriel_usrp_gnu.py'</p>
        <p>Executing: /usr/bin/python3 -u
          /home/davidfernandes/tests_gnuradio/tutoriel_usrp_gnu.py</p>
        <p>Warning: Ignoring XDG_SESSION_TYPE=3Dwayland on Gnome. Use
          QT_QPA_PLATFORM=3Dwayland to run on Wayland anyway.</p>
        <p>[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400;
          UHD_4.1.0.6-0-g1a5b4fd2</p>
        <p>[INFO] [X300] X300 initialization sequence...</p>
        <p>[INFO] [X300] Maximum frame size: 1472 bytes.</p>
        <p>[INFO] [X300] Radio 1x clock: 200 MHz</p>
        <p>[WARNING] [MULTI_USRP] Could not set RX rate to 0.280 MHz.
          Actual rate is 0.279 MHz</p>
        <p>[WARNING] [MULTI_USRP] Could not set RX rate to 0.280 MHz.
          Actual rate is 0.279 MHz</p>
        <p>[WARNING] [MULTI_USRP] Could not set TX rate to 0.280 MHz.
          Actual rate is 0.279 MHz</p>
        <p>[WARNING] [MULTI_USRP] Could not set TX rate to 0.280 MHz.
          Actual rate is 0.279 MHz</p>
        <p>[WARNING] [0/Radio#0] Attempting to set tick rate to 0.
          Skipping.</p>
        <p>[WARNING] [0/Radio#1] Attempting to set tick rate to 0.
          Skipping.</p>
        <p>[WARNING] [0/Radio#1] Attempting to set tick rate to 0.
          Skipping.</p>
        <p>[WARNING] [0/Radio#0] Attempting to set tick rate to 0.
          Skipping.</p>
        <p>&gt;&gt;&gt; Done</p>
      </blockquote>
      <p>2nd TEST started 1 minute later (Failed) :</p>
      <blockquote>
        <p>Generating:
          '/home/davidfernandes/tests_gnuradio/tutoriel_usrp_gnu.py'</p>
        <p>Executing: /usr/bin/python3 -u
          /home/davidfernandes/tests_gnuradio/tutoriel_usrp_gnu.py</p>
        <p>Warning: Ignoring XDG_SESSION_TYPE=3Dwayland on Gnome. Use
          QT_QPA_PLATFORM=3Dwayland to run on Wayland anyway.</p>
        <p>[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400;
          UHD_4.1.0.6-0-g1a5b4fd2</p>
        <p>[INFO] [X300] X300 initialization sequence...</p>
        <p>[INFO] [X300] Maximum frame size: 1472 bytes.</p>
        <p>[INFO] [X300] Radio 1x clock: 200 MHz</p>
        <p>[WARNING] [MULTI_USRP] Could not set RX rate to 0.280 MHz.
          Actual rate is 0.279 MHz</p>
        <p>[WARNING] [MULTI_USRP] Could not set RX rate to 0.280 MHz.
          Actual rate is 0.279 MHz</p>
        <p>[WARNING] [MULTI_USRP] Could not set TX rate to 0.280 MHz.
          Actual rate is 0.279 MHz</p>
        <p>[WARNING] [MULTI_USRP] Could not set TX rate to 0.280 MHz.
          Actual rate is 0.279 MHz</p>
        <p>[WARNING] [0/Radio#1] Attempting to set tick rate to 0.
          Skipping.</p>
        <p>[WARNING] [0/Radio#0] Attempting to set tick rate to 0.
          Skipping.</p>
        <p>[WARNING] [0/Radio#0] Attempting to set tick rate to 0.
          Skipping.</p>
        <p>[WARNING] [0/Radio#1] Attempting to set tick rate to 0.
          Skipping.</p>
        <p>&gt;&gt;&gt; Done</p>
      </blockquote>
      <p><br>
      </p>
      <p>I see no difference betwen the logs of a successful test and
        the logs of a failed test.</p>
      <p>The version of UHD is UHD_4.1.0.6-0. </p>
      <p>Thanks again for your support.</p>
      <br>
    </blockquote>
    So, 280Ksps isn't a valid sample rate -- sample-rates must be full
    integer fractions of the master clock rate, which in your<br>
    =C2=A0 case is 200MHz.=C2=A0=C2=A0 Try something like 1Msps or 0.5msp=
s just for
    purposes of a test.=C2=A0=C2=A0=C2=A0=C2=A0 Also bump your RX gain up=
 to about 20.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------0cG5xOE9BWvARLYNc4GQBn21--

--===============4424583426849111930==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4424583426849111930==--
