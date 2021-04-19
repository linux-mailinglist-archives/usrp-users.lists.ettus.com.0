Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F782364DE3
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 00:55:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 613AE385548
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 18:55:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Y60VyCbY";
	dkim-atps=neutral
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 63D54384701
	for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 18:54:22 -0400 (EDT)
Received: by mail-qk1-f182.google.com with SMTP id e13so27756877qkl.6
        for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 15:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=rczZl/wCVdo7FmlR2co0XQiSxZuvWTrdlPGq56BFJHQ=;
        b=Y60VyCbYpGR1O4Je6O7JSN7T1NlyQmLw1c8hD83jdLpOXUljs9PwOMUx02PxkcaY32
         yObLHbTLwKU73zRFGRdRpcPN0d1/IqiQf1w6M6vwtJKoWvR4PbSCccQN1FXZoHH59Zes
         slWUdQAFu61g1iEKvi8X9pAJyEibcq45Am0qQ6uuxtHxW79TJrp/yXxdVgJ7glUM1NjW
         BR4dRez2ecgUhVgHnY/mmgW8cTwKMT6ijFz+NhmQSIIS/eV1aj9Uhtzck4S+koWEP0fS
         0rb0Mq0ktun/9ThXiEcy5Shjc3mXzv9z2sANKqYN53GtAcz7HvylEq9TMHX6LRK1uFVB
         0o4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=rczZl/wCVdo7FmlR2co0XQiSxZuvWTrdlPGq56BFJHQ=;
        b=R5BBHMoqE0KDWoextsplHOWq39BTL4JfkozdhFTdWEmzaEVJVFhCAveSDWw6VZIaFB
         uU8Zev8L3gIYcZh8+iXqm4tafIOCWB2GyQjRl014HFx0KsN+tKlP9wR3NaXdlXETdBKR
         /4neV4Mlp4eLWa5eT+kOn23zlZtxR1O14H2Yhq2tR3Arwpptbm3/2Zu50ZDukwekRwfD
         obGjRb2dV2vWxc6blGj7PR4umZApT/7M4j0XPux0H48pMYXd+5u8N/zBIPYTQagezAJf
         96MwMsHuRfQ41mkd3Sj2oPbvPy3TdRoTIK5gTOhaY3NoHXZrv7ErbiKCTCmC1pEv/S74
         3F7g==
X-Gm-Message-State: AOAM532rIo6E3yfvjQrq4fE6YFgdAWa0X6hIBOqO9VyndRaixiq7JbHG
	ivKOjvuZgoENpZ7byCrOfsLqR8yyfQLzFg==
X-Google-Smtp-Source: ABdhPJx6SaryhgkGmYg8Z8+YuQbRWGQgNE8peZVwWZ5WLpObcNnFThMTT1VbgfgYKNTwmbN2XCd5rA==
X-Received: by 2002:a37:a008:: with SMTP id j8mr14774933qke.201.1618872861787;
        Mon, 19 Apr 2021 15:54:21 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id d62sm10879255qkg.55.2021.04.19.15.54.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Apr 2021 15:54:21 -0700 (PDT)
Message-ID: <607E0A1C.5050608@gmail.com>
Date: Mon, 19 Apr 2021 18:54:20 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
References: <8BD61B25-5BDD-4864-8C30-B1C133F513F2@gmail.com> <C7A28B54-D688-46B6-ACB1-A5739D949AFE@gmail.com> <CALNMZ8WiRaZbvALNifxMPBpPPYuZ1-eFRHZ0A-8E=A2swFYgsQ@mail.gmail.com> <607E0593.1040807@gmail.com> <CALNMZ8U3m_oj3T67VqZYOV53J3sCb=7=NCat2E0TnMvEB1QEbg@mail.gmail.com>
In-Reply-To: <CALNMZ8U3m_oj3T67VqZYOV53J3sCb=7=NCat2E0TnMvEB1QEbg@mail.gmail.com>
Message-ID-Hash: FQD4PM5BZRIYJDBMHJYGECAPKR3ULVUZ
X-Message-ID-Hash: FQD4PM5BZRIYJDBMHJYGECAPKR3ULVUZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD dual-install issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FQD4PM5BZRIYJDBMHJYGECAPKR3ULVUZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8713985605039254674=="

This is a multi-part message in MIME format.
--===============8713985605039254674==
Content-Type: multipart/alternative;
 boundary="------------060908010203010707030908"

This is a multi-part message in MIME format.
--------------060908010203010707030908
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/19/2021 06:51 PM, Brendan Horsfield wrote:
> OK, I didn't realise that GNU Radio needed the Python UHD module to be 
> installed.  I deliberately excluded the Python API from my UHD driver 
> build in order to try out Christian's custom Python API.
>
> I will remove the custom API today, and install a "stock" UHD driver 
> with the Ettus Python API.  Then I will give the GNU Radio 
> installation another try.
>
> Thanks,
> Brendan.
Gah.  Sorry.  Brain fart.

Carry on.

