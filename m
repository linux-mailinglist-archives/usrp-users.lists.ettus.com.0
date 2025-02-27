Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D8798A484B5
	for <lists+usrp-users@lfdr.de>; Thu, 27 Feb 2025 17:22:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E6288385CB6
	for <lists+usrp-users@lfdr.de>; Thu, 27 Feb 2025 11:22:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740673339; bh=COGebKMBDy1XorP+3IOuvqD/VDqM0CNEDJc3gaqKVc0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=uVenWZeEBpGdzbaD/IQXeWmHqBFwjUpw7jsESJNbGtlhwjGh+ND24Gdu4p0LfJaIH
	 DY+oF4sbe4SDpfpea4jKZuko+blqWRNJKscktmBO33wqWCQGyPutjBKn9dH7z1chL4
	 iaDLwgFHdWJYItciFAz2hMoEVVluxnjNazWYEckj6a7OT0SE/tjlT4k59INQ/GAboF
	 1ZQ9ve1gGPtaGySVRDRffLfeGAORlg+OImI79NlKPWXvBEIgO5qR/Pmlxk+HRwDKpF
	 J52n4+9p9za+37aF/GvjZc8Hyd4IpSWyYFBEmDinUhniHvc2Jgsm5achYfGavHQuNS
	 0KWdBHNTHm6Tw==
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id DD4D4385203
	for <usrp-users@lists.ettus.com>; Thu, 27 Feb 2025 11:21:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YK1zVI3B";
	dkim-atps=neutral
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-4720cfc35e9so17212731cf.2
        for <usrp-users@lists.ettus.com>; Thu, 27 Feb 2025 08:21:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740673276; x=1741278076; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kdShyxZvaHu6wAMhoGshK7tezpkZbsK9EqGkJC8B2v0=;
        b=YK1zVI3BCpppZdETkUo1bYHHvHUYV3SYTyyVOHE1H6ZmJbohn14qSbopJtvjY1yqWv
         jkGJQ3GKpGe6wus6PtvskUlTeSRNhlBhyevILNKZuSFzH+o2epC+t/aQzUOC/2hc5AGM
         IkDi1HugObb1pNjh0ZmyyGR7NRBquo139yGWuBfRG5CdESm8YuM9DYzc9dFa5rwjd319
         SJnpA3j8SVMnEf4XMdy+ktmDUzpy0B34LicR8zSoHIl3qLIuiDRui2FXID8VU+au+oIG
         Md7mSkC15FwXmkDkDqQNbiuU/kcHGTlM6l35iBpExEuD5K8eaPcMQStOOqzcqkM/IttN
         OQcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740673276; x=1741278076;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kdShyxZvaHu6wAMhoGshK7tezpkZbsK9EqGkJC8B2v0=;
        b=WZdK+cfP2ZmS8UF9GLIX03eyjqBg3CHkz+SuucwyKOmHZzSZ/c2rOiQzCvsJQP1KSL
         twiGKMitGVFzcTKOOMxYRAD+1BToiw3K4DUDr2ZLQkKf9PN56CcPNs7rFXei4CwJ0UGW
         Smt9Tg/5RswFaP69Jpe1H7MIW6WSQT13eMzTaroiZJnzEdLEX0IL72G0nhVpdJiURnBF
         1ugnK/UTgUrshhBVlTfuPqSif2dsBOJd8zdXcKjiJ/YdWP3kf4Exp8yPe5AhiXk5pHNC
         oZWEmyvpS9ABvqvtik77NsBSTU/I4K2WkMlb/hvn/C3rNBsitgMxrOwApgZDnuBmUwVb
         DKDQ==
X-Gm-Message-State: AOJu0YxJEfBdJ8o9opiY2PeqnScR17zgc9L2TZMFoauBO9I4EoPTjc9R
	2D8Jwx4rPylA1ehXunfXzzkszzsjvhGXDE+25/cuyf8Z/YDsMGUj1J2ggjf9
X-Gm-Gg: ASbGnctEHOkgNM7I06UB4vNjX9MTkK8rmnXrxDq6ySaBbjIei2MKzZ1blltqBEsHk/A
	QXVV3wcqtDu3KfvN3zNp7hVaGZ9fB+hkdw9WUor3ZEjixRj2EX6EJm9Vjsk2eHFbFAm9r4EdHsA
	5NWLdJhq55oel0ZRhDVuQPClNCXv/WjCzpVQw2TrSJ33eVSq+bqFyXa23tIWSkLIryOJ7/AobmR
	aa/qRKCL2US4/1HsIPwfIsPAk0piL/2NpbEATKdZVkzXfSmcxyFJ548ziSKNphxpG+opD/LbC+N
	pHS97X1yMqACp/onhZI/t72G9uK8SPjLXA1G5THGNW/fbk+3lMFDzY17jHiqexvOxTYW5eeLfuY
	M5dOcZAoQBWvrCv+QYekYmuoo
