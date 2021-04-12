Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6367435CF3F
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 19:09:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9E5B0383FC6
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 13:09:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ApFy5rWC";
	dkim-atps=neutral
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	by mm2.emwd.com (Postfix) with ESMTPS id F1F7E384931
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 13:08:25 -0400 (EDT)
Received: by mail-io1-f43.google.com with SMTP id b10so14190267iot.4
        for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 10:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=T0Eey2iE20VSUhTdmXU4d459riV0aCooq/WpAa58jws=;
        b=ApFy5rWC2v9YdfSYBRIalxRpFaNs836peX+emwJ4mdLzo9CgQCE4SvO9uOvqQ2GWcA
         JCYY0vbqd6KLMaP/gsN73f2aCK+Qtzim/MtI7YWVlny3QuBu40ROEgRySPxh9EccSEt8
         v3AKwmwukbD8tuYfFENyAqsj9TfUl4bBXjxSZHeAsynSQxZ8XZYX/Pb6EDnFXff9V1Kb
         W3Qno2AX9MJNGAVpN/v/uPRfXNPNfx/WIhg5LwKGJOAtt6vYCCeLR0icP93jGvVVKiLA
         DXb+OUsh3k7GmGahbBIM6RQFuM7/1NRleHhpzxIpdqzakd4MCfgt+zEdNPm32ssdtgou
         L0qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=T0Eey2iE20VSUhTdmXU4d459riV0aCooq/WpAa58jws=;
        b=sYj7G2I+G/GRZPFWz2nMg7ixObYFFPLuFY8XbaCyjhVdvxCMLibKG6ZCGH4DQ0XuXj
         bw+qcE03Tbs39zC9H0sj1FpwD4d2c29q5JSasO+k2IDM0HTGToOr2F58xsomPeTdyUWI
         P1Dwy29ZIbtmMjaPGXlyJopXARCRHReFv56l5r9YsJ7xDh7MMhmPeyT3BeLuU5KQAOaY
         ajnwAaJGhRX4WC/qHzNSVN2RLuC/LwLSFROzagiXnncv8WFbPoKrgZySuikCH4q+lShm
         GLxrCzSnB6UxlS3yv35NUJ4gNDOHSX4YZB4rEsZzUKPvkYjFc2xszBtrkEryfZxj+OI+
         11gg==
X-Gm-Message-State: AOAM531iLPPFfPTvzabzyKCuDstLDQIGF9p0GVjBaBWZmuOC79r06/um
	ShuR+lkqOoTewbE6ZQ8ZM02OzA1hKzI=
X-Google-Smtp-Source: ABdhPJwqb6Q43d5D1nmPIofFIApW+xy+lbAR8QpBg/nSHj6aNLAEQlQZXtGbFbLKEBiKjIZBzTdOtw==
X-Received: by 2002:a05:622a:1308:: with SMTP id v8mr4533220qtk.288.1618246839102;
        Mon, 12 Apr 2021 10:00:39 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id m16sm8173672qkm.100.2021.04.12.10.00.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 10:00:38 -0700 (PDT)
Message-ID: <60747CB5.9060709@gmail.com>
Date: Mon, 12 Apr 2021 13:00:37 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CANsNeaqE-mLR7TboX=zdGbF59wiKOc3RdUO93EidTnW=AmWRvQ@mail.gmail.com> <CANsNearZnpjrmq4e0V+_ARobtJHs36EPtN=S6aXtwKee=LS1qg@mail.gmail.com>
In-Reply-To: <CANsNearZnpjrmq4e0V+_ARobtJHs36EPtN=S6aXtwKee=LS1qg@mail.gmail.com>
Message-ID-Hash: JCG3IMIB4TQVVZVQU33XJSBK5QQPRSQD
X-Message-ID-Hash: JCG3IMIB4TQVVZVQU33XJSBK5QQPRSQD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help enabling CAN0 on E310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JCG3IMIB4TQVVZVQU33XJSBK5QQPRSQD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5139620254941268747=="

