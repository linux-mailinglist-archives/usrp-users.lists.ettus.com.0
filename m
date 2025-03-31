Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1323BA76B6B
	for <lists+usrp-users@lfdr.de>; Mon, 31 Mar 2025 17:59:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C4350384E82
	for <lists+usrp-users@lfdr.de>; Mon, 31 Mar 2025 11:58:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743436739; bh=aBl6gfO2Buey+oTw+8hJ7pBjD5v5Dbwyzqtn7DlklK4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=b7l+iM0LLilxKtbpMoZLUFtpXJbtkofMMQQtN257+A0oB6tXaf2EpvePBTlrN/4i6
	 yyPpCfPgfmxubnsIsC9YXIJsxGFQ7BX7FuMIWpXQRhZvwvaNwFvZEo2/Y4d0Gi9ZYM
	 ZAKZA60vZ6sOga3z/U9ON7TaBwjStMtC9l5NjfEZ+xv42fX+eQHYHqgVQqgSc4Y6xm
	 dMNS1K0BPqknvH5Hmiis47jrXyG4semgqBK+vaTK8ESh0qocV0phXCSlpEiKj3ZztP
	 otXVQj0zXSkfjjAwMchtZZfYoBmhGXZgZw7nDreunLtXXaaN1IYQNEafHkp3BfBKNu
	 2vaCmkwepjU/w==
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 1E82F38116D
	for <usrp-users@lists.ettus.com>; Mon, 31 Mar 2025 11:58:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hTJYdT0I";
	dkim-atps=neutral
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-476f4e9cf92so34470811cf.3
        for <usrp-users@lists.ettus.com>; Mon, 31 Mar 2025 08:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743436687; x=1744041487; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iOgLzHXwqd9iujWPvWaDVMacAr0+bjqriJwKws69FLU=;
        b=hTJYdT0IjY1DIi1zp30M0Kci46mbqzI344kH4Gv7TozEFC9ChfSiu7v10kokxTK61e
         Io8D6lI4btUtazfPOwvkDX5316ocHDIr1/kJ+5k0VRlYO2WI4wPjKCOArYF2altKoD95
         hUjK5stQKA7KUt/t3s2jbvIdjXs4xM1rSDInBLfOakaY1g72GpQRC2Ysfc9rKTI/cux6
         65oHRnS1UPS3V2sNiNEZNUmMSdIyG2MZtX5riFbKQYgLUXGil6nhxHuNaCeVjFw48i9h
         SQBKyby0spbFo+NKc72d2SQJhc7isFYLegfmriqwaVZFmKtOv4Waq6HMjTnnCvQswhnl
         /3kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743436687; x=1744041487;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iOgLzHXwqd9iujWPvWaDVMacAr0+bjqriJwKws69FLU=;
        b=VAwNO2DJWGvf4ahgmv6T7EGuvaYml2LMrXE40BmOhLtlgBk16HPh5/ElU3urJkUoH8
         XvYGK3gqp/LflUr55LgS0wCjnnR9t+daKYnSK/4+ds0cY+rh9hzboTijVcjxkt4ZR1Pn
         Ous2FQqqohOQT3GPUfAQrnPl/mB/a3EZHOGAdz3cG9Rd+yPlj4WAGATG/h/sFZ3JruIf
         NIi8VBGRxABpoJGWrTRzvFi54uicESh15QHypBXUhUMn1/4UdNJqIb+CmGIhitoLjdhS
         AFueYv02h7ye7QVr6a6eQIDh5NLq9WDDymUR8ETJg6GAJjiEQQFqvB6N6XyEPhTNCzke
         QW7A==
X-Gm-Message-State: AOJu0YxkJfbCgkAcuK4kPvBYopoeLjeSJ/QavXz46l9zw8ZD1K8PpbuP
	oU4dNV8tCJW42En3sbdxEV6HYZiqzgpNrBALQJ7/aaz6Id8w0+zMpuAD0Q==
