Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1BB42491F
	for <lists+usrp-users@lfdr.de>; Wed,  6 Oct 2021 23:41:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D6D9384836
	for <lists+usrp-users@lfdr.de>; Wed,  6 Oct 2021 17:41:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iOk0FOe7";
	dkim-atps=neutral
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 312E838475E
	for <usrp-users@lists.ettus.com>; Wed,  6 Oct 2021 17:40:57 -0400 (EDT)
Received: by mail-qt1-f173.google.com with SMTP id a13so4195164qtw.10
        for <usrp-users@lists.ettus.com>; Wed, 06 Oct 2021 14:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=e3/zKlxIcynwyyqRu4pflbuwyRiPhGxx8KVJ8fyEd9U=;
        b=iOk0FOe7ouudgE7GNLYvmJjeOVQd76eGCNoEWpoDY4FspT+XPiXPLDOPr5lJ9joL76
         g21B5EmoZqWaNQ/cZTWysDYJA7/ViV7goNjxQYD97HI8cTgf8f1s8wWUJAe2Dt2Xc1sj
         JkPFgypL/BFOvzi5C1T0LjfuVQgonjncGOUxrltqj4SR+l6S25QZ2R/jMWzR39yYfMra
         N/cgjEIpYW3SRdM6FW/ZmTwexQ9xxEgQdGRNz3f1VfNDltySrVtkBgRUj77Ert4mQxWe
         mgvmqF4JrhP9g9Xx8TXeBL/2TeH4zk0JTsP2yIpt2p8Vyb+4l2l6TAE3nV7OUgs7kec+
         mvFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=e3/zKlxIcynwyyqRu4pflbuwyRiPhGxx8KVJ8fyEd9U=;
        b=dZXVxJDOv311w66YMVhS1MX7b0ujftNlHOv5FOpnpnbr8ag/aYoUhBBT/+qrOFQFdX
         mi+VsTYKqoWAkgyL/qvSwntp7UO/PegiraWULX8qg4fcdzmPHMdRPrDb6osJk3/PyS4W
         GP8j9veDhO+Nag3VzJ3SD8RxSdeh6kkZ9DLKqk0Wv27AhckHNJjd6bywcnl15J1nr/SS
         aK+wg+IwAEtlha+9SBcRuuWXTKzzGusELj0JeQG2v9ejVap81Xamz5vkjqhfBySjfqiE
         1Nz+slgJ43XLTk++/vPEyVeHyyvdvKHtqp+EQHEy8CKHZgxYx3cCBoIhFg0+suZQ1Jb7
         DAHQ==
X-Gm-Message-State: AOAM533Iwa1mFpmlDEWze0SZVZ8/AoXx0rWGvTgH0ljYWpbzGktG73S+
	td3BPDS/PQy4lwR17I0vlRmWK5wrws8=
X-Google-Smtp-Source: ABdhPJzeI8BljRaO1kw8nY1zc3Rb0NiJ+xCgMfvcZitXHC+rV964sqtLMvLaYYYdhO1Sc9p7J6xlag==
X-Received: by 2002:ac8:1ca:: with SMTP id b10mr627187qtg.327.1633556456435;
        Wed, 06 Oct 2021 14:40:56 -0700 (PDT)
Received: from [192.168.2.252] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id 205sm12443497qkf.19.2021.10.06.14.40.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Oct 2021 14:40:56 -0700 (PDT)
To: Tellrell White <t_whit_87@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <1607813094.1558445.1633542971951.ref@mail.yahoo.com>
 <1607813094.1558445.1633542971951@mail.yahoo.com>
 <fed2144e-5aa6-7e6b-33dd-3cf677d2fe5c@gmail.com>
 <1086779613.13333.1633549973441@mail.yahoo.com>
 <139ec7d4-dd2a-78ca-8f13-27c03a7f6f5f@gmail.com>
 <762418874.31908.1633555033438@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <3beea547-6b36-4b2f-bb1c-d2e179cf2c94@gmail.com>
Date: Wed, 6 Oct 2021 17:40:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <762418874.31908.1633555033438@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: KOMXABYACHBS2W4XPDDNZPUB2PVFVVAG
X-Message-ID-Hash: KOMXABYACHBS2W4XPDDNZPUB2PVFVVAG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I2C communication on the USRP N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KOMXABYACHBS2W4XPDDNZPUB2PVFVVAG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3848788746444931950=="

This is a multi-part message in MIME format.
--===============3848788746444931950==
Content-Type: multipart/alternative;
 boundary="------------EBF202DE9A3372B32470122A"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------EBF202DE9A3372B32470122A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-06 5:17 p.m., Tellrell White wrote:
