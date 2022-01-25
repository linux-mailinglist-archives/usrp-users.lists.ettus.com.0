Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F21049B860
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jan 2022 17:15:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 45FF4384A09
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jan 2022 11:15:16 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="p+s06Aga";
	dkim-atps=neutral
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 9F67E384BB9
	for <usrp-users@lists.ettus.com>; Tue, 25 Jan 2022 11:14:19 -0500 (EST)
Received: by mail-qt1-f179.google.com with SMTP id h4so3516963qtm.2
        for <usrp-users@lists.ettus.com>; Tue, 25 Jan 2022 08:14:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=w/zcrX/3Jw8JbxG3h/F9fGO0aYDXlnPRTa7Iw83i3cU=;
        b=p+s06AgaP9e/+EcNcLThoWUYIeGSATKVlWT+IJSIR8RZpH4Nra+veYs8OOy06H0nci
         Sc6Gc1MIh8CcSNz5rRgVvmsaIb+OVL02Rxw6kXrRrQwGMrtNi+khHbYkO2jNqrz42n6E
         TjyDFJmHVXpjpwxOoSUh/29C9M1Rx4gvYYgHvh70Cm3TAgj7zQ1SMEd5XUxQh0Oam1zS
         E7qCXMk5VnjMsxWJ9ypkZfM80C8TeG9yURnXexG8HNOwnFLGhciv/5ziBqQi0Uw84y65
         lywdjBrAGQhE1a6sHFmsqrIuIh1MoNiQ3MG4BZKLn4v8oyf+6gimUsr4rpcCDqzkVIFa
         e6uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=w/zcrX/3Jw8JbxG3h/F9fGO0aYDXlnPRTa7Iw83i3cU=;
        b=ZnOdPjcdZoSJsZ6OlgqABt6QtZrCIs8zXDuqL0sg0glBaAJa8XgCOSq8fd+hlQl4V0
         +NvF4dUbTUziPmIRd3P1tAOzWTlJ1dhG1huILD1CpOhU1HbUSpycJHLPLDcJwnZ0EHDI
         /LrMyOvQKLbsIU2NaXy/d/7ed8nzuLWDYkrf6x3W9WsIy/i8O9TGRnYs6X6lN1mFJMl0
         dB0HjuA+N25gza9qjzYj+nIGbZBqRRic53QCKo50yQepqZNlwQc8j5F+XDvYTTXjk9cN
         u8URX24nWRAWhtu6uNmUOOEmMZV5ObxEZSc4ER+DbphlyMt9clf5rO9FiQHKAROXNrDM
         4TeQ==
X-Gm-Message-State: AOAM530G+39LTnBTe3yWWwXpgPhQ4Qg2mpkCYJJqPzblV82+0QDO/vNT
	5dMcrmHTaqx5XVIDneSccAxn2WietJl7Zg==
X-Google-Smtp-Source: ABdhPJxaSSHD6M2JRLvhM/acCTbj7T6NCrWlGB/9FkcbE30XB5pF7UcSAjsjQJb5Kp1TWoGz/h7Mcg==
X-Received: by 2002:ac8:5dcb:: with SMTP id e11mr4989974qtx.390.1643127259006;
        Tue, 25 Jan 2022 08:14:19 -0800 (PST)
Received: from [192.168.2.221] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id s11sm9165581qtw.2.2022.01.25.08.14.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jan 2022 08:14:18 -0800 (PST)
Message-ID: <b2bb9131-5ea3-e152-49a1-8c400abdcbf3@gmail.com>
Date: Tue, 25 Jan 2022 11:14:17 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: LoyCurtis Smith <ljsmith9@ncsu.edu>
References: <CAKhiL6XkCaqTqbx3S3AbCUh1Cdkg2JQ-hQwp367K2DkogscniQ@mail.gmail.com>
 <b190375f-9565-ddc8-5289-6af588630efe@gmail.com>
 <CAKhiL6V55sfozy+b--6b21GJvERyUfVjPW26KWnuhdh39ow9_w@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAKhiL6V55sfozy+b--6b21GJvERyUfVjPW26KWnuhdh39ow9_w@mail.gmail.com>
