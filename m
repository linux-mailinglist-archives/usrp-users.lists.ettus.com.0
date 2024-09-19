Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FC497CD23
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2024 19:37:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4F5BD385853
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2024 13:37:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1726767462; bh=aM4BeNGtHpZ9ykuhrbChueF2GL4KC0+jy8QJlJb269E=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ICYaJv94LLtKhSc6a9E3If7ljbcQMvBNOxJRZWsrODSDIYCyW7o0XANmelyX9EYgr
	 vGZshO35qdYN0/IX/Bhb6DVGfOg5rHfDhGRNbFCHdYkgTl0yCC6NCHtS53s+CO8i/1
	 tzdx3YW3E11l7IWOF17EeHb5E3/Wnnbbl7w7JMWLAn+PPtjXnrsZ9dU//BpYtwOklk
	 FGckpUxiYCYbtcT3r15/deOzUEo7CJfAaiRhuq0itUjCaxnG36UXcgFw/EKrA3rMFf
	 69tAVFf2xmxMxE9k/isQ8dLHJPwaLRZ2vCgcs1k9vFgnO8j1Phs98j3G4tE2nO/ymJ
	 ooc5G6KgHu2IA==
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	by mm2.emwd.com (Postfix) with ESMTPS id DF5B53851B7
	for <usrp-users@lists.ettus.com>; Thu, 19 Sep 2024 13:36:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TyGGJMG7";
	dkim-atps=neutral
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-5d5f24d9df8so529836eaf.2
        for <usrp-users@lists.ettus.com>; Thu, 19 Sep 2024 10:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726767408; x=1727372208; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bg43Xm+09RLDvWVUjUecqJcOF2+y5kHxtc5ezvNEOMg=;
        b=TyGGJMG78qXHTekg1BHTfMlBqjqnxQB4twjEwoVo7jGvJFjKQFrHFF5GIjt+fNLV7K
         Wwqhb9Je1/i/lZhXB+VAOMHkyD8NRH34I42IQG8RENdlCFf6Za8z+w1xIe72wrI3+Xx2
         3rwz912DtItRNBlfcOvwZ1JVAKIRq6a4WVJefIHMAlrnf7Jp4FxY251NLUT71rqfLufs
         Xo7PVQ5N8fziR0AOPYmkXtfVJVppG779vMsALSGoIUwrGM4vvUB/Ym9Gfq9k2sfwD2Iv
         A0RAWtqVyYXigeKF7T9sWHotiyQLhBHfwCdO3X0OWZwc/vfiVofMQILqzQSjxpkE5wAo
         tDGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726767408; x=1727372208;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bg43Xm+09RLDvWVUjUecqJcOF2+y5kHxtc5ezvNEOMg=;
        b=m347HEiDkvzpT3OEeciE6T5rR+vKLzAtYdYjJgwI9Et3iXN1R32ciE2h13R/B1LgQm
         HIcFdkGA734nhcSDw391uteMekvjds0B10MP26uS7piCh3nJ8CYsatwQFgFMFeYcWig5
         zP0H+MkynwK/nPzPXEnU6fom7s59msAsNiuXV2itsaEoCoWDQ65JrpaovGilQBBmgHrI
         Ew0xtP9Kicfo+FH81IhZ5KEEOdaY4vv6P/WubhO0IrsKXSKTWFGTvhY0s2xQBR3JHwiA
         ItA5v7ta56dTVFoWw6M2/c54EMRRL2elxWYoykUNOxhFfdAvEDoEOOUoBldtjIWdGreR
         Q+TA==
X-Gm-Message-State: AOJu0YwD6IXuZn+U+j4tNmvhKuTPbqurBvlO87eG2Ogn/OAeVowtmlVS
	c9Q05fv1rXvs9NKJSjEuNvbt7Ju8a213YHZDeklRSoaDVoWJowyC
X-Google-Smtp-Source: AGHT+IH5+xjlEHBHAZXwX0Zy6XxQ8jJ4WYrHoqe5lAILUHOCcEd23Ka9YSNpFF8o6i+x6Zgcw3EDTQ==
X-Received: by 2002:a05:6358:9107:b0:1aa:d6fe:f422 with SMTP id e5c5f4694b2df-1bc97627978mr32560955d.18.1726767407946;
        Thu, 19 Sep 2024 10:36:47 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6c75e557cefsm9442696d6.103.2024.09.19.10.36.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Sep 2024 10:36:47 -0700 (PDT)
Message-ID: <53b75cf1-9a18-4003-bd5e-c15894bc9951@gmail.com>
Date: Thu, 19 Sep 2024 13:36:36 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: cyberphox <cyberphox@gmail.com>
References: <xwhpbLprT6T2uZ7kBawwfB9mz3MqKIlS9qXwZxXQ8@lists.ettus.com>
 <33b7ee5f-c79a-4047-b70e-f5dd7b499766@gmail.com>
 <CAOkUcSs0VF4Fg1LR8Ukt=CBCOJdN-kN972FAsYCwFo6jV5wkEw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAOkUcSs0VF4Fg1LR8Ukt=CBCOJdN-kN972FAsYCwFo6jV5wkEw@mail.gmail.com>
