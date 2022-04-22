Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D64C450BDFB
	for <lists+usrp-users@lfdr.de>; Fri, 22 Apr 2022 19:07:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE63B38482C
	for <lists+usrp-users@lfdr.de>; Fri, 22 Apr 2022 13:07:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650647268; bh=dBSkI49oFkjIQapMYvPWL5ZLA+63ABmXbETEc2nYIZc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=WrzJAs04bBJHeCzTEIu3XV01Khoh82KdDh6Xgd3v5ED8dvq5Gw9jcrEflI7Kci15V
	 fIa/w+y5wsqN4UD3pv5lSA6Mk20yhhayLZnw3+a2FAZ/6/Av85bTn5aJBhBP3rUaUR
	 G2iaRyLjPTCw9XtYI9w6OI0NzLj5Vj1zOSqw/fHNTzkkp1E6DHPug+K4nzkFU9eaPZ
	 v2LieqVIuzhmoqJ+dGw9Vt4tGFgOW2Xotw/yogQv3ScvgELVj9Y0aq/VvmieE37b13
	 P0+ni9WUjIjzZPkwqg8B8scg87QoGmwyKzO0/jrPX2oF/zHwNhBt5KcMNFD6tA02nd
	 835BQiVJY+o6w==
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 4C145384E02
	for <usrp-users@lists.ettus.com>; Fri, 22 Apr 2022 13:06:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NLst127I";
	dkim-atps=neutral
Received: by mail-qk1-f179.google.com with SMTP id 204so6251769qkg.5
        for <usrp-users@lists.ettus.com>; Fri, 22 Apr 2022 10:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=MxsXNx3EHCNdiW2WRCjN4GKmgiqraeGlfoz6B8/QME0=;
        b=NLst127ILhQ1/f3Um5C2XYK1f5+AdrZ5MOOhJRDFHc/reZk9YCi4chHUxo3VKGGy/Z
         JYZy/oZ0m1cp5XyEwJEsTxpcG+s2RWvqVtDNfPVUDWmKYmgZMRIdl+pW4dElS2R1IAWv
         wePodHNnvUbLcEKOURG5wEmZauIY7ItORnqF4NIQfiee1YE9itXDVbtO4pJR34v+KjLk
         obxUFWr/ZRoLI8sB6H9jtXCpB2qRmYCSzXr/i4cmTIzDOdpVpC9aDhmWvkAPLupjAn2B
         4Tvk4ZURc10UFVu8q+Tye+dLRvtzbNAmAbWy40rqc2hb8wlv2LlchjMCLqceWjNmXhgG
         YWkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=MxsXNx3EHCNdiW2WRCjN4GKmgiqraeGlfoz6B8/QME0=;
        b=XB/2Qp4H1ldje0zAcTlPrVwt9f4NlWnkunLUJI5eGcvgdzLdBTp1/7njdg6pTa3B4s
         s7U8LjuYH3SkHXpsULXme05xEUzh2XZdC+PodV5VYbUyut7THZ2jeibkkJU0oFqtYgNt
         JeVx8iZVdDaaFUHGr3isLdp+3el2/+KPpPYFn73SP6+CcWb9HYj/RU27SBmArtKiBjnf
         3hD4k4oxN8iW+vrzOpz6am671kOvjJP5YrwWAPMzi9k3Um+GdPBgGN1u/FP5OzeswtFy
         UkgHsVp5oUiWrkE529JmUKqdGilSkx00qymXo1ZoODwOwuLs3vD2TOU58N8Cdp21gbtK
         TfHw==
X-Gm-Message-State: AOAM531xlFof/hRMZrOsAD8G8F7HGWeOUymyMR0Srg4HfAcbejMc/kJt
	FV4FR0UmLWA49UhSo0rRIGoZcrtp7cI=
