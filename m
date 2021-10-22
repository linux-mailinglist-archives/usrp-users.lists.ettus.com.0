Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9AF43796A
	for <lists+usrp-users@lfdr.de>; Fri, 22 Oct 2021 16:56:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 301B938458A
	for <lists+usrp-users@lfdr.de>; Fri, 22 Oct 2021 10:56:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iMbLOlMw";
	dkim-atps=neutral
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id EF84B383EB5
	for <usrp-users@lists.ettus.com>; Fri, 22 Oct 2021 10:55:35 -0400 (EDT)
Received: by mail-qt1-f171.google.com with SMTP id o12so3720911qtq.7
        for <usrp-users@lists.ettus.com>; Fri, 22 Oct 2021 07:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=rg1DF+xauBzfIrgxLiaF/Aj/aahkFbj4zRaX1RpHbnw=;
        b=iMbLOlMwE9lluabX3zsPELiS/eBuhJKqugX1sP/nzkLF2rpIZjH43itCzHLn2sMGhN
         7XA4SU4rh5EkFHNCSO8uUDSvHY+TBd3KDNgCSzYbWuOAAv18dDerC5hxIUYWnZz6+yo4
         sCwXveZt8688I5MngW9pw+FXxrHJQdWHoQBwkS+exYIK99vG6PkDZHZww29aWYfh7hVE
         0hNypjWvMXcRhSHTh+UXylxKHS34j/YTnDNgi1JW/ZIoJdwUsqjeOffo4OKCjHrUhk3L
         pL/as7QsvFuv3/mPoBX17awoVful9GWy2Fhs/4x3JYuXon0y25Z5By1FPbJ/CnJ0kGMH
         uqqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=rg1DF+xauBzfIrgxLiaF/Aj/aahkFbj4zRaX1RpHbnw=;
        b=8DoIyRPLPIEWaqQffzkUinoyIpu2rET1T/4ZYDGo4+yEMJyyf512p7TlzmF5YZTIgA
         dEGODDm7MbdaglwryIuZi63siAICKdjbBtBJDucCk0t7S7XxxLzfM8XYuHqh2NAQOBsC
         v1zzOFpzYhcms79re+KjF0ND+3C5WJJ9MDq0YYG8b8mFf8BvygHMq4HRUSD4IA708Tc2
         s0PzqjEpJ4UX3Sa0PsHLmcTu/VYgDpRqoKpx2GVpFfziVk4USZEgKH8CXy17FwC0DNZh
         G5MZXxCGnVMmUXp/iCKIWpFMqPmP7mim5o3FAd16wpKXXzgHSqWKrmVoMIGkNLUZByyt
         dDqA==
X-Gm-Message-State: AOAM530LNKKMjx2a8Am++9b53prYzt8AFh18bfMdzdMMm/g9BAbeEBEv
	tUO82MFDYflzbW82sv626CSum7nUZQw=
X-Google-Smtp-Source: ABdhPJx7uQtDar+m41HzGh1vzaSDj1JpBU6fhxXC+zgGhqrqCjyVWTTtSNnfRpX/Ai2T5bxv6/NYyw==
X-Received: by 2002:a05:622a:ce:: with SMTP id p14mr433085qtw.164.1634914535207;
        Fri, 22 Oct 2021 07:55:35 -0700 (PDT)
Received: from [192.168.2.251] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id l27sm4215868qki.98.2021.10.22.07.55.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 07:55:34 -0700 (PDT)
To: Ivan Zahartchuk <adray0001@gmail.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>,
 usrp-users <usrp-users@lists.ettus.com>
References: <CAPRRyxsHu+FoQrLpC+fVyVdtmdu4kfXEq8CBmBsA5iGJ+xT-FA@mail.gmail.com>
 <CAPRRyxsDhTm=m_EWds6SbJUuDkVaK0GJyOETVaSPisb_kfzbkw@mail.gmail.com>
 <6d3d9adb-fd20-e86e-fe12-9daf26315df7@gmail.com>
 <CAPRRyxsYL12897gcx+xs9baY7LFyCyJGepeKCS=r4UrO6EGpRQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <b806b59f-3454-01eb-00f6-db6aeea4a1c5@gmail.com>
Date: Fri, 22 Oct 2021 10:55:27 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAPRRyxsYL12897gcx+xs9baY7LFyCyJGepeKCS=r4UrO6EGpRQ@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: KB77BGYFAUTO5OAJWNDL5LLWJSQCUUUO
X-Message-ID-Hash: KB77BGYFAUTO5OAJWNDL5LLWJSQCUUUO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fwd: Adding a Window block to an RFNOC graph
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KB77BGYFAUTO5OAJWNDL5LLWJSQCUUUO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3831991874265478721=="

This is a multi-part message in MIME format.
--===============3831991874265478721==
Content-Type: multipart/alternative;
 boundary="------------3574114278400D3A294E944F"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------3574114278400D3A294E944F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-22 6:05 a.m., Ivan Zahartchuk wrote:
> Yes I am setting fft for magnitudes. On the front side, I am doing a=20
> log. I perfectly understand where infinity comes from. I don=E2=80=99t=20
> understand why the FFT returns 0. But how can I configure the Window?
>
What does uhd_usrp_probe show in the "RFNOC Blocks" section on this devic=
e?

