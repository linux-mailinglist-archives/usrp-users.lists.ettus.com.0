Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 158B242478F
	for <lists+usrp-users@lfdr.de>; Wed,  6 Oct 2021 21:55:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EFA24384963
	for <lists+usrp-users@lfdr.de>; Wed,  6 Oct 2021 15:55:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZI0JWrzu";
	dkim-atps=neutral
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id EEB9438480C
	for <usrp-users@lists.ettus.com>; Wed,  6 Oct 2021 15:54:37 -0400 (EDT)
Received: by mail-qt1-f176.google.com with SMTP id l13so3916369qtv.3
        for <usrp-users@lists.ettus.com>; Wed, 06 Oct 2021 12:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=opPo46xKKUqSVj98G4XcsWzPrzkXa0IexNa3SFbpPJI=;
        b=ZI0JWrzuR/weufVdzFK4BCv8OrtaForKSWr/HDLd2dGC0NpAz6nXBjLj+jcY3ykaIo
         zp3Fct6y48htlb2xbzKD4X+6tHsQFf+/uDGCI3/3VeNLKnHVtNq+G+mEBlpTDYhchNT0
         nA16+CHVNdVqjFRZSUHpzIbElWVjwWKdLy1SVV7n3+wVTl6dJgrU7+cKproqhG1zP/2g
         mDSSle9FqPw4c1Pwkbb1Qi+skWU7Zgfq/TAzyPDQmJS9pZwaHaDMrdKjP7RlVm1liP3l
         GFg+YU6N7Fm0zMJY9TB/p/ITPWnVpVEFPaH4bsFjmsp9FEj9OWRMOsdxQAYQMpr4mPhf
         0Wlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=opPo46xKKUqSVj98G4XcsWzPrzkXa0IexNa3SFbpPJI=;
        b=VWr42YYsSkNPMqKK//L1bMxIccmUtyFqI0+iR5AsthBUdVh9ZPQVZ62xAiXHDfYMI0
         b7O3cKb82SM7h/TNJac2X4gKwT14tD6H+RfnL3KvIt98DYwug3z8c2EskE0/8rFakQOC
         o8h2QqZzyZvtD4uERDmOxFip9e24YmFGqIxxCSxJm0/jNliJ8eHnj7ScQq6fwqFSLUSw
         SHsqi11I4FD8nFgUOGA+ze3skxtGisfEa8JRFq6U/bxSa4QzuLZaf7KqWRe3u7fbGPw5
         El0I/zacAvXTb9/ucwmZZu4fB85oEmf2dJW+3nUwScH0RfMD466WnO320VL0cZQSp5w6
         ZnZg==
X-Gm-Message-State: AOAM5303mKojo0OpAYWLMqUqzxiYnxq/9Z25Fg3bkdO9D9qXaNAX+qhN
	X8uKq3ATH9sFGBmS+/RJ8nSCADMwjGU=
X-Google-Smtp-Source: ABdhPJzLa5mcFMLQVk9ged3/VOspma4K2tW0f7552xP5uwtZSbUOJEFfCk6ebZUTjJvV4YZhoZiMmg==
X-Received: by 2002:a05:622a:20d:: with SMTP id b13mr72727qtx.331.1633550077192;
        Wed, 06 Oct 2021 12:54:37 -0700 (PDT)
Received: from [192.168.2.252] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id c6sm14652504qtx.72.2021.10.06.12.54.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Oct 2021 12:54:36 -0700 (PDT)
To: Tellrell White <t_whit_87@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <1607813094.1558445.1633542971951.ref@mail.yahoo.com>
 <1607813094.1558445.1633542971951@mail.yahoo.com>
 <fed2144e-5aa6-7e6b-33dd-3cf677d2fe5c@gmail.com>
 <1086779613.13333.1633549973441@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <139ec7d4-dd2a-78ca-8f13-27c03a7f6f5f@gmail.com>
Date: Wed, 6 Oct 2021 15:54:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <1086779613.13333.1633549973441@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: 52AJBNH3EQ5DRTHS5GVXQXYQTGKXPL4N
X-Message-ID-Hash: 52AJBNH3EQ5DRTHS5GVXQXYQTGKXPL4N
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I2C communication on the USRP N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/52AJBNH3EQ5DRTHS5GVXQXYQTGKXPL4N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8551858045573697036=="