X-Google-Smtp-Source: ABdhPJx1CwnvWVrkktSnpqUfjFt+MoKNx/3/qoCTX04FKj2mZ+78WXzU9Yaia8TkEedGbKzGztW+cQ==
X-Received: by 2002:a05:620a:240e:b0:69f:6ab:4cd9 with SMTP id d14-20020a05620a240e00b0069f06ab4cd9mr3358143qkn.462.1650647198470;
        Fri, 22 Apr 2022 10:06:38 -0700 (PDT)
Received: from [192.168.2.195] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id r83-20020a37a856000000b0069ed4436a49sm1146134qke.87.2022.04.22.10.06.37
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Apr 2022 10:06:37 -0700 (PDT)
Message-ID: <3927e598-5802-99a2-73dd-38dcb0e16de4@gmail.com>
Date: Fri, 22 Apr 2022 13:06:36 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAPT2EegX83McE_TznHb_vPcsgJSw46mBfE9O5mjnnGx8hrt3uw@mail.gmail.com>
 <17c6ff8a-23d3-857d-cd9e-8c7481f5f225@gmail.com>
 <CAL0m=NYwuKBAiyEj_-rdu2ypjsV+vjfrZfw3HQz_upLdd09+cA@mail.gmail.com>
 <CAL0m=NbeN7fBXYHWkbCd60zVZjOWVntDjhzJrpGayb7O1Fwsnw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAL0m=NbeN7fBXYHWkbCd60zVZjOWVntDjhzJrpGayb7O1Fwsnw@mail.gmail.com>
Message-ID-Hash: GWXHO6WKQ5JXG72CDU5HZQACDTEWVLUY
X-Message-ID-Hash: GWXHO6WKQ5JXG72CDU5HZQACDTEWVLUY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 with two BasicRX Daughterboards
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GWXHO6WKQ5JXG72CDU5HZQACDTEWVLUY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7981410831700462188=="

This is a multi-part message in MIME format.
--===============7981410831700462188==
Content-Type: multipart/alternative;
 boundary="------------RL9EDnisjecWC0UT0YgqqQet"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------RL9EDnisjecWC0UT0YgqqQet
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-04-22 12:32, Zeng, Huacheng wrote:
> Hi All,
>
> Can anyone having successful experience with X310=C2=A0+=C2=A0two Basic=
RX=20
> Daughterboards confirm that such a setup works? We can make it work=20
> for the following settings: i) X310=C2=A0+ one BasicRX, ii) X310=C2=A0+=
 two=20
> BasicTX, iii) X310=C2=A0+ two SBX for both TX and RX, iv) two N210=C2=A0=
+ MIMO=20
> cable=C2=A0+ two BasicRX. But we are not able to make it work for X310=C2=
=A0+=20
> two BasicRX. We tried different UHD versions (4.2, 3.15, etc.) and got=20
> no luck.
>
> Any=C2=A0suggestions would=C2=A0be appreciated!
>
> Hua
>
I have a query in to R&D on the status of this.=C2=A0 It was certainly th=
e=20
case that in very-early X310 releases, Basic_XX support didn't work, but=20
that was, I thought,
 =C2=A0 fixed in later releases.=C2=A0 So, I'm trying to get clarificatio=
n from=20
R&D on this.