Message-ID-Hash: VNSDOOPMCZUW7UYVNPLUZI3VWWQBJM4P
X-Message-ID-Hash: VNSDOOPMCZUW7UYVNPLUZI3VWWQBJM4P
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Synchronization of two USRP x310s
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VNSDOOPMCZUW7UYVNPLUZI3VWWQBJM4P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7757208712062875302=="

This is a multi-part message in MIME format.
--===============7757208712062875302==
Content-Type: multipart/alternative;
 boundary="------------u6Aeqqtpuf8BvVXXnrOEvRbB"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------u6Aeqqtpuf8BvVXXnrOEvRbB
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-25 11:12, LoyCurtis Smith wrote:
> Would their mechanism included UHD based code?
Since UHD is the way ANY application talks to the radios, yes.=C2=A0 But =
I=20
have no idea if OAI, as one of dozens and dozens of different appilcation=
s
 =C2=A0 "out there" has any way to support that functionality.

>
> Also, I assume that the only other option would be to purchase an=20
> Octoclock or some other clock distribution module?
Yes, you'd need some kind of shared 10MHz reference clock and 1PPS=20
source, AND your application needs to be able to configure the radios to
 =C2=A0 use it.


>
> On Tue, Jan 25, 2022 at 10:40 Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 2022-01-24 20:53, LoyCurtis Smith via USRP-users wrote:
>>     My system setup is as follows:
>>
>>       * 2 x USRP x310 with CBX-120 daughterboard
>>       * 2 x Ubuntu 18.04 workstation
>>       * 2 x Taoglas 45.8113 antenna
>>       * 2 x=C2=A0 Internal Reference Clock (Master Clock set at 184.32=
 MHz)
>>       * 2 x Internal Time source
>>       * 2 x Connected via 1 Gig-E interfaces
>>       * 2 x Using UHD 4.1
>>
>>     The devices have been in two setups: stacked and a few inches apar=
t.
>>
>>     I am attempting to deploy a 5G network using the openairinterface
>>     (OAI) software system. Both devices synchronize initially, then
>>     they fail. With openairinterface, I am using frequency offset
>>     compensation at the UE. Its a useful parameter when running over
>>     the air and/or without an external clock/time source
>>     (https://gitlab.eurecom.fr/oai/openairinterface5g/blob/develop/doc=
/RUNMODEM.md)
>>
>>     Is there a way to synchronize the reference clock/timing of both
>>     USRP x310s over the air? In the future, I will be attempting to
>>     connect a third USRP x310. My setup will include one base station
>>     and two user devices.
>>
>>     V/r
>>
>>     LoyCurtis Smith
>>
>>
>     Unless OAI provides some mechanism for that, the answer would be
>     no.=C2=A0 You need a shared reference clock.
>
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> --=20
>
> V/r
>
> LoyCurtis Smith

--------------u6Aeqqtpuf8BvVXXnrOEvRbB
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-25 11:12, LoyCurtis Smith
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAKhiL6V55sfozy+b--6b21GJvERyUfVjPW26KWnuhdh39ow9_w@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">Would their mechanism included UHD based code? <b=
r>
      </div>
    </blockquote>
    Since UHD is the way ANY application talks to the radios, yes.=C2=A0 =
But
    I have no idea if OAI, as one of dozens and dozens of different
    appilcations<br>
    =C2=A0 "out there" has any way to support that functionality.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAKhiL6V55sfozy+b--6b21GJvERyUfVjPW26KWnuhdh39ow9_w@mail.gmai=
l.com">
      <div dir=3D"auto"><br>
      </div>
      <div dir=3D"auto">Also, I assume that the only other option would b=
