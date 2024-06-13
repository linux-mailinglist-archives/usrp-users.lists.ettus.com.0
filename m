Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC5D90751A
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jun 2024 16:23:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1CE11385344
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jun 2024 10:23:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718288596; bh=XNqQz1g2eh6c0gxFjddFQILDX0RkMePvgKme6Q0ykeo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=CQh15Qd5uQSjaCAPm9CNWCHivkK+qoEhFAd9i0hZq/TEZ0QVMNuZeh+0vLKEt1JEG
	 KiCWdd50yazHvphcTcaKMPO3/XndBM65Y2FWoc65h8YDntYxZITffwUKTJwYJPzn+t
	 Ei1myW2QvdziJkVVkUgh33lRPaO7I/2wQW18BBnWPhfC0f9s5fMg4L5yGzPlV33K78
	 LeoAd/2a0hs3yMQiyWDEZ/m4cIiP0JUSO4ZdXmuLX/kAP6F/xhZdNiA+KMnZEajbbA
	 ug9EUcJzi/uqKGGqmc6UA2K9SfydE3XN9bluG6YS/+pOAsQ5PL0QO81rGgmxR5+des
	 NAbY0xxjUfh9Q==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 7F3A238514B
	for <usrp-users@lists.ettus.com>; Thu, 13 Jun 2024 10:23:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Q0qFM3Hg";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-797dcb558ebso63987985a.2
        for <usrp-users@lists.ettus.com>; Thu, 13 Jun 2024 07:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718288582; x=1718893382; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/ayUhiRyLEJg7mjWEcOpaiPnsFMnFeEByeKH5KMiy8M=;
        b=Q0qFM3HgqdMiFUXh+jkbuVQ3QA/kWgKGesI28GdI8rPqZd7XtMprJLSiOJ/I+WpIWK
         IpVdtCy//GnhfJ+98e3oG+iqjOjxc+fgl+2N9+E9mau9g8qbyzgQTLNxbbXRLQB1n2Dg
         ieXUiG+LnZkB7QGfSFDLahVrXJCNWAkbCnYjs31ObjrTBibBY6GoDJlwS1YoeXSG0U4Y
         8Gvomaiuojgl/1yYYYXlcQ9q96Ms2rngPw/iJJbYfj6PzoX4fkCjcqWsOeF8kclpARji
         ZF5+KuW/4T7tQrzPJGtvDggdXA+lid2lJnaNHZKGP1/q8I6I5b8WD81Z34rNuv8YIyeh
         y0Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718288582; x=1718893382;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/ayUhiRyLEJg7mjWEcOpaiPnsFMnFeEByeKH5KMiy8M=;
        b=NbnnbEGbPSMLv3ETBPv5wPFO7vfqTJ3PjTBhRtXiu1eoxvFFsiCRFm21wUUH/DEvXC
         /0Jqir3nbgvkBTF/zP2sdrgr0HLvDrBfOwUpvATTPD7zVNuCGcKQjet1523fgg7m/Z13
         Zwhr9TkTJKjUh2Xspisv8uFcxhk1B1wIFQi2GqzgiMhTmHsS9jzHV6JUFt5SqSWweec+
         ZdTyOPgkc15/u0wnZ3kIQsIhXUx5cSBE9LR779fv0hD5mkDXdlAGm0Tv8SnGTiAB2npx
         wPTcV9vRHh5McukIMdbTQWsZR4Bs4vAdpZrNge702Y5NiurKAuMY+lrgY7ny5piovSak
         qPeQ==
X-Gm-Message-State: AOJu0YzfXhdd8Zseg/eR3wc0n0h4DMtO/9PdCDH7tamzxRzzp+z3NNJl
	yZDGWK/BU7p0c/mceTZyYwx6DBDocVyfI2dQkroDXms4MkK7aFC4IApTbA==