>
>
> On Tue, Apr 19, 2022 at 10:44 PM Zeng, Huacheng=20
> <huacheng.zeng@gmail.com> wrote:
>
>     Below is a more detailed description of our issue.
>
>     1. We have an X310 with two BasicRX boards installed (no BasicTX).
>     We tried to read the two data streams from X310 on a computer at a
>     sampling rate 5Msps. The computer displays "OOOOOOOOOOOO" overflow
>     constantly. We tried other sampling rates such as 1Msps and
>     10Msps, the observation is the same.
>
>     We found that the LED lights on the X310 panel are abnormal. When
>     X310 works in RX mode, the two LED lights (RF A's RX2 LED and RF
>     B's RX2 LED) should be on, but we observed they were flashing.
>     Also, the LINK LED should be on in RED, but we observed that it
>     was flashing in ORANGE.
>
>     We reloaded the FPGA image, but the problem is consistent.
>
>     2. We removed BasicRX from X310's RF B channel, and tested one
>     data stream from X310 RF A's channel, it works (no overflow). We
>     are sure that the two BasicRX boards have no problem, as they are
>     brand new.
>
>     3. We removed two BasicRX boards and installed two BasicTX boards
>     on the same X310. We used GNU RADIO to send two data streams to
>     X310 for signal transmission. It works well and has no overflow
>     issue.
>
>     We want to test X310's RF B channel, but we do not know how to set
>     the parameters so that GNU Radio can read the data stream from
>     X310's RF B channel. Would it be an argument like "subdev=3DB"? It
>     looks like GNU Radio always gets data stream from RF A channel if
>     we set the channel number to 1. Please suggest if it is possible.
>
>     Any suggestion and help would be appreciated!
>
>
>     On Tue, Apr 19, 2022 at 6:03 PM Marcus D. Leech
>     <patchvonbraun@gmail.com> wrote:
>
>         On 2022-04-19 15:05, Shichen Zhang wrote:
>         > Hello everyone,
>         >
>         > I am doing some experiments=C2=A0and I need to build the 2 by=
 2
>         > communication using X310 with the=C2=A0BasicRX Daughterboard.=
 I
>         use the
>         > X310 as both the transmitter and receiver. I can
>         successfully test the
>         > 1 by 1 case, however, when I test the 2 by 2 case, the overfl=
ow
>         > happened and the program could not be stopped. The RF B
>         channel seems
>         > not to work ( LED light for RF B RX not flash).
>         >
>         > I have attached the flowchart for=C2=A0your reference.
>         >
>         > Best,
>         > SZ
>         >
>         What is your complete hardware configuration?=C2=A0 I assume 2=C2=
=A0 x
>         BasicRX and
>         2 x Basic TX?
>
>         It may just be the case that your computer simply isn't up to
>         the task
>         of moving 20Mssp of data in and out of the radio, along with
>         doing 2 x
>         FFTs and computing the
>         =C2=A0=C2=A0 noise sources.
>
>         _______________________________________________
>         USRP-users mailing list -- usrp-users@lists.ettus.com
>         To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------RL9EDnisjecWC0UT0YgqqQet
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-04-22 12:32, Zeng, Huacheng
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAL0m=3DNbeN7fBXYHWkbCd60zVZjOWVntDjhzJrpGayb7O1Fwsnw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Hi All,</div>
        <div><br>
        </div>
        <div>Can anyone having successful experience with X310=C2=A0+=C2=A0=
two
          BasicRX Daughterboards confirm that such a setup works? We can
          make it work for the following settings: i) X310=C2=A0+ one
          BasicRX, ii) X310=C2=A0+ two BasicTX, iii) X310=C2=A0+ two SBX =
for both
          TX and RX, iv) two N210=C2=A0+ MIMO cable=C2=A0+ two BasicRX. B=
ut we are
          not able to make it work for X310=C2=A0+ two BasicRX. We tried
          different UHD versions (4.2, 3.15, etc.) and got no luck.=C2=A0=
</div>
        <div><br>
        </div>
        <div>Any=C2=A0suggestions would=C2=A0be appreciated!</div>
        <div><br>
        </div>
        <div>Hua</div>
        <div><br>
        </div>
      </div>
    </blockquote>
    I have a query in to R&amp;D on the status of this.=C2=A0 It was
    certainly the case that in very-early X310 releases, Basic_XX
    support didn't work, but that was, I thought,<br>
    =C2=A0 fixed in later releases.=C2=A0 So, I'm trying to get clarifica=
tion from
    R&amp;D on this.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAL0m=3DNbeN7fBXYHWkbCd60zVZjOWVntDjhzJrpGayb7O1Fwsnw@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 19, 2022 at
            10:44 PM Zeng, Huacheng &lt;<a
              href=3D"mailto:huacheng.zeng@gmail.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">hu=
