Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFCC424926
	for <lists+usrp-users@lfdr.de>; Wed,  6 Oct 2021 23:45:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C4B633847E3
	for <lists+usrp-users@lfdr.de>; Wed,  6 Oct 2021 17:45:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IUtRQx4r";
	dkim-atps=neutral
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 7AB9A384580
	for <usrp-users@lists.ettus.com>; Wed,  6 Oct 2021 17:45:09 -0400 (EDT)
Received: by mail-qt1-f172.google.com with SMTP id l13so4248900qtv.3
        for <usrp-users@lists.ettus.com>; Wed, 06 Oct 2021 14:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=5bquwi3OeTDgWlpg3AUKwgZkKFoVpUh91Aqs06KBiVc=;
        b=IUtRQx4rdemeE/EfbrehUSnFs/S5LgUqXN40gY4U994dWJfcWXja02HnAoj39cHQL0
         eETfnUGF+GPhadIEwwEEm7ADABhZ3lYKW2pMrHZbagSSYjyrbg6l8bfHnb3xvHS+wk06
         isTM3JPU8qrHybLY56Ol+eY6vrCPxMUPYNAeuD8oavk7ZXDLm156hX7auvghvbl0cRV1
         XlBwONmmrUY0vaUBUZwRdgsLkIq8gBhfRKVqlkm+DNN017GcDCl3lbJlJmJxgikkkOqT
         AaZWz+meeF7BDvQFA8L3mvQ8bmEqxSamLJ31GewRu68GL6/QNX8POXOzui128uv0Tlqw
         75QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=5bquwi3OeTDgWlpg3AUKwgZkKFoVpUh91Aqs06KBiVc=;
        b=oXv5hiWMrLyrTextyUdhWjql2Tvt+YuXp9W1ogLyGVjO03r5Jd3RQ0KE8+kXQBkqUP
         pICyoyXfjeuJN44hbN0wYcL1tcl3GgDCW+j6/s4efetOvAXMRU9FOmAyJN8xb76NxUFf
         skXte6tkZHObkSD/1mAj8EHZGwWjyd8fk6z3r3h3+ZEyk9XFMcLQTHYzxo+jkeXyXR/V
         dWr3op1546ofYQVUCOq3ldBnaer7WxJtJy6qburdsx00oTGTPmVQJaVdFMbU2yf1F8W+
         sRP+YVXFHH3V1+QReY90xm5yRTTEbD800ZSvIgfn9iBvi3EuQ6N/sw+u0eceZXlZEDOp
         h4fA==
X-Gm-Message-State: AOAM531MN8JLoygOPGN8s7H/k4esy9Q45X768IPhazxoZ6ZxJStRN+P/
	IpXv478WScIwH1y6Xw/lFmsq2+QlkjI=
X-Google-Smtp-Source: ABdhPJzgJhoGTxp4N5drkIuvGGzgiwSt1Uh5YgHH9WEjpkbX4x8bIB6d4TixMIc0SwV76vGD+mB+yg==
X-Received: by 2002:ac8:404b:: with SMTP id j11mr737600qtl.140.1633556708785;
        Wed, 06 Oct 2021 14:45:08 -0700 (PDT)
Received: from [192.168.2.252] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id m24sm11911954qki.40.2021.10.06.14.45.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Oct 2021 14:45:08 -0700 (PDT)
To: Tellrell White <t_whit_87@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <1607813094.1558445.1633542971951.ref@mail.yahoo.com>
 <1607813094.1558445.1633542971951@mail.yahoo.com>
 <fed2144e-5aa6-7e6b-33dd-3cf677d2fe5c@gmail.com>
 <1086779613.13333.1633549973441@mail.yahoo.com>
 <139ec7d4-dd2a-78ca-8f13-27c03a7f6f5f@gmail.com>
 <762418874.31908.1633555033438@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <8de7fad2-0f26-dd49-425a-e7517509f910@gmail.com>
Date: Wed, 6 Oct 2021 17:45:07 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <762418874.31908.1633555033438@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: NIZ4QB3USL6CMOJLZI3MXZ4CLVC5CRIE
X-Message-ID-Hash: NIZ4QB3USL6CMOJLZI3MXZ4CLVC5CRIE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I2C communication on the USRP N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NIZ4QB3USL6CMOJLZI3MXZ4CLVC5CRIE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3730991676751368833=="

This is a multi-part message in MIME format.
--===============3730991676751368833==
Content-Type: multipart/alternative;
 boundary="------------11128CF956D0B0FF1A47519F"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------11128CF956D0B0FF1A47519F
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
>
After killing MPM, you can use "ps" to check to see if it has come back,=20
and if it hasn't and "something else" still owns the I2C devices, you=20
can use
 =C2=A0 "lsof" to see which processes have which devices open.=C2=A0 I th=
ink the=20
i2C devices will manifest in the /dev filesystem.=C2=A0 For example, on m=
y=20
*laptop*, there's:

rw------- 1 root root 89, 0 Sep 28 18:14 /dev/i2c-0
crw------- 1 root root 89, 1 Sep 28 18:14 /dev/i2c-1
crw------- 1 root root 89, 2 Sep 28 18:14 /dev/i2c-2
crw------- 1 root root 89, 3 Sep 28 18:14 /dev/i2c-3
crw------- 1 root root 89, 4 Sep 28 18:14 /dev/i2c-4
crw------- 1 root root 89, 5 Sep 28 18:14 /dev/i2c-5


>
>
>


--------------11128CF956D0B0FF1A47519F
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
      <div id=3D"yahoo_quoted_4426225589" class=3D"yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;"><br>
        </div>
      </div>
    </blockquote>
    After killing MPM, you can use "ps" to check to see if it has come
    back, and if it hasn't and "something else" still owns the I2C
    devices, you can use<br>
    =C2=A0 "lsof" to see which processes have which devices open.=C2=A0 I=
 think
    the i2C devices will manifest in the /dev filesystem.=C2=A0 For examp=
le,
    on my *laptop*, there's:<br>
    <br>
    rw------- 1 root root 89, 0 Sep 28 18:14 /dev/i2c-0<br>
    crw------- 1 root root 89, 1 Sep 28 18:14 /dev/i2c-1<br>
    crw------- 1 root root 89, 2 Sep 28 18:14 /dev/i2c-2<br>
    crw------- 1 root root 89, 3 Sep 28 18:14 /dev/i2c-3<br>
    crw------- 1 root root 89, 4 Sep 28 18:14 /dev/i2c-4<br>
    crw------- 1 root root 89, 5 Sep 28 18:14 /dev/i2c-5<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:762418874.31908.1633555033438@mail.yahoo.com">
      <div id=3D"yahoo_quoted_4426225589" class=3D"yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div>
            <div id=3D"yiv5351896031">
              <div>
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

--------------11128CF956D0B0FF1A47519F--

--===============3730991676751368833==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3730991676751368833==--