X-Google-Smtp-Source: AGHT+IFxsk00H3dE2SU5ZAj5LMt+YtGn7lhENVR/76JczM+45V8h5H4lzgMg58kfCL2tUshnZ2ikig==
X-Received: by 2002:a05:620a:2707:b0:795:9eb8:31e with SMTP id af79cd13be357-797f6083222mr582985485a.45.1718288582130;
        Thu, 13 Jun 2024 07:23:02 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-798caafd87dsm15328585a.119.2024.06.13.07.23.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jun 2024 07:23:01 -0700 (PDT)
Message-ID: <4d6afc01-37e3-437c-895c-9b8e07010b20@gmail.com>
Date: Thu, 13 Jun 2024 10:22:50 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAFPzw1=hsoXJe7hH_0C5OweSZJGf-Ht3VZGuzqT_wqdh1cUVpg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFPzw1=hsoXJe7hH_0C5OweSZJGf-Ht3VZGuzqT_wqdh1cUVpg@mail.gmail.com>
Message-ID-Hash: TITBNCBKUTE4EKU4F4WDWGRJCV4NIBCZ
X-Message-ID-Hash: TITBNCBKUTE4EKU4F4WDWGRJCV4NIBCZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: IOError: x300 fw poke32 persist with large adquisition times
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TITBNCBKUTE4EKU4F4WDWGRJCV4NIBCZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7587156101588100090=="

This is a multi-part message in MIME format.
--===============7587156101588100090==
Content-Type: multipart/alternative;
 boundary="------------IFk0t0ciCAmik4REromlhD6r"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------IFk0t0ciCAmik4REromlhD6r
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 13/06/2024 10:14, Anabel Almodovar wrote:
> Hi,
>
> I am working with 2 USRP X310 equipped with TwinRx. They are connected=20
> to a PC with Ubuntu 22.04 and UHD 4.1 via dual 10Gb port.
>
> I am using the rx_sample_to_file.cpp example from UHD 4.5 version for=20
> 8 channel acquisition in continuous mode. I do acquisitions of=C2=A0 5'=
 of=20
