Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CF97F971B
	for <lists+usrp-users@lfdr.de>; Mon, 27 Nov 2023 02:15:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5F0103851E1
	for <lists+usrp-users@lfdr.de>; Sun, 26 Nov 2023 20:15:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701047708; bh=4lK+vgt1USJsIuWlWBnumALIFOW6YCGeFzjrFweKOng=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DNihg5mnnssUXMWs35yxtqSzvRWV75rFoVMA4GdTtt5y+mfq70Y5H9kW1gZy+ZufQ
	 TeFL7dwixicuIPov2UkB9EAd6k/pZXQkjSrEJNWiGGf9yPjjXRNySlFXbDHSUPnZRe
	 BeaXhYQy6H7ycKjoctJVTjtNwISKUmbe9KHiPDdYbRBkIPD+m312332KBaoxx4VV3U
	 BjvpUkCSqODYMv0k4+V6DjCTOIcc7Xg1XRX+uFv/bAfAwF9oV2xgwIncbyXHdukJWn
	 k/reIyrh3gO2Cf0wZg+h1Gfi537a/pM2eBF+tp/bQrwDzFsgUs36bFpeoN4RvNV8JW
	 G6dUGp88wwfoA==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 76BF53850AC
	for <usrp-users@lists.ettus.com>; Sun, 26 Nov 2023 20:14:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JZ6RGdNE";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7789a4c01easo217312285a.0
        for <usrp-users@lists.ettus.com>; Sun, 26 Nov 2023 17:14:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701047657; x=1701652457; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bzkbfK87dQs7QcXq67ALqKwJWe2g+Ny9/gPP80CwmZ0=;
        b=JZ6RGdNEjq3LhUPlWdG8EgLShP4kG9di8+3lX9br0vr/92Oz8TVLb6TJ765Z/BHJ3i
         SomjcL3KKKgmWN0V7OH7CCnIL1uZe7oep/aeat4iE34OrkG53rlNjpdcwm9CfrXwGW5n
         E8e/s/i1RxSn5qaEOeq5wUq+RdZJz03Q121rQ7yrzJg6uG06a62xf5gksUT3aJm2ATB1
         fCaAOjGEIQD0qU4RKrjYJLaD1nykgfNK3np/ykWo46m22NUZsOrmR2ITOzfxJrwKczdt
         X6lFL89xFt/cubPUP3arrxi3S7JtBEL+J3wsky1AWTnUWjxnwLJOJkSgLodQA9Sa94qo
         OmcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701047657; x=1701652457;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bzkbfK87dQs7QcXq67ALqKwJWe2g+Ny9/gPP80CwmZ0=;
        b=RsfBkg1mZMUt39uMdtAKgEZI05nW+AAm4wwrhH3sqHpEb2q4FzV/svwesMuzKktMv0
         fmAYnUWzKk2cQqsqAlsyOs79PjK4QpN36/DMo9n8GTRJMKQpMeeA3D2cXWCST8mzspGG
         420IWnNe1JIqFTaK/sNy1azLo7z0R163noQ5UByxFt7BRWnUIxwIQP6iqaw72tHcUUpO
         BQvv2/88doyYnIkEKDZcVV5NYVkPeAjkcHJC2xW79GC1wtPQ/5MPpNQ2/1oTADulHboY
         fk1Us5RcCWDVZAw662aHRPCtWANPnMYl6ATPFMq3p6wrO3tusBS5o2O3HbiRy3YQCt1P
         sTgg==
X-Gm-Message-State: AOJu0YwpjTNi0UH/oNBoli91BduGv6YbL+fwAEXcRWDdEwn5LTm5rn7r
	j5rOiCoYThnilkqevUsakuC8UoUF54g=
