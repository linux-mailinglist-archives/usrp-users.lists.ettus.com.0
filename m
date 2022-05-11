Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C450523437
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 15:25:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 48B4B384673
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 09:25:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652275540; bh=/F9OsukqNBYdXMeXURqnjobIzJiOroJdHRB7SSBjTlo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=CAQvMVTGK2DanenTU1K7ltf+RASdINEeJ9DOLiGulc5Qhk1XOOobxfUJ9u2+BVKeM
	 OSPygHyTpRkU19DeBvtjHuC5KjgJ8aIZd+7cw816tm3feDxfTqBK5VsHWcPQFx0S6g
	 iGUNZvJQZl8tL7r6HBEHQootnXmsrGe2SUjjXX1Qop3ewAdMUQdTBJejr1G2fjwE9w
	 6oyw9xWdVS1+/OWQS2nkwwSgHq16b7KCJ/yuxaEPfnpoiy8FLJtsPt0z8RbEEgfdfN
	 bzgPXjI8VPY4fcrJ1SPqJydyIKmguZ7YwOylgDJmUeNWjK4Nj2v88g8ggTRSUcGR5V
	 ddQmx5HP2JfBA==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id C91FC38432D
	for <usrp-users@lists.ettus.com>; Wed, 11 May 2022 09:24:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VFH0hIor";
	dkim-atps=neutral
Received: by mail-qv1-f48.google.com with SMTP id n10so2059603qvi.5
        for <usrp-users@lists.ettus.com>; Wed, 11 May 2022 06:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=I8/jwVAlGH9bZCisTm7AAK2hnClu0eT9SHV+gnlduYU=;
        b=VFH0hIorHrE7Pv4zK7t0LjtC3Q67WiL14pxmY/Upgw8V+F6KXo92cXLOGOSSr5lapx
         H0L7TRtDZ5ydqkxwZv3rOZWpBCnuymfpTGPK0f9JWS4d6ZX2bSVrHxGwJij4JBB7JTbK
         oG4SmVDgRlEs8YZlpkbPQDbu7wp7hqn4JoHshqBoTP3RRC1x1QLsBR6f+rb8+nDaeYvf
         Or9ZGXSHmk0AtakPmNxX/J4TcPiMtC+5/h7rjkx9eK+j03bJ0Iw038kaLdvn/irRU3GF
         NvrCA1uXbG0ZoG5yLRn/uzb6MU/2ma2xu+6sbrV6oijR663PW1tCisBdnaUKjLruVEOH
         Us/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=I8/jwVAlGH9bZCisTm7AAK2hnClu0eT9SHV+gnlduYU=;
        b=jWMeX2OiXBlI2XVsdDiaHLFFj7iY9pC5DaqO0Lx+X8usbhU2yRVxvvKPhqc1Hg4bzN
         JHOtjBYI66dG/qXm1NaEp7hiVIiF9Ub4Cik7YoNfoUZlFBAPRZhV+Tq27VLiuNZa5Ocf
         tdXkpLNIHWAUNC0natcX4AgCtzzmLKy1aO0lIq1G5Rdv7FHsfkB2bpJijxS1HwBzKax4
         limhZfzCAPuYdmXXwv4/f3UTZkE7ZEfaZ8mvOSFAvoJvel82gBNvjiVj3IIkJIo521Xv
         86nrCFbPP1LeP9021o65TRQD47AbLfHG/EwOoy9WsOHOrY+RQ3Jzcb7ROmOeu1T9eQiQ
         F7Iw==
X-Gm-Message-State: AOAM533DBrqTDoHX1zOBa1/7TjJ4DYhGSq1t9Ef4yAoDH1zx4IiA39hI
	Pm8+LyfzTS0qvRrIapCK8XOeefCsDiw=
X-Google-Smtp-Source: ABdhPJwoqVMqE5npXkIchyMJxCQbBrjzgzYI1C7o9c1E5/FBu99H4c8VpGMZ/JU8HSLirdFu2wkpOQ==
X-Received: by 2002:a05:6214:2486:b0:45a:ee29:d371 with SMTP id gi6-20020a056214248600b0045aee29d371mr20838992qvb.73.1652275478274;
        Wed, 11 May 2022 06:24:38 -0700 (PDT)
Received: from [192.168.2.184] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id p24-20020ac87418000000b002f3b82571b1sm1178038qtq.1.2022.05.11.06.24.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 May 2022 06:24:37 -0700 (PDT)
Message-ID: <7ba1bae0-0218-372f-c263-91ead59e6153@gmail.com>
Date: Wed, 11 May 2022 09:24:37 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Marcin Puchlik <puchlikmarcin@gmail.com>, usrp-users@lists.ettus.com
References: <CAFghhNOMn+uGS5hNck9bAuhM9+_oiv1yjq494=saGc7-M7Begw@mail.gmail.com>
 <714d6b41-a910-175c-b25f-e30e6154fcb0@gmail.com>
 <CAFghhNMMweXPTLyhvG0v9c2VhRSJgCG3T3mac8EGA8cmFEnw6g@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFghhNMMweXPTLyhvG0v9c2VhRSJgCG3T3mac8EGA8cmFEnw6g@mail.gmail.com>
Message-ID-Hash: PUIHYHWKMIHZIV33LTERGXWHSR4O6NWA
X-Message-ID-Hash: PUIHYHWKMIHZIV33LTERGXWHSR4O6NWA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why do we need 1 PPS and 10 MHz signal to synchronize
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PUIHYHWKMIHZIV33LTERGXWHSR4O6NWA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8047635928113651365=="