so you need to replicate what GR does for UHD in 3.8.  In GR3.7:

from gnuradio import uhd
uhd.__file__

And see where it's coming from (I don't off the top of my head know what 
GR 3.8 idiom is).




>
>
> On Tue, Apr 20, 2021 at 8:35 AM Marcus D. Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 04/19/2021 06:21 PM, Brendan Horsfield wrote:
>>     Importing uhd in Python 3:
>>     /usr/local/lib/python3.6/dist-packages/uhd-1.1.0-py3.6-linux-x86_64.egg/uhd.cpython-36m-x86_64-linux-gnu.so
>>     <http://uhd.cpython-36m-x86_64-linux-gnu.so>
>>
>>     (Note that this is an alternative Python UHD module written by
>>     Christian Hahn, which I have been evaluating for the last few days.)
>>
>>     Trying to import uhd in Python 2 (which I never use) returns an
>>     error:
>>
>>     Traceback (most recent call last):
>>       File "<stdin>", line 1, in <module>
>>       File "/usr/local/lib/python2.7/dist-packages/uhd/__init__.py",
>>     line 10, in <module>
>>       File "/usr/local/lib/python2.7/dist-packages/uhd/types.py",
>>     line 10, in <module>
>>         # "__iter__" and "next" attributes instead.
>>     ImportError: cannot import name libpyuhd
>>
>>     Brendan.
>>
>     Given that gr-uhd wants a module called "uhd" to exist, and GR
>     uses gr-uhd, i'm not sure what will happen with the
>       name-space pollution that will result.
>
>


--------------060908010203010707030908
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 04/19/2021 06:51 PM, Brendan
      Horsfield wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CALNMZ8U3m_oj3T67VqZYOV53J3sCb=3D7=3DNCat2E0TnMvEB1QEbg@mail.=
gmail.com"
      type=3D"cite">
      <div dir=3D"ltr">OK, I didn't realise that GNU Radio needed the
        Python UHD module to be installed.=C2=A0 I deliberately excluded =
the
        Python API from my UHD driver build in order to try out
        Christian's custom Python API.
        <div><br>
        </div>
        <div>I will remove the custom API today, and install a "stock"
          UHD driver with the Ettus Python API.=C2=A0 Then I will give th=
e
          GNU Radio installation another try.</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Brendan.</div>
      </div>
    </blockquote>
    Gah.=C2=A0 Sorry.=C2=A0 Brain fart.<br>
    <br>
    Carry on.<br>
    <br>
    so you need to replicate what GR does for UHD in 3.8.=C2=A0 In GR3.7:=
<br>
    <br>
    from gnuradio import uhd<br>
    uhd.__file__<br>
    <br>
    And see where it's coming from (I don't off the top of my head know
    what GR 3.8 idiom is).<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote
cite=3D"mid:CALNMZ8U3m_oj3T67VqZYOV53J3sCb=3D7=3DNCat2E0TnMvEB1QEbg@mail.=
gmail.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 20, 2021 at 8:3=
5
          AM Marcus D. Leech &lt;<a moz-do-not-send=3D"true"
            href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.c=
om</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div>On 04/19/2021 06:21 PM, Brendan Horsfield wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Importing uhd in Python 3:=C2=A0
                /usr/local/lib/python3.6/dist-packages/uhd-1.1.0-py3.6-li=
nux-x86_64.egg/<a
                  moz-do-not-send=3D"true"
                  href=3D"http://uhd.cpython-36m-x86_64-linux-gnu.so"
                  target=3D"_blank">uhd.cpython-36m-x86_64-linux-gnu.so</=
a>
                <div><br>
                </div>
                <div>(Note that this is an alternative Python UHD module
                  written by Christian Hahn, which I have been
                  evaluating for the last few days.)=C2=A0 =C2=A0</div>
                <div><br>
                </div>
                <div>Trying to import uhd in Python 2 (which I never
                  use) returns an error:</div>
                <div><br>
                </div>
                <div>Traceback (most recent call last):<br>
                  =C2=A0 File "&lt;stdin&gt;", line 1, in &lt;module&gt;<=
br>
                  =C2=A0 File
                  "/usr/local/lib/python2.7/dist-packages/uhd/__init__.py=
",
                  line 10, in &lt;module&gt;<br>
                  =C2=A0 File
                  "/usr/local/lib/python2.7/dist-packages/uhd/types.py",
                  line 10, in &lt;module&gt;<br>
                  =C2=A0 =C2=A0 # "__iter__" and "next" attributes instea=
d.<br>
                  ImportError: cannot import name libpyuhd<br>
                </div>
                <div><br>
                </div>
                <div>Brendan.</div>
                <br>
              </div>
            </blockquote>
            Given that gr-uhd wants a module called "uhd" to exist, and
            GR uses gr-uhd, i'm not sure what will happen with the<br>
            =C2=A0 name-space pollution that will result.<br>
            <br>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------060908010203010707030908--

--===============8713985605039254674==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8713985605039254674==--