X-Google-Smtp-Source: AGHT+IENG8TK8BmavzdCO7rit0p2ToWkaWkMb2Lg42Fvwm5m87OMkmBUr3bIlNx+sJbeKN+2zRKYvw==
X-Received: by 2002:a05:620a:36f5:b0:775:446b:85fa with SMTP id cz53-20020a05620a36f500b00775446b85famr10138956qkb.3.1701047657218;
        Sun, 26 Nov 2023 17:14:17 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-146.dsl.bell.ca. [174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id oo21-20020a05620a531500b00767d4a3f4d9sm3300556qkn.29.2023.11.26.17.14.16
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Nov 2023 17:14:16 -0800 (PST)
Message-ID: <39d23b3f-4533-4017-a932-f1a9fef400e8@gmail.com>
Date: Sun, 26 Nov 2023 20:14:16 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAM0spwpcaZdAsfKJZ=FKO8t-9XJwcT0q-fMvr396ON2V96Dgkw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAM0spwpcaZdAsfKJZ=FKO8t-9XJwcT0q-fMvr396ON2V96Dgkw@mail.gmail.com>
Message-ID-Hash: K35FGTGBPMAMZ72JYXKBSQLCJU7D6NLV
X-Message-ID-Hash: K35FGTGBPMAMZ72JYXKBSQLCJU7D6NLV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Implementing B210 GPIO ATR for both channels
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K35FGTGBPMAMZ72JYXKBSQLCJU7D6NLV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5815965458891805929=="

This is a multi-part message in MIME format.
--===============5815965458891805929==
Content-Type: multipart/alternative;
 boundary="------------FFIy0K2Y6mZ0AQp1yYBFWbcf"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------FFIy0K2Y6mZ0AQp1yYBFWbcf
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/11/2023 19:28, Ethan C wrote:
>
> I am planning to use the GPIO ATR on a B210 as a PTT signal. Both=20
> channels will be used on the B210. Currently, GPIO ATR can't be=20
> switched from channel A to channel B on the B210 due to the function=20
> not being implemented in UHD, from=20
> EttusResearch/uhd/host/lib/usrp/multi_usrp.cpp=20
> <https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/multi_u=
srp.cpp>=20
>
> |void set_gpio_src( const std::string&, const=20
> std::vector<std::string>&, const size_t) override { throw=20
> uhd::not_implemented_error( "set_gpio_src() not implemented for this=20
> motherboard!"); } |
>
> Could this functionality be implemented with a script that directly=20
> accesses the ATR or tx/rx status registers? Or would I need to build=20
> custom firmware and modify the UHD drivers? Are there any good=20
> resources or tutorials for how to do either of these things?
>
>
You'd need to take a deep dive into the B200 implementation code on both=20
the host side, and the FPGA side.=C2=A0 I think what you're
 =C2=A0 looking for is what we call a "structured walk-through" of the=20
codebase.=C2=A0 No such document exists.=C2=A0 The source code is
 =C2=A0 freely available.

One of the problems with the GPIO is that it has evolved=20
considerably--used to be something that *SOME* daughterboards
 =C2=A0 supported, then it started being a motherboard feature, and the=20
feature-sets and semantics differ considerably depending
 =C2=A0 on which USRP you're dealing with.

For the B2xx, some models (like the B200) didn't have any GPIO ports=20
populated, but the B210 did, and so do the "minis".


> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------FFIy0K2Y6mZ0AQp1yYBFWbcf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/11/2023 19:28, Ethan C wrote:<br=
>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAM0spwpcaZdAsfKJZ=3DFKO8t-9XJwcT0q-fMvr396ON2V96Dgkw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <button
class=3D"gmail-js-saves-btn gmail-s-btn gmail-s-btn__unset gmail-c-pointe=
r gmail-py4"
          type=3D"button" id=3D"gmail-saves-btn-77535402" aria-controls=3D=
""
          aria-describedby=3D"--stacks-s-tooltip-smqn2zfr">
        </button>
        <div class=3D"gmail-votecell gmail-post-layout--left">
          <div
class=3D"gmail-js-voting-container gmail-d-flex gmail-jc-center gmail-fd-=
column gmail-ai-stretch gmail-gs4 gmail-fc-black-300"><br>
          </div>
          <div
class=3D"gmail-js-voting-container gmail-d-flex gmail-jc-center gmail-fd-=
column gmail-ai-stretch gmail-gs4 gmail-fc-black-300">I
            am planning to use the GPIO ATR on a B210 as a PTT signal.
            Both channels will be used on the B210.
            Currently, GPIO ATR can't be switched from channel A to
            channel B on the B210 due to the function not being
            implemented in UHD, from <a
href=3D"https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/mu=
lti_usrp.cpp"
              rel=3D"nofollow noreferrer" moz-do-not-send=3D"true">EttusR=
esearch/uhd/host/lib/usrp/multi_usrp.cpp</a>
          </div>
          <div class=3D"gmail-s-prose gmail-js-post-body">
            <pre><code>void set_gpio_src(
const std::string&amp;, const std::vector&lt;std::string&gt;&amp;, const =
size_t) override
{
throw uhd::not_implemented_error(
"set_gpio_src() not implemented for this motherboard!");
}
</code></pre>
            <p>Could this functionality be implemented with a script
              that directly accesses the ATR or tx/rx status registers?
              Or would I need to build custom firmware and modify the
              UHD drivers? Are there any good resources or tutorials for
              how to do either of these things?</p>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    You'd need to take a deep dive into the B200 implementation code on
    both the host side, and the FPGA side.=C2=A0 I think what you're<br>
    =C2=A0 looking for is what we call a "structured walk-through" of the
    codebase.=C2=A0 No such document exists.=C2=A0 The source code is<br>
    =C2=A0 freely available.<br>
    <br>
    One of the problems with the GPIO is that it has evolved
    considerably--used to be something that *SOME* daughterboards<br>
    =C2=A0 supported, then it started being a motherboard feature, and th=
e
    feature-sets and semantics differ considerably depending<br>
    =C2=A0 on which USRP you're dealing with.<br>
    <br>
    For the B2xx, some models (like the B200) didn't have any GPIO ports
    populated, but the B210 did, and so do the "minis".<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAM0spwpcaZdAsfKJZ=3DFKO8t-9XJwcT0q-fMvr396ON2V96Dgkw@mail.gm=
ail.com">
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

--------------FFIy0K2Y6mZ0AQp1yYBFWbcf--

--===============5815965458891805929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5815965458891805929==--