Message-ID-Hash: 7GU4APJGK3GGMDZJQ2XRVVFFSKLISBUG
X-Message-ID-Hash: 7GU4APJGK3GGMDZJQ2XRVVFFSKLISBUG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x300 reset script
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7GU4APJGK3GGMDZJQ2XRVVFFSKLISBUG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4116408472087820769=="

This is a multi-part message in MIME format.
--===============4116408472087820769==
Content-Type: multipart/alternative;
 boundary="------------AsNUZrQcbdJhEwwA0jDlGajx"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------AsNUZrQcbdJhEwwA0jDlGajx
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 19/09/2024 12:02, cyberphox wrote:
> Thank you and I look forward to hearing back from you & your colleagues=
.
So according to one of the FPGA folks on the "inside", there should be=20
ZERO difference
 =C2=A0 between the x300_reset.py and simply doing a power-cycle.

The reset script simply sends a special message to the ZPU, which=20
immediately forces a *hard* reset on
 =C2=A0 the FPGA--which will cause it to reset itself, and load the runni=
ng=20
FPGA image from the EEPROM.=C2=A0 This is
 =C2=A0 exactly what happens at power-up.
>
> On Thu, 19 Sept 2024 at 15:38, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 19/09/2024 09:44, cyberphox@gmail.com wrote:
>     >
>     > Hi all,
>     >
>     > I am using this the x300_reset.py script to reset the FPGA and
>     would
>     > like to know a bit more about what is it resetting etc.
>     >
>     (https://github.com/EttusResearch/uhd/blob/UHD-4.0/host/utils/x300_=
reset.py)
>     >
>     > Power off and on does not seem to get as clean result as when I
>     issue
>     > this reset.
>     >
>     > thanks,
>     >
>     > Marino
>     >
>     >
>     There's not a lot of info on this utility, and it isn't officially
>     supported, although we've recommended its use in the past.
>
>     Most of the R&D crew at Ettus/NI/Emerson are at the Gnu Radio
>     conference
>     this week, but I've reached out to someone
>     =C2=A0=C2=A0 in our support org who might know.
>
>
>     >
>     >
>     > _______________________________________________
>     > USRP-users mailing list -- usrp-users@lists.ettus.com
>     > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------AsNUZrQcbdJhEwwA0jDlGajx
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 19/09/2024 12:02, cyberphox wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAOkUcSs0VF4Fg1LR8Ukt=3DCBCOJdN-kN972FAsYCwFo6jV5wkEw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Thank you and I look forward to hearing back from
        you &amp; your colleagues. <br>
      </div>
    </blockquote>
    So according to one of the FPGA folks on the "inside", there should
    be ZERO difference<br>
    =C2=A0 between the x300_reset.py and simply doing a power-cycle.<br>
    <br>
    The reset script simply sends a special message to the ZPU, which
    immediately forces a *hard* reset on<br>
    =C2=A0 the FPGA--which will cause it to reset itself, and load the
    running FPGA image from the EEPROM.=C2=A0 This is<br>
    =C2=A0 exactly what happens at power-up.<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAOkUcSs0VF4Fg1LR8Ukt=3DCBCOJdN-kN972FAsYCwFo6jV5wkEw@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, 19 Sept 2024 at 15:=
38,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">On
          19/09/2024 09:44, <a href=3D"mailto:cyberphox@gmail.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">cyberphox@gmail.com</a> wrote=
:<br>
          &gt;<br>
          &gt; Hi all,<br>
          &gt;<br>
          &gt; I am using this the x300_reset.py script to reset the
          FPGA and would <br>
          &gt; like to know a bit more about what is it resetting etc. <b=
r>
          &gt; (<a
href=3D"https://github.com/EttusResearch/uhd/blob/UHD-4.0/host/utils/x300=
_reset.py"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">https://github.com/EttusResea=
rch/uhd/blob/UHD-4.0/host/utils/x300_reset.py</a>)<br>
          &gt;<br>
          &gt; Power off and on does not seem to get as clean result as
          when I issue <br>
          &gt; this reset.<br>
          &gt;<br>
          &gt; thanks,<br>
          &gt;<br>
          &gt; Marino<br>
          &gt;<br>
          &gt;<br>
          There's not a lot of info on this utility, and it isn't
          officially <br>
          supported, although we've recommended its use in the past.<br>
          <br>
          Most of the R&amp;D crew at Ettus/NI/Emerson are at the Gnu
          Radio conference <br>
          this week, but I've reached out to someone<br>
          =C2=A0=C2=A0 in our support org who might know.<br>
          <br>
          <br>
          &gt;<br>
          &gt;<br>
          &gt; _______________________________________________<br>
          &gt; USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          &gt; To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
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
    </blockquote>
    <br>
  </body>
</html>

--------------AsNUZrQcbdJhEwwA0jDlGajx--

--===============4116408472087820769==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4116408472087820769==--