e
        to purchase an Octoclock or some other clock distribution
        module?</div>
    </blockquote>
    Yes, you'd need some kind of shared 10MHz reference clock and 1PPS
    source, AND your application needs to be able to configure the
    radios to<br>
    =C2=A0 use it.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAKhiL6V55sfozy+b--6b21GJvERyUfVjPW26KWnuhdh39ow9_w@mail.gmai=
l.com">
      <div><br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 25, 2022 at
            10:40 Marcus D. Leech &lt;<a
              href=3D"mailto:patchvonbraun@gmail.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">pa=
tchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;bord=
er-left-color:rgb(204,204,204)">
            <div>
              <div>On 2022-01-24 20:53, LoyCurtis Smith via USRP-users
                wrote:<br>
              </div>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">
                  <div>My system setup is as follows:=C2=A0</div>
                  <div>
                    <ul>
                      <li>2 x USRP x310 with CBX-120 daughterboard</li>
                      <li>2 x Ubuntu 18.04 workstation</li>
                      <li>2 x Taoglas 45.8113 antenna</li>
                      <li>2 x=C2=A0 Internal Reference Clock (Master Cloc=
k
                        set at 184.32 MHz)</li>
                      <li>2 x Internal Time source=C2=A0</li>
                      <li>2 x Connected via 1 Gig-E interfaces</li>
                      <li>2 x Using UHD 4.1</li>
                    </ul>
                    <div>The devices have been in two setups: stacked
                      and a few inches apart.=C2=A0</div>
                    <div><br>
                    </div>
                    <div>I am attempting to deploy a 5G network using
                      the openairinterface (OAI) software system. Both
                      devices synchronize initially, then they fail.
                      With openairinterface, I am using frequency offset
                      compensation at the UE. Its a useful parameter
                      when running over the air and/or without an
                      external clock/time source (<a
href=3D"https://gitlab.eurecom.fr/oai/openairinterface5g/blob/develop/doc=
/RUNMODEM.md"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">https://gitlab.eu=
recom.fr/oai/openairinterface5g/blob/develop/doc/RUNMODEM.md</a>)</div>
                    <div><br>
                    </div>
                    <div>Is there a way to synchronize the reference
                      clock/timing of both USRP x310s over the air? In
                      the future, I will be attempting to connect a
                      third USRP x310. My setup will include one base
                      station and two user devices.=C2=A0</div>
                    <div>
                      <div dir=3D"ltr" data-smartmail=3D"gmail_signature"=
>
                        <div dir=3D"ltr">
                          <div>
                            <div dir=3D"ltr"><font
                                style=3D"color:rgb(7,55,99)"><br>
                              </font></div>
                            <div dir=3D"ltr"><font
                                style=3D"color:rgb(7,55,99)">V/r</font>
                              <div><span
                                  style=3D"background-color:rgb(255,255,2=
55)"><font
                                    style=3D"color:rgb(7,55,99)"><br>
                                  </font></span></div>
                              <div><span
                                  style=3D"background-color:rgb(255,255,2=
55)"><font
                                    style=3D"color:rgb(7,55,99)">LoyCurti=
s
                                    Smith</font></span></div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <br>
                <br>
              </blockquote>
            </div>
            <div> Unless OAI provides some mechanism for that, the
              answer would be no.=C2=A0 You need a shared reference clock=
.<br>
              <br>
              <br>
              <br>
            </div>
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
      </div>
      -- <br>
      <div dir=3D"ltr" class=3D"gmail_signature"
        data-smartmail=3D"gmail_signature">
        <div dir=3D"ltr">
          <div>
            <div dir=3D"ltr"><font color=3D"#073763"><br>
              </font></div>
            <div dir=3D"ltr"><font color=3D"#073763">V/r</font>
              <div><span style=3D"background-color:rgb(255,255,255)"><fon=
t
                    color=3D"#073763"><br>
                  </font></span></div>
              <div><span style=3D"background-color:rgb(255,255,255)"><fon=
t
                    color=3D"#073763">LoyCurtis Smith</font></span></div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------u6Aeqqtpuf8BvVXXnrOEvRbB--

--===============7757208712062875302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7757208712062875302==--
