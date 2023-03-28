Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE04A6CC20B
	for <lists+usrp-users@lfdr.de>; Tue, 28 Mar 2023 16:28:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 842363848C8
	for <lists+usrp-users@lfdr.de>; Tue, 28 Mar 2023 10:28:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680013690; bh=iA+qyJY24bc0pr4uZTMU69zURpz7Fi4KThKB9b2vpjM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=gkomDt2CW9hVn+oVwehaolKmZ2esUCbUix1L7qG+A0jOw/ceINrNDZ9iRDj0YcmUw
	 twLX4Tw08rMJc6+rKrAx3CtHgR7TLWFfEp9Dp8kJkcLt790ISA/dBzH19jN7WvfU2+
	 jBwZ9gX2CyONelqcY7oZx3VMwOlMkKlG93hbAi43SrvCF7Vcw+GnAIii8YuBnxxWTh
	 Ysh2LgzEuLOW7GHjmNjz626JOCCWPNrCT3NE9H0KlLwffShUCcFi6PpGv1ai1zZA6Q
	 v0SxBViWgfRd6sA2AkwGh3pl8L7GzikYaI99bH7b45v5D8NAOEHNp44FUOQ22xZ7wh
	 31BCXBu+B+dPA==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 33DF838471A
	for <usrp-users@lists.ettus.com>; Tue, 28 Mar 2023 10:27:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GMzPKq6a";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id bz27so12050219qtb.1
        for <usrp-users@lists.ettus.com>; Tue, 28 Mar 2023 07:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680013624;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R8yhzxpoKEn96gfiMWqmILyjqsTRLLRDluajeX+1U78=;
        b=GMzPKq6aXMKBlA+UqQi3xOxGmFgazbImiS/BQLHM607YzVFHWoVOObl2imvYLPUBzm
         DzQpAHnqHRfjjCskJggw5hFGqy1Kaop0aXlNoyQEFEmURqsxvTduJJ3Ysl73m/EK+kWF
         dIAnU3TGx70N2dFl828Iw9eECTWGRuZ/2ltdxpN9LErcDNPEY9vMcizY9tG5mV28qoCs
         smW59g9R5t3T4WRzmjN6n2ETRHiohG9X48kEBjgucCgzyugdw8eebOHjYKsMePvzdYh1
         N3ZEhDhferfC9bbioAKx8AtoTbwYOlfHevpv4B90aqUYZ3KEqDE2665yo3XWi2KBJXN7
         4Iew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680013624;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=R8yhzxpoKEn96gfiMWqmILyjqsTRLLRDluajeX+1U78=;
        b=kfYrAqWoxsWuZ5PhidxWUxbf94a4fZvgWoEoJ0dTH7i/qgAOLzEJQV5T72iR0vK34V
         Tk0zcZuuxbPq5HzwTPbw1chYv+gLHSwGRiYM2vCEtmyeWsHbsUGP49JFEZ5j7B/csis6
         gFPmy5kGEH77mb51mKJsZp7K9zGDnnabqiTJQ+jG0fgLJb0FXydLPpQ1Mck3nPZtAWwk
         yQx/QVvH4/1CMXL0jRNadNL1r19BMimOPf/stDRxxEcebZnaBR3Jv5g5YizVLAFkfTOE
         qqqZFA1fgJQT5YtTFCwRaGPNbbdi7kjQbVZPdDgAjoWC62ZJu/Tvp32Mfd9zuh9+MOHT
         SJkA==
X-Gm-Message-State: AO0yUKUctu4KBZK8lPUT+6ajszWLjg18GROLkNbBVkbDj+J2lx7clMS2
	uyM+e5VIZkEncuTnBS34QAMzYYHwOO0=
X-Google-Smtp-Source: AK7set8+mJWAeFRm9DpyMJ6bECy1fl2Rcn/7D8BTABjB7qx1X09ptUSVmsAqqEKLsOFwBp2avBIOeA==
X-Received: by 2002:a05:622a:24e:b0:3df:a280:b622 with SMTP id c14-20020a05622a024e00b003dfa280b622mr25666351qtx.13.1680013624550;
        Tue, 28 Mar 2023 07:27:04 -0700 (PDT)