X-Gm-Gg: ASbGncsJd2UZ7gQOBh/hQ/N3FFYYpH5m57PgANhNhWlqo0icT3EvZX3PqrTNP+9It1h
	RQjEgO2MhHjqia3dtsXcF5CaPII+27tO6+K9lSBapuXxysH+8sRKvU/e9H/NDppSKYCvyzn3Fov
	m8VP21/dm4JPJ42ZAxBHbA4a6/Z96fbMDSZedJDnw9ek9bX7UehfekoPCrUXezz4/195KIkfuJI
	DdqhTUSNPH8GQtwt9OS0XeYYTxsmkANCGz7PTYzkOuxnbXfjY9pl1ClGRxNyD55eRnmmCyPaPJq
	6KWq1+ptbGnm85ArqImk4sVmtaQFlAN6ag2lrXaXhiSq0jaSXan7QwQ=
X-Google-Smtp-Source: AGHT+IEHzu/wbCvAMGHd92DYFMlX1QEjueY/ahG54ZZAHDVRv8Om9o0ZBUsOdbDYhwXhr43a6JbXqA==
X-Received: by 2002:a05:622a:120b:b0:477:1134:3ee with SMTP id d75a77b69052e-477ed799149mr133378231cf.4.1743436686687;
        Mon, 31 Mar 2025 08:58:06 -0700 (PDT)
Received: from [192.168.2.170] ([76.67.104.188])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-47782a49f2csm51545901cf.32.2025.03.31.08.58.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Mar 2025 08:58:06 -0700 (PDT)
Message-ID: <df01792d-cf76-4468-ac42-87a79806bd66@gmail.com>
Date: Mon, 31 Mar 2025 11:57:55 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <CALM_BfYZML=gn1qcQEDVCc5W+DdeojAVxiFmKdmDESFuA1Ep6Q@mail.gmail.com>
 <b577024e-902c-4eed-8a32-409d7ba8335a@gmail.com>
 <CAOEzSFTb_RoOYxYuDzR4HHYQjL_rZz2oXKB9F3qHQ9op3xis+g@mail.gmail.com>
 <PH1P110MB1284346766755262C416A81D98A1A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
 <a5f4e895-2921-4c9d-9979-ede6bf91ceb0@gmail.com>
 <1606018006.2100559.1743436319414@mail.yahoo.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1606018006.2100559.1743436319414@mail.yahoo.com>
Message-ID-Hash: KJOOADOPGVT7YVFNKAPHTVZGXW7SXW4P
X-Message-ID-Hash: KJOOADOPGVT7YVFNKAPHTVZGXW7SXW4P
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Max Input RF Power in X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KJOOADOPGVT7YVFNKAPHTVZGXW7SXW4P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5203287652623468730=="

This is a multi-part message in MIME format.
--===============5203287652623468730==
Content-Type: multipart/alternative;
 boundary="------------wfbiuLpkkyzYV44hVhEHcXIA"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------wfbiuLpkkyzYV44hVhEHcXIA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 31/03/2025 11:51, zhou via USRP-users wrote:
> Hi,
>
> What is the max input signal power to RF ports in X310?=C2=A0 There is =
a=20
> spec in the below link:
> https://www.ettus.com/wp-content/uploads/2024/01/X300_X310_Spec_Sheet_2=
024-01-23.pdf
> There are max output powers, but not input power.
> I am using UBX-160 daughterboard.
>
> In https://kb.ettus.com/X300/X310_Getting_Started_Guides, it says that
> "Never apply more than -15 dBm of power into any RF input."
>
> ChatGpt says that "*UBX 40*: *+10 dBm* (10 mW)"
>
> What is the max input signal power?
>
> Thanks for any comments,
>
> Zhou
>
-15dBm is somewhat conservative, but if that's what the manufacturer=20
recommends, I'd go with that, rather than a
 =C2=A0 hallucination produced by ChatGPT.