This is a multi-part message in MIME format.
--===============8047635928113651365==
Content-Type: multipart/alternative;
 boundary="------------M7tdI0wnWeT9G6aEywOdO8T7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------M7tdI0wnWeT9G6aEywOdO8T7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-05-11 09:18, Marcin Puchlik wrote:
> Marcus,
> Thank you very much for the answer. Does it mean that 1 PPS signal is=20
> optional? Can I only provide an external 10 MHz clock without 1 PPS?
> *Z powa=C5=BCaniem *
> *Marcin Puchlik*
*Yes, absolutely.=C2=A0 If timestamp synchronization is not important to =
you,=20
then you can just provide a 10MHz reference when you want better
 =C2=A0 frequency accuracy and drift characteristics than are offered by =
the=20
on-board clock and/or you want some type of phase-synchronization
 =C2=A0 but don't care much about mutual phase offsets....





*
>
>
> =C5=9Br., 11 maj 2022 o 14:24=C2=A0Marcus D. Leech <patchvonbraun@gmail=
.com>=20
> napisa=C5=82(a):
>
>     On 2022-05-11 06:17, Marcin Puchlik wrote:
>>     Hello Community,
>>     Like in the topic, I know that a stable 10 MHz source is needed
>>     as a clock signal but why do we need=C2=A01 PPS signal? How is it =
used
>>     by the USRP hardware? Can someone explain that to me?
>>     Thanks
>>     Marcin
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>     1PPS is used to provide timestamp-clock synchronization across
>     multiple devices, typically.=C2=A0 This is important when your
>     application requires this, such as in MIMO or
>     =C2=A0 multi-receiver TDOA schemes, etc.
>
>     Basically, when you have multiple devices you use
>     set_time_unknown_pps() or set_time_next_pps() to signal to all
>     devices in your multi_usrp object=C2=A0 that at the next
>     =C2=A0 1PPS, to set the timestamp clock to the value given in the t=
he
>     API call.
>
>     This turns out to be useful even in single devices that are
>     "bicameral", such as B210 and X310, where there are (for historic
>     and architectural reasons)
>     =C2=A0 TWO timestamp clocks.=C2=A0 Use the 1PPS synchronization pri=
mitives
>     causes the internal timestamp clocks to become synchronized.
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------M7tdI0wnWeT9G6aEywOdO8T7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-05-11 09:18, Marcin Puchlik
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFghhNMMweXPTLyhvG0v9c2VhRSJgCG3T3mac8EGA8cmFEnw6g@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Marcus,
        <div>Thank you very much for the answer. Does it mean that 1 PPS
          signal is optional? Can I only provide an external 10 MHz
          clock without 1 PPS?<br clear=3D"all">
          <div>
            <div dir=3D"ltr" class=3D"gmail_signature"
              data-smartmail=3D"gmail_signature">
              <div dir=3D"ltr">
                <div>
                  <div dir=3D"ltr"><b>Z powa=C5=BCaniem=C2=A0</b>
                    <div><b>Marcin Puchlik</b></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <b>Yes, absolutely.=C2=A0 If timestamp synchronization is not importa=
nt
      to you, then you can just provide a 10MHz reference when you want
      better<br>
      =C2=A0 frequency accuracy and drift characteristics than are offere=
d by
      the on-board clock and/or you want some type of
      phase-synchronization<br>
      =C2=A0 but don't care much about mutual phase offsets....<br>
      <br>
      <br>
      <br>
      <br>
      <br>
    </b>
    <blockquote type=3D"cite"
cite=3D"mid:CAFghhNMMweXPTLyhvG0v9c2VhRSJgCG3T3mac8EGA8cmFEnw6g@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">=C5=9Br., 11 maj 2022 o
          14:24=C2=A0Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          napisa=C5=82(a):<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2022-05-11 06:17, Marcin Puchlik wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Hello Community,
                <div>Like in the topic, I know that a stable 10 MHz
                  source is needed as a clock signal but why do we
                  need=C2=A01 PPS signal? How is it used by the USRP
                  hardware? Can someone explain that to me?</div>
                <div>Thanks</div>
                <div>
                  <div dir=3D"ltr">
                    <div dir=3D"ltr">
                      <div>Marcin</div>
                    </div>
                  </div>
                </div>
              </div>
              <br>
              <fieldset></fieldset>
              <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-li=
nk-freetext">usrp-users-leave@lists.ettus.com</a>
</pre>
            </blockquote>
            1PPS is used to provide timestamp-clock synchronization
            across multiple devices, typically.=C2=A0 This is important w=
hen
            your application requires this, such as in MIMO or<br>
            =C2=A0 multi-receiver TDOA schemes, etc.<br>
            <br>
            Basically, when you have multiple devices you use
            set_time_unknown_pps() or set_time_next_pps() to signal to
            all devices in your multi_usrp object=C2=A0 that at the next<=
br>
            =C2=A0 1PPS, to set the timestamp clock to the value given in=
 the
            the API call.<br>
            <br>
            This turns out to be useful even in single devices that are
            "bicameral", such as B210 and X310, where there are (for
            historic and architectural reasons)<br>
            =C2=A0 TWO timestamp clocks.=C2=A0 Use the 1PPS synchronizati=
on
            primitives causes the internal timestamp clocks to become
            synchronized.<br>
            <br>
            <br>
          </div>
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

--------------M7tdI0wnWeT9G6aEywOdO8T7--

--===============8047635928113651365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8047635928113651365==--
