Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C3884A5F766
	for <lists+usrp-users@lfdr.de>; Thu, 13 Mar 2025 15:17:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 952BC385EDE
	for <lists+usrp-users@lfdr.de>; Thu, 13 Mar 2025 10:17:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741875441; bh=YLywrV/5yiCDQkju+CJn7knJSOVqEB2HLWywFEFIgpY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=izYH4lvYWIcLq6/g8pE2plvOoZe7ACx70jlP9/PKFW/3orbz0njbO3B2PvcGJvJjo
	 nOe7GhfjcyTjZB98XcAarzLdNPdLYR7a4+oCDcyf7n8I+GE2B1w/iv5oio6xMjjE8z
	 K22gotoQR6XtegpT7A/77d88QfT3yI0XesDJDXbZOJs523DIb2ZkDT89R6QW4MyU1Z
	 Lt+fprBVmgoSCsLTO84MvOH3vRe39cXXKw4I9UmpBZExw1qP7scBpK8JjCqPGbJvL5
	 /Wz1cxXAoblYPKGEF3ZqpAC6OGldK0eqszOhJGnmHr1VJZSSc50rk1brkKXVhaPaCB
	 wOP8ozjfOhwlw==
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id C7A3338583B
	for <usrp-users@lists.ettus.com>; Thu, 13 Mar 2025 10:16:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QiEl5CPo";
	dkim-atps=neutral
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7c54b651310so131194785a.0
        for <usrp-users@lists.ettus.com>; Thu, 13 Mar 2025 07:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741875400; x=1742480200; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aL+FTZnVB03xQ+CCRROqQ1KwFi4sM6adrJZElbqE22I=;
        b=QiEl5CPoFAQuscy9fRjvLH1z55JgyITAL5i9oP+RDFXBCwYSuIiBVq51cGem9/uMsK
         53T+0ZHCEt5/DllAXoO+y40bMadVqnTP/p6hQqle7MUqmo8Pyi4dxnl5wj5xaU4Q4wCk
         EkEMrZSKEHFo/zLpuyM5+kKIi8wA9Z0ZTP2guWCtSdwVhO+K4H72NzlZNCy3DZ6T559I
         S5+rRHz+iSVmUkckOD3l0eGgh1Ke44mKtdzJO/HeWRP0jAgDHBnujT+XxjIcZPLTOevd
         qiscGd0QACDUszehSU3oB716Yol4lVBjZ3ho2ZyhXC9GjzqB+gwq11fIP1dAQQQFO/Ey
         cbSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741875400; x=1742480200;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aL+FTZnVB03xQ+CCRROqQ1KwFi4sM6adrJZElbqE22I=;
        b=BJSBcVrKvTCRT80Vzir5Ow79y9pj8QKgR90egna21lZ2dgRffPflMCjcfNw2tA85cl
         JMMAzex6xN6kAYgMBXUsCUidcR6ww/NodPTag8B8z0RW2dUpOUzjrrvDYvjuRmlgOHwE
         2qWXu17U6pj3dwPiIw7b2SNeXUhq/Y0dPTb35EmenfE2rS1EME1FU4xHfvoXaFBo6Lro
         /oNBCaXoVx5BsKr3K/IvlwkQpYQe9dJZXUf/JTsv/sL6Eef9yLNfU5OBobhA8SBzZCN8
         Evbv9CxgdE/Wa1tLjWreyMnPrQamhsbZVYPmA4aM+MMV1UnWOAehP+KDvcVQm/pmDYq6
         duaQ==
X-Gm-Message-State: AOJu0Yx2/XNsghqA9Idp13H9EF4rDJUv+/n3UHyaO7nDp89SrzLsB9Le
	aWRzOckdIUM17OoBNz3vZN07r4odON8GflOBbw4QcJDjOHGPtndrmktTH/X2
X-Gm-Gg: ASbGncsdWR1M3yyfeL33zMy2hBOPNUpNonv5u9RVW5DzgnEcEkWwqUgIiQtZxi1CtsD
	eE6O3Z1pw0CBvqzmGMvZc/ROyYFPzNNP2JCp9mjvhJUGlfEPq6au3E0Zi+9dQvHRo4b3Omi49E0
	oj9jJui6rPe+f4B8doRlhE0YF+pB6ES9PBZiWZqd11XD0KjQ4pW/gXUGGifpNJvmfp1A8GV0fwq
	o9PiRp0t7/cSrMvGrVU3r1cYrSIf2ulkPEyUjy56Urzj+8xMnWENwKIrw7h1ZSscqtn6/gZuJo3
	6GXvHZGdOmE6Q4GYt+lYW64mqBA5BSKR3vqspEqGJpVeCLyJP964iZU=