The receivers on USRPs are generally designed to be connected to an=20
antenna, and as such have sensitive, lower-noise
 =C2=A0 front-ends.=C2=A0 Such front-ends generally don't tolerate higher=
 input=20
powers without damage--and +10dBm *IS* high
 =C2=A0 input power for a radio receiver.

One may have gotten used to the relatively-insensitive inputs of=20
laboratory spectrum analyzers, which often have
 =C2=A0 inputs that can tolerate considerably-higher power levels, but ar=
e=20
insensitive at levels expected from direct
 =C2=A0 connection to an antenna.=C2=A0 But USRPs are designed for antenn=
a=20
connection.=C2=A0=C2=A0 If you want to use them as
 =C2=A0 a laboratory spectrum analyser, you'll need to use attenuators.


>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------wfbiuLpkkyzYV44hVhEHcXIA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 31/03/2025 11:51, zhou via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1606018006.2100559.1743436319414@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpcf4bf1c9yahoo-style-wrap"
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">What is the max input sign=
al
          power to RF ports in X310?=C2=A0 There is a spec in the below l=
ink:</div>
        <div dir=3D"ltr" data-setdir=3D"false"><a
href=3D"https://www.ettus.com/wp-content/uploads/2024/01/X300_X310_Spec_S=
heet_2024-01-23.pdf"
            rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">https://www.ettus.com/wp-cont=
ent/uploads/2024/01/X300_X310_Spec_Sheet_2024-01-23.pdf</a></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span
style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Ari=
al, sans-serif;">There
              are max output powers, but not input power.</span></span><b=
r>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">I am using UBX-160
          daughterboard.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">In=C2=A0<a
            href=3D"https://kb.ettus.com/X300/X310_Getting_Started_Guides=
"
            rel=3D"nofollow" target=3D"_blank" class=3D"moz-txt-link-free=
text"
            moz-do-not-send=3D"true">https://kb.ettus.com/X300/X310_Getti=
ng_Started_Guides</a>,
          it says that</div>
        <div dir=3D"ltr" data-setdir=3D"false">"<span><span
style=3D"color: rgb(0, 0, 0); font-family: Lucida Sans Unicode, Lucida Gr=
ande, sans-serif; font-size: 14px;">Never
              apply more than -15 dBm of power into any RF input.</span><=
/span>"</div>
        <div><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">ChatGpt says that "<strong
            data-start=3D"253" data-end=3D"263">UBX 40</strong>: <strong
            data-start=3D"265" data-end=3D"276">+10 dBm</strong> (10 mW)"=
</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">What is the max input sign=
al
          power?</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks for any comments,</=
div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Zhou</div>
        <div><br>
        </div>
      </div>
    </blockquote>
    -15dBm is somewhat conservative, but if that's what the manufacturer
    recommends, I'd go with that, rather than a<br>
    =C2=A0 hallucination produced by ChatGPT.<br>
    <br>
    The receivers on USRPs are generally designed to be connected to an
    antenna, and as such have sensitive, lower-noise<br>
    =C2=A0 front-ends.=C2=A0 Such front-ends generally don't tolerate hig=
her input
    powers without damage--and +10dBm *IS* high<br>
    =C2=A0 input power for a radio receiver.<br>
    <br>
    One may have gotten used to the relatively-insensitive inputs of
    laboratory spectrum analyzers, which often have<br>
    =C2=A0 inputs that can tolerate considerably-higher power levels, but=
 are
    insensitive at levels expected from direct<br>
    =C2=A0 connection to an antenna.=C2=A0 But USRPs are designed for ant=
enna
    connection.=C2=A0=C2=A0 If you want to use them as<br>
    =C2=A0 a laboratory spectrum analyser, you'll need to use attenuators=
.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:1606018006.2100559.1743436319414@mail.yahoo.com">
      <div class=3D"ydpcf4bf1c9yahoo-style-wrap"
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;">
        <div><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
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

--------------wfbiuLpkkyzYV44hVhEHcXIA--

--===============5203287652623468730==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5203287652623468730==--
