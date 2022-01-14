Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC0348F279
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 23:33:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A4594385EB8
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 17:33:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QdN21CSG";
	dkim-atps=neutral
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 87D17385C81
	for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 17:32:55 -0500 (EST)
Received: by mail-qt1-f174.google.com with SMTP id l17so12245635qtk.7
        for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 14:32:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=WE/lNHoY3FI0A4i+EVdCMZRXcuKGdkLW34n27KhMX3Y=;
        b=QdN21CSG/dnw6auZepyErbbjQmKvt0Z6jyyC+KZSTCL7rJNV0uJfBA1cp7RXNFNGKK
         I2T5YphKZUijbvZy3gj5FGsNfhdgy8mNlMVCJ+zd7/+NIBjM+EFam+JdjFzluS4pA7f5
         NbEVQaB4sLMLhG9w58b4pZQy4Jvmb+MtmSjSmmaDvNjckESyTxCe6tvSYswXJcdkGCNZ
         MhS3ylSQxJVrWuP2ey70e70wLDNhCMvuLZDs1SjTToMEZP4wvnsETJ2xZ5ZZNFwbbYeV
         4gVwZYy4Uqy+Jmypq8nnk6I6sDB1Yk1bC4HlsfZ0IZ5hsfLF4nO7x6Ddu1b7m6RZmsu2
         KGSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=WE/lNHoY3FI0A4i+EVdCMZRXcuKGdkLW34n27KhMX3Y=;
        b=XdDojtpqEtPYwhaeWKU8Aa6Y3mYsQ7BL09NetMBit3iyVyOMUyLzmb8ywgpJvfn8lK
         Y/1NTML0KbfgGTfaW/d0Q+e05v5xwe6KKlE4/HIIeg3lqElEyZB+Dyu31dPqRcZgoYNi
         X3CnEJi//ImgvyI5hazkYzzFgNR0GU+/YlBko4CvrXDUGn66DrHEPA1WcPZtffen6n1r
         fxoMP6dpiTua2Y/JQ0aqa7gNLTgMHO3ehuAJTF3afLnrXD5pKndZ9wXYsdnuwFxpUD0n
         S+X+2nb7on987iL08Alfw4Wb1u7P4V3qGQA1gbyYIgdvLrJ+k42j7tsVzziy8fZoDf8W
         JaJg==
X-Gm-Message-State: AOAM531S0ePtmpZVf7TK2rVLNKQH2IJP4X1RKxtlq7WBWd5ml2a1AY3F
	4UVSfFqm8ypjBgolqC2tNlY=
X-Google-Smtp-Source: ABdhPJxBU6PYkGH0JvVvsWtMrgP48zr6RdlZIpYHzT9c9HdYe7rweWc3+h/TZKpV0P3CVtunoY2sHg==
X-Received: by 2002:ac8:5c0b:: with SMTP id i11mr9493907qti.287.1642199575061;
        Fri, 14 Jan 2022 14:32:55 -0800 (PST)
Received: from [192.168.2.225] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id q7sm4422479qkl.72.2022.01.14.14.32.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jan 2022 14:32:54 -0800 (PST)
Message-ID: <71a72a67-db18-fc69-dd35-d404ad49a2dc@gmail.com>
Date: Fri, 14 Jan 2022 17:32:53 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>
References: <55a9f781-6dfd-d2e5-0311-396854c054b3@gmail.com>
 <44F81C71-D632-4048-8B62-7190B8688B05@gmail.com>
 <006fb235-9773-127c-e6b2-fa6c885ca1b6@gmail.com>
 <CACwKM9LvFd4s8vP6fpMMemHEfwfE0f+D4txNX3zjrGYvpiu9eA@mail.gmail.com>
 <778d7cf6-1bf3-28ed-f641-080b32b937ea@gmail.com>
 <CAB__hTTS8mium09MKQL4ZGWOie5VBSOWYUHXA3Fbts308_ABrg@mail.gmail.com>
 <CAB__hTQit3vA+TbnvdGmWwEuGckUmOVmHhS6eXneeg-oeVsEfg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTQit3vA+TbnvdGmWwEuGckUmOVmHhS6eXneeg-oeVsEfg@mail.gmail.com>