>
> So, just to clarify, if its "required" is there no way of disabling it=20
> or removing??
>
> The project I'm working on is based on using the Open CPI framework,=20
> which is basically an opensource framework for developing and=20
> executing component based apps on embedded platforms. With that being=20
> said, my task isn't tightly bound to using UHD, therefore, I would=20
> like to disable or remove MPM for a custom application.
So, you're using the N310 as a really expensive single-board computer,=20
or you're doing all your own FPGA+device programming, bypassing UHD=20
entirely?=C2=A0 That seems
 =C2=A0 like a tough hill to climb, but it's your hill, not mine.

It's likely that MPM is being restarted by systemd when you kill it (my=20
recollection is that the N310 system image uses systemd, much like any ot=
her
 =C2=A0 Linux system these days).

It really is *absolutely* necessary if you're using UHD for its intended=20
purpose.


> On Wednesday, October 6, 2021, 03:54:37 PM EDT, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>
> On 2021-10-06 3:52 p.m., Tellrell White wrote:
> Thanks for the clarification.
>
> I tried disabling and stopping MPM in order to release the I2C device=20
> that I want to read from. However, i'm still getting the same error=20
> that I stated above("device or resource is busy"). Is there any way of=20
> disabling or stopping MPM ?
>
> On Wednesday, October 6, 2021, 02:50:06 PM EDT, Marcus D. Leech=20
> <patchvonbraun@gmail.com> <mailto:patchvonbraun@gmail.com> wrote:
>
>
> On 2021-10-06 1:56 p.m., Tellrell White via USRP-users wrote:
> Currently, I have an app that I've cross-compiled for the N310 and I'm=20
> trying to read data from the I/O Expander(TCA6408a) on the=20
> daughterboard, however, I'm getting an error stating that the "device=20
> or resource is busy" which leads me to believe that there is a driver=20
> already using the device. Does anyone have any insight on this?? Also,=20
> is there any information on using I2C for the n3xx devices?
>
>
> Pretty sure that MPM (part of the UHD environment) "owns" the I2C and=20
> SPI interfaces.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com=20
> <mailto:usrp-users@lists.ettus.com>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com=20
> <mailto:usrp-users-leave@lists.ettus.com>
>
> Given that MPM is *required* to allow UHD to operate and for you to do=20
> SDRy things, I'm not sure that's the right approach.
>
> You might look at the code of MPM and see if there's a way to squeeze=20
> the functionality you want from doing I2C things into the way MPM does=20
> things.
>
>
>


--------------EBF202DE9A3372B32470122A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-06 5:17 p.m., Tellrell Whit=
e
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:762418874.31908.1633555033438@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp8964bfacyahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">So, just to clarify, if it=
s
          "required" is there no way of disabling it or removing?? <br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"> The project I'm working o=
n
          is based on using the Open CPI framework, which is basically
          an opensource framework for developing and executing component
          based apps on embedded platforms. With that being said, my
          task isn't tightly bound to using UHD, therefore, I would like
          to disable or remove MPM for a custom application.=C2=A0 <br>
        </div>
      </div>
    </blockquote>
    So, you're using the N310 as a really expensive single-board
    computer, or you're doing all your own FPGA+device programming,
    bypassing UHD entirely?=C2=A0 That seems<br>
    =C2=A0 like a tough hill to climb, but it's your hill, not mine.<br>
    <br>
    It's likely that MPM is being restarted by systemd when you kill it
    (my recollection is that the N310 system image uses systemd, much
    like any other<br>
    =C2=A0 Linux system these days).<br>
    <br>
    It really is *absolutely* necessary if you're using UHD for its
    intended purpose. <br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:762418874.31908.1633555033438@mail.yahoo.com">
      <div class=3D"ydp8964bfacyahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;"> </div>
      <div id=3D"yahoo_quoted_4426225589" class=3D"yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Wednesday, October 6, 2021, 03:54:37 PM EDT, Marcus
            D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:pa=
tchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"yiv5351896031">
              <div>
                <div class=3D"yiv5351896031yqt8096331298"
                  id=3D"yiv5351896031yqtfd01979">
                  <div class=3D"yiv5351896031moz-cite-prefix">On
                    2021-10-06 3:52 p.m., Tellrell White wrote:<br
                      clear=3D"none">
                  </div>
                  <blockquote type=3D"cite"> </blockquote>
                </div>
              </div>
              <div>
                <div class=3D"yiv5351896031yqt8096331298"
                  id=3D"yiv5351896031yqtfd85791">
                  <div class=3D"yiv5351896031ydp2f1a90e8yahoo-style-wrap"
                    style=3D"font-family:Helvetica Neue, Helvetica, Arial=
,
                    sans-serif;font-size:13px;">
                    <div dir=3D"ltr">Thanks for the clarification. <br
                        clear=3D"none">
                    </div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">I tried disabling and stopping MPM i=