Received: from [192.168.2.156] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id d3-20020ac847c3000000b003e4f1b3ce43sm600491qtr.50.2023.03.28.07.27.04
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 07:27:04 -0700 (PDT)
Message-ID: <81d09b89-3861-e3ef-0186-cc273ecb5cab@gmail.com>
Date: Tue, 28 Mar 2023 10:27:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <YpXFP4QggRrGSSMNy4xiU4alOPUjua9adqRBwdMwA3Q@lists.ettus.com>
 <CAB__hTTPrPhwXKH2Zj3hq6Ba+ZkWkd4-MAsRy-=6rNWczfuA3w@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTTPrPhwXKH2Zj3hq6Ba+ZkWkd4-MAsRy-=6rNWczfuA3w@mail.gmail.com>
Message-ID-Hash: YA2TXL4RD6GZIBM25L4KHJ4TEY3ILUIQ
X-Message-ID-Hash: YA2TXL4RD6GZIBM25L4KHJ4TEY3ILUIQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini i very high lo-leakage, image rejection and aggressive DC correction.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YA2TXL4RD6GZIBM25L4KHJ4TEY3ILUIQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0065794496612094138=="

This is a multi-part message in MIME format.
--===============0065794496612094138==
Content-Type: multipart/alternative;
 boundary="------------B0UXI8xYxKq1YN76iO50bqSp"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------B0UXI8xYxKq1YN76iO50bqSp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 28/03/2023 10:06, Rob Kossler via USRP-users wrote:
> Hi Sorin,
> Regarding the maximum LO offset you can use:
> =C2=A0 LO-offset-max =3D (master_clock_rate - sample_rate) / 2;
> This equation ensures that your desired bandwidth (determined by=20
> sample rate), will fit within the digital stream (at rate MCR) that=20
> is=C2=A0supplied to the FPGA from the RF front end. So, with the B200=20
> series, you need to set the master_clock_rate accordingly.
> Rob
IN addition, on the B2xx, you need to set the analog bandwidth high=20
enough to accommodate that setting.


>
> On Tue, Mar 28, 2023 at 9:54=E2=80=AFAM <soring@ayecka.com> wrote:
>
>     Thank you.
>
>     A. Let me understand. Can I make the lo_offset higher than
>     sampling rate/2 ?
>
>     B. I will try. About =E2=80=9CBut, also, consider LO offset in the =
TX path
>     as well.=E2=80=9D I don=E2=80=99t want to use a tunable filter.
>
>     We did work with other Analog devices component. They are capable
>     of better performance than they show in your device.
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------B0UXI8xYxKq1YN76iO50bqSp
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 28/03/2023 10:06, Rob Kossler via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTTPrPhwXKH2Zj3hq6Ba+ZkWkd4-MAsRy-=3D6rNWczfuA3w@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi Sorin,
        <div>Regarding the maximum LO offset you can use:</div>
        <div>=C2=A0 LO-offset-max =3D (master_clock_rate - sample_rate) /=
 2;</div>
        <div>This equation ensures that your desired bandwidth
          (determined by sample rate), will fit within the digital
          stream (at rate MCR) that is=C2=A0supplied to the FPGA from the=
 RF
          front end. So, with the B200 series, you need to set the
          master_clock_rate accordingly.</div>
        <div>Rob</div>
      </div>
    </blockquote>
    IN addition, on the B2xx, you need to set the analog bandwidth high
    enough to accommodate that setting.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTTPrPhwXKH2Zj3hq6Ba+ZkWkd4-MAsRy-=3D6rNWczfuA3w@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 28, 2023 at
          9:54=E2=80=AFAM &lt;<a href=3D"mailto:soring@ayecka.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">sori=
ng@ayecka.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <p>Thank you.</p>
          <p>A. Let me understand. Can I make the lo_offset higher than
            sampling rate/2 ?</p>
          <p>B. I will try. About =E2=80=9CBut, also, consider LO offset =
in the
            TX path as well.=E2=80=9D I don=E2=80=99t want to use a tunab=
le filter. <br>
            <br>
            We did work with other Analog devices component. They are
            capable of better performance than they show in your device.
          </p>
          <p><br>
          </p>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
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

--------------B0UXI8xYxKq1YN76iO50bqSp--

--===============0065794496612094138==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0065794496612094138==--