I think the window RFNOC function in GNu Radio takes a list of the=20
window values as a parameter--you can populate that with any of the=20
window.* functions
 =C2=A0 within Gnu Radio.


> =D0=BF=D1=82, 22 =D0=BE=D0=BA=D1=82. 2021 =D0=B3. =D0=B2 01:51, Marcus =
D. Leech <patchvonbraun@gmail.com=20
> <mailto:patchvonbraun@gmail.com>>:
>
>     On 2021-10-21 6:40 p.m., Ivan Zahartchuk wrote:
>>
>>     Hello, I have a problem that when receiving samples from the USRP
>>     E310 board, after the FFT block at low gain, zero values are
>>     received. After that I log them and get infinity. I wanted to
>>     figure out what the problem is, but I have no idea, maybe the
>>     Window block will fix the situation. But when building my yaml
>>     file, I get the error: [ERR] 2 Unresolved connection(s) [ERR] =C2=A0=
 =C2=A0
>>     (window0-out_0 -> fft0-in0) [ERR] =C2=A0 =C2=A0 (fft0-out_0 -> ep1=
-in_0)
>>     [INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('radio0', 'ctrl_port', 'master=
'),) [INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0
>>     (('radio0', 'time_keeper', 'listener'),) [INF] =C2=A0 =C2=A0 =C2=A0=
 =C2=A0
>>     (('radio0', 'x300_radio', 'slave'),) [INF] =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 (('_device_',
>>     'ctrlport_radio', 'slave'),) [INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('=
_device_',
>>     'time_keeper', 'broadcaster'),) [INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
(('_device_',
>>     'x300_radio', 'master'),) Please tell me what could be the
>>     problem and how can I add the Window block to my image?
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com  <mailto:usrp=
-users@lists.ettus.com>
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com  <=
mailto:usrp-users-leave@lists.ettus.com>
>     Do you have your FFT configured for log output?=C2=A0 Because the
>     logarithm of zero is undefined.
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>


--------------3574114278400D3A294E944F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-22 6:05 a.m., Ivan
      Zahartchuk wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAPRRyxsYL12897gcx+xs9baY7LFyCyJGepeKCS=3Dr4UrO6EGpRQ@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <pre class=3D"gmail-tw-data-text gmail-tw-text-large gmail-XcVN5d=
 gmail-tw-ta" id=3D"gmail-tw-target-text" style=3D"text-align:left" dir=3D=
"ltr"><span class=3D"gmail-Y2IQFc" lang=3D"en">Yes I am setting fft for m=
agnitudes. On the front side, I am doing a log. I perfectly understand wh=
ere infinity comes from. I don=E2=80=99t understand why the FFT returns 0=
. But how can I configure the Window?</span></pre>
      </div>
      <br>
    </blockquote>
    What does uhd_usrp_probe show in the "RFNOC Blocks" section on this
    device?<br>
    <br>
    I think the window RFNOC function in GNu Radio takes a list of the
    window values as a parameter--you can populate that with any of the
    window.* functions<br>
    =C2=A0 within Gnu Radio.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAPRRyxsYL12897gcx+xs9baY7LFyCyJGepeKCS=3Dr4UrO6EGpRQ@mail.gm=
ail.com">
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">=D0=BF=D1=82, 22 =D0=BE=D0=BA=
=D1=82. 2021 =D0=B3. =D0=B2 01:51,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true">patchvonbraun@gmail.com</a>&gt;:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2021-10-21 6:40 p.m., Ivan Zahartchuk wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div class=3D"gmail_quote">
                  <div dir=3D"ltr" class=3D"gmail_attr"><br>
                  </div>
                  <div dir=3D"ltr">
                    <pre id=3D"gmail-m_7164106155543386629m_2664631585752=
873320gmail-tw-target-text" style=3D"text-align:left" dir=3D"ltr"><span l=
ang=3D"en">Hello, I have a problem that when receiving samples from the U=
SRP E310 board, after the FFT block at low gain, zero values are received=
. After that I log them and get infinity. I wanted to figure out what the=
 problem is, but I have no idea, maybe the Window block will fix the situ=
ation. But when building my yaml file, I get the error:
[ERR] 2 Unresolved connection(s)
[ERR] =C2=A0 =C2=A0 (window0-out_0 -&gt; fft0-in0)
[ERR] =C2=A0 =C2=A0 (fft0-out_0 -&gt; ep1-in_0)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('radio0', 'ctrl_port', 'master'),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('radio0', 'time_keeper', 'listener'),=
)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('radio0', 'x300_radio', 'slave'),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('_device_', 'ctrlport_radio', 'slave'=
),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('_device_', 'time_keeper', 'broadcast=
er'),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('_device_', 'x300_radio', 'master'),)
<span lang=3D"en">Please tell me what could be the problem and how can I =
add the Window block to my image?

</span></span></pre>
                  </div>
                </div>
              </div>
              <br>
              <fieldset></fieldset>
              <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" moz-do-not-send=3D"true">usrp-users-leave@li=
sts.ettus.com</a>
</pre>
            </blockquote>
            Do you have your FFT configured for log output?=C2=A0 Because=
 the
            logarithm of zero is undefined.<br>
            <br>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users-leave@l=
ists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------3574114278400D3A294E944F--

--===============3831991874265478721==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3831991874265478721==--
