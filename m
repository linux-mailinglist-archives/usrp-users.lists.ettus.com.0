Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E32E04C8ED9
	for <lists+usrp-users@lfdr.de>; Tue,  1 Mar 2022 16:22:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C3FA6384951
	for <lists+usrp-users@lfdr.de>; Tue,  1 Mar 2022 10:22:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="D44Jd9gd";
	dkim-atps=neutral
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 1C0303849BC
	for <usrp-users@lists.ettus.com>; Tue,  1 Mar 2022 10:20:30 -0500 (EST)
Received: by mail-qv1-f49.google.com with SMTP id j11so16964773qvy.0
        for <usrp-users@lists.ettus.com>; Tue, 01 Mar 2022 07:20:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=oQiDbqsWw2cW9TawbW6jYp4I3VVyGbtMq7097eW7Iqk=;
        b=D44Jd9gdH8m68Bfu+ahi6i90z323e2oDZ3hnOnlFRN9cdgGzgN1bHWk7dexg73ooGu
         NZybpq1pi3l3uSHpRKX/Y9c1xPgQ0HBDdJpfJeUY7ns59srvORrf7M4xfehRiSyBucc5
         hU0pTnz2HptPYnzOaAbJwB85p2vvDYgT106zcPSL4FHTLEoAyY7z3cpSPH7P4ot70hYr
         U/JJ4SjoOUCrKH66W/Kw3NPhTk7GEwZIumI9lWR/DIYP2dqc4H+hG0UKRqJk/lqx1rHH
         ASrrb4+yZY7hpROYcvjCybN7CXHjb847uVqd0nBS6P/CVl3UqZp5gE8cKnC8aXwVgNoD
         NPFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=oQiDbqsWw2cW9TawbW6jYp4I3VVyGbtMq7097eW7Iqk=;
        b=HxCxcCRVuisdsdiqWrXMtV0cjMmMoeB0V9rJKM71NllSMknQv38NdR3Go0qY4rJgCX
         9/4DsBrbhNZphSM/vm+HciAW1WPwsekz9IUt+jsqGfAYjJQ/xA2+7P6KZLapT1aJfthk
         +IXlyvinCRGWhh0QdoYuUUCPQB+mazQczIYN3wDOT0PW8EdoIyR4LWh5cUQuPrrflZ+A
         bQAxdC8/Ez+a+UBKnMZOzy/JB9AD+WZVFccR/EUbjXZf8+Lvoz88zl2eVe7J7MUTS9cu
         xuL6AaRXr/aJp0634hjgNAuDFiqjZKpK45iSTYvrqKE9ipxq1ggqcFjv8xevnXp5k6GN
         HF5Q==
X-Gm-Message-State: AOAM533QGMIagnkR+MKUSbMjldNyixl/5r6Hc6TmMc17z+4WEnvqZ9ra
	hUIJI3xxTNm2l8KD1YwQD+P/gAoBi9eSzA==
X-Google-Smtp-Source: ABdhPJy0qHfT0tS9515xync3/r7cUlN3o+GJWb/DccGNQkHI/pT+bdKNjB4+7bknaDccaVE4kWrWEw==
X-Received: by 2002:a0c:ec0c:0:b0:432:8769:6d6a with SMTP id y12-20020a0cec0c000000b0043287696d6amr17960581qvo.29.1646148030046;
        Tue, 01 Mar 2022 07:20:30 -0800 (PST)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id a143-20020a376695000000b00648cb6bb2ecsm6687235qkc.54.2022.03.01.07.20.29
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Mar 2022 07:20:29 -0800 (PST)
Message-ID: <1ab2f132-ab14-98fd-befc-4204282174da@gmail.com>
Date: Tue, 1 Mar 2022 10:20:29 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <AM8P250MB0107ABD44FFADBD14869085A9B029@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <AM8P250MB0107ABD44FFADBD14869085A9B029@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
Message-ID-Hash: Z4PT7KRI7MGZSO2HL2OL67JTYKJPW4HC
X-Message-ID-Hash: Z4PT7KRI7MGZSO2HL2OL67JTYKJPW4HC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflow - when to take it seriously?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z4PT7KRI7MGZSO2HL2OL67JTYKJPW4HC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4692849372652059943=="

This is a multi-part message in MIME format.
--===============4692849372652059943==
Content-Type: multipart/alternative;
 boundary="------------w08PSX511ToBCfe9zu0NDkc0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------w08PSX511ToBCfe9zu0NDkc0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-03-01 04:48, Tobias Kronauer wrote:
> Dear USRP-Users,
>
> recently, we purchased a USRP X410. I am using the UHD version shipped=20
> with, namely UHD 4.1.0.5-0-g18f5f9a4. Running the default examples, I=20
> receive constantly Overflow-"Errors". Namely, there are two different=20
> notifications, generally speaking, I receive. *I wonder what the=20
> difference is.*
>
> Notification Type 1: A print to stdout, i.e. a `O`, without receiving=20
> an error message from the metadata of the received package.
> Notification Type 2: An error message in the metadata of the received=20
> package.
>
> Can you tell me the difference? Scanning the documentation, it is hard=20
> for me to find the actual difference. I wonder when to take it=20
> seriously, i.e. knowing that some samples are actually dropped.
>
> Kind regards,
> Tobias
>
>
>
> *Barkhausen Institut*
> www.barkhauseninstitut.org
>
> Barkhausen Institut gGmbH | Sitz: W=C3=BCrzburger Stra=C3=9Fe 46, 01187=
 Dresden,=20
