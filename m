Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 733664029A3
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 15:22:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 86F5338428C
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 09:22:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JpaEC+/N";
	dkim-atps=neutral
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
	by mm2.emwd.com (Postfix) with ESMTPS id D7768384151
	for <usrp-users@lists.ettus.com>; Tue,  7 Sep 2021 09:21:19 -0400 (EDT)
Received: by mail-io1-f50.google.com with SMTP id j18so12709671ioj.8
        for <usrp-users@lists.ettus.com>; Tue, 07 Sep 2021 06:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=nNqO25TSZBG/Z4Asg4TlVP8ec671h8zo0U+lOftO+aw=;
        b=JpaEC+/NywLznuHiHqMhSGoYY+JICrND0/4cCJe/o1rkXSrgAw0a9OnN+q4RDA4HT4
         UzYaZNKYqcLo7+Jq5bkl7GdMkwG2hLRf7D0ortrMvHDPHLzV43fJXKYPpVJkkdg7E3w9
         pCRjCrl3o2hxZxR2fhjdOcKzSIvhV7LWGfBxNPEJMu+cNb33Tjm+zXnXpJud9lk6UwqI
         skqEEeorFgYOULsGYoKNDmMSOsXH1cLazAVVRA46hHxgnZU/z28ajRqTNWZkQkvbU3CN
         Q96Ot6JEfOINOl0/lFiYZRJ8iKzz8Fxd48Fhb+NHbYi+gvO2OhB/O76LusCk1A+uGo9O
         +VMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=nNqO25TSZBG/Z4Asg4TlVP8ec671h8zo0U+lOftO+aw=;
        b=WfYyFe7VWhyTwEfBC6VrkuNNBDEfSuoLhplD5rJhTo86JpjwCJ98d3K4Gm8nGjIf9K
         GQxSARBlnrL4krUaHlxCI5jbs1GLdiVrFtQ5tPpMHm0zfdOPLcPySe3+CVTH5RK1pRn9
         EigidZH8AVl4Yuv2BfZg2Fm4wfxGcUMTNmxOCQ3Pq+nSX15nyxk00tQb12+laxdbVeg9
         NmXqTNoYxdBcB0G7nG+rvf9o0NDwCqJfBl0iyzBDYWwPtPUFivkn3AXAA9bj8vJiEQyg
         EG04n+wFSH/1stygJzZ9pKxRYRBnVPadkvlGpFMNvqiPCa9/jMTcGKBhMOXmVWoDZ4uw
         G+vA==
X-Gm-Message-State: AOAM5339A3GS17nkFLTVrumADj+sGiymlXX9O/acBv3+lwtTsyn4SmDx
	pt7SExvb+hHXGJVdPpQjy1NRd89Gc5/1kw==
X-Google-Smtp-Source: ABdhPJzUt3m034OLHzVrTZ/V7kCqBB2fQUOA/7hK/i/DsvVh4YRWfWGYWrZu3WSTifaCP1ZenCmlww==
X-Received: by 2002:a5d:9256:: with SMTP id e22mr3661081iol.152.1631020878939;
        Tue, 07 Sep 2021 06:21:18 -0700 (PDT)
Received: from [192.168.2.239] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id n11sm6803309ioo.44.2021.09.07.06.21.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Sep 2021 06:21:18 -0700 (PDT)
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <78915145.1401871.1630855703615.ref@mail.yahoo.com>
 <78915145.1401871.1630855703615@mail.yahoo.com>
 <606552990.1786539.1630963952986@mail.yahoo.com>
 <147565774.1577833.1630969165270@mail.yahoo.com>
 <7d2c5ec1-812b-4f04-6718-d3a0029017ad@gmail.com>
 <1441256320.1871638.1631016765370@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <0027ab90-0cde-a374-fd3c-f7888a68b707@gmail.com>
Date: Tue, 7 Sep 2021 09:21:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <1441256320.1871638.1631016765370@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: XHNPVGYPVFYHMNAZZLORWMVOXZZRHJTN
X-Message-ID-Hash: XHNPVGYPVFYHMNAZZLORWMVOXZZRHJTN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Set Network Buffer in N321 USRP Permanently
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XHNPVGYPVFYHMNAZZLORWMVOXZZRHJTN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0070594550513858958=="

This is a multi-part message in MIME format.
--===============0070594550513858958==
Content-Type: multipart/alternative;
 boundary="------------ACCBDE699F84FF01D86740EE"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ACCBDE699F84FF01D86740EE
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-07 8:12 a.m., zhou wrote:
> Hi Marcus,
>
> Thanks for your comments on my other USRP questions. I have another=20
> issue with N321 USRP.
> Following the tuning tips in=20
> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=20
> <https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks>=C2=A0=
,=20
> I have set wmem_max, wmem_default, rmem_max, rmem_default to 33554432=20
> in host (Ubuntu):
>     sudo sysctl -w net.core.wmem_max=3D33554432
>     sudo sysctl -w net.core.rmem_max=3D33554432
>     sudo sysctl -w net.core.wmem_default=3D33554432
>     sudo sysctl -w net.core.rmem_default=3D33554432
> I have made the configuration permanent by adding these lines in=20
> */etc/sysctl.conf, *such that they won't get lost after host reboot.
>
> I want to do the same in N321 but couldn't because there is no=20
> sysctl.conf in it. I can still configure these parameters from=20
> terminal, but it won't survive a reboot.
> The Linux in N321 is tiny. How can I make the configuration=20
> permanently in it?
>
> Any comment from the community will be appreciated.
>
> Thanks,
> Hongwei
>
>
I don't have an N321 myself, but you will probably find that there's an=20
/etc/sysctl.conf.d directory, and you can create a sysctl.conf file there=
.