n
                      order to release the I2C device that I want to
                      read from. However, i'm still getting the same
                      error that I stated above("device or resource is
                      busy"). Is there any way of disabling or stopping
                      MPM ?<br clear=3D"none">
                    </div>
                    <div><br clear=3D"none">
                    </div>
                  </div>
                </div>
                <div class=3D"yiv5351896031yahoo_quoted"
                  id=3D"yiv5351896031yahoo_quoted_4091168429">
                  <div class=3D"yiv5351896031yqt8096331298"
                    id=3D"yiv5351896031yqtfd59403"> </div>
                  <div style=3D"font-family:'Helvetica Neue', Helvetica,
                    Arial, sans-serif;font-size:13px;color:#26282a;">
                    <div class=3D"yiv5351896031yqt8096331298"
                      id=3D"yiv5351896031yqtfd13191">
                      <div> On Wednesday, October 6, 2021, 02:50:06 PM
                        EDT, Marcus D. Leech <a rel=3D"nofollow noopener
                          noreferrer" shape=3D"rect"
                          class=3D"yiv5351896031moz-txt-link-rfc2396E"
                          ymailto=3D"mailto:patchvonbraun@gmail.com"
                          target=3D"_blank"
                          href=3D"mailto:patchvonbraun@gmail.com"
                          moz-do-not-send=3D"true">&lt;patchvonbraun@gmai=
l.com&gt;</a>
                        wrote: </div>
                      <div><br clear=3D"none">
                      </div>
                      <div><br clear=3D"none">
                      </div>
                    </div>
                    <div>
                      <div class=3D"yiv5351896031yqt8096331298"
                        id=3D"yiv5351896031yqtfd44269">
                        <div id=3D"yiv5351896031">
                          <div class=3D"yiv5351896031yqt7676288349"
                            id=3D"yiv5351896031yqt14983">
                            <div>
                              <div class=3D"yiv5351896031moz-cite-prefix"=
>On
                                2021-10-06 1:56 p.m., Tellrell White via
                                USRP-users wrote:<br clear=3D"none">
                              </div>
                              <blockquote type=3D"cite"> </blockquote>
                            </div>
                            <div>
                              <div class=3D"yiv5351896031yahoo-style-wrap=
"
                                style=3D"font-family:Helvetica Neue,
                                Helvetica, Arial,
                                sans-serif;font-size:13px;">
                                <div dir=3D"ltr">Currently, I have an app
                                  that I've cross-compiled for the N310
                                  and I'm trying to read data from the
                                  I/O Expander(TCA6408a) on the
                                  daughterboard, however, I'm getting an
                                  error stating that the "device or
                                  resource is busy" which leads me to
                                  believe that there is a driver already
                                  using the device. Does anyone have any
                                  insight on this?? Also, is there any
                                  information on using I2C for the n3xx
                                  devices? <br clear=3D"none">
                                </div>
                              </div>
                              <br clear=3D"none">
                              <br clear=3D"none">
                              Pretty sure that MPM (part of the UHD
                              environment) "owns" the I2C and SPI
                              interfaces.<br clear=3D"none">
                              <br clear=3D"none">
                              <br clear=3D"none">
                              <br clear=3D"none">
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class=3D"yiv5351896031yqt7676288349"
                        id=3D"yiv5351896031yqt52002">
                        <div class=3D"yiv5351896031yqt8096331298"
                          id=3D"yiv5351896031yqtfd65671">________________=
_______________________________<br
                            clear=3D"none">
                          USRP-users mailing list -- <a rel=3D"nofollow
                            noopener noreferrer" shape=3D"rect"
                            ymailto=3D"mailto:usrp-users@lists.ettus.com"
                            target=3D"_blank"
                            href=3D"mailto:usrp-users@lists.ettus.com"
                            moz-do-not-send=3D"true">usrp-users@lists.ett=
us.com</a><br
                            clear=3D"none">
                          To unsubscribe send an email to <a
                            rel=3D"nofollow noopener noreferrer"
                            shape=3D"rect"
                            ymailto=3D"mailto:usrp-users-leave@lists.ettu=
s.com"
                            target=3D"_blank"
                            href=3D"mailto:usrp-users-leave@lists.ettus.c=
om"
                            moz-do-not-send=3D"true">usrp-users-leave@lis=
ts.ettus.com</a></div>
                        <br clear=3D"none">
                      </div>
                    </div>
                  </div>
                </div>
                Given that MPM is *required* to allow UHD to operate and
                for you to do SDRy things, I'm not sure that's the right
                approach.<br clear=3D"none">
                <br clear=3D"none">
                You might look at the code of MPM and see if there's a
                way to squeeze the functionality you want from doing I2C
                things into the way MPM does things.
                <div class=3D"yiv5351896031yqt8096331298"
                  id=3D"yiv5351896031yqtfd56378"><br clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------EBF202DE9A3372B32470122A--

--===============3848788746444931950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3848788746444931950==--