This is a multi-part message in MIME format.
--===============5139620254941268747==
Content-Type: multipart/alternative;
 boundary="------------090305020405050406010704"

This is a multi-part message in MIME format.
--------------090305020405050406010704
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 04/12/2021 12:48 PM, Rich Gopstein wrote:
> Can anyone offer any suggestions?  I've been digging through TCL files 
> looking for where I could enable the CAN0 controller, but nothing has 
> worked so far.
>
> Thanks.
> Rich
I'll point out that USB-to-CAN adapters aren't that expensive. Might be 
a more-immediately-productive route.
>
>
> On Tue, Apr 6, 2021 at 10:00 AM Rich Gopstein <rich@ourowndomain.com 
> <mailto:rich@ourowndomain.com>> wrote:
>
>     I have an E310 (sg3) that I need to enable the CAN controller on
>     and route the signals out to the GPIO connector.  After that, I'll
>     work on the Linux driver.
>
>     I'm a newbie to Vivado, so I could use some detailed help.  What
>     I've done so far:
>
>       * Built an Ubuntu 18.04 system
>       * Installed Vivado 2018.3.1
>       * Downloaded the EttusResearch/fpga.git repo
>       * Tested "make E310_sg3" both with and without the "GUI=1" setting.
>
>
>     I tried going in to Vivado and enabling the CAN0 controller, but I
>     wasn't able to figure out how to rebuild the design (or route the
>     signals to the GPIO connector)
>
>     Any help would be appreciated.
>
>     Rich
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--------------090305020405050406010704
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 04/12/2021 12:48 PM, Rich Gopstein
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CANsNearZnpjrmq4e0V+_ARobtJHs36EPtN=3DS6aXtwKee=3DLS1qg@mail.=
gmail.com"
      type=3D"cite">
      <div dir=3D"ltr">Can anyone offer any suggestions?=A0 I've been
        digging through TCL files looking for where I could enable the
        CAN0 controller, but nothing has worked so far.
        <div><br>
        </div>
        <div>Thanks.</div>
        <div>Rich</div>
      </div>
    </blockquote>
    I'll point out that USB-to-CAN adapters aren't that expensive.=A0
    Might be a more-immediately-productive route.<br>
    <blockquote
cite=3D"mid:CANsNearZnpjrmq4e0V+_ARobtJHs36EPtN=3DS6aXtwKee=3DLS1qg@mail.=
gmail.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 6, 2021 at 10:0=
0
          AM Rich Gopstein &lt;<a moz-do-not-send=3D"true"
            href=3D"mailto:rich@ourowndomain.com">rich@ourowndomain.com</=
a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">I have an E310 (sg3) that I need to enable the
            CAN controller on and route the signals out to the GPIO
            connector.=A0 After that, I'll work on the Linux driver.
            <div><br>
            </div>
            <div>I'm a newbie to Vivado, so I could use some detailed
              help.=A0 What I've done so far:</div>
            <div>
              <ul>
                <li>Built an Ubuntu 18.04 system</li>
                <li>Installed Vivado 2018.3.1</li>
                <li>Downloaded the=A0EttusResearch/fpga.git repo</li>
                <li>Tested "make E310_sg3" both with and without the
                  "GUI=3D1" setting.</li>
              </ul>
            </div>
            <div><br>
            </div>
            <div>I tried going in to Vivado and enabling the CAN0
              controller, but I wasn't able to figure out how to rebuild
              the design (or route the signals to the GPIO connector)</di=
v>
            <div><br>
            </div>
            <div>Any help would be appreciated.</div>
            <div><br>
            </div>
            <div>Rich</div>
            <div><br>
            </div>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap=3D"">_______________________________________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------090305020405050406010704--

--===============5139620254941268747==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5139620254941268747==--