acheng.zeng@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div dir=3D"ltr">Below is a more detailed description of our
              issue. <br>
              <br>
              1. We have an X310 with two BasicRX boards installed (no
              BasicTX). We tried to read the two data streams from X310
              on a computer at a sampling rate 5Msps. The computer
              displays "OOOOOOOOOOOO" overflow constantly. We tried
              other sampling rates such as 1Msps and 10Msps, the
              observation is the same. <br>
              <br>
              We found that the LED lights on the X310 panel are
              abnormal. When X310 works in RX mode, the two LED lights
              (RF A's RX2 LED and RF B's RX2 LED) should be on, but we
              observed they were flashing. Also, the LINK LED should be
              on in RED, but we observed that it was flashing in ORANGE.
              <br>
              <br>
              We reloaded the FPGA image, but the problem is consistent.
              <br>
              <br>
              2. We removed BasicRX from X310's RF B channel, and tested
              one data stream from X310 RF A's channel, it works (no
              overflow). We are sure that the two BasicRX boards have no
              problem, as they are brand new. <br>
              <br>
              3. We removed two BasicRX boards and installed two BasicTX
              boards on the same X310. We used GNU RADIO to send two
              data streams to X310 for signal transmission. It works
              well and has no overflow issue. <br>
              <br>
              We want to test X310's RF B channel, but we do not know
              how to set the parameters so that GNU Radio can read the
              data stream from X310's RF B channel. Would it be an
              argument like "subdev=3DB"? It looks like GNU Radio always
              gets data stream from RF A channel if we set the channel
              number to 1. Please suggest if it is possible. <br>
              <br>
              Any suggestion and help would be appreciated!<br>
              <br>
            </div>
            <br>
            <div class=3D"gmail_quote">
              <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 19, 2022 =
at
                6:03 PM Marcus D. Leech &lt;<a
                  href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blan=
k"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">patchvonbraun@gmail.com</a>&gt;
                wrote:<br>
              </div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px
                0.8ex;border-left:1px solid
                rgb(204,204,204);padding-left:1ex">On 2022-04-19 15:05,
                Shichen Zhang wrote:<br>
                &gt; Hello everyone,<br>
                &gt;<br>
                &gt; I am doing some experiments=C2=A0and I need to build=
 the
                2 by 2 <br>
                &gt; communication using X310 with the=C2=A0BasicRX
                Daughterboard. I use the <br>
                &gt; X310 as both the transmitter and receiver. I can
                successfully test the <br>
                &gt; 1 by 1 case, however, when I test the 2 by 2 case,
                the overflow <br>
                &gt; happened and the program could not be stopped. The
                RF B channel seems <br>
                &gt; not to work ( LED light for RF B RX not flash).<br>
                &gt;<br>
                &gt; I have attached the flowchart for=C2=A0your referenc=
e.<br>
                &gt;<br>
                &gt; Best,<br>
                &gt; SZ<br>
                &gt;<br>
                What is your complete hardware configuration?=C2=A0 I ass=
ume
                2=C2=A0 x BasicRX and <br>
                2 x Basic TX?<br>
                <br>
                It may just be the case that your computer simply isn't
                up to the task <br>
                of moving 20Mssp of data in and out of the radio, along
                with doing 2 x <br>
                FFTs and computing the<br>
                =C2=A0=C2=A0 noise sources.<br>
                <br>
                _______________________________________________<br>
                USRP-users mailing list -- <a
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.=
com</a><br>
                To unsubscribe send an email to <a
                  href=3D"mailto:usrp-users-leave@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">usrp-users-leave@lists.=
ettus.com</a><br>
              </blockquote>
            </div>
          </blockquote>
        </div>
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
    <br>
  </body>
</html>

--------------RL9EDnisjecWC0UT0YgqqQet--

--===============7981410831700462188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7981410831700462188==--