X-Google-Smtp-Source: AGHT+IFamoQQd+LqjdWfCUJdOx1MtJzwsuuPMTJ0K0KbmLErEQiHDhUEZlgqA13NAUHrfCluYBrfTg==
X-Received: by 2002:a05:622a:554:b0:471:f1f1:ae71 with SMTP id d75a77b69052e-47377272626mr158361571cf.52.1740673276639;
        Thu, 27 Feb 2025 08:21:16 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-20-142-115-37-13.dsl.bell.ca. [142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-4746b5eed4fsm12569101cf.31.2025.02.27.08.21.15
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2025 08:21:16 -0800 (PST)
Message-ID: <8542b078-32bf-4232-bfc6-af0b6ecac261@gmail.com>
Date: Thu, 27 Feb 2025 11:21:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Kp022C4qnJHvbCBmnUrUWW3YmFZrg8vF4YRu5RuT7zA@lists.ettus.com>
 <CAB__hTSqA8=aVHp7eLY9fs1t+Wwh9usspxFrNSFn9fnWTQ9fGQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTSqA8=aVHp7eLY9fs1t+Wwh9usspxFrNSFn9fnWTQ9fGQ@mail.gmail.com>
Message-ID-Hash: 42OTNIISA3CSXPZ6PFRHBMUJISFV2ZOJ
X-Message-ID-Hash: 42OTNIISA3CSXPZ6PFRHBMUJISFV2ZOJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: strange behavior related to gain
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/42OTNIISA3CSXPZ6PFRHBMUJISFV2ZOJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1872790705830516895=="

This is a multi-part message in MIME format.
--===============1872790705830516895==
Content-Type: multipart/alternative;
 boundary="------------VSx0OqTNX4cyDwqFJQ3dgfIk"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------VSx0OqTNX4cyDwqFJQ3dgfIk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/02/2025 09:31, Rob Kossler via USRP-users wrote:
> If you are using timed commands and if you can verify that the=20
> tx-to-rx synchronization is consistent every time, perhaps you could=20
> measure the leakage signal (with attenuators connected to the RF=20
> ports) and then simply subtract this signal from your over-the-air=20
> measurements.=C2=A0 This method of leakage cancellation can change over=
=20
> time as the device heats up so you may need to periodically perform=20
> this calibration.
> Rob
>
> On Thu, Feb 27, 2025 at 9:02=E2=80=AFAM <michalgorny01@gmail.com> wrote=
:
>
>     Hello,
>
>     I am working with a USRP E320. my main goal is to try to create a
>     two-channel FMCW radar. I have noticed a significant leakage of
>     the transmitted signal in the receive channel. the only gain level
>     that does not cause leakage is about 20 (the allowed max is 80)
>     while it is insufficient to register a reflection in my
>     configuration. Is there any way to mitigate this leakage?
>
>     double gainTX =C2=A0=3D 20;
>
>     double gainRX =C2=A0=3D 20;
>
>     radio_ctrl->set_rx_gain(gainRX, radio_chanRX);
>
>     radio_ctrl->set_tx_gain(gainTX, radio_chanTX);
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
It would be useful to understand the antenna plumbing in this=20
scenario.=C2=A0=C2=A0 Both TX/RX and RX2 ports in use?=C2=A0=C2=A0 A circ=
ulator?=C2=A0 Two
 =C2=A0 antennas?


--------------VSx0OqTNX4cyDwqFJQ3dgfIk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/02/2025 09:31, Rob Kossler via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTSqA8=3DaVHp7eLY9fs1t+Wwh9usspxFrNSFn9fnWTQ9fGQ@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">If you are using timed commands and if you can
        verify that the tx-to-rx synchronization is consistent every
        time, perhaps you could measure the leakage signal (with
        attenuators connected to the RF ports) and then simply subtract
        this signal from your over-the-air measurements.=C2=A0 This metho=
d of
        leakage cancellation can change over time as the device heats up
        so you may need to periodically perform this calibration.
        <div>Rob</div>
      </div>
      <br>
      <div class=3D"gmail_quote gmail_quote_container">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 27, 2025 at
          9:02=E2=80=AFAM &lt;<a href=3D"mailto:michalgorny01@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">mich=
algorny01@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <p>Hello,</p>
          <p>I am working with a USRP E320. my main goal is to try to
            create a two-channel FMCW radar. I have noticed a
            significant leakage of the transmitted signal in the receive
            channel. the only gain level that does not cause leakage is
            about 20 (the allowed max is 80) while it is insufficient to
            register a reflection in my configuration. Is there any way
            to mitigate this leakage?</p>
          <p>double gainTX =C2=A0=3D 20; =C2=A0 =C2=A0 </p>
          <p>double gainRX =C2=A0=3D 20; =C2=A0 =C2=A0</p>
          <p>radio_ctrl-&gt;set_rx_gain(gainRX, radio_chanRX);</p>
          <p>radio_ctrl-&gt;set_tx_gain(gainTX, radio_chanTX); </p>
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
    It would be useful to understand the antenna plumbing in this
    scenario.=C2=A0=C2=A0 Both TX/RX and RX2 ports in use?=C2=A0=C2=A0 A =
circulator?=C2=A0 Two<br>
    =C2=A0 antennas?<br>
    <br>
    <br>
  </body>
</html>

--------------VSx0OqTNX4cyDwqFJQ3dgfIk--

--===============1872790705830516895==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1872790705830516895==--