X-Google-Smtp-Source: AGHT+IG4yWZrfXrz7IgLiPQzqomH1Ked0kfLiBr3vxNXjrdHyyRxopbDL6COVMzlE9471uuecwfOPQ==
X-Received: by 2002:a05:620a:650a:b0:7c5:5339:48cf with SMTP id af79cd13be357-7c553395066mr2686390785a.30.1741875396513;
        Thu, 13 Mar 2025 07:16:36 -0700 (PDT)
Received: from [192.168.2.170] ([142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7c573c6fafcsm103457485a.25.2025.03.13.07.16.35
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Mar 2025 07:16:35 -0700 (PDT)
Message-ID: <25f9f936-60e5-4699-8693-404aa9b93224@gmail.com>
Date: Thu, 13 Mar 2025 10:16:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <CAOcWHKh6vTnK92zDn8pJFGOWFO-gSZ-NRpC88w8HzEdAstaJfA@mail.gmail.com>
 <CAOcWHKiZTVeu6SJXFNCVeBNAt26VXyj_dAfYsEFNWsPgEkaNtg@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAOcWHKiZTVeu6SJXFNCVeBNAt26VXyj_dAfYsEFNWsPgEkaNtg@mail.gmail.com>
Message-ID-Hash: CJQGIZ2KOPFELQOZJWQIBNIYQWXDMCRY
X-Message-ID-Hash: CJQGIZ2KOPFELQOZJWQIBNIYQWXDMCRY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can the Octoclock CDA-2990 use a Timeprovider 4100's PPS/Freq as inputs?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CJQGIZ2KOPFELQOZJWQIBNIYQWXDMCRY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2985973448689089024=="

This is a multi-part message in MIME format.
--===============2985973448689089024==
Content-Type: multipart/alternative;
 boundary="------------MTWmUdsBdO96my24mEIDNOUr"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------MTWmUdsBdO96my24mEIDNOUr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 13/03/2025 09:30, Chris Newman via USRP-users wrote:
> Hi,
>
> I found some documentation for the Timeprovider 4100 and there are 2=20
> ports which can be configured to output=C2=A0either 1PPS or 10MHz. The=20
> latter is a square wave so I guess I can plug that into the Octoclock:
>
> image.png
>
> The question now is if the Timeprovider's=C2=A0PPS output is compatible=
=20
> with the Octoclock. I note the pulse width is configurable is set to=20
> 1000, and there is also an offset param:
>
> image.png
>
>
> And, if the PPS is ok then can the Octoclock derive the Freq from that=20
> or is it better to plug both in separately.
>
>
>
> On Thu, 13 Mar 2025 at 10:57, Chris Newman <chris@mode51.software> wrot=
e:
>
>     Hi,
>
>     I'd like to use a Chronos Timeprovider 4100
>     <https://chronos.uk/product/telecom-master-clocks/timeprovider-4100=
-precise-timing-grandmaster-r2-4/>
>     to provide the input signals to the Octoclock CDA-2990.
>
>     Will the Octoclock accept the Timeprovider's signals for 10MHz and
>     PPS? Presumably the Timeprovider is outputting sine waves.
>
>     I see the Octoclock outputs the square waves needed by the=C2=A0SDR=
s.
>     Therefore, I guess the question is - can the Octoclock convert
>     sine waves to square waves?
>
>     The Octoclock FAQ states:
>
>       * *What are the input and output specifications?*
>
>       * 10 MHz Input =E2=80=93 0-10 dBm
>       * 10 MHz Outputs - ~1.4 Vpp Square Wave, Impedance 50 ohm nominal
>       * 1 PPS Input - Logic-level pulse, 2.5 V - 5 V
>       * 1 PPS Outputs - Logic-level pulse, 2.5 V - 5 V
>
>
>
>     --
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
The Octoclock is basically a *distributor* of PPS and 10MHz. It cannot=20
use the 1PPS to phase-lock its internal clock.

For the 10MHz signal from your time-provider, I would insert a 3-5dB=20
attenuator, since the lowest level of the
 =C2=A0 TimeProvider output is right at the top end of what the Octoclock=
 can=20
tolerate.


--------------MTWmUdsBdO96my24mEIDNOUr
Content-Type: multipart/related;
 boundary="------------qbCdhqM3YzvyPY9Vj0LpdKE0"

--------------qbCdhqM3YzvyPY9Vj0LpdKE0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 13/03/2025 09:30, Chris Newman via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAOcWHKiZTVeu6SJXFNCVeBNAt26VXyj_dAfYsEFNWsPgEkaNtg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi,
        <div><br>
        </div>
        <div>I found some documentation for the Timeprovider 4100 and
          there are 2 ports which can be configured to output=C2=A0either
          1PPS or 10MHz. The latter is a square wave so I guess I can
          plug that into the Octoclock:</div>
        <div><br>
        </div>
        <div><img src=3D"cid:part1.epsZhjIP.L17Z01bZ@gmail.com"
            alt=3D"image.png" class=3D"" width=3D"563" height=3D"199"><br=
>
        </div>
        <div><br>
        </div>
        <div>The question now is if the Timeprovider's=C2=A0PPS output is
          compatible with the Octoclock. I note the pulse width is
          configurable is set to 1000, and there is also an offset
          param:</div>
        <div><br>
        </div>
        <div><img src=3D"cid:part2.qmqQopx2.00ev7QeM@gmail.com"
            alt=3D"image.png" class=3D"" width=3D"563" height=3D"305"><br=
>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div>And, if the PPS is ok then can the Octoclock derive the
          Freq from that or is it better to plug both in separately.</div=
>
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote gmail_quote_container">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, 13 Mar 2025 at 10:5=
7,
          Chris Newman <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:=
chris@mode51.software">&lt;chris@mode51.software&gt;</a> wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div dir=3D"ltr">
            <div>Hi,</div>
            <div><br>
            </div>
            <div>I'd like to use a <a
href=3D"https://chronos.uk/product/telecom-master-clocks/timeprovider-410=
0-precise-timing-grandmaster-r2-4/"
                target=3D"_blank" moz-do-not-send=3D"true">Chronos
                Timeprovider 4100</a> to provide the input signals to
              the Octoclock CDA-2990.</div>
            <div><br>
            </div>
            <div>Will the Octoclock accept the Timeprovider's signals
              for 10MHz and PPS? Presumably the Timeprovider is
              outputting sine waves.=C2=A0</div>
            <div><br>
            </div>
            <div>I see the Octoclock outputs the square waves needed by
              the=C2=A0SDRs. Therefore, I guess the question is - can the
              Octoclock convert sine waves to square waves?</div>
            <div><br>
            </div>
            <div>The Octoclock FAQ states:</div>
            <div><br>
            </div>
            <div>
              <ul>
                <li> <b>What are the input and output specifications?</b>=
</li>
              </ul>
              <ul>
                <li> 10 MHz Input =E2=80=93 0-10 dBm</li>
                <li> 10 MHz Outputs - ~1.4 Vpp Square Wave, Impedance 50
                  ohm nominal</li>
                <li> 1 PPS Input - Logic-level pulse, 2.5 V - 5 V</li>
                <li> 1 PPS Outputs - Logic-level pulse, 2.5 V - 5 V</li>
              </ul>
              <div><br>
              </div>
            </div>
            <div><br>
            </div>
            <div dir=3D"ltr" class=3D"gmail_signature">
              <div dir=3D"ltr">
                <div>--</div>
              </div>
            </div>
          </div>
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
    The Octoclock is basically a *distributor* of PPS and 10MHz. It
    cannot use the 1PPS to phase-lock its internal clock.<br>
    <br>
    For the 10MHz signal from your time-provider, I would insert a 3-5dB
    attenuator, since the lowest level of the<br>
    =C2=A0 TimeProvider output is right at the top end of what the Octocl=
ock
    can tolerate.<br>
    <br>
    <br>
  </body>
</html>
--------------qbCdhqM3YzvyPY9Vj0LpdKE0
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Id: <part1.epsZhjIP.L17Z01bZ@gmail.com>
Content-Transfer-Encoding: base64

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
gg==
--------------qbCdhqM3YzvyPY9Vj0LpdKE0
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Id: <part2.qmqQopx2.00ev7QeM@gmail.com>
Content-Transfer-Encoding: base64

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

--------------qbCdhqM3YzvyPY9Vj0LpdKE0--

--------------MTWmUdsBdO96my24mEIDNOUr--

--===============2985973448689089024==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2985973448689089024==--