> data=C2=A0 continuously with a sample rate of 25MHz.=C2=A0 At the begin=
ning it=20
> works correctly, but after a while (between 40'-50') it starts to=20
> fail. First it gives overflows and then it gives the following error:
>
> *[*/*ERROR] [X300] 192.168.40.2 <http://192.168.40.2>: x300 fw=20
> communication failure #2
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
> [ERROR] [X300] 192.168.60.2 <http://192.168.60.2>: x300 fw=20
> communication failure #2
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
> [ERROR] [X300] 192.168.40.2 <http://192.168.40.2>: x300 fw=20
> communication failure #3
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
> [ERROR] [X300] 192.168.60.2 <http://192.168.60.2>: x300 fw=20
> communication failure #3
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
> [ERROR] [UHD] An unexpected exception was caught in a task loop.The=20
> task loop will now exit, things may not work.EnvironmentError:=20
> IOError: 192.168.40.2 <http://192.168.40.2>: x300 fw communication=20
> failure #3
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
> [ERROR] [UHD] An unexpected exception was caught in a task loop.The=20
> task loop will now exit, things may not work.EnvironmentError:=20
> IOError: 192.168.60.2 <http://192.168.60.2>: x300 fw communication=20
> failure #3
> EnvironmentError: IOError: x300 fw poke32 - reply timed out*
> /
>
>
> Once this happens it is impossible to recover the system, it starts to=20
> give the same error after 30''-40''. I have tried to let the USRP and=20
> the PC rest for a while, even re-flashing the FPGA, but the error=20
> persists. If I let the system rest for days the error disappears, but=20
> I observe the same behavior again after those first 40'-50' minutes.
>
> I don't know why this happens, nor how to solve it. Any indication?
>
> Thank you in advance.
>
> Regards,
> Anabel
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Is this happening on BOTH USRPs?

Have you followed this guide here for performance tuning?

https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks


I have an X310 with two TwinRX, on Ubuntu 22.04, UHD 4.1, and I can=20
stream literally for *days* without any issue
 =C2=A0 at all.

How are you connected to your X310s?=C2=A0=C2=A0 If you only run one at a=
 time, do=20
you see this failure?


--------------IFk0t0ciCAmik4REromlhD6r
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 13/06/2024 10:14, Anabel Almodovar
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFPzw1=3DhsoXJe7hH_0C5OweSZJGf-Ht3VZGuzqT_wqdh1cUVpg@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi,
        <div><br>
        </div>
        <div>I am working with 2 USRP X310 equipped with TwinRx. They
          are connected to a PC with Ubuntu 22.04 and UHD 4.1 via dual
          10Gb port.</div>
        <div><br>
          I am using the rx_sample_to_file.cpp example from UHD 4.5
          version for 8 channel acquisition in continuous mode. I do=C2=A0
          acquisitions of=C2=A0 5' of data=C2=A0 continuously with a samp=
le rate
          of 25MHz.=C2=A0 At the beginning it works correctly, but after =
a
          while (between 40'-50') it starts to fail. First it gives
          overflows and then it gives the following error:</div>
        <div><br>
        </div>
        <div><b>[</b><i><b>ERROR] [X300] <a href=3D"http://192.168.40.2"
                moz-do-not-send=3D"true">192.168.40.2</a>: x300 fw
              communication failure #2<br>
              EnvironmentError: IOError: x300 fw poke32 - reply timed
              out<br>
              [ERROR] [X300] <a href=3D"http://192.168.60.2"
                moz-do-not-send=3D"true">192.168.60.2</a>: x300 fw
              communication failure #2<br>
              EnvironmentError: IOError: x300 fw poke32 - reply timed
              out<br>
              [ERROR] [X300] <a href=3D"http://192.168.40.2"
                moz-do-not-send=3D"true">192.168.40.2</a>: x300 fw
              communication failure #3<br>
              EnvironmentError: IOError: x300 fw poke32 - reply timed
              out<br>
              [ERROR] [X300] <a href=3D"http://192.168.60.2"
                moz-do-not-send=3D"true">192.168.60.2</a>: x300 fw
              communication failure #3<br>
              EnvironmentError: IOError: x300 fw poke32 - reply timed
              out<br>
              [ERROR] [UHD] An unexpected exception was caught in a task
              loop.The task loop will now exit, things may not
              work.EnvironmentError: IOError: <a
                href=3D"http://192.168.40.2" moz-do-not-send=3D"true">192=
.168.40.2</a>:
              x300 fw communication failure #3<br>
              EnvironmentError: IOError: x300 fw poke32 - reply timed
              out<br>
              [ERROR] [UHD] An unexpected exception was caught in a task
              loop.The task loop will now exit, things may not
              work.EnvironmentError: IOError: <a
                href=3D"http://192.168.60.2" moz-do-not-send=3D"true">192=
.168.60.2</a>:
              x300 fw communication failure #3<br>
              EnvironmentError: IOError: x300 fw poke32 - reply timed
              out</b><br>
          </i><br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div>Once this happens it is impossible to recover the system,
          it starts to give the same error after 30''-40''. I have tried
          to let the USRP and the PC rest for a while, even re-flashing
          the FPGA, but the error persists. If I let the system rest for
          days the error disappears, but I observe the same behavior
          again after those first 40'-50' minutes.</div>
        <div><br>
          I don't know why this happens, nor how to solve it. Any
          indication?<br>
          <br>
          Thank you in advance.<br>
        </div>
        <div><br>
        </div>
        <div>Regards,</div>
        <div>Anabel</div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    Is this happening on BOTH USRPs?<br>
    <br>
    Have you followed this guide here for performance tuning?<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_=
Host_Performance_Tuning_Tips_and_Tricks">https://kb.ettus.com/USRP_Host_P=
erformance_Tuning_Tips_and_Tricks</a><br>
    <br>
    <br>
    I have an X310 with two TwinRX, on Ubuntu 22.04, UHD 4.1, and I can
    stream literally for *days* without any issue<br>
    =C2=A0 at all.<br>
    <br>
    How are you connected to your X310s?=C2=A0=C2=A0 If you only run one =
at a
    time, do you see this failure?<br>
    <br>
    <br>
  </body>
</html>

--------------IFk0t0ciCAmik4REromlhD6r--

--===============7587156101588100090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7587156101588100090==--