> Germany | Registergericht: Amtsgericht Dresden, HRB 37267 |=20
> Gesch=C3=A4ftsf=C3=BChrer: Prof. Dr. Gerhard Fettweis, Dr. Tim Hentsche=
l |=20
> Vorsitzender der Gesellschafterdelegation: Dr. Andreas Handschuh
>
> Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie=20
> unter: https://barkhauseninstitut.org/data-privacy
>
> This email and any attachments are intended only for the person to=20
> whom this email is addressed and may contain confidential and/or=20
> privileged information. If you received this email in error, please do=20
> not disclose the contents to anyone, but notify the sender by return=20
> email and delete this email (and any attachments) from your system.=20
> Information on data protection and processing of your personal=20
> information: https://barkhauseninstitut.org/data-privacy
>
>
Looking at the code, the printing of the 'O' can be somewhat=20
asynchronous to sending packets towards the application--looking in=20
super_recv_packet_handler.hpp, the
 =C2=A0 printing of the 'O' (via UHD_LOG_FASTPATH) always seems to corres=
pond=20
to a packet with ERROR_CODE_OVERFLOW set.

In all cases, 'O' means that samples were lost.=C2=A0 You can look at the=
=20
timestamps in the packet metadata from _recv() to determine where the=20
gap is.




--------------w08PSX511ToBCfe9zu0NDkc0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-03-01 04:48, Tobias Kronauer
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:AM8P250MB0107ABD44FFADBD14869085A9B029@AM8P250MB0107.EURP250.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Dear USRP-Users,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        recently, we purchased a USRP X410. I am using the UHD version
        shipped with, namely UHD 4.1.0.5-0-g18f5f9a4. Running the
        default examples, I receive constantly Overflow-"Errors".
        Namely, there are two different notifications, generally
        speaking, I receive.
        <b>I wonder what the difference is.</b></div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Notification Type 1: A print to stdout, i.e. a `O`, without
        receiving an error message from the metadata of the received
        package.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Notification Type 2: An error message in the metadata of the
        received package.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Can you tell me the difference? Scanning the documentation, it
        is hard for me to find the actual difference. I wonder when to
        take it seriously, i.e. knowing that some samples are actually
        dropped.<br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Kind regards,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Tobias<br>
      </div>
      <div>
        <p style=3D"font-size: 11pt; font-family: Calibri, sans-serif,
          serif, &quot;EmojiFont&quot;; margin: 0px;">
          <br>
          <br>
          <b>Barkhausen Institut</b> <br>
          <a class=3D"moz-txt-link-abbreviated" href=3D"http://www.barkha=
useninstitut.org">www.barkhauseninstitut.org</a> <br>
          <br>
        </p>
        <p style=3D"font-size: 11pt; font-family: Calibri, sans-serif,
          serif, &quot;EmojiFont&quot;; margin: 0px;">
          <span style=3D"font-size:9pt;" lang=3D"de-DE">Barkhausen Instit=
ut
            gGmbH | Sitz: W=C3=BCrzburger Stra=C3=9Fe 46, 01187 Dresden, =
Germany |
            Registergericht: Amtsgericht Dresden, HRB 37267 |
            Gesch=C3=A4ftsf=C3=BChrer: Prof. Dr. Gerhard Fettweis, Dr. Ti=
m
            Hentschel | Vorsitzender der Gesellschafterdelegation: Dr.
            Andreas Handschuh <br>
            <br>
            Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten
            finden Sie unter:
            <a class=3D"moz-txt-link-freetext" href=3D"https://barkhausen=
institut.org/data-privacy">https://barkhauseninstitut.org/data-privacy</a=
>
            <br>
            <br>
          </span><span style=3D"font-size:9pt;" lang=3D"en-US">This email
            and any attachments are intended only for the person to whom
            this email is addressed and may contain confidential and/or
            privileged information. If you received this email in error,
            please do not disclose the contents to anyone, but notify
            the sender by return email and delete this email (and any
            attachments) from your system. Information on data
            protection and processing of your personal information:
            <a class=3D"moz-txt-link-freetext" href=3D"https://barkhausen=
institut.org/data-privacy">https://barkhauseninstitut.org/data-privacy</a=
>
            <br>
            <br>
          </span></p>
      </div>
      <br>
    </blockquote>
    Looking at the code, the printing of the 'O' can be somewhat
    asynchronous to sending packets towards the application--looking in
    super_recv_packet_handler.hpp, the<br>
    =C2=A0 printing of the 'O' (via UHD_LOG_FASTPATH) always seems to
    correspond to a packet with ERROR_CODE_OVERFLOW set.<br>
    <br>
    In all cases, 'O' means that samples were lost.=C2=A0 You can look at=
 the
    timestamps in the packet metadata from _recv() to determine where
    the gap is.<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------w08PSX511ToBCfe9zu0NDkc0--

--===============4692849372652059943==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4692849372652059943==--