Message-ID-Hash: SLSTOPWAWUYR7EWRC6NY2YNNPR4YEMCH
X-Message-ID-Hash: SLSTOPWAWUYR7EWRC6NY2YNNPR4YEMCH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Paul Atreides <maud.dib1984@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SLSTOPWAWUYR7EWRC6NY2YNNPR4YEMCH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1180302971739352327=="

This is a multi-part message in MIME format.
--===============1180302971739352327==
Content-Type: multipart/alternative;
 boundary="------------e0vBpwC9Okv4vx0qn7NayZJm"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------e0vBpwC9Okv4vx0qn7NayZJm
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-14 17:30, Rob Kossler wrote:
> These thare the UHD commands. I don't know how these translate to=20
> gnuradio.
>
> % set both LO sources to use external
> set_tx_lo_source(=E2=80=9Cexternal=E2=80=9D, =E2=80=9Clo1=E2=80=9D, 0)
> set_tx_lo_source(=E2=80=9Cexternal=E2=80=9D, =E2=80=9Clo1=E2=80=9D, 1)
>
> % export the internal LO to the 1:4 splitter
> set_tx_lo_export_enabled(true, =E2=80=9Clo1=E2=80=9D, 0)
>
> % enable the 1:4 splitter output port
> get_device()->get_tree()->access<bool>("mboards/0/dboards/A/tx_frontend=
s/0/los/lo1/lo_distribution/LO_OUT_0/export").set(true)
>
I don't think the current GR code has support for controlling the=20
splitter, so a "code snippet" would likely be required.


>         To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>

--------------e0vBpwC9Okv4vx0qn7NayZJm
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-14 17:30, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQit3vA+TbnvdGmWwEuGckUmOVmHhS6eXneeg-oeVsEfg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div><font face=3D"monospace">These thare the UHD commands. I
            don't know how these translate to gnuradio.</font></div>
        <div><font face=3D"monospace"><br>
          </font></div>
        <div><font face=3D"monospace">% set both LO sources to use
            external</font></div>
        <font face=3D"monospace">set_tx_lo_source(=E2=80=9Cexternal=E2=80=
=9D, =E2=80=9Clo1=E2=80=9D, 0)<br>
        </font>
        <div><font face=3D"monospace">set_tx_lo_source(=E2=80=9Cexternal=E2=
=80=9D, =E2=80=9Clo1=E2=80=9D,
            1)<br>
          </font></div>
        <div><font face=3D"monospace"><br>
          </font></div>
        <div><font face=3D"monospace">% export the internal LO to the 1:4
            splitter</font></div>
        <div><font face=3D"monospace">set_tx_lo_export_enabled(true,
            =E2=80=9Clo1=E2=80=9D, 0)<br>
          </font></div>
        <div><font face=3D"monospace"><br>
          </font></div>
        <div><font face=3D"monospace">% enable the 1:4 splitter output
            port</font></div>
        <div><font face=3D"monospace">get_device()-&gt;get_tree()-&gt;acc=
ess&lt;bool&gt;("mboards/0/dboards/A/tx_frontends/0/los/lo1/lo_distributi=
on/LO_OUT_0/export").set(true)</font><br>
        </div>
      </div>
      <br>
    </blockquote>
    I don't think the current GR code has support for controlling the
    splitter, so a "code snippet" would likely be required.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQit3vA+TbnvdGmWwEuGckUmOVmHhS6eXneeg-oeVsEfg@mail.gmai=
l.com">
      <div class=3D"gmail_quote">
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div class=3D"gmail_quote">
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a><br>
            </blockquote>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>
--------------e0vBpwC9Okv4vx0qn7NayZJm--

--===============1180302971739352327==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1180302971739352327==--