This is a multi-part message in MIME format.
--===============8551858045573697036==
Content-Type: multipart/alternative;
 boundary="------------C751EF2FF1E001B62185AE22"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C751EF2FF1E001B62185AE22
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2021-10-06 3:52 p.m., Tellrell White wrote:
> Thanks for the clarification.
>
> I tried disabling and stopping MPM in order to release the I2C device 
> that I want to read from. However, i'm still getting the same error 
> that I stated above("device or resource is busy"). Is there any way of 
> disabling or stopping MPM ?
>
> On Wednesday, October 6, 2021, 02:50:06 PM EDT, Marcus D. Leech 
> <patchvonbraun@gmail.com> wrote:
>
>
> On 2021-10-06 1:56 p.m., Tellrell White via USRP-users wrote:
> Currently, I have an app that I've cross-compiled for the N310 and I'm 
> trying to read data from the I/O Expander(TCA6408a) on the 
> daughterboard, however, I'm getting an error stating that the "device 
> or resource is busy" which leads me to believe that there is a driver 
> already using the device. Does anyone have any insight on this?? Also, 
> is there any information on using I2C for the n3xx devices?
>
>
> Pretty sure that MPM (part of the UHD environment) "owns" the I2C and 
> SPI interfaces.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com 
> <mailto:usrp-users@lists.ettus.com>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com 
> <mailto:usrp-users-leave@lists.ettus.com>
Given that MPM is *required* to allow UHD to operate and for you to do 
SDRy things, I'm not sure that's the right approach.

You might look at the code of MPM and see if there's a way to squeeze 
the functionality you want from doing I2C things into the way MPM does 
things.



--------------C751EF2FF1E001B62185AE22
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2021-10-06 3:52 p.m., Tellrell White
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:1086779613.13333.1633549973441@mail.yahoo.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div class="ydp2f1a90e8yahoo-style-wrap"
        style="font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir="ltr" data-setdir="false">Thanks for the clarification.
          <br>
        </div>
        <div dir="ltr" data-setdir="false"><br>
        </div>
        <div dir="ltr" data-setdir="false">I tried disabling and
          stopping MPM in order to release the I2C device that I want to
          read from. However, i'm still getting the same error that I
          stated above("device or resource is busy"). Is there any way
          of disabling or stopping MPM ?<br>
        </div>
        <div><br>
        </div>
      </div>
      <div id="yahoo_quoted_4091168429" class="yahoo_quoted">
        <div style="font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Wednesday, October 6, 2021, 02:50:06 PM EDT, Marcus
            D. Leech <a class="moz-txt-link-rfc2396E" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id="yiv1453901263">
              <div class="yiv1453901263yqt7676288349"
                id="yiv1453901263yqt14983">
                <div>
                  <div class="yiv1453901263moz-cite-prefix">On
                    2021-10-06 1:56 p.m., Tellrell White via USRP-users
                    wrote:<br clear="none">
                  </div>
                  <blockquote type="cite"> </blockquote>
                </div>
                <div>
                  <div class="yiv1453901263yahoo-style-wrap"
                    style="font-family:Helvetica Neue, Helvetica, Arial,
                    sans-serif;font-size:13px;">
                    <div dir="ltr">Currently, I have an app that I've
                      cross-compiled for the N310 and I'm trying to read
                      data from the I/O Expander(TCA6408a) on the
                      daughterboard, however, I'm getting an error
                      stating that the "device or resource is busy"
                      which leads me to believe that there is a driver
                      already using the device. Does anyone have any
                      insight on this?? Also, is there any information
                      on using I2C for the n3xx devices? <br
                        clear="none">
                    </div>
                  </div>
                  <br clear="none">
                  <br clear="none">
                  Pretty sure that MPM (part of the UHD environment)
                  "owns" the I2C and SPI interfaces.<br clear="none">
                  <br clear="none">
                  <br clear="none">
                  <br clear="none">
                </div>
              </div>
            </div>
            <div class="yqt7676288349" id="yqt52002">_______________________________________________<br
                clear="none">
              USRP-users mailing list -- <a shape="rect"
                ymailto="mailto:usrp-users@lists.ettus.com"
                href="mailto:usrp-users@lists.ettus.com"
                moz-do-not-send="true">usrp-users@lists.ettus.com</a><br
                clear="none">
              To unsubscribe send an email to <a shape="rect"
                ymailto="mailto:usrp-users-leave@lists.ettus.com"
                href="mailto:usrp-users-leave@lists.ettus.com"
                moz-do-not-send="true">usrp-users-leave@lists.ettus.com</a><br
                clear="none">
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Given that MPM is *required* to allow UHD to operate and for you to
    do SDRy things, I'm not sure that's the right approach.<br>
    <br>
    You might look at the code of MPM and see if there's a way to
    squeeze the functionality you want from doing I2C things into the
    way MPM does things.<br>
    <br>
    <br>
  </body>
</html>

--------------C751EF2FF1E001B62185AE22--

--===============8551858045573697036==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8551858045573697036==--