But unless you're using the N321 like it's an ordinary host, talking to=20
an *external* USRP, you shouldn't need to adjust these parameters.

When you're streaming samples into/out-of the N321, they don't go=20
through the CPU portion of the Zynq at all, so these parameters aren't=20
relevant.



--------------ACCBDE699F84FF01D86740EE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-07 8:12 a.m., zhou wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1441256320.1871638.1631016765370@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp38909655yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div><span style=3D"color: rgb(38, 40, 42);">Hi Marcus,</span><br=
>
        </div>
      </div>
      <div id=3D"ydp703015c2yahoo_quoted_1673422088"
        class=3D"ydp703015c2yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div>
            <div id=3D"ydp703015c2yiv5669889621">
              <div
                class=3D"ydp703015c2yiv5669889621ydp16591bb1yahoo-style-w=
rap"
                style=3D"font-family:Helvetica Neue, Helvetica, Arial,
                sans-serif;font-size:13px;" dir=3D"ltr"
                data-setdir=3D"false">
                <div dir=3D"ltr"><br clear=3D"none">
                </div>
                <div dir=3D"ltr" data-setdir=3D"false">Thanks for your
                  comments on my other USRP questions. I have another
                  issue with N321 USRP.</div>
                <div dir=3D"ltr" data-setdir=3D"false">Following the tuni=
ng
                  tips in=C2=A0<a
                    href=3D"https://kb.ettus.com/USRP_Host_Performance_Tu=
ning_Tips_and_Tricks"
                    rel=3D"nofollow" target=3D"_blank"
                    moz-do-not-send=3D"true">https://kb.ettus.com/USRP_Ho=
st_Performance_Tuning_Tips_and_Tricks</a>=C2=A0,
                  I have set wmem_max,=C2=A0<span><span style=3D"color: r=
gb(38,
                      40, 42); font-family: Helvetica Neue, Helvetica,
                      Arial, sans-serif;">wmem_default, r<span><span
                          style=3D"color: rgb(38, 40, 42); font-family:
                          Helvetica Neue, Helvetica, Arial, sans-serif;">=
mem_max,
                          r</span><span style=3D"color: rgb(38, 40, 42);
                          font-family: Helvetica Neue, Helvetica, Arial,
                          sans-serif;">mem_default to 33554432 in host
                          (Ubuntu):</span></span></span></span><br>
                </div>
                <div dir=3D"ltr" data-setdir=3D"false">
                  <div>
                    <pre style=3D"font-family: monospace, Courier; color:=
 rgb(0, 0, 0); background-color: rgb(249, 249, 249); border: 1px solid rg=
b(221, 221, 221); padding: 1em; white-space: pre-wrap; line-height: 1.3em=
; font-size: 14px;">   sudo sysctl -w net.core.wmem_max=3D33554432
   sudo sysctl -w net.core.rmem_max=3D33554432
   sudo sysctl -w net.core.wmem_default=3D33554432
   sudo sysctl -w net.core.rmem_default=3D33554432</pre>
                  </div>
                </div>
                <div dir=3D"ltr" data-setdir=3D"false">I have made the
                  configuration permanent by adding these lines in=C2=A0<=
span><span
                      style=3D"font-size: 12pt; font-family: Liberation
                      Serif, serif;"><b>/etc/sysctl.conf, </b>such that
                      they won't get lost after host reboot.=C2=A0</span>=
</span></div>
                <div dir=3D"ltr" data-setdir=3D"false"><span><span
                      style=3D"font-size: 12pt; font-family: Liberation
                      Serif, serif;"><br>
                    </span></span></div>
                <div dir=3D"ltr" data-setdir=3D"false"><span><span
                      style=3D"font-size: 12pt; font-family: Liberation
                      Serif, serif;">I want to do the same in N321 but
                      couldn't because there is no sysctl.conf in it. I
                      can still configure these parameters from
                      terminal, but it won't survive a reboot.</span></sp=
an></div>
                <div dir=3D"ltr" data-setdir=3D"false"><span><span
                      style=3D"font-size: 12pt; font-family: Liberation
                      Serif, serif;">The Linux in N321 is tiny. How can
                      I make the configuration permanently in it?</span><=
/span></div>
                <div><br>
                </div>
                <div dir=3D"ltr" data-setdir=3D"false">Any comment from t=
he
                  community will be appreciated.</div>
                <div dir=3D"ltr" data-setdir=3D"false"><br>
                </div>
                <div dir=3D"ltr" data-setdir=3D"false">Thanks,</div>
                <div dir=3D"ltr" data-setdir=3D"false">Hongwei</div>
              </div>
              <div class=3D"ydp703015c2yiv5669889621yqt4485559050"
                id=3D"ydp703015c2yiv5669889621yqtfd46881"><br>
                <br clear=3D"none">
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    I don't have an N321 myself, but you will probably find that there's
    an /etc/sysctl.conf.d directory, and you can create a sysctl.conf
    file there.<br>
    <br>
    But unless you're using the N321 like it's an ordinary host, talking
    to an *external* USRP, you shouldn't need to adjust these
    parameters.<br>
    <br>
    When you're streaming samples into/out-of the N321, they don't go
    through the CPU portion of the Zynq at all, so these parameters
    aren't relevant.<br>
    <br>
    <br>
  </body>
</html>

--------------ACCBDE699F84FF01D86740EE--

--===============0070594550513858958==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0070594550513858958==--
